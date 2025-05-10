# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 1 "gba.h" 1




typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;
typedef void (*ihp)(void);






extern volatile unsigned short *videoBuffer;
# 44 "gba.h"
int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);


void waitForVBlank();
# 63 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;




typedef volatile struct {
    volatile void* src;
    volatile void* dest;
    unsigned int ctrl;
} DMAChannel;
# 97 "gba.h"
void DMANow(int channel, volatile void *src, volatile void *dest, unsigned int ctrl);
# 2 "main.c" 2
# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 3 "main.c" 2
# 1 "sprites.h" 1
# 10 "sprites.h"
typedef struct {
  u16 attr0;
  u16 attr1;
  u16 attr2;
  u16 fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[128];
# 64 "sprites.h"
void hideSprites();


typedef struct {
  int x;
  int y;
  int xVel;
  int yVel;
  int width;
  int height;
  int timeUntilNextFrame;
  int direction;
  int isAnimating;
  int currentFrame;
  int numFrames;
  int paletteRow;
  int dy;
  int grounded;
  int jumpCount;
  int maxJumps;
  int cheatFlying;
  u8 oamIndex;
} SPRITE;
# 4 "main.c" 2
# 1 "print.h" 1
# 25 "print.h"
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 1 3 4
# 9 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3 4







# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 1 3 4
# 28 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_newlib_version.h" 1 3 4
# 29 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 2 3 4
# 9 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 2 3 4
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4

# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 187 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 2 3 4
# 26 "print.h" 2
# 35 "print.h"

# 35 "print.h"
uint8_t mgba_open(void);
void mgba_printf_level(int level, const char* ptr, ...);
void mgba_printf(const char* string, ...);
void mgba_break(void);
void mgba_close(void);
# 5 "main.c" 2
# 1 "helper.h" 1



extern int lives;

void updateGame1();
void drawGame1();
void updateGame2();
void drawGame2();
void updateGame3();
void drawGame3();


int goThrough(int x, int y, int level);
unsigned char colorAt(int x, int y);


unsigned short getTile(int x, int y);
int checkCollisionHardBlock(int x, int y);
int checkCollisionTransparentBlock(int x, int y);
int checkCollisionLose(int x, int y);
int checkCollisionPetSprite(SPRITE a, SPRITE b);
# 6 "main.c" 2
# 1 "tileset.h" 1
# 21 "tileset.h"
extern const unsigned short tilesetTiles[512];


extern const unsigned short tilesetPal[256];
# 7 "main.c" 2
# 1 "spritesheet.h" 1
# 21 "spritesheet.h"
extern const unsigned short spritesheetTiles[16384];


extern const unsigned short spritesheetPal[256];
# 8 "main.c" 2
# 1 "map1.h" 1
# 22 "map1.h"
extern const unsigned short map1Tiles[112];


extern const unsigned short map1Map[2048];


extern const unsigned short map1Pal[16];
# 9 "main.c" 2
# 1 "map2.h" 1
# 22 "map2.h"
extern const unsigned short map2Tiles[112];


extern const unsigned short map2Map[2048];


extern const unsigned short map2Pal[16];
# 10 "main.c" 2
# 1 "map3.h" 1
# 22 "map3.h"
extern const unsigned short map3Tiles[176];


extern const unsigned short map3Map[2048];


extern const unsigned short map3Pal[16];
# 11 "main.c" 2
# 1 "background1.h" 1
# 22 "background1.h"
extern const unsigned short background1Tiles[11888];


extern const unsigned short background1Map[2048];


extern const unsigned short background1Pal[256];
# 12 "main.c" 2
# 1 "background2.h" 1
# 22 "background2.h"
extern const unsigned short background2Tiles[12416];


extern const unsigned short background2Map[2048];


extern const unsigned short background2Pal[16];
# 13 "main.c" 2
# 1 "background3.h" 1
# 22 "background3.h"
extern const unsigned short background3Tiles[12464];


extern const unsigned short background3Map[2048];


extern const unsigned short background3Pal[256];
# 14 "main.c" 2

# 1 "start.h" 1
# 22 "start.h"
extern const unsigned short startTiles[2416];


extern const unsigned short startMap[1024];


extern const unsigned short startPal[256];
# 16 "main.c" 2
# 1 "instruction.h" 1
# 22 "instruction.h"
extern const unsigned short instructionTiles[3664];


extern const unsigned short instructionMap[1024];


extern const unsigned short instructionPal[16];
# 17 "main.c" 2
# 1 "pause.h" 1
# 22 "pause.h"
extern const unsigned short pauseTiles[2576];


extern const unsigned short pauseMap[1024];


extern const unsigned short pausePal[256];
# 18 "main.c" 2
# 1 "lose.h" 1
# 22 "lose.h"
extern const unsigned short loseTiles[1152];


extern const unsigned short loseMap[1024];


extern const unsigned short losePal[16];
# 19 "main.c" 2
# 1 "win.h" 1
# 22 "win.h"
extern const unsigned short winTiles[3248];


extern const unsigned short winMap[1024];


extern const unsigned short winPal[16];
# 20 "main.c" 2
# 1 "digitalSound.h" 1



void setupSounds();
void setupSoundInterrupts();
void interruptHandler();

void playSoundA(const signed char* sound, int length, int loops);
void playSoundB(const signed char* sound, int length, int loops);

void pauseSounds();
void unpauseSounds();
void stopSounds();
# 52 "digitalSound.h"
typedef struct{
    const signed char* data;
    int dataLength;
    int isPlaying;
    int looping;
    int durationInVBlanks;
    int vBlankCount;
} SOUND;

SOUND soundA;
SOUND soundB;
# 21 "main.c" 2
# 1 "startMusic.h" 1


extern const unsigned int startMusic_sampleRate;
extern const unsigned int startMusic_length;
extern const signed char startMusic_data[];
# 22 "main.c" 2
# 1 "game1Music.h" 1


extern const unsigned int game1Music_sampleRate;
extern const unsigned int game1Music_length;
extern const signed char game1Music_data[];
# 23 "main.c" 2
# 1 "game2Music.h" 1


extern const unsigned int game2Music_sampleRate;
extern const unsigned int game2Music_length;
extern const signed char game2Music_data[];
# 24 "main.c" 2
# 1 "game3Music.h" 1


extern const unsigned int game3Music_sampleRate;
extern const unsigned int game3Music_length;
extern const signed char game3Music_data[];
# 25 "main.c" 2
# 1 "winMusic.h" 1


extern const unsigned int winMusic_sampleRate;
extern const unsigned int winMusic_length;
extern const signed char winMusic_data[];
# 26 "main.c" 2

OBJ_ATTR shadowOAM[128];

void initialize();
void goToStart();
void start();
void goToInstructions();
void instructions();
void updateGame1();
void drawGame1();
void goToGame1();
void game1();
void goToGame2();
void game2();
void goToGame3();
void game3();
void goToPause();
void pause();
void goToLose();
void lose();
void goToWin();
void win();


enum {START, INSTRUCTIONS, GAME1, GAME2, GAME3, PAUSE, WIN, LOSE};
int state;
int lives = 3;
int paused = 0;
int hOff = 0;
int vOff = 0;
int savedHOff = 0;
int savedVOff = 0;
extern int level;
SPRITE player;

unsigned short oldButtons;
unsigned short buttons;

int main() {
    initialize();

    while (1) {
        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);

        switch(state) {
            case START:
                start();
                break;
            case INSTRUCTIONS:
                instructions();
                break;
            case GAME1:
                game1();
                break;
            case GAME2:
                game2();
                break;
            case GAME3:
                game3();
                break;
            case WIN:
                win();
                break;
            case PAUSE:
                pause();
                break;
            case LOSE:
                lose();
                break;
        }
        DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);
    }
}

void initialize() {
    mgba_open();
    setupSounds();

    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (1 % 4))) | (1 << 12);


    (*(volatile unsigned short*) 0x4000008) = ((1) << 2) | ((30) << 8) | (1 << 14) | (0 << 7);
    (*(volatile unsigned short*) 0x400000A) = ((0) << 2) | ((28) << 8) | (1 << 14) | (0 << 7);

    DMANow(3, spritesheetTiles, &((CB*) 0x6000000)[4], 32768 / 2);
    DMANow(3, spritesheetPal, ((u16 *)0x5000200), 256);

    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);
    goToStart();

}

void goToStart() {
    lives = 3;
    level = 1;
    paused = 0;
    playSoundA(startMusic_data, startMusic_length, 1);
    state = START;
}

void start() {
    (*(volatile unsigned short *)0x4000000) = (1 << (8 + (1 % 4)));
    (*(volatile unsigned short*) 0x04000014) = 0;

    waitForVBlank();
    DMANow(3, startPal, ((unsigned short *)0x5000000), 256);
    DMANow(3, startTiles, &((CB*) 0x6000000)[0], 4832 / 2);
    DMANow(3, startMap, &((SB*) 0x6000000)[28], 2048 / 2);

    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);

    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        goToInstructions();
    }
}

void goToInstructions() {
    state = INSTRUCTIONS;
}
void instructions() {
    (*(volatile unsigned short *)0x4000000) = (1 << (8 + (1 % 4)));
    (*(volatile unsigned short*) 0x04000014) = 0;

    waitForVBlank();
    DMANow(3, instructionPal, ((unsigned short *)0x5000000), 256);
    DMANow(3, instructionTiles, &((CB*) 0x6000000)[0], 7328 / 2);
    DMANow(3, instructionMap, &((SB*) 0x6000000)[28], 2048 / 2);

    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);

    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        hOff = savedHOff;
        vOff = savedVOff;
        if (level == 1){
            goToGame1();
        } else if (level == 2) {
            goToGame2();
        } else {
            goToGame3();
        }
        paused = 0;
    }
}

void goToGame1() {
    state = GAME1;

    (*(volatile unsigned short *)0x4000000) = (1 << (8 + (0 % 4))) | (1 << (8 + (1 % 4))) | (1 << 12);

    waitForVBlank();
    DMANow(3, background1Pal, ((unsigned short *)0x5000000), 256);
    DMANow(3, background1Tiles, &((CB*) 0x6000000)[0], 23776 / 2);
    DMANow(3, background1Map, &((SB*) 0x6000000)[28], 4096 / 2);


    DMANow(3, map1Tiles, &((CB*) 0x6000000)[1], 224 / 2);
    DMANow(3, map1Map, &((SB*) 0x6000000)[30], 4096 / 2);

    if (!paused) {
        level = 1;
        initializePlayer();
        initializePet1();
        playSoundA(game1Music_data, game1Music_length, 1);
    }
}

void game1() {
    updateGame1();
    drawGame1();

    (*(volatile unsigned short*) 0x04000014) = hOff / 2;
    (*(volatile unsigned short*) 0x04000010) = hOff;

    waitForVBlank();

    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        goToPause();
    }
    if ((!(~(oldButtons) & ((1<<1))) && (~(buttons) & ((1<<1))))) {
        goToInstructions();
    }
    if (lives == 0) {
        goToLose();
    }
}


void goToGame2() {
    (*(volatile unsigned short *)0x4000000) = (1 << (8 + (0 % 4))) | (1 << (8 + (1 % 4))) | (1 << 12);

    waitForVBlank();
    DMANow(3, background2Pal, ((unsigned short *)0x5000000), 256);
    DMANow(3, background2Tiles, &((CB*) 0x6000000)[0], 24832 / 2);
    DMANow(3, background2Map, &((SB*) 0x6000000)[28], 4096 / 2);


    DMANow(3, map2Tiles, &((CB*) 0x6000000)[1], 224 / 2);
    DMANow(3, map2Map, &((SB*) 0x6000000)[30], 4096 / 2);

    if (!paused) {
        level = 2;
        initializePlayer();
        initializePet2();
        playSoundA(game2Music_data, game2Music_length, 1);
    }
    state = GAME2;
}

void game2() {
    updateGame2();
    drawGame2();

    (*(volatile unsigned short*) 0x04000014) = hOff / 2;
    (*(volatile unsigned short*) 0x04000010) = hOff;

    waitForVBlank();

    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        goToPause();
    }
    if ((!(~(oldButtons) & ((1<<1))) && (~(buttons) & ((1<<1))))) {
        goToInstructions();
    }
    if (lives == 0) {
        goToLose();
    }
}

void goToGame3() {
    (*(volatile unsigned short *)0x4000000) = (1 << (8 + (0 % 4))) | (1 << (8 + (1 % 4))) | (1 << 12);

    waitForVBlank();
    DMANow(3, background3Pal, ((unsigned short *)0x5000000), 256);
    DMANow(3, background3Tiles, &((CB*) 0x6000000)[0], 24928 / 2);
    DMANow(3, background3Map, &((SB*) 0x6000000)[28], 4096 / 2);


    DMANow(3, map3Tiles, &((CB*) 0x6000000)[1], 352 / 2);
    DMANow(3, map3Map, &((SB*) 0x6000000)[30], 4096 / 2);

    if (!paused) {
        level = 3;
        initializePlayer();
        initializePet3();
        playSoundA(game3Music_data, game3Music_length, 1);
    }
    state = GAME3;
}

void game3() {
    updateGame3();
    drawGame3();

    (*(volatile unsigned short*) 0x04000014) = hOff / 2;
    (*(volatile unsigned short*) 0x04000010) = hOff;

    waitForVBlank();

    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        goToPause();
    }
    if ((!(~(oldButtons) & ((1<<1))) && (~(buttons) & ((1<<1))))) {
        goToInstructions();
    }
    if (lives == 0) {
        goToLose();
    }
}

void goToPause() {
    savedHOff = hOff;
    savedVOff = vOff;
    hOff = 0;
    vOff = 0;
    state = PAUSE;
    pauseSounds();
}

void pause() {
    paused = 1;

    (*(volatile unsigned short *)0x4000000) = (1 << (8 + (1 % 4)));
    (*(volatile unsigned short*) 0x04000014) = 0;

    waitForVBlank();
    DMANow(3, pausePal, ((unsigned short *)0x5000000), 256);
    DMANow(3, pauseTiles, &((CB*) 0x6000000)[0], 5152 / 2);
    DMANow(3, pauseMap, &((SB*) 0x6000000)[28], 2048 / 2);


    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);

    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        unpauseSounds();
        if (level == 1) {
            goToGame1();
        } else if (level == 2) {
            goToGame2();
        } else {
            goToGame3();
        }
        paused = 0;
    } else if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))) {
        goToStart();
    }
}


void goToLose() {
    state = LOSE;
    pauseSounds();
}

void lose() {
    state = LOSE;

    (*(volatile unsigned short *)0x4000000) = (1 << (8 + (1 % 4)));
    (*(volatile unsigned short*) 0x04000014) = 0;

    waitForVBlank();
    DMANow(3, losePal, ((unsigned short *)0x5000000), 256);
    DMANow(3, loseTiles, &((CB*) 0x6000000)[0], 2304 / 2);
    DMANow(3, loseMap, &((SB*) 0x6000000)[28], 2048 / 2);

    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);

    if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))) {
        goToStart();
    }
}

void goToWin() {
    state = WIN;
    playSoundA(winMusic_data, winMusic_length, 0);
}

void win() {
    state = WIN;
    (*(volatile unsigned short *)0x4000000) = (1 << (8 + (1 % 4)));
    (*(volatile unsigned short*) 0x04000014) = 0;

    waitForVBlank();
    DMANow(3, winPal, ((unsigned short *)0x5000000), 256);
    DMANow(3, winTiles, &((CB*) 0x6000000)[0], 6496 / 2);
    DMANow(3, winMap, &((SB*) 0x6000000)[28], 2048 / 2);

    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);
    if ((~(buttons) & ((1<<0)))) {

        ((SB*) 0x6000000)[28].tilemap[((8) * (32) + (11))] = 1;
        ((SB*) 0x6000000)[28].tilemap[((8) * (32) + (18))] = 1;
    }
    if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))) {
        goToStart();
    }
}
