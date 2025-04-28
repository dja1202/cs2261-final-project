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
	mov	r1, #28
	mov	r5, #8
	mov	r4, #78
	mov	lr, #2
	ldr	r3, .L4
	str	ip, [r3, #40]
	str	r0, [r3, #24]
	ldr	ip, .L4+4
	ldr	r0, .L4+8
	strb	r2, [r3, #64]
	str	r5, [r3]
	str	r4, [r3, #4]
	str	lr, [r3, #60]
	str	r2, [r3, #36]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	r2, [r3, #48]
	str	r2, [r3, #52]
	str	r2, [r3, #56]
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
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r10, .L75
	ldr	fp, .L75+4
	ldrh	r2, [r10]
	ldr	r3, .L75+8
	strh	r2, [fp]	@ movhi
	ldr	r4, .L75+12
	ldrh	r1, [r3, #48]
	ldr	r7, [r4]
	lsr	r2, r1, #5
	eor	r2, r2, #1
	cmp	r7, #0
	movle	r2, #0
	andgt	r2, r2, #1
	mov	r0, #0
	ldr	ip, [r4, #16]
	ldr	r3, [r4, #4]
	ldr	r8, [r4, #20]
	sub	sp, sp, #140
	ldr	r6, .L75+16
	cmp	r2, r0
	add	r8, r3, r8
	add	r2, r7, ip
	str	r2, [sp, #124]
	sub	r9, r2, #1
	sub	r2, r8, #1
	str	r2, [sp, #128]
	strh	r1, [r10]	@ movhi
	str	r0, [r4, #32]
	ldr	r2, [r6]
	bne	.L65
	ldr	r5, .L75+20
.L7:
	ands	r1, r1, #16
	str	r1, [sp, #128]
	bne	.L10
	ldr	r1, [r4]
	ldr	r0, [r4, #16]
	add	r1, r1, r0
	cmp	r1, #512
	blt	.L71
.L10:
	mov	r1, r8
	mov	r0, r7
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L13
.L16:
	mov	r3, #0
	mov	r2, #1
	ldrh	r1, [fp]
	tst	r1, #1
	str	r2, [r4, #52]
	str	r3, [r4, #48]
	str	r3, [r4, #56]
	beq	.L18
	ldrh	r3, [r10]
	tst	r3, #1
	bne	.L18
.L46:
	ldr	r3, [r4, #56]
	ldr	r2, [r4, #60]
	cmp	r3, r2
	blt	.L72
	ldr	r3, [r4, #52]
	cmp	r3, #0
	bne	.L18
.L47:
	ldr	r3, [r4, #48]
	add	r3, r3, #100
	cmp	r3, #2560
	movgt	r3, #2560
	movgt	r8, #10
	strgt	r3, [r4, #48]
	ble	.L22
.L24:
	ldr	r3, [r4, #4]
	ldr	r1, [r4, #20]
	add	r8, r8, r3
	add	r8, r8, r1
	sub	r8, r8, #1
	mov	r1, r8
	mov	r0, r7
	ldr	r2, [r6]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L25
.L27:
	ldr	r3, [r4, #4]
	b	.L26
.L29:
	ldr	r1, [r4, #4]
	ldr	r3, [r4, #20]
	mov	r0, r9
	ldr	r2, [r6]
	add	r1, r1, r3
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L31
	ldr	r3, [r4, #4]
	add	r3, r3, #1
	str	r3, [r4, #4]
.L26:
	ldr	r1, [r4, #20]
	mov	r0, r7
	ldr	r2, [r6]
	add	r1, r3, r1
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L29
.L31:
	mov	r3, #0
	mov	r2, #1
	str	r3, [r4, #48]
	str	r3, [r4, #56]
	str	r2, [r4, #52]
.L18:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	streq	r3, [r4, #36]
	beq	.L33
	ldr	r3, [r4, #24]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #24]
	bgt	.L33
	ldr	r0, [r4, #36]
	ldr	r3, .L75+24
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #15
	str	r1, [r4, #36]
	str	r3, [r4, #24]
.L33:
	ldr	r1, [r4]
	cmp	r1, #0
	movlt	r8, #0
	add	r0, r4, #16
	ldm	r0, {r0, ip}
	ldr	r7, [r4, #4]
	rsb	r3, r0, #240
	rsb	lr, ip, #160
	add	r3, r3, r3, lsr #31
	sub	r3, r1, r3, asr #1
	strlt	r8, [r4]
	movlt	r1, r0
	addge	r1, r1, r0
	add	r2, lr, lr, lsr #31
	cmp	r7, #0
	sub	r2, r7, r2, asr #1
	movlt	r7, #0
	addge	ip, ip, r7
	strlt	r7, [r4, #4]
	cmp	r1, #512
	rsbgt	r1, r0, #512
	ldr	r5, .L75+28
	ldr	r6, .L75+32
	strgt	r1, [r4]
	cmp	ip, #160
	strgt	lr, [r4, #4]
	cmp	r3, #0
	str	r3, [r5]
	str	r2, [r6]
	blt	.L73
	cmp	r2, #0
	blt	.L74
	cmp	r3, #272
	movgt	r3, #272
	strgt	r3, [r5]
.L41:
	cmp	r2, #0
	ble	.L44
	mov	r3, #0
.L70:
	str	r3, [r6]
.L44:
	mov	r2, #68
	ldr	r1, .L75+36
	ldr	r3, .L75+40
	add	r0, sp, #52
	mov	lr, pc
	bx	r3
	mov	ip, sp
	ldr	lr, .L75+44
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	lr, [lr]
	ldm	r4, {r0, r1, r2, r3}
	ldr	r7, .L75+48
	str	lr, [ip]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L6
	ldr	r2, [r4, #20]
	ldr	r3, [r4, #4]
	ldr	ip, [r6]
	ldr	r1, [r4, #16]
	add	r2, r2, r2, lsr #31
	add	r3, r3, r2, asr #1
	ldr	r2, [r4]
	add	r3, r3, ip
	ldr	r0, [r5]
	add	r1, r1, r1, lsr #31
	cmp	r3, #0
	add	r2, r2, r1, asr #1
	add	r1, r3, #7
	add	r2, r2, r0
	movlt	r3, r1
	add	r1, r2, #7
	cmp	r2, #0
	movlt	r2, r1
	mov	r1, #12
	asr	r3, r3, #3
	lsl	r3, r3, #5
	add	r3, r3, r2, asr #3
	ldr	r2, .L75+52
	lsl	r3, r3, #1
	strh	r1, [r2, r3]	@ movhi
.L6:
	add	sp, sp, #140
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L74:
	mov	r2, #0
	cmp	r3, #272
	str	r2, [r6]
	movgt	r3, #272
	strgt	r3, [r5]
	b	.L44
.L73:
	mov	r3, #0
	cmp	r2, r3
	str	r3, [r5]
	bge	.L41
	b	.L70
.L13:
	mov	r1, r8
	mov	r0, r9
	ldr	r2, [r6]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L16
	mov	r3, #0
	ldrh	r2, [fp]
	tst	r2, #1
	str	r3, [r4, #52]
	beq	.L47
	ldrh	r3, [r10]
	tst	r3, #1
	bne	.L47
	b	.L46
.L72:
	mov	r2, #0
	add	r3, r3, #1
	str	r3, [r4, #56]
	str	r2, [r4, #52]
	ldr	r3, .L75+56
.L22:
	str	r3, [r4, #48]
	asr	r8, r3, #8
	b	.L24
.L65:
	sub	r1, r7, #1
	mov	r0, r1
	str	r1, [sp, #132]
	ldr	r5, .L75+20
	mov	r1, r3
	str	r3, [sp, #128]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	ldr	r3, [sp, #128]
	bne	.L8
.L68:
	ldrh	r1, [r10]
	ldr	r2, [r6]
	b	.L7
.L71:
	mov	r1, r3
	ldr	r0, [sp, #124]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L11
.L69:
	ldr	r2, [r6]
	b	.L10
.L8:
	ldr	r2, [r6]
	sub	r1, r8, #1
	ldr	r0, [sp, #132]
	str	r3, [sp, #128]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	movne	r1, #1
	ldrne	r2, [r4]
	subne	r2, r2, #1
	ldr	r3, [sp, #128]
	strne	r2, [r4]
	strne	r1, [r4, #32]
	strne	r1, [r4, #28]
	b	.L68
.L25:
	mov	r1, r8
	mov	r0, r9
	ldr	r2, [r6]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L27
	ldr	r3, [r4, #4]
	ldr	r2, [r4, #48]
	add	r3, r3, r2, asr #8
	str	r3, [r4, #4]
	b	.L18
.L11:
	ldr	r2, [r6]
	sub	r1, r8, #1
	ldr	r0, [sp, #124]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	movne	r2, #1
	ldrne	r3, [r4]
	ldrne	r1, [sp, #128]
	addne	r3, r3, r2
	strne	r1, [r4, #28]
	strne	r3, [r4]
	strne	r2, [r4, #32]
	b	.L69
.L76:
	.align	2
.L75:
	.word	buttons
	.word	oldButtons
	.word	67109120
	.word	player
	.word	.LANCHOR0
	.word	goThrough
	.word	__aeabi_idivmod
	.word	hOff
	.word	vOff
	.word	pet1
	.word	memcpy
	.word	player+16
	.word	checkCollisionPetSprite
	.word	100724736
	.word	-924
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
	ldr	r0, .L83
	ldr	r2, .L83+4
	ldr	r3, [r0]
	ldr	r2, [r2]
	sub	r3, r3, r2
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	push	{r4, r5, lr}
	ldr	r1, .L83+8
	ldr	r2, .L83+12
	ldr	lr, [r1]
	ldr	r2, [r2]
	ldr	r1, [r0, #4]
	ldr	r5, [r0, #28]
	sub	r1, r1, r2
	ldr	r2, [r0, #36]
	ldrb	ip, [r0, #64]	@ zero_extendqisi2
	ldr	r4, .L83+16
	add	r2, r2, r5, lsl #5
	add	r0, r4, ip, lsl #3
	lsl	r2, r2, #18
	strh	r3, [r0, #2]	@ movhi
	lsr	r3, r2, #16
	cmp	lr, #1
	and	r3, r3, #1020
	lsl	ip, ip, #3
	and	r1, r1, #255
	orreq	r3, r3, #4096
	strh	r1, [r4, ip]	@ movhi
	strheq	r3, [r0, #4]	@ movhi
	beq	.L77
	cmp	lr, #3
	strh	r3, [r0, #4]	@ movhi
	beq	.L82
	cmp	lr, #2
	moveq	r1, #14
	ldreq	r3, .L83+20
	ldreq	r2, .L83+24
	strheq	r1, [r3, #2]	@ movhi
	strheq	r2, [r3, #10]	@ movhi
.L77:
	pop	{r4, r5, lr}
	bx	lr
.L82:
	mov	r1, #170
	ldr	r3, .L83+20
	ldr	r2, .L83+28
	strh	r1, [r3, #2]	@ movhi
	strh	r2, [r3, #10]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L84:
	.align	2
.L83:
	.word	player
	.word	hOff
	.word	lives
	.word	vOff
	.word	shadowOAM
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
	ldr	r3, .L87
	strb	r2, [r3, #64]
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
.L88:
	.align	2
.L87:
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
	ldr	r3, .L91
	strb	r2, [r3, #64]
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
.L92:
	.align	2
.L91:
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
	mov	r2, #1
	push	{r4, r5, lr}
	mov	r1, #8
	mov	r5, #480
	mov	r4, #96
	mov	lr, #0
	mov	ip, #4
	mov	r0, #15
	ldr	r3, .L95
	strb	r2, [r3, #64]
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
.L96:
	.align	2
.L95:
	.word	pet3
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
	ldr	r4, .L101
	ldr	r3, [r4, #32]
	ldr	r2, .L101+4
	cmp	r3, #0
	str	r1, [r2]
	streq	r3, [r4, #36]
	beq	.L97
	ldr	r3, [r4, #24]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #24]
	bne	.L97
	ldr	r0, [r4, #36]
	ldr	r3, .L101+8
	add	r0, r0, r1
	ldr	r1, [r4, #40]
	mov	lr, pc
	bx	r3
	mov	r3, #15
	str	r1, [r4, #36]
	str	r3, [r4, #24]
.L97:
	pop	{r4, lr}
	bx	lr
.L102:
	.align	2
.L101:
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
	ldr	r4, .L107
	ldr	r3, [r4, #32]
	ldr	r2, .L107+4
	cmp	r3, #0
	str	r1, [r2]
	streq	r3, [r4, #36]
	beq	.L103
	ldr	r3, [r4, #24]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #24]
	bne	.L103
	ldr	r0, [r4, #36]
	ldr	r3, .L107+8
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #15
	str	r1, [r4, #36]
	str	r3, [r4, #24]
.L103:
	pop	{r4, lr}
	bx	lr
.L108:
	.align	2
.L107:
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
	ldr	r4, .L113
	ldr	r3, [r4, #32]
	ldr	r2, .L113+4
	cmp	r3, #0
	str	r1, [r2]
	streq	r3, [r4, #36]
	beq	.L109
	ldr	r3, [r4, #24]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #24]
	bne	.L109
	ldr	r0, [r4, #36]
	ldr	r3, .L113+8
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #15
	str	r1, [r4, #36]
	str	r3, [r4, #24]
.L109:
	pop	{r4, lr}
	bx	lr
.L114:
	.align	2
.L113:
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
	ldr	r3, .L122
	ldr	r2, [r3]
	ldr	r1, .L122+4
	ldr	r3, .L122+8
	cmp	r2, #1
	push	{r4, lr}
	ldrh	ip, [r1]
	ldrh	r0, [r3]
	beq	.L120
	cmp	r2, #2
	beq	.L121
	ldr	r1, .L122+12
	ldr	r2, [r1, #36]
	ldr	r3, [r1]
	add	lr, r2, #192
	sub	r3, r3, r0
	ldr	r2, .L122+16
	ldrb	r0, [r1, #64]	@ zero_extendqisi2
	ldr	r1, [r1, #4]
	ldr	r4, .L122+20
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
.L121:
	ldr	r1, .L122+24
	ldr	r2, [r1, #36]
	ldr	r3, [r1]
	add	lr, r2, #160
	sub	r3, r3, r0
	ldr	r2, .L122+16
	ldrb	r0, [r1, #64]	@ zero_extendqisi2
	ldr	r1, [r1, #4]
	ldr	r4, .L122+20
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
.L120:
	ldr	r1, .L122+28
	ldr	r2, [r1, #36]
	ldr	r3, [r1]
	add	lr, r2, #128
	sub	r3, r3, r0
	ldr	r2, .L122+16
	ldrb	r0, [r1, #64]	@ zero_extendqisi2
	ldr	r1, [r1, #4]
	ldr	r4, .L122+20
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
.L123:
	.align	2
.L122:
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
	push	{r4, r5, r6, lr}
	ldr	r5, .L138
	ldr	r4, [r5]
	cmp	r4, #1
	sub	sp, sp, #120
	beq	.L136
	cmp	r4, #2
	beq	.L137
.L128:
	cmp	r4, #3
	beq	.L130
.L131:
	mov	r4, #0
.L124:
	mov	r0, r4
	add	sp, sp, #120
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L136:
	mov	r2, #68
	ldr	r1, .L138+4
	ldr	r3, .L138+8
	add	r0, sp, #52
	mov	lr, pc
	bx	r3
	mov	ip, sp
	ldr	r6, .L138+12
	add	lr, r6, #16
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	lr, [lr]
	ldm	r6, {r0, r1, r2, r3}
	str	lr, [ip]
	ldr	r6, .L138+16
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L126
	ldr	r4, [r5]
	cmp	r4, #2
	bne	.L128
.L137:
	mov	r2, #68
	ldr	r1, .L138+20
	ldr	r3, .L138+8
	add	r0, sp, #52
	mov	lr, pc
	bx	r3
	mov	ip, sp
	ldr	r4, .L138+12
	add	lr, r4, #16
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	lr, [lr]
	ldm	r4, {r0, r1, r2, r3}
	str	lr, [ip]
	ldr	r4, .L138+16
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	bne	.L129
	ldr	r4, [r5]
	cmp	r4, #3
	bne	.L131
.L130:
	mov	r2, #68
	ldr	r1, .L138+24
	ldr	r3, .L138+8
	add	r0, sp, #52
	mov	lr, pc
	bx	r3
	mov	ip, sp
	ldr	r4, .L138+12
	add	lr, r4, #16
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	lr, [lr]
	ldm	r4, {r0, r1, r2, r3}
	str	lr, [ip]
	ldr	r4, .L138+16
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L131
	ldr	r3, .L138+28
	mov	lr, pc
	bx	r3
	mov	r4, #1
	b	.L124
.L126:
	ldr	r3, .L138+32
	mov	lr, pc
	bx	r3
	b	.L124
.L129:
	ldr	r3, .L138+36
	mov	lr, pc
	bx	r3
	mov	r4, #1
	b	.L124
.L139:
	.align	2
.L138:
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
	.align	2
	.global	loseCondition
	.syntax unified
	.arm
	.fpu softvfp
	.type	loseCondition, %function
loseCondition:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L148
	push	{r4, lr}
	ldr	r2, .L148+4
	ldm	r3, {r0, r1}
	mov	lr, pc
	bx	r2
	cmp	r0, #0
	beq	.L141
	ldr	r2, .L148+8
	ldr	r3, [r2]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r2]
	ble	.L147
	bl	initializePlayer
.L141:
	pop	{r4, lr}
	bx	lr
.L147:
	ldr	r3, .L148+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L149:
	.align	2
.L148:
	.word	player
	.word	checkCollisionLose
	.word	lives
	.word	goToLose
	.size	loseCondition, .-loseCondition
	.comm	pet3,68,4
	.comm	pet2,68,4
	.comm	pet1,68,4
	.comm	player,68,4
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
