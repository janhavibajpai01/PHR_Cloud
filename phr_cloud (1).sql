-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2023 at 01:02 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phr_cloud`
--

-- --------------------------------------------------------

--
-- Table structure for table `actuary_reg`
--

CREATE TABLE `actuary_reg` (
  `username` varchar(45) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `designation` varchar(45) NOT NULL,
  `password` varchar(45) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `mail` varchar(45) NOT NULL DEFAULT '',
  `phoneno` varchar(45) NOT NULL DEFAULT '',
  `token_` varchar(45) NOT NULL DEFAULT '',
  `activate` varchar(45) NOT NULL DEFAULT '',
  `count_` varchar(45) NOT NULL DEFAULT '',
  `status` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `actuary_reg`
--

INSERT INTO `actuary_reg` (`username`, `designation`, `password`, `mail`, `phoneno`, `token_`, `activate`, `count_`, `status`) VALUES
('Akshay', 'Doctor', 'Akshay@1010', 'akshay@gmail.com', '9970703408', '-1076255518', 'yes', '0', '1'),
('manoj', 'Doctor', 'Manoj1010', 'manoj@gmail.com', '9970753408', '236225239', 'yes', '0', '1'),
('ravindra', 'Doctor', 'Ravi1010', 'ravindra@gmail.com', '9970703408', '', 'no', '0', '0'),
('shamal', 'Doctor', 'Sh@m@l11', 'shamaljamdade11@gmail.com', '9678234511', '-1169409385', 'yes', '0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

CREATE TABLE `downloads` (
  `iddownloads` int(10) UNSIGNED NOT NULL,
  `filename` varchar(45) NOT NULL DEFAULT '',
  `username` varchar(45) NOT NULL DEFAULT '',
  `time` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `downloads`
--

INSERT INTO `downloads` (`iddownloads`, `filename`, `username`, `time`) VALUES
(55, 'Mayuri.pdf', 'Mayuri', '2018/04/19 17:44:01'),
(56, 'Sona.pdf', 'Jyoti', '2018/04/19 17:45:42'),
(57, 'Sona.pdf', 'Jyoti', '2018/04/27 10:59:41'),
(58, 'ravi.pdf', 'vivek', '2023/05/19 22:36:11');

-- --------------------------------------------------------

--
-- Table structure for table `filedetails`
--

CREATE TABLE `filedetails` (
  `uid` varchar(45) DEFAULT NULL,
  `filename` varchar(45) DEFAULT NULL,
  `operationname` varchar(45) DEFAULT NULL,
  `starttime` varchar(45) DEFAULT NULL,
  `endtime` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `filehandler`
--

CREATE TABLE `filehandler` (
  `id` int(10) NOT NULL,
  `filename` varchar(2000) NOT NULL,
  `name` varchar(20) NOT NULL,
  `content` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `filehandler`
--

INSERT INTO `filehandler` (`id`, `filename`, `name`, `content`) VALUES
(9, 'vivek.pdf', 'vivek', 0x46756e67616c20696e66656374696f6e);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `idfiles` int(10) UNSIGNED NOT NULL,
  `filename` varchar(45) NOT NULL DEFAULT '',
  `content` blob NOT NULL,
  `owner_name` varchar(45) NOT NULL DEFAULT '',
  `upload_time` varchar(45) NOT NULL DEFAULT '',
  `size` varchar(45) NOT NULL DEFAULT '',
  `file_key` varchar(45) NOT NULL DEFAULT '',
  `hashkey` longtext NOT NULL,
  `timerequired` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`idfiles`, `filename`, `content`, `owner_name`, `upload_time`, `size`, `file_key`, `hashkey`, `timerequired`) VALUES
(42, 'Sona.pdf', 0x564555624f4231593069442b545a48674e466968704e485733394958314f5637317144566b7052514e654a556d744f41635137616e433049703057757267485962715a496b5672716f6d39720d0a694a6e69466868343374534d506d47546367717975452f45505a567430674c56546b69514f6c72336c535261484467646f5539777072476f47562f43574b527079654352667974587a6871300d0a7956636e4336726d2f53486f573370706264664a53374259682b6f764f2f4a797364734677337568755153716c6575514c336f79794c3147753639334f7754727442716432373538676669420d0a643163316c7379527272727855682b544b397942474b6d6e33565661556845523577754646696245636d697171616a6749307548346b5a36447530434c55483070575448734f6537596d6d6c0d0a4d474968337565366d526b373542642f46516f4f51563574746f48686e486850787033465556504237774a424f394e686a352b597a2b50347164496437436f6b4476455770705364716b4f390d0a6a436c753454744967374431684762524d427935334f74326e514d6556776776564c6172645173655974744744334f6a522f6c4f2f4a7273654b4a72515a78346d76767a48627846644343300d0a724b566e42627864434557774e4448554a7062505348746338674d52394b4d336c66446530486d4c4d5a52582f493255797030703563683072657939382f36383333546473744b67394b6a2f0d0a77496a47323750445174444c46466d6b683135693074386c5a5763346b59535357674275555872706a5a64585030356844664d704f7035533277474949516b596c57566e677268647066786d0d0a37316d2b7747725056394a50493858374c4a674e79665330367a45736f7743753656506c623866696953342f37794d7437497045614c35464f3250717843376f38357177684656434e3359720d0a7050306653565253326f3467637771784d587766, 'Jyoti', '2018/04/19 09:27:45', '636bytes', 'nPIY/fFiVYv5gOeQwOtfkA==', '011100110110111101101110011000010010111001110000011001000110011000111000', '5000'),
(44, 'Mayuri.pdf', 0x4270735451754766575464767378746c3247585833385a656d2b726a695975742b515a30714c624441466957614641586e7368666232572f4a6b376935454a6b35413057384541462f6c2f580d0a4e7a75747755507651366471625534594338537950717a65765652323351626876384532726a54476730674a6841462f2f62427770584e4a41515a636554742f777a38494e786749367638370d0a5275707a396f5541394b6f6f38594442766433484371436c575170634f72484a785a484d4146466b725854532b4b386e2f314865644174674a3462436562747652696777385a314d413864530d0a4952583966774833747a6c30332f594c376a38746746626678354c39336a71384c61387271794846412b3234344931306264503765706a6f35636d5a594b6841484a303165596777632f6a480d0a63554b36584f682b6f78344f7a32792b394e5a5a2b65616861466f55534f5952554c456f34386c622f4f546730327831625a5238374e474e6f6c544e517042307970766145693879365841750d0a49685564596a515577596a666d444163513451586f4a6e6c73625261427269424552462f56314b394d59647a5734592f7055707a63784c314173355577496866546953694d423745466f4d720d0a57714333666d3077345a553653652f74416e7564502f6f646134652f7a464d374450376244367939633773502b4964336f757233546167773759726e79735a6337416843486b5054584650560d0a327166334943556d76667a6b734d563371716d6737664578616a59443336584a2b6c4b51593234384554417861783577344e487861395838655757766a2b6e64464a64363837582f65426a720d0a4636786a6f6e4e58756c66644465624275624a4f6a5a706b385030613354644a72374f4a534842786351316a34536d2b797147694766417a7250466c4c7374474a354346617664457433796f0d0a746176777345612f666c4b6f6a5a496169586f45684164715942487a583354786269614247656e3152356d7a6c49314d2b457275674233322b73346e5166344c574d767877544472502b4f360d0a6c4e3232362f53484630484e4d75634f3634332f55435552753955324f513d3d, 'Mayuri', '2018/04/19 17:42:31', '680bytes', 'F8DVADMbxq9fO/du4SJAhQ==', '011011010110000101111001011101010111001001101001001011100111000001100100011001100011000100110000', '22426'),
(45, 'Jyoti1.pdf', 0x78396f43464d7751713730794f4742744878726d6a4d73663352626b4b2f514b414365575730796752636c4261726c353271744a314130424854695a554254432b6172585a77616f6c6268760d0a2f674549735579432f5072394f55586148786f6f713447554a4a556c6578536f6642716a655969424d67645035666e65413766313872726741726d5a4c62626b77444e673464584b574155720d0a4e7a6d46377079302f4c7a546f7961535a782b4b6a574b426872563049706a73726b4c7745342f743953515755314d695077474a6474392b4938324f3934703248376950755233784a3833630d0a55414f326836305974586e6c4436796375334c71703551436b7a7048426869693767756668567357596c416f50676c503276744b794f7432776c4c304c376636475234644c526d39317252390d0a544d6a353475496337447768743970454f57544a6661344670337574495234583735756441744b3439396c71706b5444694774507a55514f3253763878366a5451792f304245514b65722b320d0a4652466f4a334a735545626e43374277506d5747734e5852554c6d64434145484a793430694e6e31566b76356b6d4f5138644236697538335956626a4861525437455a7a31513243763175300d0a2b594d4754353365645a47355a6f63444d4f6232426f6c6163417273636d647a583667423450564c434648373970346b314e5765536b33564971464a2b4f4448397747774b73384b786244380d0a773131776d426456375a64493479387065776837556c5971434c57365974783545515747587037776a68743749635871726f562f316d4e543935344f596430764e324364616b6962764b526b0d0a6e6f4c7a2f30396d676b4d3d, 'Jyoti', '2018/05/28 15:42:46', '636bytes', 'aswRIPrAoz+H03vwo6yjeg==', '011010100111100101101111011101000110100100110001001011100111000001100100011001100011000100110000', '84948'),
(46, 'ravi.pdf', 0x43476a586b6d614d6431337171486b513063306a657445554664503461617641376847334f716b456b317361486247524f7a62326947624c37426d3736354b67562b4e50664e7777516e6f560d0a35302f34625a644632753668737664474a5a373072676c417a6f754b4c64342f78795135433779372f32387050747067393936576a556c735a583932764366753869736a79656a6337562f6c0d0a65512b6c414f356d6e39535269304765757a34382f4d37797634415437316e2f614d43646c3637424e30664a484b464b534e3255355473776f41552f5872653336316b4f4f344b427169364f0d0a51504a36694758784b2f38714f544e5a6266707648737877495339496376344e442b6b693871767a7177626b4a75337a496f4d415764713957306b35585179786e6351345231744a695438560d0a433242326d39654d57734d654d3147515a504443304e4872666b444555416b50596d4343357879647648306548772b566966684b456757307761677557644f4456394f395177526a416432720d0a773564734a7449314162546b6f646436446c31524376644464334a5635354d5657446a6d3158656c352b66636f787330617864316a52534c644d62424b576e6a315564305835565034737a700d0a356e4368684970375271415266354e717a7a50787756575270584159746951346239787762476d4e654777344e6d7a4b325439484c4778697672305556306c5a4a39706875553351676a38720d0a57542f6f7a734d716850666b6f42556c734c426e47554d636c527635757a57505a4d466f3942474b33667a5359726f6363454c49464c6b584469547a52324f6c53784b53306351397a4949360d0a504a2b4c414639434f3163656e676f6961306c6b5a384b444174426c78583434644642636b3757305374596c4d63646b4d4b432b475071516e62715751384f774e7a524e474f716f50526e620d0a72736b3665687873624f6657694972452b7155696a444d4d52774c2f30344d4f476c536d5a46516a78746a79656c4c4b786476614175722f6d385638777366742b6b553066467649316d73550d0a2f55326c4a516e46584333776c7663717a6a7039704e37587361342b6662505366386b37564534685a587739584b4f4a6d432b772b64663330736e593350766855466970534730472b5561540d0a4d746b4668676d723039486b634b545a4c55444475745a71616c6c2b3277633269643170676c434c733243654366736a33514c512f2b68554e77425370374a523459686a6a33556e326642640d0a386b696e765370467258503374666d4233733936495131566876735a48477a4b5463736a612b63657761525748772b77643450325868677767784e34534e526776704376556f497873312f520d0a4453326c46452f4d562b454b534d6944597177504c6f756a6d6b537637734d7a36777270706975312f76556e724c4b306d4a75796d616a7271414d36514b777354414c2f385851336f4c34420d0a6270554368494d2f37624e784839496f4f4e5932442b684156455245303135335a72557339766c684d4770766b4a44664566476d724872573777514378623749774b7369344e7939383737780d0a5153366143724b436e736e6657576755695a3751747366504256783162774559364a536a32694268616c4359474e685970744e79793846325a583134345063564273446c2b6e6d465a6578620d0a4d4a6c396f626e4a646f796b6c6d534d76752f4e486f4245356c397879366d7130676d55687658633861386a616b527752706664364e4c6b6d6d31623536556d, 'vivek', '2023/05/08 03:49:33', '1312bytes', 'oDK9MBM+5z9876oBRc9SZQ==', '0110011101100001011101010111001001100001011101100010000001101011011101010110110101100010011010000110000101110010001011100111000001100100011001100011000100111000', '11567');

-- --------------------------------------------------------

--
-- Table structure for table `patient_record`
--

CREATE TABLE `patient_record` (
  `Id` int(10) UNSIGNED NOT NULL,
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
  `username` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `patient_record`
--

INSERT INTO `patient_record` (`Id`, `fname`, `lname`, `email`, `gender`, `address`, `city`, `state`, `zip`, `contact`, `dob`, `height`, `weight`, `bmi`, `temp`, `bg`, `bp`, `prate`, `rrate`, `filename`, `share_with`, `username`) VALUES
(20, 'Sona', 'Pactis', 'sona@gmail.com', '   female', '   Pune', '   Pune', '   Maharashtra', '   411014', '   7890654321  ', '   1990-11-12', '   5.5', '   55', '   18.5 to 24.9(Healthy)', '   41', '   AB+ve', '90-120(Ideal)', '   70', '   71', 'Sona.pdf', '   Doctor,Relatives', 'Jyoti'),
(21, 'Mayuri', 'Tidke', 'mayuri@gmail.com', '   female', '   Pune', '   Pune', '   Maharashtra', '   411014', '   7890654321  ', '   1990-11-12', '   5.5', '   55', '   18.5 to 24.9(Healthy)', '   41', '   AB+ve', '90-120(Ideal)', '   70', '   71', 'Mayuri.pdf', '   Doctor,Relatives', 'Mayuri'),
(22, 'akshay', 'jaa', 'akshay7@gmail.com', 'male', 'pune', 'pune', 'maharashtra', '414006', '9970703408', '2023-03-15', '5.6', '60', 'below 18.5(Underweight)', '30', 'AB', '120-140(Pre-High)', '65', '70', 'akshay.pdf', 'Doctor,Relatives', 'shamal11'),
(23, 'ravi', 'jadhav', 'vivek@gmail.com', 'male', 'pune', 'pune', 'maharashtra', '414006', '9970703408', '2023-03-13', '5.5', '55', 'below 18.5(Underweight)', '30', 'AB+', '120-140(Pre-High)', '65', '70', 'ravi.pdf', 'Doctor', 'vivek'),
(24, 'akshay', 'jjjj', 'akshay@gmail.com', 'male', 'pune', 'pune', 'maharashtra', '414006', '9970703408', '2023-05-23', '5.6', '60', '18.5 to 24.9(Healthy)', '30', 'AB', '60-90(Low)', '65', '70', 'akshay.pdf', 'Doctor', 'vivek');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `id` int(10) UNSIGNED NOT NULL,
  `doctor_name` varchar(45) NOT NULL,
  `patient_name` varchar(45) NOT NULL,
  `filename` varchar(45) NOT NULL,
  `p_time` varchar(45) NOT NULL,
  `prescription` varchar(4500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`id`, `doctor_name`, `patient_name`, `filename`, `p_time`, `prescription`) VALUES
(1, 'Ashwini', 'Jyoti', 'Sona.pdf', '2018/04/19 23:06:47', 'You are healthy.'),
(2, 'Ashwini', 'Mayuri', 'Mayuri.pdf', '2018/04/19 23:10:17', 'Please take care of your health.'),
(3, 'Ashwini', 'Mayuri', 'Mayuri.pdf', '2018/04/20 10:31:36', 'You are Healthy.'),
(4, 'Ashwini', 'Mayuri', 'Mayuri.pdf', '2018/04/25 12:06:03', 'Hello Mayuri...'),
(5, 'Ashwini', 'Mayuri', 'Mayuri.pdf', '2018/04/27 11:00:49', 'hi take lunch'),
(6, 'Ashwini', 'Jyoti', 'Sona.pdf', '2018/04/27 11:04:03', 'take lunch');

-- --------------------------------------------------------

--
-- Table structure for table `rights`
--

CREATE TABLE `rights` (
  `token_` varchar(45) NOT NULL DEFAULT '',
  `username_` varchar(45) NOT NULL DEFAULT '',
  `view_` varchar(45) NOT NULL,
  `update_` varchar(45) NOT NULL DEFAULT '',
  `download_` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rights`
--

INSERT INTO `rights` (`token_`, `username_`, `view_`, `update_`, `download_`) VALUES
('-1076255518', 'Akshay', 'yes', 'yes', 'yes'),
('-1169409385', 'shamal', 'yes', 'yes', 'yes'),
('-1387569316', 'Sona', 'no', 'no', 'no'),
('-1447072502', 'sdinesh', 'no', 'no', 'no'),
('-1738164814', 'Krishna', 'yes', 'yes', 'no'),
('-527133900', 'vivek', 'yes', 'yes', 'yes'),
('-570655146', 'shamal11', 'yes', 'yes', 'yes'),
('1737873457', 'Jyoti', 'yes', 'yes', 'yes'),
('236225239', 'manoj', 'yes', 'yes', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `sharekey`
--

CREATE TABLE `sharekey` (
  `id` int(10) UNSIGNED NOT NULL,
  `owner` varchar(45) NOT NULL,
  `filename` varchar(45) NOT NULL,
  `sharekey` longtext NOT NULL,
  `share_with` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sharekey`
--

INSERT INTO `sharekey` (`id`, `owner`, `filename`, `sharekey`, `share_with`) VALUES
(40, 'Jyoti', 'Sona.pdf', '4746', 'Mayuri'),
(41, 'Jyoti', 'Sona.pdf', '5480', 'Krishna'),
(42, 'Jyoti', 'Sona.pdf', '4019', 'Ashwini'),
(43, 'Mayuri', 'Sona.pdf', '9959', 'Ashwini'),
(44, 'Mayuri', 'Sona.pdf', '5634', 'Ashwini'),
(45, 'Mayuri', 'Mayuri.pdf', '8889', 'Ashwini'),
(46, 'Jyoti', 'Sona.pdf', '9400', 'Ashwini'),
(47, 'vivek', 'ravi.pdf', '4387', 'manoj'),
(48, 'vivek', 'ravi.pdf', '6193', 'manoj'),
(49, 'vivek', 'ravi.pdf', '7223', 'manoj'),
(50, 'vivek', 'ravi.pdf', '7634', 'manoj');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blockchain`
--

CREATE TABLE `tbl_blockchain` (
  `id` int(10) NOT NULL,
  `sender_id` varchar(100) NOT NULL,
  `receiver_id` varchar(100) NOT NULL,
  `time` varchar(45) NOT NULL,
  `phash` varchar(200) NOT NULL,
  `chash` varchar(200) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_blockchain`
--

INSERT INTO `tbl_blockchain` (`id`, `sender_id`, `receiver_id`, `time`, `phash`, `chash`, `status`) VALUES
(1, 'vivek', 'manoj', '10/05/2023 02:02:49', '0', 'dc2adfda3345cf039845b2d6216125c3351a9b9b1dc3742146a7d062dccc5dbb', 'Success'),
(2, 'vivek', 'manoj', '10/05/2023 02:07:13', 'dc2adfda3345cf039845b2d6216125c3351a9b9b1dc3742146a7d062dccc5dbb', 'dc2adfda3345cf039845b2d6216125c3351a9b9b1dc3742146a7d062dccc5dbb', 'Success');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sensor`
--

CREATE TABLE `tbl_sensor` (
  `hb` int(10) UNSIGNED NOT NULL,
  `temp` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_sensor`
--

INSERT INTO `tbl_sensor` (`hb`, `temp`) VALUES
(65, '30');

-- --------------------------------------------------------

--
-- Table structure for table `updates`
--

CREATE TABLE `updates` (
  `idupdates` int(10) UNSIGNED NOT NULL,
  `filename` varchar(45) NOT NULL DEFAULT '',
  `username` varchar(45) NOT NULL DEFAULT '',
  `time` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `updates`
--

INSERT INTO `updates` (`idupdates`, `filename`, `username`, `time`) VALUES
(86, 'Mayuri.pdf', 'Mayuri', '2018/04/19 17:43:09'),
(87, 'Sona.pdf', 'Jyoti', '2018/04/19 17:45:33'),
(88, 'Mayuri.pdf', 'Ashwini', '2018/04/25 11:30:19'),
(89, 'Mayuri.pdf', 'Ashwini', '2018/04/25 11:44:05'),
(90, 'Mayuri.pdf', 'Ashwini', '2018/04/25 11:50:29'),
(91, 'Mayuri.pdf', 'Ashwini', '2018/04/25 11:52:03');

-- --------------------------------------------------------

--
-- Table structure for table `user_reg`
--

CREATE TABLE `user_reg` (
  `username` varchar(45) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `name` varchar(45) NOT NULL DEFAULT '',
  `password` varchar(45) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `mail` varchar(45) NOT NULL DEFAULT '',
  `phoneno` varchar(45) NOT NULL DEFAULT '',
  `token_` varchar(45) NOT NULL DEFAULT '',
  `activate` varchar(45) NOT NULL DEFAULT '',
  `count_` varchar(45) NOT NULL DEFAULT '',
  `status` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_reg`
--

INSERT INTO `user_reg` (`username`, `name`, `password`, `mail`, `phoneno`, `token_`, `activate`, `count_`, `status`) VALUES
('shamal11', 'shamal', 'Shamal11', 'shamaljamdade11@gmail.com', '9443355221', '-570655146', 'yes', '', '1'),
('vivek', 'vivek', 'Vivek1010', 'vivek@gmail.com', '9970703408', '-527133900', 'yes', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user_request`
--

CREATE TABLE `user_request` (
  `iduser_request` int(10) UNSIGNED NOT NULL,
  `username` varchar(45) NOT NULL DEFAULT '',
  `request` varchar(45) NOT NULL DEFAULT '',
  `time` varchar(45) NOT NULL DEFAULT '',
  `viewed` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actuary_reg`
--
ALTER TABLE `actuary_reg`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`iddownloads`);

--
-- Indexes for table `filehandler`
--
ALTER TABLE `filehandler`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`idfiles`);

--
-- Indexes for table `patient_record`
--
ALTER TABLE `patient_record`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rights`
--
ALTER TABLE `rights`
  ADD PRIMARY KEY (`token_`);

--
-- Indexes for table `sharekey`
--
ALTER TABLE `sharekey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_blockchain`
--
ALTER TABLE `tbl_blockchain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `updates`
--
ALTER TABLE `updates`
  ADD PRIMARY KEY (`idupdates`);

--
-- Indexes for table `user_reg`
--
ALTER TABLE `user_reg`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `user_request`
--
ALTER TABLE `user_request`
  ADD PRIMARY KEY (`iduser_request`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `downloads`
--
ALTER TABLE `downloads`
  MODIFY `iddownloads` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `filehandler`
--
ALTER TABLE `filehandler`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `idfiles` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `patient_record`
--
ALTER TABLE `patient_record`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sharekey`
--
ALTER TABLE `sharekey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tbl_blockchain`
--
ALTER TABLE `tbl_blockchain`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `updates`
--
ALTER TABLE `updates`
  MODIFY `idupdates` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `user_request`
--
ALTER TABLE `user_request`
  MODIFY `iduser_request` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
