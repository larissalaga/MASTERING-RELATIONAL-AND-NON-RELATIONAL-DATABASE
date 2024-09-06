SET SERVEROUTPUT ON;
DECLARE
    V_CONTADOR NUMBER(2):=1;

BEGIN

   LOOP
        DBMS_OUTPUT.PUT_LINE(V_CONTADOR);
        V_CONTADOR:=V_CONTADOR+1;
        EXIT WHEN V_CONTADOR>20;
    END LOOP;
    
END;


SET SERVEROUTPUT ON;
DECLARE
    V_CONTADOR NUMBER(2):=1;

BEGIN

WHILE V_CONTADOR <= 20 LOOP
    DBMS_OUTPUT.PUT_LINE(V_CONTADOR);
    V_CONTADOR:=V_CONTADOR+1;
END LOOP;

END;


SET SERVEROUTPUT ON;
BEGIN

FOR V_CONTADOR IN 1..20 LOOP
    DBMS_OUTPUT.PUT_LINE(V_CONTADOR);
END LOOP;
END;



SET SERVEROUTPUT ON;
DECLARE
    numero number := &numero2;
BEGIN

FOR j IN 1..10 LOOP
    dbms_output.put_line(numero
                        ||' X '
                        || j
                        || ' = '
                        || (j * numero));
END LOOP;
END;

//
SET SERVEROUTPUT ON;
DECLARE
    intervalo number := &intervalo;
    pares number;
    impares number;
BEGIN
    FOR i IN 1..intervalo LOOP
        if MOD (i,2) = 0 then           
                pares := pares + 1;           
        else           
                impares := impares + 1;
        END IF;           
    END LOOP;
    
dbms_output.put_line('São:'
                     || pares
                     || ' números pares. E : '
                     || impares
                     || ' números impares');

END;






