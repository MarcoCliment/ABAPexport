*&---------------------------------------------------------------------*
*&  Include           Z_SHOPLIST_P1016353_F01
*&---------------------------------------------------------------------*

form sacar_objetos.

  SELECT SINGLE * FROM zshopp1016353
    into gs_items.

    write: / gs_items-nombre, gs_items-categoria, gs_items-tienda.


endform.

FORM guardar_favoritos.

endform.
