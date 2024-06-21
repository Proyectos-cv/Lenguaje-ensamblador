.MODEL small
.STACK 200h  


.DATA
Msg DB 13,10,'1 suma $'
Msg1 DB 13,10,'2 resta $'
Msg2 DB 13,10,'3 multipliacion $'
Msg3 DB 13,10,'4 division $'
Msg4 DB 13,10,'2 be happy do $'
m DB 13,10,'$'
m2 DB 13,10,'' 


me DB 13,10,':) very happy $' 
me1 DB 13,10,':( too sad, son! $' 
me2 DB 13,10,':[ a monster hommie $' 
me3 DB 13,10,':/ so-so $' 
me4 DB 13,10,'XD awwww! $' 




.CODE
inicio:
    mov ax,@data   
    mov ds,ax

    mov dx,OFFSET Msg
    mov ah,9h
    int 21h  
    
    lea dx,Msg1
    mov ah,9h
    int 21h
    
    lea dx,Msg2
    mov ah,9h
    int 21h
    
    lea dx,Msg3
    mov ah,9h
    int 21h    
    
    lea dx,m
    mov ah,9h
    int 21h 
    
    mov ah,08h
    int 21h 
    
    cmp al,'1'
    je happy
    cmp al,'2'
    je sad 
    cmp al,'3'
    je vam 
    cmp al,'4'
    je so
    cmp al,'5'
    je xd     
                              
         
    happy:
        mov ah, 01h
        int 21h
        sub al, 30h
        mov bl, al
        mov ah, 01h
        int 21h
        sub al, 30h
        add al,bl
        
        aaa      
        or ax,3030h
        mov bx,ax 
        
        sub bh,01h
        
        mov ah, 02h 
        mov dl, bh
        int 21h 
        
        mov ah, 02h
        mov dl, bl
        int 21h
        jmp finalizar
    sad:
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
    
        jmp finalizar
    vam: 
        mov cx,0
        mov ah, 01h
        int 21h
        sub al, 30h
        mov bl, al
        mov ah, 01h
        int 21h
        sub al, 30h
        
        jmp sumador
    
    sumador:
        cmp bl,ch
        ja ciclo   
        add cl,30h
        mov ah, 02h 
        mov dl,cl
      
        
        int 21h 
        jmp finalizar  
    ciclo:
        add cl,al
        add ch,1
        JMP sumador
        ret
    so:
        lea dx,me3 
        mov ah,09h
        int 21h 
        jmp finalizar   
    xd:
        lea dx,me4 
        mov ah,09h
        int 21h 
        jmp finalizar
    finalizar:
        mov ah,4ch
        int 21h    
       
    
    end inicio
