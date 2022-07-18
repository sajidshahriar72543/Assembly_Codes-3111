; File Name: 9.3.asm
; Date: 2022-07-18
; Time: 14:52:23
; Author : Sajid Shahriar 
; github : sajidshahriar72543

.model small
.stack 100h
; .data
.code
main proc

    mov ax, 0fffh
    mul ax
    ; imul ax

    end:
    mov ah, 4ch
    int 21h

    main endp
end main