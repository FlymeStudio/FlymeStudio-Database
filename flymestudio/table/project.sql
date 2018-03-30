CREATE TABLE IF NOT EXISTS `project` (
  `id` bigint(11) NOT NULL,
  `tel` bigint(11) NOT NULL,
  `percent` int(11) NOT NULL,
  `type` int(1) NOT NULL,
  `date` date NOT NULL,
  `title` varchar(16) NOT NULL,
  `content` longtext NOT NULL,
  `plans` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_project_1_idx` (`tel`),
  CONSTRAINT `fk_project_1` FOREIGN KEY (`tel`) REFERENCES `user` (`tel`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8
