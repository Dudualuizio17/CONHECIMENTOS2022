*Descrição  : Programa de tabuada

REPORT ZTABUADA1201.

PARAMETERS P_NUM TYPE I.

START-OF-SELECTION.

DATA V_RESULT TYPE I.

    DO 10 TIMES.

    V_RESULT = P_NUM * SY-INDEX.

    WRITE / P_NUM.
    WRITE 'X'.
    WRITE SY-INDEX.
    WRITE '='.
    WRITE V_RESULT.

    ENDDO.

ULINE.