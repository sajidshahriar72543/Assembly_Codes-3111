.model small
.stack 100h
.data
    ask db 'UPPERCASE: $'
    val db ?
    str db 0ah,0dh,'Converted: '
    ans db ?
    
    ask1 db 0ah,0dh, 0ah,0dh,'LOWERCASE: $'
    val1 db ?
    ans1 db ?
.code

main proc 
    
    mov ax,@data
    mov ds,ax
 
    mov ah,9
    lea dx,ask  
    int 21h
 
    mov ah,1
    int 21h       
    mov val,al
 
    add al,20h    
    mov ans,al
 
    mov ah,9
    lea dx,str   
    int 21h 
    
    mov ah,1
    int 21h     
    mov val,al
    
    sub al,20h    
    mov ans,al
 
    mov ah,9
    lea dx,str    
    int 21h
    
    mov ah,4ch
    int 21h

    main endp
end main