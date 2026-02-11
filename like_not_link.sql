CREATE TABLE IF NOT EXISTS clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    email VARCHAR(100)
);
insert into clientes(nome,email)values
(
'ana','ana@gmail.com'
),('bruno','bruno@gmail.com'),('carla','carla@gmail.com');
select * from clientes;
select nome from clientes where nome like 'A%';
select nome from clientes where nome not like 'a%';
