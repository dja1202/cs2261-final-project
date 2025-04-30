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
}

void drawGame3() {
    drawPlayer();
    drawPet();
    REG_BG1HOFF = hOff;
}
