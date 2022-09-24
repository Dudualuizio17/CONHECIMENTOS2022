*&---------------------------------------------------------------------*
*& Report  ZFUNCAO1501
*&
*&---------------------------------------------------------------------*
*& Descrição : Programa (Módulo de Função)
*& Autor : Aluizio Antonio
*&---------------------------------------------------------------------*

REPORT zfuncao1501.

PARAMETERS p_data  TYPE sy-datum.

START-OF-SELECTION.

  DATA v_semana(10) TYPE c.

  CALL FUNCTION 'DATE_TO_DAY'
    EXPORTING
      date    = p_data
    IMPORTING
      weekday = v_semana.

  WRITE: 'O dia da semana é:',
          v_semana.