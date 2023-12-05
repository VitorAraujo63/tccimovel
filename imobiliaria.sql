CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `telefone` varchar(14) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `usuario` (`id`, `nome`, `email`, `telefone`, `senha`) VALUES
	(1, 'gabriel', 'vitorvirgem@gamil.com', NULL, '123456'),
	(2, 'amando', 'dwadjwv@gmail.com', '5514990336607', '43234234'),
	(3, 'danilo', 'sambandocomvc@gmail.com', '55149912345677', '948293'),
	(4, 'Cristo', 'vidajesus@gmail.com', '551499543454', '463456'),
	(5, 'lllllllllll', 'sentido@gmail.com', '551499543454', '867567'),
	(6, 'rrrrrrrrr', 'NAOALBERTO@gmail.com', '551499543974', '45484556'),
	(7, 'Proxa', 'vidajesus@gmail.com', '84939374574', '85634097'),
	(8, 'Vitor', 'vitinhoaraujo201380@gmail.com', '14999031741', '123456');

CREATE TABLE IF NOT EXISTS `imovel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quarto` int(11) DEFAULT NULL,
  `banheiro` int(11) DEFAULT NULL,
  `preco` decimal(10,0) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `rua` varchar(50) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `cep` varchar(40) DEFAULT NULL,
  `descricao` varchar(500) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_imovel_usuario` (`id_usuario`),
  CONSTRAINT `fk_imovel_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `imovel` (`id`, `quarto`, `banheiro`, `preco`, `estado`, `cidade`, `rua`, `bairro`, `numero`, `cep`, `descricao`, `id_usuario`) VALUES
	(39, 2, 1, 275000, 'Santa Catarina', 'Jaguaruna', 'Riachinho', NULL, NULL, '88715000', 'CASA DE ALVENARIA GEMINADA NO RIACHINHO (LOT. MOINHO DE VENTO) - JAGUARUNA/SC  Possuindo:  * 2 Quartos * Sala e cozinha conjugadas * Banheiro * Área de serviço * Laje inclinada * Teto em gesso * Garagem * Cercada * Murada * Escriturada  * Área total construída: 68,00 m² * Área total do terreno: 173,29 m² (6,66x26)  * Localizada a 2,5 km do Centro, e a 8 km do mar.', 8),
	(41, 3, 2, 630000, 'Santa Catarina', 'Jaguaruna', 'Arroio Corrente', NULL, NULL, '88715000', 'CASA DE ALVENARIA COM LAGE INCLINADA NO BALNEÁRIO ARROIO CORRENTE (LOT. CASCATA VERMELHA) - JAGUARUNA/SC  Imóvel possui:  * 3 Quartos * 2 Salas * Cozinha (Sob medida) * Banheiro (Sob medida) * Garagem p/ 3 veiculos  * Churrasqueira * Piso porcelanato * Aberturas de aluminio * Frente voltada para o mar', 8),
	(42, 4, 2, 426000, 'Sao Paulo', 'Marília', 'Hermes da fonseca', 'Palmital', 1448, '17511403', 'CASA MISTA NO PALMITAL - MARÍLIA/SP  POSSUINDO:  * 4 Quartos * Cozinha * Sala * 2 Banheiros * Garagem para 3 veículos * Despensa * Área de serviço * Churrasqueira * Murada * Escriturada * Mobiliada  * Área total construída: 150,00 m² * Área total do terreno: 304,50 m² (14,50x21,00)  * Ótima localização, a 200 metros do chuveirão e a 500 metros do mar.  Mobília sim', 8);


CREATE TABLE IF NOT EXISTS `imagens_imoveis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `arquivo` text DEFAULT NULL,
  `id_imovel` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_imagens_imovel` (`id_imovel`),
  CONSTRAINT `fk_imagens_imovel` FOREIGN KEY (`id_imovel`) REFERENCES `imovel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `imagens_imoveis` (`id`, `arquivo`, `id_imovel`) VALUES
	(57, '/storage/fotos/FFE5xcHOfPgowLuGBgeuqphoEvb7YwC1lmpmzjLj.jpg', 39),
	(58, '/storage/fotos/HbddBJjzOePKYRZVyZy545UbsoK8t7IyhE4BSc2w.jpg', 39),
	(59, '/storage/fotos/VkmNZf7M7tdXmvofqMtjixllqFIx4UKBAaJ0VaRL.jpg', 39),
	(60, '/storage/fotos/vQj57OHPA2fvkQzbl5HjfxRjB6QP49GjIHFYyhvi.jpg', 39),
	(61, '/storage/fotos/aJF3C2GK12LPfzsEVD4diw45ZdRZTJmvsX6GRUia.jpg', 39),
	(71, '/storage/fotos/FdVXGy6mebOwE4yJV21AqJoTFHhbLQcRDwqnDP5r.jpg', 41),
	(72, '/storage/fotos/38VX15o10ySRFnODvksdWlZFEZMmNt1KFcmRBFz7.jpg', 41),
	(73, '/storage/fotos/qHSv6VSzeiMRQvlgFnA07WieuTxEZc1ExICpgb5N.jpg', 41),
	(74, '/storage/fotos/JqmO6BRhY2cwOfFrQulTSRIU0SRhw2jsutowlTic.jpg', 41),
	(75, '/storage/fotos/UYv6cPoP66OTZzisEy2GxB8wCkFbeDzOWKz0RVhN.jpg', 41),
	(76, '/storage/fotos/edw2gEuXR0R5nQbuYkma7EfuIpGMj1XZA2xmqM1G.jpg', 41),
	(77, '/storage/fotos/uHQ14d77dMESBbcnUWHj9eYzgRZYbyQtF4Ju9AgO.jpg', 41),
	(78, '/storage/fotos/Iz5AGFUfcqqhy9VU0jrLkBAS3L3VbY0QQ38GrOFC.jpg', 41),
	(79, '/storage/fotos/NaPTa1krVqZKVKRtbD84t4N9ppgOkVoBp3cdVYHZ.jpg', 41),
	(80, '/storage/fotos/T2k0bjHlZ7k0nD6dURQbI1p2e54qnlsoC6unAAiY.jpg', 42),
	(81, '/storage/fotos/b5iDSWztKGUk3xILbSkKZJTgLVNEm8HLhBqvGj3g.jpg', 42),
	(82, '/storage/fotos/bpLWpAXgJG8eOfKKw5c4GpY6pK8i4qJHwhP9KcHD.jpg', 42),
	(83, '/storage/fotos/kwmiw2OFPvf2wCD7BCXDsrwfMAN2bNPI7gww0Vwf.jpg', 42),
	(84, '/storage/fotos/hwWl12jMDZDRuG9LvtVwkcJu0Ra6AsTbs1GzjmrF.jpg', 42),
	(85, '/storage/fotos/DVPb3a36UFi89eUe4noZybMMbmCRyCnFwzP6Yp8b.jpg', 42),
	(86, '/storage/fotos/KViWgdnfivaU3k2sgrS7IN2oVk4jQUEJuuRo89JW.jpg', 42),
	(87, '/storage/fotos/w3MEdcbjFFMk5eVLSZh9oH2FoVEgOgPjBhN23ete.jpg', 42),
	(88, '/storage/fotos/YvNx9ntVZLKSfq9Qn9zrDo5lXROtYl41GInD9vRD.jpg', 42),
	(89, '/storage/fotos/zTRw5IGZkfYOv1WxVE6VSfAHv5OHMYHCF77hfrzF.jpg', 42),
	(90, '/storage/fotos/u3kB44wIuNv6UhYAbRhGtvHyIsYZuSGhtiVhTP5v.jpg', 42),
	(91, '/storage/fotos/98hBHpNY5KMHU8hGmgLtbdASofVOjRenpK4Z43Qe.jpg', 42),
	(92, '/storage/fotos/CST9qwrpNJv2K6hicMPPSKACbOoQ5O2qi4bc6YVO.jpg', 42),
	(93, '/storage/fotos/PLCsu24SFi1v0ZxqFGvcAa6eTzNUO1VlQTuDJ0L8.jpg', 42),
	(94, '/storage/fotos/LIPHyW146h2NLqJHwWk9oLOpXhyJxbdcE3rA1jGi.jpg', 42);