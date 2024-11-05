--SUBQUERY
--Mostra os clientes que compraram um produto em específico, no exemplo Aquarela. Assim a loja pode ver quais produtos vemdem mais.
SELECT NomeCliente
FROM Clientes
WHERE ClienteID IN (
SELECT ClienteID
FROM Pedidos
WHERE ProdutoID = (
SELECT ProdutoID
FROM Produtos
WHERE NomeProduto = 'Aquarela')
);