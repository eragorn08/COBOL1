       IDENTIFICATION DIVISION.
       PROGRAM-ID. GRD.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  GRADE   PIC 999.

       PROCEDURE DIVISION.
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
           STOP RUN.
                 
       
