
CREATE TABLE `evento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_grupo` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `nome_evento` varchar(255) DEFAULT NULL,
  `data_criado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `data_evento` varchar(60) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `descricao` varchar(500) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `hora_ini` varchar(45) DEFAULT NULL,
  `hora_fim` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

CREATE TABLE `eventos_gp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_grupo` varchar(45) DEFAULT NULL,
  `id_evento` varchar(45) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

CREATE TABLE `eventos_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_evento` varchar(45) DEFAULT NULL,
  `id_user` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

CREATE TABLE `evnts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) DEFAULT NULL,
  `descricao` text,
  `data_evento` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
