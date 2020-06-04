.MODEL SMALL
.STACK 100H
.DATA
M1 DB "HELLO WORLD! $"
.CODE
   
   
   MAIN PROC
     
     
     MOV AX,@DATA
     MOV DS,AX
      
     MOV AH,9
     LEA DX,M1
     INT 21H
     
     
     MOV AH,4CH
     INT 21H
     
     MAIN ENDP 
   END MAIN