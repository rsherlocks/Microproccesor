.MODEL SMALL
.STACK 100H
.DATA 
M1 DB "ENTER A HEXA(A-F): $ "
M2 DB 0DH,0AH,"IN DECIMAL: $"
.CODE


  MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    
    MOV AH,9
    LEA DX,M1
    INT 21H 
    
    MOV AH,1
    INT 21H
    
    MOV BL,AL
    SUB BL,11H
    
    MOV AH,9
    LEA DX,M2
    INT 21H
    
    MOV AH,2
    MOV DL,'1'
    INT 21H
     
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
    END MAIN