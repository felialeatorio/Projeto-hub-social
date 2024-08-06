
CREATE TABLE `filiais` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `filial` varchar(485) NOT NULL,
  `id_coordenador` int(10) unsigned NOT NULL,
  `id_supervisor` int(10) unsigned NOT NULL,
  `ddd` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=486 DEFAULT CHARSET=utf8;
