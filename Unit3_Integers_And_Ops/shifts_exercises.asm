; Base Author: Megan Avery Spring 2024
; Exercise Author: [YOUR NAME HERE]

; Purpose - to learn the following:
; 	- logical shifts
;	- arithmetic shifts
;	- rotate shifts

%include "asm_io.inc"

; initialized data
segment .data

; uninitialized data
segment .bss


segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha

		; TODO: add code
        ;mov eax, 10
        ;shl eax, 3      ;shift to the 
        ;call print_int

        ;mov ebx, 2
        ;shl eax, ebx
        ;call print_int

        ;mov eax, 080000045H
        ;call print_int
        ;call print_nl

        ;mov eax, 23
        ;shr eax, 2
        ;call print_int

        ;mov eax, 4
        ;mov ebx, 2
        ;call print_int
        ;test eax, ebx
        ;dump_regs 1

        ;mov eax, 13
        ;xor eax, eax
        ;call print_int

        ;mov eax, 018H
        ;not eax

       ; mov ebx, 1
        ;shl ebx, 3
        ;not ebx

        ;mov eax, 15
        ;or eax, ebx
        ;call print_int

        mov ebx, 00000FFFFH
        mov eax, -1

        and eax, ebx
        dump_regs 1

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret


