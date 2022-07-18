; File Name: 9.12.asm
; Date: 2022-07-18
; Time: 15:13:41
; Author : Sajid Shahriar 
; github : sajidshahriar72543

.model small
.stack 100h
; .data
.code
main proc

    mov ax, -1250
    cwd
    mov bx, 7
    idiv bx

    end:
    mov ah, 4ch
    int 21h

    main endp
end main