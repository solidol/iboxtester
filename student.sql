CREATE TABLE `student` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `region` int(11) unsigned DEFAULT NULL,
  `area` int(11) unsigned DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `fio` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=cp1251;
