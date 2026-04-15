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
       77 WS-TEXTO                    PIC X(40) VALUE SPACES.
       77 WS-PONTEIRO                 PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
      *****************FORMA1*******************************************
            INITIALISE WS-CONTEUDO
                       WS-TEXTO

            STRING
                 'PALMIRA'
                 ' '
                 'SOLOCHI'
                 DELIMITED BY SIZE INTO WS-CONTEUDO
            END-STRING

            DISPLAY WS-CONTEUDO

      ********************FORMA 2***************************************
       INITIALISE WS-CONTEUDO
                  WS-TEXTO(1:7)
                  WS-TEXTO(15:4)
            MOVE 'A PALMIRA ESTA A ESTUDAR COBOL' TO WS-TEXTO

            STRING
                WS-TEXTO
                DELIMITED BY SIZE INTO WS-CONTEUDO
            END-STRING

            DISPLAY WS-CONTEUDO
      **************************FORMA 3 ********************************
       INITIALISE WS-CONTEUDO
                  WS-TEXTO

            MOVE 'A PALMIRA ESTA A ESTUDAR COBOL' TO WS-TEXTO
            STRING
                WS-TEXTO
                DELIMITED BY SPACES INTO WS-CONTEUDO
            END-STRING

            DISPLAY WS-CONTEUDO

      **************************FORMA 4 ********************************
       INITIALISE WS-CONTEUDO
                  WS-TEXTO

            MOVE 'A        ESTA A ESTUDAR COBOL' TO WS-TEXTO
            SET WS-PONTEIRO                      TO 4

            STRING
                'PALMIRA'
                DELIMITED BY SIZE INTO WS-TEXTO
                WITH POINTER WS-PONTEIRO
            END-STRING

            DISPLAY WS-TEXTO
            DISPLAY WS-PONTEIRO

            STOP RUN.
       END PROGRAM PROGSTRING.
