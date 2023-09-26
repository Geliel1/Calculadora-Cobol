       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALC002.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
           SPECIAL-NAMES.
               DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM01        PIC 9(6).
       01 NUM02        PIC 9(6).
       01 OPERCAO      PIC X.
       01 RESULTADO    PIC 9(6).
       PROCEDURE DIVISION.
           DISPLAY '**********CALCULADORA*************'
           DISPLAY '__________________________________'
           DISPLAY 'DIGITE UM NUMERO: '
           ACCEPT NUM01
           DISPLAY 'DIGITE OUTRO NUMERO: '
           ACCEPT  NUM02
           DISPLAY 'ESCOLHA A OPERAÇÃO ARITMÉTICA (+,-,*,/).'
           ACCEPT OPERCAO
           EVALUATE OPERCAO
               WHEN '+'
                   COMPUTE RESULTADO = NUM01 + NUM02
                   DISPLAY 'RESULTADO: ', RESULTADO
               WHEN '-'
                   COMPUTE RESULTADO = NUM01 - NUM02
                   DISPLAY 'RESULTADO: ', RESULTADO
               WHEN '*'
                   COMPUTE RESULTADO = NUM01 * NUM02
                   DISPLAY 'RESULTADO: ', RESULTADO
               WHEN '/'
               COMPUTE RESULTADO = NUM01 / NUM02
               DISPLAY 'RESULTADO: ', RESULTADO
           END-EVALUATE.
           STOP RUN.
