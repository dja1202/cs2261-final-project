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
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	fp, .L75
	ldr	r4, .L75+4
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
	ldr	r6, [r4, #16]
	ldr	r8, .L75+8
	add	r5, r3, r5
	sub	sp, sp, #20
	cmp	r2, ip
	add	r6, r0, r6
	sub	r2, r5, #1
	str	r2, [sp, #4]
	str	ip, [r4, #32]
	str	ip, [r4, #64]
	ldr	r2, [r8]
	sub	r10, r6, #11
	add	r9, r0, #11
	bne	.L61
	ldr	r7, .L75+12
.L7:
	ands	r1, r1, #16
	str	r1, [sp, #4]
	bne	.L10
	ldr	r1, [r4]
	ldr	r0, [r4, #16]
	add	r1, r1, r0
	cmp	r1, #512
	blt	.L68
.L10:
	mov	r1, r5
	mov	r0, r9
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
	ldr	r3, .L75+16
	ldrh	r3, [r3]
	tst	r3, #1
	ldrh	r2, [fp]
	beq	.L16
	ands	r1, r2, #1
	beq	.L69
.L16:
	and	r3, r2, #768
	cmp	r3, #0
	moveq	r3, #1
	movne	r3, #0
	ldr	fp, [r4, #4]
	str	r3, [r4, #64]
	bne	.L17
	tst	r2, #64
	subeq	fp, fp, #1
	streq	fp, [r4, #4]
	tst	r2, #128
	mov	r2, #0
	addeq	fp, fp, #1
	streq	fp, [r4, #4]
	str	r2, [r4, #52]
	str	r2, [r4, #48]
.L20:
	ldr	r2, [r4, #24]
	sub	r2, r2, #1
	cmp	r2, #0
	str	r2, [r4, #24]
	ble	.L70
.L33:
	ldr	r0, [r4]
	cmp	r0, #0
	movlt	r8, #0
	add	ip, r4, #16
	ldm	ip, {ip, lr}
	rsb	r2, ip, #240
	add	r2, r2, r2, lsr #31
	sub	r2, r0, r2, asr #1
	strlt	r8, [r4]
	movlt	r0, ip
	addge	r0, r0, ip
	cmp	fp, #0
	movlt	r3, #0
	rsb	r5, lr, #160
	strlt	r3, [r4, #4]
	addge	lr, lr, fp
	cmp	r0, #512
	rsbgt	r3, ip, #512
	ldr	r7, .L75+20
	ldr	r6, .L75+24
	strgt	r3, [r4]
	add	r1, r5, r5, lsr #31
	cmp	lr, #160
	strgt	r5, [r4, #4]
	sub	r1, fp, r1, asr #1
	cmp	r2, #0
	str	r2, [r7]
	str	r1, [r6]
	blt	.L71
	cmp	r1, #0
	blt	.L72
	cmp	r2, #272
	movgt	r3, #272
	strgt	r3, [r7]
.L41:
	cmp	r1, #0
	ble	.L6
	mov	r3, #0
.L67:
	str	r3, [r6]
.L6:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L17:
	ldr	r2, [r4, #48]
	add	r2, r2, #100
	cmp	r2, #2560
	str	r2, [r4, #48]
	bgt	.L73
	asr	r1, r2, #8
	eor	r3, r1, r1, asr #31
	sub	r3, r3, r1, asr #31
	cmp	r2, #0
	str	r3, [sp, #8]
	movgt	r3, #1
	mvnle	r3, #0
	cmp	r1, #0
	str	r3, [sp, #4]
	beq	.L24
.L22:
	ldr	r3, [sp, #4]
	mov	r6, #0
	add	r5, r3, fp
	b	.L31
.L25:
	mov	r1, fp
	mov	r0, r10
	ldr	r2, [r8]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L28
	ldr	r3, [sp, #8]
	cmp	r6, r3
	ldr	r3, [sp, #4]
	str	r5, [r4, #4]
	add	r5, r5, r3
	beq	.L74
.L31:
	ldr	r1, [r4, #20]
	add	r1, r5, r1
	sub	fp, r1, #1
	mov	r1, fp
	mov	r0, r9
	ldr	r2, [r8]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	str	r5, [sp, #12]
	add	r6, r6, #1
	bne	.L25
.L28:
	mov	r3, #0
	ldr	r2, [sp, #4]
	cmp	r2, #1
	str	r3, [r4, #48]
	ldrne	fp, [r4, #4]
	ldreq	r2, [sp, #4]
	streq	r3, [r4, #56]
	streq	r2, [r4, #52]
	ldreq	fp, [r4, #4]
.L30:
	ldr	r1, [r4, #32]
	ldr	r2, [r4, #64]
	orrs	r3, r1, r2
	bne	.L20
.L32:
	mov	r2, #0
	str	r2, [r4, #36]
	b	.L33
.L70:
	ldr	r0, [r4, #36]
	ldr	r2, .L75+28
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r2
	mov	r2, #15
	str	r1, [r4, #36]
	str	r2, [r4, #24]
	b	.L33
.L69:
	ldr	r3, [r4, #56]
	ldr	r0, [r4, #60]
	cmp	r3, r0
	ldrlt	r0, .L75+32
	addlt	r3, r3, #1
	strlt	r3, [r4, #56]
	strlt	r1, [r4, #52]
	strlt	r0, [r4, #48]
	b	.L16
.L73:
	mov	r3, #10
	mov	r2, #2560
	str	r3, [sp, #8]
	mov	r3, #1
	str	r2, [r4, #48]
	str	r3, [sp, #4]
	b	.L22
.L72:
	mov	r3, #0
	cmp	r2, #272
	str	r3, [r6]
	ble	.L6
	mov	r3, #272
	str	r3, [r7]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L71:
	mov	r3, #0
	cmp	r1, r3
	str	r3, [r7]
	bge	.L41
	b	.L67
.L13:
	mov	r1, r5
	mov	r0, r10
	ldr	r2, [r8]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L15
	mov	r3, #0
	str	r3, [r4, #52]
	b	.L14
.L61:
	add	r1, r0, #10
	mov	r0, r1
	str	r1, [sp, #8]
	ldr	r7, .L75+12
	mov	r1, r3
	str	r3, [sp, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	ldr	r3, [sp, #4]
	bne	.L8
.L65:
	ldrh	r1, [fp]
	ldr	r2, [r8]
	b	.L7
.L68:
	sub	r6, r6, #10
	mov	r1, r3
	mov	r0, r6
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L11
.L66:
	ldr	r2, [r8]
	b	.L10
.L8:
	ldr	r2, [r8]
	sub	r1, r5, #1
	ldr	r0, [sp, #8]
	str	r3, [sp, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	movne	r1, #1
	ldrne	r2, [r4]
	subne	r2, r2, #1
	ldr	r3, [sp, #4]
	strne	r2, [r4]
	strne	r1, [r4, #32]
	strne	r1, [r4, #28]
	b	.L65
.L74:
	ldr	fp, [sp, #12]
	b	.L30
.L11:
	ldr	r2, [r8]
	sub	r1, r5, #1
	mov	r0, r6
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	movne	r2, #1
	ldrne	r3, [r4]
	ldrne	r1, [sp, #4]
	addne	r3, r3, r2
	strne	r1, [r4, #28]
	strne	r3, [r4]
	strne	r2, [r4, #32]
	b	.L66
.L24:
	ldr	r2, [r4, #32]
	cmp	r2, #0
	bne	.L20
	b	.L32
.L76:
	.align	2
.L75:
	.word	buttons
	.word	player
	.word	.LANCHOR0
	.word	goThrough
	.word	oldButtons
	.word	hOff
	.word	vOff
	.word	__aeabi_idivmod
	.word	-1024
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
	ldr	r2, .L87
	ldr	r1, .L87+4
	ldr	r3, [r2]
	ldr	r1, [r1]
	sub	r3, r3, r1
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	push	{r4, lr}
	ldr	r1, .L87+8
	ldr	ip, .L87+12
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
	beq	.L79
	cmp	r3, #1
	moveq	r3, #152
	movne	r3, #120
.L79:
	ldr	lr, .L87+16
	ldr	r0, [r2, #36]
	ldr	r2, [lr]
	add	r3, r3, r0
	lsl	r3, r3, #18
	cmp	r2, #1
	lsr	r3, r3, #16
	beq	.L85
	add	r1, ip, r1
	and	r3, r3, #1020
	cmp	r2, #3
	strh	r3, [r1, #4]	@ movhi
	beq	.L86
	cmp	r2, #2
	moveq	r1, #14
	ldreq	r3, .L87+20
	ldreq	r2, .L87+24
	strheq	r1, [r3, #2]	@ movhi
	strheq	r2, [r3, #10]	@ movhi
	pop	{r4, lr}
	bx	lr
.L86:
	mov	r1, #170
	ldr	r3, .L87+20
	ldr	r2, .L87+28
	strh	r1, [r3, #2]	@ movhi
	strh	r2, [r3, #10]	@ movhi
	pop	{r4, lr}
	bx	lr
.L85:
	and	r3, r3, #1020
	orr	r3, r3, #4096
	add	r1, ip, r1
	strh	r3, [r1, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L88:
	.align	2
.L87:
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
	ldr	r3, .L91
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
.L92:
	.align	2
.L91:
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
	ldr	r3, .L95
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
.L96:
	.align	2
.L95:
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
	ldr	r3, .L99
	str	lr, [r3, #4]
	strb	r2, [r3, #68]
	ldr	lr, .L99+4
	str	r4, [r3, #36]
	str	lr, [r3]
	str	ip, [r3, #40]
	str	r0, [r3, #24]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #32]
	pop	{r4, lr}
	bx	lr
.L100:
	.align	2
.L99:
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
	ldr	r4, .L105
	ldr	r3, [r4, #32]
	ldr	r2, .L105+4
	cmp	r3, #0
	str	r1, [r2]
	streq	r3, [r4, #36]
	beq	.L101
	ldr	r3, [r4, #24]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #24]
	bne	.L101
	ldr	r0, [r4, #36]
	ldr	r3, .L105+8
	add	r0, r0, r1
	ldr	r1, [r4, #40]
	mov	lr, pc
	bx	r3
	mov	r3, #15
	str	r1, [r4, #36]
	str	r3, [r4, #24]
.L101:
	pop	{r4, lr}
	bx	lr
.L106:
	.align	2
.L105:
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
	ldr	r1, [r4, #40]
	add	r0, r0, #1
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
	ldr	r3, .L126
	ldr	r2, [r3]
	ldr	r1, .L126+4
	ldr	r3, .L126+8
	cmp	r2, #1
	push	{r4, lr}
	ldrh	ip, [r1]
	ldrh	r0, [r3]
	beq	.L124
	cmp	r2, #2
	beq	.L125
	ldr	r1, .L126+12
	ldr	r2, [r1, #36]
	ldr	r3, [r1]
	add	lr, r2, #192
	sub	r3, r3, r0
	ldr	r2, .L126+16
	ldrb	r0, [r1, #68]	@ zero_extendqisi2
	ldr	r1, [r1, #4]
	ldr	r4, .L126+20
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
.L125:
	ldr	r1, .L126+24
	ldr	r2, [r1, #36]
	ldr	r3, [r1]
	add	lr, r2, #160
	sub	r3, r3, r0
	ldr	r2, .L126+16
	ldrb	r0, [r1, #68]	@ zero_extendqisi2
	ldr	r1, [r1, #4]
	ldr	r4, .L126+20
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
.L124:
	ldr	r1, .L126+28
	ldr	r2, [r1, #36]
	ldr	r3, [r1]
	add	lr, r2, #128
	sub	r3, r3, r0
	ldr	r2, .L126+16
	ldrb	r0, [r1, #68]	@ zero_extendqisi2
	ldr	r1, [r1, #4]
	ldr	r4, .L126+20
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
.L127:
	.align	2
.L126:
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
	ldr	r5, .L142
	ldr	r4, [r5]
	cmp	r4, #1
	sub	sp, sp, #132
	beq	.L140
	cmp	r4, #2
	beq	.L141
.L132:
	cmp	r4, #3
	beq	.L134
.L135:
	mov	r4, #0
.L128:
	mov	r0, r4
	add	sp, sp, #132
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L140:
	mov	r2, #72
	ldr	r1, .L142+4
	ldr	r3, .L142+8
	add	r0, sp, #56
	mov	lr, pc
	bx	r3
	mov	ip, sp
	ldr	r6, .L142+12
	add	lr, r6, #16
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	stm	ip, {r0, r1}
	ldr	r7, .L142+16
	ldm	r6, {r0, r1, r2, r3}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L130
	ldr	r4, [r5]
	cmp	r4, #2
	bne	.L132
.L141:
	mov	r2, #72
	ldr	r1, .L142+20
	ldr	r3, .L142+8
	add	r0, sp, #56
	mov	lr, pc
	bx	r3
	mov	ip, sp
	ldr	r4, .L142+12
	add	lr, r4, #16
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	stm	ip, {r0, r1}
	ldr	r6, .L142+16
	ldm	r4, {r0, r1, r2, r3}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L133
	ldr	r4, [r5]
	cmp	r4, #3
	bne	.L135
.L134:
	mov	r2, #72
	ldr	r1, .L142+24
	ldr	r3, .L142+8
	add	r0, sp, #56
	mov	lr, pc
	bx	r3
	mov	ip, sp
	ldr	r4, .L142+12
	add	lr, r4, #16
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	stm	ip, {r0, r1}
	ldr	r5, .L142+16
	ldm	r4, {r0, r1, r2, r3}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L135
	ldr	r3, .L142+28
	mov	lr, pc
	bx	r3
	mov	r4, #1
	b	.L128
.L130:
	ldr	r3, .L142+32
	mov	lr, pc
	bx	r3
	b	.L128
.L133:
	ldr	r3, .L142+36
	mov	lr, pc
	bx	r3
	mov	r4, #1
	b	.L128
.L143:
	.align	2
.L142:
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
	ldr	r3, .L152
	push	{r4, lr}
	ldr	r2, .L152+4
	ldm	r3, {r0, r1}
	mov	lr, pc
	bx	r2
	cmp	r0, #0
	beq	.L145
	ldr	r2, .L152+8
	ldr	r3, [r2]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r2]
	ble	.L151
	bl	initializePlayer
.L145:
	pop	{r4, lr}
	bx	lr
.L151:
	ldr	r3, .L152+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L153:
	.align	2
.L152:
	.word	player
	.word	checkCollisionLose
	.word	lives
	.word	goToLose
	.size	loseCondition, .-loseCondition
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
