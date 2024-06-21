          
.MODEL small
.STACK 200h  


.DATA
Msg DB 'mensaje 1',0Ah,0Dh,'$' 


.CODE
inicio:

    ;pide datos
    mov ah, 01h
    int 21h
    sub al,30h  
    mov bh,al 
    
    mov ah, 01h
    int 21h
    sub al,30h 
    mov bl,al
    
    mov ah, 01h
    int 21h
    sub al,30h
    mov cl, al  
    
    
    mul bl  
    
    aam 
    
    mov ch,ah 
    mov bl,al
    
    mov al,cl
    
    mul bh
    
    add al,ch
    
    aam
    
    mov bh, al
    
    
    mov ch, ah    
    
    add ch,30h
    mov dl, ch
    mov ah, 02h 
    int 21h 
    
    add bh,30h
    mov dl, bh
    mov ah, 02h 
    int 21h 
    
    add bl,30h
    mov dl, bl
    mov ah, 02h 
    int 21h 
        
    end inicio