*&---------------------------------------------------------------------*
*& Report  Z_CONSTANTES_P1016353
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT z_constantes_p1016353.

DATA numero TYPE i.

numero = 4.

WRITE: 'El valor de la variable es = ', numero.

numero = 5.

WRITE: / 'El valor de la variable es = ', numero.

CONSTANTS: hora TYPE t VALUE '143050',
           nombre type string VALUE 'Lorena'.

WRITE: / hora ENVIRONMENT TIME FORMAT,
       / nombre.
