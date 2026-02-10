create table if not exists pedidos(
id int primary key auto_increment,
cliente varchar(100),
valor decimal(10,2),
data_pedido date,
status varchar(20)
);
SELECT * FROM PEDIDOS;
SELECT VALOR,CLIENTE FROM PEDIDOS WHERE VALOR BETWEEN 150 AND 3000.00;
