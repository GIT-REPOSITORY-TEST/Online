*&---------------------------------------------------------------------*
*& Report ZSALES_R_ABAPGIT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zsales_r_abapgit.

* Top Include
INCLUDE zsales_i_abapgit_top.

* Selection Screen Include
INCLUDE zsales_i_abapgit_sel.

* Instantiate the Class ZSALES_CL_ABAPGIT
DATA(go_object) = NEW zsales_cl_abapgit( ).


IF s_vbeln IS NOT INITIAL.

* Method FETCH_DATA to get the data deom the table
  go_object->fetch_data( it_vbeln = s_vbeln[] ).

* Method DISPLAY_ALV to display the output in ALV
  go_object->display_alv( ).
ENDIF.
