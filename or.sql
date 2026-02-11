create table if not exists produtos(
 id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    categoria VARCHAR(50),
    preco DECIMAL(10,2),
    estoque INT
);
select * from produtos
where categoria ='Eletronico'
and(preco<100 or ESTOQUE >10)
AND CATEGORIA<>'Moveis';
