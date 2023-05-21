org 100h

; Napisz program, który wypisze na terminalu twoje imię i nazwisko - 
; 21h/AH=09h

mov AH, 02h ; VIDEO - SET CURSOR POSITION
mov DH, 00h ; DH = row (00h is top)
mov DL, 00h ; DL = column (00h is left)
int 10h

mov AH, 02h ; WRITE CHARACTER TO STANDARD OUTPUT
mov DX, 41h
int 21h

mov AH, 00h
int 21h
