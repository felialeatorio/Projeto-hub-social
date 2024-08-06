
CREATE TABLE `like_comentario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` varchar(45) DEFAULT NULL,
  `id_post` varchar(45) DEFAULT NULL,
  `id_comentario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

CREATE TABLE `like_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `like` varchar(45) DEFAULT NULL,
  `id_usuario` varchar(45) DEFAULT NULL,
  `id_post` varchar(45) DEFAULT NULL,
  `tipo_reacao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;
