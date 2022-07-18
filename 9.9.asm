; File Name: 9.9.asm
; Date: 2022-07-18
; Time: 15:09:18
; Author : Sajid Shahriar 
; github : sajidshahriar72543

.model small
.stack 100h
; .data
.code
main proc

    mov dx, 0000h
    mov ax, 0005h

    div bx
    ;idiv bx

    end:
    mov ah, 4ch
    int 21h

    main endp
end main