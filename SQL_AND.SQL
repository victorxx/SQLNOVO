CREATE TABLE clientes (
    id INT PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE pedidos (
    id INT PRIMARY KEY,
    cliente_id INT,
    valor DECIMAL(10,2)
);

INSERT INTO clientes VALUES
(1, 'Ana'),
(2, 'João'),
(3, 'Maria');

INSERT INTO pedidos VALUES
(1, 1, 500),
(2, 1, 300),
(3, 3, 200);

SELECT NOME
FROM CLIENTES C 
WHERE EXISTS(
SELECT 1 FROM PEDIDOS P
WHERE P.CLIENTE_ID=C.ID
AND P.VALOR>400
)
