.data 
myname: .asciz "i am Cane"
dest: .space 25
dest1: .space 25

.text
.global _start
_start: 
	ldr r0,=myname
	ldr r1,=dest
	ldr r3,=dest1

check:
	ldrb r2,[r0]
	cmp r2,#0x60
		ble copy
	bge reverse

copy:
	ldrb r2,[r0],#1
	cmp r2,#0x20
		beq subr1
	bne subr2
	

subr1:
	b copy
	
subr2:
	cmp r2,#0x0
	strb r2,[r1],#1
	bne copy
	b done
	
reverse:
	ldrb r2,[r0],#1
	cmp r2,#0x20
		beq sub1
	bne sub2
	

sub1:
	b reverse
	
sub2:
	cmp r2,#0x0
	strb r2,[r3],#-1
	bne reverse
	b done

done:
	b done
.end

