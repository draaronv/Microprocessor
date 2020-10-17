.data

random: .align 2
		.word 7,7,7,7,1
ones:
	.space 150
zeros:
	.space 90
.text
.global _start

_start:
		mov r0,#0x0000F000
		mov r1,#0x0000F100
		mov r3,#0
		mov r4,#0
		ldr r5,=ones
		ldr	r6,=zeros
load_byte:
		ldrb r2,[r0],#1
		cmp r0,r1
			beq storing
		bne check_byte
check_byte:
		cmp r2,#0
			beq load_byte
		cmp r2,#0x80000000
		bhs sub1
		bls	sub2
sub1:
	add r3,#1
	lsl r2,#1
	b check_byte
sub2:
	add r4,#1
	lsl r2,#1
	b check_byte

storing:
	strb r3,[r5]
	strb r4,[r6]
	b done
done:
	.end
