-- Tema 1. E-commerce e Gestão de Inventário

-- selecionar o banco de dados do tema
use db_ecommerce_exam;

-- 1.1

select pedidos.*, clientes.nome, clientes.email
from pedidos
inner join clientes
on clientes.cliente_id = pedidos.cliente_id;

-- 1.3

-- considerei o status "processando", como não realizado ainda.
select clientes.nome, count(pedidos.total) as Pedidos_Realizados
from clientes
left join pedidos
on clientes.cliente_id = pedidos.cliente_id
and pedidos.status != "processando"
group by clientes.cliente_id;