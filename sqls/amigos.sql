CREATE TABLE `amigos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_envia` varchar(45) DEFAULT NULL,
  `id_recebe` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `data_atualizado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--criação ta tabela de amigos
