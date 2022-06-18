.MODEL SMALL
.STACK 100H
.DATA
 PROMPT DB   'type a line of text',0DH,0AH,'$'
 NOCAP_MSG  DB 0DH,0AH,'NO CAPITALS $'
 CAP_MSG DB 0DH,0AH, 'FIRST CAPITAL : '
 
 FIRST DB ']' 
 DB 0DH,0AH,'LAST CAPITAL : ' 
 
   
 LAST DB   '@ $'
 .CODE
 MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,09H
    LEA   DX,PROMPT
    INT 21H
    
    
    MOV AH,01H
    INT 21H
    
    
    WHILE_:
    CMP  AL,0DH
    JE   END_WHILE
    
    CMP AL,'A'
    JNGE  END_IF
    
    CMP AL,'Z'
    JNLE END_IF
    
    
    CMP AL,FIRST
    JNL CHECK_LAST
    MOV FIRST,AL
    
    CHECK_LAST:
    CMP AL,LAST
    JNG END_IF
    MOV LAST,AL
    
    END_IF:
    INT 21H
    JMP WHILE_
    
    END_WHILE:
    MOV AH,09H
    CMP FIRST,']'
    JNE CAPS 
   
    
    LEA DX,NOCAP_MSG 
    JMP DISPLAY
     CAPS:
     LEA DX,CAP_MSG
    DISPLAY:
    INT 21H
    MOV AH,4CH
    INT 21H
    MAIN ENDP
 END MAIN