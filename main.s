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
	mov	r3, #144
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
	ldr	r2, .L25+48
	ldr	r3, .L25+52
	str	r4, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L25+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L25+60
	mov	r2, r4
	ldr	r1, [r3]
	ldr	r0, .L25+64
	ldr	r3, .L25+68
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
	.word	12336
	.word	background1Tiles
	.word	100720640
	.word	background1Map
	.word	100679680
	.word	map1Tiles
	.word	100724736
	.word	map1Map
	.word	.LANCHOR1
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
	push	{r4, r5, r6, lr}
	ldr	r3, .L40
	mov	lr, pc
	bx	r3
	ldr	r3, .L40+4
	mov	lr, pc
	bx	r3
	mov	r1, #67108864
	ldr	r4, .L40+8
	ldr	r3, [r4, #4]
	add	r2, r3, r3, lsr #31
	asr	r2, r2, #1
	lsl	r2, r2, #16
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	lsr	r2, r2, #16
	ldr	r5, .L40+12
	strh	r2, [r1, #20]	@ movhi
	strh	r3, [r1, #16]	@ movhi
	ldr	r2, .L40+16
	mov	lr, pc
	bx	r2
	ldrh	r3, [r5]
	tst	r3, #8
	beq	.L28
	ldr	r2, .L40+20
	ldrh	r2, [r2]
	ands	r2, r2, #8
	beq	.L38
.L28:
	tst	r3, #2
	beq	.L29
	ldr	r3, .L40+20
	ldrh	r3, [r3]
	tst	r3, #2
	moveq	r2, #1
	ldreq	r3, .L40+24
	streq	r2, [r3]
.L29:
	ldr	r3, .L40+28
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L39
	pop	{r4, r5, r6, lr}
	bx	lr
.L39:
	mov	r1, #7
	ldr	r2, .L40+24
	ldr	r3, .L40+32
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L38:
	mov	r1, #5
	ldr	r3, .L40+24
	ldr	r0, [r4, #4]
	str	r1, [r3]
	ldr	r1, [r4, #16]
	ldr	r3, .L40+32
	str	r0, [r4, #8]
	str	r2, [r4, #4]
	str	r1, [r4, #12]
	str	r2, [r4, #16]
	mov	lr, pc
	bx	r3
	ldrh	r3, [r5]
	b	.L28
.L41:
	.align	2
.L40:
	.word	updateGame1
	.word	drawGame1
	.word	.LANCHOR1
	.word	oldButtons
	.word	waitForVBlank
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
	ldr	r4, .L46
	strh	r1, [r2]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L46+4
	mov	lr, pc
	bx	r4
	mov	r3, #12416
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L46+8
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L46+12
	ldr	r1, .L46+16
	mov	lr, pc
	bx	r4
	mov	r3, #112
	mov	r0, #3
	ldr	r2, .L46+20
	ldr	r1, .L46+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L46+28
	ldr	r1, .L46+32
	mov	lr, pc
	bx	r4
	ldr	r3, .L46+36
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L45
.L43:
	mov	r2, #3
	ldr	r3, .L46+40
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L45:
	mov	r1, #2
	ldr	r2, .L46+44
	ldr	r3, .L46+48
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L46+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L46+56
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L46+60
	ldr	r3, .L46+64
	mov	lr, pc
	bx	r3
	b	.L43
.L47:
	.align	2
.L46:
	.word	DMANow
	.word	background2Pal
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
	push	{r4, r5, r6, lr}
	ldr	r3, .L61
	mov	lr, pc
	bx	r3
	ldr	r3, .L61+4
	mov	lr, pc
	bx	r3
	mov	r1, #67108864
	ldr	r4, .L61+8
	ldr	r3, [r4, #4]
	add	r2, r3, r3, lsr #31
	asr	r2, r2, #1
	lsl	r2, r2, #16
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	lsr	r2, r2, #16
	ldr	r5, .L61+12
	strh	r2, [r1, #20]	@ movhi
	strh	r3, [r1, #16]	@ movhi
	ldr	r2, .L61+16
	mov	lr, pc
	bx	r2
	ldrh	r3, [r5]
	tst	r3, #8
	beq	.L49
	ldr	r2, .L61+20
	ldrh	r2, [r2]
	ands	r2, r2, #8
	beq	.L59
.L49:
	tst	r3, #2
	beq	.L50
	ldr	r3, .L61+20
	ldrh	r3, [r3]
	tst	r3, #2
	moveq	r2, #1
	ldreq	r3, .L61+24
	streq	r2, [r3]
.L50:
	ldr	r3, .L61+28
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L60
	pop	{r4, r5, r6, lr}
	bx	lr
.L60:
	mov	r1, #7
	ldr	r2, .L61+24
	ldr	r3, .L61+32
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L59:
	mov	r1, #5
	ldr	r3, .L61+24
	ldr	r0, [r4, #4]
	str	r1, [r3]
	ldr	r1, [r4, #16]
	ldr	r3, .L61+32
	str	r0, [r4, #8]
	str	r2, [r4, #4]
	str	r1, [r4, #12]
	str	r2, [r4, #16]
	mov	lr, pc
	bx	r3
	ldrh	r3, [r5]
	b	.L49
.L62:
	.align	2
.L61:
	.word	updateGame2
	.word	drawGame2
	.word	.LANCHOR1
	.word	oldButtons
	.word	waitForVBlank
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
	ldr	r4, .L67
	strh	r1, [r2]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L67+4
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L67+8
	ldr	r1, .L67+12
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L67+16
	ldr	r1, .L67+20
	mov	lr, pc
	bx	r4
	mov	r3, #176
	mov	r0, #3
	ldr	r2, .L67+24
	ldr	r1, .L67+28
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L67+32
	ldr	r1, .L67+36
	mov	lr, pc
	bx	r4
	ldr	r3, .L67+40
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L66
.L64:
	mov	r2, #4
	ldr	r3, .L67+44
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L66:
	mov	r1, #3
	ldr	r2, .L67+48
	ldr	r3, .L67+52
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L67+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L67+60
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L67+64
	ldr	r3, .L67+68
	mov	lr, pc
	bx	r3
	b	.L64
.L68:
	.align	2
.L67:
	.word	DMANow
	.word	background3Pal
	.word	12464
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
	ldr	r4, .L79
	strh	r1, [r2, #20]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L79+4
	mov	lr, pc
	bx	r4
	mov	r3, #3600
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L79+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L79+12
	ldr	r1, .L79+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L79+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L79+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L69
	ldr	r3, .L79+28
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L69
	ldr	r3, .L79+32
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L77
	cmp	r3, #2
	beq	.L78
	pop	{r4, lr}
	b	goToGame3
.L69:
	pop	{r4, lr}
	bx	lr
.L77:
	pop	{r4, lr}
	b	goToGame1
.L78:
	pop	{r4, lr}
	b	goToGame2
.L80:
	.align	2
.L79:
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
	push	{r4, r5, r6, lr}
	ldr	r3, .L94
	mov	lr, pc
	bx	r3
	ldr	r3, .L94+4
	mov	lr, pc
	bx	r3
	mov	r1, #67108864
	ldr	r4, .L94+8
	ldr	r3, [r4, #4]
	add	r2, r3, r3, lsr #31
	asr	r2, r2, #1
	lsl	r2, r2, #16
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	lsr	r2, r2, #16
	ldr	r5, .L94+12
	strh	r2, [r1, #20]	@ movhi
	strh	r3, [r1, #16]	@ movhi
	ldr	r2, .L94+16
	mov	lr, pc
	bx	r2
	ldrh	r3, [r5]
	tst	r3, #8
	beq	.L82
	ldr	r2, .L94+20
	ldrh	r2, [r2]
	ands	r2, r2, #8
	beq	.L92
.L82:
	tst	r3, #2
	beq	.L83
	ldr	r3, .L94+20
	ldrh	r3, [r3]
	tst	r3, #2
	moveq	r2, #1
	ldreq	r3, .L94+24
	streq	r2, [r3]
.L83:
	ldr	r3, .L94+28
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L93
	pop	{r4, r5, r6, lr}
	bx	lr
.L93:
	mov	r1, #7
	ldr	r2, .L94+24
	ldr	r3, .L94+32
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L92:
	mov	r1, #5
	ldr	r3, .L94+24
	ldr	r0, [r4, #4]
	str	r1, [r3]
	ldr	r1, [r4, #16]
	ldr	r3, .L94+32
	str	r0, [r4, #8]
	str	r2, [r4, #4]
	str	r1, [r4, #12]
	str	r2, [r4, #16]
	mov	lr, pc
	bx	r3
	ldrh	r3, [r5]
	b	.L82
.L95:
	.align	2
.L94:
	.word	updateGame3
	.word	drawGame3
	.word	.LANCHOR1
	.word	oldButtons
	.word	waitForVBlank
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
	ldr	r3, .L98
	ldr	r1, [r3, #4]
	ldr	lr, [r3, #16]
	ldr	r0, .L98+4
	str	r1, [r3, #8]
	ldr	r1, .L98+8
	str	lr, [r3, #12]
	str	r2, [r3, #4]
	str	r2, [r3, #16]
	str	ip, [r0]
	mov	lr, pc
	bx	r1
	pop	{r4, lr}
	bx	lr
.L99:
	.align	2
.L98:
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
	ldr	r6, .L117
	ldr	r4, .L117+4
	str	r2, [r6]
	mov	r3, #256
	strh	r5, [r0]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #20]	@ movhi
	ldr	r1, .L117+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2240
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L117+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L117+16
	ldr	r1, .L117+20
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L117+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L117+28
	mov	lr, pc
	bx	r3
	mov	r3, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L117+32
	mov	lr, pc
	bx	r4
	ldr	r3, .L117+36
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L101
	ldr	r2, .L117+40
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L113
.L101:
	tst	r3, #4
	beq	.L100
	ldr	r3, .L117+40
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L114
.L100:
	pop	{r4, r5, r6, lr}
	bx	lr
.L113:
	ldr	r3, .L117+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L117+48
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L115
	cmp	r3, #2
	beq	.L116
	bl	goToGame3
.L103:
	mov	r3, #0
	str	r3, [r6]
	pop	{r4, r5, r6, lr}
	bx	lr
.L114:
	pop	{r4, r5, r6, lr}
	b	goToStart
.L116:
	bl	goToGame2
	b	.L103
.L115:
	bl	goToGame1
	b	.L103
.L118:
	.align	2
.L117:
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
	mov	r1, #7
	push	{r4, lr}
	ldr	r2, .L121
	ldr	r3, .L121+4
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L122:
	.align	2
.L121:
	.word	state
	.word	pauseSounds
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
	push	{r4, lr}
	mov	lr, #6
	ldr	r3, .L134
	ldr	ip, .L134+4
	ldr	r1, [r3]
	mov	r2, #0
	ldr	r0, .L134+8
	ldr	r3, .L134+12
	str	lr, [ip]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L135:
	.align	2
.L134:
	.word	winMusic_length
	.word	state
	.word	winMusic_data
	.word	playSoundA
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
	mov	ip, #6
	mov	r3, #67108864
	mov	r1, #0
	mov	r5, #512
	ldr	r0, .L143
	ldr	r2, .L143+4
	str	ip, [r0]
	strh	r5, [r3]	@ movhi
	strh	r1, [r3, #20]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r4, .L143+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L143+12
	mov	lr, pc
	bx	r4
	mov	r3, #1296
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L143+16
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L143+20
	ldr	r1, .L143+24
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L143+28
	mov	lr, pc
	bx	r3
	mov	r3, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L143+32
	mov	lr, pc
	bx	r4
	ldr	r3, .L143+36
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L136
	ldr	r3, .L143+40
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L142
.L136:
	pop	{r4, r5, r6, lr}
	bx	lr
.L142:
	pop	{r4, r5, r6, lr}
	b	goToStart
.L144:
	.align	2
.L143:
	.word	state
	.word	waitForVBlank
	.word	DMANow
	.word	winPal
	.word	winTiles
	.word	100720640
	.word	winMap
	.word	hideSprites
	.word	shadowOAM
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
	ldr	r3, .L158
	mov	lr, pc
	bx	r3
	ldr	r7, .L158+4
	ldr	r4, .L158+8
	ldr	r6, .L158+12
	ldr	fp, .L158+16
	ldr	r10, .L158+20
	ldr	r9, .L158+24
	ldr	r5, .L158+28
	ldr	r8, .L158+32
.L156:
	ldrh	r3, [r4]
	strh	r3, [r7]	@ movhi
	ldr	r3, [r6]
	ldrh	r2, [r5, #48]
	strh	r2, [r4]	@ movhi
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L146
.L148:
	.word	.L155
	.word	.L154
	.word	.L153
	.word	.L152
	.word	.L151
	.word	.L150
	.word	.L149
	.word	.L147
.L147:
	ldr	r3, .L158+36
	mov	lr, pc
	bx	r3
.L146:
	mov	r3, #512
	mov	r2, #117440512
	mov	r1, r8
	mov	r0, #3
	mov	lr, pc
	bx	r9
	b	.L156
.L149:
	ldr	r3, .L158+40
	mov	lr, pc
	bx	r3
	b	.L146
.L150:
	ldr	r3, .L158+44
	mov	lr, pc
	bx	r3
	b	.L146
.L151:
	ldr	r3, .L158+48
	mov	lr, pc
	bx	r3
	b	.L146
.L152:
	ldr	r3, .L158+52
	mov	lr, pc
	bx	r3
	b	.L146
.L153:
	ldr	r3, .L158+56
	mov	lr, pc
	bx	r3
	b	.L146
.L155:
	mov	lr, pc
	bx	fp
	b	.L146
.L154:
	mov	lr, pc
	bx	r10
	b	.L146
.L159:
	.align	2
.L158:
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
