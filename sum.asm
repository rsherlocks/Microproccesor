.model small
.stack 100h
.data
m1 db 'enter two integer $'
m2 db 'output $'
.code


  main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,m1
    int 21h
    
    mov ah,1
    int 21h
    
    mov bl,al
    int 21h
    mov cl,al
    add bl,cl 
    
    mov ah,9
    lea dx,m2
    int 21h
    
    
    mov ah,2
    sub bl,48
    mov dl,bl
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
    end main