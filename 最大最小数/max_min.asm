title max_min
 include irvine32.inc
 .data
  t0 db 12,13,10,37,92,94,10
  count EQU ($-t0)
  max db -128
  min db 127
 .code
 main proc
  mov cx,count
  mov si,0
  xor ax,ax
  xor bx,bx
  mov al,max
  mov bl,min
  again:cmp t0[si],al
	jg max_number
	jl next
  max_number:mov al,t0[si]
	     mov max,al
	     jmp next
  
  next:cmp t0[si],bl
       jl min_number
       jg final
  min_number:mov bl,t0[si]
	     mov min,bl
	     jmp final
  final:inc si
        loop again
   exit
 main endp
 end main
  