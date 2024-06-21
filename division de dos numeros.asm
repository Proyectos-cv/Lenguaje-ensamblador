                        
.MODEL small
.STACK 200h  


.DATA
Msg DB 'mensaje 1',0Ah,0Dh,'$' 


.CODE
inicio:

    ;pide datos
    mov ch, 0ah
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
      
    
    cmp cl,bh
    ja salto
    
    cmp cl,bh
    jbe igual
    
    
    
    salto:
    mov al,bh
    mul ch  
    add bl,al
    mov al,bl
    div cl 
    
    cmp cl,ah
    ja segundo
    
    aaa
    mov ch,al
    
    add ah,30h
    
    mov dh,ah
    
    mov dl, dh
    mov ah, 02h 
    int 21h 
    
    add ch,30h
    mov dl, ch
    mov ah, 02h 
    int 21h 
    
    mov ah,4ch
    int 21h
    
    segundo:
    mov ch, al
    
    add dh, 30h
    mov dl, dh
    mov ah, 02h 
    int 21h 
    
    add ch,30h
    mov dl, ch
    mov ah, 02h 
    int 21h
    
    mov ah,4ch
    int 21h
    
    
    igual:
    mov al,bh
    xor ah,ah
    div cl
    mov bh,al
    mov al, ah
    mul ch
    add al,bl
    div cl
       
    mov ch,al   
    
    add bh,30h
    mov dl, bh
    mov ah, 02h 
    int 21h 
    
    add ch,30h
    mov dl, ch
    mov ah, 02h 
    int 21h 
    mov ah,4ch
    int 21h
    
    end inicio
