
//{{BLOCK(lose)

//======================================================================
//
//	lose, 256x256@4, 
//	+ palette 16 entries, not compressed
//	+ 72 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 32 + 2304 + 2048 = 4384
//
//	Time-stamp: 2025-04-30, 06:40:54
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LOSE_H
#define GRIT_LOSE_H

#define loseTilesLen 2304
extern const unsigned short loseTiles[1152];

#define loseMapLen 2048
extern const unsigned short loseMap[1024];

#define losePalLen 32
extern const unsigned short losePal[16];

#endif // GRIT_LOSE_H

//}}BLOCK(lose)
