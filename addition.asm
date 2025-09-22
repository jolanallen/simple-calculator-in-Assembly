global addition


section .text
                    ; rappel les registre contenant les arguments sont dans l'ordre  RDI RSI RDX RCX R8 R9 
addition:           ; int addition(int a, int b)  edi et esi sont respectivement le premier et le deuxiéme argurents
    mov rax, rdi    ; rax étant le registre de travail il peut contenir 32 bits cette focntion permettra donc d'effectuer des opération d'addition dont le résutlat est inférieur a 4 294 967 295
    add rax, rsi    ;  on ajoute a eax qui contenait deja le prmier argument le resultat de l'adition est donc dans le registre eax 
    ret             ; retour a l'endroit initial au moment de l'appel de la focntion 
 