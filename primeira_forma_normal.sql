create table if not exists clientes(
id int primary key,
nome varchar(100),
email varchar(100)
);
create table if not exists pedidos(
id int primary key,
cliente_id int,
valor_total decimal(10,2),
foreign key(cliente_id)references clientes(id)
);
create table if not exists pedidos_produtos(
pedido_id int,
produto varchar(100),
departamento varchar(100),
primary key(pedido_id,produto),
foreign key(pedido_id)references pedidos(id)
);
