global division





section .text




division:
    mov rax, rdi
    cqo      ; cqo = convert quadword to Octword permet de faire une extension de signes il prends il nettoie l'ancienne valeur du registres rdx et le met à 0 ou 1 selon le signe de RAX
    idiv rsi ; division signé de rax / rsi  le resultat est es stocké dans RAX et le reste dans RDX 
    ret