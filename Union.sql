create table if not exists alunos(
id int primary key,
nome varchar(100),
curso varchar(100)
);
select nome from alunos where curso='computacao'
UNION
select nome from alunos where curso='engenharia';


