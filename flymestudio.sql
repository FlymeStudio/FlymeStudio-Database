# Host: localhost  (Version: 5.5.53)
# Date: 2018-03-08 15:47:39
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "achieve"
#

DROP TABLE IF EXISTS `achieve`;
CREATE TABLE `achieve` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `tel` bigint(11) NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL DEFAULT '',
  `date` timestamp NOT NULL DEFAULT '2018-01-01 00:00:00',
  `type` int(1) NOT NULL DEFAULT '0' COMMENT '0=year,1=month,2=day',
  `searchId` bigint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "achieve"
#

/*!40000 ALTER TABLE `achieve` DISABLE KEYS */;
/*!40000 ALTER TABLE `achieve` ENABLE KEYS */;

#
# Structure for table "plan"
#

DROP TABLE IF EXISTS `plan`;
CREATE TABLE `plan` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `tel` bigint(11) NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL DEFAULT '',
  `date` timestamp NOT NULL DEFAULT '2018-01-01 00:00:00',
  `type` int(1) NOT NULL DEFAULT '0' COMMENT '0=year,1=month,2=day',
  `searchId` bigint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "plan"
#

/*!40000 ALTER TABLE `plan` DISABLE KEYS */;
/*!40000 ALTER TABLE `plan` ENABLE KEYS */;

#
# Structure for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(4) NOT NULL DEFAULT '',
  `tel` bigint(11) NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(8) NOT NULL DEFAULT '123456',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "user"
#

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
