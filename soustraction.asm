global soustraction


section .text

soustraction:                  ; long soustraction(long a, long b)
    mov rax, rdi
    sub rax, rsi
    ret
