*&---------------------------------------------------------------------*
*& Report  Z_BIFCOND_P1016353
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT z_bifcond_p1016353.

PARAMETERS pa_edad TYPE i.

IF pa_edad >= 18.

  WRITE 'Adulto'.

ELSEIF pa_edad IS INITIAL.

  WRITE 'Por favor introduzca edad'.

ELSE.

  WRITE 'Niño'.
ENDIF.
