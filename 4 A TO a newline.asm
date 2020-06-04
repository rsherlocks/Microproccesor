.MODEL SMALL
.STACK 100H
.DATA

M1 DB "INPUT: $"
M2 DB "OUTPUT: $"   

   MAIN PROC 
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,M1
    INT 21H
    
    MOV AH,1 
    INT 21H
    
    MOV BL,AL
    INT 21H
    
    MOV BH,AL
    INT 21H
    
    MOV CL,AL
    INT 21H
    
    MOV CH,AL
    INT 21H
    
    
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H 
    
    MOV AH,9
    LEA DX,M2
    INT 21H 
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
   
    
    MOV AH,2
    MOV DL,BL
    ADD DL,32
    INT 21H  
    
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
     
    
    MOV DL,BH
    ADD DL,32
    INT 21H 
    
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    
    
    MOV DL,CL
    ADD DL,32
    INT 21H  
           
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H       
    
    
    MOV DL,CH
    ADD DL,32
    INT 21H
    
   
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
    END MAIN
    
    