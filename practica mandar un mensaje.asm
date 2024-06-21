
.MODEL small
.STACK 200h  


.DATA
Msg DB 'mensaje 1',0Ah,0Dh,'$' 


.CODE
inicio:
    mov ah, 01h
    int 21h
    
    mov bl, al
    mov ah, 01h
    int 21h
    
    add al,bl
    
    aaa
    mov bx,ax 
    
      
    add al,30h
    
    mov dl, al
    
    mov ah, 02h
    int 21h  
    
    
    
    mov bl,30h

    
    
    add dl,30h
    mov ah, 02h
    int 21h
        
    end inicio





