--PROCEDURES
--Cancela um Pedido usando o PedidoID
IF EXISTS (SELECT 1 FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'CancelarPedido')
BEGIN
DROP PROCEDURE CancelarPedido
END
GO

CREATE PROCEDURE CancelarPedido
@consultaid INT
AS
UPDATE Pedidos
SET Status = 'Cancelado'
WHERE PedidosID = @consultaid;
GO

EXEC CancelarPedido 1


--Finaliza um Pedido usando o PedidoID
IF EXISTS (SELECT 1 FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'FinalizarPedido')
BEGIN
DROP PROCEDURE FinalizarPedido
END
GO

CREATE PROCEDURE FinalizarPedido
@consultaid INT
AS
UPDATE Pedidos
SET Status = 'Cancelado'
WHERE PedidosID = @consultaid;
GO

EXEC FinalizarPedido 1