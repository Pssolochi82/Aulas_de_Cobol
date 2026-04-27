      ******************************************************************
      * Author:PALMIRA SOLOCHI
      * Date:27/04/26
      * Purpose: POJECTO BOLETIM ESCOLAR
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. BOLETIM.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 WS-NOME-ALUNO        PIC A(30).
       01 WS-MATERIA           PIC A(30).

       01 WS-NOTA1             PIC 99V99.
       01 WS-NOTA2             PIC 99V99.
       01 WS-NOTA3             PIC 99V99.
       01 WS-NOTA4             PIC 99V99.

       01 WS-MEDIA             PIC 99V99.
       01 WS-MEDIA-EDIT        PIC Z9.99.

       01 WS-STATUS            PIC X(12).
       01 WS-OPCAO             PIC X VALUE "S".

       PROCEDURE DIVISION.

       INICIO.

           PERFORM PROCESSAR-BOLETIM
               UNTIL WS-OPCAO = "N" OR WS-OPCAO = "n"

           DISPLAY " "
           DISPLAY "*******************************************"
           DISPLAY "* OBRIGADO POR UTILIZAR O SISTEMA.        *"
           DISPLAY "*******************************************"

           STOP RUN.

       PROCESSAR-BOLETIM.

           DISPLAY " "
           DISPLAY "*******************************************"
           DISPLAY "*        SISTEMA DE BOLETIM ESCOLAR       *"
           DISPLAY "*******************************************"

           DISPLAY "DIGITE O NOME DO ALUNO: "
           ACCEPT WS-NOME-ALUNO

           DISPLAY "DIGITE A MATERIA: "
           ACCEPT WS-MATERIA

           PERFORM LER-NOTAS

           COMPUTE WS-MEDIA =
               (WS-NOTA1 + WS-NOTA2 + WS-NOTA3 + WS-NOTA4) / 4

           IF WS-MEDIA >= 7
               MOVE "APROVADO" TO WS-STATUS
           ELSE
               MOVE "REPROVADO" TO WS-STATUS
           END-IF

           MOVE WS-MEDIA TO WS-MEDIA-EDIT

           DISPLAY " "
           DISPLAY "*** RESULTADO DO PROCESSAMENTO ***"
           DISPLAY "Nome do Aluno : " WS-NOME-ALUNO
           DISPLAY "Materia       : " WS-MATERIA
           DISPLAY "Media         : " WS-MEDIA-EDIT
           DISPLAY "Status        : " WS-STATUS
           DISPLAY "*******************************************"

           DISPLAY " "
           DISPLAY "DESEJA CONTINUAR? (S/N): "
           ACCEPT WS-OPCAO.

       LER-NOTAS.

           DISPLAY "DIGITE A NOTA 1: "
           ACCEPT WS-NOTA1

           DISPLAY "DIGITE A NOTA 2: "
           ACCEPT WS-NOTA2

           DISPLAY "DIGITE A NOTA 3: "
           ACCEPT WS-NOTA3

           DISPLAY "DIGITE A NOTA 4: "
           ACCEPT WS-NOTA4

           IF WS-NOTA1 < 1 OR WS-NOTA2 < 1
              OR WS-NOTA3 < 1 OR WS-NOTA4 < 1
               DISPLAY " "
               DISPLAY "*******************************************"
               DISPLAY "* NOTAS INVALIDAS - TENTE NOVAMENTE      *"
               DISPLAY "*******************************************"
               PERFORM LER-NOTAS
           END-IF.
