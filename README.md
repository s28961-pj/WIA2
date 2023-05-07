Procesor 8088, 8086 (XT)
16 bitowe rejestry:
AX, BX, CX, DX, SI, DI, BP, SP,
CS, DS, SS, ES, IP, FLAGS

MOV AX, 89            ; prześlij do rejestru AX liczbę 89
MOV DX, 10            ; prześlij do rejestru DX liczbę 10
ADD AX, DX            ; dodaj 89 i 10, a wynik prześlij do AX

AX - akumulator
najczęściej służy do wykonywania działań matematycznych na liczbach całkowitych,
w wielu rozkazach jest domyślnym rejestrem np. DIV BH
w tym rejestrze będziemy umieszczać numery funkcji systemu operacyjnego lub BIOSu wykonywanych po wykonaniu przerwania
Przykład wykorzystania rejestrów akumulatora do operacji arytmetycznych

MOV AH, 1             ; prześlij do rejestru AH liczbę 1
MOV AL,AH             ; kopiuj AH do AL
DEC AL                ; odejmij 1 (dekrementacja) od AL
                      ;  AX ma wartość 256
                     
BX rejestr bazowy
często wykorzystywany po przechowywania adresu pamięci w adresowaniu pośrednim,
używany przy dostępie do tablic jako indeks
MOV BX, 6  
MOV AL, [BX]      ; prześlij do rejestru AL 
                  ; zawartość pamięci spod adresu 6
MOV tablica[BX], 10   ; prześlij do 10 pod adres tablica+6

CX - licznik
używany do określania ilości powtórzeń pętli
MOV CX, 5
MOV AX, 0 
poczatek_petli:        ; etykieta
ADD AX, CX
LOOP poczatek_petli    ; zmniejsz CX o jeden 
              ; i jeśli CX różne od 0 skocz do etykiety

DX rejestr danych
W tym rejestrze przechowujemy adresy różnych zmiennych, przesyłamy dane do przerwań.

Rejestry indeksowe
Rejestry indeksowe najczęściej służą do operacji na długich łańcuchach danych, w tym napisach i tablicach

SI - Source Index indeks źródłowy

DI - Destination Index indeks docelowy

W trybie 32 bitowym te indeksy nie dzielą się już na 8 bitowe

Rejestry wskaźnikowe
BP (base pointer) wskaźnik bazowy 
w nim przechowuje się aktualny spód stosu dla funkcji. Pozwala to określić położenie zmiennych lokalnych.

SP (stack pointer) wskaźnik stosu 
przechowuje adres wierzchołka stosu.

IP (instruction pointer) wskaźnik instrukcji
Przechowuje adres następnej instrukcji do wykonania.
Wywołanie funkcji to tak naprawdę zapamiętanie aktualnej wartości tego rejestru i zmiana na adres początku funkcji.

Tryby adresowania
bezpośredni - podajemy 32 bitową stałą, która określa przesunięcie względem początku pamięci (czyli adresu 0)
pośredni przez rejestr - adres znajduje się w jednym z 32/64 bitowych rejestrów.
mov al, [eax]     
mov al, [ebx]
indeksowany - efektywny adres wylicza się dodając adres zmiennej i wartość przechowywaną w jednym z rejestrów.
mov zmienna[ebx], 5
skalowany (ModR/M)
adres = baza + indeks * skala + przesuniecie
gdzie
baza i indeks znajdują sie w rejestrach,
skala=1,2,4,8,
przesuniecie jest czescia instrukcji
mov [ebx + esi * 4 + 2]
relatywny względem aktualnej instrukcji
adres = rip + przesuniecie
mov [rip + przesuniecie], 1

Typy danych
Rozmiary:

Nazwa	Liczb bitów	nasm	
byte	8	db	
word	16	dw	
double word (dword)	32	dd	
quadruple word (qword, long)	64	dq	
octuple word (oword)	128	do	

Interpretacja jest zależna od instrukcji:

liczba całkowita bez znaku
liczba całkowita ze znakiem
adres pamięci
liczba zmiennoprzecinkowa
