; File Name: 9.1.asm
; Date: 2022-07-18
; Time: 14:46:11
; Author : Sajid Shahriar 
; github : sajidshahriar72543

.model small
.stack 100h
; .data
.code
main proc

    mov ax, 1
    mov bx, 0ffffh
    ;mul bx
    imul bx

    end:
    mov ah, 4ch
    int 21h

    main endp
end main