insert into departamentos values(
1,'ti'
),
(2,'rh'),
(3,'financeiro');
insert into funcionarios values(1,'ana',5000,1),
(2,'joao',30000,2),(3,'maria',5000,3);
SELECT NOME , SALARIO FROM FUNCIONARIOS
WHERE DEPARTAMENTO_ID IN(
SELECT ID FROM DEPARTAMENTOS WHERE NOME ='ti'
);
