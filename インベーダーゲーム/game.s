	.cpu arm7tdmi
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"game.c"
	.comm	ptr,4,4
	.comm	i,2,2
	.comm	j,2,2
	.comm	k,2,2
	.comm	key,4,4
	.comm	right,2,2
	.comm	left,2,2
	.comm	start,2,2
	.comm	A,2,2
	.comm	BLACK,2,2
	.comm	RED,2,2
	.comm	GREEN,2,2
	.comm	BLUE,2,2
	.comm	CYAN,2,2
	.comm	x,32,4
	.comm	y,32,4
	.comm	live,32,4
	.comm	bullet_x,32,4
	.comm	bullet_y,32,4
	.comm	player_x,2,2
	.comm	player_y,2,2
	.comm	player_live,2,2
	.comm	bullet_player_x,2,2
	.comm	bullet_player_y,2,2
	.comm	vector,2,2
	.comm	enemy_shooting,4,4
	.comm	time_player_move,4,4
	.comm	time_enemy_move,4,4
	.comm	time_player_bullet,4,4
	.comm	time_enemy_shooting,4,4
	.comm	time_player_bullet_move,4,4
	.comm	time_enemy_bullet_move,4,4
	.comm	RANDOM,2,2
	.comm	status,4,4
	.comm	clear,4,4
	.comm	GAME_CLEAR,4,4
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	ldr	r3, .L26
	mov	r2, #67108864
	str	r2, [r3]
	ldr	r3, .L26
	ldr	r3, [r3]
	ldr	r2, .L26+4
	strh	r2, [r3]	@ movhi
	ldr	r3, .L26+8
	mov	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, .L26+12
	mov	r2, #31744
	strh	r2, [r3]	@ movhi
	ldr	r3, .L26+16
	mov	r2, #992
	strh	r2, [r3]	@ movhi
	ldr	r3, .L26+20
	mov	r2, #31
	strh	r2, [r3]	@ movhi
	ldr	r3, .L26+24
	mvn	r2, #64512
	strh	r2, [r3]	@ movhi
	ldr	r3, .L26+28
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, .L26+32
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, .L26+36
	ldr	r2, .L26+40
	str	r2, [r3]
	ldr	r3, .L26+44
	mov	r2, #16
	strh	r2, [r3]	@ movhi
	ldr	r3, .L26+48
	mov	r2, #32
	strh	r2, [r3]	@ movhi
	ldr	r3, .L26+52
	mov	r2, #8
	strh	r2, [r3]	@ movhi
	ldr	r3, .L26+56
	mov	r2, #1
	strh	r2, [r3]	@ movhi
	ldr	r3, .L26+60
	mov	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, .L26+64
	mov	r2, #120
	strh	r2, [r3]	@ movhi
	ldr	r3, .L26+68
	mov	r2, #140
	strh	r2, [r3]	@ movhi
	ldr	r3, .L26+72
	mov	r2, #0
	strh	r2, [r3]	@ movhi
	b	.L2
.L3:
	ldr	r3, .L26+72
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #1
	add	r3, r3, #100663296
	ldr	r2, .L26
	str	r3, [r2]
	ldr	r3, .L26
	ldr	r3, [r3]
	ldr	r2, .L26+8
	ldrh	r2, [r2]	@ movhi
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3]	@ movhi
	ldr	r3, .L26+72
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L26+72
	strh	r3, [r2]	@ movhi
.L2:
	ldr	r3, .L26+72
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #38400
	bcc	.L3
.L23:
	ldr	r3, .L26+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L4
	ldr	r3, .L26+28
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L5
	ldr	r3, .L26+60
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #7
	bhi	.L6
	ldr	r3, .L26+60
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L26+60
	strh	r3, [r2]	@ movhi
	b	.L7
.L6:
	ldr	r3, .L26+60
	mov	r2, #0
	strh	r2, [r3]	@ movhi
.L7:
	ldr	r3, .L26+36
	ldr	r3, [r3]
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L26+52
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, r2
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L26+52
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r2, r3
	beq	.L9
	ldr	r3, .L26+32
	mov	r2, #1
	str	r2, [r3]
	ldr	r3, .L26+28
	mov	r2, #1
	str	r2, [r3]
	b	.L23
.L5:
	ldr	r3, .L26+28
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L10
	ldr	r3, .L26+64
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, .L26+68
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L26+12
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_player
	bl	move_enemy
	ldr	r3, .L26+36
	ldr	r3, [r3]
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L26+44
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, r2
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L26+44
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r2, r3
	beq	.L11
	mov	r0, #1
	bl	move_player
	b	.L12
.L11:
	ldr	r3, .L26+36
	ldr	r3, [r3]
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L26+48
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, r2
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L26+48
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r2, r3
	beq	.L12
	mov	r0, #2
	bl	move_player
.L12:
	ldr	r3, .L26+36
	ldr	r3, [r3]
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L26+56
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, r2
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L26+56
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r2, r3
	beq	.L13
	bl	shot_player
.L13:
	bl	shot_enemy
	bl	move_bullet
	bl	check_enemy
	bl	check_END
	b	.L9
.L10:
	ldr	r3, .L26+28
	ldr	r3, [r3]
	cmp	r3, #2
	bne	.L14
	ldr	r3, .L26+36
	ldr	r3, [r3]
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L26+52
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, r2
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L26+52
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r2, r3
	beq	.L9
	ldr	r3, .L26+32
	mov	r2, #1
	str	r2, [r3]
	ldr	r3, .L26+28
	mov	r2, #1
	str	r2, [r3]
	b	.L23
.L14:
	ldr	r3, .L26+16
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [sp]
	mov	r0, #120
	mov	r1, #80
	mov	r2, #50
	mov	r3, #50
	bl	draw_rec
	b	.L25
.L4:
	ldr	r3, .L26+72
	mov	r2, #0
	strh	r2, [r3]	@ movhi
	b	.L17
.L20:
	ldr	r3, .L26+76
	mov	r2, #0
	strh	r2, [r3]	@ movhi
	b	.L18
.L19:
	ldr	r3, .L26+72
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	ip, r3
	ldr	r3, .L26+76
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r3
	ldr	r3, .L26+76
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r2, r3	@ movhi
	mov	r2, r2, asl #4
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #59
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r1, .L26+80
	mov	r3, ip, asl #3
	add	r3, r3, r0
	mov	r3, r3, asl #1
	add	r3, r1, r3
	strh	r2, [r3]	@ movhi
	ldr	r3, .L26+72
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	ip, r3
	ldr	r3, .L26+76
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r3
	ldr	r3, .L26+72
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r2, r3	@ movhi
	mov	r2, r2, asl #2
	add	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #15
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r1, .L26+84
	mov	r3, ip, asl #3
	add	r3, r3, r0
	mov	r3, r3, asl #1
	add	r3, r1, r3
	strh	r2, [r3]	@ movhi
	ldr	r3, .L26+72
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r3
	ldr	r3, .L26+76
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r1, r3
	ldr	r2, .L26+88
	mov	r3, r0, asl #3
	add	r3, r3, r1
	mov	r3, r3, asl #1
	add	r3, r2, r3
	mov	r2, #1
	strh	r2, [r3]	@ movhi
	ldr	r3, .L26+72
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r3
	ldr	r3, .L26+76
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r1, r3
	ldr	r2, .L26+92
	mov	r3, r0, asl #3
	add	r3, r3, r1
	mov	r3, r3, asl #1
	add	r3, r2, r3
	mov	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, .L26+76
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L26+76
	strh	r3, [r2]	@ movhi
.L18:
	ldr	r3, .L26+76
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #7
	bls	.L19
	ldr	r3, .L26+72
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L26+72
	strh	r3, [r2]	@ movhi
.L17:
	ldr	r3, .L26+72
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #1
	bls	.L20
	ldr	r3, .L26+64
	mov	r2, #120
	strh	r2, [r3]	@ movhi
	ldr	r3, .L26+68
	mov	r2, #140
	strh	r2, [r3]	@ movhi
	ldr	r3, .L26+96
	mov	r2, #1
	strh	r2, [r3]	@ movhi
	ldr	r3, .L26+100
	mov	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, .L26+104
	mov	r2, #1
	strh	r2, [r3]	@ movhi
	ldr	r3, .L26+108
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, .L26+112
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, .L26+116
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, .L26+120
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, .L26+124
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, .L26+128
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, .L26+132
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, .L26+136
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, .L26+72
	mov	r2, #0
	strh	r2, [r3]	@ movhi
	b	.L21
.L22:
	ldr	r3, .L26+72
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #1
	add	r3, r3, #100663296
	ldr	r2, .L26
	str	r3, [r2]
	ldr	r3, .L26
	ldr	r3, [r3]
	ldr	r2, .L26+8
	ldrh	r2, [r2]	@ movhi
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3]	@ movhi
	ldr	r3, .L26+72
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L26+72
	strh	r3, [r2]	@ movhi
.L21:
	ldr	r3, .L26+72
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #38400
	bcc	.L22
	ldr	r3, .L26+32
	mov	r2, #0
	str	r2, [r3]
.L9:
	b	.L23
.L25:
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, lr}
	bx	lr
.L27:
	.align	2
.L26:
	.word	ptr
	.word	3843
	.word	BLACK
	.word	RED
	.word	GREEN
	.word	BLUE
	.word	CYAN
	.word	status
	.word	clear
	.word	key
	.word	67109168
	.word	right
	.word	left
	.word	start
	.word	A
	.word	RANDOM
	.word	player_x
	.word	player_y
	.word	i
	.word	j
	.word	x
	.word	y
	.word	live
	.word	bullet_y
	.word	player_live
	.word	bullet_player_y
	.word	vector
	.word	time_player_move
	.word	time_enemy_move
	.word	enemy_shooting
	.word	time_player_bullet
	.word	time_enemy_shooting
	.word	time_player_bullet_move
	.word	time_enemy_bullet_move
	.word	GAME_CLEAR
	.size	main, .-main
	.align	2
	.global	draw_point
	.type	draw_point, %function
draw_point:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	mov	r3, r2
	strh	r0, [fp, #-6]	@ movhi
	strh	r1, [fp, #-8]	@ movhi
	strh	r3, [fp, #-10]	@ movhi
	ldr	r3, .L29
	mov	r2, #67108864
	str	r2, [r3]
	ldr	r3, .L29
	ldr	r3, [r3]
	ldr	r2, .L29+4
	strh	r2, [r3]	@ movhi
	ldrh	r3, [fp, #-8]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r2, r3
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #5
	add	r2, r3, #100663296
	ldrh	r3, [fp, #-6]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #1
	add	r3, r2, r3
	mov	r2, r3
	ldr	r3, .L29
	str	r2, [r3]
	ldr	r3, .L29
	ldr	r3, [r3]
	ldrh	r2, [fp, #-10]	@ movhi
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3]	@ movhi
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L30:
	.align	2
.L29:
	.word	ptr
	.word	3843
	.size	draw_point, .-draw_point
	.align	2
	.global	draw_rec
	.type	draw_rec, %function
draw_rec:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	strh	r0, [fp, #-22]	@ movhi
	strh	r1, [fp, #-24]	@ movhi
	strh	r2, [fp, #-26]	@ movhi
	strh	r3, [fp, #-28]	@ movhi
	ldrh	r3, [fp, #-22]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-26]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, lsr #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, r2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
	ldrh	r3, [fp, #-26]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, lsr #1
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-22]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
	ldrh	r3, [fp, #-24]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-28]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, lsr #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, r2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	ldrh	r3, [fp, #-28]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, lsr #1
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-24]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	ldrh	r3, [fp, #-6]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
	b	.L32
.L35:
	b	.L33
.L34:
	ldrh	r3, [fp, #-6]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-10]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #4]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldrh	r3, [fp, #-6]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L33:
	ldrh	r3, [fp, #-6]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-8]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r2, r3
	bls	.L34
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
	ldrh	r3, [fp, #-10]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
.L32:
	ldrh	r3, [fp, #-10]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-12]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r2, r3
	bls	.L35
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, lr}
	bx	lr
	.size	draw_rec, .-draw_rec
	.align	2
	.global	draw_player
	.type	draw_player, %function
draw_player:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	mov	r3, r2
	strh	r0, [fp, #-14]	@ movhi
	strh	r1, [fp, #-16]	@ movhi
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2
	str	r3, [fp, #-8]
	b	.L37
.L40:
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #1
	str	r3, [fp, #-12]
	b	.L38
.L39:
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L38:
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r2, r3, #2
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	bgt	.L39
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L37:
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r2, r3
	ldr	r3, [fp, #-8]
	cmp	r2, r3
	bgt	.L40
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #4
	str	r3, [fp, #-8]
	b	.L41
.L42:
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L41:
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r2, r3, #5
	ldr	r3, [fp, #-8]
	cmp	r2, r3
	bgt	.L42
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	str	r3, [fp, #-8]
	b	.L43
.L46:
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #5
	str	r3, [fp, #-12]
	b	.L44
.L45:
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L44:
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r2, r3, #6
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	bgt	.L45
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L43:
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r2, r3, #4
	ldr	r3, [fp, #-8]
	cmp	r2, r3
	bgt	.L46
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, lr}
	bx	lr
	.size	draw_player, .-draw_player
	.align	2
	.global	move_player
	.type	move_player, %function
move_player:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #1
	bne	.L48
	ldr	r3, .L57
	ldr	r3, [r3]
	cmp	r3, #9
	bgt	.L49
	ldr	r3, .L57
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L57
	str	r3, [r2]
	b	.L50
.L49:
	ldr	r3, .L57
	mov	r2, #0
	str	r2, [r3]
.L50:
	ldr	r3, .L57
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L47
	ldr	r3, .L57+4
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, .L57+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L57+12
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [sp]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #10
	mov	r3, #8
	bl	draw_rec
	ldr	r3, .L57+4
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #233
	bhi	.L52
	ldr	r3, .L57+4
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L57+4
	strh	r3, [r2]	@ movhi
.L52:
	ldr	r3, .L57+4
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, .L57+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L57+16
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_player
	ldr	r3, .L57
	mov	r2, #1
	str	r2, [r3]
	b	.L47
.L48:
	ldr	r3, [fp, #-8]
	cmp	r3, #2
	bne	.L47
	ldr	r3, .L57
	ldr	r3, [r3]
	cmp	r3, #9
	bgt	.L54
	ldr	r3, .L57
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L57
	str	r3, [r2]
	b	.L55
.L54:
	ldr	r3, .L57
	mov	r2, #0
	str	r2, [r3]
.L55:
	ldr	r3, .L57
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L47
	ldr	r3, .L57+4
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, .L57+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L57+12
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [sp]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #10
	mov	r3, #8
	bl	draw_rec
	ldr	r3, .L57+4
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #6
	bls	.L56
	ldr	r3, .L57+4
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L57+4
	strh	r3, [r2]	@ movhi
.L56:
	ldr	r3, .L57+4
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, .L57+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L57+16
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_player
.L47:
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, lr}
	bx	lr
.L58:
	.align	2
.L57:
	.word	time_player_move
	.word	player_x
	.word	player_y
	.word	BLACK
	.word	RED
	.size	move_player, .-move_player
	.align	2
	.global	shot_player
	.type	shot_player, %function
shot_player:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	ldr	r3, .L61
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #0
	bne	.L59
	ldr	r3, .L61+4
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L61+8
	strh	r3, [r2]	@ movhi
	ldr	r3, .L61+12
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #9
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L61
	strh	r3, [r2]	@ movhi
	ldr	r3, .L61+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, .L61
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L61+16
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [sp]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #2
	mov	r3, #10
	bl	draw_rec
.L59:
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, lr}
	bx	lr
.L62:
	.align	2
.L61:
	.word	bullet_player_y
	.word	player_x
	.word	bullet_player_x
	.word	player_y
	.word	BLUE
	.size	shot_player, .-shot_player
	.align	2
	.global	draw_enemy_0
	.type	draw_enemy_0, %function
draw_enemy_0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	mov	r3, r2
	strh	r0, [fp, #-14]	@ movhi
	strh	r1, [fp, #-16]	@ movhi
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #3
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #3
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L64
.L65:
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #3
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L64:
	ldr	r3, [fp, #-8]
	cmp	r3, #6
	ble	.L65
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #3
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #3
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L66
.L67:
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #5
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L66:
	ldr	r3, [fp, #-8]
	cmp	r3, #10
	ble	.L67
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #5
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L68
.L69:
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #3
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L68:
	ldr	r3, [fp, #-8]
	cmp	r3, #6
	ble	.L69
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #5
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #5
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #3
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #3
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #5
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, lr}
	bx	lr
	.size	draw_enemy_0, .-draw_enemy_0
	.align	2
	.global	draw_enemy_1
	.type	draw_enemy_1, %function
draw_enemy_1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	mov	r3, r2
	strh	r0, [fp, #-14]	@ movhi
	strh	r1, [fp, #-16]	@ movhi
	strh	r3, [fp, #-18]	@ movhi
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L71
.L72:
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L71:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	ble	.L72
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L73
.L74:
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L73:
	ldr	r3, [fp, #-8]
	cmp	r3, #9
	ble	.L74
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L75
.L76:
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #5
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L75:
	ldr	r3, [fp, #-8]
	cmp	r3, #11
	ble	.L76
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L77
.L78:
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #5
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L77:
	ldr	r3, [fp, #-8]
	cmp	r3, #2
	ble	.L78
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L79
.L80:
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L79:
	ldr	r3, [fp, #-8]
	cmp	r3, #2
	ble	.L80
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L81
.L82:
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #5
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L81:
	ldr	r3, [fp, #-8]
	cmp	r3, #11
	ble	.L82
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #3
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #3
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #3
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #3
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #5
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #5
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	ldrh	r3, [fp, #-14]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldrh	r3, [fp, #-16]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-18]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_point
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, lr}
	bx	lr
	.size	draw_enemy_1, .-draw_enemy_1
	.align	2
	.global	draw_enemy
	.type	draw_enemy, %function
draw_enemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	ldr	r3, .L90
	mov	r2, #0
	strh	r2, [r3]	@ movhi
	b	.L84
.L86:
	ldr	r3, .L90
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L90+4
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #1
	bne	.L85
	ldr	r3, .L90
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L90+8
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, .L90
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L90+12
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L90+16
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_enemy_0
.L85:
	ldr	r3, .L90
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L90
	strh	r3, [r2]	@ movhi
.L84:
	ldr	r3, .L90
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #7
	bls	.L86
	ldr	r3, .L90
	mov	r2, #0
	strh	r2, [r3]	@ movhi
	b	.L87
.L89:
	ldr	r3, .L90
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L90+4
	add	r3, r3, #8
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #1
	bne	.L88
	ldr	r3, .L90
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L90+8
	add	r3, r3, #8
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, .L90
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L90+12
	add	r3, r3, #8
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L90+20
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_enemy_1
.L88:
	ldr	r3, .L90
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L90
	strh	r3, [r2]	@ movhi
.L87:
	ldr	r3, .L90
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #7
	bls	.L89
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, lr}
	bx	lr
.L91:
	.align	2
.L90:
	.word	i
	.word	live
	.word	x
	.word	y
	.word	CYAN
	.word	GREEN
	.size	draw_enemy, .-draw_enemy
	.align	2
	.global	move_enemy
	.type	move_enemy, %function
move_enemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	ldr	r3, .L126
	ldr	r3, [r3]
	cmp	r3, #99
	bgt	.L93
	ldr	r3, .L126
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L126
	str	r3, [r2]
	b	.L94
.L93:
	ldr	r3, .L126
	mov	r2, #0
	str	r2, [r3]
.L94:
	ldr	r3, .L126
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L92
	ldr	r3, .L126+4
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #1
	bne	.L96
	ldr	r3, .L126+8
	mov	r2, #0
	strh	r2, [r3]	@ movhi
	b	.L97
.L99:
	ldr	r3, .L126+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+12
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #1
	bne	.L98
	ldr	r3, .L126+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+16
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, .L126+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+20
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L126+24
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [sp]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #12
	mov	r3, #8
	bl	draw_rec
	ldr	r3, .L126+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r3
	ldr	r3, .L126+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+16
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r1, .L126+16
	mov	r3, r0, asl #1
	add	r3, r1, r3
	strh	r2, [r3]	@ movhi
	ldr	r3, .L126+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+16
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, .L126+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+20
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L126+28
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_enemy_0
.L98:
	ldr	r3, .L126+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+8
	strh	r3, [r2]	@ movhi
.L97:
	ldr	r3, .L126+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #7
	bls	.L99
	ldr	r3, .L126+8
	mov	r2, #0
	strh	r2, [r3]	@ movhi
	b	.L100
.L102:
	ldr	r3, .L126+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+12
	add	r3, r3, #8
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #1
	bne	.L101
	ldr	r3, .L126+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+16
	add	r3, r3, #8
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, .L126+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+20
	add	r3, r3, #8
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L126+24
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [sp]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #12
	mov	r3, #8
	bl	draw_rec
	ldr	r3, .L126+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r3
	ldr	r3, .L126+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+16
	add	r3, r3, #8
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r1, .L126+16
	add	r3, r0, #8
	mov	r3, r3, asl #1
	add	r3, r1, r3
	strh	r2, [r3]	@ movhi
	ldr	r3, .L126+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+16
	add	r3, r3, #8
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, .L126+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+20
	add	r3, r3, #8
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L126+32
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_enemy_1
.L101:
	ldr	r3, .L126+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+8
	strh	r3, [r2]	@ movhi
.L100:
	ldr	r3, .L126+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #7
	bls	.L102
	b	.L103
.L96:
	ldr	r3, .L126+4
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #2
	bne	.L103
	ldr	r3, .L126+8
	mov	r2, #0
	strh	r2, [r3]	@ movhi
	b	.L104
.L106:
	ldr	r3, .L126+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+12
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #1
	bne	.L105
	ldr	r3, .L126+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+16
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, .L126+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+20
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L126+24
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [sp]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #12
	mov	r3, #8
	bl	draw_rec
	ldr	r3, .L126+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r3
	ldr	r3, .L126+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+16
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r1, .L126+16
	mov	r3, r0, asl #1
	add	r3, r1, r3
	strh	r2, [r3]	@ movhi
	ldr	r3, .L126+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+16
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, .L126+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+20
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L126+28
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_enemy_0
.L105:
	ldr	r3, .L126+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+8
	strh	r3, [r2]	@ movhi
.L104:
	ldr	r3, .L126+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #7
	bls	.L106
	ldr	r3, .L126+8
	mov	r2, #0
	strh	r2, [r3]	@ movhi
	b	.L107
.L109:
	ldr	r3, .L126+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+12
	add	r3, r3, #8
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #1
	bne	.L108
	ldr	r3, .L126+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+16
	add	r3, r3, #8
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, .L126+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+20
	add	r3, r3, #8
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L126+24
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [sp]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #12
	mov	r3, #8
	bl	draw_rec
	ldr	r3, .L126+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r3
	ldr	r3, .L126+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+16
	add	r3, r3, #8
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r1, .L126+16
	add	r3, r0, #8
	mov	r3, r3, asl #1
	add	r3, r1, r3
	strh	r2, [r3]	@ movhi
	ldr	r3, .L126+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+16
	add	r3, r3, #8
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, .L126+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+20
	add	r3, r3, #8
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L126+32
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_enemy_1
.L108:
	ldr	r3, .L126+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+8
	strh	r3, [r2]	@ movhi
.L107:
	ldr	r3, .L126+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #7
	bls	.L109
.L103:
	ldr	r3, .L126+8
	mov	r2, #0
	strh	r2, [r3]	@ movhi
	b	.L110
.L125:
	ldr	r3, .L126+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r2, r3
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #8
	add	r3, r3, #460
	add	r3, r3, #100663296
	str	r3, [fp, #-8]
	ldr	r3, .L126+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r2, r3
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #8
	add	r3, r3, #20
	add	r3, r3, #100663296
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L126+32
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r2, r3
	bne	.L111
	ldr	r3, .L126+36
	mov	r2, #0
	strh	r2, [r3]	@ movhi
	b	.L112
.L114:
	ldr	r3, .L126+36
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+12
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #1
	bne	.L113
	ldr	r3, .L126+36
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+16
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, .L126+36
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+20
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L126+24
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [sp]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #12
	mov	r3, #8
	bl	draw_rec
	ldr	r3, .L126+36
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r3
	ldr	r3, .L126+36
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+20
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #8
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r1, .L126+20
	mov	r3, r0, asl #1
	add	r3, r1, r3
	strh	r2, [r3]	@ movhi
	ldr	r3, .L126+36
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+16
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, .L126+36
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+20
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L126+28
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_enemy_0
.L113:
	ldr	r3, .L126+36
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+36
	strh	r3, [r2]	@ movhi
.L112:
	ldr	r3, .L126+36
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #7
	bls	.L114
	ldr	r3, .L126+36
	mov	r2, #0
	strh	r2, [r3]	@ movhi
	b	.L115
.L117:
	ldr	r3, .L126+36
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+12
	add	r3, r3, #8
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #1
	bne	.L116
	ldr	r3, .L126+36
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+16
	add	r3, r3, #8
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, .L126+36
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+20
	add	r3, r3, #8
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L126+24
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [sp]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #12
	mov	r3, #8
	bl	draw_rec
	ldr	r3, .L126+36
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r3
	ldr	r3, .L126+36
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+20
	add	r3, r3, #8
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #8
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r1, .L126+20
	add	r3, r0, #8
	mov	r3, r3, asl #1
	add	r3, r1, r3
	strh	r2, [r3]	@ movhi
	ldr	r3, .L126+36
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+16
	add	r3, r3, #8
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, .L126+36
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+20
	add	r3, r3, #8
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L126+32
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_enemy_1
.L116:
	ldr	r3, .L126+36
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+36
	strh	r3, [r2]	@ movhi
.L115:
	ldr	r3, .L126+36
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #7
	bls	.L117
	ldr	r3, .L126+4
	mov	r2, #2
	strh	r2, [r3]	@ movhi
	b	.L92
.L111:
	ldr	r3, [fp, #-12]
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L126+32
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r2, r3
	bne	.L118
	ldr	r3, .L126+36
	mov	r2, #0
	strh	r2, [r3]	@ movhi
	b	.L119
.L121:
	ldr	r3, .L126+36
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+12
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #1
	bne	.L120
	ldr	r3, .L126+36
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+16
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, .L126+36
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+20
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L126+24
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [sp]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #12
	mov	r3, #8
	bl	draw_rec
	ldr	r3, .L126+36
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r3
	ldr	r3, .L126+36
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+20
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #8
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r1, .L126+20
	mov	r3, r0, asl #1
	add	r3, r1, r3
	strh	r2, [r3]	@ movhi
	ldr	r3, .L126+36
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+16
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, .L126+36
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+20
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L126+28
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_enemy_0
.L120:
	ldr	r3, .L126+36
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+36
	strh	r3, [r2]	@ movhi
.L119:
	ldr	r3, .L126+36
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #7
	bls	.L121
	ldr	r3, .L126+36
	mov	r2, #0
	strh	r2, [r3]	@ movhi
	b	.L122
.L124:
	ldr	r3, .L126+36
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+12
	add	r3, r3, #8
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #1
	bne	.L123
	ldr	r3, .L126+36
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+16
	add	r3, r3, #8
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, .L126+36
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+20
	add	r3, r3, #8
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L126+24
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [sp]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #12
	mov	r3, #8
	bl	draw_rec
	ldr	r3, .L126+36
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r3
	ldr	r3, .L126+36
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+20
	add	r3, r3, #8
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #8
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r1, .L126+20
	add	r3, r0, #8
	mov	r3, r3, asl #1
	add	r3, r1, r3
	strh	r2, [r3]	@ movhi
	ldr	r3, .L126+36
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+16
	add	r3, r3, #8
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, .L126+36
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+20
	add	r3, r3, #8
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L126+32
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	draw_enemy_1
.L123:
	ldr	r3, .L126+36
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+36
	strh	r3, [r2]	@ movhi
.L122:
	ldr	r3, .L126+36
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #7
	bls	.L124
	ldr	r3, .L126+4
	mov	r2, #1
	strh	r2, [r3]	@ movhi
	b	.L92
.L118:
	ldr	r3, .L126+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L126+8
	strh	r3, [r2]	@ movhi
.L110:
	ldr	r3, .L126+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #19
	bls	.L125
.L92:
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, lr}
	bx	lr
.L127:
	.align	2
.L126:
	.word	time_enemy_move
	.word	vector
	.word	i
	.word	live
	.word	x
	.word	y
	.word	BLACK
	.word	CYAN
	.word	GREEN
	.word	j
	.size	move_enemy, .-move_enemy
	.align	2
	.global	shot_enemy
	.type	shot_enemy, %function
shot_enemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	ldr	r3, .L141
	ldr	r3, [r3]
	cmp	r3, #6
	bgt	.L129
	ldr	r3, .L141+4
	ldr	r3, [r3]
	cmp	r3, #99
	bgt	.L130
	ldr	r3, .L141+4
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L141+4
	str	r3, [r2]
	b	.L132
.L130:
	ldr	r3, .L141
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L141
	str	r3, [r2]
	ldr	r3, .L141+4
	mov	r2, #0
	str	r2, [r3]
	b	.L132
.L129:
	ldr	r3, .L141+4
	ldr	r3, [r3]
	cmp	r3, #99
	bgt	.L133
	ldr	r3, .L141+4
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L141+4
	str	r3, [r2]
	b	.L132
.L133:
	ldr	r3, .L141
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, .L141+4
	mov	r2, #0
	str	r2, [r3]
.L132:
	ldr	r3, .L141+4
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L128
	ldr	r3, .L141+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #6
	bhi	.L135
	ldr	r3, .L141
	ldr	r3, [r3]
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L141+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r2, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L141+8
	strh	r3, [r2]	@ movhi
	b	.L136
.L135:
	ldr	r3, .L141+8
	mov	r2, #0
	strh	r2, [r3]	@ movhi
.L136:
	ldr	r3, .L141+12
	mov	r2, #0
	strh	r2, [r3]	@ movhi
	b	.L137
.L140:
	ldr	r3, .L141+12
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #1
	ldr	r2, .L141+8
	ldrh	r2, [r2]	@ movhi
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r2
	ldr	r2, .L141+16
	mov	r3, r3, asl #3
	add	r3, r3, r1
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #1
	bne	.L138
	ldr	r3, .L141+12
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #1
	ldr	r2, .L141+8
	ldrh	r2, [r2]	@ movhi
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r2
	ldr	r2, .L141+20
	mov	r3, r3, asl #3
	add	r3, r3, r1
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #0
	bne	.L139
	ldr	r3, .L141+12
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #1
	ldr	r2, .L141+8
	ldrh	r2, [r2]	@ movhi
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r0, r2
	ldr	r2, .L141+12
	ldrh	r2, [r2]	@ movhi
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	rsb	r2, r2, #1
	ldr	r1, .L141+8
	ldrh	r1, [r1]	@ movhi
	mov	r1, r1, asl #16
	mov	r1, r1, lsr #16
	mov	ip, r1
	ldr	r1, .L141+24
	mov	r2, r2, asl #3
	add	r2, r2, ip
	mov	r2, r2, asl #1
	add	r2, r1, r2
	ldrh	r2, [r2]	@ movhi
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	ldr	r1, .L141+28
	mov	r3, r3, asl #3
	add	r3, r3, r0
	mov	r3, r3, asl #1
	add	r3, r1, r3
	strh	r2, [r3]	@ movhi
	ldr	r3, .L141+12
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #1
	ldr	r2, .L141+8
	ldrh	r2, [r2]	@ movhi
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r0, r2
	ldr	r2, .L141+12
	ldrh	r2, [r2]	@ movhi
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	rsb	r2, r2, #1
	ldr	r1, .L141+8
	ldrh	r1, [r1]	@ movhi
	mov	r1, r1, asl #16
	mov	r1, r1, lsr #16
	mov	ip, r1
	ldr	r1, .L141+32
	mov	r2, r2, asl #3
	add	r2, r2, ip
	mov	r2, r2, asl #1
	add	r2, r1, r2
	ldrh	r2, [r2]	@ movhi
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r2, #10
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	ldr	r1, .L141+20
	mov	r3, r3, asl #3
	add	r3, r3, r0
	mov	r3, r3, asl #1
	add	r3, r1, r3
	strh	r2, [r3]	@ movhi
	ldr	r3, .L141+12
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #1
	ldr	r2, .L141+8
	ldrh	r2, [r2]	@ movhi
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r2
	ldr	r2, .L141+28
	mov	r3, r3, asl #3
	add	r3, r3, r1
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, .L141+12
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #1
	ldr	r2, .L141+8
	ldrh	r2, [r2]	@ movhi
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r0, r2
	ldr	r2, .L141+20
	mov	r3, r3, asl #3
	add	r3, r3, r0
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L141+36
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [sp]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #2
	mov	r3, #10
	bl	draw_rec
	b	.L128
.L139:
	b	.L128
.L138:
	ldr	r3, .L141+12
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L141+12
	strh	r3, [r2]	@ movhi
.L137:
	ldr	r3, .L141+12
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #0
	beq	.L140
.L128:
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, lr}
	bx	lr
.L142:
	.align	2
.L141:
	.word	enemy_shooting
	.word	time_enemy_shooting
	.word	RANDOM
	.word	i
	.word	live
	.word	bullet_y
	.word	x
	.word	bullet_x
	.word	y
	.word	CYAN
	.size	shot_enemy, .-shot_enemy
	.align	2
	.global	move_bullet
	.type	move_bullet, %function
move_bullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	ldr	r3, .L154
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #0
	beq	.L144
	ldr	r3, .L154+4
	ldr	r3, [r3]
	cmp	r3, #1
	bgt	.L145
	ldr	r3, .L154+4
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L154+4
	str	r3, [r2]
	b	.L144
.L145:
	ldr	r3, .L154+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, .L154
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L154+12
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [sp]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #2
	mov	r3, #10
	bl	draw_rec
	ldr	r3, .L154
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L154
	strh	r3, [r2]	@ movhi
	ldr	r3, .L154+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, .L154
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L154+16
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [sp]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #2
	mov	r3, #10
	bl	draw_rec
	ldr	r3, .L154+4
	mov	r2, #0
	str	r2, [r3]
.L144:
	ldr	r3, .L154+20
	ldr	r3, [r3]
	cmp	r3, #4
	bgt	.L146
	ldr	r3, .L154+20
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L154+20
	str	r3, [r2]
	b	.L143
.L146:
	ldr	r3, .L154+20
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, .L154+24
	mov	r2, #0
	strh	r2, [r3]	@ movhi
	b	.L148
.L153:
	ldr	r3, .L154+28
	mov	r2, #0
	strh	r2, [r3]	@ movhi
	b	.L149
.L152:
	ldr	r3, .L154+24
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r3
	ldr	r3, .L154+28
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r1, r3
	ldr	r2, .L154+32
	mov	r3, r0, asl #3
	add	r3, r3, r1
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #1
	bne	.L150
	ldr	r3, .L154+24
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r3
	ldr	r3, .L154+28
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r1, r3
	ldr	r2, .L154+36
	mov	r3, r0, asl #3
	add	r3, r3, r1
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #0
	beq	.L151
	ldr	r3, .L154+24
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r3
	ldr	r3, .L154+28
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r1, r3
	ldr	r2, .L154+36
	mov	r3, r0, asl #3
	add	r3, r3, r1
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #159
	bhi	.L151
	ldr	r3, .L154+24
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r3
	ldr	r3, .L154+28
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r1, r3
	ldr	r2, .L154+40
	mov	r3, r0, asl #3
	add	r3, r3, r1
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, .L154+24
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	ip, r3
	ldr	r3, .L154+28
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r3
	ldr	r2, .L154+36
	mov	r3, ip, asl #3
	add	r3, r3, r0
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L154+12
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [sp]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #2
	mov	r3, #10
	bl	draw_rec
	ldr	r3, .L154+24
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	ip, r3
	ldr	r3, .L154+28
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r3
	ldr	r3, .L154+24
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	lr, r3
	ldr	r3, .L154+28
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r1, r3
	ldr	r2, .L154+36
	mov	r3, lr, asl #3
	add	r3, r3, r1
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r1, .L154+36
	mov	r3, ip, asl #3
	add	r3, r3, r0
	mov	r3, r3, asl #1
	add	r3, r1, r3
	strh	r2, [r3]	@ movhi
	ldr	r3, .L154+24
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r3
	ldr	r3, .L154+28
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r1, r3
	ldr	r2, .L154+40
	mov	r3, r0, asl #3
	add	r3, r3, r1
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, .L154+24
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	ip, r3
	ldr	r3, .L154+28
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r3
	ldr	r2, .L154+36
	mov	r3, ip, asl #3
	add	r3, r3, r0
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L154+44
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [sp]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #2
	mov	r3, #10
	bl	draw_rec
	b	.L150
.L151:
	ldr	r3, .L154+24
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r3
	ldr	r3, .L154+28
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r1, r3
	ldr	r2, .L154+36
	mov	r3, r0, asl #3
	add	r3, r3, r1
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #159
	bls	.L150
	ldr	r3, .L154+24
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r3
	ldr	r3, .L154+28
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r1, r3
	ldr	r2, .L154+40
	mov	r3, r0, asl #3
	add	r3, r3, r1
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, .L154+24
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	ip, r3
	ldr	r3, .L154+28
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r3
	ldr	r2, .L154+36
	mov	r3, ip, asl #3
	add	r3, r3, r0
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L154+12
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [sp]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #2
	mov	r3, #10
	bl	draw_rec
	ldr	r3, .L154+24
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r3
	ldr	r3, .L154+28
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r1, r3
	ldr	r2, .L154+36
	mov	r3, r0, asl #3
	add	r3, r3, r1
	mov	r3, r3, asl #1
	add	r3, r2, r3
	mov	r2, #0
	strh	r2, [r3]	@ movhi
.L150:
	ldr	r3, .L154+28
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L154+28
	strh	r3, [r2]	@ movhi
.L149:
	ldr	r3, .L154+28
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #7
	bls	.L152
	ldr	r3, .L154+24
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L154+24
	strh	r3, [r2]	@ movhi
.L148:
	ldr	r3, .L154+24
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #1
	bls	.L153
.L143:
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, lr}
	bx	lr
.L155:
	.align	2
.L154:
	.word	bullet_player_y
	.word	time_player_bullet_move
	.word	bullet_player_x
	.word	BLACK
	.word	BLUE
	.word	time_enemy_bullet_move
	.word	i
	.word	j
	.word	live
	.word	bullet_y
	.word	bullet_x
	.word	CYAN
	.size	move_bullet, .-move_bullet
	.align	2
	.global	check_enemy
	.type	check_enemy, %function
check_enemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	ldr	r3, .L162
	mov	r2, #0
	strh	r2, [r3]	@ movhi
	b	.L157
.L161:
	ldr	r3, .L162+4
	mov	r2, #0
	strh	r2, [r3]	@ movhi
	b	.L158
.L160:
	ldr	r3, .L162
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r3
	ldr	r3, .L162+4
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r1, r3
	ldr	r2, .L162+8
	mov	r3, r0, asl #3
	add	r3, r3, r1
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #1
	bne	.L159
	ldr	r3, .L162+12
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, .L162
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	ip, r3
	ldr	r3, .L162+4
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r3
	ldr	r2, .L162+16
	mov	r3, ip, asl #3
	add	r3, r3, r0
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r3
	mov	r2, #11
	bl	check_ABS
	mov	r3, r0
	cmp	r3, #1
	bne	.L159
	ldr	r3, .L162+20
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, .L162
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	ip, r3
	ldr	r3, .L162+4
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r3
	ldr	r2, .L162+24
	mov	r3, ip, asl #3
	add	r3, r3, r0
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r3
	mov	r2, #6
	bl	check_ABS
	mov	r3, r0
	cmp	r3, #1
	bne	.L159
	ldr	r3, .L162
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r3
	ldr	r3, .L162+4
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r1, r3
	ldr	r2, .L162+8
	mov	r3, r0, asl #3
	add	r3, r3, r1
	mov	r3, r3, asl #1
	add	r3, r2, r3
	mov	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, .L162
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r3
	ldr	r3, .L162+4
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r1, r3
	ldr	r2, .L162+24
	mov	r3, r0, asl #3
	add	r3, r3, r1
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, .L162
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	ip, r3
	ldr	r3, .L162+4
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r3
	ldr	r2, .L162+16
	mov	r3, ip, asl #3
	add	r3, r3, r0
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L162+28
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [sp]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #12
	mov	r3, #10
	bl	draw_rec
	ldr	r3, .L162
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r3
	ldr	r3, .L162+4
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r1, r3
	ldr	r2, .L162+32
	mov	r3, r0, asl #3
	add	r3, r3, r1
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, .L162
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	ip, r3
	ldr	r3, .L162+4
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r3
	ldr	r2, .L162+36
	mov	r3, ip, asl #3
	add	r3, r3, r0
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L162+28
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [sp]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #2
	mov	r3, #10
	bl	draw_rec
	ldr	r3, .L162+20
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, .L162+12
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldr	r3, .L162+28
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [sp]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #2
	mov	r3, #10
	bl	draw_rec
	ldr	r3, .L162+12
	mov	r2, #0
	strh	r2, [r3]	@ movhi
.L159:
	ldr	r3, .L162+4
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L162+4
	strh	r3, [r2]	@ movhi
.L158:
	ldr	r3, .L162+4
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #7
	bls	.L160
	ldr	r3, .L162
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L162
	strh	r3, [r2]	@ movhi
.L157:
	ldr	r3, .L162
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #1
	bls	.L161
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, lr}
	bx	lr
.L163:
	.align	2
.L162:
	.word	i
	.word	j
	.word	live
	.word	bullet_player_y
	.word	y
	.word	bullet_player_x
	.word	x
	.word	BLACK
	.word	bullet_x
	.word	bullet_y
	.size	check_enemy, .-check_enemy
	.align	2
	.global	check_END
	.type	check_END, %function
check_END:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	ldr	r3, .L172
	mov	r2, #1
	str	r2, [r3]
	ldr	r3, .L172+4
	mov	r2, #0
	strh	r2, [r3]	@ movhi
	b	.L165
.L170:
	ldr	r3, .L172+8
	mov	r2, #0
	strh	r2, [r3]	@ movhi
	b	.L166
.L169:
	ldr	r3, .L172+4
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r3
	ldr	r3, .L172+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r1, r3
	ldr	r2, .L172+12
	mov	r3, r0, asl #3
	add	r3, r3, r1
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r2, r3
	ldr	r3, .L172+16
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #8
	cmp	r2, r3
	blt	.L167
	ldr	r3, .L172+4
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r3
	ldr	r3, .L172+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r1, r3
	ldr	r2, .L172+12
	mov	r3, r0, asl #3
	add	r3, r3, r1
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r2, r3
	ldr	r3, .L172+16
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #9
	cmp	r2, r3
	bgt	.L167
	ldr	r3, .L172+20
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	ldr	r3, .L172+4
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	ip, r3
	ldr	r3, .L172+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r3
	ldr	r2, .L172+24
	mov	r3, ip, asl #3
	add	r3, r3, r0
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r1
	mov	r1, r3
	mov	r2, #6
	bl	check_ABS
	mov	r3, r0
	cmp	r3, #1
	bne	.L167
	ldr	r3, .L172+28
	mov	r2, #1
	str	r2, [r3]
	ldr	r3, .L172+32
	mov	r2, #2
	str	r2, [r3]
.L167:
	ldr	r3, .L172+4
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r0, r3
	ldr	r3, .L172+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r1, r3
	ldr	r2, .L172+36
	mov	r3, r0, asl #3
	add	r3, r3, r1
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #1
	bne	.L168
	ldr	r3, .L172
	mov	r2, #0
	str	r2, [r3]
.L168:
	ldr	r3, .L172+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L172+8
	strh	r3, [r2]	@ movhi
.L166:
	ldr	r3, .L172+8
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #7
	bls	.L169
	ldr	r3, .L172+4
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	ldr	r2, .L172+4
	strh	r3, [r2]	@ movhi
.L165:
	ldr	r3, .L172+4
	ldrh	r3, [r3]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r3, #1
	bls	.L170
	ldr	r3, .L172
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L164
	ldr	r3, .L172+28
	mov	r2, #1
	str	r2, [r3]
	ldr	r3, .L172+32
	mov	r2, #3
	str	r2, [r3]
.L164:
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, lr}
	bx	lr
.L173:
	.align	2
.L172:
	.word	GAME_CLEAR
	.word	i
	.word	j
	.word	bullet_y
	.word	player_y
	.word	player_x
	.word	bullet_x
	.word	clear
	.word	status
	.word	live
	.size	check_END, .-check_END
	.align	2
	.global	check_ABS
	.type	check_ABS, %function
check_ABS:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	mov	r3, r2
	strh	r0, [fp, #-6]	@ movhi
	strh	r1, [fp, #-8]	@ movhi
	strh	r3, [fp, #-10]	@ movhi
	ldrh	r3, [fp, #-6]	@ movhi
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [fp, #-8]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	cmp	r2, r3
	bcc	.L175
	ldrh	r3, [fp, #-6]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r2, r3
	ldrh	r3, [fp, #-8]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, r2
	ldrh	r2, [fp, #-10]	@ movhi
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	cmp	r3, r2
	bge	.L176
	mov	r3, #1
	b	.L177
.L176:
	mov	r3, #0
	b	.L177
.L175:
	ldrh	r3, [fp, #-8]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r2, r3
	ldrh	r3, [fp, #-6]	@ movhi
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, r2
	ldrh	r2, [fp, #-10]	@ movhi
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	cmp	r3, r2
	bge	.L178
	mov	r3, #1
	b	.L177
.L178:
	mov	r3, #0
.L177:
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	check_ABS, .-check_ABS
	.ident	"GCC: (devkitARM release 44) 4.9.2"
