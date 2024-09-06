SET SERVEROUTPUT ON;
DECLARE
    
    numeroAluno number;
    nomeAluno varchar2(50);

BEGIN

    SELECT 
        ra, 
        nome 
    INTO 
        numeroAluno, 
        nomeAluno 
    FROM 
        aluno2
    WHERE
        ra =1;
    
    dbms_output.put_line('O código de cadastro do aluno é: '
                        || numeroAluno
                        || ' Nome completo do aluno é: '
                        || nomeAluno);
END;



SET SERVEROUTPUT ON;
DECLARE

    numeroAluno number := &ra;
    nomeAluno varchar2(50);

BEGIN

    SELECT 
        ra, 
        nome 
    INTO 
        numeroAluno, 
        nomeAluno 
    FROM 
        aluno2
    WHERE
        ra = numeroAluno;
    
    dbms_output.put_line('O código de cadastro do aluno é: '
                        || numeroAluno
                        || ' Nome completo do aluno é: '
                        || nomeAluno);
END;



SET SERVEROUTPUT ON;
DECLARE

    numeroAluno number := &ra;
    nomeAluno varchar2(50) :='&Aluno';

BEGIN

    INSERT INTO ALUNO2 VALUES (
        numeroaluno,
        nomealuno
    );
    COMMIT;
    
END;




SET SERVEROUTPUT ON;
DECLARE

    numeroAluno number := &ra;
    nomeAluno varchar2(50) :='&Aluno';

BEGIN

    UPDATE ALUNO2 SET nome = nomealuno 
    Where
        ra = numeroaluno;
    COMMIT;
    
END;




SET SERVEROUTPUT ON;
DECLARE

    numeroAluno number := &ra;

BEGIN

    DELETE FROM ALUNO2 
    WHERE 
        ra =  numeroaluno;
    COMMIT;
    
END;

SELECT * FROM ALUNO2;





