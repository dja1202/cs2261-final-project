	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	2
	.global	goToStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #1
	mov	r0, #3
	push	{r4, lr}
	mov	r4, #0
	ldr	ip, .L4
	ldr	r3, .L4+4
	ldr	r1, .L4+8
	str	r2, [ip]
	ldr	ip, .L4+12
	str	r0, [r3]
	ldr	r1, [r1]
	ldr	r3, .L4+16
	ldr	r0, .L4+20
	str	r4, [ip]
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+24
	str	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	level
	.word	.LANCHOR0
	.word	startMusic_length
	.word	.LANCHOR1
	.word	playSoundA
	.word	startMusic_data
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L8
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+4
	mov	lr, pc
	bx	r3
	mov	r1, #67108864
	mov	r3, #4608
	mov	r0, #23552
	ldr	r2, .L8+8
	strh	r3, [r1]	@ movhi
	ldr	r4, .L8+12
	strh	r2, [r1, #8]	@ movhi
	mov	r3, #16384
	strh	r0, [r1, #10]	@ movhi
	ldr	r2, .L8+16
	mov	r0, #3
	ldr	r1, .L8+20
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L8+24
	ldr	r1, .L8+28
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L8+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+36
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L8+40
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	b	goToStart
.L9:
	.align	2
.L8:
	.word	mgba_open
	.word	setupSounds
	.word	24068
	.word	DMANow
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.size	initialize, .-initialize
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #512
	push	{r4, lr}
	mov	r3, #256
	strh	r1, [r2]	@ movhi
	ldr	r4, .L16
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L16+4
	mov	lr, pc
	bx	r4
	mov	r3, #432
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L16+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L16+12
	ldr	r1, .L16+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L16+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L16+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L10
	ldr	r3, .L16+28
	ldrh	r3, [r3]
	tst	r3, #8
	moveq	r2, #1
	ldreq	r3, .L16+32
	streq	r2, [r3]
.L10:
	pop	{r4, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	DMANow
	.word	startPal
	.word	startTiles
	.word	100720640
	.word	startMap
	.word	hideSprites
	.word	oldButtons
	.word	buttons
	.word	state
	.size	start, .-start
	.align	2
	.global	goToInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #1
	ldr	r3, .L19
	str	r2, [r3]
	bx	lr
.L20:
	.align	2
.L19:
	.word	state
	.size	goToInstructions, .-goToInstructions
	.align	2
	.global	goToGame1
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame1, %function
goToGame1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #2
	mov	r1, #67108864
	mov	r0, #4864
	ldr	r2, .L25
	push	{r4, lr}
	mov	r3, #256
	str	ip, [r2]
	ldr	r4, .L25+4
	strh	r0, [r1]	@ movhi
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L25+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L25+12
	ldr	r1, .L25+16
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L25+20
	ldr	r1, .L25+24
	mov	lr, pc
	bx	r4
	mov	r3, #112
	mov	r0, #3
	ldr	r2, .L25+28
	ldr	r1, .L25+32
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L25+36
	ldr	r1, .L25+40
	mov	lr, pc
	bx	r4
	ldr	r3, .L25+44
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L24
	pop	{r4, lr}
	bx	lr
.L24:
	mov	r4, #1
	mov	r0, #3
	ldr	r1, .L25+48
	ldr	r2, .L25+52
	ldr	r3, .L25+56
	str	r4, [r2]
	str	r0, [r1]
	mov	lr, pc
	bx	r3
	ldr	r3, .L25+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L25+64
	mov	r2, r4
	ldr	r1, [r3]
	ldr	r0, .L25+68
	ldr	r3, .L25+72
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L26:
	.align	2
.L25:
	.word	state
	.word	DMANow
	.word	background1Pal
	.word	13664
	.word	background1Tiles
	.word	100720640
	.word	background1Map
	.word	100679680
	.word	map1Tiles
	.word	100724736
	.word	map1Map
	.word	.LANCHOR1
	.word	.LANCHOR0
	.word	level
	.word	initializePlayer
	.word	initializePet1
	.word	game1Music_length
	.word	game1Music_data
	.word	playSoundA
	.size	goToGame1, .-goToGame1
	.align	2
	.global	game1
	.syntax unified
	.arm
	.fpu softvfp
	.type	game1, %function
game1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L39
	mov	lr, pc
	bx	r3
	ldr	r3, .L39+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L39+8
	mov	lr, pc
	bx	r3
	mov	r0, #67108864
	ldr	ip, .L39+12
	ldr	r2, [ip, #4]
	add	r3, r2, r2, lsr #31
	asr	r3, r3, #1
	lsl	r3, r3, #16
	lsl	r1, r2, #16
	lsr	r3, r3, #16
	lsr	r1, r1, #16
	strh	r3, [r0, #20]	@ movhi
	ldr	r4, .L39+16
	strh	r1, [r0, #16]	@ movhi
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L28
	ldr	r1, .L39+20
	ldrh	r1, [r1]
	ands	r1, r1, #8
	beq	.L38
.L28:
	tst	r3, #2
	beq	.L29
	ldr	r3, .L39+20
	ldrh	r3, [r3]
	tst	r3, #2
	moveq	r2, #1
	ldreq	r3, .L39+24
	streq	r2, [r3]
.L29:
	ldr	r3, .L39+28
	ldr	r3, [r3]
	cmp	r3, #0
	moveq	r2, #7
	ldreq	r3, .L39+24
	pop	{r4, lr}
	streq	r2, [r3]
	bx	lr
.L38:
	mov	r0, #5
	ldr	r3, .L39+24
	str	r2, [ip, #8]
	ldr	r2, [ip, #16]
	str	r0, [r3]
	ldr	r3, .L39+32
	str	r1, [ip, #4]
	str	r2, [ip, #12]
	str	r1, [ip, #16]
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	b	.L28
.L40:
	.align	2
.L39:
	.word	updateGame1
	.word	drawGame1
	.word	waitForVBlank
	.word	.LANCHOR1
	.word	oldButtons
	.word	buttons
	.word	state
	.word	.LANCHOR0
	.word	pauseSounds
	.size	game1, .-game1
	.align	2
	.global	goToGame2
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame2, %function
goToGame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #4864
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L45
	strh	r1, [r2]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L45+4
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L45+8
	ldr	r1, .L45+12
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L45+16
	ldr	r1, .L45+20
	mov	lr, pc
	bx	r4
	mov	r3, #112
	mov	r0, #3
	ldr	r2, .L45+24
	ldr	r1, .L45+28
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L45+32
	ldr	r1, .L45+36
	mov	lr, pc
	bx	r4
	ldr	r3, .L45+40
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L44
.L42:
	mov	r2, #3
	ldr	r3, .L45+44
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L44:
	mov	ip, #3
	mov	r1, #2
	ldr	r2, .L45+48
	ldr	r0, .L45+52
	ldr	r3, .L45+56
	str	r1, [r2]
	str	ip, [r0]
	mov	lr, pc
	bx	r3
	ldr	r3, .L45+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L45+64
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L45+68
	ldr	r3, .L45+72
	mov	lr, pc
	bx	r3
	b	.L42
.L46:
	.align	2
.L45:
	.word	DMANow
	.word	background2Pal
	.word	13616
	.word	background2Tiles
	.word	100720640
	.word	background2Map
	.word	100679680
	.word	map2Tiles
	.word	100724736
	.word	map2Map
	.word	.LANCHOR1
	.word	state
	.word	level
	.word	.LANCHOR0
	.word	initializePlayer
	.word	initializePet2
	.word	game2Music_length
	.word	game2Music_data
	.word	playSoundA
	.size	goToGame2, .-goToGame2
	.align	2
	.global	game2
	.syntax unified
	.arm
	.fpu softvfp
	.type	game2, %function
game2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L59
	mov	lr, pc
	bx	r3
	ldr	r3, .L59+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L59+8
	mov	lr, pc
	bx	r3
	mov	r0, #67108864
	ldr	ip, .L59+12
	ldr	r2, [ip, #4]
	add	r3, r2, r2, lsr #31
	asr	r3, r3, #1
	lsl	r3, r3, #16
	lsl	r1, r2, #16
	lsr	r3, r3, #16
	lsr	r1, r1, #16
	strh	r3, [r0, #20]	@ movhi
	ldr	r4, .L59+16
	strh	r1, [r0, #16]	@ movhi
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L48
	ldr	r1, .L59+20
	ldrh	r1, [r1]
	ands	r1, r1, #8
	beq	.L58
.L48:
	tst	r3, #2
	beq	.L49
	ldr	r3, .L59+20
	ldrh	r3, [r3]
	tst	r3, #2
	moveq	r2, #1
	ldreq	r3, .L59+24
	streq	r2, [r3]
.L49:
	ldr	r3, .L59+28
	ldr	r3, [r3]
	cmp	r3, #0
	moveq	r2, #7
	ldreq	r3, .L59+24
	pop	{r4, lr}
	streq	r2, [r3]
	bx	lr
.L58:
	mov	r0, #5
	ldr	r3, .L59+24
	str	r2, [ip, #8]
	ldr	r2, [ip, #16]
	str	r0, [r3]
	ldr	r3, .L59+32
	str	r1, [ip, #4]
	str	r2, [ip, #12]
	str	r1, [ip, #16]
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	b	.L48
.L60:
	.align	2
.L59:
	.word	updateGame2
	.word	drawGame2
	.word	waitForVBlank
	.word	.LANCHOR1
	.word	oldButtons
	.word	buttons
	.word	state
	.word	.LANCHOR0
	.word	pauseSounds
	.size	game2, .-game2
	.align	2
	.global	goToGame3
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame3, %function
goToGame3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #4864
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L65
	strh	r1, [r2]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L65+4
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L65+8
	ldr	r1, .L65+12
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L65+16
	ldr	r1, .L65+20
	mov	lr, pc
	bx	r4
	mov	r3, #176
	mov	r0, #3
	ldr	r2, .L65+24
	ldr	r1, .L65+28
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L65+32
	ldr	r1, .L65+36
	mov	lr, pc
	bx	r4
	ldr	r3, .L65+40
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L64
.L62:
	mov	r2, #4
	ldr	r3, .L65+44
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L64:
	mov	r3, #3
	ldr	r1, .L65+48
	ldr	r0, .L65+52
	ldr	r2, .L65+56
	str	r3, [r1]
	str	r3, [r0]
	mov	lr, pc
	bx	r2
	ldr	r3, .L65+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L65+64
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L65+68
	ldr	r3, .L65+72
	mov	lr, pc
	bx	r3
	b	.L62
.L66:
	.align	2
.L65:
	.word	DMANow
	.word	background3Pal
	.word	13616
	.word	background3Tiles
	.word	100720640
	.word	background3Map
	.word	100679680
	.word	map3Tiles
	.word	100724736
	.word	map3Map
	.word	.LANCHOR1
	.word	state
	.word	level
	.word	.LANCHOR0
	.word	initializePlayer
	.word	initializePet3
	.word	game3Music_length
	.word	game3Music_data
	.word	playSoundA
	.size	goToGame3, .-goToGame3
	.align	2
	.global	instructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r3, #512
	mov	r1, #0
	push	{r4, lr}
	mov	r0, #3
	strh	r3, [r2]	@ movhi
	ldr	r4, .L77
	strh	r1, [r2, #20]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L77+4
	mov	lr, pc
	bx	r4
	mov	r3, #3600
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L77+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L77+12
	ldr	r1, .L77+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L77+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L77+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L67
	ldr	r3, .L77+28
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L67
	ldr	r3, .L77+32
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L75
	cmp	r3, #2
	beq	.L76
	pop	{r4, lr}
	b	goToGame3
.L67:
	pop	{r4, lr}
	bx	lr
.L75:
	pop	{r4, lr}
	b	goToGame1
.L76:
	pop	{r4, lr}
	b	goToGame2
.L78:
	.align	2
.L77:
	.word	DMANow
	.word	instructionPal
	.word	instructionTiles
	.word	100720640
	.word	instructionMap
	.word	hideSprites
	.word	oldButtons
	.word	buttons
	.word	level
	.size	instructions, .-instructions
	.align	2
	.global	game3
	.syntax unified
	.arm
	.fpu softvfp
	.type	game3, %function
game3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L91
	mov	lr, pc
	bx	r3
	ldr	r3, .L91+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L91+8
	mov	lr, pc
	bx	r3
	mov	r0, #67108864
	ldr	ip, .L91+12
	ldr	r2, [ip, #4]
	add	r3, r2, r2, lsr #31
	asr	r3, r3, #1
	lsl	r3, r3, #16
	lsl	r1, r2, #16
	lsr	r3, r3, #16
	lsr	r1, r1, #16
	strh	r3, [r0, #20]	@ movhi
	ldr	r4, .L91+16
	strh	r1, [r0, #16]	@ movhi
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L80
	ldr	r1, .L91+20
	ldrh	r1, [r1]
	ands	r1, r1, #8
	beq	.L90
.L80:
	tst	r3, #2
	beq	.L81
	ldr	r3, .L91+20
	ldrh	r3, [r3]
	tst	r3, #2
	moveq	r2, #1
	ldreq	r3, .L91+24
	streq	r2, [r3]
.L81:
	ldr	r3, .L91+28
	ldr	r3, [r3]
	cmp	r3, #0
	moveq	r2, #7
	ldreq	r3, .L91+24
	pop	{r4, lr}
	streq	r2, [r3]
	bx	lr
.L90:
	mov	r0, #5
	ldr	r3, .L91+24
	str	r2, [ip, #8]
	ldr	r2, [ip, #16]
	str	r0, [r3]
	ldr	r3, .L91+32
	str	r1, [ip, #4]
	str	r2, [ip, #12]
	str	r1, [ip, #16]
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	b	.L80
.L92:
	.align	2
.L91:
	.word	updateGame2
	.word	drawGame3
	.word	waitForVBlank
	.word	.LANCHOR1
	.word	oldButtons
	.word	buttons
	.word	state
	.word	.LANCHOR0
	.word	pauseSounds
	.size	game3, .-game3
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	mov	ip, #5
	push	{r4, lr}
	ldr	r3, .L95
	ldr	r1, [r3, #4]
	ldr	lr, [r3, #16]
	ldr	r0, .L95+4
	str	r1, [r3, #8]
	ldr	r1, .L95+8
	str	lr, [r3, #12]
	str	r2, [r3, #4]
	str	r2, [r3, #16]
	str	ip, [r0]
	mov	lr, pc
	bx	r1
	pop	{r4, lr}
	bx	lr
.L96:
	.align	2
.L95:
	.word	.LANCHOR1
	.word	state
	.word	pauseSounds
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	ip, #0
	mov	r0, #67108864
	mov	r2, #1
	mov	r5, #512
	ldr	r6, .L118
	ldr	r4, .L118+4
	str	r2, [r6]
	mov	r3, #256
	strh	r5, [r0]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #20]	@ movhi
	ldr	r1, .L118+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2240
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L118+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L118+16
	ldr	r1, .L118+20
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L118+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L118+28
	mov	lr, pc
	bx	r3
	mov	r3, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L118+32
	mov	lr, pc
	bx	r4
	ldr	r3, .L118+36
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L98
	ldr	r2, .L118+40
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L114
.L98:
	tst	r3, #4
	beq	.L103
	ldr	r2, .L118+40
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L115
.L103:
	tst	r3, #2
	beq	.L97
	ldr	r3, .L118+40
	ldrh	r3, [r3]
	tst	r3, #2
	moveq	r2, #1
	ldreq	r3, .L118+44
	streq	r2, [r3]
.L97:
	pop	{r4, r5, r6, lr}
	bx	lr
.L114:
	ldr	r3, .L118+48
	mov	lr, pc
	bx	r3
	ldr	r3, .L118+52
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L116
	cmp	r3, #2
	beq	.L117
	bl	goToGame3
.L100:
	mov	r3, #0
	str	r3, [r6]
	pop	{r4, r5, r6, lr}
	bx	lr
.L115:
	pop	{r4, r5, r6, lr}
	b	goToStart
.L117:
	bl	goToGame2
	b	.L100
.L116:
	bl	goToGame1
	b	.L100
.L119:
	.align	2
.L118:
	.word	.LANCHOR1
	.word	DMANow
	.word	pausePal
	.word	pauseTiles
	.word	100720640
	.word	pauseMap
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.word	state
	.word	unpauseSounds
	.word	level
	.size	pause, .-pause
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #7
	ldr	r3, .L121
	str	r2, [r3]
	bx	lr
.L122:
	.align	2
.L121:
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	ip, #7
	mov	r3, #67108864
	mov	r1, #0
	mov	r5, #512
	ldr	r0, .L130
	ldr	r2, .L130+4
	str	ip, [r0]
	strh	r5, [r3]	@ movhi
	strh	r1, [r3, #20]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r4, .L130+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L130+12
	mov	lr, pc
	bx	r4
	mov	r3, #1360
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L130+16
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L130+20
	ldr	r1, .L130+24
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L130+28
	mov	lr, pc
	bx	r3
	mov	r3, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L130+32
	mov	lr, pc
	bx	r4
	ldr	r3, .L130+36
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L123
	ldr	r3, .L130+40
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L129
.L123:
	pop	{r4, r5, r6, lr}
	bx	lr
.L129:
	pop	{r4, r5, r6, lr}
	b	goToStart
.L131:
	.align	2
.L130:
	.word	state
	.word	waitForVBlank
	.word	DMANow
	.word	losePal
	.word	loseTiles
	.word	100720640
	.word	loseMap
	.word	hideSprites
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.size	lose, .-lose
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #6
	ldr	r3, .L133
	str	r2, [r3]
	bx	lr
.L134:
	.align	2
.L133:
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #67108864
	mov	r0, #6
	mov	r6, #512
	mov	r5, #0
	ldr	r1, .L142
	ldr	r2, .L142+4
	str	r0, [r1]
	strh	r6, [r3]	@ movhi
	strh	r5, [r3, #20]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r4, .L142+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L142+12
	mov	lr, pc
	bx	r4
	mov	r3, #1296
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L142+16
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L142+20
	ldr	r1, .L142+24
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L142+28
	mov	lr, pc
	bx	r3
	mov	r3, r6
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L142+32
	mov	lr, pc
	bx	r4
	ldr	r3, .L142+36
	mov	r2, r5
	ldr	r1, [r3]
	ldr	r0, .L142+40
	ldr	r3, .L142+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L142+48
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L135
	ldr	r3, .L142+52
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L141
.L135:
	pop	{r4, r5, r6, lr}
	bx	lr
.L141:
	pop	{r4, r5, r6, lr}
	b	goToStart
.L143:
	.align	2
.L142:
	.word	state
	.word	waitForVBlank
	.word	DMANow
	.word	winPal
	.word	winTiles
	.word	100720640
	.word	winMap
	.word	hideSprites
	.word	shadowOAM
	.word	winMusic_length
	.word	winMusic_data
	.word	playSoundA
	.word	oldButtons
	.word	buttons
	.size	win, .-win
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r3, .L157
	mov	lr, pc
	bx	r3
	ldr	r7, .L157+4
	ldr	r4, .L157+8
	ldr	r6, .L157+12
	ldr	fp, .L157+16
	ldr	r10, .L157+20
	ldr	r9, .L157+24
	ldr	r5, .L157+28
	ldr	r8, .L157+32
.L155:
	ldrh	r3, [r4]
	strh	r3, [r7]	@ movhi
	ldr	r3, [r6]
	ldrh	r2, [r5, #48]
	strh	r2, [r4]	@ movhi
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L145
.L147:
	.word	.L154
	.word	.L153
	.word	.L152
	.word	.L151
	.word	.L150
	.word	.L149
	.word	.L148
	.word	.L146
.L146:
	ldr	r3, .L157+36
	mov	lr, pc
	bx	r3
.L145:
	mov	r3, #512
	mov	r2, #117440512
	mov	r1, r8
	mov	r0, #3
	mov	lr, pc
	bx	r9
	b	.L155
.L148:
	ldr	r3, .L157+40
	mov	lr, pc
	bx	r3
	b	.L145
.L149:
	ldr	r3, .L157+44
	mov	lr, pc
	bx	r3
	b	.L145
.L150:
	ldr	r3, .L157+48
	mov	lr, pc
	bx	r3
	b	.L145
.L151:
	ldr	r3, .L157+52
	mov	lr, pc
	bx	r3
	b	.L145
.L152:
	ldr	r3, .L157+56
	mov	lr, pc
	bx	r3
	b	.L145
.L154:
	mov	lr, pc
	bx	fp
	b	.L145
.L153:
	mov	lr, pc
	bx	r10
	b	.L145
.L158:
	.align	2
.L157:
	.word	initialize
	.word	oldButtons
	.word	buttons
	.word	state
	.word	start
	.word	instructions
	.word	DMANow
	.word	67109120
	.word	shadowOAM
	.word	lose
	.word	win
	.word	pause
	.word	game3
	.word	game2
	.word	game1
	.size	main, .-main
	.comm	buttons,2,2
	.comm	oldButtons,2,2
	.comm	player,68,4
	.global	savedVOff
	.global	savedHOff
	.global	vOff
	.global	hOff
	.global	paused
	.global	lives
	.comm	state,4,4
	.comm	shadowOAM,1024,4
	.comm	soundB,24,4
	.comm	soundA,24,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	lives, %object
	.size	lives, 4
lives:
	.word	3
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	paused, %object
	.size	paused, 4
paused:
	.space	4
	.type	hOff, %object
	.size	hOff, 4
hOff:
	.space	4
	.type	savedHOff, %object
	.size	savedHOff, 4
savedHOff:
	.space	4
	.type	savedVOff, %object
	.size	savedVOff, 4
savedVOff:
	.space	4
	.type	vOff, %object
	.size	vOff, 4
vOff:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
