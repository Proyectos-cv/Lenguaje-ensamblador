org 100h
.MODEL small
.STACK 200h  


.DATA
Msg DB 'mensaje 1',0Ah,0Dh,'$' 


.CODE
inicio:
    
    mov ah,01h
    int 21h
    sub al,30h
    mov bh,al
    
    int 21h
    sub al,30h
    mov bl,al
    
    mov ah,01h
    int 21h
    sub al,30h
    mov ch,al
    
    int 21h
    sub al,30h
    mov cl,al
    
    cmp bl,cl
    ja mayor
    cmp bl,cl
    jb menor
    
    mayor:
        sub bl,cl
        sub bh,ch
         
        mov dl,bh
        add dl,30h
        mov ah, 02h
        int 21h  
        
        mov dl,bl
        add dl,30h 
        mov ah, 02h
        int 21h
         
        mov ah,4ch
        int 21h
        
    menor:
        mov dh,00ah
        mov al,bl
        add al,dh
        sub bh,1h
        
        sub al,cl
        aaa  
        
        mov dh,al
        
        
    
        sub bh,ch
        
        mov dl,bh
        add dl,30h
        mov ah,02h
        int 21h
        
        mov dl,dh
        add dl,30h 
        mov ah,02h
        int 21h 
        
        mov ah,4ch
        int 21h
        
    
    end inicio