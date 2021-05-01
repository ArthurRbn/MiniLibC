global strncmp

    section .text
strncmp:
    xor rax, rax
    xor r9, r9
    xor r10, r10

while:
    cmp rax, rdx
    je return
    mov r9b, byte[rdi + rax]
    mov r10b, byte[rsi + rax]
    cmp r9b, r10b
    jne return
    cmp r9b, 0
    je return
    cmp r10b, 0
    je return
    inc rax
    jmp while

return:
    sub r9, r10
    mov rax, r9
    ret