global rindex

    section .text
rindex:
    push rbp
    mov rbp, rsp
    xor rax, rax
    xor rcx, rcx
    cmp rdi, 0
    je return

    find:
        cmp byte[rdi + rcx], sil
        je last
        cmp byte[rdi + rcx], 0
        je return
        inc rcx
        jmp find

last:
    mov rax, rcx
    add rax, rdi
    cmp byte[rdi + rcx], 0
    je return
    inc rcx
    jmp find

return:
    leave
    ret