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
  
  call dos 
  
  call tres 
  
  call cuatro
  
  call cinco

  cerrarprograma

uno proc  
  mov ax,@data
  mov ds,ax
  mov ah,09h
  mov dx,offset mensaje1
  int 21h
ret 
uno endp  

dos proc  
  mov ah, 08h
   int 21h
  sub al,30h 
  mov bl,5
  mul bl
  mov bh,al
ret 
dos endp      


tres proc  
  mov ax,@data
  mov ds,ax
  mov ah,09h
  mov dx,offset Msj1
  int 21h
ret 
tres endp  

cuatro proc  
  mov ah, 08h
   int 21h
  sub al,30h 
  mov bl,5
  mul bl
  mov bl,al
ret 
cuatro endp 

cinco proc  
cmp bl,bh
je igual  

 mov ax,@data
  mov ds,ax
  mov ah,09h
  mov dx,offset Msj3
  int 21h
 mov ah,04ch
    int 21h



  
ret 
cinco endp

igual:
     mov ax,@data
  mov ds,ax
  mov ah,09h
  mov dx,offset Msj2
  int 21h
mov ah,04ch
    int 21h

