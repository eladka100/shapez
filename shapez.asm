IDEAL
MODEL small
STACK 100h
DATASEG

grey_helper dw 0040h
do_nothing dw 0000h
X dw 0000h
Y dw 0000h
top db 00h
left db 00h
mouseX db 00h
mouseY db 00h
mouseP db 00h
key db 00h
key_ascii db 00h
bricks dw offset pipe1, offset pipe2, offset rotator, offset trash, offset cutter, offset shuffler, offset painter, offset stacker
brick db 00h 
current_shape dw 0000h, 0000h
score dw 0

empty db 82
brick_func1 dw 3 dup(0000h)
brick_func2 dw 3 dup(0000h)

pipe1 db 07h, 07h, 0fh, 0fh, 07h, 07h, 0fh, 0fh, 07h, 07h, 07h, 07h, 0fh, 07h, 07h, 07h, 07h, 0fh, 07h, 07h, 07h, 07h, 0fh, 0fh, 0fh, 0fh, 0fh, 0fh, 07h, 07h, 07h, 07h, 0fh, 0fh, 0fh, 0fh, 0fh, 0fh, 07h, 07h, 07h, 07h, 0fh, 0fh, 07h, 07h, 0fh, 0fh, 07h, 07h, 07h, 07h, 0fh, 07h, 07h, 07h, 07h, 0fh, 07h, 07h, 07h, 07h, 0fh, 0fh, 0fh, 0fh, 0fh, 0fh, 07h, 07h, 07h, 07h, 0fh, 0fh, 0fh, 0fh, 0fh, 0fh, 07h, 07h, 07h, 07h, 0fh, 0fh, 07h, 07h, 0fh, 0fh, 07h, 07h, 07h, 07h, 0fh, 07h, 07h, 07h, 07h, 0fh, 07h, 07h
pipe2 db 07h, 07h, 07h, 07h, 07h, 07h, 07h, 07h, 07h, 07h, 07h, 07h, 07h, 07h, 07h, 07h, 07h, 07h, 07h, 07h, 07h, 07h, 0fh, 0fh, 0fh, 0fh, 0fh, 0fh, 0fh, 0fh, 07h, 07h, 0fh, 0fh, 0fh, 0fh, 0fh, 0fh, 07h, 0fh, 07h, 07h, 0fh, 0fh, 07h, 07h, 07h, 0fh, 07h, 07h, 07h, 07h, 0fh, 0fh, 0fh, 07h, 07h, 0fh, 07h, 07h,07h, 07h, 0fh, 0fh, 0fh, 0fh, 07h, 0fh, 07h, 0fh, 07h, 07h, 0fh, 0fh, 0fh, 0fh, 0fh, 0fh, 0fh, 0fh, 07h, 07h, 0fh, 0fh, 07h, 07h, 0fh, 0fh, 07h, 07h, 07h, 07h, 0fh, 07h, 07h, 07h, 07h, 0fh, 07h, 07h
cutter db 0ch, 0ch, 0ch, 0ch, 00h, 00h, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 00h, 00h, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 00h, 00h, 00h, 00h, 0ch, 00h, 0ch, 0ch, 00h, 0ch, 00h, 00h, 00h, 00h, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 00h, 0ch, 0ch, 00h, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 00h, 00h, 0ch, 0ch, 00h, 0ch, 0ch, 00h, 0ch, 0ch, 00h, 00h, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 00h, 00h, 00h, 0ch, 0ch, 00h, 00h, 0ch, 0ch, 00h, 00h, 00h, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 00h, 00h, 0ch, 0ch, 0ch, 00h, 00h, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 00h, 00h, 0ch, 00h, 00h, 0ch, 0ch, 00h, 00h, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 00h, 00h, 0ch, 00h, 00h, 0ch, 0ch, 00h, 00h, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 00h, 00h, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 00h, 00h, 00h, 00h, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch, 0ch
shuffler db 00h, 00h, 00h, 00h, 07h, 07h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 07h, 07h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 07h, 07h, 07h, 07h, 00h, 00h, 00h, 00h, 00h, 00h, 07h, 07h, 07h, 07h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 07h, 00h, 00h, 07h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 07h, 07h, 00h, 00h, 07h, 00h, 00h, 07h, 00h, 00h, 07h, 07h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 07h, 07h, 07h, 00h, 00h, 07h, 07h, 00h, 00h, 07h, 07h, 07h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 07h, 07h, 00h, 00h, 00h, 07h, 07h, 00h, 00h, 00h, 07h, 07h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 07h, 07h, 00h, 00h, 07h, 00h, 00h, 07h, 00h, 00h, 07h, 07h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 07h, 00h, 00h, 07h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 07h, 07h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 07h, 07h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 07h, 07h, 07h, 07h, 00h, 00h, 00h, 00h, 00h, 00h, 07h, 07h, 07h, 07h, 00h, 00h, 00h
rotator db 0ah, 0ah, 0ah, 0ah, 0fh, 0fh, 0ah, 0ah, 0ah, 0ah, 0ah, 0ah, 0ah, 0fh, 0fh, 0fh, 0fh, 0ah, 0ah, 0ah, 0ah, 0ah, 09h, 09h, 09h, 09h, 09h, 09h, 0ah, 0ah, 0ah, 0ah, 09h, 09h, 09h, 09h, 09h, 09h, 0ah, 0ah, 0ah, 0ah, 0ah, 0ah, 0ah, 0ah, 09h, 09h, 0ah, 0ah, 0ah, 0ah, 09h, 0ah, 0ah, 0ah, 09h, 09h, 0ah, 0ah, 0ah, 09h, 09h, 0ah, 09h, 09h, 09h, 09h, 0ah, 0ah, 0ah, 09h, 09h, 0ah, 09h, 09h, 09h, 09h, 0ah, 0ah, 0ah, 0ah, 09h, 0ah, 0fh, 0fh, 0ah, 0ah, 0ah, 0ah, 0ah, 0ah, 0ah, 0fh, 0fh, 0fh, 0fh, 0ah, 0ah, 0ah
painter db 0dh, 0dh, 0dh, 0dh, 00h, 00h, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 00h, 00h, 00h, 00h, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 00h, 00h, 0dh, 0dh, 00h, 00h, 00h, 00h, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 00h, 00h, 00h, 0dh, 00h, 0fh, 0fh, 00h, 0dh, 0fh, 0fh, 0fh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 00h, 00h, 0dh, 0dh, 00h, 0fh, 0fh, 00h, 0dh, 0dh, 0fh, 0fh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 00h, 00h, 0dh, 0dh, 00h, 00h, 00h, 00h, 0dh, 0dh, 0fh, 0fh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 00h, 00h, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0fh, 0fh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 00h, 00h, 00h, 00h, 0dh, 0dh, 0dh, 0dh, 0dh, 0dh, 0fh, 0fh, 0fh, 0fh, 0dh, 0dh, 0dh
stacker db 01h, 01h, 01h, 01h, 00h, 00h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 00h, 00h, 00h, 00h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 00h, 00h, 00h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 00h, 00h, 01h, 01h, 01h, 01h, 00h, 00h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 00h, 00h, 00h, 01h, 00h, 01h, 01h, 00h, 01h, 00h, 00h, 00h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 00h, 00h, 01h, 01h, 00h, 00h, 01h, 01h, 01h, 01h, 00h, 00h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 00h, 00h, 01h, 01h, 00h, 00h, 00h, 01h, 01h, 01h, 00h, 00h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 00h, 00h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 00h, 00h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 00h, 00h, 00h, 00h, 01h, 01h, 01h, 01h, 01h, 01h, 00h, 00h, 00h, 00h, 01h, 01h, 01h
trash db 04h, 04h, 00h, 00h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 00h, 04h, 04h, 04h, 00h, 00h, 04h, 04h, 04h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 04h, 04h, 04h, 00h, 00h, 04h, 04h, 04h, 00h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 00h, 00h, 04h, 04h

clockwise_seq db 110000b, 111000b, 100000b, 101000b, 1000b, 00h, 11000b, 10000b
counter_clockwise_seq db 101000b, 100000b, 111000b, 110000b, 10000b, 11000b, 00h, 1000b

inout_pipe1 db 10110b, 10110b, 11100b, 11100b, 00010b, 00010b, 01000b, 01000b
inout_pipe2 db 01110b, 00110b, 01100b, 00100b, 11010b, 10010b, 11000b, 10000b
inout_func dw offset strait, offset turned, offset strait, offset EX, offset only_output, offset strait, offset only_input, offset only_input
hub_brick db 08h, 08h, 00h, 07h, 07h, 07h, 07h, 00h, 08h, 08h, 08h, 08h, 08h, 00h, 07h, 07h, 00h, 08h, 08h, 08h, 00h, 08h, 08h, 08h, 00h, 00h, 08h, 08h, 08h, 00h, 07h, 00h, 08h, 08h, 08h, 08h, 08h, 08h, 00h, 07h, 07h, 07h, 00h, 08h, 08h, 08h, 08h, 00h, 07h, 07h, 07h, 07h, 00h, 08h, 08h, 08h, 08h, 00h, 07h, 07h, 07h, 00h, 08h, 08h, 08h, 08h, 08h, 08h, 00h, 07h, 00h, 08h, 08h, 08h, 00h, 00h, 08h, 08h, 08h, 00h, 08h, 08h, 08h, 00h, 07h, 07h, 00h, 08h, 08h, 08h, 08h, 08h, 00h, 07h, 07h, 07h, 07h, 00h, 08h, 08h
board dw 2000 dup(0040h)
dynamic_board dw 8000 dup(0000h)

noth db 34 dup (01h)
squere db 00h, 00h, 00h, 00h, 00h, 00h, 07h, 07h, 07h, 07h, 00h, 07h, 07h, 07h, 07h, 00h, 07h, 07h, 07h, 07h,  00h, 07h, 07h, 07h, 07h
db 00h, 00h, 00h, 00h, 07h, 07h, 00h, 07h, 07h
clover db 01h, 00h, 00h, 00h, 01h, 00h, 07h, 07h, 07h, 00h, 00h, 07h, 07h, 07h, 07h, 00h, 07h, 07h, 07h, 07h, 01h, 00h, 07h, 07h, 07h
db 01h, 00h, 01h, 00h, 07h, 00h, 01h, 00h, 01h
star db 00h, 00h, 01h, 01h, 01h, 00h, 07h, 00h, 00h, 01h, 01h, 00h, 07h, 07h, 00h, 01h, 00h, 07h, 07h, 07h, 01h, 01h, 00h, 07h, 07h
db 00h, 00h, 01h, 00h, 07h, 00h, 01h, 00h, 01h
whiteColor db 52h, 52h, 52h, 52h, 52h, 52h, 52h, 52h, 52h, 52h, 52h, 52h, 52h, 52h, 00h, 00h, 52h, 52h, 52h, 52h, 52h, 52h, 52h, 00h, 0fh, 0fh, 00h, 52h, 52h, 52h, 52h, 52h, 00h, 0fh, 0fh, 0fh, 0fh, 00h, 52h, 52h, 52h, 00h, 0fh, 0fh, 0fh, 0fh, 0fh, 0fh, 00h, 52h, 52h, 00h, 0fh, 0fh, 0fh, 0fh, 0fh, 0fh, 00h, 52h, 52h, 00h, 0fh, 0fh, 0fh, 0fh, 0fh, 0fh, 00h, 52h, 52h, 52h, 00h, 0fh, 0fh, 0fh, 0fh, 00h, 52h, 52h, 52h, 52h, 52h, 00h, 00h, 00h, 00h, 52h, 52h, 52h, 52h, 52h, 52h, 52h, 52h, 52h, 52h, 52h, 52h, 52h

colors db 0, 1, 2, 4, 0fh, 3, 60h, 0dh

shapes dw offset noth, offset squere, offset clover, offset star
tiny_shapes dw offset noth + 25, offset squere + 25, offset clover + 25, offset star + 25
shape_funcs1 dw offset X1, 0000h
shape_funcs2 dw offset Y2, 0000h
shape_funcs3 dw offset same, 2 dup(0000h)

NextRandom dw 1fe3h

display_string db "yor score was $" 
const_types dw 1000h, 001001001001b, 010010010010b, 011011011011b, 001001010010b, 010010011011b, 011011001001b, 001010001010b, 010011010011b, 011001011001b, 001001010011b, 010010011001b, 011011001010b, 001010011010b, 010011001010b, 011001010011b
;           white color  |_____________one shape______________________||______________half shapes__________________||_______________chess shapes________________||______________three shapes half____________| |_______________three shapes chess________|
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
proc prg
    push dx
    xor dx, dx

    mov ax, [NextRandom]
    mov dx, 25173
    imul dx

    add  ax, 13849
    xor  ax, 62832
    mov  [NextRandom], ax

    pop dx
    ret
endp prg
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
proc read_pixel
	push bx
	push cx
	push dx
	mov dx, [Y]
	mov cx, [X]
	mov bx, 0
	mov ah, 0dh
	int 10h
	pop dx
	pop cx
	pop bx
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
	mov al, 82
	
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
	func_loop:
		push di
		mov di, [di]
		cmp di, 0000h
		je finish_commiting
		call di
		pop di
		inc di
		inc di
		jmp func_loop
	finish_commiting:
	pop di
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
			push di
			mov di, [bp+4]
			call commit_funcs
			pop di
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
	
	test al, 10000000b
	
	jnz const_brick
	jz regular_brick
	
	const_brick:
		test al, 11b
		jnz in_brick
		
		mov si, offset const_types
		and al, 1111000b
		shr al, 2
		mov ah, 0
		add si, ax
		mov ax, 0
		push ax
		mov ax, [si]
		push ax
		call put_shape
		pop ax
		pop ax
		jmp finish_brick_painting
		
		in_brick:
			mov si, offset hub_brick
			mov bx, 0a0ah
			mov dl, 0
			push offset do_nothing
			push offset shape_funcs2
			push offset shape_funcs1
			call paint_image
			pop ax
			pop ax
			pop ax
			jmp finish_brick_painting
			
			
		
	regular_brick:
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
	mov dh, 00h
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
		push offset do_nothing
		push offset brick_func2
		push offset brick_func1
		call paint_image
		pop ax
		pop ax
		pop ax
	
	finish_brick_painting:
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
proc transparent
	cmp al, dh
	jne finish_transparent
	call read_pixel
	finish_transparent:
	ret
endp
proc white_shape
	cmp al, 07h
	jne dont_paint
	mov al, 0fh
	dont_paint:
	ret
endp
proc blank_func
	ret
endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
proc put_shape
	push [X]
	push [Y]
	push ax
	push bx
	push cx
	push dx
	push si
	push di
	push bp
	mov bp, sp
	add bp, 20
	mov cx, [bp]
	mov ax, offset shape_funcs3
	push ax
	mov ax, offset shape_funcs2
	push ax
	mov ax, offset shape_funcs1
	push ax
	cmp cx, 1000h
	jne is_shape
	
	mov dx, 0f00h
	mov [shape_funcs3], 0000h
	mov bx, 0a0ah
	mov si, offset whiteColor
	call paint_image
	mov [shape_funcs3], offset same
	jmp finish_shape_painting
	
	is_shape:
	mov dx, 0100h
	mov bx, 505h
	mov ax, offset shapes
	shape_loop:
			paint_corner:
				mov si, 111b
				and si, cx
				add si, offset colors
				call paint_image
			inc dl
			shr cx, 3
			push bx
			mov bh, 0
			shl bl, 1
			add [X], bx
			dec [X]
			pop bx
			test dl, 1b
			jnz shape_loop
		push bx
		mov bh, 0
		shl bl, 1
		add [Y], bx
		dec [Y]
		shl bl, 1
		sub [X], bx
		add [X], 2
		pop bx
		test dl, 10b
		jnz shape_loop
	cmp bl, 3
	je finish_shape_painting
	mov bh, 0
	shl bl, 2
	sub [Y], bx
	add [Y], 4
	add [X], 2
	mov bx, 303h
	mov dl, 0
	add bp, 2
	mov cx, [bp]
	mov ax, offset tiny_shapes
	jmp shape_loop
	
	finish_shape_painting:
	pop ax
	pop ax
	pop ax
	pop bp
	pop di
	pop si
	pop dx
	pop cx
	pop bx
	pop ax
	pop [Y]
	pop [X]
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
proc show_dynamic
	push ax
	push bx
	push si
	push [X]
	push [Y]
	mov bl, [mouseX]
	mov bh, [mouseY]
	call access_board
	call access_dynamic
	mov ax, [si]
	push ax
	mov ax, [si+2]
	push ax
	mov [y], 10
	mov [X], 275
	call put_shape
	pop ax
	pop ax
	mov ax, [si+4]
	push ax
	mov ax, [si+6]
	push ax
	mov [y], 10
	mov [X], 285
	call put_shape
	pop ax
	pop ax
	
	pop [Y]
	pop [X]
	pop si
	pop bx
	pop ax
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
	cmp [key], 0
	je change_brick_help
	cmp [key], 09h
	jb change_brick
	cmp [key], 13h
	je change_rotation
	cmp [key], 21h
	je flip
	jmp finish_brick_choosing
	
	change_brick:
		mov ah, [key]
		sub ah, 2h
		cmp ah, 5
		jb choose_con
		inc ah
		choose_con:
		and [brick], 11111000b
		add [brick], ah
		jmp finish_brick_choosing
	
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
		mov al, [brick]
		and al, 111b
		cmp al, 100b
		je finish_brick_choosing
		xor [brick], 8h
		jmp finish_brick_choosing
	
	
	finish_brick_choosing:
		mov al, [brick]
		and al, 100b
		mov ah, [brick]
		and ah, 100000b
		shr ah, 3
		push ax
		and al, ah
		shr al, 2
		mov cl, 10
		mul cl
		mov dx, 199
		sub dl, al
		mov cx, 0
		mov ax, 8
		int 33h
		pop ax
		xor ah, 100b
		and al, ah
		shr al, 2
		mov cl, 10
		mul cl
		mov dx, 249
		sub dl, al
		shl dx, 1
		mov ax, 7
		int 33h
		call mousing
		test [brick], 100b
		jz nothing_changed
		inc [mouseX]
		call show_tile
		dec [mouseX]
		inc [mouseY]
		call show_tile
		dec [mouseY]
	nothing_changed:
		call show_dynamic
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
	
	add bl, [left]
	add bh, [top]
	mov si, offset board
	mov ah, 0
	mov al, bl
	shl ax, 1
	add si, ax
	mov ah, 0
	mov al, bh
	mov cl, 100
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
	and ah, 11b
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
		cmp bl, 0
		jl not_in_border
		cmp bl, 25
		jae not_in_border
		cmp bh, 0
		jl not_in_border
		cmp bh, 20
		jae not_in_border
		call access_board
		jmp finish_accessing_inout
	
	not_in_border:
	mov si, offset grey_helper
	finish_accessing_inout:
	pop ax
	ret
endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
proc access_dynamic
	push ax
	mov ax, offset board
	sub si, ax
	shl si, 2
	mov ax, offset dynamic_board
	add si, ax
	pop ax
	ret
endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
proc access_side
	push ax
	call access_board
	mov ax, [si]
	test al, 100000h
	jnz access_below
	
	access_aside:
		test al, 1000b
		jnz access_left_side
		inc bl
		jmp finish_side_acccessing
		access_left_side:
			dec bl
			jmp finish_side_acccessing
	access_below:
		test al, 1000b
		jnz access_left_side
		inc bh
		jmp finish_side_acccessing
		access_up:
			dec bh
			jmp finish_side_acccessing
	
	finish_side_acccessing:
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
		test dl, 1000000b
		jnz finish_checking_inout
		push ax
		and al, 10000111b
		cmp al, 10000000b
		pop ax
		je has_output
		test al, 1000000b
		jnz finish_checking_inout
		push dx
		and dl, 10000111b
		cmp dl, 10000000b
		pop dx
		je finish_checking_inout		
		push dx
		and dl, 111b
		cmp dl, 3h
		pop dx
		je has_output
		push ax
		and al, 111b
		cmp al, 3h
		pop ax
		je finish_checking_inout
		
		
		push dx
		shl dh, 2
		xor dh, ah
		shr dh, 3
		and dh, 11h
		cmp dh, 1b
		pop dx
		je has_output
		jmp finish_checking_inout
		
	has_output:
		and dh, 11011111b
		or dh, 20h
		mov [si], dx
	
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
		test al, 10000000b
		jnz not_empty
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
proc step
	push ax
	push bx
	push cx
	push dx
	push si
	push di
	
	push ds
	pop es
	call access_board
	push si
	push bx
	mov cl, 1000000b
	test [si+1], cl
	jnz help_finish_steping
	call access_dynamic
	mov di, si
	mov cl, 1
	call access_inout
	mov ax, [si]
	call access_dynamic
	push ax
	and al, 111b
	cmp al, 0
	je pipe
	cmp al, 1
	je pipe
	cmp al, 2
	je spinner
	cmp al, 4
	je help_scissors
	cmp al, 6
	je help_whiter
	cmp al, 7
	je help_merger
	jmp finish_steping
		
	
	pipe:
		pop ax
		test al, 10000000b
		jnz shape_maker
		push si
		push di
		add si, 4
		movsw
		movsw
		sub si, 4
		mov di, si
		sub si, 4
		movsw
		movsw
		sub si, 4
		mov dx, 0
		mov [si], dx
		mov [si+2], dx
		pop di
		pop si
		jmp finish_steping
		
	shape_maker:
		mov dx, 0
		mov [di], dx
		push ax
		push si
		mov ah, 0
		and al, 1111000b
		shr al, 2
		mov si, offset const_types
		add si, ax
		mov dx, [si]
		mov [di+2], dx
		pop si
		pop ax
		jmp finish_steping
		
	help_whiter:
		jmp whiter
	help_finish_steping:
		jmp help_finish_steping1
	spinner:
		pop ax
		push ax
		test al, 1000b
		mov dx, [si+4]
		mov ax, [si+6]
		push offset finish_rotating
		jz rotate_right
		jnz rotate_left
		
		help_scissors:
			jmp scissors
		help_merger:
			jmp merger
		
		rotate_right:
			mov cx, ax
			shr ax, 1
			shr al, 3
			shr ax, 2
			and ax, 111000111b
			shl cx, 5
			shr cl, 2
			shl ch, 1
			and cx, 111000111000b
			or ax, cx
			mov cx, dx
			shr dx, 1
			shr dl, 3
			shr dx, 2
			and dx, 111000111b
			shl cx, 5
			shr cl, 2
			shl ch, 1
			and cx, 111000111000b
			or dx, cx
			ret
			
		rotate_left:
			mov cx, offset rotate_right
			push cx
			push cx
			jmp rotate_right
		
		finish_rotating:
			mov [di], dx
			mov [di+2], ax
			push di
			mov di, si
			add di, 4
			movsw
			movsw
			sub si, 4
			mov dx, 0
			mov [si], dx
			mov [si+2], dx
			pop di
			pop ax
			jmp finish_steping
			
	scissors:
		pop ax
		mov dx, 0
		add si, 4
		movsw
		movsw
		sub si, 8
		sub di, 4
		mov [si+4], dx
		mov [si+6], dx
		
		push ax
		shr al, 3
		and ah, 1
		and al, 1
		xor al, ah
		pop ax
		jnz help_finish_steping1
		
		push bx
		push si
		call access_side
		mov dh, 10000000b
		test [si+1], dh
		pop si
		pop bx
		jz advance_scissors	
		jmp finish_steping
		
		
		advance_scissors:
			push ax
			mov ax, [si]
			mov dx, [si+2]
			cmp dx, 1000h
			je cant_cut_color
			and dx, 111000111000b
			and ax, 111000111000b
			push si
			call access_side
			call access_dynamic
			mov [si+4], ax
			mov [si+6], dx
			pop si
			mov ax, [si]
			mov dx, [si+2]
			and ax, 111000111b
			and dx, 111000111b
			mov [si+4], ax
			mov [si+6], dx
			mov dx, 0
			mov [si], dx
			mov [si+2], dx
			cant_cut_color:
			pop ax
			jmp finish_steping
		help_finish_steping1:
		jmp finish_steping
	
	whiter:
		pop ax
		add si, 4
		movsw
		movsw
		sub si, 8
		sub di, 4
		mov dx, 0
		mov [si+4], dx
		mov [si+6], dx
		push si
		push bx
		call access_side
		call access_dynamic
		mov cx, 1000h
		cmp [si+2], cx
		je advance_whiter
		pop bx
		pop si
		jmp finish_steping
			
		advance_whiter:
			mov [si], dx
			mov [si+2], dx
			pop bx
			pop si
			mov dx, [si+2]
			cmp dx, cx
			je finish_steping
			cmp dx, 0
			je dont_white
			or dx, 100100100100b
			mov [si+6], dx
			mov dx, [si]
			cmp dx, 0
			je dont_white
			or dx, 100100100100b
			dont_white:
			mov [si+4], dx
			jmp finish_steping
			
	merger:
		pop ax
		add si, 4
		movsw
		movsw
		sub si, 8
		sub di, 4
		mov dx, 0
		mov [si+4], dx
		mov [si+6], dx
		push si
		push bx
		call access_side
		call access_dynamic
		mov cx, 0
		cmp [si], cx
		je advance_merger
		pop bx
		pop si
		jmp finish_steping
			
		advance_merger:
			cmp cx, [si+2]
			mov dx, [si+2]
			pop bx
			pop si
			je finish_steping
			push ax
			mov ax, dx
			cmp [si], cx
			jne dont_merge
			mov dx, [si+2]
			cmp dx, cx
			je dont_merge
			
			call check_merge
			jnz stack_on
			or dx, ax
			mov [si+4], dx
			mov [si+6], cx
			jmp dont_merge
			
			stack_on:
				mov [si+4], ax
				mov [si+6], dx
			dont_merge:
				pop ax
				jmp finish_steping
			
			
			
		
	finish_steping:
	pop bx
	pop si
	call update_capacity
	mov cl, 1
	call access_inout
	call update_capacity
	pop di
	pop si
	pop dx
	pop cx
	pop bx
	pop ax
	ret
endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
proc update_capacity
	push ax
	push bx
	push cx
	push si
	push di
	mov ah, 0
	mov al, 0
	mov di, si
	call access_dynamic
	
	mov cx, 0
	inc ah
	cmp [si+4], cx
	jne capacity1
	cmp [si+6], cx
	jne capacity1
	dec ah
	capacity1:
	shl ah, 1
	inc ah
	cmp [si], cx
	jne capacity2
	cmp [si+2], cx
	jne capacity2
	dec ah
	capacity2:
	shl ah, 6
	
	mov cx, 3fffh
	and [di], cx
	mov cx, [di]
	and cl, 111b
	cmp cl, 3
	je inf_capa
	or [di], ax
	inf_capa:
	pop di
	pop si
	pop cx
	pop bx
	pop ax
	ret
endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
proc check_merge
	push ax
	push bx
	push cx
	push dx
	push si
	push di
	
	mov cl, 0
	merge_loop:
		test al, 111b
		jz merge1
		test dl, 111b
		jz merge1
		jmp finish_checking_merge
		merge1:
		shr ax, 3
		shr dx, 3
		inc cl
		cmp cl, 4
		jne merge_loop
		
	finish_checking_merge:
	pop di
	pop si
	pop dx
	pop cx
	pop bx
	pop ax
	ret
endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
proc step_loop
	push ax
	push bx
	push cx
	push dx
	push si
	push di
	push ds
	pop es
	mov cl, 1
	mov bx, 0
	step_board_loop:
		call access_board
		mov ax, [si]
		push ax
		and al, 111b
		cmp al, 3
		pop ax
		jne not_trash
			step_trash_loop:
				mov [si], ax
				call step
				test al, 10000000b
				push si
				jz not_hub
				
				
				call access_dynamic
				mov di, offset current_shape
				cmpsw
				jne not_hub
				cmpsw
				jne not_hub
				inc [score]
				call new_goal
				
				not_hub:
				pop si
				add ah, 10b
				cmp ah, 1000b
				jne step_trash_loop
			jmp end_steps
		
		not_trash:
		test ah, 100000b
		jz end_steps
		call step
		
		end_steps:
			inc bl
			cmp bl, 25
			jne step_board_loop
			mov bl, 0
			inc bh
			cmp bh, 20
			jne step_board_loop

	finish_looping:
	pop di
	pop si
	pop dx
	pop cx
	pop bx
	pop ax
	ret
endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
proc new_goal
	push ax
	push [X]
	push [Y]
	call prg
	mov [current_shape], ax
	push ax
	call prg
	mov [current_shape+2], ax
	push ax
	mov [X], 280
	mov [Y], 180
	call put_shape
	pop ax
	pop ax
	pop [Y]
	pop [X]
	pop ax
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
		mov ah, 0
		and al, 111b
		shl al, 1
		mov si, offset inout_func
		add si, ax
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
	push dx
	push si
	push di
	push ds
	pop es
	mov ax, 0
	call access_main
	mov dx, [si]
	test dl, 10000000b
	jnz dont_delete
	mov dh, [brick]
	mov [brick], 1000000b
	test dl, 100b
	jz finish_deleting
	call save_tile
	call access_board
	call access_dynamic
	mov di, si
	mov [di], ax
	mov [di+2], ax
	mov [di+4], ax
	mov [di+6], ax
	test dl, 100000b
	jz delete_side
	
	delete_below:
		inc bh
		jmp finish_deleting
	delete_side:
		inc bl
	
	finish_deleting:
	call access_board
	call access_dynamic
	mov di, si
	mov [di], ax
	mov [di+2], ax
	mov [di+4], ax
	mov [di+6], ax
	call save_tile
	mov [brick], dh
	dont_delete:
	pop di
	pop si
	pop dx
	pop bx
	pop ax
	ret
endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
proc paint_backround
	push [X]
	push [Y]
	push si
	push bx
	push ax
	mov al, [brick]
	push ax
	mov bh, 0
	mov bl, 0
	paint_backround_loop:
			call access_board
			mov ax, [si]
			test ah, 1h
			jnz same_brick
			mov [brick], al
			call put_brick
			same_brick:
			inc bl
			add [X], 10
			cmp bl, 25
			jne paint_backround_loop
		mov bl, 0
		mov [X], 0
		inc bh
		add [Y], 10
		cmp bh, 20
		jne paint_backround_loop
	pop ax
	mov [brick], al
	pop ax
	pop bx
	pop si
	pop [Y]
	pop [X]
	ret
endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
proc move_board
	cmp [key], 50h
	je inc_top
	cmp [key], 4bh
	je dec_left
	cmp [key], 4dh
	je inc_left
	cmp [key], 48h
	je dec_top
	ret
	
	inc_top:
		cmp [top], 20
		je finish_board_moving
		inc [top]
		jmp finish_board_moving
	
	inc_left:
		cmp [left], 25
		je finish_board_moving
		inc [left]
		jmp finish_board_moving
	
	dec_top:
		cmp [top], 0
		je finish_board_moving
		dec [top]
		jmp finish_board_moving
	
	dec_left:
		cmp [left], 0
		je finish_board_moving
		dec [left]
		jmp finish_board_moving
	
	finish_board_moving:
	call paint_backround
	ret
endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
proc setup
	push ax
	push bx
	push cx
	push si
	mov bx, 0
	setup_loop:
		call prg
		and al, 1111b
		shl al, 3
		or al, 10000000b
		call access_board
		mov [si], al
		add bl, 5
		cmp bl, 25
		jne setup_loop
	call paint_backround
	pop si
	pop cx
	pop bx
	pop ax
	ret
endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
start:
	mov ax, @data
	mov ds, ax
	call enter_graphic_mode
	mov [top], 10
	mov [left], 12
	mov bl, 11
	mov bh, 8
	mov ax, 10000110b
	hub_loop:
		call access_board
		mov [si], ax
		inc bl
		cmp bl, 15
		jne hub_loop
		sub bl, 4
		inc bh
		cmp bh, 12
		jne hub_loop
	call new_goal
	call setup
	
	call paint_backround
forever:
	call step_loop
	call read_keyboard
	call choose_brick
	call move_board
	call mousing
	cmp [key], 22h
	jne dont_setup
	call setup
	dont_setup:
	cmp [key], 0Eh
	jne forever
exit:
	call enter_text_mode
	mov ah, 09
	mov dx, offset display_string
	int 21h
	mov ax, [score]
	mov bl, 10
	mov ah, 0
	div bl
	mov dl, ah
	add dl, 30h
	push dx
	div bl
	mov dl, ah
	add dl, 30h
	push dx
	div bl
	mov dl, ah
	add dl, 30h
	push dx
	mov ah, 2
	pop dx
	int 21h
	pop dx
	int 21h
	pop dx
	int 21h
	
	mov ax, 4c00h
	int 21h
	
END start
ends