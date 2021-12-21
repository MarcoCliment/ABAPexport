*&---------------------------------------------------------------------*
*& Report  Z_METODOS_EST_P1016353
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT Z_METODOS_EST_P1016353.

class persona DEFINITION.

  PUBLIC SECTION.

  methods: set_edad IMPORTING mi_edad type i,
           get_edad exporting mi_edad type i.

  PRIVATE SECTION.
  DATA: edad type i.

ENDCLASS.

class persona IMPLEMENTATION.

  method set_edad.
    edad = mi_edad.
  ENDMETHOD.

  method get_edad.
    mi_edad = edad.
  ENDMETHOD.

ENDCLASS.

START-OF-SELECTION.

  data: gr_persona type REF TO persona,
        lv_edad type i.

  create object gr_persona.

  gr_persona->set_edad( mi_edad = 21 ).

  gr_persona->get_edad(
    importing
      mi_edad = lv_edad ).

  write: 'Mi edad es ', lv_edad.
