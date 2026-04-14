      ******************************************************************
      * Author: PALMIRA SOLOCHI
      * Date: 14/04/2026
      * Purpose: COMO USAR O COMANDO INSPECT
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGINSPECT.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-DATA                         PIC X(10) VALUE SPACES.
       01 FILLER    REDEFINES              WS-DATA.
          03 WS-DATA-DD                   PIC 9(02).
          03 FILLER                       PIC X.
          03 WS-DATA-MM                   PIC 9(02).
          03 FILLER                       PIC X.
       77 WS-NOME-MES-AUX                 PIC X(15) VALUE SPACES.
       77 WS-TECLA-AUX                    PIC X.                        *O AUX é usado para fazer contagem*
       77 WS-TOTAL                        PIC 9(02).
       77 FILLER                          PIC X(10) VALUES "14/04/2026".

       01 WS-MESES-ANO                    PIC 99 VALUE ZEROS.
          88 WS-MES-ATUAL                        VALUE 1 THRU 12.

       01 WS-DIAS-MES                     PIC 99 VALUE ZEROS.
          88 WS-FEV-NB                           VALUE 1 THRU 28.
          88 WS-FEV-B                            VALUE 1 THRU 29.
          88 WS-MES-30                           VALUE 1 THRU 30.
          88 WS-MES-31                           VALUE 1 THRU 30.
       PROCEDURE DIVISION.
      ******************************************************************
      *    INICIALIZAR AS VARIAVEIS E CHAMA OS DEMAIS PARAGRAFOS
      ******************************************************************
       P100-INICIAL.
           DISPLAY"INICIO DO PROCESSAMENTO".

            MOVE "12"                   TO WS-DATA(01:02).
            MOVE "/"                    TO WS-DATA(03:01).
            MOVE"03"                    TO WS-DATA(04:02).
            MOVE "/"                    TO WS-DATA(06:01).
            MOVE "2026"                 TO WS-DATA(07:04).

            DISPLAY WS-DATA.

      *      INSPECT WS-DATA TALLYING WS-TOTAL FOR ALL "2"
      *      BEFORE INITIAL "2026".

      *      DISPLAY "CONTAGEM TOTAL DO CARACTER: " WS-TOTAL.

             INSPECT WS-DATA REPLACING ALL "/" BY "-" AFTER "12".

             DISPLAY WS-DATA.

       MAIN-PROCEDURE.

            STOP RUN.
       END PROGRAM PROGINSPECT.
