; ssize_t write(int fd, const void *buf, size_t count);

section .data
mensagem: db "HELLO WORLD", 0xa
tamanho: equ $ - mensagem

section .text
global _start

_start: 

mov edx, tamanho; count 
mov ecx, mensagem ; *buf
mov ebx, 1 ; fd
mov eax, 4 ; 
int 0x80 

; return 42x00
mov ebx, 0 ; valor do syscal exit()
mov eax, 1 ; syscal exit()
int 0x80
