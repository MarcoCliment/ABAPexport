*&---------------------------------------------------------------------*
*& Report  Z_BIF_COND_P1016353
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT z_bif_cond_p1016353.

DATA: numero TYPE i.

numero = 5.

IF numero EQ 4.

WRITE 'Valor 4'.

ENDIF.

PARAMETERS pa_cod TYPE i.

IF pa_cod EQ 12.

  WRITE 'ha seleccionado el monitor DEll'.

ELSEIF pa_cod EQ 13.

  WRITE 'monitor HP'.

ELSEIF pa_cod IS INITIAL.

  WRITE 'Introduzca el código de material'.

ELSEIF pa_cod IS NOT INITIAL.

  WRITE 'codigo de material desconocido'.

  ENDIF.
