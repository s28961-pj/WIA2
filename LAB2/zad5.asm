org 100h

; Napisz program, który wyświetli pośrodku ekranu literę “C”

mov AH, 02h ; VIDEO - SET CURSOR POSITION
; the screen is assumed to be 25 rows by 80 columns [from Internet]
mov DH, 12h ; DH = row (00h is top) 
mov DL, 40h ; DL = column (00h is left)
int 10h

mov AH, 02h ; WRITE CHARACTER TO STANDARD OUTPUT
mov DX, 43h ; ASCII - "C"
int 21h

mov AH, 00h
int 21h
