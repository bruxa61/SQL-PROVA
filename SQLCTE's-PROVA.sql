--CTE's
--Mostra o nome de cada cliente e os produtos que eles compraram
WITH ClienteProduto
AS(
SELECT
NomeCliente,
Produtos.NomeProduto
FROM Clientes
INNER JOIN Pedidos
ON Clientes.ClienteID = Pedidos.ClienteID
INNER JOIN Produtos
ON Pedidos.ProdutoID = Produtos.ProdutoID
)

SELECT
NomeCliente,
NomeProduto
FROM ClienteProduto