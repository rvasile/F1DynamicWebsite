-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2016 at 09:14 PM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `formula1`
--
CREATE DATABASE IF NOT EXISTS `formula1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `formula1`;

-- --------------------------------------------------------

--
-- Table structure for table `arespecificatii`
--
-- Creation: Jan 08, 2016 at 06:29 PM
--

DROP TABLE IF EXISTS `arespecificatii`;
CREATE TABLE IF NOT EXISTS `arespecificatii` (
  `IDAre` int(11) NOT NULL AUTO_INCREMENT,
  `IDMasina` int(11) NOT NULL,
  `IDSpecificatie` int(11) NOT NULL,
  `Valoare` varchar(100) NOT NULL,
  PRIMARY KEY (`IDAre`),
  KEY `IDMasina` (`IDMasina`),
  KEY `IDSpecificatie` (`IDSpecificatie`),
  KEY `IDMasina_2` (`IDMasina`),
  KEY `IDSpecificatie_2` (`IDSpecificatie`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `arespecificatii`:
--   `IDMasina`
--       `masina` -> `IDMasina`
--   `IDSpecificatie`
--       `specificatii` -> `IDSpecificatie`
--

--
-- Dumping data for table `arespecificatii`
--

INSERT INTO `arespecificatii` (`IDAre`, `IDMasina`, `IDSpecificatie`, `Valoare`) VALUES
(1, 1, 1, 'Mercedes'),
(2, 1, 2, 'PU106B'),
(3, 1, 3, 'Pirelli'),
(4, 1, 4, 'P1'),
(5, 1, 5, '850'),
(6, 1, 6, '702'),
(7, 1, 7, '1600'),
(8, 2, 1, 'Renault'),
(9, 2, 2, 'EnergyF1'),
(10, 2, 3, 'Pirelli'),
(11, 2, 4, 'PZero'),
(12, 2, 5, '767'),
(13, 2, 6, '702'),
(14, 2, 7, '1600'),
(15, 3, 1, 'Mercedes'),
(16, 3, 2, 'PU106B'),
(17, 3, 3, 'Pirelli'),
(18, 3, 4, 'Cinturato'),
(19, 3, 5, '830'),
(20, 3, 6, '704'),
(21, 3, 7, '1600'),
(22, 4, 1, 'Ferrari'),
(23, 4, 2, 'Scuderia'),
(24, 4, 3, 'Pirelli'),
(25, 4, 4, 'PZero'),
(26, 4, 5, '855'),
(27, 4, 6, '703'),
(28, 4, 7, '1600'),
(29, 5, 1, 'Honda'),
(30, 5, 2, 'RA615H'),
(31, 5, 3, 'Enkei'),
(32, 5, 4, 'E04'),
(33, 5, 5, '844'),
(34, 5, 6, '702'),
(35, 5, 7, '1600'),
(36, 6, 1, 'Renault'),
(37, 6, 2, 'EnergyF1'),
(38, 6, 3, 'Pirelli'),
(39, 6, 4, 'PZero'),
(40, 6, 5, '845'),
(41, 6, 6, '702'),
(42, 6, 7, '1600'),
(43, 7, 1, 'Mercedes'),
(44, 7, 2, 'PU106B'),
(45, 7, 3, 'Pirelli'),
(46, 7, 4, 'Cinturato'),
(47, 7, 5, '850'),
(48, 7, 6, '703'),
(49, 7, 7, '1600'),
(50, 8, 1, 'Ferrari'),
(51, 8, 2, 'Scuderia'),
(52, 8, 3, 'Pirelli'),
(53, 8, 4, 'PZero'),
(54, 8, 5, '842'),
(55, 8, 6, '702'),
(56, 8, 7, '1600'),
(57, 9, 1, 'Mercedes'),
(58, 9, 2, 'PU106B'),
(59, 9, 3, 'Pirelli'),
(60, 9, 4, 'Cinturato'),
(61, 9, 5, '847'),
(62, 9, 6, '702'),
(63, 9, 7, '1600'),
(64, 10, 1, 'Ferrari'),
(65, 10, 2, '059/3'),
(66, 10, 3, 'Pirelli'),
(67, 10, 4, 'PZero'),
(68, 10, 5, '838'),
(69, 10, 6, '691'),
(70, 10, 7, '1600');

-- --------------------------------------------------------

--
-- Table structure for table `circuit`
--
-- Creation: Jan 08, 2016 at 06:29 PM
--

DROP TABLE IF EXISTS `circuit`;
CREATE TABLE IF NOT EXISTS `circuit` (
  `IDCircuit` int(2) NOT NULL AUTO_INCREMENT,
  `Nume` varchar(100) NOT NULL,
  `Tara` varchar(100) NOT NULL,
  `Locatie` varchar(100) NOT NULL,
  `Lungime` decimal(6,3) NOT NULL,
  `Numar_ture` int(255) NOT NULL,
  `Nume_Grand_Prix` varchar(100) NOT NULL,
  `Istoric` longtext NOT NULL,
  `image` mediumtext NOT NULL,
  PRIMARY KEY (`IDCircuit`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `circuit`:
--

--
-- Dumping data for table `circuit`
--

INSERT INTO `circuit` (`IDCircuit`, `Nume`, `Tara`, `Locatie`, `Lungime`, `Numar_ture`, `Nume_Grand_Prix`, `Istoric`, `image`) VALUES
(1, 'Albert Park Lake', 'Australia', 'Melbourne', '5.303', 58, 'Australian Grand Prix', ' Circuitul Marelui Premiu Melbourne este un circuit stradal ce inconjoara Lacul Albert Park, ajungand la numai cativa kilometri sud de centrul orasului Melbourne. O data pe an este utilizat ca pista de Formula 1 pentru Marele Premiu al Australiei.\r\n   Pista este reprezentata de un drum ce inconjoara Lacul Albert Park, un mic lac artificial situat in sudul Districtului de afaceri al orasului Melbourne. Portiunile acestui drum, utilizate in Formula 1, au fost reconstruite inainte de cursa inaugurala din 1996, pentru a-i asigura o mai buna consistenta si netezime. In consecinta, comparandu-l cu alte circuite stradale, Albert Park are cu adevarat o pista neteda. Peisajul este unul pitoresc, fiind una dintre putinele piste din calendarul Formulei 1 situate in apropierea unui ochi de apa.', 'Images/Circuit/Albert.jpg'),
(2, 'Sepang', 'Malaezia', 'Selangor', '5.543', 56, 'Malaysian Grand Prix', 'Circuitul International Sepang este locul de disputare al Marelui Premiu al Malaeziei la Formula 1. De asemenea, aici se mai organizeaza curse de A1GP, Marele Premiu al Malaeziei la motociclism si multe alte evenimente din lumea sporturilor cu motor.\r\nConsiderat a fi superior tuturor celorlaltor gazde de Mari Premii de F1, circuitul de la Sepang se poate lauda cu niste garaje superbe si cu niste facilitati media de invidiat. De asemenea, tribunele din Malaezia sunt absolut impresionante, la fel precum conditiile oferite spectatorilor. Singurele nemultumiri au aparut vizavi de denivelarile pistei, acestea dand impresia unei usoare scufundari a circuitului. Cauza cea mai probabila a acestei caracteristici este faptul ca circuitul a fost construit pe o fosta mlastina.\r\nCircuitul a fost desenat de celebrul proiectant german Hermann Tilke. \r\n\r\n', 'Images/Circuit/Sepang.jpg'),
(3, 'Shanghai', 'China', 'Jiading', '5.451', 56, 'Chinese Grand Prix', 'Circuitul International Shanghai este un circuit de curse auto, situat in regiunea Jiading, China PR. Acesta este gazda Marelui Premiu Al Chinei inca din anul 2004. Costul de construire al circuitului s-a ridicat la aproximativ 450 de milioane de $, acesti bani fiind obtinuti din finantarea unei companii joint-venture ( Shanghai Juss Corporation, Shanghai Jia''an Investment si Development Co LTD). Arhitectii, constructorii si inginerii care au participat activ la constructia pistei, au vizitat locul pe care avea a fi situat circuitul inca din Mai 2003 pentru a pune la punct aceasta lucrare, deoarece pista este situata pe o fosta mlastina. La constructie au participat peste 3000 de ingineri si 10000 de muncitori, astfel incat aceasta a fost terminata in 18 luni.', 'Images/Circuit/Sepang.jpg'),
(4, 'Bahrain International Circuit', 'Bahrain', 'Sakhir', '5.412', 57, 'Bahrain Grand Prix', 'Circuitul International Bahrain este o arena de curse motorsport, deschisa in anul 2004 si folosita in a servi curse de GP2, dar si Marele Premiu al Bahrainului. In 2004, Grand Prix-ul a fost pentru prima data tinut in Orientul Mijlociu. Constructia Circuitului a fost un punct de reper pentru statul Bahrain, aceasta constructie fiind dorita de insusi printul Bahrainului. Acesta din urma este si presedintele Federatiei Auto-Moto a Bahrainului. Arhitectul constructiei este Patrick Brogan.\r\nConstructorii s-au temut insa ca circuitul nu va fi terminat la timp pentru a avea loc Marele Premiu din 2004, insa pana la urma concursul s-a desfasurat, chiar daca circuitul era incomplet. In 2007 circuitul a devenit primul care a obtinuit o distinctie din partea FIA, datorata excelentelor conditii de desfasurare a evenimentelor din domeniul auto-moto.', 'Images/Circuit/Bahrain.jpg'),
(5, 'Barcelona-Catalunya', 'Spania', 'Barcelona', '4.655', 66, 'Spanish Grand Prix', 'Circuitul de Barcelona-Catalunya este o pista de curse situata in Montmelo,Barcelona,Spania. Avand o varietate de curbe periculoase si colturi abrupte, circuitul este vazut de specialisti ca fiind unul extrem de complex si de dificil pentru toti pilotii Formulei 1. Capacitatea de spectatori gazduita este spectaculoasa, la un eveniment putand fi prezenti in tribune peste 140000 de oameni. Circuitul are licenta de gradul 1 din partea FIA. Acesta a fost construit in 1991 si a devenit gazda Marelui Premiu al Spaniei imediat dupa ce a fost dat in folosinta. ', 'Images/Circuit/Barcelona.jpg'),
(6, 'Monaco', 'Monaco', 'Monte Carlo', '3.337', 78, 'Monaco Grand Prix', 'Circuitul de Monaco este un circuit stradal, organizat pe strazile din Monte Carlo, in jurul portului la Condamine (portul princiar al statului). Circuitul este folosit in fiecare an in luna mai pentru a gazdui Marele Premiu al statului Monaco. Ideea organizarii acestui premiu pe strazile statului Monaco a apartinut lui Antony Noghes, presedintele Monegasque Motor Club. Prima cursa care a inaugurat circuitul a avut loc in 1929 si a fost castigata de echipa Williams, cu o masina Bugatti. Pana in prezent, doar 3 dintre rezidentii statului Monaco, care au participat ca piloti in Formula 1, au reusit sa castige Marele Premiu.', 'Images/Circuit/Monaco.jpg'),
(7, 'Gilles Villeneuve', 'Canada', 'Montreal', '4.361', 70, 'Canada Grand Prix', 'Circuitul Gilles Villeneuve este o pista de curse situata in Quebec,Canada. El este gazda Marelui Premiu al Canadei. In trecut, acesta a mai gazduit si Fia World Sportscar Championship, NASCAR Canada Tire Series, NASCAR Xfinity Series si Rolex SportsCar Series. Marele Premiu al Canadei se desfasoara aici de 30 de ani incoace. In 2009 insa, circuitul canadian a fost inlocuit pentru o scurta perioada cu circuitul din Abu Dhabi, urmand ca din sezonul 2010, partile canadiene si arabe sa cada la un acord cu FIA pentru ca intrecerea sa se realizeze, in etape diferite, pe ambele piste.', 'Images/Circuit/Gilles.jpg'),
(8, 'Red Bull Ring', 'Austria', 'Spielberg', '4.326', 71, 'Austrian Grand Prix', 'Red Bull Ring este un circuit de curse auto din Spielberg, Styria, Austria.\r\nPista circuitului a fost infiintata ca Osterreichring si a gazduit de 18 ori consecutiv Marele Premiu al Austriei la Formula 1, intre 1970 si 1987. Mai tarziu a fost scurtata, reconstruita si redenumita in A1-Ring, dupa care a gazduit din nou Marele Premiu al Austriei intre 1997 si 2003. Cand s-a constatat ca circuitul este depasit pentru Formula 1, se planificase extinderea piseti. Parti ale circuitului au fost demolate, dar lucrarile de constructie au fost stopate si circuitul a ramas neutilizat pentru cativa ani pna cand nu a fost cumparat si reconstruit de catre Red Bull. Circuitul redenumit in Red Bull Ring a fost redeschis pe 15 mai 2011 si, ulterior a gazduit o etapa din sezonul 2011 Deutsche Tourenwagen Masters si o etapa din Formula 2 2011. Formula 1 se reintoarce pe circuit incepand cu sezonul 2014.', 'Images/Circuit/Redbull.jpg'),
(9, 'Silverstone', 'Marea Britanie', 'Silverstone', '5.891', 52, 'British Grand Prix', 'Circuitul Silverstone este o pista de curse situata in Anglia, in regiunea Northamptonshire of Silverstone. Acesta se afla la granita dintre Northamptonshire si Buckinghamshire, pozitia de start fiind situata in cea de-a doua localitate, iar cea de finish in Northamptonshire. Silverstone este gazda Marelui Premiu al Marii Britanii, pe care l-a gazduit pentru prima oara in 1950. Grand Prix-ul din 1950 a fost prima cursa oficiala de Formula 1, pe atunci campionatul fiind denumit World Championship of Drivers. De-a lungul anilor, Marele Premiu s-a desfasurat pe mai multe circuite, urmand ca in 1987 sa se stabileasca circuitul Silverstone ca fiind definitiv.', 'Images/Circuit/Silverstone.jpg'),
(10, 'Hungaroring', 'Ungaria', 'Budapesta', '4.381', 70, 'Hungarian Grand Prix', 'Hungaroring este un circuit de curse auto-moto, situat in Mogyrod,Ungaria. Acesta este gazda Marelui Premiu al Ungariei. In 1986, circuitul a devenit primul capabil sa gazduiasca un Mare Premiu din cadrul Cortinei de Fier. In prima faza, Bernie Eccleston a dorit Moscova, insa un bun prieten i-a recomandat Budapesta. S-a dorit la inceput a se construi un circuit stradal, similar cu cel de la Monaco, in regiunea Nepliget - cel mai mare parc din Budapesta, insa guvernul a decis sa finanteze constructia unui nou circuit in afara orasului. Constructia a inceput la 1 octombrie 1985 si a durat doar 8 luni, fiind cel mai rapid construit circuit. Prima cursa a avut loc pe 24 Martie 1986, in memoria lui Janos Drapal, primul ungur care a castigat vreodata o cursa de Moto Grand-Prix. Dupa statistici, zona circuitului este una dintre cele mai vizitate zone din Budapesta, iar acesta din urma detine gradul 1 de licenta din partea FIA.', 'Images/Circuit/Hungaro.jpg'),
(11, 'Spa-Francorchamps', 'Belgia', 'Stavelot', '7.004', 44, 'Belgian Grand Prix', 'Circuitul auto Spa-Francorchamps este gazda Formula One Belgian Grand Prix, dar si a tuturor evenimentelor din cadrul Volkswagen Club Event. In ciuda numelui, circuitul nu se afla in localitatea Spa, ci in apropierea sa, in Francorchamps.\r\nCircuitul a fost construit in 1920 de Jules de Thier. Acesta are forma clasica a unui circuit de Formula 1 - triunghi. In deschiderea sa oficiala, pe 21 August 1921 trebuia sa aiba loc un concurs auto, unul dintre primele din acele vremuri, insa acesta a trebuit anulat deoarece la start nu s-a prezentat decat un singur competitor. Ulterior, circuitul a fost inaugurat in 1922. Pentru prima data, circuitul a fost folosit pentru cursele de Grand Prix in 1925.\r\n', 'Images/Circuit/Spa.jpg'),
(12, 'Monza', 'Italia', 'Monza', '5.793', 53, 'Italian Grand Prix', 'Autodromo Nazionale di Monza, cunoscut intre fanii F1 si ca Monza, este un circuit de curse auto din Italia unde are loc anual Marele Premiu al Italiei.\r\nMonza este circuitul care a gazduit pana acum cele mai multe curse de Formula 1, lipsind din calendar doar in 1980 cand a fost in reconstructie.\r\nConstruit in Royal Villa of Monza Park, circuitul are 3 piste, 2 de antrenament si juniori si cea mare, de Grand Prix. Acesta are o forma ovala, fiind considerat un circuit destul de periculos printre fanii si specialistii de Formula 1.\r\n\r\n\r\n', 'Images/Circuit/Monza.png'),
(13, 'Marina Bay', 'Singapore', 'Singapore', '5.065', 61, 'Singapore Grand Prix', 'Circuitul Marina Bay este un circuit stradal in jurul zonei Marina Bay din Singapore. El este gazda pentru Singapore Grand Prix. Pista are 5.065 km lungime, si este similara cu Circuitul Monaco si Circuitul Valencia.\r\nCircuit a fost proiectat de KBR, Inc., a modification of the original one first proposed by Hermann Tilke.', 'Images/Circuit/Marina.jpg'),
(14, 'Sochi', 'Rusia', 'Sochi', '5.848', 53, 'Russian Grand Prix', 'Autodromul Soci, cunoscut anterior ca Circuitul Stradal International Soci si Circuitul din Parcul Olimpic Soci, este un circuit stradal de curse de Formula 1, de 5.848 km amplasat in zona de agrement Soci de pe litoralul Marii Negre, in Tinutul Krasnodar, Rusia. Circuitul e similar cu Circuitul Gilles Villeneuve si Sydney Olympic Park Circuit. In octombrie 2011, Guvernul Rusiei a alocat 195,4 milioane de $SUA pentru constructia circuitului. Cursa inaugurala a avut loc in 2014, fiind semnat un contract pe sapte ani.', 'Images/Circuit/Sochi.jpg'),
(15, 'Austin ', 'America', 'Texas', '5.516', 56, 'US Grand Prix', 'Circuitul Americilor(COTA) este un circuit de auto-moto racing unidirectional, avand gradul 1 de licenta FIA. Acesta este situat in regiunea Elroy, partea sud-estica a periferiei orasului Austin, in Texasul Central. COTA este gazda Grand-Prix-ului Americii de Formula 1, dar si a Moto-GP-ului Americii. Circuitul a fost primul propus spre construire pentru a gazdui Grand Prix-ul de Formula 1 din America. Constructia sa a inceput la mijlocul anului 2010 la recomandarea promoterului Tavo Hellmund, el fiind ajutat de cunoscutul arhitect Hermann Tilke, cel care a desenat planurile si pentru circuitele din Bahrain, Yas Marina, Shanghai si Istanbul. Capacitatea de spectatori disponibila pentru acest circuit este de aproximativ 118000.\r\n', 'Images/Circuit/Austin.jpg'),
(16, 'Hermanos Rodriguez', 'Mexic', 'Mexico City', '4.304', 71, 'Mexican Grand Prix', 'Autodromul Hermanos Rodriguez este un circuit de curse auto-moto de aproximativ 4.304 km, situat in Mexico City, capitala statului Mexic. Pista a fost numita asa dupa celebrii piloti de curse si frati mexicani, Ricardo si Pedro Rodriguez. Acest nume a fost dat la sscurt timp dupa moartea lui Ricardo Rodriguez, mort intr-un accident la antrenamentele pentru 1962 Mexican Grand Prix. Noua ani mai tarziu, s-a stins si fratele sau in aceleasi conditii, tot la volan, tot intr-o cursa. Circuitul este situat in parcul Magdalena Mixhuca, in partea de sud-est a Mexico City.', 'Images/Circuit/Hermanos.png'),
(17, 'Jose Carlos Pace', 'Brazilia', 'Sao Paulo', '4.309', 71, 'Brazilian Grand Prix', 'Autodromul Jose Carlos Pace, cunoscut si sub denumirea originala, Interlagos, este un circuit de curse auto-moto, situat in Sao Paulo, in vecinatatea regiunii Interlagos. Circuitul a fost numit Carlos Pace in memoria marelui pilot de Formula 1 brazilian, care a decedat in 1977 intr-un accident aviatic. Jose Carlos Pace Arena este circuitul gazda al Marelui Premiu al Braziliei FIA. Constructia sa a inceput in anul 1938, intr-o perioada de criza economica a Braziliei. Inaugurarea a avut loc in Mai 1940, sub privirile a peste 25000 de spectatori. Designul circuitului este inspirat de Autodromul Roosevelt din New York, construit in 1937.', 'Images/Circuit/Interlagos.jpg'),
(18, 'Yas Marina', 'Emiratele Arabe Unite', 'Abu Dhabi', '5.554', 55, 'Abu Dhabi Grand Prix', 'Circuitul Yas Marina este locul de desfasurare al Abu Dhabi Grand Prix. Circuitul a fost proiectat de Hermann Tilke si este situat pe Insula Yas, la aproximativ 30 de minute de capitala Emiratelor, Abu Dhabi. Yas Marina este al doilea circuit de Formula1 din Orientul Mijlociu, primul fiind in Bahrain. Circuitul a fost deschis oficial printr-un test al Campionatului de GP2, care a avut loc cu o saptamani inainte de  Abu Dhabi Grand Prix 2009. Acesta a gazduit de asemenea evenimentul de deschidere pentru seria Australian V8 CARS - Yas V8 400, in februarie 2010. In afara curselor motorsport, circuitul a fost folosit pentru etapa finala inaugurala Abu Dhabi Cycling Tour(ciclism) in 2015. Circuitul are FIA gradul 1 licenta', 'Images/Circuit/Yas.jpg'),
(19, 'Suzuka', 'Japonia', 'Suzuka', '5.807', 53, 'Japanese Grand Prix', 'Circuitul International Suzuka este un circuit auto-moto, situat in regiunea Ino a orasului Suzuka, din Japonia. Acesta este intretinut si sponzorizat de Mobilityland Corporation, un subsidar al Honda Motors CO. LTD. Circuitul are o capacitate de gazduire a spectatorilor de peste 155000 de locuri. A fost prima data construit de Honda in scopul de a testa masinile ce aveau sa iasa pe piata in 1962, de arhitectul Dutchman John Hans Hugenholtz. Suzuka este unul dintre putinele circuite ale lumii cu design mai futuristic, el avand o forma a cifrei 8.', 'Images/Circuit/Suzuka.png');

-- --------------------------------------------------------

--
-- Table structure for table `echipa`
--
-- Creation: Jan 08, 2016 at 06:29 PM
--

DROP TABLE IF EXISTS `echipa`;
CREATE TABLE IF NOT EXISTS `echipa` (
  `IDEchipa` int(255) NOT NULL AUTO_INCREMENT,
  `Short_Den` varchar(100) NOT NULL,
  `Denumire` varchar(100) NOT NULL,
  `Rank` int(255) NOT NULL,
  `Tara` varchar(100) NOT NULL,
  `An_infiintare` year(4) NOT NULL,
  `logo` mediumtext NOT NULL,
  PRIMARY KEY (`IDEchipa`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `echipa`:
--

--
-- Dumping data for table `echipa`
--

INSERT INTO `echipa` (`IDEchipa`, `Short_Den`, `Denumire`, `Rank`, `Tara`, `An_infiintare`, `logo`) VALUES
(1, 'Ferrari', 'Ferrari', 2, 'Italia', 1950, 'images/Echipa/ferrari.jpg'),
(2, 'Mercedes', 'AMG Mercedes', 1, 'Germania', 1954, 'images/Echipa/amg.jpg'),
(3, 'RB', 'Red Bull', 4, 'Marea Britanie', 2005, 'images/Echipa/redbull.jpg'),
(4, 'Williams', 'Williams', 3, 'Marea Britanie', 1977, 'images/Echipa/williams.jpg'),
(5, 'McLaren', 'McLaren', 9, 'Marea Britanie', 1966, 'images/Echipa/mclaren.jpg'),
(6, 'FIndia', 'Force India', 5, 'Marea Britanie', 2008, 'images/Echipa/india.jpg'),
(7, 'Torro', 'Torro Rosso', 7, 'Italia', 2006, 'images/Echipa/torro.jpg'),
(8, 'Lotus', 'Lotus', 6, 'Marea Britanie', 1958, 'images/Echipa/lotus.jpg'),
(9, 'Sauber', 'Sauber', 8, 'Elvetia', 1993, 'images/Echipa/sauber.jpg'),
(10, 'Manor', 'Manor Marussia', 10, 'Marea Britanie', 2012, 'images/Echipa/manor.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `echipe_sponsori`
--
-- Creation: Jan 09, 2016 at 11:25 AM
--

DROP TABLE IF EXISTS `echipe_sponsori`;
CREATE TABLE IF NOT EXISTS `echipe_sponsori` (
  `IDes` int(11) NOT NULL AUTO_INCREMENT,
  `IDEchipa` int(255) NOT NULL,
  `IDSponsor` int(255) NOT NULL,
  PRIMARY KEY (`IDes`),
  KEY `spppp` (`IDSponsor`),
  KEY `IDEchipa` (`IDEchipa`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `echipe_sponsori`:
--   `IDEchipa`
--       `echipa` -> `IDEchipa`
--   `IDSponsor`
--       `sponsori` -> `IDSponsor`
--   `IDEchipa`
--       `echipa` -> `IDEchipa`
--   `IDSponsor`
--       `sponsori` -> `IDSponsor`
--

--
-- Dumping data for table `echipe_sponsori`
--

INSERT INTO `echipe_sponsori` (`IDes`, `IDEchipa`, `IDSponsor`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 31),
(18, 1, 41),
(19, 1, 133),
(20, 2, 1),
(21, 2, 17),
(22, 2, 18),
(23, 2, 19),
(24, 2, 20),
(25, 2, 21),
(26, 2, 22),
(27, 2, 23),
(28, 2, 24),
(29, 2, 25),
(30, 2, 26),
(31, 2, 27),
(32, 2, 28),
(33, 2, 29),
(34, 2, 30),
(35, 2, 31),
(36, 3, 13),
(37, 3, 31),
(38, 3, 32),
(39, 3, 33),
(40, 3, 34),
(41, 3, 35),
(42, 3, 36),
(43, 3, 37),
(44, 3, 38),
(45, 3, 39),
(46, 3, 40),
(47, 3, 42),
(48, 3, 43),
(49, 3, 45),
(50, 3, 46),
(51, 3, 47),
(52, 3, 48),
(53, 3, 49),
(54, 4, 31),
(55, 4, 44),
(56, 4, 50),
(57, 4, 51),
(58, 4, 52),
(59, 4, 53),
(60, 4, 54),
(61, 4, 55),
(62, 4, 56),
(63, 4, 57),
(64, 4, 58),
(65, 4, 59),
(66, 4, 60),
(67, 4, 61),
(68, 4, 62),
(69, 4, 63),
(70, 4, 64),
(71, 4, 65),
(72, 5, 31),
(73, 5, 66),
(74, 5, 67),
(75, 5, 68),
(76, 5, 69),
(77, 5, 70),
(78, 5, 71),
(79, 5, 72),
(80, 5, 73),
(81, 5, 74),
(82, 5, 75),
(83, 5, 76),
(84, 5, 77),
(85, 5, 78),
(86, 6, 31),
(87, 6, 44),
(88, 6, 79),
(89, 6, 80),
(90, 6, 81),
(91, 6, 82),
(92, 6, 83),
(93, 6, 84),
(94, 6, 85),
(95, 6, 86),
(96, 6, 87),
(97, 6, 88),
(98, 6, 89),
(99, 6, 90),
(100, 6, 91),
(101, 6, 92),
(102, 6, 93),
(103, 6, 94),
(104, 6, 95),
(105, 6, 133),
(106, 7, 31),
(107, 7, 33),
(108, 7, 41),
(109, 7, 42),
(110, 7, 43),
(111, 7, 96),
(112, 7, 97),
(113, 7, 98),
(114, 7, 99),
(115, 7, 100),
(116, 8, 13),
(117, 8, 31),
(118, 8, 44),
(119, 8, 101),
(120, 8, 102),
(121, 8, 103),
(122, 8, 104),
(123, 8, 105),
(124, 8, 106),
(125, 8, 107),
(126, 8, 108),
(127, 8, 109),
(128, 8, 110),
(129, 8, 111),
(130, 8, 112),
(131, 8, 113),
(132, 8, 114),
(133, 9, 31),
(134, 9, 115),
(135, 9, 116),
(136, 9, 117),
(137, 9, 118),
(138, 9, 119),
(139, 9, 120),
(140, 9, 121),
(141, 9, 122),
(142, 9, 123),
(143, 9, 124),
(144, 9, 125),
(145, 10, 31),
(146, 10, 126),
(147, 10, 127),
(148, 10, 128),
(149, 10, 129),
(150, 10, 130),
(151, 10, 131),
(152, 10, 132);

-- --------------------------------------------------------

--
-- Table structure for table `etapa`
--
-- Creation: Jan 09, 2016 at 05:01 PM
--

DROP TABLE IF EXISTS `etapa`;
CREATE TABLE IF NOT EXISTS `etapa` (
  `IDEtapa` int(11) NOT NULL AUTO_INCREMENT,
  `IDCircuit` int(11) NOT NULL,
  `Nume_etapa` varchar(300) NOT NULL,
  `Data_etapa` date NOT NULL,
  PRIMARY KEY (`IDEtapa`),
  KEY `IDCircuit` (`IDCircuit`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `etapa`:
--   `IDCircuit`
--       `circuit` -> `IDCircuit`
--   `IDCircuit`
--       `circuit` -> `IDCircuit`
--

--
-- Dumping data for table `etapa`
--

INSERT INTO `etapa` (`IDEtapa`, `IDCircuit`, `Nume_etapa`, `Data_etapa`) VALUES
(1, 1, '2015 FORMULA 1 Rolex Australian Grand Prix', '2015-03-15'),
(2, 2, '2015 FORMULA 1 Petronas Malaysia Grand Prix', '2015-03-29'),
(3, 3, '2015 FORMULA 1 Chinese Grand Prix', '2015-04-12'),
(4, 4, '2015 FORMULA 1 Gulf Air Bahrain Grand Prix', '2015-04-19'),
(5, 5, '2015 FORMULA 1 Gran Premio de Espana Pirelli', '2015-05-10'),
(6, 6, 'FORMULA 1 Grand Prix de Monaco 2015', '2015-05-24'),
(7, 7, 'FORMULA 1 Grand Prix Du Canada 2015', '2015-06-07'),
(8, 8, 'FORMULA 1 Grosser Preis Von Osterreich 2015', '2015-06-21'),
(9, 9, '2015 FORMULA 1 British Grand Prix', '2015-07-05'),
(10, 10, 'FORMULA 1 Pirelli Magyar Nagydij 2015', '2015-07-26'),
(11, 11, '2015 FORMULA 1 SHELL Belgian Grand Prix', '2015-08-23'),
(12, 12, 'FORMULA 1 Gran Premio D''Italia 2015', '2015-09-06'),
(13, 13, '2015 FORMULA 1 Singapore Airlines Grand Prix', '2015-09-20'),
(14, 19, '2015 FORMULA 1 Japanese Grand Prix', '2015-09-27'),
(15, 14, '2015 FORMULA 1 Russian Grand Prix', '2015-10-11'),
(16, 15, '2015 FORMULA 1 US Grand Prix', '2015-10-25'),
(17, 16, '2015 FORMULA 1 Gran Premio De Mexico 2015', '2015-11-01'),
(18, 17, 'FORMULA 1 Grande Premio PETROBRAS DO Brasil 2015', '2015-11-15'),
(19, 18, '2015 FORMULA 1 ETIHAD Airways Abu Dhabi Grand Prix', '2015-11-29');

-- --------------------------------------------------------

--
-- Table structure for table `functie_membru`
--
-- Creation: Jan 12, 2016 at 07:46 PM
--

DROP TABLE IF EXISTS `functie_membru`;
CREATE TABLE IF NOT EXISTS `functie_membru` (
  `IDFunctie` int(255) NOT NULL AUTO_INCREMENT,
  `Functie` varchar(100) NOT NULL,
  `Salariu` int(11) NOT NULL,
  PRIMARY KEY (`IDFunctie`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `functie_membru`:
--

--
-- Dumping data for table `functie_membru`
--

INSERT INTO `functie_membru` (`IDFunctie`, `Functie`, `Salariu`) VALUES
(1, 'President', 20000),
(2, 'CEO', 15000),
(3, 'Designer', 10000),
(4, 'Test Driver', 4500),
(5, 'Director Tehnic', 6800),
(6, 'Manager Proiect', 5400),
(7, 'Pilot', 16000);

-- --------------------------------------------------------

--
-- Table structure for table `masina`
--
-- Creation: Jan 08, 2016 at 06:29 PM
--

DROP TABLE IF EXISTS `masina`;
CREATE TABLE IF NOT EXISTS `masina` (
  `IDMasina` int(255) NOT NULL AUTO_INCREMENT,
  `IDEchipa` int(11) NOT NULL,
  `Denumire_masina` varchar(40) NOT NULL,
  `Model` varchar(100) NOT NULL,
  `Poza` mediumtext NOT NULL,
  PRIMARY KEY (`IDMasina`),
  KEY `IDEchipa` (`IDEchipa`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `masina`:
--   `IDEchipa`
--       `echipa` -> `IDEchipa`
--

--
-- Dumping data for table `masina`
--

INSERT INTO `masina` (`IDMasina`, `IDEchipa`, `Denumire_masina`, `Model`, `Poza`) VALUES
(1, 2, 'Mercedes', 'W06', 'images/Masina/mercedes.jpg'),
(2, 3, 'Red Bull', 'RB11', 'images/Masina/redbull.jpg'),
(3, 4, 'Williams', 'FW37', 'images/Masina/williams.jpg'),
(4, 1, 'Ferrari', 'SF-15T', 'images/Masina/ferrari.jpg'),
(5, 5, 'McLaren', 'MP4-30', 'images/Masina/mclaren.jpg'),
(6, 7, 'Torro Rosso', 'STR10', 'images/Masina/torro.jpg'),
(7, 8, 'Lotus', 'E23', 'images/Masina/lotus.jpg'),
(8, 9, 'Sauber', 'C34', 'images/Masina/sauber.jpg'),
(9, 6, 'Force India', 'VJM07', 'images/Masina/india.jpg'),
(10, 10, 'Manor', 'MR03', 'images/Masina/manor.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `membrii_echipa`
--
-- Creation: Jan 08, 2016 at 06:29 PM
--

DROP TABLE IF EXISTS `membrii_echipa`;
CREATE TABLE IF NOT EXISTS `membrii_echipa` (
  `IDMembru` int(255) NOT NULL AUTO_INCREMENT,
  `IDEchipa` int(11) NOT NULL,
  `IDFunctie` int(11) NOT NULL,
  `Nume` varchar(100) NOT NULL,
  `Prenume` varchar(100) NOT NULL,
  PRIMARY KEY (`IDMembru`),
  KEY `IDEchipa` (`IDEchipa`),
  KEY `IDEchipa_2` (`IDEchipa`),
  KEY `IDFunctie` (`IDFunctie`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `membrii_echipa`:
--   `IDEchipa`
--       `echipa` -> `IDEchipa`
--   `IDFunctie`
--       `functie_membru` -> `IDFunctie`
--

--
-- Dumping data for table `membrii_echipa`
--

INSERT INTO `membrii_echipa` (`IDMembru`, `IDEchipa`, `IDFunctie`, `Nume`, `Prenume`) VALUES
(1, 1, 1, 'Ferrari', 'Enzo'),
(2, 1, 2, 'Arrivabene', 'Maurizio'),
(3, 1, 3, 'Resta ', 'Simone'),
(4, 1, 4, 'Gene ', 'Marc'),
(5, 1, 4, 'Vergne', 'Jean'),
(6, 1, 5, 'Allison', 'James'),
(7, 1, 6, 'Binotto', 'Mattia'),
(8, 2, 1, 'Lauda', 'Niki'),
(9, 2, 2, 'Wolf', 'Toto'),
(10, 2, 3, 'Cowell', 'Andy'),
(11, 2, 4, 'Wehrein', 'Pascal'),
(12, 2, 4, 'Powell', 'Nicky'),
(13, 2, 5, 'Lowe', 'Paddy'),
(14, 2, 6, 'Costa', 'Aldo'),
(15, 3, 1, 'Obe', 'Christian'),
(16, 3, 2, 'Marshall', 'Rob'),
(17, 3, 3, 'Fallows', 'Dan'),
(18, 3, 4, 'Buemi', 'Sebastien'),
(19, 3, 4, 'Costa', 'Antonio'),
(20, 3, 5, 'Obe', 'Adrian'),
(21, 3, 6, 'Monaghan', 'Paul'),
(22, 4, 1, 'Williams', 'Frank'),
(23, 4, 2, 'Odriscoll', 'Mike'),
(24, 4, 3, 'Smedley', 'Rob'),
(25, 4, 4, 'Wolff', 'Susie'),
(26, 4, 4, 'Sutil', 'Adrian'),
(27, 4, 5, 'Williams', 'Claire'),
(28, 4, 6, 'Head', 'Patrick'),
(29, 5, 1, 'Boullier', 'Eric'),
(30, 5, 2, 'Neale', 'Jonathan'),
(31, 5, 3, 'Morris', 'Matt'),
(32, 5, 4, 'Turvey', 'Oliver'),
(33, 5, 4, 'Vandoorne', 'Stoffel'),
(34, 5, 5, 'Goss', 'Tim'),
(35, 5, 6, 'Oatley', 'Neil'),
(36, 6, 1, 'Sahara', 'Subata'),
(37, 6, 2, 'Mallya', 'Vijay'),
(38, 6, 3, 'Fernley', 'Robert'),
(39, 6, 4, 'Curnow', 'Steve'),
(40, 6, 4, 'Smith', 'John'),
(41, 6, 5, 'Green', 'Andrew'),
(42, 6, 6, 'Mccullough', 'Tom'),
(43, 7, 1, 'Watson', 'Graham'),
(44, 7, 2, 'Tost', 'Franz'),
(45, 7, 3, 'Mcjoy', 'Kernon'),
(46, 7, 4, 'Callaghan', 'Jim'),
(47, 7, 4, 'Smith', 'Graham'),
(48, 7, 5, 'Key', 'James'),
(49, 7, 6, 'Ibe', 'John'),
(50, 8, 1, 'Seaby', 'Paul'),
(51, 8, 2, 'Louis', 'Patrick'),
(52, 8, 3, 'Tolliday', 'Martin'),
(54, 8, 4, 'Komatsu', 'Ayao'),
(55, 8, 4, 'Slade', 'Mark'),
(56, 8, 5, 'Chester', 'Nick'),
(57, 8, 6, 'Baker', 'Greg'),
(58, 9, 1, 'Sauber', 'Peter'),
(59, 9, 2, 'Kruse', 'Axel'),
(60, 9, 3, 'Gandelin', 'Eric'),
(61, 9, 4, 'Camezind', 'Reto'),
(62, 9, 4, 'Gardiner', 'Craig'),
(63, 9, 5, 'Smith', 'Mark'),
(64, 9, 6, 'Schuvens', 'Eric'),
(65, 10, 1, 'Lowdon', 'Graheme'),
(66, 10, 2, 'Booth', 'John'),
(67, 10, 3, 'King', 'Jordan'),
(68, 10, 4, 'King', 'Justin'),
(69, 10, 4, 'Fury', 'Tyson'),
(70, 10, 5, 'Mcquilliam', 'John'),
(71, 10, 6, 'Fitzpatrick', 'Stephen');

-- --------------------------------------------------------

--
-- Table structure for table `pilot`
--
-- Creation: Jan 08, 2016 at 06:29 PM
--

DROP TABLE IF EXISTS `pilot`;
CREATE TABLE IF NOT EXISTS `pilot` (
  `IDPilot` int(255) NOT NULL AUTO_INCREMENT,
  `Nume` varchar(100) NOT NULL,
  `Prenume` varchar(100) NOT NULL,
  `Nationalitate` varchar(100) NOT NULL,
  `Data_nasterii` date NOT NULL,
  `Numar` int(11) NOT NULL,
  `Pozitie_actualul_sezon` int(15) NOT NULL,
  `Puncte_sezon` int(255) NOT NULL,
  `Puncte_general` decimal(5,1) NOT NULL,
  `Podiumuri` int(255) NOT NULL,
  `Campionate_mondiale_castigate` int(11) NOT NULL,
  `imagine` mediumtext NOT NULL,
  `IDEchipa` int(255) NOT NULL,
  `IDFunctie` int(11) NOT NULL,
  `IDMasina` int(255) NOT NULL COMMENT '//FK',
  PRIMARY KEY (`IDPilot`),
  KEY `IDMasina` (`IDMasina`),
  KEY `IDEchipa` (`IDEchipa`),
  KEY `IDEchipa_2` (`IDEchipa`),
  KEY `IDFunctie` (`IDFunctie`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `pilot`:
--   `IDEchipa`
--       `echipa` -> `IDEchipa`
--   `IDFunctie`
--       `functie_membru` -> `IDFunctie`
--   `IDMasina`
--       `masina` -> `IDMasina`
--

--
-- Dumping data for table `pilot`
--

INSERT INTO `pilot` (`IDPilot`, `Nume`, `Prenume`, `Nationalitate`, `Data_nasterii`, `Numar`, `Pozitie_actualul_sezon`, `Puncte_sezon`, `Puncte_general`, `Podiumuri`, `Campionate_mondiale_castigate`, `imagine`, `IDEchipa`, `IDFunctie`, `IDMasina`) VALUES
(1, 'Hamilton', 'Lewis', 'Britanica', '1985-01-07', 44, 1, 363, '1849.0', 86, 2, 'Images/Pilot/Hamilton.jpg', 2, 7, 1),
(2, 'Rosberg', 'Nico', 'Germana', '1985-06-27', 6, 2, 297, '1184.5', 40, 0, 'Images/Pilot/Rosberg.jpg', 2, 7, 1),
(3, 'Vettel', 'Sebastian', 'Germana', '1987-07-03', 1, 3, 266, '1884.0', 79, 4, 'Images/Pilot/Vettel.jpg', 1, 7, 4),
(4, 'Bottas', 'Valtteri', 'Finlandeza', '1989-08-28', 77, 4, 136, '326.0', 8, 0, 'Images/Pilot/Bottas.jpg', 4, 7, 3),
(5, 'Raikkonen', 'Kimi', 'Finlandeza', '1979-10-17', 7, 5, 135, '1159.0', 79, 1, 'Images/Pilot/Raikkonen.jpg', 1, 7, 4),
(6, 'Massa', 'Felipe', 'Braziliana', '1981-04-25', 19, 6, 117, '1067.0', 41, 0, 'Images/Pilot/Massa.jpg', 4, 7, 3),
(7, 'Kvyat', 'Daniil ', 'Rusa', '1994-04-26', 26, 7, 94, '102.0', 1, 0, 'Images/Pilot/Kvyat.jpg', 3, 7, 2),
(8, 'Ricciardo', 'Daniel', 'Australiana', '1989-07-01', 3, 8, 84, '352.0', 10, 0, 'Images/Pilot/Ricciardo.jpg', 3, 7, 2),
(9, 'Perez', 'Sergio', 'Mexicana', '1990-01-26', 11, 9, 68, '256.0', 5, 0, 'Images/Pilot/Perez.jpg', 6, 7, 9),
(10, 'Hulkenberg', 'Nico', 'Germana', '1987-08-19', 27, 10, 52, '284.0', 0, 0, 'Images/Pilot/Hulkenberg.jpg', 6, 7, 9),
(11, 'Grosjean', 'Romain', 'Franceza', '1986-04-17', 8, 11, 49, '285.0', 10, 0, 'Images/Pilot/Grosjean.jpg', 8, 7, 7),
(12, 'Verstappen', 'Max', 'Olandeza', '1997-09-30', 33, 12, 49, '49.0', 0, 0, 'Images/Pilot/Verstappen.jpg', 7, 7, 6),
(13, 'Nasr', 'Felipe', 'Braziliana', '1992-08-21', 99, 13, 27, '27.0', 0, 0, 'Images/Pilot/Nasr.jpg', 9, 7, 8),
(14, 'Maldonado', 'Pastor', 'Venezueleana', '1985-03-10', 13, 14, 27, '76.0', 1, 0, 'Images/Pilot/Maldonado.jpg', 8, 7, 7),
(15, 'Sainz', 'Carlos', 'Spaniola', '1994-09-01', 24, 15, 18, '18.0', 0, 0, 'Images/Pilot/Sainz.jpg', 7, 7, 6),
(16, 'Button', 'Jenson', 'Britanica', '1980-01-19', 22, 16, 0, '1214.0', 51, 1, 'Images/Pilot/Button.jpg', 5, 7, 5),
(17, 'Alonso', 'Fernando', 'Spaniola', '1981-07-29', 14, 17, 11, '1778.0', 97, 2, 'Images/Pilot/Alonso.jpg', 5, 7, 5),
(18, 'Ericsson', 'Marcus', 'Suedeza', '1990-09-02', 12, 18, 9, '9.0', 0, 0, 'Images/Pilot/Ericsson.jpg', 9, 7, 8),
(19, 'Merhi', 'Roberto', 'Spaniola', '1991-03-22', 9, 19, 0, '0.0', 0, 0, 'Images/Pilot/Merhi.jpg', 10, 7, 10),
(20, 'Rossi', 'Alexander', 'Americana', '1991-09-25', 5, 20, 0, '0.0', 0, 0, 'Images/Pilot/Rossi.jpg', 10, 7, 10),
(21, 'Stevens', 'Will', 'Britanica', '1991-06-28', 2, 21, 0, '0.0', 0, 0, 'Images/Pilot/Stevens.jpg', 10, 7, 10);

-- --------------------------------------------------------

--
-- Table structure for table `specificatii`
--
-- Creation: Jan 08, 2016 at 06:29 PM
--

DROP TABLE IF EXISTS `specificatii`;
CREATE TABLE IF NOT EXISTS `specificatii` (
  `IDSpecificatie` int(255) NOT NULL AUTO_INCREMENT,
  `Denumire` varchar(100) NOT NULL,
  PRIMARY KEY (`IDSpecificatie`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `specificatii`:
--

--
-- Dumping data for table `specificatii`
--

INSERT INTO `specificatii` (`IDSpecificatie`, `Denumire`) VALUES
(1, 'Producator_Motor'),
(2, 'Model_motor'),
(3, 'Producator_pneuri'),
(4, 'Model_Pneuri'),
(5, 'Putere(CP)'),
(6, 'Greutate(kg)'),
(7, 'Capacitate_cilindrica');

-- --------------------------------------------------------

--
-- Table structure for table `sponsori`
--
-- Creation: Jan 09, 2016 at 12:31 PM
--

DROP TABLE IF EXISTS `sponsori`;
CREATE TABLE IF NOT EXISTS `sponsori` (
  `IDSponsor` int(255) NOT NULL AUTO_INCREMENT,
  `Nume` varchar(100) NOT NULL,
  `logo_sponsor` mediumtext NOT NULL,
  PRIMARY KEY (`IDSponsor`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `sponsori`:
--

--
-- Dumping data for table `sponsori`
--

INSERT INTO `sponsori` (`IDSponsor`, `Nume`, `logo_sponsor`) VALUES
(1, 'Puma', 'images/Sponsor/1.jpg'),
(2, 'Mahle', 'images/Sponsor/2.jpg'),
(3, 'Infor', 'images/Sponsor/3.jpg'),
(4, 'Haas', 'images/Sponsor/4.jpg'),
(5, 'OMR', 'images/Sponsor/5.jpg'),
(6, 'Oakley', 'images/Sponsor/6.jpg'),
(7, 'SKF', 'images/Sponsor/7.jpg'),
(8, 'NGK', 'images/Sponsor/8.jpg'),
(9, 'Magneti', 'images/Sponsor/9.jpg'),
(10, 'Brembo', 'images/Sponsor/10.jpg'),
(11, 'Iveco', 'images/Sponsor/11.jpg'),
(12, 'Bell', 'images/Sponsor/12.jpg'),
(13, 'OZ', 'images/Sponsor/13.jpg'),
(14, 'Honeywell', 'images/Sponsor/14.jpg'),
(15, 'Technogym', 'images/Sponsor/15.jpg'),
(16, 'Veuve Clicquot', 'images/Sponsor/16.jpg'),
(17, 'Petronas', 'images/Sponsor/17.jpg'),
(18, 'Blackberry', 'images/Sponsor/18.jpg'),
(19, 'UBS', 'images/Sponsor/19.jpg'),
(20, 'Qualcomm', 'images/Sponsor/20.jpg'),
(21, 'Allianz', 'images/Sponsor/21.jpg'),
(22, 'Epson', 'images/Sponsor/22.jpg'),
(23, 'Tumi', 'images/Sponsor/23.jpg'),
(24, 'Tata', 'images/Sponsor/24.jpg'),
(25, 'DB Schenker', 'images/Sponsor/25.jpg'),
(26, 'Assos', 'images/Sponsor/26.jpg'),
(27, 'Hugo Boss', 'images/Sponsor/27.jpg'),
(28, 'Monster', 'images/Sponsor/28.jpg'),
(29, 'Starwood', 'images/Sponsor/29.jpg'),
(30, 'Bose', 'images/Sponsor/30.jpg'),
(31, 'Pirelli', 'images/Sponsor/31.jpg'),
(32, 'Total', 'images/Sponsor/32.jpg'),
(33, 'Renault', 'images/Sponsor/33.jpg'),
(34, 'Rauch', 'images/Sponsor/34.jpg'),
(35, 'Exness', 'images/Sponsor/35.jpg'),
(36, 'Casio', 'images/Sponsor/36.jpg'),
(37, 'Pepe Jeans', 'images/Sponsor/37.jpg'),
(38, 'Singha', 'images/Sponsor/38.jpg'),
(39, 'At&T', 'images/Sponsor/39.jpg'),
(40, 'Hisense', 'images/Sponsor/40.jpg'),
(41, 'Claro', 'images/Sponsor/41.jpg'),
(42, 'Siemens', 'images/Sponsor/42.jpg'),
(43, 'Red Bull', 'images/Sponsor/43.jpg'),
(44, 'Alpinestars', 'images/Sponsor/44.jpg'),
(45, 'Scott', 'images/Sponsor/45.jpg'),
(46, 'Matrix', 'images/Sponsor/46.jpg'),
(47, 'Geox', 'images/Sponsor/47.jpg'),
(48, 'Sabelt', 'images/Sponsor/48.jpg'),
(49, 'DMG Mori', 'images/Sponsor/49.jpg'),
(50, 'Martini', 'images/Sponsor/50.jpg'),
(51, 'Rexona', 'images/Sponsor/51.jpg'),
(52, 'Randstad', 'images/Sponsor/52.jpg'),
(53, 'Petrobras', 'images/Sponsor/53.jpg'),
(54, 'Avangarde', 'images/Sponsor/54.jpg'),
(55, 'Genworth', 'images/Sponsor/55.jpg'),
(56, 'Wihuri', 'images/Sponsor/56.jpg'),
(57, 'Hackett', 'images/Sponsor/57.jpg'),
(58, 'Oris', 'images/Sponsor/58.jpg'),
(59, 'Kemppi', 'images/Sponsor/59.jpg'),
(60, 'BT', 'images/Sponsor/60.jpg'),
(61, 'Dtex', 'images/Sponsor/61.jpg'),
(62, 'GKN', 'images/Sponsor/62.jpg'),
(63, 'PPG Industrie', 'images/Sponsor/63.jpg'),
(64, 'Michael', 'images/Sponsor/64.jpg'),
(65, 'SIA', 'images/Sponsor/65.jpg'),
(66, 'Mobil1', 'images/Sponsor/66.jpg'),
(67, 'SAP', 'images/Sponsor/67.jpg'),
(68, 'Esso', 'images/Sponsor/68.jpg'),
(69, 'Akebono', 'images/Sponsor/69.jpg'),
(70, 'Johnnie Walker', 'images/Sponsor/70.jpg'),
(71, 'Tagheur', 'images/Sponsor/71.jpg'),
(72, 'Segafredo', 'images/Sponsor/72.jpg'),
(73, 'CNN', 'images/Sponsor/73.jpg'),
(74, 'Hilton', 'images/Sponsor/74.jpg'),
(75, 'Asics', 'images/Sponsor/75.jpg'),
(76, 'Enkei', 'images/Sponsor/76.jpg'),
(77, 'Kenwood', 'images/Sponsor/77.jpg'),
(78, 'Mazak', 'images/Sponsor/78.jpg'),
(79, 'Kingfisher', 'images/Sponsor/79.jpg'),
(80, 'Smirnoff', 'images/Sponsor/80.jpg'),
(81, 'Telcel', 'images/Sponsor/81.jpg'),
(82, 'Telmex', 'images/Sponsor/82.jpg'),
(83, 'Nec', 'images/Sponsor/83.jpg'),
(84, 'Hype', 'images/Sponsor/84.jpg'),
(85, 'Royal Challenge', 'images/Sponsor/85.jpg'),
(86, 'Koni', 'images/Sponsor/86.jpg'),
(87, 'Accelerate', 'images/Sponsor/87.jpg'),
(88, 'Univa', 'images/Sponsor/88.jpg'),
(89, 'Brandon', 'images/Sponsor/89.jpg'),
(90, 'Skullcandy', 'images/Sponsor/90.jpg'),
(91, 'Still', 'images/Sponsor/91.jpg'),
(92, 'UPS Direct', 'images/Sponsor/92.jpg'),
(93, 'Speedy', 'images/Sponsor/93.jpg'),
(94, 'Condeco', 'images/Sponsor/94.jpg'),
(95, 'VoIP', 'images/Sponsor/95.jpg'),
(96, 'Cepsa', 'images/Sponsor/96.jpg'),
(97, 'Del Conca', 'images/Sponsor/97.jpg'),
(98, 'Riedel', 'images/Sponsor/98.jpg'),
(99, 'Nova Chemicals', 'images/Sponsor/99.jpg'),
(100, 'Sapinda', 'images/Sponsor/100.jpg'),
(101, 'Group Lotus', 'images/Sponsor/101.jpg'),
(102, 'PDVSA', 'images/Sponsor/102.jpg'),
(103, 'Saxo Bank', 'images/Sponsor/103.jpg'),
(104, 'MS Dynamics', 'images/Sponsor/104.jpg'),
(105, 'Yota', 'images/Sponsor/105.jpg'),
(106, 'Genii', 'images/Sponsor/106.jpg'),
(107, 'Emc', 'images/Sponsor/107.jpg'),
(108, 'Richard Mille', 'images/Sponsor/108.jpg'),
(109, 'Interproteccion', 'images/Sponsor/109.jpg'),
(110, 'Boeing', 'images/Sponsor/110.jpg'),
(111, 'Digipen', 'images/Sponsor/111.jpg'),
(112, 'Altran', 'images/Sponsor/112.jpg'),
(113, 'Elysium', 'images/Sponsor/113.jpg'),
(114, 'Perkin Elmer', 'images/Sponsor/114.jpg'),
(115, 'Banco do Brasil', 'images/Sponsor/115.jpg'),
(116, 'Silan', 'images/Sponsor/116.jpg'),
(117, 'Oerlikon', 'images/Sponsor/117.jpg'),
(118, 'Emil Frey', 'images/Sponsor/118.jpg'),
(119, 'Certina', 'images/Sponsor/119.jpg'),
(120, 'Mitsubishi', 'images/Sponsor/120.jpg'),
(121, 'Netapp', 'images/Sponsor/121.jpg'),
(122, 'Wikland', 'images/Sponsor/122.jpg'),
(123, 'OMP', 'images/Sponsor/123.jpg'),
(124, 'Thomann', 'images/Sponsor/124.jpg'),
(125, 'Walter Meier', 'images/Sponsor/125.jpg'),
(126, 'Armin Strom', 'images/Sponsor/126.jpg'),
(127, 'AirBNB', 'images/Sponsor/127.jpg'),
(128, 'FlexBox', 'images/Sponsor/128.jpg'),
(129, 'Coupons', 'images/Sponsor/129.jpg'),
(130, 'Errea', 'images/Sponsor/130.jpg'),
(131, 'Sparco', 'images/Sponsor/131.jpg'),
(132, 'Friday', 'images/Sponsor/132.jpg'),
(133, 'Santander', 'images/Sponsor/133.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--
-- Creation: Jan 10, 2016 at 02:31 PM
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '',
  `nickname` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_n` (`username`),
  UNIQUE KEY `user_e` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `user`:
--

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `nickname`, `email`, `password`) VALUES
(1, 'razvan', 'Razvan Vasile', 'razvan@gmail.com', 'password'),
(2, 'robert', 'Robert Nedelcu', 'robert@gmail.com', 'password1');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `arespecificatii`
--
ALTER TABLE `arespecificatii`
  ADD CONSTRAINT `arespecificatii_ibfk_1` FOREIGN KEY (`IDMasina`) REFERENCES `masina` (`IDMasina`),
  ADD CONSTRAINT `arespecificatii_ibfk_2` FOREIGN KEY (`IDSpecificatie`) REFERENCES `specificatii` (`IDSpecificatie`);

--
-- Constraints for table `echipe_sponsori`
--
ALTER TABLE `echipe_sponsori`
  ADD CONSTRAINT `echipe_sponsori_ibfk_1` FOREIGN KEY (`IDEchipa`) REFERENCES `echipa` (`IDEchipa`),
  ADD CONSTRAINT `spppp` FOREIGN KEY (`IDSponsor`) REFERENCES `sponsori` (`IDSponsor`);

--
-- Constraints for table `etapa`
--
ALTER TABLE `etapa`
  ADD CONSTRAINT `etapa_ibfk_1` FOREIGN KEY (`IDCircuit`) REFERENCES `circuit` (`IDCircuit`);

--
-- Constraints for table `masina`
--
ALTER TABLE `masina`
  ADD CONSTRAINT `masina_ibfk_1` FOREIGN KEY (`IDEchipa`) REFERENCES `echipa` (`IDEchipa`);

--
-- Constraints for table `membrii_echipa`
--
ALTER TABLE `membrii_echipa`
  ADD CONSTRAINT `membrii_echipa_ibfk_1` FOREIGN KEY (`IDEchipa`) REFERENCES `echipa` (`IDEchipa`),
  ADD CONSTRAINT `membrii_echipa_ibfk_2` FOREIGN KEY (`IDFunctie`) REFERENCES `functie_membru` (`IDFunctie`);

--
-- Constraints for table `pilot`
--
ALTER TABLE `pilot`
  ADD CONSTRAINT `pilot_ibfk_2` FOREIGN KEY (`IDEchipa`) REFERENCES `echipa` (`IDEchipa`),
  ADD CONSTRAINT `pilot_ibfk_3` FOREIGN KEY (`IDFunctie`) REFERENCES `functie_membru` (`IDFunctie`),
  ADD CONSTRAINT `pilot_ibfk_4` FOREIGN KEY (`IDMasina`) REFERENCES `masina` (`IDMasina`);


--
-- Metadata
--
USE `phpmyadmin`;

--
-- Metadata for arespecificatii
--

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'formula1', 'arespecificatii', '{"sorted_col":"`arespecificatii`.`IDAre`  DESC"}', '2015-12-22 18:29:08');

--
-- Metadata for circuit
--

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'formula1', 'circuit', '{"sorted_col":"`IDCircuit` ASC"}', '2016-01-11 01:40:11');

--
-- Metadata for echipa
--

--
-- Metadata for echipe_sponsori
--

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'formula1', 'echipe_sponsori', '{"sorted_col":"`echipe_sponsori`.`IDes` ASC"}', '2016-01-09 11:26:16');

--
-- Metadata for etapa
--

--
-- Metadata for functie_membru
--

--
-- Metadata for masina
--

--
-- Metadata for membrii_echipa
--

--
-- Metadata for pilot
--

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'formula1', 'pilot', '{"sorted_col":"`Pozitie_actualul_sezon` ASC"}', '2016-01-06 12:59:31');

--
-- Metadata for specificatii
--

--
-- Metadata for sponsori
--

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'formula1', 'sponsori', '{"sorted_col":"`sponsori`.`IDSponsor`  DESC"}', '2016-01-11 00:07:35');

--
-- Metadata for user
--

--
-- Metadata for formula1
--

--
-- Dumping data for table `pma__relation`
--

INSERT INTO `pma__relation` (`master_db`, `master_table`, `master_field`, `foreign_db`, `foreign_table`, `foreign_field`) VALUES
('formula1', 'echipe_sponsori', 'IDEchipa', 'formula1', 'echipa', 'IDEchipa'),
('formula1', 'echipe_sponsori', 'IDSponsor', 'formula1', 'sponsori', 'IDSponsor'),
('formula1', 'etapa', 'IDCircuit', 'formula1', 'circuit', 'IDCircuit');

--
-- Dumping data for table `pma__pdf_pages`
--

INSERT INTO `pma__pdf_pages` (`db_name`, `page_descr`) VALUES
('formula1', 'ddd');

SET @LAST_PAGE = LAST_INSERT_ID();

--
-- Dumping data for table `pma__table_coords`
--

INSERT INTO `pma__table_coords` (`db_name`, `table_name`, `pdf_page_number`, `x`, `y`) VALUES
('formula1', 'arespecificatii', @LAST_PAGE, 759, 285),
('formula1', 'circuit', @LAST_PAGE, 821, 42),
('formula1', 'echipa', @LAST_PAGE, 326, 43),
('formula1', 'echipe_sponsori', @LAST_PAGE, 419, 580),
('formula1', 'functie_membru', @LAST_PAGE, 459, 491),
('formula1', 'masina', @LAST_PAGE, 735, 534),
('formula1', 'membrii_echipa', @LAST_PAGE, 449, 344),
('formula1', 'pilot', @LAST_PAGE, 1155, 56),
('formula1', 'specificatii', @LAST_PAGE, 554, 40),
('formula1', 'sponsori', @LAST_PAGE, 40, 31);

--
-- Dumping data for table `pma__pdf_pages`
--

INSERT INTO `pma__pdf_pages` (`db_name`, `page_descr`) VALUES
('formula1', 'Formula 1 Database Final');

SET @LAST_PAGE = LAST_INSERT_ID();

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
