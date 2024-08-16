SET SERVEROUTPUT ON;
Declare
    sa1ario NUMBER := 1500;
    reajuste NUMBER := 25;
    novoSal NUMBER;
Begin
    novoSal := sa1ario * (1 + reajuste / 100);
    dbms_output.put_line('Novo salário: ' || to_char(novoSal));
End;

SET SERVEROUTPUT ON;
Declare
    cambio NUMBER := 5.56;
    valorDolar NUMBER := 45;
    valorReal NUMBER;
Begin
    valorReal := (valorDolar / cambio);
    dbms_output.put_line('O valor em reais é: ' || to_char(valorReal));
End;