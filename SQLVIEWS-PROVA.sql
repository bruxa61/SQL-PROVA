--VIEWS
--Essa VIEW mostra a quantidade de pedidos feita por cada cliente, usando o ClienteID.
--Ordenando a data do pedido feita do mais antigo para o mais rescente, o produto comprado e o funcionário que fez a venda

--CLIENTE 01
CREATE VIEW PedidosClienteID1
AS
SELECT
Clientes.NomeCliente,
Funcionarios.NomeFuncionario,
Pedidos.DataPedido,
Produtos.NomeProduto
FROM Pedidos
INNER JOIN Clientes
ON Pedidos.ClienteID = Clientes.ClienteID
INNER JOIN Funcionarios
ON Pedidos.FuncionarioID = Funcionarios.FuncionarioID
INNER JOIN Produtos
ON Pedidos.ProdutoID = Produtos.ProdutoID
WHERE Clientes.ClienteID = 1

SELECT *
FROM PedidosClienteID1 
ORDER BY DataPedido ASC

--CLIENTE 02
CREATE VIEW PedidosClienteID2
AS
SELECT
Clientes.NomeCliente,
Funcionarios.NomeFuncionario,
Pedidos.DataPedido,
Produtos.NomeProduto
FROM Pedidos
INNER JOIN Clientes
ON Pedidos.ClienteID = Clientes.ClienteID
INNER JOIN Funcionarios
ON Pedidos.FuncionarioID = Funcionarios.FuncionarioID
INNER JOIN Produtos
ON Pedidos.ProdutoID = Produtos.ProdutoID
WHERE Clientes.ClienteID = 2

SELECT *
FROM PedidosClienteID2 
ORDER BY DataPedido ASC

--CLIENTE 03
CREATE VIEW PedidosClienteID3
AS
SELECT
Clientes.NomeCliente,
Funcionarios.NomeFuncionario,
Pedidos.DataPedido,
Produtos.NomeProduto
FROM Pedidos
INNER JOIN Clientes
ON Pedidos.ClienteID = Clientes.ClienteID
INNER JOIN Funcionarios
ON Pedidos.FuncionarioID = Funcionarios.FuncionarioID
INNER JOIN Produtos
ON Pedidos.ProdutoID = Produtos.ProdutoID
WHERE Clientes.ClienteID = 3

SELECT *
FROM PedidosClienteID3 
ORDER BY DataPedido ASC