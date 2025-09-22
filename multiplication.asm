global multiplication




section .text

multiplication:  ; long multiplication(long a, long b);
    mov rax, rdi
    mov rbx, rsi
    imul rax, rbx
    ret