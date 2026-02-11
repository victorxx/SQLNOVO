CREATE TABLE IF NOT EXISTS ALUNOS(
ID INT auto_increment PRIMARY KEY,
NOME VARCHAR(300),
NOTA DECIMAL(5,2)
);
SELECT NOME,NOTA,
       CASE
       WHEN NOTA>=70 THEN 'Aprovado'
       else 'Reprovado'
       end as situacao
from alunos;
INSERT INTO ALUNOS(NOME,NOTA)
VALUES('ANA',85),
('BRUNO',55),
('CARLA',90),
('TIAGO',55),
('CARLOS',90);
