CREATE TABLE IF NOT EXISTS PRODUTOS(
ID INT PRIMARY KEY,
NOME VARCHAR(300),
DESCRICAO VARCHAR(300),
PRECO DECIMAL(10,2)
);

INSERT INTO PRODUTOS VALUES
(1, 'Notebook', 'Notebook profissional', 4500.00),
(2, 'Mouse', 'Mouse sem fio', 120.00),
(3, 'Teclado', 'Teclado mecânico gamer', 350.00),
(4, 'Monitor', 'Monitor profissional 27 polegadas', 1800.00);

select * from produtos where descricao like '%profissional%';
