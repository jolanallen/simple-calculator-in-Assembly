global square




section .text

square:
    mov rax, rdi  ; j eprend le premier paramétre e le met dans rax
    mov rdx, rsi  ; je met le deuxiemme paramétre dans rdx 
    mov rcx, rsi  ;rcx est un registre qui est le compteur de la boucle  j'initialise  compteur qui a la valeur de b
    sub rcx, 1    ; je retire 1 car la boucle s'arrête a zero donc si j'ai 2² il vas boucler en faisant 2,1,0 soit trois foix ce qui reviendrai a fair 2³ 

    square_loop:           ; notre boucle 
    imul rax, rdx   ; je multiplie le contenue de rax par le contenur de rdx le resultat s'ajoute a rax ce qui reviendrai a fair rax = rax * rdi  
    loop square_loop


    ret





