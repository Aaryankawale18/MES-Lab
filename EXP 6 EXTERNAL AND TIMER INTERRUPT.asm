;Timer 1 interupt
ORG 0000H
LJMP MAIN

ORG 0003H      ; Timer0 ISR
INC P1
RETI

MAIN: MOV IE, #01H
      MOV TCON, #82H     ; Enable Timer0 Interrupt
      MOV P1,#00H
HERE: SJMP HERE
END

;Timer 0 interupt
ORG 0000H
LJMP MAIN

ORG 000BH      ; Timer0 ISR
CPL P1.0
RETI

MAIN: MOV TMOD, #01H
      MOV IE, #82H     ; Enable Timer0 Interrupt
      SETB TR0
      SJMP $
END
