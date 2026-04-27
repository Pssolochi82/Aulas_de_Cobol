      ******************************************************************
      * Author: PALMIRA SOLOCHI
      * Date: 27/04/25
      * Purpose: CALL DINÁMICO
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCHAMADOR.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-AREA.
           03 WS-RS                PIC 99.
           03 WS-N1                PIC 99.
           03 WS-N2                PIC 99.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
      *     'D:\Cursos Udemy\Aprenda_Cobol\COBOL\bin'
            DISPLAY "PROGRAMA CHAMADOR"

            INITIALISE WS-AREA

            MOVE 5     TO  WS-N1
            MOVE 3     TO  WS-N2

            DISPLAY 'CHAMANDO PROGRAMA...'
            CALL 'D:\Cursos Udemy\Aprenda_Cobol\COBOL\bin\PROGCHAMADO'
                                                      USING WS-AREA
            DISPLAY 'PROGRAMA CHAMADO EXECUTADO COM SUCESSO: '
                                                         WS-RS
            STOP RUN.
       END PROGRAM PROGCHAMADOR.
