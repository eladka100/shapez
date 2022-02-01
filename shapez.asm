IDEAL
MODEL small
STACK 100h
DATASEG

X dw 0000h
Y dw 0000h
mouseX db 00h
mouseY db 00h
mouseP db 00h
key db 00h
key_ascii db 00h
bricks dw offset pipe1, offset pipe2, offset rotator, offset trash, offset cutter, offset shuffler, offset painter, offset stacker
brick db 00h
empty db 08h
brick_func1 dw 3 dup(0000h)
brick_func2 dw 3 dup(0000h)

pipe1 db 07h, 07h, 0fh, 0fh, 07h, 07h, 0fh, 0fh, 07h, 07h, 07h, 07h, 0fh, 07h, 07h, 07h, 07h, 0fh, 07h, 07h, 07h, 07h, 0fh, 0fh, 0fh, 0fh, 0fh, 0fh, 07h, 07h, 07h, 07h, 0fh, 0fh, 0fh, 0fh, 0fh, 0fh, 07h, 07h, 07h, 07h, 0fh, 0fh, 07h, 07h, 0fh, 0fh, 07h, 07h, 07h, 07h, 0fh, 07h, 07h, 07h, 07h, 0fh, 07h, 07h, 07h, 07h, 0fh, 0fh, 0fh, 0fh, 0fh, 0fh, 07h, 07h, 07h, 07h, 0fh, 0fh, 0fh, 0fh, 0fh, 0fh, 07h, 07h, 07h, 07h, 0fh, 0fh, 07h, 07h, 0fh, 0fh, 07h, 07h, 07h, 07h, 0fh, 07h, 07h, 07h, 07h, 0fh, 07h, 07h
pipe2 db 07h, 07h, 07h, 07h, 07h, 07h, 07h, 07h, 07h, 07h, 07h, 07h, 07h, 07h, 07h, 07h, 07h, 07h, 07h, 07h, 07h, 07h, 0fh, 0fh, 0fh, 0fh, 0fh, 0fh, 0fh, 0fh, 07h, 07h, 0fh, 0fh, 0fh, 0fh, 0fh, 0fh, 07h, 0fh, 07h, 07h, 0fh, 0fh, 07h, 07h, 07h, 0fh, 07h, 07h, 07h, 07h, 0fh, 0fh, 0fh, 07h, 07h, 0fh, 07h, 07h,07h, 07h, 0fh, 0fh, 0fh, 0fh, 07h, 0fh, 07h, 0fh, 07h, 07h, 0fh, 0fh, 0fh, 0fh, 0fh, 0fh, 0fh, 0fh, 07h, 07h, 0fh, 0fh, 07h, 07h, 0fh, 0fh, 07h, 07h, 07h, 07h, 0fh, 07h, 07h, 07h, 07h, 0fh, 07h, 07h
cutter db 0ch, 0ch, 0ch, 00h, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 00h, 0ch, 0ch, 0ch, 0ch, 0ch, 00h, 00h, 00h, 0ch, 0ch, 00h, 0ch, 0ch, 0ch, 0ch, 00h, 0ch, 0ch, 00h, 00h, 00h, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 00h, 0ch, 0ch, 0ch, 0ch, 00h, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 00h, 0ch, 0ch, 0ch, 0ch, 00h, 0ch, 0ch, 00h, 0ch, 0ch, 0ch, 0ch, 00h, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 00h, 00h, 00h, 0ch, 0ch, 0ch, 00h, 00h, 0ch, 0ch, 0ch, 00h, 00h, 00h, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 00h, 0ch, 0ch, 0ch, 0ch, 0ch, 00h, 00h, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 00h, 0ch, 0ch, 0ch, 00h, 00h, 0ch, 0ch, 00h, 00h, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 00h, 0ch, 00h, 0ch, 0ch, 00h, 0ch, 00h, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 00h, 0ch, 0ch, 0ch, 00h, 0ch, 0ch, 0ch, 0ch, 00h, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 00h, 00h, 00h, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch
shuffler db 00h, 00h, 07h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 07h, 00h, 00h, 00h, 00h, 07h, 07h, 07h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 07h, 07h, 07h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 07h, 07h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 07h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 07h, 00h, 00h, 00h, 00h, 07h, 07h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 07h, 07h, 07h, 07h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 07h, 07h, 07h, 07h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 07h, 00h, 00h, 00h, 00h, 07h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 07h, 07h, 00h, 00h, 00h, 00h, 00h, 00h, 07h, 07h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 07h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 07h, 00h, 00h, 00h, 00h, 00h, 00h, 07h, 07h, 07h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 07h, 07h, 07h, 00h, 00h
rotator db 0ah, 0ah, 0ah, 0ah, 0fh, 0fh, 0ah, 0ah, 0ah, 0ah, 0ah, 0ah, 0ah, 0ah, 0ah, 0ah, 0ah, 0ah, 0ah, 0ah, 0ah, 0ah, 09h, 0ah, 0ah, 0ah, 09h, 09h, 0ah, 0ah, 0ah, 0ah, 09h, 09h, 0ah, 0ah, 09h, 0ah, 0ah, 0ah, 0ah, 0ah, 0ah, 0ah, 09h, 09h, 0ah, 0ah, 0ah, 0ah, 0ah, 0ah, 0ah, 0ah, 09h, 09h, 0ah, 0ah, 0ah, 0ah, 0ah, 0ah, 0ah, 09h, 0ah, 0ah, 09h, 09h, 0ah, 0ah, 0ah, 0ah, 09h, 09h, 0ah, 0ah, 0ah, 09h, 0ah, 0ah, 0ah, 0ah, 0ah, 0ah, 0fh, 0fh, 0ah, 0ah, 0ah, 0ah, 0ah, 0ah, 0ah, 0fh, 0ah, 0ah, 0fh, 0ah, 0ah, 0ah
painter db 0dh, 0dh, 0dh, 00h, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 00h, 00h, 00h, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 00h, 00h, 0fh, 0fh, 0fh, 0fh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 00h, 0dh, 0dh, 0dh, 00h, 00h, 00h, 0fh, 00h, 0fh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 00h, 00h, 00h, 0dh, 00h, 00h, 00h, 0fh, 0fh, 0fh, 0dh, 00h, 00h, 00h, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 00h, 0dh, 0dh, 0dh, 00h, 00h, 00h, 0fh, 0fh, 0fh, 0dh, 0dh, 0dh, 00h, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 00h, 0dh, 0dh, 0dh, 00h, 0fh, 00h, 0fh, 0fh, 0fh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 00h, 00h, 00h, 00h, 0fh, 0fh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 00h, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 00h, 0dh, 0dh, 0dh, 0dh, 0dh, 00h, 00h, 00h, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 00h, 00h, 00h, 0dh, 0dh
stacker db 01h, 01h, 01h, 00h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 00h, 00h, 00h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 00h, 00h, 00h, 00h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 00h, 01h, 01h, 01h, 00h, 00h, 00h, 01h, 01h, 00h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 00h, 00h, 00h, 01h, 00h, 00h, 01h, 01h, 00h, 00h, 01h, 00h, 00h, 00h, 01h, 01h, 01h, 01h, 01h, 01h, 00h, 01h, 01h, 01h, 00h, 01h, 01h, 00h, 00h, 00h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 00h, 01h, 01h, 01h, 01h, 01h, 00h, 00h, 00h, 00h, 01h, 01h, 01h, 00h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 00h, 00h, 00h, 00h, 00h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 00h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 00h, 01h, 01h, 01h, 01h, 01h, 00h, 00h, 00h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 00h, 00h, 00h, 01h, 01h
trash db 04h, 04h, 00h, 00h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 00h, 04h, 04h, 04h, 00h, 00h, 04h, 04h, 04h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 04h, 04h, 04h, 00h, 00h, 04h, 04h, 04h, 00h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 00h, 00h, 04h, 04h

clockwise_seq db 110000b, 111000b, 100000b, 101000b, 1000b, 00h, 11000b, 10000b
counter_clockwise_seq db 101000b, 100000b, 111000b, 110000b, 10000b, 11000b, 00h, 1000b

inout_pipe1 db 10110b, 10110b, 11100b, 11100b, 00010b, 00010b, 01000b, 01000b
inout_pipe2 db 01110b, 00110b, 01100b, 00100b, 11010b, 10010b, 11000b, 10000b
inout_func dw offset strait, offset turned, offset strait, offset EX, offset only_output, offset strait, offset only_input, offset only_input

board dw 500 dup(0040h)
dynamic_board db 1500 dup(00h)

noth db 34 dup (0fh)
squere db 00h, 00h, 00h, 00h, 00h, 00h, 07h, 07h, 07h, 07h, 00h, 07h, 07h, 07h, 07h, 00h, 07h, 07h, 07h, 07h,  00h, 07h, 07h, 07h, 00h
db 00h, 00h, 00h, 00h, 07h, 07h, 00h, 07h, 07h
clover db 0fh, 00h, 00h, 00h, 0fh, 00h, 07h, 07h, 07h, 00h, 00h, 07h, 07h, 07h, 07h, 00h, 07h, 07h, 07h, 07h, 0fh, 00h, 07h, 07h, 00h
db 0fh, 00h, 0fh, 00h, 07h, 00h, 0fh, 00h, 0fh
star db 00h, 00h, 0fh, 0fh, 0fh, 00h, 07h, 00h, 00h, 0fh, 0fh, 00h, 07h, 07h, 00h, 0fh, 00h, 07h, 07h, 07h, 0fh, 0fh, 00h, 07h, 00h
db 00h, 00h, 0fh, 00h, 07h, 00h, 0fh, 00h, 0fh

im_funcs1 dw offset reg_func1, 0000h
im_funcs2 dw offset reg_func2, 0000h
im_funcs3 dw 0000h




CODESEG	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
proc enter_graphic_mode
	push ax
	push bx
	push cx
	
	MOV AH,00h                   
	MOV AL,13h                   
	INT 10h	
	
	MOV AX, 1
	INT 33h
	MOV AX, 2
	INT 33h
	MOV DX, 498
	MOV AX, 7
	INT 33h
	
	pop cx
	pop bx
	pop ax
	ret 
endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
proc enter_text_mode
	push ax
    mov ah , 0
    mov al, 2
    int 10h
	pop ax
    ret
endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
proc read_mouse
	push ax
	MOV ax, 3h
	INT 33h
	shr cx, 1
	pop ax
	ret
endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
proc read_keyboard
	push ax
	mov ax, 0100h
	int 16h
	jz no_key_prsd
	mov ah, 0
	int 16h
	mov [key], ah
	mov [key_ascii], al
	jmp finish_keyboard_reading
	no_key_prsd:
	mov [key], 0
	mov [key_ascii], 0
	finish_keyboard_reading:
	pop ax
	ret
endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
proc paint_pixel
	push ax
	push bx
	push cx
	push dx
	mov cx, [X]
	mov dx, [Y]
	mov ah, 0ch
	int 10h
	pop dx
	pop cx
	pop bx
	pop ax
	ret
endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
proc backround
	push ax
	push bx
	mov bx, [X]
	push bx
	mov bx, [Y]
	push bx
	mov [X], 0
	mov [Y], 0
	mov al, 08h
	
	backround_loop:
			call paint_pixel
			inc [X]
			cmp [X], 320
			jne backround_loop
		mov [X], 0
		inc [Y]
		cmp [Y], 200
	jne backround_loop
	
	pop [Y]
	pop [X]
	pop bx
	pop ax
	ret
endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
proc commit_funcs
	push di
	push ax
	func_loop:
		mov ax, [di]
		cmp ax, 0000h
		je finish_commiting
		call ax
		inc di
		inc di
		jmp func_loop
	finish_commiting:
	pop ax
	pop di
	ret
endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
proc paint_image
	push si
	push di
	push ax
	push [X]
	push [Y]
	push bx
	push cx
	push bp
	mov bp, sp
	add bp, 18
	mov di, [bp]
	
	mov cx, 0
	paint_loop:
			mov al, [si]
			call paint_pixel
			inc si
			call commit_funcs
			inc cl
			cmp cl, bl
			jne paint_loop
		push di
		mov di, [bp+2]
		call commit_funcs
		pop di
		inc ch
		mov cl, 0
		cmp ch, bh
		jne paint_loop
	
	pop bp
	pop cx
	pop bx
	pop [Y]
	pop [X]
	pop ax
	pop di
	pop si
	ret
endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
proc X1
	push dx
	mov dh, 0h
	shl dl, 1
	and dl, 2h
	inc [X]
	sub [X], dx
	pop dx
	ret
endp
proc X2
	push ax
	push dx
	mov dh, 0
	and dl, 2h
	inc [X]
	sub [X], dx
	mov al, bl
	mov ah, 0
	sub [Y], ax
	pop dx
	mov ah, dl
	shl ah, 1
	and ah, 2h
	mul ah
	add [Y], ax
	pop ax
	ret
endp
proc Y1
	push dx
	mov dh, 0h
	shl dl, 1
	and dl, 2h
	inc [Y]
	sub [Y], dx
	pop dx
	ret
endp
proc Y2
	push ax
	push dx
	mov dh, 0
	and dl, 2h
	inc [Y]
	sub [Y], dx
	mov al, bl
	mov ah, 0
	sub [X], ax
	pop dx
	mov ah, dl
	shl ah, 1
	and ah, 2h
	mul ah
	add [X], ax
	pop ax
	ret
endp
proc same
	dec si
	ret
endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
proc det_flip
	push ax
	mov ah, 0
	horizontal:
		test dl, 1h
		jz vertical
		mov al, bl
		add [X], ax
		dec [X]
		
	vertical:
		test dl, 2h
		jz finish_det
		mov al, bh
		add [Y], ax
		dec [Y]
	
	finish_det:
	pop ax
	ret
endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
proc put_brick
	push ax
	push [X]
	push [Y]
	push bx
	push cx
	push dx
	push si
	push di
	mov al, [brick]
	and ax, 111b
	shl ax, 1
	mov di, offset bricks
	add di, ax
	mov si, [di]
	mov al, [brick]
	mov dl, al
	shr dl, 3
	and dl, 3h
	mov bh, 10
	mov ch, 0
	mov dx, 0000h
	test al, 4h
	jz size1
	jmp size2
	size1:
		mov bl, 10
		jmp check_grey
	size2:
		mov bl, 20
		jmp check_grey
	
	check_grey:
		test al, 40h
		jz gn
		jmp gy
		gn:
			mov [brick_func1+2], 0000h
			jmp diagonal
		gy:
			mov [brick_func1+2], offset same
			mov si, offset empty
			jmp diagonal
	
	diagonal:
		push dx
		push bx
		test al, 20h
		jz dn
		xchg bl, bh
		shr dl, 1
		jnc dy
		or dl, 2h
		dy:
			mov [brick_func2], offset X2
			mov [brick_func1], offset Y1
			jmp paint_brick
		dn:
			mov [brick_func2], offset Y2
			mov [brick_func1], offset X1

	
	paint_brick:
		call det_flip
		pop bx
		pop dx
		push offset brick_func2
		push offset brick_func1
		call paint_image
		pop ax
		pop ax
	
	pop di
	pop si
	pop dx
	pop cx
	pop bx
	pop [Y]
	pop [X]
	pop ax
	ret
endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
proc put_shape
	push ax
	push bx
	push cx
	push dx
	push si
	push di
	mov bl, 0
	mov cx, 101h
	mov di, 0
	corner_loop:
		

	pop di
	pop si
	pop dx
	pop cx
	pop bx
	pop ax
	ret
endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
proc show_tile
	push si
	push ax
	push bx
	push cx
	mov cx, [X]
	push cx
	mov cx, [Y]
	push cx
	
	mov bl, [mouseX]
	mov bh, [mouseY]
	call access_main
	mov cl ,10
	mov ah, 0
	mov al, bl
	mul cl
	mov [X], ax
	mov ah, 0
	mov al, bh
	mul cl
	mov [Y], ax 

	mov ax, [si]
	mov ah, [brick]
	mov [brick], al
	call put_brick
	mov [brick], ah
	
	pop [Y]
	pop [X]
	pop cx
	pop bx
	pop ax
	pop si
	ret
endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;	
proc mousing
	push si
	push ax
	push bx
	push cx
	push dx
	mov bx, [X]
	push bx
	mov bx, [Y]
	push bx
	
	call read_mouse
	mov [mouseP], bl
	mov bl, 10
	mov ax, cx
	div bl
	sub cl, ah
	push ax
	mov ax, dx
	div bl
	sub dl, ah
	
	
	cmp [mouseY], al
	pop ax
	jne mousing_noteq
	cmp [mouseX], al
	jne mousing_noteq
	jmp mousing_eq
	
	mousing_noteq:
		call show_tile
		left_tile:
			cmp [mouseX], 0h
			je right_tile
			sub [mouseX], 1h
			call show_tile
			add [mouseX], 1h
			
		right_tile:
			cmp [mouseX], 24
			je top_tile
			add [mouseX], 1h
			call show_tile
			sub [mouseX], 1h
		
		top_tile:
			cmp [mouseY], 0h
			je bottom_tile
			sub [mouseY], 1h
			call show_tile
			add [mouseY], 1h
			
		bottom_tile:
			cmp [mouseY], 19
			je update_mouse
			add [mouseY], 1h
			call show_tile
			sub [mouseY], 1h
		
		update_mouse:
			mov ax, cx
			div bl
			mov [mouseX], al
			mov ax, dx
			div bl
			mov [mouseY], al
		
	mousing_eq:
		mov [X], cx
		mov [Y], dx
		call put_brick
	
	cmp [mouseP], 0h
	je finish_mousing
	mov bl, [mouseX]
	mov bh, [mouseY]
	cmp [mouseP], 1h
	je left_click
	cmp [mouseP], 2h
	je right_click
	
	left_click:
		call check_empty
		jnz finish_mousing
		call save_tile
		jmp finish_mousing
	
	right_click:
		call delete
		jmp finish_mousing
	
	finish_mousing:
	pop [Y]
	pop [X]
	pop dx
	pop cx
	pop bx
	pop ax
	pop si
	ret
endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
proc choose_brick
	push ax
	push cx
	push dx
	call read_keyboard
	cmp [key], 0
	je change_brick_help
	cmp [key], 0ah
	jb change_brick
	cmp [key], 13h
	je change_rotation
	cmp [key], 21h
	je flip
	jmp finish_brick_choosing
	
	change_brick:
		mov ah, [key]
		sub ah, 2h
		and [brick], 11111000b
		add [brick], ah
	
	change_rotation:
		mov al, [brick]
		shr al, 3
		cmp [key_ascii], 72h
		je clockwise
		cmp [key_ascii], 52h
		je counter_clockwise
		jmp finish_brick_choosing
		
		clockwise:
			mov si, offset clockwise_seq
			jmp rotate
		counter_clockwise:
			mov si, offset counter_clockwise_seq
			jmp rotate
		rotate:
			cmp [mouseY], 19
			je finish_brick_choosing
			mov ah, 0
			add si, ax
			mov ah, [si]
			and [brick], 11000111b
			or [brick], ah
			jmp finish_brick_choosing
	change_brick_help:
		jmp nothing_changed
	
			
	flip:
		xor [brick], 8h
		jmp finish_brick_choosing
	
	
	finish_brick_choosing:
		inc [mouseX]
		call show_tile
		dec [mouseX]
		inc [mouseY]
		call show_tile
		dec [mouseY]
		mov al, [brick]
		and al, 100b
		mov ah, [brick]
		and ah, 100000b
		shr ah, 3
		and al, ah
		shr al, 2
		mov cl, 10
		mul cl
		mov dx, 199
		sub dl, al
		mov cx, 0
		push ax
		mov ax, 8
		int 33h
		pop ax
		mov dx, 239
		shl dx, 1
		add dl, al
		mov ax, 7
		int 33h
	nothing_changed:
		pop dx
		pop cx
		pop ax
		ret
endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
proc access_board
	push ax
	push bx
	push cx
	
	mov si, offset board
	mov ah, 0
	mov al, bl
	shl ax, 1
	add si, ax
	mov ah, 0
	mov al, bh
	mov cl, 50
	mul cl
	add si, ax
	
	pop cx
	pop bx
	pop ax
	ret
endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
proc access_main
	push ax
	push cx
	mov cl, 10
	call access_board
	mov ax, [si]
	and ah, 1h
	cmp ah, 1h
	jne finish_accessing
	mov ah, 0
	
	and al, 20h
	cmp al, 20h
	je access_vertical
	jne access_horizontal
	
	access_vertical:
		sub bh, 1
		jmp finish_accessing
	access_horizontal:
		sub bl, 1
		jmp finish_accessing
	finish_accessing:
		call access_board
		pop cx
		pop ax
	ret
endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
proc access_inout
	push ax
	call access_board
	mov ax, [si]
	shr ah, cl
	and ah, 110b
	cmp ah, 10b
	jb input_horizontal
	jmp input_vertical
	
	input_vertical:
		and ah, 1h
		shl ah, 1
		add bh, ah
		sub bh, 1
		jmp finish_inputing
	input_horizontal:
		and ah, 1h
		shl ah, 1
		add bl, ah
		sub bl, 1
		jmp finish_inputing
	
	finish_inputing:
		call access_board
	
	pop ax
	ret
endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
proc check_inout
	push ax
	push dx
	push bx
	push si
	push di
	cmp cl, 1
	je check_input
	jmp check_output
	
	check_input:
		call access_board
		push si
		call access_inout
		mov di, si
		pop si
		jmp checking_inout
	check_output:
		call access_board
		mov di, si
		call access_inout
		jmp checking_inout
	
	checking_inout:
		mov ax, [di]
		mov dx, [si]
		push ax
		and al, 111b
		cmp al, 3h
		pop ax
		je finish_checking_inout
		push dx
		and dl, 111b
		cmp dl, 3h
		pop dx
		je has_output
		test dl, 1000000b
		jnz finish_checking_inout
		shl dh, 2
		xor dh, ah
		shr dh, 3
		and dh, 11h
		cmp dh, 1b
		je has_output
		jmp finish_checking_inout
		
	has_output:
		and ah, 11011111b
		or ah, 20h
		mov [di], ax
	
	finish_checking_inout:
	pop di
	pop si
	pop bx
	pop dx
	pop ax
	ret
endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
proc check_empty
	push si
	push ax
	push bx
	push cx
	mov ch, 0

	check_selected:
		call access_board
		mov ax, [si]
		test al, 1000000b
		jz not_empty
		cmp ch, 1
		je is_empty

	mov ah, [brick]
	shr ah, 3
	jnc is_empty
	shr ah, 3
	jc check_below
	jmp check_side
	
	check_side:
		inc bl
		inc ch
		jmp check_selected
	check_below:
		inc bh
		inc ch
		jmp check_selected
	
	is_empty:
		cmp ah, ah
		jmp finish_checking
	not_empty:
		cmp ch, 2
		jmp finish_checking
	finish_checking:
		pop cx
		pop bx
		pop ax
		pop si
	ret
endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
proc save_tile
	push ax
	push bx
	push cx
	push dx
	push si
	mov al, [brick]
	
	size_saving:
		and al, 111b
		shl al, 1
		mov si, offset inout_func
		mov dx, [si]
		mov cx, offset strait
		push offset finish_saving
		test al, 1000b
		jz save_1squere
		jmp save_2squere
	
	save_1squere:
		push dx
		mov ch, 0
		ret
	
	save_2squere:
		mov al, [brick]
		test al, 1000b
		jz con_2squere
		xchg cx, dx
		con_2squere:
		push dx
		push offset second_tile
		push cx
		mov ch, 0
		ret
	
	strait:
		mov si, offset inout_pipe1
		mov al, [brick]
		shr al, 3
		and al, 111b
		mov ah, 0
		add si, ax
		mov ah, [si]
		mov al, [brick]
		call access_board
		or ah, ch
		mov [si], ax
		mov cl, 1 
		call check_inout
		mov cl, 3
		call check_inout
		ret
	
	finish_saving_help:
		jmp finish_saving
		
	turned:
		mov si, offset inout_pipe2
		mov al, [brick]
		shr al, 3
		and al, 111b
		mov ah, 0
		add si, ax
		mov ah, [si]
		mov al, [brick]
		call access_board
		mov [si], ax
		mov cl, 1
		call check_inout
		mov cl, 3
		call check_inout
		ret
			
	EX:
		mov ah, 0
		mov cl, 1
		mov al, [brick]
		call access_board
		EX_loop:			
			mov [si], ax
			call check_inout
			add ah, 10b
			cmp ah, 1000b
			jne EX_loop
		ret
	
	only_output:
		mov si, offset inout_pipe1
		mov al, [brick]
		shr al, 3
		and al, 111b
		xor al, 111b
		mov ah, 0
		add si, ax
		mov ah, [si]
		mov al, [brick]
		call access_board
		or ah, ch
		mov [si], ax
		mov cl, 3
		call check_inout
		ret
	
	only_input:
		mov si, offset inout_pipe2
		mov al, [brick]
		shr al, 3
		and al, 111b
		xor al, 1b
		mov ah, 0
		add si, ax
		mov ah, [si]
		mov al, [brick]
		call access_board
		or ah, ch
		mov [si], ax
		mov cl, 1
		call check_inout
		ret
	
	second_tile:
		mov al, [brick]
		shr al, 5
		and al, 1b
		inc bl
		sub bl, al
		add bh, al
		mov ch, 1
		ret

	
	finish_saving:
	pop si
	pop dx
	pop cx
	pop bx
	pop ax
	ret
endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
proc delete
	push ax
	push bx
	push si
	call access_main
	mov ax, [si]
	or al, 1000000b
	xchg al, [brick]
	call save_tile
	mov [brick], al
	pop si
	pop bx
	pop ax
	ret
endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
reg_func2:
	inc [X]
	ret
reg_func1:
	push bx
	inc [Y]
	mov bh, 0
	sub [X], bx
	pop bx
	ret
start:
	mov ax, @data
	mov ds, ax
	mov [brick], 00h
	call enter_graphic_mode
	call put_brick
	forever:
		call read_keyboard
		cmp [key], 0Eh
		jne forever
exit:
	call enter_text_mode
	mov ax, 4c00h
	int 21h
END start