-- Tema 3. Finanças e Controle Orçamentário

-- selecionar o banco de dados do tema
use db_financas_exam;

-- 3.1

select transacoes.*, contas.nome as Nome_Conta
from transacoes
inner join contas
on contas.conta_id = transacoes.conta_id;

-- 3.2

select contas.nome, transacoes.tipo, transacoes.valor, transacoes.descricao
from contas
left join transacoes
on contas.conta_id = transacoes.conta_id;