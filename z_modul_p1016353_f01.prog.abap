*&---------------------------------------------------------------------*
*&  Include           Z_MODUL_P1016353_F01
*&---------------------------------------------------------------------*

FORM establecer_nombre.

  nombre = 'Alejandro'.

ENDFORM.
*&---------------------------------------------------------------------*
*&      Form  VISUALIZAR_NOMBRE
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM visualizar_nombre .

  write / nombre.

ENDFORM.                    " VISUALIZAR_NOMBRE
