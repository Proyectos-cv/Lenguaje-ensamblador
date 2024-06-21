               print macro char
  mov ah,09h
  mov dx,offset char
  int 21h
endm

asterisco macro
    mov dl,42d  
    mov ah,02h   
    int 21h
endm

cerrarprograma macro
    mov ah,04ch
    int 21h
endm

printsim macro char
  mov ah,02h
  int 21h
endm

introducir macro
    mov ah,07h
    int 21h
    mov dl, al
endm
.model small
.stack
.data   




;cadena db ' ? ? ? ? ? $' 
cadena0 db ' ? ?$'
contra db '123$'     

mensaje1 DB 'numeros de 5',0Ah,0Dh,'$'
Msj1 DB 'escribe numeros de 5',0Ah,0Dh,'$' 
Msj2 DB 'es igual',0Ah,0Dh,'$'  
Msj3 DB 'no es igual',0Ah,0Dh,'$'  


con db 1
cont0 db 0
.code

inicio:
          
  call uno
  
  call uno
  
  call uno
  
  call uno 
  
  call uno 
  
  call uno 
  
  call uno 
  
  call uno
  
  call tres

  cerrarprograma

dos proc  
  mov ax,@data
  mov ds,ax
  mov ah,09h
  mov dx,offset mensaje1
  int 21h
ret 
dos endp  

uno proc  
  mov ah, 01h
   int 21h
  sub al,30h 
  cmp al,5h
  je igual
ret 
uno endp      
          
igual:
add bh,1h 
ret     

tres proc  
    add bh,30h
   mov dl, bh
  mov ah,02h
 
  int 21h
ret 
tres endp 