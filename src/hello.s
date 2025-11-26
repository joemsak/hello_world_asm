//
// hello world
//

.global _start
.align 2

_start:
	b _printf
	b _terminate

_printf:
	mov X0, #1		// stdout
	adr X1, helloworld	// address "hello, world\n"
	mov X2, #13		// length "hello, world\n"
	mov X16, #4		// write to stdout
	svc 0			// syscall

_terminate:
	mov X0, #0	// return 0
	mov X16, #1	// terminate
	svc 0		// syscall

helloworld: .ascii "hello, world\n"
