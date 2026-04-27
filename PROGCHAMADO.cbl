      ******************************************************************
      * Author: PALMIRA SOLOCHI
      * Date: 27/04/26
      * Purpose: CALL ESTÁTICO
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCHAMADO.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
       01 PARAMETRES.
           02 WS-RETURN  PIC 99 VALUE 0.
           02 WS-NUM-1   PIC 99 VALUE 0.
           02 WS-NUM-2   PIC 99 VALUE 0.

       PROCEDURE DIVISION USING PARAMETRES.
       MAIN-PROCEDURE.
           DISPLAY "PROGRAMA CHAMADO"
           DISPLAY 'RECEBEU WS-NUM-1: '  WS-NUM-1
           DISPLAY 'RECEBEU WS-NUM-2: '  WS-NUM-2

           COMPUTE WS-RETURN = WS-NUM-1 + WS-NUM-2

           GOBACK.
       END PROGRAM PROGCHAMADO.
