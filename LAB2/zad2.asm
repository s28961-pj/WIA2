org 100h

; Napisz program, który wypisze na terminalu twoje imię i nazwisko - 
; 21h/AH=09h

mov AH, 09h ; WRITE STRING TO STANDARD OUTPUT
mov DX, string ; STRING
int 21h

mov AH, 00h ; TERMINATE PROGRAM
int 21h

string db "Roland Liedtke$"
