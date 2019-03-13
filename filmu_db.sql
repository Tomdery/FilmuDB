-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 13, 2019 at 09:54 
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `filmu_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `filmai`
--

CREATE TABLE `filmai` (
  `filmo_id` int(6) NOT NULL,
  `pavadinimas` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_lithuanian_ci DEFAULT NULL,
  `aprasymas` varchar(255) CHARACTER SET utf8 COLLATE utf8_lithuanian_ci DEFAULT NULL,
  `premjeros_data` year(4) DEFAULT NULL,
  `zanro_id` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `filmai`
--

INSERT INTO `filmai` (`filmo_id`, `pavadinimas`, `aprasymas`, `premjeros_data`, `zanro_id`) VALUES
(1, 'Bethovenas. Gyvenimo dienos', 'Viena, 1813 m. Kompozitorius Ludwigas van Beethovenas (akt. Donatas Banionis) vis labiau skursta. Nesutarimus su broliais keičia slaptosios policijos vizitai – jai nepriimtinos demokratiškos menininko pažiūros.', 1976, 2),
(2, 'Juodaodis klano narys', 'Aštunto dešimtmečio pradžia Jungtinėse Amerikos Valstijose. Ronas Stalvortas - pirmasis afroamerikietis policijos detektyvas Kolorado Sprinso policijos departamente. ', 2018, 10),
(3, 'Mažoji Italija', 'Jauna porelė išgyvena patį romantiškiausią savo gyvenimo laikotarpį. Tačiau jiems tenka slėpti savo meilę nuo tėvų. Jų tėvai turi konkuruojančias picerijas Mažosios Italijos kvartale. ', 2018, 4),
(4, 'Ozo legendos. Sugrįžimas į Smaragdo miestą', 'Šiuolaikiškai pateikta, naujais personažais ir įvykiais papildyta animacijos juosta pagal Lymano Franko Baumo „Ozo šalies burtininko“ istoriją nukels didelius ir mažus į stebuklingą šalį, kur herojai gaus svarbių draugystės pamokų. Praūžus uraganui, maža ', 2013, 6),
(5, 'Ieškoma auklė', '18 - metė Endži atvyksta į nedidelį koledžo miestelį. Ją pasitinka kambariokė - narkomanė, kambarys be lovos ir nemalonus jausmas, jog kažkas ją stebi. Būdama atsidavusi krikščionė, ramybės ieško bažnyčioje, kur sutinka mielą vaikinuką Riką, kuris jai pra', 2008, 15),
(6, 'Žalioji knyga', 'Pagal tikrą istoriją sukurta biografinė drama, pasakojanti apie netikėtą inteligentiško, talentingo juodaodžio pianisto Donaldo Širlio ir netašyto italų kilmės apsaugininko iš Bronkso – Frenkio „Lūpos“ Valelongos draugystę. Praėjusio amžiaus viduryje (fil', 2018, 4),
(7, 'Bohemijos rapsodija', '„Bohemijos Rapsodija“ – legendinės britų roko grupės „Queen“, jų muzikos ir išskirtinio vokalisto Fredžio Merkurio, ne tik nugalėjusio stereotipus, bet ir tapusio vienu populiariausių muzikantų visoje planetoje, šventė! Fenomenalus ir meteorinis grupės iš', 2018, 2),
(8, 'Venomas', 'Kompanijos „Marvel“ visata pasipildys dar vienu antiherojumi: į kino teatrus atkeliauja „Venomas“.\r\n\r\nKompanijos „Marvel“ komiksų herojus Edis Brokas / Venomas kino žiūrovams pirmą kartą buvo pristatytas 2007-aisiais, filme „Žmogus voras 3”. Komiksuose Ve', 2018, 3),
(9, 'Pasakiškai turtingi', 'Filmas pasakoja dviejų jaunų įsimylėjėlių Reičel ir Niko istoriją. Iš pirmo žvilgsnio istorija niekuo neypatinga: Reičel – Niujorko universiteto ekonomikos dėstytoja, kuriai žadama puiki karjera. Nikas – tame pačiame universitete dėstantis istorijos profe', 2018, 4),
(10, 'Slendermenas', 'Viskas prasidėjo 2009-aisiais, kuomet vienas interneto puslapio „Something Awful“ kūrėjų patalpino pora nuotraukų, kuriose neaiškiai matėsi aukšto, kostiumuoto, ilgomis rankomis ir tarsi migla aptrauktu veidu vyro figūra. Parašai po nuotraukomis skelbė ap', 2018, 5),
(11, 'Dramblio daina', 'Režisieriaus Charles Biname režisuotame filme, pagal Nicolas Billon pjesę, veiksmas vyksta 6-ąjame praėjusio amžiaus dešimtmetyje. Xavier Dolanas vaidina psichiatrinės ligoninės pacientą Maiklą, pas kurį atvyksta daktaras Grynas pasikalbėti apie aplinkybe', 2014, 7),
(12, 'Pašėlęs greitis', 'Kevinas Hokinsas yra profesionalus prabangių automobilių vagis, vykdantis įtakingų šefų užsakymus. Likimo valia Kevinas susitinka savo seną meilę Peni. O jai visiškai nepatinka Kevino nešvarūs darbeliai. Nepatinka tie darbeliai ir pačiam Kevinui. Jis ima ', 2008, 8),
(13, 'Žmogus-Voras: Į naują visatą', 'Naujoje animacinėje juostoje žmogus voras žengia į paralelines Visatas. Visi žino Žmogaus-voro istoriją: radioaktyvus voras įkanda Piteriui Parkeriui ir vaikinas tampa antžmogiškų galių turinčiu superherojumi. Tačiau ši istorija yra teisinga tik mūsų Visa', 2018, 1),
(14, 'Vagių karalius', '2015-ųjų metų balandį buvo apšvarinta Londono „Hatton Garden“ rajone įsikūrusi asmeninių seifų saugykla. Nukentėjusios kompanijos duomenimis, įsilaužėliai pavogė brangakmenių ir grynųjų pinigų už maždaug 200 milijonų svarų sterlingų. Didžiausia Anglijos i', 2018, 10),
(15, 'Pagonių žiedas', 'Tai penkerius metus kurtas, bene brangiausias filmas Latvijos kino istorijoje apie XIII amžiuje vykusias nuožmias žiemgalių, žemaičių, lietuvių ir prūsų kovas su kryžiuočiais.', 2018, 11),
(16, 'Chaosas', 'Vagių gauja užgrobia banką, paimdami įkaitais visus, kas jame buvo. Policininkų apsuptyje, gangsterių vadeiva išsikviečia derybininką – detektyvą Konersą. Kadangi Konerso reputacija bloga, jam vadovauja naujokas - pareigūnas Dekeris.', 2005, 12),
(17, 'Žmogus prieš...', 'Išlikimo realybės šou vedėjas Dagas penkioms dienoms be maisto ir vandens apsigyvena laukinėje gamtoje. Čia jis turi nufilmuoti vieną iš savo laidos serijų. Vyras pats kamera įamžina visus iššūkius. Naktį jį pažadina stiprus garsas, ima vykti keisti dalyk', 2015, 13),
(18, 'Sveika, sužadėtine', 'Everetas Stounas (akt. D. Mulroney) – mylimiausias sūnus didžiulėje, vieningoje ir susitelkusioje kaip kumštis Stounų šeimoje. Šeimoje, kuri anaiptol nelengvai įsileidžia į savo gretas pašaliečius. Vargšelė Evereto mergina Meredit (akt. S. J. Parker) net ', 2005, 14),
(19, 'Ramus ežeras: palikimas', 'Jaunųjų tyrinėtojų komanda bando atskleisti jokiuose žemėlapiuose nepažymėtos ir elektrine tvora aptvertos vietos paslaptis. Pasiekę ežero vidurį herojai aptinka salą su apleistu pastatu, kuriame, pasirodo, gyvena pabaisa, ryjanti tvorą nesibaiminančius p', 2018, 15),
(20, 'Smurto slėnyje', 'Paslaptingas nepažįstamasis ir atsitiktinis smurto išpuolis įvelia nusikaltėlių ir pakvaišėlių miestelį į kruvinas keršto kryžkeles.', 2016, 16),
(23, 'Mar adentro', 'Aprasymo nera', 2004, 2),
(24, 'Trainspotting', 'Aprasymo nera', 1996, 10),
(25, 'Faa yeung nin wa', 'Aprasymo nera', 2000, 10),
(26, 'The Man Who Wasn''t There', 'Aprasymo nera', 2001, 12),
(27, 'Pulp Fiction', 'Aprasymo nera', 1994, 12),
(28, 'No Country for Old Men', 'Aprasymo nera', 2007, 16),
(29, 'M�n som hatar kvinnor', 'Aprasymo nera', 2009, 16),
(30, 'Memento', 'Aprasymo nera', 2000, 16),
(31, 'The Dark Knight', 'Aprasymo nera', 2008, 8),
(32, 'The Shawshank Redemption', 'Aprasymo nera', 1994, 10),
(33, 'Schindler''s List', 'Aprasymo nera', 1993, 2),
(34, 'Idi i smotri', 'Aprasymo nera', 1985, 9),
(35, 'Das Leben der Anderen', 'Aprasymo nera', 2006, 10),
(36, 'Lola rennt', 'Aprasymo nera', 1998, 12),
(37, 'Into the Wild', 'Aprasymo nera', 2007, 2),
(38, 'Le scaphandre et le papillon', 'Aprasymo nera', 2007, 2),
(39, 'No Smoking', 'Aprasymo nera', 2007, 10),
(40, 'Dev.D', 'Aprasymo nera', 2009, 4),
(41, 'Black Friday', 'Aprasymo nera', 2004, 8),
(42, 'Hotel Rwanda', 'Aprasymo nera', 2004, 11),
(43, 'Pather Panchali', 'Aprasymo nera', 1955, 10),
(44, 'Goopy Gyne Bagha Byne', 'Aprasymo nera', 1969, 6),
(45, 'Mou gaan dou', 'Aprasymo nera', 2002, 12),
(46, 'The Pursuit of Happyness', 'Aprasymo nera', 2006, 10),
(47, 'The Matrix', 'Aprasymo nera', 1999, 8),
(48, 'Requiem for a Dream', 'Aprasymo nera', 2000, 10),
(49, 'Pi', 'Aprasymo nera', 1998, 15),
(50, 'Perfume: The Story of a Murderer', 'Aprasymo nera', 2006, 12),
(51, 'Gran Torino', 'Aprasymo nera', 2008, 10),
(52, 'Fight Club', 'Aprasymo nera', 1999, 10),
(53, 'Trois couleurs: Bleu', 'Aprasymo nera', 1993, 6),
(54, 'La double vie de V�ronique', 'Aprasymo nera', 1991, 6),
(55, 'Kr�tki film o zabijaniu', 'Aprasymo nera', 1988, 12),
(56, 'The Last King of Scotland', 'Aprasymo nera', 2006, 11),
(57, 'Sen to Chihiro no kamikakushi', 'Aprasymo nera', 2001, 1),
(58, 'Meghe Dhaka Tara', 'Aprasymo nera', 1960, 10),
(59, 'Jukti, Takko Aar Gappo', 'Aprasymo nera', 1977, 10),
(60, 'Charulata', 'Aprasymo nera', 1964, 14),
(61, 'The Shining', 'Aprasymo nera', 1980, 15),
(62, 'The Machinist', 'Aprasymo nera', 2004, 16),
(63, 'Forrest Gump', 'Aprasymo nera', 1994, 14),
(64, '� bout de souffle', 'Aprasymo nera', 1960, 12),
(65, 'Modern Times', 'Aprasymo nera', 1936, 4),
(66, 'Hable con ella', 'Aprasymo nera', 2002, 10),
(67, 'Cidade de Deus', 'Aprasymo nera', 2002, 12),
(68, 'Sunshine', 'Aprasymo nera', 2007, 3),
(69, 'Gattaca', 'Aprasymo nera', 1997, 16),
(70, 'The Others', 'Aprasymo nera', 2001, 15),
(71, 'Ringu', 'Aprasymo nera', 1998, 15),
(72, 'Solyaris', 'Aprasymo nera', 1971, 10),
(73, 'Andrey Rublev', 'Aprasymo nera', 1966, 11),
(74, 'Psycho', 'Aprasymo nera', 1960, 16),
(75, 'Gangs of New York', 'Aprasymo nera', 2002, 12),
(76, 'American Beauty', 'Aprasymo nera', 1999, 10),
(77, 'Dances with Wolves', 'Aprasymo nera', 1990, 10),
(78, 'Bari Theke Paliye', 'Aprasymo nera', 1958, 10),
(79, 'Dosar', 'Aprasymo nera', 2006, 10),
(80, 'Utsab', 'Aprasymo nera', 2000, 10),
(81, 'Suraj Ka Satvan Ghoda', 'Aprasymo nera', 1992, 14),
(82, 'The Godfather', 'Aprasymo nera', 1972, 12),
(83, 'Auf der anderen Seite', 'Aprasymo nera', 2007, 10),
(84, 'Gegen die Wand', 'Aprasymo nera', 2004, 14),
(85, 'Good Will Hunting', 'Aprasymo nera', 1997, 14),
(86, 'Oldeuboi', 'Aprasymo nera', 2003, 8),
(87, 'Eternal Sunshine of the Spotless Mind', 'Aprasymo nera', 2004, 3),
(88, 'La notte', 'Aprasymo nera', 1961, 10),
(89, '8�', 'Aprasymo nera', 1963, 10),
(90, 'Mia aioniotita kai mia mera', 'Aprasymo nera', 1998, 10),
(91, 'The Usual Suspects', 'Aprasymo nera', 1995, 5),
(92, 'Johnny Gaddaar', 'Aprasymo nera', 2007, 5),
(93, '28 Days Later...', 'Aprasymo nera', 2002, 3),
(94, 'Blood Diamond', 'Aprasymo nera', 2006, 16),
(95, 'Moon', 'Aprasymo nera', 2009, 5),
(96, 'Basic Instinct', 'Aprasymo nera', 1992, 5),
(97, 'Wo hu cang long', 'Aprasymo nera', 2000, 8),
(98, 'The Ice Storm', 'Aprasymo nera', 1997, 10),
(99, 'Little Miss Sunshine', 'Aprasymo nera', 2006, 4),
(100, 'Le fabuleux destin d''Am�lie Poulain', 'Aprasymo nera', 2001, 4),
(101, 'The Prestige', 'Aprasymo nera', 2006, 5),
(102, 'Mulholland Dr.', 'Aprasymo nera', 2001, 16),
(103, 'Avatar', 'Aprasymo nera', 2009, 3),
(104, 'A Beautiful Mind', 'Aprasymo nera', 2001, 2),
(105, 'Good Bye Lenin!', 'Aprasymo nera', 2003, 14),
(106, 'Reds', 'Aprasymo nera', 1981, 2),
(107, 'Terminator 2: Judgment Day', 'Aprasymo nera', 1991, 8),
(108, 'The Fighter', 'Aprasymo nera', 2010, 2),
(109, 'Boogie Nights', 'Aprasymo nera', 1997, 10),
(110, 'The Wrestler', 'Aprasymo nera', 2008, 10),
(111, 'Revolutionary Road', 'Aprasymo nera', 2008, 10),
(112, 'Lage Raho Munna Bhai', 'Aprasymo nera', 2006, 3),
(113, 'Panic Room', 'Aprasymo nera', 2002, 16),
(114, 'The Gods Must Be Crazy', 'Aprasymo nera', 1980, 4),
(115, 'Born Free', 'Aprasymo nera', 1966, 10),
(116, 'Ladri di biciclette', 'Aprasymo nera', 1948, 10),
(117, 'Catch Me If You Can', 'Aprasymo nera', 2002, 2),
(118, 'Letters from Iwo Jima', 'Aprasymo nera', 2006, 11),
(119, 'Maqbool', 'Aprasymo nera', 2003, 16),
(120, 'Gol Maal', 'Aprasymo nera', 1979, 4),
(121, 'Apocalypse Now', 'Aprasymo nera', 1979, 9),
(122, 'Pred dozhdot', 'Aprasymo nera', 1994, 9),
(123, 'Dancer in the Dark', 'Aprasymo nera', 2000, 6),
(124, 'Doctor Zhivago', 'Aprasymo nera', 1965, 9),
(125, 'The Sound of Music', 'Aprasymo nera', 1965, 6),
(126, 'Being John Malkovich', 'Aprasymo nera', 1999, 4),
(127, 'Brazil', 'Aprasymo nera', 1985, 3),
(128, 'Pierrot le fou', 'Aprasymo nera', 1965, 10),
(129, 'Todo sobre mi madre', 'Aprasymo nera', 1999, 10),
(130, 'Udaan', 'Aprasymo nera', 2010, 10),
(131, 'American History X', 'Aprasymo nera', 1998, 10),
(132, 'Dr. Strangelove or: How I Learned to Stop Worrying', 'Aprasymo nera', 1964, 4),
(133, 'O Brother, Where Art Thou?', 'Aprasymo nera', 2000, 4),
(134, 'Abre los ojos', 'Aprasymo nera', 1997, 3),
(135, '[Rec]', 'Aprasymo nera', 2007, 15),
(136, 'Never Let Me Go', 'Aprasymo nera', 2010, 3),
(137, 'The Beach', 'Aprasymo nera', 2000, 16),
(138, 'The Sixth Sense', 'Aprasymo nera', 1999, 5),
(139, 'Naked Lunch', 'Aprasymo nera', 1991, 10),
(140, 'One Hour Photo', 'Aprasymo nera', 2002, 16),
(141, 'A Single Man', 'Aprasymo nera', 2009, 14),
(142, 'There Will Be Blood', 'Aprasymo nera', 2007, 10),
(143, 'A Wednesday', 'Aprasymo nera', 2008, 10),
(144, 'Mumbai Meri Jaan', 'Aprasymo nera', 2008, 10),
(145, 'Ishqiya', 'Aprasymo nera', 2010, 4),
(146, 'Peepli (Live)', 'Aprasymo nera', 2010, 4),
(147, 'Inception', 'Aprasymo nera', 2010, 8),
(148, '3 Idiots', 'Aprasymo nera', 2009, 4),
(149, 'Apaharan', 'Aprasymo nera', 2005, 8),
(150, 'Les quatre cents coups', 'Aprasymo nera', 1959, 10),
(151, 'Vozvrashchenie', 'Aprasymo nera', 2003, 10),
(152, 'Baraka', 'Aprasymo nera', 1992, 11),
(153, 'Capitalism: A Love Story', 'Aprasymo nera', 2009, 12),
(154, 'My Enemy''s Enemy', 'Aprasymo nera', 2007, 11),
(155, 'Auschwitz: The Nazis and the ''Final Solution''', 'Aprasymo nera', 2005, 11),
(156, 'Lust for Life', 'Aprasymo nera', 1956, 10),
(157, 'Honogurai mizu no soko kara', 'Aprasymo nera', 2002, 15),
(158, 'Taare Zameen Par', 'Aprasymo nera', 2007, 10),
(159, 'Satya', 'Aprasymo nera', 1998, 8),
(160, 'Jab We Met', 'Aprasymo nera', 2007, 4),
(161, 'Swades: We, the People', 'Aprasymo nera', 2004, 10),
(162, 'Chak De! India', 'Aprasymo nera', 2007, 10),
(163, 'Company', 'Aprasymo nera', 2002, 8),
(164, 'The Fountain', 'Aprasymo nera', 2006, 3),
(165, 'La vita � bella', 'Aprasymo nera', 1997, 4),
(166, 'The Silence of the Lambs', 'Aprasymo nera', 1991, 12),
(167, 'The Bourne Ultimatum', 'Aprasymo nera', 2007, 8),
(168, 'Ran', 'Aprasymo nera', 1985, 8),
(169, 'Amores perros', 'Aprasymo nera', 2000, 10),
(170, 'Luc�a y el sexo', 'Aprasymo nera', 2001, 14),
(171, 'El secreto de sus ojos', 'Aprasymo nera', 2009, 5),
(172, 'Izgnanie', 'Aprasymo nera', 2007, 10),
(173, 'Midnight in Paris', 'Aprasymo nera', 2011, 4),
(174, 'Bom yeoreum gaeul gyeoul geurigo bom', 'Aprasymo nera', 2003, 4),
(175, 'Dead Man', 'Aprasymo nera', 1995, 3),
(176, 'Ed Wood', 'Aprasymo nera', 1994, 2),
(177, 'Happiness', 'Aprasymo nera', 1998, 4),
(178, 'Another Year', 'Aprasymo nera', 2010, 4),
(179, 'An Inconvenient Truth', 'Aprasymo nera', 2006, 11),
(180, 'Herbert', 'Aprasymo nera', 2006, 10),
(181, 'Delhi Belly', 'Aprasymo nera', 2011, 8),
(182, 'Zindagi Na Milegi Dobara', 'Aprasymo nera', 2011, 4),
(183, 'Il buono, il brutto, il cattivo', 'Aprasymo nera', 1966, 8),
(184, 'Per qualche dollaro in pi�', 'Aprasymo nera', 1965, 8),
(185, 'Salinui chueok', 'Aprasymo nera', 2003, 5),
(186, 'Auschwitz: The Nazis and the ''Final Solution''', 'Aprasymo nera', 2005, 11),
(187, 'My Enemy''s Enemy', 'Aprasymo nera', 2007, 9),
(188, 'Natural Born Killers', 'Aprasymo nera', 1994, 12),
(189, 'Gandu', 'Aprasymo nera', 2010, 10),
(190, 'Deliverance', 'Aprasymo nera', 1972, 16),
(191, 'The Savages', 'Aprasymo nera', 2007, 4),
(192, 'Misery', 'Aprasymo nera', 1990, 16),
(193, 'Incendies', 'Aprasymo nera', 2010, 5),
(194, 'The Way Back', 'Aprasymo nera', 2010, 11),
(195, '127 Hours', 'Aprasymo nera', 2010, 2),
(196, 'Inside Job', 'Aprasymo nera', 2010, 9),
(197, 'Adaptation.', 'Aprasymo nera', 2002, 9),
(198, 'Soul Kitchen', 'Aprasymo nera', 2009, 9),
(199, 'Bacheha-Ye aseman', 'Aprasymo nera', 1997, 10),
(200, 'Baran', 'Aprasymo nera', 2001, 14),
(201, 'Bronenosets Potemkin', 'Aprasymo nera', 1925, 11),
(202, 'Deconstructing Harry', 'Aprasymo nera', 1997, 4),
(203, 'The Last Emperor', 'Aprasymo nera', 1987, 11),
(204, 'Jodaeiye Nader az Simin', 'Aprasymo nera', 2011, 10),
(205, 'Chi bi', 'Aprasymo nera', 2008, 9),
(206, 'Kukushka', 'Aprasymo nera', 2002, 9),
(207, 'The Great Dictator', 'Aprasymo nera', 1940, 9),
(208, 'Who Killed the Electric Car?', 'Aprasymo nera', 2006, 11),
(209, 'La vie d''Ad�le', 'Aprasymo nera', 2013, 14),
(210, 'Oslo, 31. august', 'Aprasymo nera', 2011, 10),
(211, 'Le locataire', 'Aprasymo nera', 1976, 16),
(212, 'The Babadook', 'Aprasymo nera', 2014, 15),
(213, 'Rosemary''s Baby', 'Aprasymo nera', 1968, 15),
(214, 'Nightcrawler', 'Aprasymo nera', 2014, 12),
(215, 'Shabdo', 'Aprasymo nera', 2012, 10),
(216, 'Auf der anderen Seite', 'Aprasymo nera', 2007, 10),
(217, 'Deliverance', 'Aprasymo nera', 1972, 16),
(218, 'Gravity', 'Aprasymo nera', 2013, 3),
(219, 'Bhaag Milkha Bhaag', 'Aprasymo nera', 2013, 2),
(220, 'Ship of Theseus', 'Aprasymo nera', 2012, 10),
(221, 'Doodlebug', 'Aprasymo nera', 1997, 3),
(222, 'Chugyeogja', 'Aprasymo nera', 2008, 8),
(223, 'Rang-e khoda', 'Aprasymo nera', 1999, 10),
(224, 'Les invasions barbares', 'Aprasymo nera', 2003, 5),
(225, 'El orfanato', 'Aprasymo nera', 2007, 5);

-- --------------------------------------------------------

--
-- Table structure for table `zanrai`
--

CREATE TABLE `zanrai` (
  `id` int(6) NOT NULL,
  `zanras` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zanrai`
--

INSERT INTO `zanrai` (`id`, `zanras`) VALUES
(1, 'Animaciniai'),
(2, 'Biografiniai'),
(3, 'Fantastiniai'),
(4, 'Komedijos'),
(5, 'Mistiniai'),
(6, 'Muzikiniai'),
(7, 'Psichologiniai'),
(8, 'Veiksmo'),
(9, 'Kariniai'),
(10, 'Dramos'),
(11, 'Istoriniai'),
(12, 'Kriminaliniai'),
(13, 'Moksliniai'),
(14, 'Romantiniai'),
(15, 'Siaubo'),
(16, 'Trileriai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `filmai`
--
ALTER TABLE `filmai`
  ADD PRIMARY KEY (`filmo_id`);

--
-- Indexes for table `zanrai`
--
ALTER TABLE `zanrai`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `filmai`
--
ALTER TABLE `filmai`
  MODIFY `filmo_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;
--
-- AUTO_INCREMENT for table `zanrai`
--
ALTER TABLE `zanrai`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
