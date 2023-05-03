org 100h

mov AH, 01h ; READ CHARACTER FROM STANDARD INPUT, WITH ECHO
int 21h

mov AH, 02h ; WRITE CHARACTER TO STANDARD OUTPUT
mov DL, AL ; AL = character read
int 21h

mov AH, 00h
int 21h
