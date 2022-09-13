.globl   fib_recurs_asm
    .p2align 2
	.type    fib_recurs_asm,%function

fib_asm:

	cmp		x0, xzr
	bge		label_1
	mov		x0, #-1
	b		end_label

label_1:
	cmp		x0, #20
	ble		label_2
	mov		x0, #-1
	b		end_label

label_2:
	cmp		x0, #2
	bge		label_3
	b		end_label

label_3:

// Your Fibonacci sequence code goes here
//A = x1
//B = x2
//I = x12
//C = x11
	mov  x1, #0
	mov  x2, #1
	mov  x12, #2

	mov x12, #2

	label_start:

	cmp x12,x0
	bgt label_4
	add x11, x2 , x1
	mov x1, x2
	mov x2, x11
	add x12,x12, #1
	b label_start

label_4:
	mov x0, x2
end_label:

	br		x30

		br		x30
