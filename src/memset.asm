global memset

    section .text
memset: xor rax, rax

while:
    cmp rdx, rax
    je return
    mov byte[rdi + rax], sil
    inc rax
    jmp while

return:
    mov rax, rdi
    ret