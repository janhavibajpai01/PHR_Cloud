-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.45-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema phr_cloud
--

CREATE DATABASE IF NOT EXISTS phr_cloud;
USE phr_cloud;

--
-- Definition of table `actuary_reg`
--

DROP TABLE IF EXISTS `actuary_reg`;
CREATE TABLE `actuary_reg` (
  `username` varchar(45) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `designation` varchar(45) NOT NULL DEFAULT '',
  `password` varchar(45) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `mail` varchar(45) NOT NULL DEFAULT '',
  `phoneno` varchar(45) NOT NULL DEFAULT '',
  `token_` varchar(45) NOT NULL DEFAULT '',
  `activate` varchar(45) NOT NULL DEFAULT '',
  `count_` varchar(45) NOT NULL DEFAULT '',
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `actuary_reg`
--

/*!40000 ALTER TABLE `actuary_reg` DISABLE KEYS */;
INSERT INTO `actuary_reg` (`username`,`designation`,`password`,`mail`,`phoneno`,`token_`,`activate`,`count_`,`status`) VALUES 
 (0x41736877696E69,'Doctor',0x41736877696E69313233,'ashwini.phoenixzone@gmail.com','9807654567','-1356285211','yes','0',NULL),
 (0x4B726973686E61,'Relatives',0x4B726973686E61313233,'krishna.phoenixzone@gmail.com','9087654321','530803595','no','1',NULL),
 (0x4D6179757269,'Actuary',0x4D6179757269313233,'mayuri.phoenixzone@gmail.com','9087654321','1127940314','yes','0',NULL),
 (0x536F6E61,'Hospital Staff',0x536F6E61313233,'sona@gmail.com','7890654321','-1387569316','yes','0',NULL);
/*!40000 ALTER TABLE `actuary_reg` ENABLE KEYS */;


--
-- Definition of table `downloads`
--

DROP TABLE IF EXISTS `downloads`;
CREATE TABLE `downloads` (
  `iddownloads` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(45) NOT NULL DEFAULT '',
  `username` varchar(45) NOT NULL DEFAULT '',
  `time` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`iddownloads`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `downloads`
--

/*!40000 ALTER TABLE `downloads` DISABLE KEYS */;
INSERT INTO `downloads` (`iddownloads`,`filename`,`username`,`time`) VALUES 
 (55,'Mayuri.pdf','Mayuri','2018/04/19 17:44:01'),
 (56,'Sona.pdf','Jyoti','2018/04/19 17:45:42');
/*!40000 ALTER TABLE `downloads` ENABLE KEYS */;


--
-- Definition of table `filedetails`
--

DROP TABLE IF EXISTS `filedetails`;
CREATE TABLE `filedetails` (
  `uid` varchar(45) DEFAULT NULL,
  `filename` varchar(45) DEFAULT NULL,
  `operationname` varchar(45) DEFAULT NULL,
  `starttime` varchar(45) DEFAULT NULL,
  `endtime` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `filedetails`
--

/*!40000 ALTER TABLE `filedetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `filedetails` ENABLE KEYS */;


--
-- Definition of table `files`
--

DROP TABLE IF EXISTS `files`;
CREATE TABLE `files` (
  `idfiles` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(45) NOT NULL DEFAULT '',
  `content` blob NOT NULL,
  `owner_name` varchar(45) NOT NULL DEFAULT '',
  `upload_time` varchar(45) NOT NULL DEFAULT '',
  `size` varchar(45) NOT NULL DEFAULT '',
  `file_key` varchar(45) NOT NULL DEFAULT '',
  `hashkey` longtext NOT NULL,
  `timerequired` varchar(45) NOT NULL,
  PRIMARY KEY (`idfiles`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` (`idfiles`,`filename`,`content`,`owner_name`,`upload_time`,`size`,`file_key`,`hashkey`,`timerequired`) VALUES 
 (42,'Sona.pdf',0x564555624F4231593069442B545A48674E466968704E485733394958314F5637317144566B7052514E654A556D744F41635137616E433049703057757267485962715A496B5672716F6D39720D0A694A6E69466868343374534D506D47546367717975452F45505A567430674C56546B69514F6C72336C535261484467646F5539777072476F47562F43574B527079654352667974587A6871300D0A7956636E4336726D2F53486F573370706264664A53374259682B6F764F2F4A797364734677337568755153716C6575514C336F79794C3147753639334F7754727442716432373538676669420D0A643163316C7379527272727855682B544B397942474B6D6E33565661556845523577754646696245636D697171616A6749307548346B5A36447530434C55483070575448734F6537596D6D6C0D0A4D474968337565366D526B373542642F46516F4F51563574746F48686E486850787033465556504237774A424F394E686A352B597A2B50347164496437436F6B4476455770705364716B4F390D0A6A436C753454744967374431684762524D427935334F74326E514D6556776776564C6172645173655974744744334F6A522F6C4F2F4A7273654B4A72515A78346D76767A48627846644343300D0A724B566E42627864434557774E4448554A7062505348746338674D52394B4D336C66446530486D4C4D5A52582F493255797030703563683072657939382F36383333546473744B67394B6A2F0D0A77496A47323750445174444C46466D6B683135693074386C5A5763346B59535357674275555872706A5A64585030356844664D704F7035533277474949516B596C57566E677268647066786D0D0A37316D2B7747725056394A50493858374C4A674E79665330367A45736F7743753656506C623866696953342F37794D7437497045614C35464F3250717843376F38357177684656434E3359720D0A7050306653565253326F3467637771784D587766,'Jyoti','2018/04/19 09:27:45','636bytes','nPIY/fFiVYv5gOeQwOtfkA==','011100110110111101101110011000010010111001110000011001000110011000111000','5000'),
 (44,'Mayuri.pdf',0x52423146336135314D634C443047526E765554447A34333153587037633832624C7334394333754F46306A6441634A5A6D32306445414F626563495147612F324652785071622B58504742520D0A592F54687A474C4450773130694A7874572F4C4A7364486376722F53682F52612F51447234484833597231336F4E3133524A6E4F47695A744263635662696C79526D593931507252645764650D0A4F6D694E6364376B466D70734D2B784D42364472676D6B42385063767352424862584F7A7770424130674650566178724C596F4E6F6536565867674A4834626E6F67415A6C6C4363577159500D0A4144467A4C6F346B556E2F523958625444794D366B6F3136646653523776374D5A556B4E5A58614D56525A44734F6D41412F4B794C79587839655A4E706648527469776873664434466344330D0A5341795A50495A3866454467536B356C55333653365257423978457034344D5A494C4A3834334142696A61325A735730616B7354434153796F32354C637767424A72646B46467836504672530D0A7241703650363939586A4A545A3562414574615877346B6E456C45423372463131743956344235386A644633524B7873695873786752492B55784B4C544D584E344B592F612B436D4E4447740D0A33456942734145434F37746849713973696376593031414A396B694E45385272613575543948343456526A505A514A374539562F474E58694A7039545654796847354A45634A5159576B44670D0A6C54776B4747726576766356784F6F55705067744F463557704859497844447971352B56393056737947456E426B2F796D454A48594F72426B4F556571572F3566324359556863416B4265450D0A596D6472354D365148474E3861374734477438684F50432B6851474A6A4B4E326C444932716179396930794B6B745A5A7430444F6442324B6741376B4A6A707A5370465757667263693556710D0A6247726C78574F36326C49595234475444334E75,'Mayuri','2018/04/19 17:42:31','680bytes','uNCP8q7pPstylKcBLk4Syw==','011011010110000101111001011101010111001001101001001011100111000001100100011001100011000100110000','22426');
/*!40000 ALTER TABLE `files` ENABLE KEYS */;


--
-- Definition of table `patient_record`
--

DROP TABLE IF EXISTS `patient_record`;
CREATE TABLE `patient_record` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `zip` varchar(45) NOT NULL,
  `contact` varchar(45) NOT NULL,
  `dob` varchar(45) NOT NULL,
  `height` varchar(45) NOT NULL,
  `weight` varchar(45) NOT NULL,
  `bmi` varchar(45) NOT NULL,
  `temp` varchar(45) NOT NULL,
  `bg` varchar(45) NOT NULL,
  `bp` varchar(45) NOT NULL,
  `prate` varchar(45) NOT NULL,
  `rrate` varchar(45) NOT NULL,
  `filename` varchar(45) NOT NULL,
  `share_with` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_record`
--

/*!40000 ALTER TABLE `patient_record` DISABLE KEYS */;
INSERT INTO `patient_record` (`Id`,`fname`,`lname`,`email`,`gender`,`address`,`city`,`state`,`zip`,`contact`,`dob`,`height`,`weight`,`bmi`,`temp`,`bg`,`bp`,`prate`,`rrate`,`filename`,`share_with`,`username`) VALUES 
 (20,'Sona','Pactis','sona@gmail.com','   female','   Pune','   Pune','   Maharashtra','   411014','   7890654321  ','   1990-11-12','   5.5','   55','   18.5 to 24.9(Healthy)','   41','   AB+ve','90-120(Ideal)','   70','   71','Sona.pdf','   Doctor,Relatives','Jyoti'),
 (21,'Mayuri','Tidke','mayuri@gmail.com','   female','   Pune','   Pune','   Maharashtra','   411014','   7890654321  ','   1990-11-12','   5.5','   55','   18.5 to 24.9(Healthy)','   41','   AB+ve','90-120(Ideal)','   70','   71','Mayuri.pdf','   Doctor,Relatives','Mayuri');
/*!40000 ALTER TABLE `patient_record` ENABLE KEYS */;


--
-- Definition of table `prescription`
--

DROP TABLE IF EXISTS `prescription`;
CREATE TABLE `prescription` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `doctor_name` varchar(45) NOT NULL,
  `patient_name` varchar(45) NOT NULL,
  `filename` varchar(45) NOT NULL,
  `p_time` varchar(45) NOT NULL,
  `prescription` varchar(4500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prescription`
--

/*!40000 ALTER TABLE `prescription` DISABLE KEYS */;
INSERT INTO `prescription` (`id`,`doctor_name`,`patient_name`,`filename`,`p_time`,`prescription`) VALUES 
 (1,'Ashwini','Jyoti','Sona.pdf','2018/04/19 23:06:47','You are healthy.'),
 (2,'Ashwini','Mayuri','Mayuri.pdf','2018/04/19 23:10:17','Please take care of your health.'),
 (3,'Ashwini','Mayuri','Mayuri.pdf','2018/04/20 10:31:36','You are Healthy.');
/*!40000 ALTER TABLE `prescription` ENABLE KEYS */;


--
-- Definition of table `rights`
--

DROP TABLE IF EXISTS `rights`;
CREATE TABLE `rights` (
  `token_` varchar(45) NOT NULL DEFAULT '',
  `username_` varchar(45) NOT NULL DEFAULT '',
  `view_` varchar(45) NOT NULL,
  `update_` varchar(45) NOT NULL DEFAULT '',
  `download_` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`token_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rights`
--

/*!40000 ALTER TABLE `rights` DISABLE KEYS */;
INSERT INTO `rights` (`token_`,`username_`,`view_`,`update_`,`download_`) VALUES 
 ('-1356285211','Ashwini','yes','yes','yes'),
 ('-1387569316','Sona','no','no','no'),
 ('1127940314','Mayuri','yes','yes','yes'),
 ('1737873457','Jyoti','yes','yes','yes');
/*!40000 ALTER TABLE `rights` ENABLE KEYS */;


--
-- Definition of table `sharekey`
--

DROP TABLE IF EXISTS `sharekey`;
CREATE TABLE `sharekey` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner` varchar(45) NOT NULL,
  `filename` varchar(45) NOT NULL,
  `sharekey` longtext NOT NULL,
  `share_with` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sharekey`
--

/*!40000 ALTER TABLE `sharekey` DISABLE KEYS */;
INSERT INTO `sharekey` (`id`,`owner`,`filename`,`sharekey`,`share_with`) VALUES 
 (40,'Jyoti','Sona.pdf','4746','Mayuri'),
 (41,'Jyoti','Sona.pdf','5480','Krishna'),
 (42,'Jyoti','Sona.pdf','4019','Ashwini'),
 (43,'Mayuri','Sona.pdf','9959','Ashwini'),
 (44,'Mayuri','Sona.pdf','5634','Ashwini'),
 (45,'Mayuri','Mayuri.pdf','8889','Ashwini');
/*!40000 ALTER TABLE `sharekey` ENABLE KEYS */;


--
-- Definition of table `updates`
--

DROP TABLE IF EXISTS `updates`;
CREATE TABLE `updates` (
  `idupdates` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(45) NOT NULL DEFAULT '',
  `username` varchar(45) NOT NULL DEFAULT '',
  `time` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`idupdates`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `updates`
--

/*!40000 ALTER TABLE `updates` DISABLE KEYS */;
INSERT INTO `updates` (`idupdates`,`filename`,`username`,`time`) VALUES 
 (86,'Mayuri.pdf','Mayuri','2018/04/19 17:43:09'),
 (87,'Sona.pdf','Jyoti','2018/04/19 17:45:33');
/*!40000 ALTER TABLE `updates` ENABLE KEYS */;


--
-- Definition of table `user_reg`
--

DROP TABLE IF EXISTS `user_reg`;
CREATE TABLE `user_reg` (
  `username` varchar(45) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `name` varchar(45) NOT NULL DEFAULT '',
  `password` varchar(45) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `mail` varchar(45) NOT NULL DEFAULT '',
  `phoneno` varchar(45) NOT NULL DEFAULT '',
  `token_` varchar(45) NOT NULL DEFAULT '',
  `activate` varchar(45) NOT NULL DEFAULT '',
  `count_` varchar(45) NOT NULL DEFAULT '',
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_reg`
--

/*!40000 ALTER TABLE `user_reg` DISABLE KEYS */;
INSERT INTO `user_reg` (`username`,`name`,`password`,`mail`,`phoneno`,`token_`,`activate`,`count_`,`status`) VALUES 
 (0x4A796F7469,'Jyoti Khedkar',0x4A796F7469313233,'ashwini.phoenixzone@gmail.com','8698892252','1737873457','yes','',NULL),
 (0x4D6179757269,'Mayuri',0x4D6179757269313233,'mayuri.phoenixzone@gmail.com','7068905645','-1931809915','yes','',NULL),
 (0x7364696E657368,'Dinesh Ubale',0x5364696E65736831323340,'dinesh@gmail.com','9890430022','-500506152','no','',NULL);
/*!40000 ALTER TABLE `user_reg` ENABLE KEYS */;


--
-- Definition of table `user_request`
--

DROP TABLE IF EXISTS `user_request`;
CREATE TABLE `user_request` (
  `iduser_request` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL DEFAULT '',
  `request` varchar(45) NOT NULL DEFAULT '',
  `time` varchar(45) NOT NULL DEFAULT '',
  `viewed` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`iduser_request`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_request`
--

/*!40000 ALTER TABLE `user_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_request` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
