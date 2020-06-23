*&---------------------------------------------------------------------*
*& Report ZSALES_REPORT_GIT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zsales_report_git.

DATA: gv_vbeln TYPE vbak-vbeln.

SELECT-OPTIONS: s_vbeln FOR gv_vbeln NO INTERVALS.

DATA(go_object) = NEW zsales_class_git( ).

IF s_vbeln IS NOT INITIAL.
  go_object->fetch_data( it_vbeln = s_vbeln[] ).

  go_object->display_alv( ).

ENDIF.
