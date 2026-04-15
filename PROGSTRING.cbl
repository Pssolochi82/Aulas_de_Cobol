      ******************************************************************
      * Author: PALMIRA SOLOCHI
      * Date: 15/04/26
      * Purpose: DEMOSTRAÇÃO DO COMANDO STRING
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGSTRING.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-CONTEUDO                 PIC X(30) VALUE SPACES.
       PROCEDURE DIVISION.

            STRING
                 'PALMIRA'
                 ' '
                 'SOLOCHI'
                 DELIMITED BY SIZE INTO WS-CONTEUDO
            END-STRING

            DISPLAY WS-CONTEUDO

            STOP RUN.
       END PROGRAM PROGSTRING.
