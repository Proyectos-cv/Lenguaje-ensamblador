imprime macro cadena
    mov ax,data
    mov ds,ax
    mov ah,09
    mov dx,offset cadena
    int 21h
endm 

recupera macro cadena
    mov ax,data
    mov ds,ax
    mov ah,09
    mov dx,offset cadena
    int 21h
endm 
    

.model small
.stack
.data                     
  
cadena db 3 dup('???$')  
cadena2 db 3 dup('123$')

msj2 db 0ah,0dh,'inserta nombre de usuario','$'  
msj3 db 0ah,0dh,'inserta contraseña','$'
msj4 db 0ah,0dh,'NO COINCIDE','$'
msj5 db 0ah,0dh,'COINCIDE','$'


.code
inicio:

menu: 
    imprime msj2
    lea SI,cadena
    mov cx , 3
    regresa:
        mov ah,07h
        int 21h
        cmp al,13
        je termina2
        mov cadena[SI],al
        inc SI
        mov dl,42d
        mov ah,02h
        int 21h
        loop regresa
        
 
    
    termina2:
        push ES 
        mov AX,DS 
        mov ES,AX 
        mov cx,100 
        lea SI,cadena 
        lea DI,cadena2 
        repe cmpsb 
        JNE no_igual 
        jmp igual 
        pop ES 
 
   
    
 no_igual: 
     lea DX,msj4 
     jmp fin 
 ;====================================================== 
 igual: 
    lea DX,msj5
 ;======================================================= 
 fin: 
 mov ah,09h 
 int 21h 
mov ah,04ch
int 21h
end
     
;https://www.youtube.com/watch?v=qz4ZJmaJjuI        
    
    
        
         