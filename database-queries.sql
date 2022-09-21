
-- Listar ordens
select * from ordem;

-- Listar clientes
select * from cliente;

-- Listar clientes com endereco derivado
select nome, telefone, email, concat('CEP: ', cep, ' - ', logradouro, ', ', numero, ' ', coalesce(complemento, ''), ', ', municipio, '-', uf) as endereco from cliente;

-- Listar veiculos
select * from veiculo;

-- Listar servicos
select * from servico;

-- Listar pecas
select * from peca;

-- Listar ordens
select * from mecanico;

-- Listar ordens por cliente
select * from ordem left join cliente using (id_cliente);

-- Listar quantidade de veiculo por cliente
select nome, count(*) from cliente inner join veiculo using (id_cliente)
	group by id_cliente;

-- Listar veiculos com marcas que tenham mais de 2 veiculos cadastrados
select marca, count(*) from veiculo group by marca having count(marca) > 2;

-- Listar veiculos com menos de 5 anos
select * from veiculo where ano_fabricacao > (2022-5);

-- Listar as pecas que determinado cliente irá adquirir
select distinct c.nome, p.nome as nome_peca, p.valor, quantidade from cliente c
	inner join ordem as o using (id_cliente)
    inner join peca_por_ordem as po using (id_ordem)
    inner join peca as p using (id_peca);

-- Valor parcial das pecas em cada ordem
select p.nome, p.marca, round(p.valor * po.quantidade, 2) as valor, o.id_ordem from peca as p
	inner join peca_por_ordem as po using (id_peca)
    inner join ordem as o using (id_ordem);
    
-- Valor total das pecas em cada ordem
select  o.id_ordem, sum(round(p.valor * po.quantidade, 2)) as total from peca as p
	inner join peca_por_ordem as po using (id_peca)
    inner join ordem as o using (id_ordem);

-- Valor total dos servicos em cada ordem
select  o.id_ordem, sum(s.valor) as total from servico as s
	inner join servico_por_ordem as so using (id_servico)
    inner join ordem as o using (id_ordem)
    group by o.id_ordem
    order by o.id_ordem;

-- Listar servicos e mecanicos qualificados dentro de cada ordem
select distinct id_ordem, data_emissao, data_conclusao, s.nome as nome_servico, tipo, status_ordem, id_equipe as equipe, m.nome, m.codigo
	from ordem as o
	left join servico_por_ordem as so using (id_ordem)
    left join servico as s using (id_servico)
    left join mecanico as m using (id_equipe)
    inner join especialidade as e using (id_servico)
    where e.id_mecanico = m.id_mecanico
    order by id_ordem;

-- Recuperar quantidade de ordens cadastradas
select count(*) from ordem;