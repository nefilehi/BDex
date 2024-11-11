SELECT m.descricao, f.fornecedor
FROM tb_fornecedores f
INNER JOIN tb_materiais m
ON f.id_fornecedor = m.id_fornecedor
ORDER BY m.descricao;

SELECT m.descricao, f.fornecedor
FROM tb_fornecedores f
LEFT JOIN tb_materiais m
ON f.id_fornecedor = m.id_fornecedor
ORDER BY m.descricao;

SELECT m.descricao, f.fornecedor
FROM tb_fornecedores f
LEFT JOIN tb_materiais m
ON f.id_fornecedor = m.id_fornecedor
WHERE m.id_fornecedor IS NULL
ORDER BY m.descricao;

SELECT MIN(valor_unitario) FROM tb_itens_nf;

SELECT MAX(valor_unitario) FROM tb_itens_nf;

SELECT AVG(valor_unitario) FROM tb_itens_nf;

SELECT m.descricao, i.valor_unitario
FROM tb_materiais AS m
JOIN tb_itens_nf AS i
ON m.id_material = i.id_material
ORDER BY m.descricao;

SELECT m.descricao, i.valor_unitario
FROM tb_materiais AS m
JOIN tb_itens_nf AS i
ON m.id_material = i.id_material < (SELECT AVG(valor_unitario) FROM tb_itens_nf);

SELECT * FROM tb_notas_fiscais
WHERE numero = 'NF20240604';

SELECT nf.numero, nf.data_nf, m.descricao, itens.quantidade,
	itens.valor_unitario, (itens.quantidade * itens.valor_unitario) AS valor_parcial
FROM tb_notas_fiscais nf
INNER JOIN tb_itens_nf itens ON nf.id_nota_fiscal = itens.id_nota_fiscal
INNER JOIN tb_materiais m ON itens.id_material = m.id_material
WHERE numero = 'NF20240604';

SELECT m.codigo, m.descricao, f.fornecedor
FROM tb_materiais AS m
JOIN tb_fornecedores AS f
WHERE m.id_fornecedor = f.id_fornecedor
ORDER BY m.descricao;

SELECT m.descricao, m.qtd_atual, s.segmento
FROM tb_materiais AS m
JOIN tb_segmentos AS s
WHERE m.id_segmento = s.id_segmento and m.qtd_atual = 0;

SELECT m.descricao, m.qtd_atual, n.numero, n.data_nf
FROM tb_materiais AS m, tb_itens_nf c
JOIN tb_notas_fiscais AS n
WHERE m.id_material = c.id_material AND	 n.data_nf = '2024-06-03';

SELECT r.id_requisicao, m.descricao, r.quantidade
FROM tb_materiais m
JOIN tb_departamentos d, tb_itens_requisicao r, tb_requisicoes re
WHERE m.id_material = r.id_material AND r.id_requisicao = re.id_requisicao
ORDER BY r.id_requisicao;

SELECT m.descricao, m.qtd_atual, f.fornecedor
FROM tb_materiais AS m
JOIN tb_fornecedores AS f
WHERE m.id_fornecedor = f.id_fornecedor AND m.qtd_atual < m.qtd_minima AND m.qtd_atual <> 0;