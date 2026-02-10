CREATE TABLE pedidos_inicial (
    pedido_id INT,
    cliente_nome VARCHAR(50),
    cliente_email VARCHAR(50),
    produto VARCHAR(50),
    departamento VARCHAR(50),
    valor DECIMAL(10,2),
    PRIMARY KEY (pedido_id, produto)
);
