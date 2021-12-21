*&---------------------------------------------------------------------*
*&  Include           Z_ESCRITURA_TB_P1016353_F01
*&---------------------------------------------------------------------*
FORM crear_empleado.
  wa_empleados-id = '1123456789'.
  wa_empleados-nombre = 'Javier'.
  wa_empleados-apellidos = 'Alonso'.
  wa_empleados-fecha_n = '20001127'.
ENDFORM.


FORM insertar_empleado .

insert zp1016353 FROM wa_empleados.

if sy-subrc eq 0.
  write / 'Registro insertado correctamente'.

else.

  write / 'Registro no insertado'.

endif.
ENDFORM.                    " INSERTAR_EMPLEADO
