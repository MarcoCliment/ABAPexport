*&---------------------------------------------------------------------*
*& Report  Z_CAD_CAR_P1016353
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT Z_CAD_CAR_P1016353.

DATA: centro type c LENGTH 10,
      almacen type c LENGTH 10,
      texto type string.

centro = 'México'.
almacen = 'Monterrey'.

TRANSLATE centro TO LOWER CASE.
TRANSLATE almacen TO LOWER CASE.

write: centro, / almacen.

CONCATENATE centro space texto into texto.

write texto.
