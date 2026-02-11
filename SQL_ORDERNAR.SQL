create table if not exists alunos(
id int auto_increment primary key,
nome varchar(100),
nota decimal(5,2)
);
INSERT INTO ALUNOS(NOME,NOTA)
VALUES('AMANDA',5.5),('BEATRIZ',6.4),
('EVA',5.0),('CLARA',9.0);
SELECT NOTA,COUNT(*) AS TOTAL_ALUNOS
FROM ALUNOS
GROUP BY NOTA
ORDER BY NOTA DESC;
