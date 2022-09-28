	.arch armv6
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"vacall-armhf.c"
	.text
	.align	2
	.global	vacall_receiver
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	vacall_receiver, %function
vacall_receiver:
	@ args = 20, pretend = 16, frame = 176
	@ frame_needed = 1, uses_anonymous_args = 0
	sub	sp, sp, #16
	mov	ip, #0
	push	{r4, r5, r6, fp, lr}
	add	fp, sp, #16
	ldr	r4, .L32
	ldr	r5, .L32+4
	add	lr, fp, #4
.LPIC0:
	add	r4, pc, r4
	add	r6, fp, #20
	sub	sp, sp, #180
	stm	lr, {r0, r1, r2, r3}
	vstr.32	s0, [fp, #-152]
	vstr.32	s1, [fp, #-148]
	vstr.32	s2, [fp, #-144]
	vstr.32	s3, [fp, #-140]
	vstr.32	s4, [fp, #-136]
	vstr.32	s5, [fp, #-132]
	vstr.32	s6, [fp, #-128]
	vstr.32	s7, [fp, #-124]
	vstr.32	s8, [fp, #-120]
	vstr.32	s9, [fp, #-116]
	vstr.32	s10, [fp, #-112]
	vstr.32	s11, [fp, #-108]
	vstr.32	s12, [fp, #-104]
	vstr.32	s13, [fp, #-100]
	vstr.32	s14, [fp, #-96]
	vstr.32	s15, [fp, #-92]
	vstr.64	d0, [fp, #-84]
	vstr.64	d1, [fp, #-76]
	vstr.64	d2, [fp, #-68]
	vstr.64	d3, [fp, #-60]
	vstr.64	d4, [fp, #-52]
	vstr.64	d5, [fp, #-44]
	vstr.64	d6, [fp, #-36]
	vstr.64	d7, [fp, #-28]
	str	lr, [fp, #-164]
	str	ip, [fp, #-196]
	str	ip, [fp, #-160]
	str	r6, [fp, #-180]
	str	ip, [fp, #-156]
	str	ip, [fp, #-176]
	strb	ip, [fp, #-172]
	ldr	r2, [r4, r5]
	mov	r3, r4
	sub	r0, fp, #196
	ldr	r3, [r2]
	blx	r3
	ldrb	r3, [fp, #-172]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1
	cmp	r3, #1
	beq	.L25
	cmp	r3, #2
	ldrsbeq	r0, [fp, #-188]
	beq	.L1
	cmp	r3, #3
	beq	.L25
	cmp	r3, #4
	ldrsheq	r0, [fp, #-188]
	beq	.L1
	cmp	r3, #5
	ldrheq	r0, [fp, #-188]
	beq	.L1
	cmp	r3, #6
	beq	.L27
	cmp	r3, #7
	beq	.L27
	cmp	r3, #8
	beq	.L27
	cmp	r3, #9
	beq	.L27
	sub	r2, r3, #10
	cmp	r2, #1
	bls	.L29
	cmp	r3, #12
	vldreq.32	s0, [fp, #-188]
	beq	.L1
	cmp	r3, #13
	beq	.L30
	cmp	r3, #14
	beq	.L27
	cmp	r3, #15
	bne	.L1
	ldr	r3, [fp, #-196]
	tst	r3, #1024
	beq	.L1
	ldr	r3, [fp, #-168]
	cmp	r3, #1
	beq	.L31
	cmp	r3, #2
	ldr	r3, [fp, #-176]
	ldrheq	r0, [r3]
	ldrne	r0, [r3]
.L1:
	sub	sp, fp, #16
	@ sp needed
	pop	{r4, r5, r6, fp, lr}
	add	sp, sp, #16
	bx	lr
.L25:
	ldrb	r0, [fp, #-188]	@ zero_extendqisi2
	sub	sp, fp, #16
	@ sp needed
	pop	{r4, r5, r6, fp, lr}
	add	sp, sp, #16
	bx	lr
.L27:
	ldr	r0, [fp, #-188]
	sub	sp, fp, #16
	@ sp needed
	pop	{r4, r5, r6, fp, lr}
	add	sp, sp, #16
	bx	lr
.L30:
	vldr.64	d0, [fp, #-188]
	b	.L1
.L29:
	ldr	r0, [fp, #-188]
	ldr	r1, [fp, #-184]
	b	.L1
.L31:
	ldr	r3, [fp, #-176]
	ldrb	r0, [r3]	@ zero_extendqisi2
	b	.L1
.L33:
	.align	2
.L32:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+8)
	.word	vacall_function(GOT)
	.size	vacall_receiver, .-vacall_receiver
	.ident	"GCC: (GNU) 6.5.0"
	.section	.note.GNU-stack,"",%progbits
