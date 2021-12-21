*&---------------------------------------------------------------------*
*& Report  Z_SHOPLIST_P1016353
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT z_shoplist_p1016353.

INCLUDE z_shoplist_p1016353_top.

START-OF-SELECTION.

DATA go_objeto TYPE REF TO listaobjeto.

CREATE OBJECT go_objeto.

  PARAMETERS pa_nomb TYPE string.
  PARAMETERS pa_cat TYPE string.
  PARAMETERS pa_tie TYPE string.

  SELECT * FROM zshopp1016353
        INTO TABLE test.
  cnt = 0.
  LOOP AT test INTO gs_items.
    boolaux = abap_true.

    IF pa_nomb <> '' AND NOT gs_items-nombre CS pa_nomb.
      boolaux = abap_false.
    ENDIF.
    IF  pa_cat <> '' AND NOT gs_items-categoria CS pa_cat.
      boolaux = abap_false.
    ENDIF.
    IF  pa_tie <> '' AND NOT gs_items-tienda CS pa_tie.
      boolaux = abap_false.

    ENDIF.
    IF boolaux EQ abap_true.
      WRITE: / gs_items-nombre, gs_items-categoria, gs_items-tienda.
      cnt = cnt + 1.
    ENDIF.
  ENDLOOP.
  IF cnt = 0.
    WRITE : /'*NO HAY DATOS*'.
  ELSE.
    WRITE :/ cnt , ' elementos encontrados.'.
  ENDIF.
