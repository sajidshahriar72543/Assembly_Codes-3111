; File Name: 9.4.asm
; Date: 2022-07-18
; Time: 14:56:52
; Author : Sajid Shahriar 
; github : sajidshahriar72543

.model small
.stack 100h
; .data
.code
main proc

    mov ax, 0100h
    mov cx, 0ffffh
    mul cx
    ; imul cx

    end:
    mov ah, 4ch
    int 21h

    main endp
end main