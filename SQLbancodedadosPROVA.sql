--CRIANDO BANCO DE DADOS
CREATE DATABASE ArtStory;

--CRIANDO TABELAS
USE ArtStory;

CREATE TABLE Funcionarios(
FuncionarioID INT PRIMARY KEY,
NomeFuncionario VARCHAR(100),
CPF VARCHAR(14),
RG VARCHAR(14),
Email VARCHAR(100),
Nascimento DATE,
Genero VARCHAR(20),
Celular VARCHAR(18),
CEP VARCHAR(9),
Endereco VARCHAR(100),
Salario FLOAT
);

INSERT INTO Funcionarios (FuncionarioID, NomeFuncionario, CPF, RG, Email, Nascimento, Genero, Celular, CEP, Endereco, Salario)
VALUES
(1, 'Rafaela Botelho', '111.111.111-1', '11.111.112-1','rafa@gmail.com', '17/05/2005', 'M', '55 (11) 11111-1111', '11111-111', 'Rua Ameixa, 617', '6000'),
(2, 'Pedro Alves', '111.111.111-2', '11.111.112-2', 'pedro@gmail.com', '11/02/2005', 'P', '55 (11) 11111-1112', '22222-222', 'Rua Ameixa, 618', '3000'),
(3, 'Lana Oliveira', '111.111.111-3', '11.111.112-3', 'lana@gmail.com', '24/10/2000', 'F', '55 (11) 11111-1113', '33333-333', 'Rua Ameixa, 619', '7000');

-----------------------------------------------

CREATE TABLE Produtos(
ProdutoID INT PRIMARY KEY,
NomeProduto VARCHAR(100) NOT NULL,
Marca VARCHAR(100),
Valor FLOAT NOT NULL
);

INSERT INTO Produtos (ProdutoID, NomeProduto, Marca, Valor)
VALUES
(1, 'Aquarela', 'CIS', '20'),
(2, 'Lápis de Cor', 'FaberCastel', '100'),
(3, 'Pincel', 'Pentel', '50'),
(4, 'Giz', 'Pentel', '80');

------------------------------------------------

CREATE TABLE Clientes(
ClienteID INT PRIMARY KEY,
NomeCliente VARCHAR(100),
CPF VARCHAR(14),
RG VARCHAR(14),
Email VARCHAR(100),
Nascimento DATE,
Genero VARCHAR(20),
Celular VARCHAR(18),
CEP VARCHAR(9),
Endereco VARCHAR(100)
);

INSERT INTO Clientes(ClienteID, NomeCliente, CPF, RG, Email, Nascimento, Genero, Celular, CEP, Endereco)
VALUES
(1, 'Raquel Santos', '111.111.111-4', '11.111.113-1','raquel@gmail.com', '17/07/1990', 'M', '55 (11) 11111-1114', '11111-444', 'Rua Ameixa, 611'),
(2, 'Morgana Souza', '111.111.111-5', '11.111.113-2', 'morgana@gmail.com', '21/02/2002', 'M', '55 (11) 11111-1115', '22222-555', 'Rua Batata, 333'),
(3, 'Julieta José', '111.111.111-6', '11.111.113-3', 'julieta@gmail.com', '24/11/2001', 'M', '55 (11) 11111-1116', '33333-666', 'Rua Abobora, 616');

--------------------------------------------------

CREATE TABLE Pedidos(
PedidosID INT PRIMARY KEY,
NumeroPedido INT,
DataPedido DATE,
ClienteID INT
FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID),
ProdutoID INT
FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID),
FuncionarioID INT
FOREIGN KEY (FuncionarioID) REFERENCES Funcionarios(FuncionarioID),
Status VARCHAR(50)
);

INSERT INTO Pedidos (PedidosID, NumeroPedido, DataPedido, ClienteID, ProdutoID, FuncionarioID, Status)
VALUES
(1, '01', '05/11/2024', '1', '4', '2', 'Finalizado'),
(2, '02', '05/11/2024', '2', '1', '1', 'Finalizado'),
(3, '03', '04/11/2024', '3', '2', '3', 'Finalizado');



