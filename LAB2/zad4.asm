org 100h

; Napisz program, który odczyta znak, a następnie go wydrukuje - int 
; 21h/AH=01h - proponuję przed wydrukowaniem odczytanego znaku wydrukować 
; jeszcze np. spację

mov AH, 01h ; READ CHARACTER FROM STANDARD INPUT, WITH ECHO
int 21h

mov AH, 02h ; WRITE CHARACTER TO STANDARD OUTPUT
mov DL, AL ; AL = character read
int 21h

mov AH, 00h
int 21h
