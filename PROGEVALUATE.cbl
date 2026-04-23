      ******************************************************************
      * Author: PALMIRA SOLOCHI
      * Date:22/04/26
      * Purpose: ESTRUTURA DE DECISÃO EVALUATE
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGEVALUATE.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-VARIAVEIS.
           03 WS-MES                       PIC 99.
           03 WS-STATUS                    PIC 99.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            INITIALISE WS-VARIAVEIS

            DISPLAY 'INFORME UM NUMERO DE MES: '
            ACCEPT WS-MES

            DISPLAY 'INFORME UM NUMERO DE STATUS: '
            ACCEPT WS-STATUS

            EVALUATE WS-MES
               WHEN 01
                   DISPLAY 'JANEIRO'
               WHEN 02
                   DISPLAY 'FEVEREIRO'
               WHEN 03
                   DISPLAY 'MARCO'
               WHEN OTHER
                   DISPLAY 'MES INVALIDO'
            END-EVALUATE

            EVALUATE WS-STATUS
               WHEN 1
                  DISPLAY 'HOMEM'
               WHEN 2
                  DISPLAY 'MULHER'
               WHEN 3
                  DISPLAY 'OUTRO'
               WHEN OTHER
                  DISPLAY 'STATUS INVALIDO!'
            STOP RUN.
       END PROGRAM PROGEVALUATE.
