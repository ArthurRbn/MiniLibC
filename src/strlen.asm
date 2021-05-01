global strlen

    section .text
strlen: xor rax, rax

while:
    cmp byte[rdi + rax], 0
    je return
    inc rax
    jmp while

return:
    ret