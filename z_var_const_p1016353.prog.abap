*&---------------------------------------------------------------------*
*& Report  Z_VAR_CONST_P1016353
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT Z_VAR_CONST_P1016353.

CONSTANTS: fecha type D VALUE '20201127',
           moneda type c LENGTH 3 VALUE 'EUR'.

write: / 'Fecha: ',fecha DD/MM/YYYY,
/ 'Moneda: ', moneda.
