print macro char
  mov ah,09h
  mov dx,offset char
  int 21h
endm


cerrarprograma macro
    mov ah,04ch
    int 21h
endm

.model small
.stack
.data   
     

mensaje1 DB 'numeros de 5',0Ah,0Dh,'$'
  


con db 1
cont0 db 0
.code

inicio:
          
  call uno
  
  mov cx , 38h    
  mov bl,60h
  
  imprimir:
        add bl,1h
        mov dl,bl
        mov ah, 02h
        int 21h
       
        sub cl, 1h 
        
        
    loop imprimir
  
  

  cerrarprograma

uno proc  
  mov ax,@data
  mov ds,ax
  mov ah,09h
  mov dx,offset mensaje1
  int 21h
ret 
uno endp  


