#include "gba.h"
#include "mode0.h"
#include "sprites.h"
#include "print.h"
#include "tileset.h"
#include "spritesheet.h"
#include "game.h"
#include "collision1.h"
#include "collision2.h"
#include "collision3.h"
#include "map1.h"


#define COLLISIONWIDTH  512
#define COLLISIONHEIGHT 256
#define MAPWIDTH   32
#define MAPHEIGHT  32

extern SPRITE player;
extern int level;
extern int lives;

int hOff;
int vOff;

//collision map helper functions
unsigned char colorAt(int x, int y) {
    if (level == 1) {
        return ((unsigned char *)collision1Bitmap)[OFFSET(x, y, COLLISIONWIDTH)];
    } else if (level == 2) {
        return ((unsigned char *)collision2Bitmap)[OFFSET(x, y, COLLISIONWIDTH)];
    } else if (level == 3) {
        return ((unsigned char *)collision3Bitmap)[OFFSET(x, y, COLLISIONWIDTH)];
    } else {
        return 0;
    }
}


int goThrough(int x, int y, int level) {
    if(x < 0 || x >= COLLISIONWIDTH || y < 0 || y >= COLLISIONHEIGHT) return 0;

    unsigned char tile = colorAt(x, y);
    return tile != 0;  // block only if it's 0 (hard block)
}


unsigned short getTile(int x, int y) {
    int tileX = x / 8;
    int tileY = y / 8;

    if (tileX < 0 || tileX >= MAPWIDTH || tileY < 0 || tileY >= MAPHEIGHT) {
        return 0xFFFF;
    }
}

int checkCollisionLose(int x, int y) {
    unsigned char c1 = colorAt(x, y);
    unsigned char c2 = colorAt(x + 8 - 1, y);
    unsigned char c3 = colorAt(x, y + 8 - 1);
    unsigned char c4 = colorAt(x + 8 - 1, y + 8 - 1);
    return (c1 == 2 || c2 == 2 || c3 == 2 || c4 == 2);
}


int checkCollisionPetSprite(SPRITE a, SPRITE b) {
    return (a.x < b.x + b.width &&
            a.x + a.width > b.x &&
            a.y < b.y + b.height &&
            a.y + a.height > b.y);
}

void updateGame1() {
    updatePlayer();
    updatePet1();
    winCondition();
    loseCondition();
    // // Lose condition for enemy and player collision
    // if (checkPlayerEnemyCollision()) {
    //     // Decrement lives
    //     lives--;
    //     // If lives reaches 0, then go to losing game state
    //     if (lives <= 0) {
    //         goToLose();
    //     } else {
    //         // If lives is not 0, then reset the game, but stay at level 1
    //         // Player goes back to original spot 
    //         initializePlayer();
    //         // ONLY reset ACTIVE enemies
    //         initializeEnemies(0);
    //     }
    // }

    // If player hits all enemies and reaches exit, go to next level
}

void drawGame1() {
    drawPlayer();
    drawPet();
    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;
}


void updateGame2() {
    updatePlayer();
    updatePet2();
    winCondition();
    loseCondition();
    // // Check collision between player and active enemy
    // if (checkPlayerEnemyCollision()) {
    //     // Decrease lives
    //     lives--;
    //     // If player runs out of lives, go to lose game state
    //     if (lives <= 0) {
    //         goToLose();
    //     } else {
    //         // Else continue to reset like game one
    //         initializePlayer();  // Respawn player
    //         initializeEnemies(0);
    //         initializeEnemies2(0);
    //     }
    // }
}

// Duplicate function in game one
void drawGame2() {
    drawPlayer();
    drawPet();
    REG_BG1HOFF = hOff;
}



void updateGame3() {
    updatePlayer();
    updatePet3();
    winCondition();
    loseCondition();
    // // Lose condition for enemy and player collision
    // if (checkPlayerEnemyCollision()) {
    //     // Decrement lives
    //     lives--;
    //     // If lives reaches 0, then go to losing game state
    //     if (lives <= 0) {
    //         goToLose();
    //     } else {
    //         // If lives is not 0, then reset the game, but stay at level 1
    //         // Player goes back to original spot 
    //         initializePlayer();
    //         // ONLY reset ACTIVE enemies
    //         initializeEnemies(0);
    //     }
    // }
}

void drawGame3() {
    drawPlayer();
    drawPet();
    REG_BG1HOFF = hOff;
}
