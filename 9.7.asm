; File Name: 9.7.asm
; Date: 2022-07-18
; Time: 15:01:48
; Author : Sajid Shahriar 
; github : sajidshahriar72543

.model small
.stack 100h
; .data
.code
main proc

    mov ax, 1 
    mov cx, 5
    top:
    mul cx
    loop top

    end:
    mov ah, 4ch
    int 21h

    main endp
end main