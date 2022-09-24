*&---------------------------------------------------------------------*
*& Report  ZBATCH_INPUT2101
*&
*&---------------------------------------------------------------------*
*& Descrição: Programa de Batch-Input
*& Autor: Aluizio Antonio - Data: 21/09/2022
*&---------------------------------------------------------------------*
REPORT zbatch_input2101.

*---------------------------------------------------------------------*
* Structure
*&---------------------------------------------------------------------*
TYPES: BEGIN OF ty_file,
  linha TYPE string,
  END OF ty_file.

*---------------------------------------------------------------------*
* WorkArea
*&---------------------------------------------------------------------*
DATA: wa_file     TYPE ty_file,
      wa_params   TYPE ctu_params,
      wa_bdcdata  TYPE bdcdata,
      wa_msg      TYPE bdcmsgcoll.

*---------------------------------------------------------------------*
* Internal Table
*&---------------------------------------------------------------------*
DATA: ti_file    TYPE TABLE OF ty_file,
      ti_bdcdata TYPE TABLE OF bdcdata,
      ti_msg     TYPE TABLE OF bdcmsgcoll.
*&---------------------------------------------------------------------*
* Selection Screen
*&---------------------------------------------------------------------*
PARAMETERS p_file TYPE string.

*&---------------------------------------------------------------------*
* At Selection Screen - Evento
*&---------------------------------------------------------------------*
AT SELECTION-SCREEN ON VALUE-REQUEST FOR p_file.

  CALL FUNCTION 'GUI_FILE_LOAD_DIALOG'
    EXPORTING
      window_title      = 'localiza o Arquivo'
      default_extension = 'CSV'
    IMPORTING
      fullpath          = p_file.

*&---------------------------------------------------------------------*
* Start Of Selection - Evento
*&---------------------------------------------------------------------*
START-OF-SELECTION.

  DATA: vl_user(12)  TYPE c,
        vl_depto(40) TYPE c.

  CALL FUNCTION 'GUI_UPLOAD'
    EXPORTING
      filename                = p_file
    TABLES
      data_tab                = ti_file
    EXCEPTIONS
      file_open_error         = 1
      file_read_error         = 2
      no_batch                = 3
      gui_refuse_filetransfer = 4
      invalid_type            = 5
      no_authority            = 6
      unknown_error           = 7
      bad_data_format         = 8
      header_not_allowed      = 9
      separator_not_allowed   = 10
      header_too_long         = 11
      unknown_dp_error        = 12
      access_denied           = 13
      dp_out_of_memory        = 14
      disk_full               = 15
      dp_timeout              = 16
      OTHERS                  = 17.

  LOOP AT ti_file INTO wa_file.

    SPLIT wa_file-linha AT ';' INTO vl_user
                                    vl_depto.

    PERFORM f_preenche_bdc USING:  'X' 'SAPLSUID_MAINTENANCE'                 '1050',
                                   ' ' 'BDC_CURSOR'                           'SUID_ST_BNAME-BNAME',
                                   ' ' 'BDC_OKCODE'                           '=CHAN',
                                   ' ' 'SUID_ST_BNAME-BNAME'                  vl_user.

    PERFORM f_preenche_bdc USING:  'X' 'SAPLSUID_MAINTENANCE'                 '1100',
                                   ' ' 'BDC_OKCODE'                           '=UPD',
                                   ' ' 'BDC_SUBSCR'                           'SAPLSUID_MAINTENANCE                    1900MAINAREA',
                                   ' ' 'BDC_CURSOR'                           'SUID_ST_NODE_WORKPLACE-DEPARTMENT',
                                   ' ' 'SUID_ST_NODE_WORKPLACE-DEPARTMENT'    vl_depto.

  ENDLOOP.

PERFORM f_preenche_bdc USING:  'X' 'SAPLSUID_MAINTENANCE'                 '1050',
                                   ' ' 'BDC_OKCODE'                       '=BACK'.

  wa_params-racommit = abap_true.
  wa_params-dismode  = 'N'. " A - VISIVEL / N - BACKGROUND

  CALL TRANSACTION 'SU01' USING ti_bdcdata
                          OPTIONS FROM wa_params
                          MESSAGES INTO ti_msg.

  DATA vl_texto TYPE string.

*Impressão de Mensagens
  LOOP AT ti_msg INTO wa_msg.

    CALL FUNCTION 'MESSAGE_TEXT_BUILD'
      EXPORTING
        msgid               = wa_msg-msgid
        msgnr               = wa_msg-msgnr
        msgv1               = wa_msg-msgv1
        msgv2               = wa_msg-msgv2
        msgv3               = wa_msg-msgv3
        msgv4               = wa_msg-msgv4
      IMPORTING
        message_text_output = vl_texto.

    WRITE: / vl_texto.

  ENDLOOP.

*&---------------------------------------------------------------------*
*&      Form  F_PREENCHE_BDC
*&---------------------------------------------------------------------*
*       Preenche o BDCDATA
*----------------------------------------------------------------------*
FORM f_preenche_bdc USING p1 p2 p3.

  IF p1 = 'X'.
    wa_bdcdata-program   = p2.
    wa_bdcdata-dynpro    = p3.
    wa_bdcdata-dynbegin  = p1.

  ELSE.
    wa_bdcdata-fnam      = p2.
    wa_bdcdata-fval      = p3.
  ENDIF.
  APPEND wa_bdcdata TO ti_bdcdata.
  CLEAR wa_bdcdata.

ENDFORM.                    " F_PREENCHE_BDC