      ******************************************************************
      * Author: PALMIRA SOLOCHI
      * Date: 15/04/26
      * Purpose: COMO USAR O COMANDO INITIALISE
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGINITIALISE.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-NOME.
           03 WS-PRIMEIRO-NOME               PIC X(10) VALUE 'PALMIRA'.
      *     03 WS-ULTIMO-NOME                PIC X(10) VALUE 'SOLOCHI'.
            03 FILLER                        PIC X(10) VALUE 'SOLOCHI'.
            03 FILLER                        PIC 9(03) VALUE 1.
       PROCEDURE DIVISION.

            DISPLAY 'SAIDA 1:'
            DISPLAY WS-NOME

            DISPLAY 'SAIDA 2:'
            INITIALISE WS-NOME REPLACING ALPHANUMERIC BY 'SPACES'         * Usamos o comando REPLACING que é um comando de alteração*
                                         NUMERIC      BY 3.

            DISPLAY WS-NOME


            STOP RUN.
       END PROGRAM PROGINITIALISE.
