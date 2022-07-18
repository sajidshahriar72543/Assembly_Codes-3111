; File Name: 9.2.asm
; Date: 2022-07-18
; Time: 14:50:51
; Author : Sajid Shahriar 
; github : sajidshahriar72543

.model small
.stack 100h
; .data
.code
main proc

    mov ax, 0ffffh
    mov bx, 0ffffh

    mul bx
    ; imul bx

    end:
    mov ah, 4ch
    int 21h

    main endp
end main