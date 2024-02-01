; Base Author: Megan Avery Spring 2024
; Exercise Author: Robert Zessin
; 
; Purpose - to learn about the following:
;	-  directives (dx, resx, & times)
;	- printing ints and characters
;	- dumping memory
;	- printing strings
;	- reading chars and ints

%include "asm_io.inc"

age equ 30 ; symbol
%define fav_number 14 ;macro

; initialized data
segment .data
fav_color db "purple",  ; string
least_fav_color db "yellow", 0
number dd 116 ; integer
letter db "A" ; character
new_world db "Hello World!", 0

char_prompt db "Enter a character: ", 0
int_prompt db "Enter an interger: ", 0

FirstLetter db "R"
ascNum dd 82
first_letter_ascii dd 82

many_numbers times 15 dd 34

characters times 5 db "Z"

; uninitialized data
segment .bss
space_for_int resd 1 ;space for one interger

segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha

        ;mov eax, [number] ; eax = 116
        ;mov [number], 32

       ; call print_int
        ;call print_char

        ;call print_int

        ;call ascNum ; call
        ;call FirstLetter

        ;mov eax, [ascNum]
        ;mov [FirstLetter]

        ;mov eax, [first_letter_ascii]
        ;call print_int
        ;call print_nl
        ;call print_char

        ;dump_mem 1, fav_color, 0 ; dump

        ;mov eax, fav_color + 3
        ;call print_string

        ;mov eax, new_world
        ;mov eax, memDump
        ;call print_string
        ;call print_nl
        ;dump_mem 1, new_world, 0 ; dump

        mov eax, char_prompt
        call print_string
        call read_char

        mov eax, int_prompt
        call print_string
        call read_int
		
        dump_mem 1, character, 0
        call print_nl
        memDump 2, character + 3, 0

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret


