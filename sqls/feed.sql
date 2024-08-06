
CREATE TABLE `feed_grupo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_feed` int(10) unsigned NOT NULL,
  `id_grupo` int(10) unsigned NOT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

CREATE TABLE `feed_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_feed` int(10) unsigned NOT NULL,
  `id_user` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
