
CREATE TABLE `app_dispositivos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dispositivo` varchar(100) NOT NULL,
  `id_user` int(10) unsigned NOT NULL,
  `status` varchar(45) NOT NULL DEFAULT 'A',
  `sistema` varchar(45) NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
