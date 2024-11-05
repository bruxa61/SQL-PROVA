--LOOP's
DECLARE @ClienteID INT;
DECLARE @Nome NVARCHAR(100);
DECLARE @contador INT = 1;
DECLARE @totalCliente INT;

-- Contar o total de pacientes sem pedidos feitos no último 1 dia
SELECT @totalCliente = COUNT(*)
FROM Clientes
WHERE NOT EXISTS (
SELECT 1
FROM Pedidos
WHERE Pedidos.ClienteID = Clientes.ClienteID AND Pedidos.DataPedido >= DATEADD(DAY,-1, GETDATE())
);

WHILE @contador <= @totalCliente
BEGIN

SELECT
@ClienteID = ClienteID,
@Nome = NomeCliente
FROM (
SELECT Clientes.ClienteID, Clientes.NomeCliente,
ROW_NUMBER() OVER (ORDER BY Clientes.NomeCliente) AS RowNum
FROM Clientes
WHERE NOT EXISTS (
SELECT 1
FROM Pedidos
WHERE Pedidos.ClienteID = Clientes.ClienteID AND Pedidos.DataPedido  >= DATEADD(DAY, -1, GETDATE()) )) AS T
WHERE RowNum = @contador;

PRINT 'Paciente sem consultas no último 1 dia: ' + @Nome ;
SET @contador = @contador + 1;
END;

--Exemplo feito em apenas um dia para conseguir mostrar o PRINT, mas o código pode ser atualizado para, por exemplo, 1 ano. Assim a loja consegue ter um controle se esta perdendo algum cliente q seja fiel e ter ideias de marketing para mudar isso.