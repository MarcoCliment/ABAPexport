*&---------------------------------------------------------------------*
*& Report  Z_VAR_INCOMP_P1016353
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT Z_VAR_INCOMP_P1016353.

DATA: codigo_sociedad type n LENGTH 4,
      tarifa type p length 6 decimals 2.
codigo_sociedad = 9527.
tarifa = '1489.36'.

write: 'Código de sociedad: ', codigo_sociedad,
      /'Tarifa: ', tarifa.
