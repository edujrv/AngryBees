
.equ SCREEN_WIDTH, 		640
.equ SCREEN_HEIGH, 		480
.equ BITS_PER_PIXEL,  	32


.global app
app:
	// X0 contiene la direccion base del framebuffer
	mov x20, x0
	//---------------- CODE HERE ------------------------------------
	mov x22, 0xB00000
	add x22, x22, 0x010000
	add x22, x22, 0x008000
	add x22, x22, 0x000500
	add x22, x22, 0x000020
	add x22, x22, 0x00000C
animation:
	bl clear_screen
 
	//******************ABEJAS***************************88
	mov x0, x19
	movz x1, 150
	movz x2, 7
	movz x3, 7
	mov x4, 0x000000
	bl draw_rect

	mov x0, x19
	add x0, x0, 30
	movz x1, 200
	movz x2, 7
	movz x3, 7
	mov x4, 0x000000
	bl draw_rect

	mov x0, x19
	add x0, x0, 130
	movz x1, 270
	movz x2, 7
	movz x3, 7
	mov x4, 0x000000
	bl draw_rect

	mov x0, x19
	sub x0, x0, 50
	movz x1, 100
	movz x2, 7
	movz x3, 7
	mov x4, 0x000000
	bl draw_rect

	mov x0, x19
	add x0, x0, 300
	movz x1, 400
	movz x2, 7
	movz x3, 7
	mov x4, 0x000000
	bl draw_rect

//*********************FIN ABEJAS ATRAS DEL PANAL****************************** */

//******************** PANAL ************************/
	//ramita
	// x0: X, x1: Y, x2: W, x3: H, x4: Color
	mov x0, 320
	mov x1, 0
	mov x2, 7
	mov x3, 100
	mov x4, 0x500000
	add x4, x4, 0x0F0000
	add x4, x4, 0x003000
	add x4, x4, 0x000700
	add x4, x4, 0x000010
	add x4, x4, 0x00000C
	bl draw_rect

	//HOJA
	// x0: X, x1: Y, x2: W, x3: H, x4: Color
	mov x0, 325
	mov x1, 0
	mov x2, 20
	mov x3, 15
	mov x4, 0x900000
    add x4, x4, 0x0B0000
    add x4, x4, 0x009000
    add x4, x4, 0x000300
    add x4, x4, 0x000000
    add x4, x4, 0x000000
	bl draw_rect

	//rec 1
	// x0: X, x1: Y, x2: W, x3: H, x4: Color
	mov x0, 240
	mov x1, 100
	mov x2, 160
	mov x3, 40
	mov x4, 0xD00000
	add x4, x4, 0x0C0000
	add x4, x4, 0x009000
	add x4, x4, 0x000100
	add x4, x4, 0x000020
	add x4, x4, 0x000005
	bl draw_rect

	//rec 2
	// x0: X, x1: Y, x2: W, x3: H, x4: Color
	mov x0, 200
	mov x1, 140
	mov x2, 240
	mov x3, 40
	mov x4, 0xF00000
	add x4, x4, 0x0E0000
	add x4, x4, 0x00B000
	add x4, x4, 0x000900
	add x4, x4, 0x000020
	add x4, x4, 0x00000F
	bl draw_rect

	//rec 3
	// x0: X, x1: Y, x2: W, x3: H, x4: Color
	mov x0, 160
	mov x1, 180
	mov x2, 320
	mov x3, 40
	mov x4, 0xD00000
	add x4, x4, 0x0C0000
	add x4, x4, 0x009000
	add x4, x4, 0x000100
	add x4, x4, 0x000020
	add x4, x4, 0x000005
	bl draw_rect

	//rec central
	// x0: X, x1: Y, x2: W, x3: H, x4: Color
	mov x0, 120
	mov x1, 220
	mov x2, 400
	mov x3, 40
	mov x4, 0xF00000
	add x4, x4, 0x0E0000
	add x4, x4, 0x00B000
	add x4, x4, 0x000900
	add x4, x4, 0x000020
	add x4, x4, 0x00000F
	bl draw_rect

	//rec 4
	// x0: X, x1: Y, x2: W, x3: H, x4: Color
	mov x0, 160
	mov x1, 260
	mov x2, 320
	mov x3, 40
	mov x4, 0xD00000
	add x4, x4, 0x0C0000
	add x4, x4, 0x009000
	add x4, x4, 0x000100
	add x4, x4, 0x000020
	add x4, x4, 0x000005
	bl draw_rect

	//rec 5
	// x0: X, x1: Y, x2: W, x3: H, x4: Color
	mov x0, 200
	mov x1, 300
	mov x2, 240
	mov x3, 40
	mov x4, 0xF00000
	add x4, x4, 0x0E0000
	add x4, x4, 0x00B000
	add x4, x4, 0x000900
	add x4, x4, 0x000020
	add x4, x4, 0x00000F
	bl draw_rect
	
	//rec 6
	// x0: X, x1: Y, x2: W, x3: H, x4: Color
	mov x0, 240
	mov x1, 340
	mov x2, 160
	mov x3, 40
	mov x4, 0xD00000
	add x4, x4, 0x0C0000
	add x4, x4, 0x009000
	add x4, x4, 0x000100
	add x4, x4, 0x000020
	add x4, x4, 0x000005
	bl draw_rect

    //PUERTA
	// x0: X, x1: Y, x2: W, x3: H, x4: Color
	mov x0, 300
	mov x1, 200
	mov x2, 40
	mov x3, 80
	mov x4, x22
	bl draw_rect

//******************** FIN PANAL ************************/

//*********************ABEJAS ADELANTE DEL PANAL ************************ */
	mov x0, x19
	add x0, x0, 30
	movz x1, 220
	movz x2, 7
	movz x3, 7
	mov x4, 0x000000
	bl draw_rect

	mov x0, x19
	sub x0, x0, 30
	movz x1, 560
	movz x2, 7
	movz x3, 7
	mov x4, 0x000000
	bl draw_rect

	mov x0, x19
	add x0, x0, 310
	movz x1, 410
	movz x2, 7
	movz x3, 7
	mov x4, 0x000000
	bl draw_rect

	mov x0, x19
	add x0, x0, 230
	movz x1, 100
	movz x2, 7
	movz x3, 7
	mov x4, 0x000000
	bl draw_rect

//ABEJA GRANDE
	mov x0, x21
	add x0, x0, 240
	movz x1, 230
	movz x2, 25
	movz x3, 20
	mov x4, 0xC00000
	add x4, x4, 0x090000
	add x4, x4, 0x006000
	add x4, x4, 0x000600
	add x4, x4, 0x000000
	add x4, x4, 0x000000
	bl draw_rect

//**************************FIN ABEJAS ADELANTE DEL PANAL ********************* */
	
	//-------------	--------------------------------------------------
	// Infinite Loop 
	add x19, x19, #3
	sub x21, x21, #1
	mov x0, 0x0FFFF
	bl wait_msec //delay
	bl wait_char
	b animation

InfLoop: 
	b InfLoop


wait_char:
	sub w0, w0,w0
	bl uart_received
	cbnz w0, wait_char
	bl uart_getc_noblock
	bl uart_send

	cmp w0, 'm'
	//mov x0, x20
	bne animation
	mov x22, 0xF00000
	add x22, x22, 0xFF0000
	b animation
	ret

SALUDO:
  .string "Test UART\nline\n"	

/////////////////////////////////////////////////////////////////////////////

  clear_screen:
	mov x0, x20

	mov x2, 0x900000   // 0x0000FF = BLUE
	add x2, x2, 0x030000
	add x2, x2, 0x00D000
	add x2, x2, 0x000300
	add x2, x2, 0x0000E0
	add x2, x2, 0x000009
	movz x1, 0xB000
	movk x1, 0x4, LSL #16

super_loop0:
	stur x2,[x0]	   // Set color of pixel N

	add x0,x0,4	   // Next pixel
	sub x1,x1,1	   // decrement X counter
	cbnz x1,super_loop0	   // If not end row jump
	ret
 

draw_rect: // x0: X, x1: Y, x2: W, x3: H, x4: Color

_draw_rect_loop_fila: 
	mov	   x5, SCREEN_WIDTH
	mul    x5, x1, x5
	add    x5, x5, x0
	lsl	   x5, x5, #2
	add    x5, x5, x20
	mov    x6, x2
_draw_rect_loop_col:
		str x4, [x5]
		add x5, x5, #4
		sub x6, x6, #1
		cbnz x6, _draw_rect_loop_col
	add x1, x1, #1
	sub x3, x3, #1
	cbnz x3, _draw_rect_loop_fila

	ret


