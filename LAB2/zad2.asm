org 100h

mov AH, 09h ; WRITE STRING TO STANDARD OUTPUT
mov DX, string ; String
int 21h

mov AH, 00h ; TERMINATE PROGRAM
int 21h

string db "Roland Liedtke$"