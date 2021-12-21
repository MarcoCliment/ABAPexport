*&---------------------------------------------------------------------*
*& Report  Z_CLASES_POO_P1016353
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT z_clases_poo_p1016353.

CLASS alumno DEFINITION.


PUBLIC SECTION.

METHODS set_nombre IMPORTING i_nombre TYPE string.

METHODS get_nombre EXPORTING e_nombre TYPE string.


PROTECTED SECTION.


PRIVATE SECTION.
DATA nombre TYPE string.

ENDCLASS.

CLASS alumno IMPLEMENTATION.

  METHOD set_nombre.

    nombre = i_nombre.

  ENDMETHOD.

  METHOD get_nombre.

    e_nombre = nombre.

  ENDMETHOD.
ENDCLASS.

START-OF-SELECTION.


DATA: go_alumno TYPE REF TO alumno,
      gv_nombre TYPE string.

CREATE OBJECT go_alumno.

CALL METHOD go_alumno->set_nombre
  EXPORTING
    i_nombre = 'Alberto'.

CALL METHOD go_alumno->get_nombre
 IMPORTING
   e_nombre = gv_nombre.

WRITE gv_nombre.
