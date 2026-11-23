-- database: ./atividade_loja.db
CREATE TABLE produtos (
    id        INTEGER PRIMARY KEY AUTOINCREMENT,
    name      TEXT    NOT NULL,
    categoria TEXT    NOT NULL,
    preco     REAL    NOT NULL,
    estoque   INTEGER NOT NULL DEFAULT 0);

SELECT
    *
FROM
    produtos;

INSERT INTO produtos (name, categoria, preco, estoque)
VALUES
    ('MOUSE USB', 'Periférico', 50.00, 10),
    ('TECLADO MECÂNICO', 'Periférico', 150.00, 5),
    ('MONITOR LED', 'Monitor', 800.00, 3),
    ('HEADSET GAMER', 'Periférico', 200.00, 7),
    ('WEBCAM HD', 'Periférico', 120.00, 8);

INSERT INTO  produtos (name, categoria, preco, estoque)
VALUES
    ('PLACA DE VÍDEO', 'Hardware', 1500.00, 2),
    ('PROCESSADOR', 'Hardware', 900.00, 4),
    ('MEMÓRIA RAM', 'Hardware', 300.00, 6),
    ('SSD 1TB', 'Armazenamento', 400.00, 5),
    ('HD EXTERNO 2TB', 'Armazenamento', 350.00, 3);
   
   INSERT INTO produtos (name, categoria, preco, estoque)
VALUES
    ('FONTE ATX 600W', 'Hardware', 250.00, 4),
    ('GABINETE MID TOWER', 'Hardware', 300.00, 2),
    ('PLACA MÃE', 'Hardware', 700.00, 3),
    ('COOLER PARA PROCESSADOR', 'Hardware', 100.00, 5),
    ('CABO HDMI', 'Acessório', 30.00, 10);  

INSERT INTO produtos (name, categoria, preco, estoque)
VALUES
    ('ADAPTADOR USB-C', 'Acessório', 40.00, 0),
    ('SUPORTE PARA MONITOR', 'Acessório', 80.00, 2),
    ('MOUSE PAD GAMER', 'Acessório', 25.00, 0),
    ('FONE DE OUVIDO BLUETOOTH', 'Periférico', 180.00, 0),
    ('CÂMERA DSLR', 'Fotografia', 2500.00, 1);

-- NOME E CATEGORIA
SELECT name, categoria
FROM produtos
WHERE estoque = 0;

--ITENS DISPONIVEIS EM ORDEM DE PREÇO
SELECT name, categoria, preco
FROM produtos
WHERE categoria = 'Hardware' AND estoque > 0;

--PRODUTOS QUE CUSTAM DE 50 A 100
SELECT name, preco
FROM produtos
WHERE preco BETWEEN 50 AND 100;

-- OS 3 PRODUTOS MAIS CAROS DISPONIVEIS
SELECT name, preco
FROM produtos
WHERE estoque > 0
ORDER BY preco DESC
LIMIT 3;

--REPOSIÇÃO DE ESTOQUE
SELECT name, estoque, preco
FROM produtos
ORDER BY estoque ASC, preco DESC;