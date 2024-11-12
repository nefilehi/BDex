

-- Inserindo endereços de entrega
INSERT INTO `sistema_pizzaria`.`tb_endereco_entrega` (`bairro`, `rua`, `numero`) VALUES
('Centro', 'Rua 1', 123),
('Jardim Primavera', 'Avenida das Flores', 456),
('Vila Nova', 'Rua das Acácias', 789);

-- Inserindo clientes
INSERT INTO `sistema_pizzaria`.`tb_clientes` (`nome`, `telefone`, `id_endereco_entrega`) VALUES
('João Silva', '11987654321', 1),
('Maria Oliveira', '11976543210', 2),
('Carlos Pereira', '11975432109', 3);

-- Inserindo pizzas
INSERT INTO `sistema_pizzaria`.`tb_pizzas` (`descricao`, `ingredientes`, `preco`, `disponibilidade`) VALUES
('Mussarela', 'Queijo mussarela, molho de tomate', 30.00, 'Disponível'),
('Calabresa', 'Calabresa, cebola, queijo mussarela', 35.00, 'Disponível'),
('Frango com Catupiry', 'Frango desfiado, catupiry, queijo mussarela', 40.00, 'Indisponível');

-- Inserindo bebidas
INSERT INTO `sistema_pizzaria`.`tb_bebidas` (`descricao`, `preco`, `disponibilidade`) VALUES
('Coca-Cola', 7.50, 'Disponível'),
('Guaraná Antarctica', 6.00, 'Disponível'),
('Água Mineral', 3.00, 'Disponível');

-- Inserindo itens no cardápio
INSERT INTO `sistema_pizzaria`.`tb_cardapio` (`id_pizza`, `id_bebida`) VALUES
(1, 1),  -- Pizza Mussarela com Coca-Cola
(2, 2),  -- Pizza Calabresa com Guaraná Antarctica
(3, 3);  -- Pizza Frango com Catupiry com Água Mineral

-- Inserindo itens no pedido
INSERT INTO `sistema_pizzaria`.`tb_itens_pedido` (`quantidade`, `valor_unitario`, `id_pizza`, `id_bebida`) VALUES
(1, 30.00, 1, 1),  -- 1 Pizza Mussarela com Coca-Cola
(2, 35.00, 2, 2),  -- 2 Pizzas Calabresa com Guaraná
(1, 40.00, 3, 3);  -- 1 Pizza Frango com Catupiry com Água Mineral

-- Inserindo motoboys
INSERT INTO `sistema_pizzaria`.`tb_motoboys` (`nome`, `disponibilidade`) VALUES
('Pedro Souza', 'Disponível'),
('Lucas Almeida', 'Indisponível'),
('Paulo Santos', 'Disponível');

-- Inserindo pedidos
INSERT INTO `sistema_pizzaria`.`tb_pedidos` (`formaPagamento`, `data`, `id_itens_pedido`, `id_endereco_entrega`, `id_cliente`, `id_motoboy`) VALUES
('Cartão', '2024-11-11', 1, 1, 1, 1),  -- Pedido de João Silva, Pizza Mussarela com Coca-Cola
('Dinheiro', '2024-11-11', 2, 2, 2, 3),  -- Pedido de Maria Oliveira, Pizza Calabresa com Guaraná
('Cartão', '2024-11-11', 3, 3, 3, 2);  -- Pedido de Carlos Pereira, Pizza Frango com Catupiry com Água Mineral

-- Inserindo usuários
INSERT INTO `sistema_pizzaria`.`tb_usuarios` (`email`, `senha`, `id_cliente`) VALUES
('joao.silva@example.com', 'senha123', 1),
('maria.oliveira@example.com', 'senha456', 2),
('carlos.pereira@example.com', 'senha789', 3);
