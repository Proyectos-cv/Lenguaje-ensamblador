.MODEL small
.STACK 200h  


.DATA
Msg DB 13,10,'hi $'
Msg1 DB 13,10,'how are $'
Msg2 DB 13,10,'you $'
Msg3 DB 13,10,'1 ok $'
Msg4 DB 13,10,'2 be happy dog $'
m DB 13,10,'$'
m2 DB 13,10,''

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
    
    lea dx,m
    mov ah,9h
    int 21h 
    
    mov ah,08h
    int 21h 
    
    lea dx,m
    mov ah,9h
    int 21h 
    
     
    lea dx,Msg3
    mov ah,9h
    int 21h
    
    lea dx,Msg4
    mov ah,9h
    int 21h
    
    mov ah,04ch
    int 21h 
    
    end inicio
