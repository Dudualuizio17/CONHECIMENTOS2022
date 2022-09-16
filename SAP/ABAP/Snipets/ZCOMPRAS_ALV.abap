*&---------------------------------------------------------------------*
*& Report  ZFORNEC1301
*&
*&---------------------------------------------------------------------*
*& Descrição: Relatório de Fornecedores
*& Data: 14/09/2022 - Autor Aluizio Antonio
*&---------------------------------------------------------------------*
REPORT zfornec1301 LINE-COUNT 65.

*&---------------------------------------------------------------------*
*TABLES
*&---------------------------------------------------------------------*
TABLES lfa1.

*&---------------------------------------------------------------------*
*TYPES / SCTRUCTURE
*&---------------------------------------------------------------------*
TYPES: BEGIN OF ty_lfa1,
  lifnr TYPE lfa1-lifnr,
  name1 TYPE lfa1-name1,
  ort01 TYPE lfa1-ort01,
  stras TYPE lfa1-stras,
  land1 TYPE lfa1-land1,
  erdat TYPE lfa1-erdat,
  ktokk TYPE lfa1-ktokk,
  END OF ty_lfa1.

*&---------------------------------------------------------------------*
*WORKAREA
*&---------------------------------------------------------------------*
DATA wa_lfa1 TYPE ty_lfa1.

*&---------------------------------------------------------------------*
*INTERNAL TABLE
*&---------------------------------------------------------------------*
DATA it_lfa1 TYPE STANDARD TABLE OF ty_lfa1.

*&---------------------------------------------------------------------*
*SELECTIONS SCREEN
*&---------------------------------------------------------------------*
SELECT-OPTIONS s_lifnr FOR lfa1-lifnr.

*&---------------------------------------------------------------------*
*TOP OF PAGE - EVENT
*&---------------------------------------------------------------------*
TOP-OF-PAGE.

WRITE 'Code'.
WRITE 12 'Stores Name'.
WRITE 48 'Stores City'.
WRITE 83 ' Adress'.
WRITE 118'country'.
WRITE 129'Date'.
WRITE 145'Vendor account'.
ULINE.

*&---------------------------------------------------------------------*
*START OF SELECTION - EVENT
*&---------------------------------------------------------------------*
START-OF-SELECTION.

* Seleciona Dados da tabela KNA1
  SELECT lifnr
         name1
         ort01
         stras
         land1
         erdat
         ktokk
    INTO TABLE it_lfa1
    FROM lfa1
    WHERE lifnr IN s_lifnr.

*Imprime os dados da Tabela interna
  LOOP AT it_lfa1 INTO wa_lfa1.

    WRITE / wa_lfa1-lifnr.
    WRITE  wa_lfa1-name1.
    WRITE  wa_lfa1-ort01.
    WRITE  wa_lfa1-stras.
    WRITE  wa_lfa1-land1.
    WRITE 129 wa_lfa1-erdat.
    WRITE 145 wa_lfa1-ktokk.

  ENDLOOP.

  ULINE.