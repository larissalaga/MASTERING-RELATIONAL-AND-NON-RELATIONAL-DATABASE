SELECT count(1) from tabela_de_vendas;
DROP TABLE tabela_de_vendas;

CREATE TABLE tabela_de_vendas AS SELECT * FROM pf1788.tabela_vendas;

//Fazer um delete da tabela de vendas com commit a cada 200 registros.

CREATE PROCEDURE prd_delete_vendas IS
    contador NUMBER := 0;
BEGIN
    FOR i IN (
        SELECT 
            * 
        FROM 
            tabela_de_vendas
    ) LOOP
        DELETE FROM tabela_de_vendas 
        WHERE 
            ordernumber = i.ordernumber;
        IF MOD(contador, 200) = 0 THEN
            COMMIT;
        END IF;
        contador := contador +1;
    END LOOP; 
END;
EXECUTE prd_delete_vendas();
SELECT * from tabela_de_vendas;




DECLARE
    vCount NUMBER := &count;
BEGIN
    INSERT INTO tabela_de_vendas VALUES (
        vCount
    );
COMMIT;
END;


CREATE PROCEDURE prd_criar_pedido(
    p_count tabela_de_vendas.count%TYPE
) IS

BEGIN
    INSERT INTO tabela_de_vendas VALUES (
        p_count
    );
    COMMIT;
END;


