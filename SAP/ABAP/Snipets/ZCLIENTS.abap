*&---------------------------------------------------------------------*
*& Report  ZCLIENTES1301
*&
*&---------------------------------------------------------------------*
*& Descrição : Relatório de Clientes
*& Data : 13/09/2022 - Autor Aluizio Antonio
*&---------------------------------------------------------------------*
REPORT zclientes1301 LINE-COUNT 65.

*&---------------------------------------------------------------------*
*TABLES
*&---------------------------------------------------------------------*
TABLES kna1.

*&---------------------------------------------------------------------*
*TYPES / SCTRUCTURE
*&---------------------------------------------------------------------*
TYPES: BEGIN OF ty_kna1,
  kunnr TYPE kna1-kunnr,
  name1 TYPE kna1-name1,
  stras TYPE kna1-stras,
  regio TYPE kna1-regio,
  END OF ty_kna1.

*&---------------------------------------------------------------------*
*WORKAREA
*&---------------------------------------------------------------------*
DATA wa_kna1 TYPE ty_kna1.

*&---------------------------------------------------------------------*
*INTERBAL TABLE
*&---------------------------------------------------------------------*
DATA ty_kna1 TYPE STANDARD TABLE OF ty_kna1.

*&---------------------------------------------------------------------*
*SELECTIONS SCREEN
*&---------------------------------------------------------------------*
SELECT-OPTIONS s_kunnr FOR kna1-kunnr.

*&---------------------------------------------------------------------*
*TOP OF PAGE - EVENT
*&---------------------------------------------------------------------*
TOP-OF-PAGE.

  WRITE:   text-t01,
        12 text-t02,
        48 text-t03,
        84 text-t04.
  ULINE.

*&---------------------------------------------------------------------*
*START OF SELECTION - EVENT
*&---------------------------------------------------------------------*
START-OF-SELECTION.

* Seleciona Dados da tabela KNA1
  SELECT kunnr
         name1
         stras
         regio
         INTO TABLE ty_kna1
         FROM kna1
         WHERE kunnr IN s_kunnr.

  IF sy-subrc NE 0.

    MESSAGE text-m01 TYPE 'I'.

  ELSE.


*Imprime os dados da Tabela interna
    LOOP AT ty_kna1 INTO wa_kna1.

      WRITE: /  wa_kna1-kunnr,
                wa_kna1-name1,
                wa_kna1-stras,
                wa_kna1-regio.

    ENDLOOP.

    ULINE.

  ENDIF.