.MODEL small
.STACK 200h  


.DATA
Msg DB 'mensaje 1',0Ah,0Dh,'$' 


.CODE
inicio:
    mov ah, 01h
    int 21h
    sub al,30h
    mov bl,al 
    mov ah, 01h
    int 21h    
    sub al,30h
    mul bl  
    add al,30h
    mov dl,al
    mov ah,02h
    int 21h
    
    
    
        
    end inicio