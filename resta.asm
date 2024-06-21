          
.MODEL small
.STACK 200h  


.DATA
Msg DB 'mensaje 1',0Ah,0Dh,'$' 


.CODE
inicio:
    mov ah, 01h
    int 21h
    sub al, 30h
    mov bl, al
    mov ah, 01h
    int 21h
    sub al, 30h
    
    sub bl,al
    
    add bl,30h
    
    mov ah, 02h 
    mov dl, bl
    int 21h 
    
    
        
    end inicio