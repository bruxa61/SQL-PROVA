--WINDOW FUNCTION
--Calcula o faturamento que a loja teve por dia, somando todos os produtos que foram vendidos em cada dia e o valor de cada um.
SELECT 
DISTINCT CAST(DataPedido AS DATE) AS DataPedido,
SUM(Valor) OVER (PARTITION BY CAST(DataPedido AS DATE) ORDER BY DataPedido) AS FaturamentoDoDia
FROM Pedidos
INNER JOIN Produtos
ON Pedidos.ProdutoID = Produtos.ProdutoID
ORDER BY DataPedido;