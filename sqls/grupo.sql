
CREATE TABLE `grupo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `nome_grupo` varchar(255) DEFAULT NULL,
  `data_criado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `categoria` varchar(255) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `setor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=715 DEFAULT CHARSET=utf8;

CREATE TABLE `grupos_ferramentas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `divisao` varchar(45) DEFAULT NULL,
  `id_ferramenta` varchar(45) DEFAULT NULL,
  `id_grupo` varchar(45) DEFAULT NULL,
  `adm` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
