global strstr

    section .text
strstr:
    xor rax, rax
    xor rcx, rcx
    xor r8, r8
    xor r9, r9
    xor r10, r10

while:
    mov r8, rax
    mov r9b, byte[rdi + rax]
    mov r10b, byte[rsi]
    cmp r9b, 0
    je returnNULL
    cmp r10b, 0
    je return
    cmp r9b, r10b
    jne next

    compLoop:
        cmp byte[rsi + rcx], 0
        je return
        cmp byte[rdi + rax], 0
        je returnNULL
        cmp r9b, r10b
        jne resetCompare
        inc rcx
        inc rax
        mov r9b, byte[rdi + rax]
        mov r10b, byte[rsi + rcx]
        jmp compLoop


next:
    inc rax
    jmp while


resetCompare:
    xor rcx, rcx
    inc rax
    jmp while


return:
    mov rax, r8
    add rax, rdi
    ret


returnNULL:
    mov rax, 0
    ret