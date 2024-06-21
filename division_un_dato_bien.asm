                                                       
.MODEL small
.STACK 200h  


.DATA
Msg DB 'mensaje 1',0Ah,0Dh,'$' 


.CODE
inicio:   
    ;mayor y despues el menor   
    xor ax,ax;limpiamos el registro
    
    mov ah, 01h
    int 21h
    sub al,30h
    mov bh,al
     
    mov ah, 01h
    int 21h    
    sub al,30h
    mov bl,al

    mov al,bh
 
    xor ah,ah
    div bl
      
    add al,30h
    mov dl,al
    mov ah,02h
    int 21h
    
    
        
    end inicio