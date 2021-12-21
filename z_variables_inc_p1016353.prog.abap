*&---------------------------------------------------------------------*
*& Report  Z_VARIABLES_INC_P1016353
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT z_variables_inc_p1016353.


DATA: cadena TYPE c LENGTH 4,
      numero TYPE p LENGTH 10 DECIMALS 2.

cadena = 'Hola '.
numero = '45.10'.

WRITE: cadena, 'alumno ABAP', numero.
