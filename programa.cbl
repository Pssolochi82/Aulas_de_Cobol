      ******************************************************************
      * Author:PALMIRA SOLOCHI
      * Date: 08/04/2026
      * Purpose: DEMOSTRAÇÃO EM AULAS DO CODIGO
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-DATA              PIC X(10) VALUE SPACES.
       01 WS-DATA-R    REDEFINES   WS-DATA.
          03 WS-DATA-DD        PIC 9(02).
          03 FILLER            PIC X.                                   *FILLER significaque é  um valor fixo.*
          03 WS-DATA-MM        PIC 9(04).
          03 FILLER            PIC X.
       77 WS-NOME-MES-AUX      PIC X(15) VALUE SPACE.
       77 WS-TECLA-AUX         PIC X.


       01 WS-MESES-ANO         PIC 99 VALUE ZEROS.
          88 WS-MES-ATUAL             VALUE 1 THRU 12.

       01 WS-DIAS-MES          PIC 99 VALUE ZEROS.
          88 WS-FEV-NB                VALUE 1 THRU 28.
          88 WS-FEV-B                 VALUE 1 THRU 29.
          88 WS-MES-30                VALUE 1 THRU 30.
          88 WS-MES-31                VALUE 1 THRU 31.


       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY
            STOP RUN.
       END PROGRAM PROGRAMA.
