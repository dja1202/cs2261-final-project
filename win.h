
//{{BLOCK(win)

//======================================================================
//
//	win, 256x256@4, 
//	+ palette 16 entries, not compressed
//	+ 203 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 32 + 6496 + 2048 = 8576
//
//	Time-stamp: 2025-04-30, 08:43:59
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_WIN_H
#define GRIT_WIN_H

#define winTilesLen 6496
extern const unsigned short winTiles[3248];

#define winMapLen 2048
extern const unsigned short winMap[1024];

#define winPalLen 32
extern const unsigned short winPal[16];

#endif // GRIT_WIN_H

//}}BLOCK(win)
