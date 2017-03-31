section	.text
	global  _start
_start:
	mov eax,4	; system call ID: sys_write
	mov ebx,1	; file descriptor for standard output
	mov ecx,string	; string address
	mov edx,length	; string length
	int 80h		; system call
	mov eax,1	; system call ID: sys_exit
	mov ebx,0	; exit code 0: no error
	int 80h		; system call

section .data
string: db 'Hello Professor Reed, Would you like to play a game? Chess: Poker: Fighter Combat: Guerrilla Engagement: Desert Warfare: Air-to-Ground Actions: Theaterwide Tactical Warfare: Theaterwide Biotoxic and Chemical Warfare: >>>>Global Thermonuclear War<<<<', 0Ah ; output string
length: equ 254		; length of string
