.data 
myname: .asciz "Hello, my name is Aaron Valdes"
.text
.global _start
_start: ldr r1,=myname
