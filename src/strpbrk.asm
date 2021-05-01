global strpbrk

    section .text
strpbrk:
    xor rax, rax
    xor r8, r8
    xor r9, r9
    xor r10, r10

while:
    cmp byte[rdi + rax], 0
    je returnNULL
    mov r8, [rdi + rax]
    compLoop:
        cmp byte[rsi + r9], 0
        je resetCompare
        cmp byte[rsi + r9], r8b
        je return
        inc r9
        jmp compLoop

resetCompare:
    mov r9, 0
    inc rax
    jmp while

return:
    add rax, rdi
    ret

returnNULL:
    mov rax, 0
    ret