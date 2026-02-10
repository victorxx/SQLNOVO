select nome
from clientes
where id in(
select cliente_id
from pedidos
where valor>(
select avg(valor)from pedidos
)
)
