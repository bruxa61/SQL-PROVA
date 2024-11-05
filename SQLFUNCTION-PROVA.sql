--FUNCTIONS
--Calcular a Idade do Cliente
CREATE FUNCTION CalcularIdade (@dataNascimento DATE)
RETURNS INT
AS
BEGIN
    RETURN DATEDIFF(YEAR, @dataNascimento, GETDATE());
END;

SELECT NomeCliente, dbo.CalcularIdade(Nascimento) AS Idade
FROM Clientes;

--Essa função calcula a idade de cada cliente com base na data de nascimento e na data atual.
--Retorna um valor inteiro representando a idade, útil para consultas que segmentam clientes por idade.
