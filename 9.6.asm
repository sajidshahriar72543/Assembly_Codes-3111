; File Name: 9.6.asm
; Date: 2022-07-18
; Time: 14:59:03
; Author : Sajid Shahriar 
; github : sajidshahriar72543

.model small
.stack 100h
.data
a dw 1
b dw 1
.code
main proc

    mov ax, 5
    imul a
    mov a, ax
    mov ax, 12
    imul b
    sub a, ax
    mov ax, a

    end:
    mov ah, 4ch
    int 21h

    main endp
end main