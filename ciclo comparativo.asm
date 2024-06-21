          
.MODEL small
.STACK 200h  


.DATA
Msg DB 'mayor $',0Ah,0Dh,'$'
Msg1 DB 'menor $',0Ah,0Dh,'$'  


.CODE
inicio:          
    mov ah,08h
    int 21h   
    
    sub al,30h
     
    xor ah,ah
    xor cx,cx 
    
    mov cx,ax
    
    mov ax, @data

    mov ds,ax
    
   
    
    imprimir: 
    
    mov ah,08h
    int 21h   
    
    cmp cl,0
    jbe finalizar 
    
    cmp al,bh
    ja mayor
    
    cmp al,bh  
    jb menor
   
    mayor:
    mov bh,al
    jmp etiqueta
    
    
    
    menor:
    mov bl,al
    jmp etiqueta
   
    etiqueta:   
   
    loop imprimir
     
    finalizar: 
    lea dx,Msg
    mov ah,9h
    int 21h
    
    mov ah,02h
    mov dl,bh
    int 21h
    
    lea dx,Msg1
    mov ah,9h
    int 21h
    
    mov ah,02h
    mov dl,bl
    int 21h 
        
        mov ah,4ch
        int 21h
    
               
    end inicio                     
    