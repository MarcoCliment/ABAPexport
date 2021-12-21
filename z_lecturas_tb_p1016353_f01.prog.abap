*&---------------------------------------------------------------------*
*&  Include           Z_LECTURAS_TB_P1016353_F01
*&---------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*&      Form  OBTENER_EMPLEADO
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM obtener_empleado .


SELECT SINGLE nombre FROM zp1016353
       INTO gv_nombre
       WHERE id = '1123456789'.

  IF sy-subrc EQ 0.
    WRITE / gv_nombre.
    SKIP 2.
  ENDIF.


   SELECT SINGLE *
          FROM zp1016353
          INTO gs_empleado
          WHERE id EQ '1123456789'.

  IF sy-subrc EQ 0.
    WRITE: / gs_empleado-id,
           / gs_empleado-nombre,
           / gs_empleado-apellidos,
           / gs_empleado-fecha_n.
  ENDIF.

ENDFORM.                    " OBTENER_EMPLEADO
