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
	.file	"game.c"
	.text
	.align	2
	.global	initializePlayer
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializePlayer, %function
initializePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	mov	ip, #4
	mov	r0, #15
	push	{r4, r5, lr}
	mov	r1, #32
	mov	r5, #8
	mov	r4, #78
	mov	lr, #2
	ldr	r3, .L4
	str	ip, [r3, #40]
	str	r0, [r3, #24]
	ldr	ip, .L4+4
	ldr	r0, .L4+8
	strb	r2, [r3, #68]
	str	r5, [r3]
	str	r4, [r3, #4]
	str	lr, [r3, #60]
	str	r2, [r3, #36]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	r2, [r3, #48]
	str	r2, [r3, #52]
	str	r2, [r3, #56]
	str	r2, [r3, #64]
	str	r2, [ip]
	str	r2, [r0]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	pop	{r4, r5, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	player
	.word	hOff
	.word	vOff
	.size	initializePlayer, .-initializePlayer
	.global	__aeabi_idivmod
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	fp, .L81
	ldr	r4, .L81+4
	ldrh	r1, [fp]
	ldr	r0, [r4]
	lsr	r2, r1, #5
	eor	r2, r2, #1
	mov	ip, #0
	cmp	r0, #0
	movle	r2, #0
	andgt	r2, r2, #1
	ldr	r3, [r4, #4]
	ldr	r5, [r4, #20]
	ldr	r10, [r4, #16]
	ldr	r6, .L81+8
	add	r5, r3, r5
	sub	sp, sp, #12
	cmp	r2, ip
	add	r10, r0, r10
	sub	r2, r5, #1
	str	r2, [sp]
	str	ip, [r4, #32]
	str	ip, [r4, #64]
	ldr	r2, [r6]
	sub	r9, r10, #11
	add	r8, r0, #11
	bne	.L65
	ldr	r7, .L81+12
.L7:
	ands	r1, r1, #16
	str	r1, [sp]
	bne	.L10
	ldr	r1, [r4]
	ldr	r0, [r4, #16]
	add	r1, r1, r0
	cmp	r1, #512
	blt	.L72
.L10:
	mov	r1, r5
	mov	r0, r8
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L13
.L15:
	mov	r3, #0
	mov	r2, #1
	str	r3, [r4, #48]
	str	r2, [r4, #52]
	str	r3, [r4, #56]
.L14:
	ldr	r3, .L81+16
	ldrh	r3, [r3]
	tst	r3, #1
	ldrh	r2, [fp]
	beq	.L16
	ands	r1, r2, #1
	beq	.L73
.L16:
	and	r3, r2, #768
	cmp	r3, #0
	moveq	r3, #1
	movne	r3, #0
	str	r3, [r4, #64]
	ldr	r3, [r4, #4]
	bne	.L17
	tst	r2, #64
	subeq	r3, r3, #1
	streq	r3, [r4, #4]
	tst	r2, #128
	ldr	r5, [r4]
	addeq	r3, r3, #1
	streq	r3, [r4, #4]
	tst	r2, #32
	subeq	r5, r5, #1
	streq	r5, [r4]
	tst	r2, #16
	mov	r2, #0
	addeq	r5, r5, #1
	streq	r5, [r4]
	str	r2, [r4, #52]
	str	r2, [r4, #48]
.L22:
	ldr	r2, [r4, #24]
	sub	r2, r2, #1
	cmp	r2, #0
	str	r2, [r4, #24]
	ble	.L74
.L38:
	cmp	r5, #0
	movlt	r8, #0
	add	r0, r4, #16
	ldm	r0, {r0, ip}
	rsb	r2, r0, #240
	rsb	lr, ip, #160
	add	r2, r2, r2, lsr #31
	sub	r2, r5, r2, asr #1
	strlt	r8, [r4]
	movlt	r5, r0
	addge	r5, r0, r5
	add	r1, lr, lr, lsr #31
	cmp	r3, #0
	sub	r1, r3, r1, asr #1
	movlt	r3, #0
	addge	ip, ip, r3
	strlt	r3, [r4, #4]
	cmp	r5, #512
	rsbgt	r3, r0, #512
	ldr	r7, .L81+20
	ldr	r6, .L81+24
	strgt	r3, [r4]
	cmp	ip, #160
	strgt	lr, [r4, #4]
	cmp	r2, #0
	str	r2, [r7]
	str	r1, [r6]
	blt	.L75
	cmp	r1, #0
	blt	.L76
	cmp	r2, #272
	movgt	r3, #272
	strgt	r3, [r7]
.L46:
	cmp	r1, #0
	ble	.L6
	mov	r3, #0
.L71:
	str	r3, [r6]
.L6:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L17:
	ldr	r2, [r4, #48]
	add	r2, r2, #100
	cmp	r2, #2560
	str	r2, [r4, #48]
	bgt	.L77
	cmp	r2, #0
	asr	r1, r2, #8
	movgt	r2, #1
	mvnle	r2, #0
	eor	r0, r1, r1, asr #31
	sub	r0, r0, r1, asr #31
	cmp	r1, #0
	str	r0, [sp, #4]
	str	r2, [sp]
	beq	.L26
.L24:
	mov	r5, #0
	b	.L36
.L27:
	mov	r1, r10
	mov	r0, r9
	ldr	r2, [r6]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L30
	mov	r1, fp
	ldr	r0, [r4]
	ldr	r3, .L81+28
	str	fp, [r4, #4]
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	bne	.L78
	ldr	r3, [sp, #4]
	cmp	r5, r3
	ldr	r3, [r4, #4]
	beq	.L32
.L36:
	ldr	r2, [sp]
	ldr	r1, [r4, #20]
	add	fp, r2, r3
	add	r1, fp, r1
	sub	r10, r1, #1
	mov	r1, r10
	mov	r0, r8
	ldr	r2, [r6]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	add	r5, r5, #1
	bne	.L27
.L30:
	mov	r3, #0
	ldr	r2, [sp]
	cmp	r2, #1
	str	r3, [r4, #48]
	ldrne	r3, [r4, #4]
	beq	.L79
.L32:
	ldr	r1, [r4, #32]
	ldr	r2, [r4, #64]
	orrs	r2, r1, r2
	ldr	r5, [r4]
	bne	.L22
.L37:
	mov	r2, #0
	str	r2, [r4, #36]
	b	.L38
.L74:
	ldr	r0, [r4, #36]
	str	r3, [sp]
	ldr	r2, .L81+32
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r2
	mov	r2, #15
	str	r1, [r4, #36]
	str	r2, [r4, #24]
	ldr	r3, [sp]
	b	.L38
.L73:
	ldr	r3, [r4, #56]
	ldr	r0, [r4, #60]
	cmp	r3, r0
	ldrlt	r0, .L81+36
	addlt	r3, r3, #1
	strlt	r3, [r4, #56]
	strlt	r1, [r4, #52]
	strlt	r0, [r4, #48]
	b	.L16
.L77:
	mov	r2, #2560
	mov	r1, #10
	str	r2, [r4, #48]
	mov	r2, #1
	str	r1, [sp, #4]
	str	r2, [sp]
	b	.L24
.L76:
	mov	r3, #0
	cmp	r2, #272
	str	r3, [r6]
	ble	.L6
	mov	r3, #272
	str	r3, [r7]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L75:
	mov	r3, #0
	cmp	r1, r3
	str	r3, [r7]
	bge	.L46
	b	.L71
.L13:
	mov	r1, r5
	mov	r0, r9
	ldr	r2, [r6]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L15
	mov	r3, #0
	str	r3, [r4, #52]
	b	.L14
.L65:
	add	r1, r0, #10
	mov	r0, r1
	str	r1, [sp, #4]
	ldr	r7, .L81+12
	mov	r1, r3
	str	r3, [sp]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	ldr	r3, [sp]
	bne	.L8
.L69:
	ldrh	r1, [fp]
	ldr	r2, [r6]
	b	.L7
.L72:
	sub	r10, r10, #10
	mov	r1, r3
	mov	r0, r10
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L11
.L70:
	ldr	r2, [r6]
	b	.L10
.L79:
	ldr	r2, [sp]
	str	r3, [r4, #56]
	str	r2, [r4, #52]
	ldr	r3, [r4, #4]
	b	.L32
.L8:
	ldr	r2, [r6]
	sub	r1, r5, #1
	ldr	r0, [sp, #4]
	str	r3, [sp]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	movne	r1, #1
	ldrne	r2, [r4]
	subne	r2, r2, #1
	ldr	r3, [sp]
	strne	r2, [r4]
	strne	r1, [r4, #32]
	strne	r1, [r4, #28]
	b	.L69
.L78:
	ldr	r2, .L81+40
	ldr	r3, [r2]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r2]
	ble	.L80
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	initializePlayer
.L11:
	ldr	r2, [r6]
	sub	r1, r5, #1
	mov	r0, r10
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	movne	r2, #1
	ldrne	r3, [r4]
	ldrne	r1, [sp]
	addne	r3, r3, r2
	strne	r1, [r4, #28]
	strne	r3, [r4]
	strne	r2, [r4, #32]
	b	.L70
.L80:
	ldr	r3, .L81+44
	mov	lr, pc
	bx	r3
	b	.L6
.L26:
	ldr	r2, [r4, #32]
	cmp	r2, #0
	ldr	r5, [r4]
	bne	.L22
	b	.L37
.L82:
	.align	2
.L81:
	.word	buttons
	.word	player
	.word	.LANCHOR0
	.word	goThrough
	.word	oldButtons
	.word	hOff
	.word	vOff
	.word	checkCollisionLose
	.word	__aeabi_idivmod
	.word	-1024
	.word	lives
	.word	goToLose
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L93
	ldr	r1, .L93+4
	ldr	r3, [r2]
	ldr	r1, [r1]
	sub	r3, r3, r1
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	push	{r4, lr}
	ldr	r1, .L93+8
	ldr	ip, .L93+12
	ldr	lr, [r1]
	ldr	r0, [r2, #4]
	ldrb	r1, [r2, #68]	@ zero_extendqisi2
	sub	r0, r0, lr
	ldr	r4, [r2, #64]
	add	lr, ip, r1, lsl #3
	strh	r3, [lr, #2]	@ movhi
	ldr	r3, [r2, #28]
	lsl	r1, r1, #3
	and	r0, r0, #255
	cmp	r4, #0
	strh	r0, [ip, r1]	@ movhi
	lsleq	r3, r3, #5
	beq	.L85
	cmp	r3, #1
	moveq	r3, #152
	movne	r3, #120
.L85:
	ldr	lr, .L93+16
	ldr	r0, [r2, #36]
	ldr	r2, [lr]
	add	r3, r3, r0
	lsl	r3, r3, #18
	cmp	r2, #1
	lsr	r3, r3, #16
	beq	.L91
	add	r1, ip, r1
	and	r3, r3, #1020
	cmp	r2, #3
	strh	r3, [r1, #4]	@ movhi
	beq	.L92
	cmp	r2, #2
	moveq	r1, #14
	ldreq	r3, .L93+20
	ldreq	r2, .L93+24
	strheq	r1, [r3, #2]	@ movhi
	strheq	r2, [r3, #10]	@ movhi
	pop	{r4, lr}
	bx	lr
.L92:
	mov	r1, #170
	ldr	r3, .L93+20
	ldr	r2, .L93+28
	strh	r1, [r3, #2]	@ movhi
	strh	r2, [r3, #10]	@ movhi
	pop	{r4, lr}
	bx	lr
.L91:
	and	r3, r3, #1020
	orr	r3, r3, #4096
	add	r1, ip, r1
	strh	r3, [r1, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L94:
	.align	2
.L93:
	.word	player
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.word	lives
	.word	83886592
	.word	4305
	.word	6414
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	initializePet1
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializePet1, %function
initializePet1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #1
	push	{r4, r5, lr}
	mov	r1, #8
	mov	r5, #480
	mov	r4, #96
	mov	lr, #0
	mov	ip, #4
	mov	r0, #15
	ldr	r3, .L97
	strb	r2, [r3, #68]
	str	r5, [r3]
	str	r4, [r3, #4]
	str	lr, [r3, #36]
	str	ip, [r3, #40]
	str	r0, [r3, #24]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #32]
	pop	{r4, r5, lr}
	bx	lr
.L98:
	.align	2
.L97:
	.word	pet1
	.size	initializePet1, .-initializePet1
	.align	2
	.global	initializePet2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializePet2, %function
initializePet2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #1
	push	{r4, r5, lr}
	mov	r1, #8
	mov	r5, #480
	mov	r4, #96
	mov	lr, #0
	mov	ip, #4
	mov	r0, #15
	ldr	r3, .L101
	strb	r2, [r3, #68]
	str	r5, [r3]
	str	r4, [r3, #4]
	str	lr, [r3, #36]
	str	ip, [r3, #40]
	str	r0, [r3, #24]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #32]
	pop	{r4, r5, lr}
	bx	lr
.L102:
	.align	2
.L101:
	.word	pet2
	.size	initializePet2, .-initializePet2
	.align	2
	.global	initializePet3
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializePet3, %function
initializePet3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #1
	mov	lr, #44
	mov	r4, #0
	mov	r1, #8
	mov	ip, #4
	mov	r0, #15
	ldr	r3, .L105
	str	lr, [r3, #4]
	strb	r2, [r3, #68]
	ldr	lr, .L105+4
	str	r4, [r3, #36]
	str	lr, [r3]
	str	ip, [r3, #40]
	str	r0, [r3, #24]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #32]
	pop	{r4, lr}
	bx	lr
.L106:
	.align	2
.L105:
	.word	pet3
	.word	487
	.size	initializePet3, .-initializePet3
	.align	2
	.global	updatePet1
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePet1, %function
updatePet1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #1
	push	{r4, lr}
	ldr	r4, .L111
	ldr	r3, [r4, #32]
	ldr	r2, .L111+4
	cmp	r3, #0
	str	r1, [r2]
	streq	r3, [r4, #36]
	beq	.L107
	ldr	r3, [r4, #24]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #24]
	bne	.L107
	ldr	r0, [r4, #36]
	ldr	r3, .L111+8
	add	r0, r0, r1
	ldr	r1, [r4, #40]
	mov	lr, pc
	bx	r3
	mov	r3, #15
	str	r1, [r4, #36]
	str	r3, [r4, #24]
.L107:
	pop	{r4, lr}
	bx	lr
.L112:
	.align	2
.L111:
	.word	pet1
	.word	.LANCHOR0
	.word	__aeabi_idivmod
	.size	updatePet1, .-updatePet1
	.align	2
	.global	updatePet2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePet2, %function
updatePet2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #2
	push	{r4, lr}
	ldr	r4, .L117
	ldr	r3, [r4, #32]
	ldr	r2, .L117+4
	cmp	r3, #0
	str	r1, [r2]
	streq	r3, [r4, #36]
	beq	.L113
	ldr	r3, [r4, #24]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #24]
	bne	.L113
	ldr	r0, [r4, #36]
	ldr	r3, .L117+8
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #15
	str	r1, [r4, #36]
	str	r3, [r4, #24]
.L113:
	pop	{r4, lr}
	bx	lr
.L118:
	.align	2
.L117:
	.word	pet2
	.word	.LANCHOR0
	.word	__aeabi_idivmod
	.size	updatePet2, .-updatePet2
	.align	2
	.global	updatePet3
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePet3, %function
updatePet3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #3
	push	{r4, lr}
	ldr	r4, .L123
	ldr	r3, [r4, #32]
	ldr	r2, .L123+4
	cmp	r3, #0
	str	r1, [r2]
	streq	r3, [r4, #36]
	beq	.L119
	ldr	r3, [r4, #24]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #24]
	bne	.L119
	ldr	r0, [r4, #36]
	ldr	r3, .L123+8
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #15
	str	r1, [r4, #36]
	str	r3, [r4, #24]
.L119:
	pop	{r4, lr}
	bx	lr
.L124:
	.align	2
.L123:
	.word	pet3
	.word	.LANCHOR0
	.word	__aeabi_idivmod
	.size	updatePet3, .-updatePet3
	.align	2
	.global	drawPet
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPet, %function
drawPet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L132
	ldr	r2, [r3]
	ldr	r1, .L132+4
	ldr	r3, .L132+8
	cmp	r2, #1
	push	{r4, lr}
	ldrh	ip, [r1]
	ldrh	r0, [r3]
	beq	.L130
	cmp	r2, #2
	beq	.L131
	ldr	r1, .L132+12
	ldr	r2, [r1, #36]
	ldr	r3, [r1]
	add	lr, r2, #192
	sub	r3, r3, r0
	ldr	r2, .L132+16
	ldrb	r0, [r1, #68]	@ zero_extendqisi2
	ldr	r1, [r1, #4]
	ldr	r4, .L132+20
	lsl	r3, r3, #23
	sub	r1, r1, ip
	and	r2, r2, lr, lsl #1
	lsr	r3, r3, #23
	add	ip, r4, r0, lsl #3
	orr	r3, r3, #16384
	lsl	r0, r0, #3
	and	r1, r1, #255
	orr	r2, r2, #16384
	strh	r3, [ip, #2]	@ movhi
	strh	r1, [r4, r0]	@ movhi
	strh	r2, [ip, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L131:
	ldr	r1, .L132+24
	ldr	r2, [r1, #36]
	ldr	r3, [r1]
	add	lr, r2, #160
	sub	r3, r3, r0
	ldr	r2, .L132+16
	ldrb	r0, [r1, #68]	@ zero_extendqisi2
	ldr	r1, [r1, #4]
	ldr	r4, .L132+20
	lsl	r3, r3, #23
	sub	r1, r1, ip
	and	r2, r2, lr, lsl #1
	lsr	r3, r3, #23
	add	ip, r4, r0, lsl #3
	orr	r3, r3, #16384
	lsl	r0, r0, #3
	and	r1, r1, #255
	orr	r2, r2, #12288
	strh	r3, [ip, #2]	@ movhi
	strh	r1, [r4, r0]	@ movhi
	strh	r2, [ip, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L130:
	ldr	r1, .L132+28
	ldr	r2, [r1, #36]
	ldr	r3, [r1]
	add	lr, r2, #128
	sub	r3, r3, r0
	ldr	r2, .L132+16
	ldrb	r0, [r1, #68]	@ zero_extendqisi2
	ldr	r1, [r1, #4]
	ldr	r4, .L132+20
	lsl	r3, r3, #23
	sub	r1, r1, ip
	and	r2, r2, lr, lsl #1
	lsr	r3, r3, #23
	add	ip, r4, r0, lsl #3
	orr	r3, r3, #16384
	lsl	r0, r0, #3
	and	r1, r1, #255
	orr	r2, r2, #8192
	strh	r3, [ip, #2]	@ movhi
	strh	r1, [r4, r0]	@ movhi
	strh	r2, [ip, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L133:
	.align	2
.L132:
	.word	.LANCHOR0
	.word	vOff
	.word	hOff
	.word	pet3
	.word	1022
	.word	shadowOAM
	.word	pet2
	.word	pet1
	.size	drawPet, .-drawPet
	.align	2
	.global	winCondition
	.syntax unified
	.arm
	.fpu softvfp
	.type	winCondition, %function
winCondition:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r5, .L148
	ldr	r4, [r5]
	cmp	r4, #1
	sub	sp, sp, #132
	beq	.L146
	cmp	r4, #2
	beq	.L147
.L138:
	cmp	r4, #3
	beq	.L140
.L141:
	mov	r4, #0
.L134:
	mov	r0, r4
	add	sp, sp, #132
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L146:
	mov	r2, #72
	ldr	r1, .L148+4
	ldr	r3, .L148+8
	add	r0, sp, #56
	mov	lr, pc
	bx	r3
	mov	ip, sp
	ldr	r6, .L148+12
	add	lr, r6, #16
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	stm	ip, {r0, r1}
	ldr	r7, .L148+16
	ldm	r6, {r0, r1, r2, r3}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L136
	ldr	r4, [r5]
	cmp	r4, #2
	bne	.L138
.L147:
	mov	r2, #72
	ldr	r1, .L148+20
	ldr	r3, .L148+8
	add	r0, sp, #56
	mov	lr, pc
	bx	r3
	mov	ip, sp
	ldr	r4, .L148+12
	add	lr, r4, #16
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	stm	ip, {r0, r1}
	ldr	r6, .L148+16
	ldm	r4, {r0, r1, r2, r3}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L139
	ldr	r4, [r5]
	cmp	r4, #3
	bne	.L141
.L140:
	mov	r2, #72
	ldr	r1, .L148+24
	ldr	r3, .L148+8
	add	r0, sp, #56
	mov	lr, pc
	bx	r3
	mov	ip, sp
	ldr	r4, .L148+12
	add	lr, r4, #16
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	stm	ip, {r0, r1}
	ldr	r5, .L148+16
	ldm	r4, {r0, r1, r2, r3}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L141
	ldr	r3, .L148+28
	mov	lr, pc
	bx	r3
	mov	r4, #1
	b	.L134
.L136:
	ldr	r3, .L148+32
	mov	lr, pc
	bx	r3
	b	.L134
.L139:
	ldr	r3, .L148+36
	mov	lr, pc
	bx	r3
	mov	r4, #1
	b	.L134
.L149:
	.align	2
.L148:
	.word	.LANCHOR0
	.word	pet1
	.word	memcpy
	.word	player
	.word	checkCollisionPetSprite
	.word	pet2
	.word	pet3
	.word	goToWin
	.word	goToGame2
	.word	goToGame3
	.size	winCondition, .-winCondition
	.comm	pet3,72,4
	.comm	pet2,72,4
	.comm	pet1,72,4
	.comm	player,72,4
	.global	level
	.comm	vOff,4,4
	.comm	hOff,4,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	level, %object
	.size	level, 4
level:
	.word	1
	.ident	"GCC: (devkitARM release 53) 9.1.0"
