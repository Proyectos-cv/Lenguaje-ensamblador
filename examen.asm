.MODEL small
.STACK 200h  


.DATA
Msg DB 13,10,'hola, Carlos Ivan Muñoz $'
Msg1 DB 13,10,'eres mayor de edad? 1/si 2/no $'

m DB 13,10,'$'
m2 DB 13,10,'' 


me DB 13,10,'ya puedes pistear $' 
me1 DB 13,10,'echale ganas ya creceras $' 
 




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
    
    lea dx,m
    mov ah,9h
    int 21h 
    
    mov ah,08h
    int 21h 
    
    cmp al,'1'
    je happy
    cmp al,'2'
    je sad 
    
                              
         
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
    finalizar:
        mov ah,4ch
        int 21h    
       
    
    end inicio
