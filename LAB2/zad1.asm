org 100h

mov AH, 02h ; WRITE CHARACTER TO STANDARD OUTPUT
mov DL, 41h ; Char 'A'
int 21h ; wywołaj przerwanie DOS

mov AH, 02h ; WRITE CHARACTER TO STANDARD OUTPUT
mov DL, 67h ; Char 'g'
int 21h ; wywołaj przerwanie DOS
