	.data 
myname: .asciz "Hello, my name is Aaron Valdes"
		.byte  'E', 'C', 'E', '3', '1', '2'
		.hword 'E', 'C', 'E', '3', '1', '2'
		.word  'E', 'C', 'E', '3', '1', '2'
.text
.global _start
_start: ldr r1,=myname
