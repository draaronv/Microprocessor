	.data 
myname: .asciz "Hello, my name is Aaron Valdes"
		.align 2
		.byte  'E', 'C', 'E', '3', '1', '2'
		.align 4
		.hword 'E', 'C', 'E', '3', '1', '2'
		.align 4
		.word  'E', 'C', 'E', '3', '1', '2'
.text
.global _start
_start: ldr r1,=myname
