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
