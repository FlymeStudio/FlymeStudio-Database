CREATE TABLE IF NOT EXISTS `user` (
  `tel` bigint(11) NOT NULL,
  `name` varchar(4) NOT NULL,
  `email` varchar(32) NOT NULL,
  `password` varchar(8) NOT NULL,
  PRIMARY KEY (`tel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
