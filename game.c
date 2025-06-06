#include "gba.h"
#include "mode0.h"
#include "sprites.h"
#include "print.h"
#include "background1.h"
#include "tileset.h"
#include "spritesheet.h"
#include "game.h"
#include <stdlib.h>
#include "helper.h"

#define MAPWIDTH  512
#define MAPHEIGHT 160

#define GRAVITY 100
#define SHIFTUP(n) ((n) << 8)
#define SHIFTDOWN(n) ((n) >> 8)
#define TERMINALVELOCITY SHIFTUP(10) 

int hOff;
int vOff;

extern OBJ_ATTR shadowOAM[128];
int level = 1;

typedef enum {RIGHT, LEFT} DIRECTION;

SPRITE player;
SPRITE pet1;
SPRITE pet2;
SPRITE pet3;

// player: initialize, update, draw
void initializePlayer() {
    player.x = 8;
    player.y = 78;
    player.currentFrame = 0;
    player.direction = RIGHT;
    player.oamIndex = 0;
    player.width = 32;
    player.height = 32;
    player.isAnimating = 0;
    player.numFrames = 4;
    player.timeUntilNextFrame = 15;
    player.dy = 0;
    player.grounded = 0;
    player.jumpCount = 0;
    player.maxJumps = 2;
    player.cheatFlying = 0;
    hOff = 0;
    vOff = 0;
}
void updatePlayer() {
    player.isAnimating = 0;
    player.cheatFlying = 0;

    int leftX   = player.x + 11;
    int rightX  = player.x + player.width - 11;
    int topY    = player.y;
    int bottomY = player.y + player.height - 1;
    
    // collision map helper function
    if (BUTTON_HELD(BUTTON_LEFT) && player.x > 0 && goThrough(leftX - 1, topY, level) &&
        goThrough(leftX - 1, bottomY, level)) {
        player.x--;
        player.isAnimating = 1;
        player.direction = LEFT;

    }
    if (BUTTON_HELD(BUTTON_RIGHT) && ((player.x + player.width) < MAPWIDTH) && goThrough(rightX + 1, topY, level) &&
        goThrough(rightX + 1, bottomY, level)){
        player.x++;
        player.isAnimating = 1;
        player.direction = RIGHT;

    }

    int onGround = !goThrough(leftX, bottomY + 1, level) || !goThrough(rightX, bottomY + 1, level);

    if (onGround) {
        player.grounded = 1;
        player.dy = 0;
        player.jumpCount = 0; // Reset jump count on landing
    } else {
        player.grounded = 0;
    }

    // Handle jumping
    if (BUTTON_PRESSED(BUTTON_A) && (player.jumpCount < player.maxJumps)) {
        player.dy = SHIFTUP(-4); // Adjust jump strength
        player.jumpCount++;
        player.grounded = 0;
    }

    // Check for flying cheat (hold L and R)
    if (BUTTON_HELD(BUTTON_LSHOULDER) && BUTTON_HELD(BUTTON_RSHOULDER)) {
        player.cheatFlying = 1;
    } else {
        player.cheatFlying = 0;
    }

    if (player.cheatFlying) {
        if (BUTTON_HELD(BUTTON_UP)) {
            player.y--;
        }
        if (BUTTON_HELD(BUTTON_DOWN)) {
            player.y++;
        }
        if (BUTTON_HELD(BUTTON_LEFT)) {
            player.x--;
        }
        if (BUTTON_HELD(BUTTON_RIGHT)) {
            player.x++;
        }
        player.grounded = 0; // flying is never grounded
        player.dy = 0;
    } else {
        // Normal gravity and jump behavior
        player.dy += GRAVITY;
        if (player.dy > TERMINALVELOCITY) {
            player.dy = TERMINALVELOCITY;
        }

        int steps = abs(SHIFTDOWN(player.dy));
        int direction;

        if (player.dy > 0) {
            direction = 1;
        } else {
            direction = -1;
        }

    for (int i = 0; i < steps; i++) {
        int nextY = player.y + direction;
        int nextBottomY = nextY + player.height - 1;

        if (!goThrough(leftX, nextBottomY, level) || !goThrough(rightX, nextBottomY, level)) {
            player.dy = 0;

            if (direction > 0) {
                player.grounded = 1;
                player.jumpCount = 0;
            }

            break;
        } else {
            player.y = nextY;
            //check if the player touches the water
            if (checkCollisionLose(player.x, player.y)) {
                lives--;
                if (lives <= 0) {
                    goToLose();
                } else {
                    initializePlayer();
                }
                return;
            }
        }
    }

    }

    // Animation frame update
    if (player.isAnimating || player.cheatFlying) {
        --player.timeUntilNextFrame;
        if (player.timeUntilNextFrame <= 0) {
            player.currentFrame = (player.currentFrame + 1) % player.numFrames;
            player.timeUntilNextFrame = 15;
        }
    } else {
        player.currentFrame = 0;
    }

    // Camera offset
    hOff = player.x - (SCREENWIDTH - player.width) / 2;
    vOff = player.y - (SCREENHEIGHT - player.height) / 2;

    // Clamp positions
    if (player.x < 0) player.x = 0;
    if (player.y < 0) player.y = 0;
    if (player.x + player.width > MAPWIDTH) player.x = MAPWIDTH - player.width;
    if (player.y + player.height > MAPHEIGHT) player.y = MAPHEIGHT - player.height;
    if (hOff < 0) hOff = 0;
    if (vOff < 0) vOff = 0;
    if (hOff > MAPWIDTH - SCREENWIDTH) hOff = MAPWIDTH - SCREENWIDTH;
    if (vOff > MAPHEIGHT - SCREENHEIGHT) vOff = MAPHEIGHT - SCREENHEIGHT;

}

void drawPlayer() {
    shadowOAM[player.oamIndex].attr0 = ATTR0_Y(player.y - vOff) | ATTR0_REGULAR | ATTR0_SQUARE;
    shadowOAM[player.oamIndex].attr1 = ATTR1_X(player.x - hOff) | ATTR1_MEDIUM;

    int tileRow;

    if (player.cheatFlying) {
        if (player.direction == LEFT) {
            tileRow = 19;
        } else {
            tileRow = 15;
        }
    } else {
        tileRow = player.direction * 4; // 0 if RIGHT, 4 if LEFT
    }

    if (lives == 1) {
        shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID(player.currentFrame * 4, tileRow) | ATTR2_PALROW(1);
    } else {
        shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID(player.currentFrame * 4, tileRow) | ATTR2_PALROW(0);
        // Modify palette colors depending on lives
        if (lives == 3){
            SPRITE_PAL[1] = RGB(10, 5, 0); 
            SPRITE_PAL[5] = RGB(14, 8, 6);
        } else if (lives == 2) {
            SPRITE_PAL[1] = RGB(14, 0, 0); 
            SPRITE_PAL[5] = RGB(17, 6, 4);
        }
    }
}

void initializePet1() {
    pet1.x = 480;
    pet1.y = 96;
    pet1.width = 8;
    pet1.height = 8;
    pet1.oamIndex = 1;
    pet1.currentFrame = 0;
    pet1.numFrames = 4;
    pet1.timeUntilNextFrame = 15;
    pet1.isAnimating = 1;
}

void initializePet2() {
    pet2.x = 480;
    pet2.y = 96;
    pet2.width = 8;
    pet2.height = 8;
    pet2.oamIndex = 1;
    pet2.currentFrame = 0;
    pet2.numFrames = 4;
    pet2.timeUntilNextFrame = 15;
    pet2.isAnimating = 1;
}

void initializePet3() {
    pet3.x = 487;
    pet3.y = 44;
    pet3.width = 8;
    pet3.height = 8;
    pet3.oamIndex = 1;
    pet3.currentFrame = 0;
    pet3.numFrames = 4;
    pet3.timeUntilNextFrame = 15;
    pet3.isAnimating = 1;
}


void updatePet1() {
    level = 1;
    if (pet1.isAnimating) {
        --pet1.timeUntilNextFrame;
        if (pet1.timeUntilNextFrame == 0) {
            pet1.currentFrame = (pet1.currentFrame + 1) % pet1.numFrames;
            pet1.timeUntilNextFrame = 15;
        }
    } else {
        pet1.currentFrame = 0;
    }
}

void updatePet2() {
    level = 2;
    if (pet2.isAnimating) {
        --pet2.timeUntilNextFrame;
        if (pet2.timeUntilNextFrame == 0) {
            pet2.currentFrame = (pet2.currentFrame + 1) % pet2.numFrames;
            pet2.timeUntilNextFrame = 15;
        }
    } else {
        pet2.currentFrame = 0;
    }
}

void updatePet3() {
    level = 3;
    if (pet3.isAnimating) {
        --pet3.timeUntilNextFrame;
        if (pet3.timeUntilNextFrame == 0) {
            pet3.currentFrame = (pet3.currentFrame + 1) % pet3.numFrames;
            pet3.timeUntilNextFrame = 15;
        }
    } else {
        pet3.currentFrame = 0;
    }
}

void drawPet() {
    if (level == 1) {
        shadowOAM[pet1.oamIndex].attr0 = ATTR0_Y(pet1.y - vOff) | ATTR0_SQUARE | ATTR0_REGULAR;
        shadowOAM[pet1.oamIndex].attr1 = ATTR1_X(pet1.x - hOff) | ATTR1_SMALL;
        shadowOAM[pet1.oamIndex].attr2 = ATTR2_TILEID(pet1.currentFrame * 2, 8) | ATTR2_PALROW(2);

    } else if (level == 2) {
        shadowOAM[pet2.oamIndex].attr0 = ATTR0_Y(pet2.y - vOff) | ATTR0_SQUARE | ATTR0_REGULAR;
        shadowOAM[pet2.oamIndex].attr1 = ATTR1_X(pet2.x - hOff) | ATTR1_SMALL;
        shadowOAM[pet2.oamIndex].attr2 = ATTR2_TILEID(pet2.currentFrame * 2, 10)  | ATTR2_PALROW(3);     
    } else {
        shadowOAM[pet3.oamIndex].attr0 = ATTR0_Y(pet3.y - vOff) | ATTR0_SQUARE | ATTR0_REGULAR;
        shadowOAM[pet3.oamIndex].attr1 = ATTR1_X(pet3.x - hOff) | ATTR1_SMALL;
        shadowOAM[pet3.oamIndex].attr2 = ATTR2_TILEID(pet3.currentFrame * 2, 12)  | ATTR2_PALROW(4);
    }
}


int winCondition() {
    if (level == 1 && checkCollisionPetSprite(player, pet1)) {
        goToGame2();
        return 1;
    } else if (level == 2 && checkCollisionPetSprite(player, pet2)) {
        goToGame3();
        return 1;
    } else if (level == 3 && checkCollisionPetSprite(player, pet3)) {
        goToWin();
        return 1;
    }
    return 0;
}