       IDENTIFICATION DIVISION.
       PROGRAM-ID. prime.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  PRIME     PIC 999.
       01  I         PIC 999.
       01  RES1      PIC 99.
       01  REM1      PIC 99.
       01  FLAG1     PIC 9 VALUE 0.
       
       PROCEDURE DIVISION.
       PRIME1.
           DISPLAY 'ENTER A NUMBER: '
           ACCEPT PRIME.
           PERFORM VARYING I FROM 2 BY 1 UNTIL I = PRIME
           DIVIDE PRIME BY I GIVING RES1 REMAINDER REM1
           IF REM1 = 0 THEN MOVE 1 TO FLAG1
           END-PERFORM.
           IF PRIME = 0 
               DISPLAY PRIME " IS NEITHER PRIME NOR COMPOSITE."
           ELSE
               IF FLAG1 = 0 THEN DISPLAY PRIME " IS PRIME"
               ELSE THEN DISPLAY PRIME " IS NOT A PRIME"
           END-IF.
           STOP RUN.
