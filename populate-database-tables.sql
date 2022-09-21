USE `dio-mecanica`;

-- Popular tabela peca

INSERT INTO peca VALUES (null, 'Óleo 500ml', 'Lubrax', 17.99);
INSERT INTO peca VALUES (null, 'Vela de Ignição', 'Speed Motors', 10.41);
INSERT INTO peca VALUES (null, 'Filtro de óleo', 'Speed Motors', 21.32);
INSERT INTO peca VALUES (null, 'Pistão', 'Speed Motors', 650.73);
INSERT INTO peca VALUES (null, 'Junta do Cabeçote', 'Andrade Autopeças', 224.73);
INSERT INTO peca VALUES (null, 'Disco de freio', 'Andrade Autopeças', 133);
INSERT INTO peca VALUES (null, 'Filtro de Ar', 'Andrade Autopeças', 23);
INSERT INTO peca VALUES (null, 'Válvula termostática', 'X-Ray', 163.18);
INSERT INTO peca VALUES (null, 'Cebolinha do radiador', 'X-Ray', 86.31);
INSERT INTO peca VALUES (null, 'Par amortecedor dianteiro', 'X-Ray', 209.9);
INSERT INTO peca VALUES (null, 'Par amortecedor traseiro', 'X-Ray', 209.9);
INSERT INTO peca VALUES (null, 'Kit coxim amortecedor', 'San Marina', 20);
INSERT INTO peca VALUES (null, 'Fluido de freio', 'Spring DZL', 23.49);

-- Popular tabela servico

INSERT INTO servico VALUES (null, 'Troca de óleo', null, 'REVISAO', 30);
INSERT INTO servico VALUES (null, 'Alinhamento', null, 'REVISAO', 230);
INSERT INTO servico VALUES (null, 'Balanceamento', null, 'REVISAO', 200);
INSERT INTO servico VALUES (null, 'Troca do fluido de freio', null, 'CONSERTO', 50);
INSERT INTO servico VALUES (null, 'Troca de amortecedores dianteiros', null, 'CONSERTO', 70);
INSERT INTO servico VALUES (null, 'Troca de amortecedores traseiros', null, 'CONSERTO', 85);
INSERT INTO servico VALUES (null, 'Troca da junta do cabeçote', null, 'CONSERTO', 30);
INSERT INTO servico VALUES (null, 'Troca do disco de freio', null, 'CONSERTO', 95);
INSERT INTO servico VALUES (null, 'Troca das velas', null, 'CONSERTO', 40);
INSERT INTO servico VALUES (null, 'Troca da bomba de água', null, 'CONSERTO', 60);

-- Popular tabela cliente

INSERT INTO cliente VALUES (null, 'Luan Raimundo Moreira', '(92)99491-9412', 'luanraimundomoreira@p4ed.com', '40335050', 'Avenida Benedito', 825, null, 'Pero Vaz', 'Salvador', 'BA');
INSERT INTO cliente VALUES (null, 'Calebe Joaquim Dias', '(43)3914-3297', 'calebe-dias72@gap.com.br', '59616691', 'Rua Sebastião Sales de Oliveira', 284, '1º Andar', 'Santa Delmira', 'Mossoró', 'RN');
INSERT INTO cliente VALUES (null, 'Betina Mariane Isabela Nunes', '(51)98898-5605', 'betina-nunes86@bhcervejas.com.br', '69097782', 'Travessa Itiuba', 72, null, 'Cidade Nova', 'Manaus', 'AM');
INSERT INTO cliente VALUES (null, 'Mariane Raquel Santos', '(71)98948-2154', 'marianeraquelsantos@construtoraplaneta.com.br', '03656020', 'Rua Eunice Oliveira', 8, null, 'Vila Ré', 'São Paulo', 'SP');
INSERT INTO cliente VALUES (null, 'Mirella Bianca Débora Aragão', '(67)98813-2462', 'mirella-aragao98@univap.br', '59073126', 'Travessa Anápolis', 676, null, 'Planalto', 'Natal', 'RN');
INSERT INTO cliente VALUES (null, 'Thales Marcelo Dias', '(41)98852-6715', 'thales_marcelo_dias@numero.com.br', '24801084', 'Rua 15', 825, 'Quadra C', 'Condomínio Garden', 'Vitória', 'ES');
INSERT INTO cliente VALUES (null, 'Rayssa Daiane Andreia da Luz', '(84)99677-5370', 'rayssa-daluz91@hotmail.co.uk', '74660010', 'Rua Antônio Cupertino Barros', 413, null, 'Setor Criméria Leste', 'Goiânia', 'GO');
INSERT INTO cliente VALUES (null, 'Bianca Nair Campos', '(82)2671-5723', 'bianca_nair_campos@cfaraujo.eng.br', '40368085', 'Avenida Furtado', 480, '4º Andar', 'Liberdade', 'Salvador', 'BA');
INSERT INTO cliente VALUES (null, 'Caio Manoel Paulo Mendes', '(68)99703-8631', 'caio-mendes84@videoaction.com.br', '59115558', 'Rua Umarizal', 5, null, 'Nossa Senhora da Apresentação', 'Natal', 'RN');
INSERT INTO cliente VALUES (null, 'Isabelle Evelyn Galvão', '(82)3620-4962', 'isabelleevelyngalvao@eptv.com.br', '80410260', 'Rua do Comércio 24 Horas', 934, null, 'Centro', 'Curitiba', 'PR');

-- Popular tabela veiculo

INSERT INTO veiculo VALUES (null, 'Toyota', 'Etios', 2018, 2018, 'SQL7J98', 1);
INSERT INTO veiculo VALUES (null, 'Volkswagen', 'Gol', 2012, 2013, 'NVW1T23', 2);
INSERT INTO veiculo VALUES (null, 'Ford', 'Focus', 2013, 2014, 'LVU9104', 3);
INSERT INTO veiculo VALUES (null, 'Honda', 'Civic', 2017, 2018, 'MMR6044', 4);
INSERT INTO veiculo VALUES (null, 'Hyundai', 'HB20s', 2020, 2020, 'KAU3830', 5);
INSERT INTO veiculo VALUES (null, 'Nissan', 'Kicks', 2020, 2021, 'HWT7557', 6);
INSERT INTO veiculo VALUES (null, 'GM Chevrolet', 'Corsa', 2011, 2012, 'MPO0256', 7);
INSERT INTO veiculo VALUES (null, 'Kia', 'Cerato', 2018, 2018, 'HRT9991', 8);
INSERT INTO veiculo VALUES (null, 'Fiat', 'Idea', 2008, 2009, 'NBJ0110', 9);
INSERT INTO veiculo VALUES (null, 'Peugeot', '307', 2014, 2014, 'JBZ7551', 10);
INSERT INTO veiculo VALUES (null, 'Fiat', 'Uno', 2004, 2005, 'HZL8632', 1);
INSERT INTO veiculo VALUES (null, 'Fiat', 'Argo', 2016, 2017, 'JSU8372', 9);
INSERT INTO veiculo VALUES (null, 'Volkswagen', 'Fox', 2010, 2010, 'MNY0383', 1);
INSERT INTO veiculo VALUES (null, 'GM Chevrolet', 'Celta', 2008, 2009, 'MVQ2011', 4);
INSERT INTO veiculo VALUES (null, 'Fiat', 'Mobi', 2016, 2017, 'IJO4726', 9);

-- Popular tabela equipe

INSERT INTO equipe VALUES (null);
INSERT INTO equipe VALUES (null);
INSERT INTO equipe VALUES (null);
INSERT INTO equipe VALUES (null);
INSERT INTO equipe VALUES (null);

-- Popular tabela mecanico

INSERT INTO mecanico VALUES (null, 'M3N001', 'Paulo Bento da Cruz', 1);
INSERT INTO mecanico VALUES (null, 'M3N002', 'Melissa Sophie Elisa Farias', 2);
INSERT INTO mecanico VALUES (null, 'M3N003', 'Victor Cauã Lima', 3);
INSERT INTO mecanico VALUES (null, 'M3N004', 'Sebastiana Mariane Aragão', 4);
INSERT INTO mecanico VALUES (null, 'M3N005', 'Nicolas Manuel Tomás Corte Real', 5);
INSERT INTO mecanico VALUES (null, 'M2N001', 'Bárbara Raimunda Silveira', 1);
INSERT INTO mecanico VALUES (null, 'M2N002', 'Ryan Thomas Farias', 2);
INSERT INTO mecanico VALUES (null, 'M2N003', 'Augusto Cláudio Nascimento', 3);
INSERT INTO mecanico VALUES (null, 'M2N004', 'Bernardo Guilherme Mário Alves', 4);
INSERT INTO mecanico VALUES (null, 'M2N005', 'Allana Betina Corte Real', 5);
INSERT INTO mecanico VALUES (null, 'M1N001', 'Fábio Lucas Caldeira', 1);
INSERT INTO mecanico VALUES (null, 'M1N002', 'Vinicius Tomás da Paz', 2);
INSERT INTO mecanico VALUES (null, 'M1N003', 'Eloá Fabiana Isabelle Rocha', 3);
INSERT INTO mecanico VALUES (null, 'M1N004', 'Luciana Tânia Sebastiana da Conceição', 4);
INSERT INTO mecanico VALUES (null, 'M1N005', 'Ruan Thiago da Mota', 5);

-- Popular tabela ordem de servico

INSERT INTO ordem VALUES (null, '2022/09/18', '2022/09/20', 'ACEITA', 0, 1, 1, 1);
INSERT INTO ordem VALUES (null, '2022/09/19', '2022/09/20', 'ACEITA', 0, 2, 2, 2);
INSERT INTO ordem VALUES (null, '2022/09/19', '2022/09/21', 'CONCLUIDA', 0, 3, 3, 3);
INSERT INTO ordem VALUES (null, '2022/09/19', '2022/09/21', 'CONCLUIDA', 0, 4, 4, 4);
INSERT INTO ordem VALUES (null, '2022/09/20', '2022/09/21', 'PARALISADA', 0, 5, 5, 5);
INSERT INTO ordem VALUES (null, '2022/09/20', '2022/09/22', 'EM_EXECUCAO', 0, 1, 1, 1);
INSERT INTO ordem VALUES (null, '2022/09/20', '2022/09/23', 'EM_EXECUCAO', 0, 1, 1, 2);
INSERT INTO ordem VALUES (null, '2022/09/21', '2022/09/22', 'AGUARDANDO_PECAS', 0, 1, 1, 3);
INSERT INTO ordem VALUES (null, '2022/09/21', '2022/09/23', 'AGURADANDO_EQUIPE', 0, 1, 1, null);
INSERT INTO ordem VALUES (null, '2022/09/21', '2022/09/23', 'AGUARDANDO_APROVACAO', 0, 1, 1, null);

-- Relacionamento servico_por_ordem

INSERT INTO servico_por_ordem VALUES (1, 1);
INSERT INTO servico_por_ordem VALUES (1, 7);
INSERT INTO servico_por_ordem VALUES (2, 9);
INSERT INTO servico_por_ordem VALUES (3, 9);
INSERT INTO servico_por_ordem VALUES (4, 1);
INSERT INTO servico_por_ordem VALUES (4, 7);
INSERT INTO servico_por_ordem VALUES (5, 5);
INSERT INTO servico_por_ordem VALUES (5, 6);
INSERT INTO servico_por_ordem VALUES (6, 1);
INSERT INTO servico_por_ordem VALUES (6, 4);
INSERT INTO servico_por_ordem VALUES (6, 8);
INSERT INTO servico_por_ordem VALUES (7, 10);
INSERT INTO servico_por_ordem VALUES (8, 2);
INSERT INTO servico_por_ordem VALUES (8, 3);
INSERT INTO servico_por_ordem VALUES (9, 4);
INSERT INTO servico_por_ordem VALUES (10, 1);

-- Relacionamento peca_por_ordem

INSERT INTO peca_por_ordem VALUES (1, 1, 2);
INSERT INTO peca_por_ordem VALUES (2, 2, 4);
INSERT INTO peca_por_ordem VALUES (3, 2, 4);
INSERT INTO peca_por_ordem VALUES (4, 1, 2);
INSERT INTO peca_por_ordem VALUES (4, 3, 1);
INSERT INTO peca_por_ordem VALUES (4, 5, 1);
INSERT INTO peca_por_ordem VALUES (5, 10, 1);
INSERT INTO peca_por_ordem VALUES (5, 11, 1);
INSERT INTO peca_por_ordem VALUES (6, 1, 2);
INSERT INTO peca_por_ordem VALUES (6, 6, 1);
INSERT INTO peca_por_ordem VALUES (6, 13, 1);
INSERT INTO peca_por_ordem VALUES (9, 13, 1);
INSERT INTO peca_por_ordem VALUES (10, 1, 2);

-- Relacionamento mecanico-servico (especialidade)

INSERT INTO especialidade VALUES (1, 1);
INSERT INTO especialidade VALUES (1, 4);
INSERT INTO especialidade VALUES (1, 7);
INSERT INTO especialidade VALUES (1, 8);
INSERT INTO especialidade VALUES (2, 1);
INSERT INTO especialidade VALUES (2, 7);
INSERT INTO especialidade VALUES (2, 9);
INSERT INTO especialidade VALUES (2, 10);
INSERT INTO especialidade VALUES (3, 2);
INSERT INTO especialidade VALUES (3, 3);
INSERT INTO especialidade VALUES (3, 5);
INSERT INTO especialidade VALUES (3, 6);
INSERT INTO especialidade VALUES (3, 9);
INSERT INTO especialidade VALUES (4, 1);
INSERT INTO especialidade VALUES (4, 7);
INSERT INTO especialidade VALUES (4, 9);
INSERT INTO especialidade VALUES (4, 10);
INSERT INTO especialidade VALUES (5, 1);
INSERT INTO especialidade VALUES (5, 4);
INSERT INTO especialidade VALUES (5, 5);
INSERT INTO especialidade VALUES (5, 6);
INSERT INTO especialidade VALUES (5, 7);
INSERT INTO especialidade VALUES (5, 8);


INSERT INTO especialidade VALUES (6, 1);
INSERT INTO especialidade VALUES (6, 4);
INSERT INTO especialidade VALUES (6, 7);
INSERT INTO especialidade VALUES (7, 1);
INSERT INTO especialidade VALUES (7, 7);
INSERT INTO especialidade VALUES (7, 9);
INSERT INTO especialidade VALUES (8, 2);
INSERT INTO especialidade VALUES (8, 3);
INSERT INTO especialidade VALUES (9, 1);
INSERT INTO especialidade VALUES (9, 7);
INSERT INTO especialidade VALUES (9, 9);
INSERT INTO especialidade VALUES (10, 1);
INSERT INTO especialidade VALUES (10, 4);
INSERT INTO especialidade VALUES (10, 8);


INSERT INTO especialidade VALUES (11, 1);
INSERT INTO especialidade VALUES (12, 1);
INSERT INTO especialidade VALUES (12, 9);
INSERT INTO especialidade VALUES (13, 5);
INSERT INTO especialidade VALUES (13, 6);
INSERT INTO especialidade VALUES (14, 1);
INSERT INTO especialidade VALUES (14, 7);
INSERT INTO especialidade VALUES (15, 1);
INSERT INTO especialidade VALUES (15, 7);

-- Procedimento para atualizar valores das ordens de acordo com os valores e quantidades de pecas e servicos   

DROP PROCEDURE IF EXISTS update_valores;

delimiter //
CREATE PROCEDURE update_valores (c int)
       BEGIN
			declare i int default 1;
			while i < c do
				with consulta1 as (
					select  o.id_ordem, coalesce(sum(s.valor), 0) as total from servico as s
						inner join servico_por_ordem as so using (id_servico)
						right join ordem as o using (id_ordem)
						where o.id_ordem = i					
                ), consulta2 as (
					select  o.id_ordem, coalesce(sum(round(p.valor * po.quantidade, 2)), 0) as total from peca as p
						inner join peca_por_ordem as po using (id_peca)
						right join ordem as o using (id_ordem)
						where o.id_ordem = i
                ), consulta3 as (
					select id_ordem, c1.total as total_servicos, c2.total as total_pecas from consulta1 c1 
						inner join consulta2 c2 using (id_ordem)
				)
                update ordem set valor = (select total_servicos + total_pecas from consulta3) where id_ordem = i;
				set i = i + 1;
			end while;
       END//

delimiter ;  

call update_valores(11);