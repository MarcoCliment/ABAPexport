*&---------------------------------------------------------------------*
*& Report  Z_LEER_BD_P1016353
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT Z_LEER_BD_P1016353.

data gs_lectura type zzp1016353.

SELECT SINGLE * from zzp1016353
         into gs_lectura
         where IDCNTR = 'BD5897'.

  if sy-subrc eq 0.
    write: / gs_lectura-idcntr,
           / gs_lectura-empresa,
           / gs_lectura-fechaa.
   endif.
