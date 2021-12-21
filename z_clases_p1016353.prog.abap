*&---------------------------------------------------------------------*
*& Report  Z_CLASES_P1016353
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT z_clases_p1016353.

CLASS material DEFINITION.

  PUBLIC SECTION.
  METHODS set_matnr IMPORTING i_material TYPE string.
  METHODS get_matnr EXPORTING e_material TYPE string.

  METHODS set_fecha IMPORTING i_fecha TYPE d.
  METHODS get_fecha EXPORTING e_fecha TYPE d.

  class-data almacen type string.

  PRIVATE SECTION.

  DATA: matnr TYPE string,
        fecha_creacion TYPE d.

ENDCLASS.

CLASS material IMPLEMENTATION.

  METHOD set_matnr.

    matnr = i_material.
  ENDMETHOD.

  METHOD set_fecha.

    fecha_creacion = i_fecha.
  ENDMETHOD.

  METHOD get_matnr.

    e_material = matnr.

  ENDMETHOD.

  METHOD get_fecha.

    e_fecha = fecha_creacion.

  ENDMETHOD.
ENDCLASS.

  START-OF-SELECTION.

  DATA: go_material TYPE REF TO material,
        go_fecha TYPE REF TO material,
        resultado TYPE string,
        resultadof TYPE d.

  CREATE OBJECT go_material.

  material=>almacen = '2000'.

  PARAMETERS pa_matnr TYPE string.

  CALL METHOD go_material->set_matnr
    EXPORTING i_material = pa_matnr.

  CALL METHOD go_material->get_matnr
    IMPORTING e_material = resultado.

  WRITE: resultado, go_material->almacen.

  PARAMETERS pa_fecha TYPE d.

  CALL METHOD go_material->set_fecha
    EXPORTING i_fecha = pa_fecha.

  CALL METHOD go_material->get_fecha
    IMPORTING e_fecha = resultadof.

  WRITE: / resultadof.
