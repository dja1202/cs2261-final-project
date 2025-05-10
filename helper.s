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
	.file	"helper.c"
	.text
	.align	2
	.global	colorAt
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	colorAt, %function
colorAt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L9
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L7
	cmp	r3, #2
	beq	.L8
	cmp	r3, #3
	ldreq	r3, .L9+4
	addeq	r0, r0, r1, lsl #9
	ldrbeq	r0, [r0, r3]	@ zero_extendqisi2
	movne	r0, #0
	bx	lr
.L7:
	ldr	r3, .L9+8
	add	r0, r0, r1, lsl #9
	ldrb	r0, [r0, r3]	@ zero_extendqisi2
	bx	lr
.L8:
	ldr	r3, .L9+12
	add	r0, r0, r1, lsl #9
	ldrb	r0, [r0, r3]	@ zero_extendqisi2
	bx	lr
.L10:
	.align	2
.L9:
	.word	level
	.word	collision3Bitmap
	.word	collision1Bitmap
	.word	collision2Bitmap
	.size	colorAt, .-colorAt
	.align	2
	.global	goThrough
	.syntax unified
	.arm
	.fpu softvfp
	.type	goThrough, %function
goThrough:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #255
	cmpls	r0, #512
	bcc	.L18
	mov	r0, #0
	bx	lr
.L18:
	push	{r4, lr}
	bl	colorAt
	subs	r0, r0, #0
	movne	r0, #1
	pop	{r4, lr}
	bx	lr
	.size	goThrough, .-goThrough
	.align	2
	.global	getTile
	.syntax unified
	.arm
	.fpu softvfp
	.type	getTile, %function
getTile:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r3, r0, #7
	cmp	r0, #0
	movlt	r0, r3
	ldr	r3, .L21
	add	r1, r1, #7
	cmp	r1, r3
	cmpls	r0, #255
	ldrhi	r0, .L21+4
	bx	lr
.L22:
	.align	2
.L21:
	.word	262
	.word	65535
	.size	getTile, .-getTile
	.align	2
	.global	checkCollisionLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkCollisionLose, %function
checkCollisionLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	bl	colorAt
	add	r6, r4, #7
	mov	r5, r0
	mov	r0, r6
	bl	colorAt
	mov	r3, r0
	add	r1, r1, #7
	mov	r0, r4
	mov	r4, r3
	bl	colorAt
	mov	r2, r0
	mov	r0, r6
	bl	colorAt
	cmp	r4, #2
	cmpne	r5, #2
	moveq	r0, #1
	beq	.L23
	cmp	r0, #2
	cmpne	r2, #2
	moveq	r0, #1
	movne	r0, #0
.L23:
	pop	{r4, r5, r6, lr}
	bx	lr
	.size	checkCollisionLose, .-checkCollisionLose
	.align	2
	.global	checkCollisionPetSprite
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkCollisionPetSprite, %function
checkCollisionPetSprite:
	@ Function supports interworking.
	@ args = 144, pretend = 16, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	sub	ip, sp, #4
	stmib	ip, {r0, r1, r2, r3}
	ldr	r1, [sp, #72]
	ldr	r3, [sp, #88]
	ldr	r2, [sp]
	add	r3, r1, r3
	cmp	r3, r2
	ble	.L31
	ldr	r3, [sp, #16]
	add	r2, r2, r3
	cmp	r2, r1
	bgt	.L33
.L31:
	mov	r0, #0
	add	sp, sp, #16
	bx	lr
.L33:
	ldr	r1, [sp, #76]
	ldr	r2, [sp, #92]
	ldr	r3, [sp, #4]
	add	r2, r1, r2
	cmp	r2, r3
	ble	.L31
	ldr	r0, [sp, #20]
	add	r0, r3, r0
	cmp	r0, r1
	movle	r0, #0
	movgt	r0, #1
	add	sp, sp, #16
	bx	lr
	.size	checkCollisionPetSprite, .-checkCollisionPetSprite
	.align	2
	.global	updateGame1
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame1, %function
updateGame1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L36
	mov	lr, pc
	bx	r3
	ldr	r3, .L36+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L36+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L37:
	.align	2
.L36:
	.word	updatePlayer
	.word	updatePet1
	.word	winCondition
	.size	updateGame1, .-updateGame1
	.align	2
	.global	drawGame1
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame1, %function
drawGame1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L40
	mov	lr, pc
	bx	r3
	ldr	r3, .L40+4
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldr	r2, .L40+8
	ldrh	r1, [r2]
	ldr	r2, .L40+12
	ldrh	r2, [r2]
	strh	r1, [r3, #20]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #22]	@ movhi
	bx	lr
.L41:
	.align	2
.L40:
	.word	drawPlayer
	.word	drawPet
	.word	hOff
	.word	vOff
	.size	drawGame1, .-drawGame1
	.align	2
	.global	updateGame2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame2, %function
updateGame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L44
	mov	lr, pc
	bx	r3
	ldr	r3, .L44+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L44+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L45:
	.align	2
.L44:
	.word	updatePlayer
	.word	updatePet2
	.word	winCondition
	.size	updateGame2, .-updateGame2
	.align	2
	.global	drawGame2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame2, %function
drawGame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L48
	mov	lr, pc
	bx	r3
	ldr	r3, .L48+4
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldr	r2, .L48+8
	ldrh	r2, [r2]
	pop	{r4, lr}
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L49:
	.align	2
.L48:
	.word	drawPlayer
	.word	drawPet
	.word	hOff
	.size	drawGame2, .-drawGame2
	.align	2
	.global	updateGame3
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame3, %function
updateGame3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L52
	mov	lr, pc
	bx	r3
	ldr	r3, .L52+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L52+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L53:
	.align	2
.L52:
	.word	updatePlayer
	.word	updatePet3
	.word	winCondition
	.size	updateGame3, .-updateGame3
	.align	2
	.global	drawGame3
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame3, %function
drawGame3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	drawGame2
	.size	drawGame3, .-drawGame3
	.comm	vOff,4,4
	.comm	hOff,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
