
.MODEL small
.STACK 200h  


.DATA
Msg DB 13,10,'mensaje 1 $'
Msg1 DB 13,10,'mensaje 2 $'
Msg2 DB 13,10,'mensaje 3 $'
Msg3 DB 13,10,'mensaje 4 $'
Msg4 DB 13,10,'mensaje 5 $'
m DB 13,10,'$'

.CODE
inicio:
    mov ax,@data   
    mov ds,ax

    mov dx,OFFSET Msg
    mov ah,9h
    int 21h  
    
    lea dx,Msg1
    mov ah,9h
    int 21h
    
    lea dx,Msg2
    mov ah,9h
    int 21h
    
    lea dx,Msg3
    mov ah,9h
    int 21h
    
    lea dx,Msg4
    mov ah,9h
    int 21h  
    
    lea dx,m
    mov ah,9h
    int 21h 
    
    mov ah,01h
    int 21h
    mov dl,al
    mov ah,02h
    int 21h 
    
    lea dx,m
    mov ah,9h
    int 21h 
    
    mov ah,01h
    int 21h
    mov dl,al
    mov ah,08h
    int 21h 
    
    lea dx,m
    mov ah,9h
    int 21h 
    
    mov ah,01h
    int 21h
    mov dl,al
    mov ah,02h
    int 21h
    
    mov ah,04ch
    int 21h
    
    end inicio





