CREATE TABLE `amigos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_envia` varchar(45) DEFAULT NULL,
  `id_recebe` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `data_atualizado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;


CREATE TABLE `app_dispositivos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dispositivo` varchar(100) NOT NULL,
  `id_user` int(10) unsigned NOT NULL,
  `status` varchar(45) NOT NULL DEFAULT 'A',
  `sistema` varchar(45) NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_post` varchar(45) DEFAULT NULL,
  `comentario` varchar(999) DEFAULT NULL,
  `id_usuario` varchar(45) DEFAULT NULL,
  `data` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

CREATE TABLE `departamentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `setor` varchar(34) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

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

CREATE TABLE `ferramentas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(110) DEFAULT NULL,
  `obs` varchar(115) DEFAULT NULL,
  `href` varchar(800) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;


CREATE TABLE `filiais` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `filial` varchar(485) NOT NULL,
  `id_coordenador` int(10) unsigned NOT NULL,
  `id_supervisor` int(10) unsigned NOT NULL,
  `ddd` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=486 DEFAULT CHARSET=utf8;

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


CREATE TABLE `mensagens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_envia` varchar(99) DEFAULT NULL,
  `mensagem` varchar(255) DEFAULT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;


CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL,
  `iv` text NOT NULL,
  `visu` varchar(45) DEFAULT '0',
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4;

CREATE TABLE `niveis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nivel` varchar(45) DEFAULT NULL,
  `nome` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `body` text COMMENT 'Content of the post',
  `id_usuario` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `grupo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

CREATE TABLE `salvos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_post` varchar(45) DEFAULT NULL,
  `id_usuario` varchar(45) DEFAULT NULL,
  `data` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;


CREATE TABLE `tipo_evento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(45) DEFAULT NULL,
  `cor` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


CREATE TABLE `user_gp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` varchar(45) DEFAULT NULL,
  `id_grupo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `unique_id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4;
