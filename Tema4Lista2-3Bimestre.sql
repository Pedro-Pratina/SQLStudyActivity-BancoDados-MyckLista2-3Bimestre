-- Tema 4. Saúde e Gestão de Prontuários Eletrônicos

-- selecionar o banco de dados do tema
use db_prontuario_exam;

-- 4.1

select pacientes.nome, prontuarios.medico
from pacientes
inner join prontuarios
on pacientes.paciente_id = prontuarios.paciente_id;

-- 4.2

-- Puxei o motivo para facilitar qual e a data pra facilitar saber qual é
select pacientes.nome, consultas.medico, consultas.motivo, consultas.data_consulta
from pacientes
left join consultas
on pacientes.paciente_id = consultas.paciente_id;