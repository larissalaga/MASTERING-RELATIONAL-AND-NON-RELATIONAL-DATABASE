

DECLARE
    vRA NUMBER := &ra;
    vnome VARCHAR2(30) := '&nome';
BEGIN
    INSERT INTO ALUNO2 VALUES (
        vra,
        vnome
    );
COMMIT;
END;

CREATE PROCEDURE prd_insert_aluno(
    p_ra aluno2.ra%TYPE,
    p_nome aluno2.nome%TYPE
) IS

BEGIN
    INSERT INTO ALUNO2 VALUES (
        p_ra,
        p_nome
    );
    COMMIT;
END;

//CALL pf1788.prd_insert_aluno(1811, 'Claudemir');
//EXEC pf1788.prd_insert_aluno(452556, 'Jucicreia');
//EXECUTE pf1788.prd_insert_aluno(656, 'Djalma');

//BEGIN
//    pf1788.prd_insert_aluno(415645, 'Durval');
    

CREATE OR REPLACE PROCEDURE PRD_UPDATE_ALUNO(
    p_ra ALUNO2.RA%TYPE,
    p_nome ALUNO2.NOME%TYPE
) IS
BEGIN
    UPDATE ALUNO2
    SET
        NOME = P_NOME
    WHERE
        RA = P_RA;
    COMMIT;
END;


CREATE OR REPLACE PROCEDURE PRD_delete_ALUNO(
    p_ra ALUNO2.RA%TYPE
) IS
BEGIN
    DELETE FROM ALUNO2    
    WHERE
        RA = P_RA;
    COMMIT;
END;

SELECT * FROM ALUNO2