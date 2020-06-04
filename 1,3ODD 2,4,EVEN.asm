.MODEL SMALL
.STACK 100H
.DATA
M1 DB 0DH,0AH,"ODD $"
M2 DB 0DH,0AH,"EVEN $"
.CODE


MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1
    INT 21H
    
    CMP AL,'1'
    JE ODD
    CMP AL,'3'
    JE ODD
    
    
    CMP AL,'2'
    JE EVEN
    CMP AL,'4'
    JE EVEN
    
    JMP EXIT
    
    ODD:
    MOV AH,9
    LEA DX,M1
    INT 21H
    JMP EXIT 
    
    EVEN:
    
    MOV AH,9
    LEA DX,M2
    INT 21H
    JMP EXIT
    
    
    
    
    EXIT:
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN
    
    
    