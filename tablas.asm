          
.MODEL small
.STACK 200h  


.DATA
Msg DB '- $',0Ah,0Dh,'$' 


.CODE
inicio:          
    mov ah,08h
    int 21h   
    
    sub al,30h
    
    mov bl,al
     
    xor ah,ah
    xor cx,cx 
    
    mov cx, 000ah
    
    imprimir:  
        mov al,bl
        mul cl
        
        
        aam
        
        mov dh,al
        
        add ah,30h
        mov dl,ah
        mov ah,02h
        int 21h 
        
        
        add dh,30h
        mov dl,dh
        mov ah,02h
        int 21h   
        
        mov ax,@data   
        mov ds,ax
    
        mov dx,OFFSET Msg
        mov ah,9h
        int 21h 
        
    loop imprimir
    ;loope loop loopne loopz loopnz
        
    end inicio     