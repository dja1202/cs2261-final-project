
//{{BLOCK(map3)

//======================================================================
//
//	map3, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 11 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 352 + 4096 = 4960
//
//	Time-stamp: 2025-04-30, 02:20:03
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_MAP3_H
#define GRIT_MAP3_H

#define map3TilesLen 352
extern const unsigned short map3Tiles[176];

#define map3MapLen 4096
extern const unsigned short map3Map[2048];

#define map3PalLen 512
extern const unsigned short map3Pal[256];

#endif // GRIT_MAP3_H

//}}BLOCK(map3)
