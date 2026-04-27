MOV R0, #30H  ; Source start
MOV R1, #40H  ; Destination start
MOV R2, #10   ; Count = 16 bytes

BACK: MOV A, @R0
      MOV @R1, A
      INC R0
      INC R1
      DJNZ R2, BACK
HERE: SJMP HERE
