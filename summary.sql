CREATE TABLE IF NOT EXISTS `summary` (
  `id` bigint(11) NOT NULL,
  `tel` bigint(11) NOT NULL,
  `type` int(1) NOT NULL,
  `date` date NOT NULL,
  `title` varchar(16) NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_summary_1_idx` (`tel`),
  CONSTRAINT `fk_summary_1` FOREIGN KEY (`tel`) REFERENCES `user` (`tel`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8
