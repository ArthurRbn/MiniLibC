global memmove

    section .text
memmove:
    xor rax, rax
    xor r10, r10

while:
    cmp rdx, rax
    je return
    mov r10b, byte[rsi + rax]
    mov byte[rdi + rax], r10b
    inc rax
    jmp while

return:
    mov rax, rdi
    ret