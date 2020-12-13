       IDENTIFICATION DIVISION.
       PROGRAM-ID. Activity1.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-ANY      PIC X.
       01  WS-NEWLINE  PIC X(25) VALUE SPACES.
       01  WS-QUIT     PIC 9  VALUE 0.
       01  WS-CHOICE   PIC X.
           88  A       VALUE 'A', 'a'.
           88  B       VALUE 'B', 'b'.
           88  C       VALUE 'C', 'c'.
           88  D       VALUE 'D', 'd'.
           88  E       VALUE 'E', 'e'.
       01  WS-CONVERT.
           05  WS-B    PIC 9(10).
           05  WS-MB   PIC 9.9(10).  
       01  WS-PGS.
           05  GRADE   PIC 999.
       01  WS-PRIME.
           05  PRIME   PIC 999.
           05  I       PIC 999.
           05  RES1    PIC 99.
           05  REM1    PIC 99.
           05  FLAG1   PIC 9 VALUE 0.

       PROCEDURE DIVISION.
       MAIN.
           PERFORM PARA-MENU WITH TEST BEFORE UNTIL WS-QUIT = 1.
           STOP RUN.

       PARA-MENU.
           DISPLAY 'MAIN MENU'.
           DISPLAY 'A - PUP Grading System'.
           DISPLAY 'B - Prime or Not'.
           DISPLAY 'C - Bytes to MB Converter'.
           DISPLAY 'D - Decimal to Octal Converter'.
           DISPLAY 'E - Exit'.
           
           ACCEPT WS-CHOICE.
           
           IF A    
               PERFORM PARA-PGS
           ELSE IF B
               PERFORM PARA-PRIME1
           ELSE IF C 
               PERFORM PARA-CONVERT
           ELSE IF D
               CONTINUE
           ELSE IF E 
               ADD 1 TO WS-QUIT
           ELSE
               DISPLAY 'INVALID INPUT'
           END-IF.
           
       PARA-PGS.
           DISPLAY "Enter grade in percentage:".
           ACCEPT GRADE.
           IF GRADE IS EQUAL TO 75
               DISPLAY "Point grade is 3.00"
           ELSE IF GRADE > 64 AND GRADE < 75
               DISPLAY "Point grade is 5.00"
           ELSE IF GRADE > 75 AND GRADE < 79
               DISPLAY "Point grade is 2.75"
           ELSE IF GRADE > 78 AND GRADE < 82
               DISPLAY "Point grade is 2.50"
           ELSE IF GRADE > 81 AND GRADE < 85
               DISPLAY "Point grade is 2.25"
           ELSE IF GRADE > 84 AND GRADE < 88
               DISPLAY "Point grade is 2.00"
           ELSE IF GRADE > 87 AND GRADE < 91
               DISPLAY "Point grade is 1.75"
           ELSE IF GRADE > 90 AND GRADE < 94
               DISPLAY "Point grade is 1.50"
           ELSE IF GRADE > 93 AND GRADE < 97
               DISPLAY "Point grade is 1.25"
           ELSE IF GRADE > 96 AND GRADE < 101
               DISPLAY "Point grade is 1.00"
           ELSE
               DISPLAY "Invalid Input"
           END-IF.
           ACCEPT WS-ANY.
           DISPLAY WS-NEWLINE.
           DISPLAY WS-NEWLINE.
           
       PARA-PRIME1.
           DISPLAY 'Enter a number: '
           ACCEPT PRIME.
           PERFORM VARYING I FROM 2 BY 1 UNTIL I = PRIME
           DIVIDE PRIME BY I GIVING RES1 REMAINDER REM1
           IF REM1 = 0 THEN MOVE 1 TO FLAG1
           END-PERFORM.
           IF PRIME = 0 
               DISPLAY PRIME " is neither prime nor composite number"
           ELSE
               IF FLAG1 = 0 THEN DISPLAY PRIME " is a prime number"
               ELSE DISPLAY PRIME " is not a prime number"
           END-IF.
           ACCEPT WS-ANY.
           DISPLAY WS-NEWLINE.
           DISPLAY WS-NEWLINE.

       PARA-CONVERT.
           DISPLAY 'Enter byte/s:' ACCEPT WS-B.
           COMPUTE WS-MB = WS-B * 0.000000954.
           DISPLAY WS-B ' is equivalent to ' WS-MB ' MB'.
           ACCEPT WS-ANY.
           DISPLAY WS-NEWLINE.
           DISPLAY WS-NEWLINE. 
