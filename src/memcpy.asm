global memcpy

    section .text
memcpy: xor rax, rax

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
