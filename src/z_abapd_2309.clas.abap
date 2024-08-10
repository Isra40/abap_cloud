CLASS z_abapd_2309 DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.


CLASS z_abapd_2309 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA cadenas TYPE TABLE OF string.

    APPEND |{ 'Carrier Names:'(001) } 'LFA' | TO cadenas.
    APPEND |{ 'Passenger Flights:'(002)  } '100' | TO cadenas.
    APPEND |{ 'Average free seats:'(003) } '23' | TO cadenas.
    APPEND |{ 'Cargo Flights:'(004)      } '10' | TO cadenas.

    LOOP AT cadenas ASSIGNING FIELD-SYMBOL(<fs_cadenas>).

      out->write( <fs_cadenas> ).

    ENDLOOP.
  ENDMETHOD.
ENDCLASS.
