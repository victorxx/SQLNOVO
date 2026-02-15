create table if not exists usuario(
id int auto_increment primary key,
nome varchar(200)
);
create table if not exists pedidos(
id int auto_increment primary key,
usuario_id int,
valor decimal(10,2),
data date,
foreign key(usuario_id)references usuario(id)
);
select u.nome,count(p.id) as total
from usuario u
left join pedidos p on u.id=p.usuario_id
group by u.id
having count(p.id)>2;
