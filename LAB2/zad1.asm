org 100h

; Napisz program, który wyświetli na terminalu literkę ‘A’ oraz ‘g’. - 
; 21h/AX=02h

mov AH, 02h ; WRITE CHARACTER TO STANDARD OUTPUT
mov DL, 41h ; Char 'A'
int 21h ; wywołaj przerwanie DOS

mov AH, 02h ; WRITE CHARACTER TO STANDARD OUTPUT
mov DL, 67h ; Char 'g'
int 21h ; wywołaj przerwanie DOS

mov AH, 00h ; TERMINATE PROGRAM
int 21h
