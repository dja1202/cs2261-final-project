#ifndef GBA_GAME_H
#define GBA_GAME_H

#include "gba.h"
#include "sprites.h"

void initializePlayer();
void initializePet1();
void initializePet2();
void initializePet3();
void updatePlayer();
void updatePet1();
void updatePet2();
void updatePet3();
void drawPlayer();
void drawPet();

int winCondition();
int loseCondition();



#endif