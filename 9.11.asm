; File Name: 9.11.asm
; Date: 2022-07-18
; Time: 15:12:22
; Author : Sajid Shahriar 
; github : sajidshahriar72543

.model small
.stack 100h
; .data
.code
main proc

    mov ax, 00fbh
    mov bl, 0ffh

    div bl
    ;idiv bl

    end:
    mov ah, 4ch
    int 21h

    main endp
end main