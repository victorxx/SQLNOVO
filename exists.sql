create table if not exists clientes(
id int primary key auto_increment,
nome varchar(100)
);
create table if not exists pedidos(
id int primary key auto_increment,
cliente_id int,
valor decimal(10,2)
);
select nome from clientes c  where exists(
select 1 from pedidos p where p.cliente_id =c.id
);
insert into clientes values(1,'ana'),(2,'joao'),(3,'maria');
insert into pedidos values(1,1,500),(2,1,300),(3,2,300);
