      ******************************************************************
      * Author: PAMIRA SOLOCHI
      * Date:08/04/2026
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-MOSTRA                PIC X(20) VALUE SPACES.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

      *      DISPLAY 'DIGITE ALGO: '
      *      ACCEPT WS-MOSTRA
      *      DISPLAY 'WS-MOSTRA: ' WS-MOSTRA ' ' 45 ' TEXTO...'

             ACCEPT WS-MOSTRA FROM TIME
             DISPLAY WS-MOSTRA


            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
