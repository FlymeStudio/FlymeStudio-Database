CREATE TABLE IF NOT EXISTS `message` (
  `id` bigint(11) NOT NULL,
  `type` int(1) NOT NULL,
  `sender` bigint(11) NOT NULL,
  `receiver` bigint(11) NOT NULL,
  `teamid` bigint(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_message_1_idx` (`sender`),
  KEY `fk_message_2_idx` (`receiver`),
  KEY `fk_message_3_idx` (`teamid`),
  CONSTRAINT `fk_message_1` FOREIGN KEY (`sender`) REFERENCES `user` (`tel`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_message_2` FOREIGN KEY (`receiver`) REFERENCES `user` (`tel`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_message_3` FOREIGN KEY (`teamid`) REFERENCES `team` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8
