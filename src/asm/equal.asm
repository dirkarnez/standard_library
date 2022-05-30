default rel
bits 64

section .data
section .text
global compare

compare:
    push    rbp                 ; Set up a stack frame for the function
    mov    rbp, rsp             ; Continuing the linked list here, by pointing rbp to this stack frame
    sub   RSP, 16                                 ; Align the stack to a multiple of 16 bytes
    sub   RSP, 32                                  ; 32 bytes of shadow space

    mov    [rsp + 8 ], rcx
    mov    [rsp + 16 ], rdx

    mov rax, [rsp + 16]
    cmp [rsp + 8], rax
    
    jne return_zero
    jmp return_one

    leave
    ret

return_one:
    mov     rax, 1
    leave
    ret

return_zero:
    mov     rax, 0
    leave
    ret

