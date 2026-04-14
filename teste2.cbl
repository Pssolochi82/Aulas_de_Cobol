      ******************************************************************
      * Author:PALMIRA SOLOCHI
      * Date: 08/04/2026
      * Purpose: EXEMPLO DE UM PROGRAMA COBOL
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. TESTE2.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-N1                PIC 9(02) VALUE ZEROS.
       77 WS-N2                PIC 9(02) VALUE ZEROS.
       77 WS-N3                PIC Z(03) VALUE ZEROS.                      * SUBSTITUIMOS O 9 POR Z PORQUE ELE TIRA OS 0 QUE ESTAVAM A FRENTE DO RESULTADO*
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            MOVE 5   TO WS-N1
            MOVE 3   TO WS-N2

            COMPUTE WS-N3 = WS-N1 + WS-N2

            DISPLAY "O RESULTADO E: " WS-N3

            STOP RUN.
       END PROGRAM TESTE2.
