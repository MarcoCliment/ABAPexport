*&---------------------------------------------------------------------*
*& Report  Z_CADENA_CAR_P1016353
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT z_cadena_car_p1016353.

DATA: sociedad TYPE c LENGTH 6,
      tipo TYPE c LENGTH 4,
      nombre_soc TYPE string,
      longitud type i.

sociedad = 'Logali'.
tipo = 'S.A.'.

CONCATENATE sociedad space tipo INTO nombre_soc RESPECTING BLANKS.

WRITE nombre_soc.

longitud = strlen( nombre_soc ).

write: / 'Longitud cadena = ', longitud.

TRANSLATE nombre_soc TO UPPER CASE.

write / nombre_soc.

TRANSLATE nombre_soc TO LOWER CASE.

write / nombre_soc.
