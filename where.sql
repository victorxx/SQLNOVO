create table if not exists pessoa(
id int primary key auto_increment,
nome varchar(100)
);
select p.nome,pp.nome from pessoa p left join produto pp on p.id=pp.pro where quantidade=2;
insert into pessoa(nome)values('rodrigo');
insert into produto(nome,quantidade,pro)values('xbox',2,1),('play',2,1),('nintendo',0,1);
select * from pessoa;
select * from produto;
create table if not exists produto(
id int auto_increment primary key,
nome varchar(200),
quantidade int,
pro int,
foreign key(pro)references pessoa(id)
);

