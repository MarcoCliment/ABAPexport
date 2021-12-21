*&---------------------------------------------------------------------*
*& Report  Z_EXPRESIONES_P1016353
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT z_expresiones_p1016353.

DATA:  numero_a TYPE i,
       numero_b TYPE i,
       numero_c TYPE i.

numero_b = 4.
numero_c = 6.

*suma
numero_a = numero_b + numero_c.

WRITE: 'A = ',numero_a.

ADD 2 TO numero_a.

WRITE: / 'A = ', numero_a.

* Resta
CLEAR: numero_a,
       numero_b,
       numero_c.

WRITE: / 'A = ', numero_a.

numero_b = 10.
numero_c = 7.

numero_a = numero_b - numero_c.

WRITE: / 'A = ', numero_a.

SUBTRACT 1 FROM numero_a.

WRITE: / 'A = ', numero_a.

numero_a = numero_b * numero_c.

WRITE: / 'A = ', numero_a.

MULTIPLY numero_a BY 2.

WRITE: / 'A = ', numero_a.

numero_b = 8.
numero_c = 2.

numero_a = numero_b / numero_c.

write: / 'A = ', numero_a.

numero_a = 2 * ( numero_b + numero_c ).

write: / 'A = ', numero_a.
