--TRIGGERS
--Proibe a exclusão de Produto do Banco de dados
CREATE OR ALTER TRIGGER DeletarProduto
ON Produtos
INSTEAD OF DELETE
AS
BEGIN
  IF EXISTS (SELECT 1 FROM Produtos WHERE ProdutoID IN (1, 2, 3, 4))
  BEGIN
    PRINT'A exclusão de dados desse campo é proibida!'
    RETURN
  END
END; 

DELETE FROM Produtos WHERE ProdutoID = 2