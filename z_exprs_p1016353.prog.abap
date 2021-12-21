*&---------------------------------------------------------------------*
*& Report  Z_EXPRS_P1016353
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT Z_EXPRS_P1016353.

DATA: valor_1 type i,
      valor_2 type i,
      resultado type i.

valor_1 = 12.
valor_2 = 3.

resultado = valor_1 + valor_2.

write:'Suma: ', resultado.

resultado = valor_1 - valor_2.

write:/ 'Resta: ', resultado.

resultado = valor_1 * valor_2.

write:/ 'Multiplicación: ', resultado.

resultado = valor_1 / valor_2.

write:/ 'División: ', resultado.
