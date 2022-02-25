class ZCL_I_A_ZC_04_BOOK_DISCOUNT definition
  public
  inheriting from /BOBF/CL_LIB_A_SUPERCL_SIMPLE
  final
  create public .

public section.

  methods /BOBF/IF_FRW_ACTION~EXECUTE
    redefinition .
protected section.
private section.
ENDCLASS.



CLASS ZCL_I_A_ZC_04_BOOK_DISCOUNT IMPLEMENTATION.


  method /BOBF/IF_FRW_ACTION~EXECUTE.

   DATA lt_customer TYPE ZTI04_CUSTOMER_TP.
  DATA message TYPE REF TO zcm_04_customer.

  io_read->retrieve(
    EXPORTING
      iv_node                 = is_ctx-node_key
      it_key                  = it_key
    IMPORTING
      eo_message              = eo_message
      et_data                 = lt_customer
      et_failed_key           = et_failed_key
*      et_node_cat             =
  ).

   IF eo_message IS NOT BOUND.
      eo_message = /bobf/cl_frw_factory=>get_message( ).
    ENDIF.

  loop at lt_customer REFERENCE INTO data(customer) .
    customer->discount *= '0.95'.

      message = NEW zcm_04_customer(
        textid       = zcm_04_customer=>co_discount
        severity     = zcm_04_customer=>co_severity_info
        i_cdiscount  = customer->discount  ).
      eo_message->add_cm( message ).

    io_modify->update(
      EXPORTING
      iv_node                 = is_ctx-node_key
      iv_key                  = customer->key
*        iv_root_key       =
        is_data               = customer
*        it_changed_fields =
    ).
  endloop.

  endmethod.
ENDCLASS.
