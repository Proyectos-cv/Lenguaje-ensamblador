.MODEL small
.STACK 200h  


.DATA
Msg DB 13,10,'hi $'
Msg1 DB 13,10,'how are $'
Msg2 DB 13,10,'you $'
Msg3 DB 13,10,'1 ok $'
Msg4 DB 13,10,'2 be happy dog $'
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
        lea dx,me
        mov ah,09h
        int 21h 
        jmp finalizar
    sad:
        lea dx,me1
        mov ah,09h
        int 21h 
        jmp finalizar
    vam:
        lea dx,me2 
        mov ah,09h
        int 21h 
        jmp finalizar
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
