-- Tema 5. Logística e Cadeia de Suprimentos

-- selecionar o banco de dados do tema
use db_logistica_exam;

-- 5.1

select produtos.nome as Produto, fornecedores.nome as Quem_Forneceu
from produtos
left join fornecedores
on produtos.fornecedor_id = fornecedores.fornecedor_id;

-- 5.2

select movimentacao_estoque.*, produtos.nome as Produto
from movimentacao_estoque
inner join produtos
on produtos.produto_id = movimentacao_estoque.produto_id;