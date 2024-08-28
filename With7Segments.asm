ORG 0000H
AJMP SEMAFORO

ORG 0013H
AJMP INT1_ISR

SEMAFORO:

MOV SP, #70H
CLR IT1
SETB EX1
SETB EA

CLR A
MOV R0, A
MOV R1, A

LOOP:
MOV P1, #0CEH
ACALL Contagem
MOV P1, #06EH
ACALL Contagem
MOV P1, #0B3H
ACALL Contagem
MOV P1, #0B5H
ACALL Contagem
MOV P1, #0CEH
AJMP LOOP

INT1_ISR:
	MOV P2, #0C0H ; Caractere 0
	MOV P1, #07DH
	acall delay1s
	MOV P1, #0FFH
	acall delay1s
	SJMP INT1_ISR  

delay1s:
MOV R1, #06FH
delay2005:
MOV R2, #07FH
NOP
NOP
NOP
delay2006:
NOP
DJNZ R2, delay2006
DJNZ R1, delay2005
RET

Contagem:
MOV P2, #0c0H ;0
ACALL delay1s  
MOV P2, #0F9H ;1
ACALL delay1s
MOV P2, #0A4H ;2
ACALL delay1s
MOV P2, #0B0H ;3
ACALL delay1s
MOV P2, #099H ;4
ACALL delay1s
MOV P2, #092H ;5
ACALL delay1s
MOV P2, #082H ;6
ACALL delay1s
MOV P2, #0F8H ;7
ACALL delay1s
MOV P2, #080H ;8
ACALL delay1s
MOV P2, #090H ;9
ACALL delay1s
RET
