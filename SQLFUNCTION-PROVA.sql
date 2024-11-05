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



--Pedidos por Cliente
--Esta função de tabela multideclaração retorna uma tabela de pedidos associadas a um cliente específico.

CREATE FUNCTION PedidosPorCliente (@ClienteID INT)
RETURNS @TabelaPedidos TABLE (
    PedidosID INT,
    DataPedido DATE,
    Produto VARCHAR(100),
    NomeFuncionario VARCHAR(100)
)
AS
BEGIN
    INSERT INTO @TabelaPedidos
    SELECT c.PedidosID, c.DataPedido, e.NomeProduto, m.NomeFuncionario
    FROM Pedidos c
    JOIN  Produtos e ON c.ProdutoID = e.ProdutoID
    JOIN Funcionarios m ON c.FuncionarioID = m.FuncionarioID
    WHERE c.ClienteID = @ClienteID;

    RETURN;
END;

SELECT *
FROM PedidosPorCliente(1); -- Exemplo para cliente com ID 1

--Explicação:
--Essa função retorna uma tabela contendo todos os pedidos de um cliente específico, incluindo o nome do funcionario e o nome do produto.
--É útil para mostrar o histórico de atendimento de um cliente, detalhando pedidos passados e futuros.
