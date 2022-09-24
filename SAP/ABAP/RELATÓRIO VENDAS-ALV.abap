*&---------------------------------------------------------------------*
*& Report  ZVENDAS1401_ALV
*&
*&---------------------------------------------------------------------*
*& Descrição: Relatório de Vendas - ALV
*& Autor : Aluizio Antonio - Data: 14/09/2022
*&---------------------------------------------------------------------*
REPORT zvendas1401_alv.

INCLUDE zvendas1401_alv_top.

*&---------------------------------------------------------------------*
* Select Screen
*&---------------------------------------------------------------------*
SELECT-OPTIONS s_vbeln FOR vbak-vbeln.

*&---------------------------------------------------------------------*
* Start of Selection
*&---------------------------------------------------------------------*
START-OF-SELECTION.

*Seleciona os Dados
  PERFORM f_seleciona_dados.
  PERFORM f_fieldcat.

*Exibe o ALV na tela.
  CALL FUNCTION 'REUSE_ALV_GRID_DISPLAY'
    EXPORTING
      it_fieldcat = ti_fieldcat
    TABLES
      t_outtab    = ti_alv.
*&---------------------------------------------------------------------*
*&      Form  F_SELECIONA_DADOS
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM f_seleciona_dados .

  SELECT k~vbeln
           p~posnr
           p~matnr
           p~matkl
           k~ernam
          FROM vbak AS k
          INNER JOIN vbap AS p
            ON k~vbeln = p~vbeln
          INTO TABLE ti_alv
          WHERE k~vbeln IN s_vbeln.

ENDFORM.                    " F_SELECIONA_DADOS

*&---------------------------------------------------------------------*
*&      Form  F_FIELDCAT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM f_fieldcat .

  wa_fieldcat-col_pos   = 1.
  wa_fieldcat-fieldname = 'VBELN'.
  wa_fieldcat-outputlen = 10.
  wa_fieldcat-tabname   = 'TI_ALV'.
  wa_fieldcat-seltext_l = 'Doc Vendas'.
  APPEND wa_fieldcat TO ti_fieldcat.
  CLEAR wa_fieldcat.

  wa_fieldcat-col_pos   = 2.
  wa_fieldcat-fieldname = 'POSNR'.
  wa_fieldcat-outputlen = 5.
  wa_fieldcat-tabname   = 'TI_ALV'.
  wa_fieldcat-seltext_l = 'Item'.
  APPEND wa_fieldcat TO ti_fieldcat.
  CLEAR wa_fieldcat.

  wa_fieldcat-col_pos   = 3.
  wa_fieldcat-fieldname = 'MATNR'.
  wa_fieldcat-outputlen = 18.
  wa_fieldcat-tabname   = 'TI_ALV'.
  wa_fieldcat-seltext_l = 'Material'.
  APPEND wa_fieldcat TO ti_fieldcat.
  CLEAR wa_fieldcat.

  wa_fieldcat-col_pos   = 4.
  wa_fieldcat-fieldname = 'MATKL'.
  wa_fieldcat-outputlen = 9.
  wa_fieldcat-tabname   = 'TI_ALV'.
  wa_fieldcat-seltext_l = 'Grp Merc'.
  APPEND wa_fieldcat TO ti_fieldcat.
  CLEAR wa_fieldcat.

  wa_fieldcat-col_pos   = 5.
  wa_fieldcat-fieldname = 'ERNAM'.
  wa_fieldcat-outputlen = 12.
  wa_fieldcat-tabname   = 'TI_ALV'.
  wa_fieldcat-seltext_l = 'Usuário'.
  APPEND wa_fieldcat TO ti_fieldcat.
  CLEAR wa_fieldcat.

ENDFORM.                    " F_FIELDCAT