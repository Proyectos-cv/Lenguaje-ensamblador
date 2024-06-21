.MODEL small
.STACK 200h  


.DATA
Msg DB 13,10,'suma 1 $'
Msg1 DB 13,10,'resta 2 $'
Msg2 DB 13,10,'multiplicacion 3 $'
Msg3 DB 13,10,'division 4 $'



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
                              
         
    happy: 
        xor cx,cx
        mov ah,01h
        int 21h
        sub al,30h
        mov bl,al
        
        int 21h
        sub al,30h
        mov cl,al
        
        int 21h
        sub al,30h
        add bl,al
        
        int 21h
        sub al,30h
        add cl,al
        
        mov ax,cx
        
        aaa
        mov cx,ax
        add bl,ch
        mov ax,bx
        aam
        mov bx,ax
        mov dl,bh
        add dl,30h
        
        mov ah,02h
        int 21h
        
        mov dl,bl 
        
        add dl,30h
        int 21h
        mov dl,cl
        
        add dl,30h
        int 21h 
        jmp finalizar
    sad:
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
            
            jmp finalizar
    vam:
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
        jmp finalizar
    so:
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
        jmp finalizar   
        
    finalizar:
        mov ah,4ch
        int 21h    
       
    
    end inicio
