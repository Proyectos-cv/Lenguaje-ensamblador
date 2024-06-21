                    
.MODEL small
.STACK 200h  


.DATA
Msg DB 'mensaje 1',0Ah,0Dh,'$' 


.CODE
inicio:   
    ;primero menor y despues mayor   
    xor ax,ax;limpiamos el registro
    mov ah, 01h
    int 21h
    sub al,30h
    mov bl,al 
    mov ah, 01h
    int 21h    
    sub al,30h
    xor ah,ah
    div bl
      
    add al,30h
    mov dl,al
    mov ah,02h
    int 21h
    
    
        
    end inicio