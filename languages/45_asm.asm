; x86-64 Linux Assembly
global _start

section .data
    msg db 'Hello, World!', 0xa
    len equ $ - msg

section .text
_start:
    mov rax, 1      ; sys_write
    mov rdi, 1      ; stdout
    mov rsi, msg    ; message
    mov rdx, len    ; length
    syscall
    
    mov rax, 60     ; sys_exit
    xor rdi, rdi    ; exit code 0
    syscall