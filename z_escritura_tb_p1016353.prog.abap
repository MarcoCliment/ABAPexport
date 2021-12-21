*&---------------------------------------------------------------------*
*& Report  Z_ESCRITURA_TB_P1016353
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT Z_ESCRITURA_TB_P1016353.


INCLUDE: Z_Escritura_tb_P1016353_top,
         Z_Escritura_tb_P1016353_f01.

START-OF-SELECTION.

      PERFORM crear_empleado.

      PERFORM insertar_empleado.
