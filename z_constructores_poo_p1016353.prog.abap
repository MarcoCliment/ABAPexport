*&---------------------------------------------------------------------*
*& Report  Z_CONSTRUCTORES_POO_P1016353
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT z_constructores_poo_p1016353.

CLASS empleado DEFINITION.

PUBLIC SECTION.

  METHODS constructor IMPORTING i_nombre TYPE string.

  CLASS-METHODS class_constructor.


ENDCLASS.

CLASS empleado IMPLEMENTATION.

METHOD constructor.

  WRITE: / 'Constructor de instancia', i_nombre.

ENDMETHOD.

method class_constructor.
   write / 'Constructor estático'.
ENDMETHOD.

ENDCLASS.

START-OF-SELECTION.

  DATA: go_empleado_1 TYPE REF TO empleado,
        go_empleado_2 TYPE REF TO empleado.

  CREATE OBJECT: go_empleado_1 EXPORTING i_nombre = 'Carlos',
                 go_empleado_2 EXPORTING i_nombre = 'Alberto'.
