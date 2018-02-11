CREATE DATABASE  IF NOT EXISTS `checking_system` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `checking_system`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: checking_system
-- ------------------------------------------------------
-- Server version	5.7.17-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `birth_date`
--

DROP TABLE IF EXISTS `birth_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `birth_date` (
  `birth_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_birth_date` varchar(45) DEFAULT NULL,
  `stu_name` varchar(250) DEFAULT NULL,
  `sign_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `played` int(11) DEFAULT '0',
  PRIMARY KEY (`birth_id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `birth_date`
--

LOCK TABLES `birth_date` WRITE;
/*!40000 ALTER TABLE `birth_date` DISABLE KEYS */;
INSERT INTO `birth_date` VALUES (102,'2018-01-11','Micheal Boulus','2018-01-11 11:48:25',1);
/*!40000 ALTER TABLE `birth_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootcamp_name`
--

DROP TABLE IF EXISTS `bootcamp_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootcamp_name` (
  `bootcamp_id` int(11) NOT NULL AUTO_INCREMENT,
  `bootcamp_name` varchar(250) DEFAULT NULL,
  `start_date` varchar(50) DEFAULT NULL,
  `end_date` varchar(50) DEFAULT NULL,
  `bootcamp_cancel` int(11) DEFAULT '0',
  `slack_link` varchar(500) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `login_id` int(11) DEFAULT '0',
  `bootcamp_active` int(11) DEFAULT '0',
  `slack_channel` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`bootcamp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootcamp_name`
--

LOCK TABLES `bootcamp_name` WRITE;
/*!40000 ALTER TABLE `bootcamp_name` DISABLE KEYS */;
INSERT INTO `bootcamp_name` VALUES (1,'One Bootcamp Summer17','2017-06-15','2017-10-29',0,'https://hooks.slack.com/services/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','2017-06-23 00:00:00',1,1,'general'),(2,'Two Bootcamp Summer18','2017-06-12','2017-12-12',0,'https://hooks.slack.com/services/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','2018-01-01 00:00:00',1,0,'xxx'),(3,'RSWinter18','2018-01-08','2018-03-25',1,'https://hooks.slack.com/services/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','2017-12-04 09:37:47',0,0,'ssssss');
/*!40000 ALTER TABLE `bootcamp_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootcamp_students`
--

DROP TABLE IF EXISTS `bootcamp_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootcamp_students` (
  `stu_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_name` varchar(250) DEFAULT NULL,
  `stu_birth_date` varchar(50) DEFAULT NULL,
  `nath_id` int(11) DEFAULT '0',
  `phone_num` varchar(45) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `postcode` varchar(50) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `card_id` varchar(100) DEFAULT NULL,
  `stu_photo_name` varchar(150) DEFAULT NULL,
  `stu_cancel` int(11) DEFAULT '0',
  `stu_cancel_date` varchar(100) DEFAULT NULL,
  `stu_cancel_user_id` int(11) DEFAULT '0',
  `stu_stop` int(11) DEFAULT '0',
  `stu_stop_date` varchar(100) DEFAULT NULL,
  `stu_stop_user_id` int(11) DEFAULT '0',
  `stu_stop_reason` varchar(400) DEFAULT NULL,
  `bootcamp_id` int(11) DEFAULT '0',
  PRIMARY KEY (`stu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootcamp_students`
--

LOCK TABLES `bootcamp_students` WRITE;
/*!40000 ALTER TABLE `bootcamp_students` DISABLE KEYS */;
INSERT INTO `bootcamp_students` VALUES (1,'Irene','2017-11-23',5,'0659604544','irene@gmail.com','2255CA','Samstraat 11','Rotterdam','12','4.jpg',0,'',0,0,'',0,'ssssssss',1),(2,'Micheal Boulus','2000-01-11',44,'0659495708','x2020x@yahoo.com','2711GA','Griekenlandlaan, 11','Zoetermeer','11','3.jpg',0,NULL,0,0,NULL,0,'',1),(28,'Shariel','7777-06-05',48,'0659495708','x2020x@yahoo.com','2711GA','Griekenlandlaan, 11','Zoetermeer','33','5.jpg',0,'',0,0,'',0,'rrrr',1),(29,'Sharokh','8887-12-06',44,'0659495708','x2020x@yahoo.com','2711GA','Griekenlandlaan, 11','Zoetermeer','44','10.jpg',0,NULL,0,0,NULL,0,'ddff',1),(30,'Shrieal','6666-06-06',48,'0659495708','x2020x@yahoo.com','2711GA','Griekenlandlaan, 11','Zoetermeer','77','6.jpg',0,NULL,0,0,NULL,0,NULL,1),(31,'Ted','8888-01-04',48,'0659495708','teodor@restart.network','2711GA','Griekenlandlaan, 11','Zoetermeer','26','9.jpg',0,'',0,0,'',0,'hhhhhhh',1),(32,'Sadek','7777-07-06',40,'0659495708','x2020x@yahoo.com','2711GA','Griekenlandlaan, 11','Zoetermeer','88','2.jpg',0,NULL,0,0,NULL,0,NULL,1),(33,'Mahmoud','2000-05-05',36,'8978766767','adam@msn.com','3232mm','Rotterdam','Rottordam city','66','1.jpg',0,'',0,0,'',0,NULL,1),(34,'Fred','2000-05-05',36,'8978766767','adam@msn.com','3232mm','Rotterdam','Rottordam city','99','7.jpg',0,'',0,0,'',0,'uuuuuuuuu',1),(35,'Telma','2000-12-20',36,'8978766767','adam@msn.com','3232mm','Rotterdam','Rottordam city','00','8.jpg',0,'',0,0,'',0,'uuuuuuuu',1),(36,'Esso','2000-05-05',36,'8978766767','adam@msn.com','3232mm','Rotterdam','Rottordam city','19409147','12.jpg',0,'',0,0,'',0,'esoo stoped',1),(37,'Jisson','2000-05-05',36,'8978766767','adam@msn.com','3232mm','Rotterdam','Rottordam city','13','13.jpg',0,'',0,0,'',0,'ffffff',1),(38,'Mariene','2000-05-05',36,'8978766767','adam@msn.com','3232mm','Rotterdam','Rottordam city','14','14.jpg',0,'',0,0,'',0,'aaaaaaaaaaaa',1),(39,'Waael','2000-05-05',36,'8978766767','adam@msn.com','3232mm','Rotterdam','Rottordam city','15','15.jpg',0,NULL,0,0,NULL,0,NULL,1),(40,'Peter','2000-05-05',36,'8978766767','admin@gmail.com','3232mm','Rotterdam','Rottordam city','16','16.jpg',0,NULL,0,0,NULL,0,NULL,1),(41,'Wilson','2000-05-05',36,'8978766767','adam@msn.com','3232mm','Rotterdam','Rottordam city','17','rjones.jpg',0,'',0,0,'',0,'ssssssss',1),(42,'Bill Gates','2000-12-20',36,'8978766767','adam@msn.com','3232mm','Rotterdam','Rottordam city','18','18.jpg',0,'',0,0,'',0,'ddddddddd',1),(43,'Thomas','2000-05-05',36,'8978766767','adam@msn.com','3232mm','Rotterdam','Rottordam city','19','johannes-unterstein-foto.1024x1024.jpg',0,NULL,0,0,NULL,0,NULL,1),(44,'Shrief','2000-05-05',36,'8978766767','adam@msn.com','3232mm','Rotterdam','Rottordam city','20','20.jpg',0,NULL,0,0,NULL,0,NULL,1),(45,'Fadi','2000-05-05',36,'8978766767','adam@msn.com','3232mm','Rotterdam','Rottordam city','21','21.jpg',0,NULL,0,0,NULL,0,NULL,1),(46,'Samer','2000-05-05',36,'8978766767','x2020x@yahoo.com','3232mm','Rotterdam','Rottordam city','25','coprofilepic1_3267.gif',0,NULL,0,0,NULL,0,NULL,1),(47,'Bahaa','2000-12-08',36,'8978766767','adam@msn.com','3232mm','Rotterdam','Rottordam city','23','23.jpg',0,'',0,1,'2018-01-11 11:50:38',0,'yuyyuyu',1),(48,'Alexander Adley','2000-05-05',36,'8978766767','adam7@msn.com','3232mm','Rotterdam','Rottordam city','24','24.jpg',0,'',0,0,'',0,'efefewefw',1),(50,'Adams Douglas','1980-05-06',800,'06597544452','adem@msn.com','1415ca','Zeeland 11','Zeeland ','11','images (2).jpg',0,NULL,0,0,NULL,0,NULL,2),(51,'Aquinas Thomas','1978-08-07',246,'0654444425','aqu@msn.com','1555SA','Samstraat','Den Haag','22','images (1).jpg',0,NULL,0,0,NULL,0,NULL,2),(52,'Austen Jane111','1980-04-06',10,'0656899856','austen@gmail.com','4566AB','Italianlaan 1244','Roeterdaam','334','download.jpg',0,NULL,0,0,NULL,0,NULL,2),(53,'Teodor','1995-12-04',642,'0610811222','teodor@restart.network','3013AK','Buizenwerf 231','Rotterdam','010306','9.jpg',0,NULL,0,0,NULL,0,NULL,3),(54,'aaa','2000-05-05',36,'06555555','aaa@msn.com','2541aa','aaaa','aaa','','winter_snow_nature_landscape_baby_cat_kitten_1921x1080.jpg',0,NULL,0,0,NULL,0,NULL,3),(55,'ssww','2200-05-06',4,'06555554','ssdljd@tot.com','54556','assdlk','mmmm','33','winter_snow_nature_landscape_baby_cat_kitten_1921x1080.jpg',0,NULL,0,0,NULL,0,NULL,3),(56,'wweeeeeee','1980-05-04',4,'233232','rrrr@eee.ccc','3232mm','dsdsdsds','3reererer','','undefined',0,NULL,0,0,NULL,0,NULL,3),(57,'yyyy','2000-05-05',4,'433434','hh@tt.oo','5545','gfgffg','gfgf','','undefined',0,NULL,0,0,NULL,0,NULL,3),(58,'fdfdffd','5555-05-05',248,'454554','ggg@ll.ll','5454','fgfg','gfgf','','undefined',0,NULL,0,0,NULL,0,NULL,3),(59,'jkkkk','8888-07-06',248,'565665','uu@yy.ii','66556','6565','65hggh','555','winter_snow_nature_landscape_baby_cat_kitten_1921x1080.jpg',0,NULL,0,0,NULL,0,NULL,3),(60,'Reachard','2000-06-05',51,'0659663522','reach@msn.com','2544AA','Zoetermeer','Zoetermeer','','undefined',0,NULL,0,0,NULL,0,NULL,1),(61,'Ramy','2012-06-05',248,'43445545','tr@rr.vv','3344gg','fkfk','lll','27','undefined',0,NULL,0,0,NULL,0,NULL,1);
/*!40000 ALTER TABLE `bootcamp_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chart_att`
--

DROP TABLE IF EXISTS `chart_att`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chart_att` (
  `chart_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_count` int(11) DEFAULT '0',
  `tot_stu` int(11) DEFAULT '0',
  `sign_date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`chart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chart_att`
--

LOCK TABLES `chart_att` WRITE;
/*!40000 ALTER TABLE `chart_att` DISABLE KEYS */;
INSERT INTO `chart_att` VALUES (92,0,18,'2018-02-01'),(93,0,21,'2018-02-03');
/*!40000 ALTER TABLE `chart_att` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `check_ok`
--

DROP TABLE IF EXISTS `check_ok`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `check_ok` (
  `check_ok` int(11) NOT NULL,
  `check_message` varchar(400) DEFAULT NULL,
  `sound` varchar(100) DEFAULT NULL,
  `stu_name` varchar(250) DEFAULT NULL,
  `stu_photo_name` varchar(150) DEFAULT NULL,
  `stu_id` int(11) NOT NULL DEFAULT '0',
  `bootcamp_id` int(11) DEFAULT '0',
  PRIMARY KEY (`check_ok`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `check_ok`
--

LOCK TABLES `check_ok` WRITE;
/*!40000 ALTER TABLE `check_ok` DISABLE KEYS */;
INSERT INTO `check_ok` VALUES (1,'Welcome Waael you are just checked in but there is no registration action in the week end, Happy coding','1','Waael','15.jpg',39,1);
/*!40000 ALTER TABLE `check_ok` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `num_code` int(11) DEFAULT NULL,
  `alpha_2_code` text,
  `alpha_3_code` text,
  `en_short_name` text,
  `nationality` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (4,'AF','AFG','Afghanistan','Afghan'),(248,'AX','ALA','Åland Islands','Åland Island'),(8,'AL','ALB','Albania','Albanian'),(12,'DZ','DZA','Algeria','Algerian'),(16,'AS','ASM','American Samoa','American Samoan'),(20,'AD','AND','Andorra','Andorran'),(24,'AO','AGO','Angola','Angolan'),(660,'AI','AIA','Anguilla','Anguillan'),(10,'AQ','ATA','Antarctica','Antarctic'),(28,'AG','ATG','Antigua and Barbuda','Antiguan or Barbudan'),(32,'AR','ARG','Argentina','Argentine'),(51,'AM','ARM','Armenia','Armenian'),(533,'AW','ABW','Aruba','Aruban'),(36,'AU','AUS','Australia','Australian'),(40,'AT','AUT','Austria','Austrian'),(31,'AZ','AZE','Azerbaijan','Azerbaijani, Azeri'),(44,'BS','BHS','Bahamas','Bahamian'),(48,'BH','BHR','Bahrain','Bahraini'),(50,'BD','BGD','Bangladesh','Bangladeshi'),(52,'BB','BRB','Barbados','Barbadian'),(112,'BY','BLR','Belarus','Belarusian'),(56,'BE','BEL','Belgium','Belgian'),(84,'BZ','BLZ','Belize','Belizean'),(204,'BJ','BEN','Benin','Beninese, Beninois'),(60,'BM','BMU','Bermuda','Bermudian, Bermudan'),(64,'BT','BTN','Bhutan','Bhutanese'),(68,'BO','BOL','Bolivia (Plurinational State of)','Bolivian'),(535,'BQ','BES','Bonaire, Sint Eustatius and Saba','Bonaire'),(70,'BA','BIH','Bosnia and Herzegovina','Bosnian or Herzegovinian'),(72,'BW','BWA','Botswana','Motswana, Botswanan'),(74,'BV','BVT','Bouvet Island','Bouvet Island'),(76,'BR','BRA','Brazil','Brazilian'),(86,'IO','IOT','British Indian Ocean Territory','BIOT'),(96,'BN','BRN','Brunei Darussalam','Bruneian'),(100,'BG','BGR','Bulgaria','Bulgarian'),(854,'BF','BFA','Burkina Faso','Burkinabé'),(108,'BI','BDI','Burundi','Burundian'),(132,'CV','CPV','Cabo Verde','Cabo Verdean'),(116,'KH','KHM','Cambodia','Cambodian'),(120,'CM','CMR','Cameroon','Cameroonian'),(124,'CA','CAN','Canada','Canadian'),(136,'KY','CYM','Cayman Islands','Caymanian'),(140,'CF','CAF','Central African Republic','Central African'),(148,'TD','TCD','Chad','Chadian'),(152,'CL','CHL','Chile','Chilean'),(156,'CN','CHN','China','Chinese'),(162,'CX','CXR','Christmas Island','Christmas Island'),(166,'CC','CCK','Cocos (Keeling) Islands','Cocos Island'),(170,'CO','COL','Colombia','Colombian'),(174,'KM','COM','Comoros','Comoran, Comorian'),(178,'CG','COG','Congo (Republic of the)','Congolese'),(180,'CD','COD','Congo (Democratic Republic of the)','Congolese'),(184,'CK','COK','Cook Islands','Cook Island'),(188,'CR','CRI','Costa Rica','Costa Rican'),(384,'CI','CIV','Côte d\'Ivoire','Ivorian'),(191,'HR','HRV','Croatia','Croatian'),(192,'CU','CUB','Cuba','Cuban'),(531,'CW','CUW','Curaçao','Curaçaoan'),(196,'CY','CYP','Cyprus','Cypriot'),(203,'CZ','CZE','Czech Republic','Czech'),(208,'DK','DNK','Denmark','Danish'),(262,'DJ','DJI','Djibouti','Djiboutian'),(212,'DM','DMA','Dominica','Dominican'),(214,'DO','DOM','Dominican Republic','Dominican'),(218,'EC','ECU','Ecuador','Ecuadorian'),(818,'EG','EGY','Egypt','Egyptian'),(222,'SV','SLV','El Salvador','Salvadoran'),(226,'GQ','GNQ','Equatorial Guinea','Equatorial Guinean, Equatoguinean'),(232,'ER','ERI','Eritrea','Eritrean'),(233,'EE','EST','Estonia','Estonian'),(231,'ET','ETH','Ethiopia','Ethiopian'),(238,'FK','FLK','Falkland Islands (Malvinas)','Falkland Island'),(234,'FO','FRO','Faroe Islands','Faroese'),(242,'FJ','FJI','Fiji','Fijian'),(246,'FI','FIN','Finland','Finnish'),(250,'FR','FRA','France','French'),(254,'GF','GUF','French Guiana','French Guianese'),(258,'PF','PYF','French Polynesia','French Polynesian'),(260,'TF','ATF','French Southern Territories','French Southern Territories'),(266,'GA','GAB','Gabon','Gabonese'),(270,'GM','GMB','Gambia','Gambian'),(268,'GE','GEO','Georgia','Georgian'),(276,'DE','DEU','Germany','German'),(288,'GH','GHA','Ghana','Ghanaian'),(292,'GI','GIB','Gibraltar','Gibraltar'),(300,'GR','GRC','Greece','Greek, Hellenic'),(304,'GL','GRL','Greenland','Greenlandic'),(308,'GD','GRD','Grenada','Grenadian'),(312,'GP','GLP','Guadeloupe','Guadeloupe'),(316,'GU','GUM','Guam','Guamanian, Guambat'),(320,'GT','GTM','Guatemala','Guatemalan'),(831,'GG','GGY','Guernsey','Channel Island'),(324,'GN','GIN','Guinea','Guinean'),(624,'GW','GNB','Guinea-Bissau','Bissau-Guinean'),(328,'GY','GUY','Guyana','Guyanese'),(332,'HT','HTI','Haiti','Haitian'),(334,'HM','HMD','Heard Island and McDonald Islands','Heard Island or McDonald Islands'),(336,'VA','VAT','Vatican City State','Vatican'),(340,'HN','HND','Honduras','Honduran'),(344,'HK','HKG','Hong Kong','Hong Kong, Hong Kongese'),(348,'HU','HUN','Hungary','Hungarian, Magyar'),(352,'IS','ISL','Iceland','Icelandic'),(356,'IN','IND','India','Indian'),(360,'ID','IDN','Indonesia','Indonesian'),(364,'IR','IRN','Iran','Iranian, Persian'),(368,'IQ','IRQ','Iraq','Iraqi'),(372,'IE','IRL','Ireland','Irish'),(833,'IM','IMN','Isle of Man','Manx'),(376,'IL','ISR','Israel','Israeli'),(380,'IT','ITA','Italy','Italian'),(388,'JM','JAM','Jamaica','Jamaican'),(392,'JP','JPN','Japan','Japanese'),(832,'JE','JEY','Jersey','Channel Island'),(400,'JO','JOR','Jordan','Jordanian'),(398,'KZ','KAZ','Kazakhstan','Kazakhstani, Kazakh'),(404,'KE','KEN','Kenya','Kenyan'),(296,'KI','KIR','Kiribati','I-Kiribati'),(408,'KP','PRK','Korea (Democratic People\'s Republic of)','North Korean'),(410,'KR','KOR','Korea (Republic of)','South Korean'),(414,'KW','KWT','Kuwait','Kuwaiti'),(417,'KG','KGZ','Kyrgyzstan','Kyrgyzstani, Kyrgyz, Kirgiz, Kirghiz'),(418,'LA','LAO','Lao People\'s Democratic Republic','Lao, Laotian'),(428,'LV','LVA','Latvia','Latvian'),(422,'LB','LBN','Lebanon','Lebanese'),(426,'LS','LSO','Lesotho','Basotho'),(430,'LR','LBR','Liberia','Liberian'),(434,'LY','LBY','Libya','Libyan'),(438,'LI','LIE','Liechtenstein','Liechtenstein'),(440,'LT','LTU','Lithuania','Lithuanian'),(442,'LU','LUX','Luxembourg','Luxembourg, Luxembourgish'),(446,'MO','MAC','Macao','Macanese, Chinese'),(807,'MK','MKD','Macedonia (the former Yugoslav Republic of)','Macedonian'),(450,'MG','MDG','Madagascar','Malagasy'),(454,'MW','MWI','Malawi','Malawian'),(458,'MY','MYS','Malaysia','Malaysian'),(462,'MV','MDV','Maldives','Maldivian'),(466,'ML','MLI','Mali','Malian, Malinese'),(470,'MT','MLT','Malta','Maltese'),(584,'MH','MHL','Marshall Islands','Marshallese'),(474,'MQ','MTQ','Martinique','Martiniquais, Martinican'),(478,'MR','MRT','Mauritania','Mauritanian'),(480,'MU','MUS','Mauritius','Mauritian'),(175,'YT','MYT','Mayotte','Mahoran'),(484,'MX','MEX','Mexico','Mexican'),(583,'FM','FSM','Micronesia (Federated States of)','Micronesian'),(498,'MD','MDA','Moldova (Republic of)','Moldovan'),(492,'MC','MCO','Monaco','Monégasque, Monacan'),(496,'MN','MNG','Mongolia','Mongolian'),(499,'ME','MNE','Montenegro','Montenegrin'),(500,'MS','MSR','Montserrat','Montserratian'),(504,'MA','MAR','Morocco','Moroccan'),(508,'MZ','MOZ','Mozambique','Mozambican'),(104,'MM','MMR','Myanmar','Burmese'),(516,'NA','NAM','Namibia','Namibian'),(520,'NR','NRU','Nauru','Nauruan'),(524,'NP','NPL','Nepal','Nepali, Nepalese'),(528,'NL','NLD','Netherlands','Dutch, Netherlandic'),(540,'NC','NCL','New Caledonia','New Caledonian'),(554,'NZ','NZL','New Zealand','New Zealand, NZ'),(558,'NI','NIC','Nicaragua','Nicaraguan'),(562,'NE','NER','Niger','Nigerien'),(566,'NG','NGA','Nigeria','Nigerian'),(570,'NU','NIU','Niue','Niuean'),(574,'NF','NFK','Norfolk Island','Norfolk Island'),(580,'MP','MNP','Northern Mariana Islands','Northern Marianan'),(578,'NO','NOR','Norway','Norwegian'),(512,'OM','OMN','Oman','Omani'),(586,'PK','PAK','Pakistan','Pakistani'),(585,'PW','PLW','Palau','Palauan'),(275,'PS','PSE','Palestine, State of','Palestinian'),(591,'PA','PAN','Panama','Panamanian'),(598,'PG','PNG','Papua New Guinea','Papua New Guinean, Papuan'),(600,'PY','PRY','Paraguay','Paraguayan'),(604,'PE','PER','Peru','Peruvian'),(608,'PH','PHL','Philippines','Philippine, Filipino'),(612,'PN','PCN','Pitcairn','Pitcairn Island'),(616,'PL','POL','Poland','Polish'),(620,'PT','PRT','Portugal','Portuguese'),(630,'PR','PRI','Puerto Rico','Puerto Rican'),(634,'QA','QAT','Qatar','Qatari'),(638,'RE','REU','Réunion','Réunionese, Réunionnais'),(642,'RO','ROU','Romania','Romanian'),(643,'RU','RUS','Russian Federation','Russian'),(646,'RW','RWA','Rwanda','Rwandan'),(652,'BL','BLM','Saint Barthélemy','Barthélemois'),(654,'SH','SHN','Saint Helena, Ascension and Tristan da Cunha','Saint Helenian'),(659,'KN','KNA','Saint Kitts and Nevis','Kittitian or Nevisian'),(662,'LC','LCA','Saint Lucia','Saint Lucian'),(663,'MF','MAF','Saint Martin (French part)','Saint-Martinoise'),(666,'PM','SPM','Saint Pierre and Miquelon','Saint-Pierrais or Miquelonnais'),(670,'VC','VCT','Saint Vincent and the Grenadines','Saint Vincentian, Vincentian'),(882,'WS','WSM','Samoa','Samoan'),(674,'SM','SMR','San Marino','Sammarinese'),(678,'ST','STP','Sao Tome and Principe','São Toméan'),(682,'SA','SAU','Saudi Arabia','Saudi, Saudi Arabian'),(686,'SN','SEN','Senegal','Senegalese'),(688,'RS','SRB','Serbia','Serbian'),(690,'SC','SYC','Seychelles','Seychellois'),(694,'SL','SLE','Sierra Leone','Sierra Leonean'),(702,'SG','SGP','Singapore','Singaporean'),(534,'SX','SXM','Sint Maarten (Dutch part)','Sint Maarten'),(703,'SK','SVK','Slovakia','Slovak'),(705,'SI','SVN','Slovenia','Slovenian, Slovene'),(90,'SB','SLB','Solomon Islands','Solomon Island'),(706,'SO','SOM','Somalia','Somali, Somalian'),(710,'ZA','ZAF','South Africa','South African'),(239,'GS','SGS','South Georgia and the South Sandwich Islands','South Georgia or South Sandwich Islands'),(728,'SS','SSD','South Sudan','South Sudanese'),(724,'ES','ESP','Spain','Spanish'),(144,'LK','LKA','Sri Lanka','Sri Lankan'),(729,'SD','SDN','Sudan','Sudanese'),(740,'SR','SUR','Suriname','Surinamese'),(744,'SJ','SJM','Svalbard and Jan Mayen','Svalbard'),(748,'SZ','SWZ','Swaziland','Swazi'),(752,'SE','SWE','Sweden','Swedish'),(756,'CH','CHE','Switzerland','Swiss'),(760,'SY','SYR','Syrian Arab Republic','Syrian'),(158,'TW','TWN','Taiwan, Province of China','Chinese, Taiwanese'),(762,'TJ','TJK','Tajikistan','Tajikistani'),(834,'TZ','TZA','Tanzania, United Republic of','Tanzanian'),(764,'TH','THA','Thailand','Thai'),(626,'TL','TLS','Timor-Leste','Timorese'),(768,'TG','TGO','Togo','Togolese'),(772,'TK','TKL','Tokelau','Tokelauan'),(776,'TO','TON','Tonga','Tongan'),(780,'TT','TTO','Trinidad and Tobago','Trinidadian or Tobagonian'),(788,'TN','TUN','Tunisia','Tunisian'),(792,'TR','TUR','Turkey','Turkish'),(795,'TM','TKM','Turkmenistan','Turkmen'),(796,'TC','TCA','Turks and Caicos Islands','Turks and Caicos Island'),(798,'TV','TUV','Tuvalu','Tuvaluan'),(800,'UG','UGA','Uganda','Ugandan'),(804,'UA','UKR','Ukraine','Ukrainian'),(784,'AE','ARE','United Arab Emirates','Emirati, Emirian, Emiri'),(826,'GB','GBR','United Kingdom of Great Britain and Northern Ireland','British, UK'),(581,'UM','UMI','United States Minor Outlying Islands','American'),(840,'US','USA','United States of America','American'),(858,'UY','URY','Uruguay','Uruguayan'),(860,'UZ','UZB','Uzbekistan','Uzbekistani, Uzbek'),(548,'VU','VUT','Vanuatu','Ni-Vanuatu, Vanuatuan'),(862,'VE','VEN','Venezuela (Bolivarian Republic of)','Venezuelan'),(704,'VN','VNM','Vietnam','Vietnamese'),(92,'VG','VGB','Virgin Islands (British)','British Virgin Island'),(850,'VI','VIR','Virgin Islands (U.S.)','U.S. Virgin Island'),(876,'WF','WLF','Wallis and Futuna','Wallis and Futuna, Wallisian or Futunan'),(732,'EH','ESH','Western Sahara','Sahrawi, Sahrawian, Sahraouian'),(887,'YE','YEM','Yemen','Yemeni'),(894,'ZM','ZMB','Zambia','Zambian'),(716,'ZW','ZWE','Zimbabwe','Zimbabwean');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exception_day`
--

DROP TABLE IF EXISTS `exception_day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exception_day` (
  `day_id` int(11) NOT NULL AUTO_INCREMENT,
  `day_name` varchar(45) DEFAULT NULL,
  `day_exception` int(11) DEFAULT '0',
  `day_ac_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`day_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exception_day`
--

LOCK TABLES `exception_day` WRITE;
/*!40000 ALTER TABLE `exception_day` DISABLE KEYS */;
INSERT INTO `exception_day` VALUES (1,'Sat',1,'Saturday'),(2,'Sun',1,'Sunday'),(3,'Mon',0,'Monday'),(4,'Tus',0,'Tuesday'),(5,'Wed',0,'Wednesday'),(6,'Thr',0,'Thursday'),(7,'Fri',0,'Friday');
/*!40000 ALTER TABLE `exception_day` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `execuse_condithion`
--

DROP TABLE IF EXISTS `execuse_condithion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `execuse_condithion` (
  `execuse_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` int(11) DEFAULT '0',
  `bootcamp_id` int(11) DEFAULT NULL,
  `execuse_date` varchar(50) DEFAULT NULL,
  `execuse_reason` varchar(600) DEFAULT NULL,
  `slack_message` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`execuse_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `execuse_condithion`
--

LOCK TABLES `execuse_condithion` WRITE;
/*!40000 ALTER TABLE `execuse_condithion` DISABLE KEYS */;
INSERT INTO `execuse_condithion` VALUES (21,48,1,'2017-12-18','',NULL),(22,48,1,'2018-01-11','',NULL),(23,47,1,'2018-01-11','',NULL),(24,32,1,'2018-01-26','',NULL),(25,31,1,'2018-01-26','',NULL);
/*!40000 ALTER TABLE `execuse_condithion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `password` varchar(400) DEFAULT NULL,
  `user_cancel` int(11) DEFAULT '0',
  `user_priv` int(11) DEFAULT '0',
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'Ted','boulus73@gmail.com','sha1$04237032$1$1d7dec49d00afac4572ebae8eea738c9131b7cee',0,0);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sign_in_tabel`
--

DROP TABLE IF EXISTS `sign_in_tabel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sign_in_tabel` (
  `sign_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` int(11) DEFAULT '0',
  `bootcamp_id` int(11) DEFAULT '0',
  `card_id` varchar(100) DEFAULT NULL,
  `sign_in_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `sign_alarm` int(11) DEFAULT '0',
  `check_message` varchar(400) DEFAULT NULL,
  `sent_slack` int(11) DEFAULT '0',
  `stu_name` varchar(250) DEFAULT NULL,
  `stu_photo_name` varchar(150) DEFAULT NULL,
  `abs_id` int(11) DEFAULT '0',
  PRIMARY KEY (`sign_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2411 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sign_in_tabel`
--

LOCK TABLES `sign_in_tabel` WRITE;
/*!40000 ALTER TABLE `sign_in_tabel` DISABLE KEYS */;
INSERT INTO `sign_in_tabel` VALUES (2076,36,1,'19409147','2018-01-24 08:03:38',1,'Notice Esso : You are in cool down period ... *** Restart Network Notification *** ',1,'Esso','12.jpg',0),(2077,37,1,'13','2018-01-24 12:03:38',1,'Notice Jisson : You are in cool down period ... *** Restart Network Notification *** ',1,'Jisson','13.jpg',0),(2078,38,1,'14','2018-01-24 08:03:38',1,'Notice Mariene : You are in cool down period ... *** Restart Network Notification *** ',1,'Mariene','14.jpg',0),(2079,39,1,'15','2018-01-24 08:03:38',1,'Notice Waael : You are in cool down period ... *** Restart Network Notification *** ',1,'Waael','15.jpg',0),(2080,40,1,'16','2018-01-24 12:03:38',1,'Notice Peter : You are in cool down period ... *** Restart Network Notification *** ',1,'Peter','16.jpg',0),(2082,43,1,'19','2018-01-24 12:03:38',1,'Notice Thomas : You are in cool down period ... *** Restart Network Notification *** ',1,'Thomas','johannes-unterstein-foto.1024x1024.jpg',0),(2083,44,1,'20','2018-01-24 08:03:39',1,'Notice Shrief : You are in cool down period ... *** Restart Network Notification *** ',1,'Shrief','20.jpg',0),(2084,45,1,'21','2018-01-24 08:03:39',1,'Notice Fadi : You are in cool down period ... *** Restart Network Notification *** ',1,'Fadi','21.jpg',0),(2085,46,1,'25','2018-01-24 08:03:39',1,'Notice Samer : You are in cool down period ... *** Restart Network Notification *** ',1,'Samer','coprofilepic1_3267.gif',0),(2088,48,1,'24','2018-01-24 08:04:03',1,'Notice Alexander Adley : You are in cool down period ... *** Restart Network Notification *** ',1,'Alexander Adley','24.jpg',0),(2089,1,1,'12','2018-01-24 12:04:22',1,'Notice Irene : You are in cool down period ... *** Restart Network Notification *** ',1,'Irene','4.jpg',0),(2090,41,1,'17','2018-01-24 12:06:06',1,'Notice Wilson : You are in cool down period ... *** Restart Network Notification *** ',1,'Wilson','rjones.jpg',0),(2091,39,1,'15','2018-01-25 08:58:53',0,'Welcome Waael , Happy coding',0,'Waael','15.jpg',0),(2092,38,1,'14','2018-01-25 08:58:58',0,'Welcome Mariene , Happy coding',0,'Mariene','14.jpg',0),(2093,37,1,'13','2018-01-25 08:59:01',0,'Welcome Jisson , Happy coding',0,'Jisson','13.jpg',0),(2094,1,1,'12','2018-01-25 08:59:04',0,'Welcome Irene , Happy coding',0,'Irene','4.jpg',0),(2095,2,1,'11','2018-01-25 09:00:30',2,'Notice Micheal Boulus : Please wash dishes ... *** Restart Network Notification *** ',1,'Micheal Boulus','3.jpg',0),(2096,28,1,'333','2018-01-25 09:30:01',2,'Notice Shariel : Please wash dishes ... *** Restart Network Notification *** ',1,'Shariel','5.jpg',1),(2097,29,1,'44','2018-01-25 09:30:01',2,'Notice Sharokh : Please wash dishes ... *** Restart Network Notification *** ',1,'Sharokh','10.jpg',1),(2098,30,1,'77','2018-01-25 09:30:01',2,'Notice Shrieal : Please wash dishes ... *** Restart Network Notification *** ',1,'Shrieal','6.jpg',1),(2099,31,1,'26','2018-01-25 09:30:01',2,'Notice Ted : Please wash dishes ... *** Restart Network Notification *** ',1,'Ted','9.jpg',1),(2100,32,1,'88','2018-01-25 09:30:01',2,'Notice Sadek : Please wash dishes ... *** Restart Network Notification *** ',1,'Sadek','2.jpg',1),(2101,33,1,'66','2018-01-25 09:30:01',2,'Notice Mahmoud : Please wash dishes ... *** Restart Network Notification *** ',1,'Mahmoud','1.jpg',1),(2102,34,1,'99','2018-01-25 09:30:01',2,'Notice Fred : Please wash dishes ... *** Restart Network Notification *** ',1,'Fred','7.jpg',1),(2103,35,1,'00','2018-01-25 09:30:01',2,'Notice Telma : Please wash dishes ... *** Restart Network Notification *** ',1,'Telma','8.jpg',1),(2104,36,1,'19409147','2018-01-25 09:30:01',2,'Notice Esso : Please wash dishes ... *** Restart Network Notification *** ',1,'Esso','12.jpg',1),(2108,43,1,'19','2018-01-25 08:30:01',2,'Notice Thomas : Please wash dishes ... *** Restart Network Notification *** ',1,'Thomas','johannes-unterstein-foto.1024x1024.jpg',1),(2109,44,1,'20','2018-01-25 09:30:01',2,'Notice Shrief : Please wash dishes ... *** Restart Network Notification *** ',1,'Shrief','20.jpg',1),(2110,45,1,'21','2018-01-25 09:30:01',2,'Notice Fadi : Please wash dishes ... *** Restart Network Notification *** ',1,'Fadi','21.jpg',1),(2113,60,1,'','2018-01-25 09:30:01',2,'Notice Reachard : Please wash dishes ... *** Restart Network Notification *** ',1,'Reachard','undefined',1),(2114,41,1,'17','2018-01-25 09:31:49',2,'Notice Wilson : Please wash dishes ... *** Restart Network Notification *** ',1,'Wilson','rjones.jpg',0),(2117,46,1,'25','2018-01-25 09:35:51',2,'Notice Samer : Please wash dishes ... *** Restart Network Notification *** ',1,'Samer','coprofilepic1_3267.gif',1),(2119,61,1,'27','2018-01-25 09:36:12',1,'Notice Ramy : You are in cool down period ... *** Restart Network Notification *** ',1,'Ramy','undefined',0),(2120,48,1,'24','2018-01-25 09:36:24',2,'Notice Alexander Adley : Please wash dishes ... *** Restart Network Notification *** ',1,'Alexander Adley','24.jpg',0),(2121,42,1,'18','2018-01-25 09:36:29',2,'Notice Bill Gates : Please wash dishes ... *** Restart Network Notification *** ',1,'Bill Gates','18.jpg',0),(2122,40,1,'16','2018-01-25 09:43:18',2,'Notice Peter : Please wash dishes ... *** Restart Network Notification *** ',1,'Peter','16.jpg',0),(2123,39,1,'15','2018-01-26 08:59:39',0,'Welcome Waael , Happy coding',0,'Waael','15.jpg',0),(2124,1,1,'12','2018-01-26 08:59:46',0,'Welcome Irene , Happy coding',0,'Irene','4.jpg',0),(2125,2,1,'11','2018-01-26 08:59:53',0,'Welcome Micheal , Happy coding',0,'Micheal Boulus','3.jpg',0),(2126,42,1,'18','2018-01-26 09:02:20',3,'Notice Bill Gates : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Bill Gates','18.jpg',0),(2127,46,1,'25','2018-01-26 09:04:04',3,'Notice Samer : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Samer','coprofilepic1_3267.gif',0),(2133,33,1,'66','2018-01-26 09:05:04',3,'Notice Mahmoud : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Mahmoud','1.jpg',0),(2134,34,1,'99','2018-01-26 09:05:05',3,'Notice Fred : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Fred','7.jpg',0),(2135,35,1,'00','2018-01-26 09:05:05',3,'Notice Telma : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Telma','8.jpg',0),(2136,36,1,'19409147','2018-01-26 09:05:05',3,'Notice Esso : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Esso','12.jpg',0),(2137,37,1,'13','2018-01-26 09:05:05',2,'Notice Jisson : Please wash dishes ... *** Restart Network Notification *** ',1,'Jisson','13.jpg',0),(2138,38,1,'14','2018-01-26 09:05:05',2,'Notice Mariene : Please wash dishes ... *** Restart Network Notification *** ',1,'Mariene','14.jpg',0),(2139,40,1,'16','2018-01-26 09:05:05',3,'Notice Peter : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Peter','16.jpg',0),(2140,41,1,'17','2018-01-26 08:05:05',3,'Notice Wilson : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Wilson','rjones.jpg',0),(2141,43,1,'19','2018-01-26 08:05:05',3,'Notice Thomas : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Thomas','johannes-unterstein-foto.1024x1024.jpg',0),(2142,44,1,'20','2018-01-26 08:05:05',3,'Notice Shrief : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Shrief','20.jpg',0),(2143,45,1,'21','2018-01-26 08:05:05',3,'Notice Fadi : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Fadi','21.jpg',0),(2144,48,1,'24','2018-01-26 09:05:05',3,'Notice Alexander Adley : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Alexander Adley','24.jpg',0),(2145,60,1,'','2018-01-26 09:05:05',3,'Notice Reachard : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Reachard','undefined',0),(2146,61,1,'27','2018-01-26 09:05:05',2,'Notice Ramy : Please wash dishes ... *** Restart Network Notification *** ',1,'Ramy','undefined',0),(2169,61,1,'27','2018-01-24 13:58:46',3,'Notice Ramy : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Ramy','undefined',1),(2172,2,1,'11','2018-01-20 08:17:25',0,'Welcome Micheal , Happy coding',0,'Micheal Boulus','3.jpg',0),(2173,1,1,'12','2018-01-20 08:17:30',0,'Welcome Irene , Happy coding',0,'Irene','4.jpg',0),(2174,37,1,'13','2018-01-20 08:17:33',0,'Welcome Jisson , Happy coding',0,'Jisson','13.jpg',0),(2175,38,1,'14','2018-01-20 08:17:36',0,'Welcome Mariene , Happy coding',0,'Mariene','14.jpg',0),(2176,39,1,'15','2018-01-20 08:17:38',0,'Welcome Waael , Happy coding',0,'Waael','15.jpg',0),(2177,42,1,'18','2018-01-20 08:17:40',0,'Welcome Bill , Happy coding',0,'Bill Gates','18.jpg',0),(2178,45,1,'21','2018-01-20 08:17:44',0,'Welcome Fadi , Happy coding',0,'Fadi','21.jpg',0),(2179,48,1,'24','2018-01-20 08:17:49',0,'Welcome Alexander , Happy coding',0,'Alexander Adley','24.jpg',0),(2180,46,1,'25','2018-01-20 08:17:50',0,'Welcome Samer , Happy coding',0,'Samer','coprofilepic1_3267.gif',0),(2181,29,1,'44','2018-01-20 08:17:57',0,'Welcome Sharokh , Happy coding',0,'Sharokh','10.jpg',0),(2182,40,1,'16','2018-01-20 08:18:00',0,'Welcome Peter , Happy coding',0,'Peter','16.jpg',0),(2183,41,1,'17','2018-01-20 08:18:03',0,'Welcome Wilson , Happy coding',0,'Wilson','rjones.jpg',0),(2184,28,1,'33','2018-01-20 09:31:46',2,'Notice Shariel : Please wash dishes ... *** Restart Network Notification *** ',1,'Shariel','5.jpg',1),(2185,30,1,'77','2018-01-20 09:31:46',2,'Notice Shrieal : Please wash dishes ... *** Restart Network Notification *** ',1,'Shrieal','6.jpg',1),(2186,31,1,'26','2018-01-20 09:31:46',2,'Notice Ted : Please wash dishes ... *** Restart Network Notification *** ',1,'Ted','9.jpg',1),(2187,32,1,'88','2018-01-20 09:31:46',2,'Notice Sadek : Please wash dishes ... *** Restart Network Notification *** ',1,'Sadek','2.jpg',1),(2188,33,1,'66','2018-01-20 09:31:46',3,'Notice Mahmoud : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Mahmoud','1.jpg',1),(2189,34,1,'99','2018-01-20 09:31:46',3,'Notice Fred : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Fred','7.jpg',1),(2190,35,1,'00','2018-01-20 09:31:46',3,'Notice Telma : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Telma','8.jpg',0),(2191,36,1,'19409147','2018-01-20 09:31:46',3,'Notice Esso : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Esso','12.jpg',0),(2192,43,1,'19','2018-01-20 09:31:46',3,'Notice Thomas : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Thomas','johannes-unterstein-foto.1024x1024.jpg',0),(2193,44,1,'20','2018-01-20 09:31:46',3,'Notice Shrief : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Shrief','20.jpg',0),(2194,60,1,'','2018-01-20 09:31:46',3,'Notice Reachard : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Reachard','undefined',0),(2195,61,1,'27','2018-01-20 09:31:46',3,'Notice Ramy : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Ramy','undefined',0),(2196,39,1,'15','2018-01-22 08:33:10',0,'Welcome Waael , Happy coding',0,'Waael','15.jpg',0),(2197,38,1,'14','2018-01-22 08:33:12',0,'Welcome Mariene , Happy coding',0,'Mariene','14.jpg',0),(2198,1,1,'12','2018-01-22 08:33:15',0,'Welcome Irene , Happy coding',0,'Irene','4.jpg',0),(2199,37,1,'13','2018-01-22 08:33:17',0,'Welcome Jisson , Happy coding',0,'Jisson','13.jpg',0),(2200,41,1,'17','2018-01-22 08:33:19',0,'Welcome Wilson , Happy coding',0,'Wilson','rjones.jpg',0),(2201,42,1,'18','2018-01-22 08:33:21',0,'Welcome Bill , Happy coding',0,'Bill Gates','18.jpg',0),(2202,43,1,'19','2018-01-22 08:33:23',0,'Welcome Thomas , Happy coding',0,'Thomas','johannes-unterstein-foto.1024x1024.jpg',0),(2203,45,1,'21','2018-01-22 08:33:25',0,'Welcome Fadi , Happy coding',0,'Fadi','21.jpg',0),(2204,46,1,'25','2018-01-22 08:33:31',0,'Welcome Samer , Happy coding',0,'Samer','coprofilepic1_3267.gif',0),(2205,33,1,'66','2018-01-22 08:33:41',0,'Welcome Mahmoud , Happy coding',0,'Mahmoud','1.jpg',0),(2206,30,1,'77','2018-01-22 08:33:43',0,'Welcome Shrieal , Happy coding',0,'Shrieal','6.jpg',0),(2207,32,1,'88','2018-01-22 08:33:46',0,'Welcome Sadek , Happy coding',0,'Sadek','2.jpg',0),(2208,2,1,'11','2018-01-22 09:29:13',1,'Notice Micheal Boulus : You are in cool down period ... *** Restart Network Notification *** ',1,'Micheal Boulus','3.jpg',0),(2209,48,1,'24','2018-01-22 09:29:43',2,'Notice Alexander Adley : Please wash dishes ... *** Restart Network Notification *** ',1,'Alexander Adley','24.jpg',0),(2210,28,1,'33','2018-01-22 09:30:44',3,'Notice Shariel : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Shariel','5.jpg',1),(2211,29,1,'44','2018-01-22 09:30:44',2,'Notice Sharokh : Please wash dishes ... *** Restart Network Notification *** ',1,'Sharokh','10.jpg',1),(2212,31,1,'26','2018-01-22 09:30:44',3,'Notice Ted : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Ted','9.jpg',1),(2213,34,1,'99','2018-01-22 09:30:44',3,'Notice Fred : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Fred','7.jpg',1),(2214,35,1,'00','2018-01-22 09:30:44',3,'Notice Telma : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Telma','8.jpg',1),(2215,36,1,'19409147','2018-01-22 09:30:44',3,'Notice Esso : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Esso','12.jpg',1),(2216,40,1,'16','2018-01-22 09:30:44',2,'Notice Peter : Please wash dishes ... *** Restart Network Notification *** ',1,'Peter','16.jpg',1),(2217,44,1,'20','2018-01-22 09:30:44',3,'Notice Shrief : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Shrief','20.jpg',1),(2218,60,1,'','2018-01-22 09:30:44',3,'Notice Reachard : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Reachard','undefined',1),(2219,61,1,'27','2018-01-22 09:30:44',3,'Notice Ramy : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Ramy','undefined',1),(2220,39,1,'15','2018-01-23 08:31:44',0,'Welcome Waael , Happy coding',0,'Waael','15.jpg',0),(2221,1,1,'12','2018-01-23 08:31:46',0,'Welcome Irene , Happy coding',0,'Irene','4.jpg',0),(2222,2,1,'11','2018-01-23 08:31:49',0,'Welcome Micheal , Happy coding',0,'Micheal Boulus','3.jpg',0),(2223,38,1,'14','2018-01-23 08:31:50',0,'Welcome Mariene , Happy coding',0,'Mariene','14.jpg',0),(2224,37,1,'13','2018-01-23 08:31:52',0,'Welcome Jisson , Happy coding',0,'Jisson','13.jpg',0),(2225,42,1,'18','2018-01-23 08:31:54',0,'Welcome Bill , Happy coding',0,'Bill Gates','18.jpg',0),(2226,46,1,'25','2018-01-23 08:31:59',0,'Welcome Samer , Happy coding',0,'Samer','coprofilepic1_3267.gif',0),(2227,48,1,'24','2018-01-23 08:32:02',0,'Welcome Alexander , Happy coding',0,'Alexander Adley','24.jpg',0),(2228,45,1,'21','2018-01-23 08:32:08',0,'Welcome Fadi , Happy coding',0,'Fadi','21.jpg',0),(2229,33,1,'66','2018-01-23 08:32:14',0,'Welcome Mahmoud , Happy coding',0,'Mahmoud','1.jpg',0),(2230,29,1,'44','2018-01-23 08:32:17',0,'Welcome Sharokh , Happy coding',0,'Sharokh','10.jpg',0),(2231,30,1,'77','2018-01-23 08:32:20',0,'Welcome Shrieal , Happy coding',0,'Shrieal','6.jpg',0),(2232,35,1,'00','2018-01-23 08:32:28',0,'Welcome Telma , Happy coding',0,'Telma','8.jpg',0),(2233,41,1,'17','2018-01-23 08:32:40',0,'Welcome Wilson , Happy coding',0,'Wilson','rjones.jpg',0),(2234,28,1,'33','2018-01-23 09:33:17',3,'Notice Shariel : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Shariel','5.jpg',1),(2235,31,1,'26','2018-01-23 09:33:17',3,'Notice Ted : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Ted','9.jpg',1),(2236,32,1,'88','2018-01-23 09:33:17',2,'Notice Sadek : Please wash dishes ... *** Restart Network Notification *** ',1,'Sadek','2.jpg',0),(2237,34,1,'99','2018-01-23 09:33:17',3,'Notice Fred : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Fred','7.jpg',0),(2238,36,1,'19409147','2018-01-23 09:33:17',3,'Notice Esso : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Esso','12.jpg',0),(2239,40,1,'16','2018-01-23 09:33:17',2,'Notice Peter : Please wash dishes ... *** Restart Network Notification *** ',1,'Peter','16.jpg',0),(2240,43,1,'19','2018-01-23 09:33:17',2,'Notice Thomas : Please wash dishes ... *** Restart Network Notification *** ',1,'Thomas','johannes-unterstein-foto.1024x1024.jpg',0),(2241,44,1,'20','2018-01-23 09:33:17',3,'Notice Shrief : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Shrief','20.jpg',1),(2242,60,1,'','2018-01-23 09:33:17',3,'Notice Reachard : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Reachard','undefined',1),(2243,61,1,'27','2018-01-23 09:33:17',3,'Notice Ramy : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Ramy','undefined',1),(2245,28,1,'33','2018-01-24 15:07:58',3,'Notice Shariel : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Shariel','5.jpg',1),(2246,29,1,'44','2018-01-24 15:07:58',2,'Notice Sharokh : Please wash dishes ... *** Restart Network Notification *** ',1,'Sharokh','10.jpg',1),(2247,30,1,'77','2018-01-24 15:07:58',1,'Notice Shrieal : You are in cool down period ... *** Restart Network Notification *** ',1,'Shrieal','6.jpg',1),(2248,31,1,'26','2018-01-24 15:07:58',3,'Notice Ted : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Ted','9.jpg',1),(2249,32,1,'88','2018-01-24 15:07:58',2,'Notice Sadek : Please wash dishes ... *** Restart Network Notification *** ',1,'Sadek','2.jpg',1),(2250,33,1,'66','2018-01-24 15:07:58',1,'Notice Mahmoud : You are in cool down period ... *** Restart Network Notification *** ',1,'Mahmoud','1.jpg',1),(2251,34,1,'99','2018-01-24 15:07:58',3,'Notice Fred : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Fred','7.jpg',1),(2252,35,1,'00','2018-01-24 15:07:58',2,'Notice Telma : Please wash dishes ... *** Restart Network Notification *** ',1,'Telma','8.jpg',1),(2253,42,1,'18','2018-01-24 15:07:58',1,'Notice Bill Gates : You are in cool down period ... *** Restart Network Notification *** ',1,'Bill Gates','18.jpg',1),(2254,60,1,'','2018-01-24 15:07:58',3,'Notice Reachard : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Reachard','undefined',1),(2255,2,1,'11','2018-01-24 16:04:26',2,'Notice Micheal Boulus : Please wash dishes ... *** Restart Network Notification *** ',1,'Micheal Boulus','3.jpg',0),(2256,28,1,'33','2018-01-26 22:36:54',3,'Notice Shariel : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Shariel','5.jpg',1),(2257,29,1,'44','2018-01-26 22:36:54',2,'Notice Sharokh : Please wash dishes ... *** Restart Network Notification *** ',1,'Sharokh','10.jpg',1),(2258,30,1,'77','2018-01-26 22:36:54',2,'Notice Shrieal : Please wash dishes ... *** Restart Network Notification *** ',1,'Shrieal','6.jpg',1),(2282,28,1,'33','2018-01-27 00:00:23',0,'Welcome Shariel , Happy coding',0,'Shariel','5.jpg',0),(2283,1,1,'12','2018-02-01 19:05:55',1,'Notice Irene : You are in cool down period ... *** Restart Network Notification *** ',1,'Irene','4.jpg',1),(2284,2,1,'11','2018-02-01 19:05:55',2,'Notice Micheal Boulus : Please wash dishes ... *** Restart Network Notification *** ',1,'Micheal Boulus','3.jpg',1),(2285,28,1,'33','2018-02-01 19:05:55',2,'Notice Shariel : Please wash dishes ... *** Restart Network Notification *** ',1,'Shariel','5.jpg',1),(2286,29,1,'44','2018-02-01 19:05:55',3,'Notice Sharokh : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Sharokh','10.jpg',1),(2287,30,1,'77','2018-02-01 19:05:55',3,'Notice Shrieal : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Shrieal','6.jpg',1),(2288,31,1,'26','2018-02-01 19:05:55',3,'Notice Ted : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Ted','9.jpg',1),(2289,32,1,'88','2018-02-01 19:05:55',3,'Notice Sadek : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Sadek','2.jpg',1),(2290,33,1,'66','2018-02-01 19:05:55',2,'Notice Mahmoud : Please wash dishes ... *** Restart Network Notification *** ',1,'Mahmoud','1.jpg',1),(2291,34,1,'99','2018-02-01 19:05:55',3,'Notice Fred : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Fred','7.jpg',1),(2292,35,1,'00','2018-02-01 19:05:55',2,'Notice Telma : Please wash dishes ... *** Restart Network Notification *** ',1,'Telma','8.jpg',1),(2293,36,1,'19409147','2018-02-01 19:05:55',3,'Notice Esso : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Esso','12.jpg',1),(2294,37,1,'13','2018-02-01 19:05:55',1,'Notice Jisson : You are in cool down period ... *** Restart Network Notification *** ',1,'Jisson','13.jpg',1),(2295,38,1,'14','2018-02-01 19:05:55',1,'Notice Mariene : You are in cool down period ... *** Restart Network Notification *** ',1,'Mariene','14.jpg',1),(2296,39,1,'15','2018-02-01 19:05:55',1,'Notice Waael : You are in cool down period ... *** Restart Network Notification *** ',1,'Waael','15.jpg',1),(2297,40,1,'16','2018-02-01 19:05:55',3,'Notice Peter : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Peter','16.jpg',1),(2304,48,1,'24','2018-02-01 19:05:55',2,'Notice Alexander Adley : Please wash dishes ... *** Restart Network Notification *** ',1,'Alexander Adley','24.jpg',1),(2305,60,1,'','2018-02-01 19:05:56',3,'Notice Reachard : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Reachard','undefined',1),(2306,61,1,'27','2018-02-01 19:05:56',3,'Notice Ramy : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Ramy','undefined',1),(2355,28,1,'33','2018-02-02 11:46:10',2,'Notice Shariel : Please wash dishes ... *** Restart Network Notification *** ',1,'Shariel','5.jpg',0),(2356,39,1,'15','2018-02-03 11:47:59',2,'Notice Waael : Please wash dishes ... *** Restart Network Notification *** ',1,'Waael','15.jpg',0),(2357,38,1,'14','2018-02-03 11:48:31',2,'Notice Mariene : Please wash dishes ... *** Restart Network Notification *** ',1,'Mariene','14.jpg',0),(2358,40,1,'16','2018-02-03 11:48:49',3,'Notice Peter : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Peter','16.jpg',0),(2360,2,1,'11','2018-02-03 11:50:58',3,'Notice Micheal Boulus : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Micheal Boulus','3.jpg',1),(2363,30,1,'77','2018-02-03 11:50:58',3,'Notice Shrieal : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Shrieal','6.jpg',1),(2364,31,1,'26','2018-02-03 11:50:58',3,'Notice Ted : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Ted','9.jpg',1),(2365,32,1,'88','2018-02-03 11:50:58',3,'Notice Sadek : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Sadek','2.jpg',1),(2366,33,1,'66','2018-02-03 11:50:58',3,'Notice Mahmoud : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Mahmoud','1.jpg',1),(2367,34,1,'99','2018-02-03 11:50:58',3,'Notice Fred : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Fred','7.jpg',1),(2368,35,1,'00','2018-02-03 11:50:58',3,'Notice Telma : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Telma','8.jpg',1),(2369,36,1,'19409147','2018-02-03 11:50:58',3,'Notice Esso : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Esso','12.jpg',1),(2370,37,1,'13','2018-02-03 11:50:58',2,'Notice Jisson : Please wash dishes ... *** Restart Network Notification *** ',1,'Jisson','13.jpg',1),(2372,42,1,'18','2018-02-03 11:50:58',2,'Notice Bill Gates : Please wash dishes ... *** Restart Network Notification *** ',1,'Bill Gates','18.jpg',1),(2373,43,1,'19','2018-02-03 11:50:58',2,'Notice Thomas : Please wash dishes ... *** Restart Network Notification *** ',1,'Thomas','johannes-unterstein-foto.1024x1024.jpg',1),(2374,44,1,'20','2018-02-03 11:50:58',3,'Notice Shrief : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Shrief','20.jpg',1),(2375,45,1,'21','2018-02-03 11:50:58',1,'Notice Fadi : You are in cool down period ... *** Restart Network Notification *** ',1,'Fadi','21.jpg',1),(2376,46,1,'25','2018-02-03 11:50:58',1,'Notice Samer : You are in cool down period ... *** Restart Network Notification *** ',1,'Samer','coprofilepic1_3267.gif',1),(2379,61,1,'27','2018-02-03 11:50:58',3,'Notice Ramy : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Ramy','undefined',1),(2382,1,1,'12','2018-02-02 12:24:07',3,'Notice Irene : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Irene','4.jpg',1),(2383,2,1,'11','2018-02-02 12:24:07',3,'Notice Micheal Boulus : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Micheal Boulus','3.jpg',1),(2384,29,1,'44','2018-02-02 12:24:07',3,'Notice Sharokh : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Sharokh','10.jpg',1),(2385,30,1,'77','2018-02-02 12:24:07',3,'Notice Shrieal : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Shrieal','6.jpg',1),(2386,31,1,'26','2018-02-02 12:24:07',3,'Notice Ted : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Ted','9.jpg',1),(2387,32,1,'88','2018-02-02 12:24:07',3,'Notice Sadek : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Sadek','2.jpg',1),(2388,33,1,'66','2018-02-02 12:24:07',3,'Notice Mahmoud : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Mahmoud','1.jpg',1),(2389,34,1,'99','2018-02-02 12:24:07',3,'Notice Fred : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Fred','7.jpg',1),(2390,35,1,'00','2018-02-02 12:24:07',3,'Notice Telma : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Telma','8.jpg',1),(2391,36,1,'19409147','2018-02-02 12:24:07',3,'Notice Esso : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Esso','12.jpg',1),(2392,37,1,'13','2018-02-02 12:24:07',3,'Notice Jisson : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Jisson','13.jpg',1),(2393,38,1,'14','2018-02-02 12:24:07',3,'Notice Mariene : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Mariene','14.jpg',1),(2394,39,1,'15','2018-02-02 12:24:07',3,'Notice Waael : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Waael','15.jpg',1),(2395,40,1,'16','2018-02-02 12:24:07',3,'Notice Peter : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Peter','16.jpg',1),(2396,41,1,'17','2018-02-02 12:24:07',2,'Notice Wilson : Please wash dishes ... *** Restart Network Notification *** ',1,'Wilson','rjones.jpg',1),(2397,42,1,'18','2018-02-02 12:24:07',3,'Notice Bill Gates : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Bill Gates','18.jpg',1),(2398,43,1,'19','2018-02-02 12:24:07',3,'Notice Thomas : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Thomas','johannes-unterstein-foto.1024x1024.jpg',1),(2399,44,1,'20','2018-02-02 12:24:07',3,'Notice Shrief : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Shrief','20.jpg',1),(2400,45,1,'21','2018-02-02 12:24:07',2,'Notice Fadi : Please wash dishes ... *** Restart Network Notification *** ',1,'Fadi','21.jpg',1),(2401,46,1,'25','2018-02-02 12:24:07',2,'Notice Samer : Please wash dishes ... *** Restart Network Notification *** ',1,'Samer','coprofilepic1_3267.gif',1),(2402,48,1,'24','2018-02-02 12:24:07',3,'Notice Alexander Adley : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Alexander Adley','24.jpg',1),(2403,60,1,'','2018-02-02 12:24:07',3,'Notice Reachard : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Reachard','undefined',1),(2404,61,1,'27','2018-02-02 12:24:07',3,'Notice Ramy : Sorry to tell you that you are now out from the program ... *** Restart Network Notification *** ',1,'Ramy','undefined',1),(2405,28,1,'33','2018-02-03 00:42:30',0,'Welcome Shariel , Happy coding',0,'Shariel','5.jpg',0),(2406,29,1,'44','2018-02-03 00:42:37',0,'Welcome Sharokh , Happy coding',0,'Sharokh','10.jpg',0),(2407,60,1,'','2018-02-03 00:42:52',0,'Welcome Reachard , Happy coding',0,'Reachard','undefined',0),(2408,48,1,'24','2018-02-03 00:43:02',0,'Welcome Alexander , Happy coding',0,'Alexander Adley','24.jpg',0),(2409,1,1,'12','2018-02-03 00:44:38',0,'Welcome Irene , Happy coding',0,'Irene','4.jpg',0),(2410,41,1,'17','2018-02-03 00:45:16',0,'Welcome Wilson , Happy coding',0,'Wilson','rjones.jpg',0);
/*!40000 ALTER TABLE `sign_in_tabel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'checking_system'
--

--
-- Dumping routines for database 'checking_system'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-11 21:55:20
