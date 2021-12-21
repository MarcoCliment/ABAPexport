*&---------------------------------------------------------------------*
*& Report  Z_ATRIBUTOS_POO_P1016353
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT z_atributos_poo_p1016353.

CLASS factura DEFINITION.

  PUBLIC SECTION.

    DATA proveedor TYPE string.

    CLASS-DATA fecha_pago TYPE d.

  PRIVATE SECTION.

ENDCLASS.

START-OF-SELECTION.

  DATA: go_factura_1 TYPE REF TO factura,
        go_factura_2 TYPE REF TO factura.

  CREATE OBJECT: go_factura_1,
                 go_factura_2.

  go_factura_1->proveedor = 'Dell'.

  go_factura_2->proveedor = 'HP'.

  factura=>fecha_pago = '20200601'.

  WRITE: / go_factura_1->proveedor,
         / go_factura_1->fecha_pago DD/MM/YYYY.

  SKIP 2.

  WRITE: / go_factura_2->proveedor,
         / go_factura_2->fecha_pago DD/MM/YYYY.
