*&---------------------------------------------------------------------*
*& Report  Z_CONSTRUCTORES_P1016353
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT z_constructores_p1016353.

CLASS producto DEFINITION.
  PUBLIC SECTION.
  METHODS constructor.

  class-methods class_constructor.


ENDCLASS.

class producto IMPLEMENTATION.

  method constructor.

    write: / 'Constructor de instancia'.

  ENDMETHOD.

  method class_constructor.

    write: / 'Constructor estático'.

  ENDMETHOD.
  endclass.

  START-OF-SELECTION.

  data: go_producto type REF TO producto.

  create OBJECT: go_producto.
