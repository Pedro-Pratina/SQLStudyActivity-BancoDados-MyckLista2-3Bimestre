-- Tema 2. Sistema de Gestão de Relacionamento com o Cliente (CRM)

-- selecionar o banco de dados do tema
use db_crm_exam;

-- 2.1

-- Puxei só os nomes dos clientes (evitar muitos dados) e apenas o tipo de interaçao de cada.
select clientes.nome, interacoes.tipo
from clientes
left join interacoes
on clientes.cliente_id = interacoes.cliente_id;

-- 2.4

-- Novamente apenas os nomes dos clientes e campanhas
select clientes.nome as Cliente_Nome, campanhas.nome as Campanha_Nome
from clientes
join participacoes_campanha on participacoes_campanha.cliente_id = clientes.cliente_id
right join campanhas on campanhas.campanha_id = participacoes_campanha.campanha_id;

-- Exibi o nome da campanha que cada um participou