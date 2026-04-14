      ******************************************************************
      * Author: PALMIRA SOLOCHI
      * Date: 08/04/26
      * Purpose: USANDO O COMANDO MOVIE
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGMOVIE.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-DATA              PIC X(10) VALUE SPACES.
       01 FILLER     REDEFINES  WS-DATA.
          03 WS-DATA-DD        PIC 9(02).
          03 FILLER            PIC X.
          03 WS-DATA-MM        PIC 9(02).
          03 FILLER            PIC X.
          03 WS-DATA-AA        PIC 9(04).
       77 WS-NOME-MES-AUX      PIC X(15) VALUE SPACES.
       77 WS-TECLAS-AUX        PIC X.
       77 FILLER               PIC X(10) VALUE "09/04/2026".

       01 WS-MESES-ANO         PIC 99 VALUE ZEROS.
          88 WS-MES-ATUAL              VALUE 1 THRU 12.

       01 WS-DIAS-MES          PIC 99 VALUE ZEROS.
          88 WS-FEV-NB                VALUE 1 THRU 28.
          88 WS-FEV-B                 VALUE 1 THRU 29.
          88 WS-MES-30                VALUE 1 THRU 30.
          88 WS-MES-31                VALUE 1 THRU 31.

       PROCEDURE DIVISION.
      ******************************************************************
      *     INICIALIZA AS VARIAVEIS E CHAMA OS DEMAIS PARAGRAFOS
      ******************************************************************
       P100-INICIAL.
            DISPLAY "INICIO DO PROCESSAMENTO".
            MOVE 3          TO WS-MESES-ANO.

            IF WS-MES-ATUAL THEN
                DISPLAY "MES VERDADEIRO: " WS-MESES-ANO
            ELSE
                DISPLAY "ESSE MES NAO EXISTE: " WS-MESES-ANO
            END-IF.

            MOVE 31        TO WS-DIAS-MES.

            EVALUATE WS-DIAS-MES
               WHEN 1 THRU 28
                    DISPLAY WS-DIAS-MES
               WHEN 1 THRU 29
                    DISPLAY WS-DIAS-MES
               WHEN 1 THRU 30
                   DISPLAY WS-DIAS-MES
               WHEN 1 THRU 31
                   DISPLAY WS-DIAS-MES



            STOP RUN.
       END PROGRAM PROGMOVIE.
