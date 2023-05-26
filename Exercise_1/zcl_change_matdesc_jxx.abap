CLASS zcl_change_matdesc_jxx DEFINITION     "please replace the part of "xx" -> your number.
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_change_matdesc_jxx IMPLEMENTATION.    "please replace the part of "xx" -> your number.
  METHOD if_oo_adt_classrun~main.

* The following code can be used to update description of an existing product
    MODIFY ENTITIES OF I_ProductTP_2
        ENTITY ProductDescription
        UPDATE FIELDS ( ProductDescription )
        WITH VALUE #( ( %key-Product = 'DUMMY_PRODUCT_JXX'                      "please replace the part of "xx" -> your number.
                        %key-Language = 'E'
                        ProductDescription = 'Dummy Product JXX- Updated') )    "please replace the part of "xx" -> your number.
        REPORTED DATA(reported)
        FAILED DATA(failed).

    COMMIT ENTITIES
      RESPONSE OF I_ProductTP_2
          FAILED DATA(failed_commit)
          REPORTED DATA(reported_commit).

  ENDMETHOD.
ENDCLASS.
