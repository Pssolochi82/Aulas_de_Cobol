      ******************************************************************
      * Author:PALMIRA SOLOCHI
      * Date:20/04/26
      * Purpose: COMO USAR O CAMANDO SIZE ERROR
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGSIZEERROR.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-NUM-1                 PIC 9(02) VALUE ZEROS.
       77 WS-NUM-2                 PIC 9(02) VALUE ZEROS.
       77 WS-RESULT                PIC 9(02) VALUE ZEROS.

       PROCEDURE DIVISION.
       P001-INICIO.
            PERFORM P100-CALC.
            PERFORM P999-FIM.

       P100-CALC.

            DISPLAY 'DIGITE O PRIMEIRO NUMERO: '
            ACCEPT WS-NUM-1

            DISPLAY 'DIGITE O SEGUNDO NUMERO: '
            ACCEPT WS-NUM-2

            COMPUTE WS-RESULT = WS-NUM-1 * WS-NUM-2
                    ON SIZE ERROR PERFORM P800-ERRO.

            DISPLAY 'CALCULO OK! RESULTADO: ' WS-RESULT
            .
       P800-ERRO.

            DISPLAY 'ERRO NO CALCULO.'
            .
       P999-FIM.

            STOP RUN.
       END PROGRAM PROGSIZEERROR.
