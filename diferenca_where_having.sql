

select u.nome,p.id
from usuarios u
left join pedidos p on u.id=p.usuario_id
where p.valor>100;

select u.nome,count(p.id) as total
from usuarios u
left join pedidos p on u.id=p.usuario_id
group by u.id
having count(p.id)>2;
