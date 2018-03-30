CREATE TABLE IF NOT EXISTS `team` (
  `id` bigint(11) NOT NULL,
  `name` varchar(8) NOT NULL,
  `tel` bigint(11) NOT NULL,
  `members` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_team_1_idx` (`tel`),
  CONSTRAINT `fk_team_1` FOREIGN KEY (`tel`) REFERENCES `user` (`tel`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8
