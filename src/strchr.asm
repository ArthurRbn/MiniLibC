global strchr

    section .text
strchr:
    xor rax, rax
    cmp rdi, 0
    je returnNULL

while:
    cmp byte[rdi + rax], sil
    je return
    cmp byte[rdi + rax], 0
    je returnNULL
    inc rax
    jmp while

return:
    add rax, rdi
    ret

returnNULL:
    mov rax, 0
    ret