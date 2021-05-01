global strcasecmp

    section .text
strcasecmp:
    xor rax, rax
    xor rcx, rcx
    xor r10, r10
    xor r11, r11

while:
    mov r10b, byte[rdi + rcx]
    cmp r10, 90
    jle toLowerCase

    cmpSecond:
    mov r11b, byte[rsi + rcx]
    cmp r11, 90
    jle toLowerCaseTwo

    compare:
        cmp r10, r11
        jne return
        cmp r10, 0
        je return
        cmp r11, 0
        je return
        inc rcx
        jmp while

toLowerCase:
    cmp r10, 65
    jl cmpSecond
    add r10, 32
    jmp cmpSecond

toLowerCaseTwo:
    cmp r11, 65
    jl compare
    add r11, 32
    jmp compare

return:
    sub r10, r11
    mov rax, r10
    ret