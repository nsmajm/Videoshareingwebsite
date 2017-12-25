-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2017 at 06:55 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bandmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `userid` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`userid`, `firstname`, `lastname`, `username`, `password`, `email`, `usertype`) VALUES
(45, 'Cole', 'Cole', 'Stone', 'RDH52IMH8YM', 'luctus.sit@torquentper.co.uk', 'admin'),
(47, 'Hamish', 'Ellison', 'Barrett', 'VUM66NJW8BW', 'hendrerit.consectetuer.cursus@faucibus.com', 'user'),
(48, 'Harding', 'Sellers', 'Sophia', 'UUT12NGW8IS', 'Etiam.laoreet@acfeugiatnon.edu', 'user'),
(49, 'Bevis', 'Gould', 'Astra', 'VCY01JAC3QG', 'eget.mollis.lectus@ipsumnunc.co.uk', 'user'),
(50, 'Gannon', 'Battle', 'Diana', 'IJF52YDX2TF', 'mi@Maecenas.ca', 'user'),
(51, 'Todd', 'Butler', 'Madaline', 'LPU57YGY9IE', 'nascetur.ridiculus.mus@vel.co.uk', 'user'),
(53, 'Travis', 'Hooper', 'Joseph', 'NZI88MBX5KI', 'consectetuer.ipsum@metusvitaevelit.org', 'user'),
(54, 'Kuame', 'Hays', 'Tara', 'UAY13JLT2TC', 'Duis@ipsumSuspendissenon.co.uk', 'user'),
(55, 'Mannix', 'Cervantes', 'Lillian', 'QPB01TSN5SK', 'sodales@egetmollislectus.net', 'user'),
(56, 'Sebastian', 'Mcfadden', 'Maisie', 'LIJ21LCA4OB', 'ipsum@sodales.net', 'user'),
(57, 'Armand', 'Salazar', 'Curran', 'EYM33HNB0VX', 'Curae.Donec.tincidunt@posuere.co.uk', 'user'),
(58, 'Beau', 'Brennan', 'Allen', 'TVQ25WTH4XZ', 'nibh@felis.ca', 'user'),
(59, 'Kareem', 'Chandler', 'Jasper', 'ITP22YRQ7WI', 'massa@sapiencursus.com', 'user'),
(60, 'Benjamin', 'Kane', 'Iris', 'MUV97OBB9HC', 'Aliquam.rutrum@nullaDonecnon.ca', 'user'),
(61, 'Uriah', 'Byers', 'Lawrence', 'LUR51ONJ6AW', 'Nam.ac@adipiscing.org', 'user'),
(62, 'Alec', 'Tyson', 'Logan', 'PAP85FAB8CL', 'Phasellus.nulla.Integer@ullamcorpereueuismod.net', 'user'),
(63, 'Ferris', 'Vang', 'Gage', 'AMO36AFD0FT', 'ultrices.posuere.cubilia@arcuVestibulumante.ca', 'user'),
(64, 'Declan', 'Craft', 'Callie', 'FIP10SBK3MA', 'sed@sedconsequatauctor.edu', 'user'),
(65, 'Macaulay', 'Huffman', 'Cadman', 'LTF85TFJ5FL', 'accumsan@etliberoProin.org', 'user'),
(66, 'Stewart', 'Best', 'Leonard', 'DMD55XEC5QN', 'dictum.eu@inlobortistellus.com', 'user'),
(67, 'Todd', 'Doyle', 'Cleo', 'QZX00JEI4FB', 'dapibus.rutrum@loremfringillaornare.co.uk', 'user'),
(68, 'Tanner', 'Skinner', 'Mechelle', 'DSI13OQN5GU', 'erat@ligulaAliquamerat.com', 'user'),
(69, 'Neville', 'Booth', 'Aphrodite', 'WLZ53EFW9IY', 'ac@egestasAliquam.ca', 'user'),
(70, 'Nasim', 'Haley', 'Ignatius', 'THW16BTL0IE', 'egestas@Inmipede.net', 'user'),
(71, 'Beau', 'Maddox', 'Nora', 'BVK97YUU2VM', 'massa.rutrum@risusNuncac.edu', 'user'),
(72, 'Lucian', 'Ferguson', 'Jelani', 'CRE54RJW0RW', 'ullamcorper@tellusnon.com', 'user'),
(73, 'Channing', 'Scott', 'Colton', 'DID98BXR0CO', 'Fusce.dolor.quam@facilisisfacilisismagna.co.uk', 'user'),
(74, 'Burke', 'Dominguez', 'Alfonso', 'UCU08DFJ6WM', 'luctus.ipsum@egestas.ca', 'user'),
(75, 'Chaim', 'Robbins', 'Kendall', 'XIQ66STG4GJ', 'eu.arcu.Morbi@sedfacilisis.com', 'user'),
(76, 'Mufutau', 'Grimes', 'Drake', 'KDM73EHD8JN', 'luctus.et.ultrices@pellentesqueegetdictum.edu', 'user'),
(77, 'Clark', 'Mejia', 'Murphy', 'QML42SZX6HS', 'netus.et@necluctus.edu', 'user'),
(78, 'Dalton', 'Wall', 'Aidan', 'DAU78JCJ7RY', 'Nulla@Etiamvestibulum.ca', 'user'),
(79, 'Amery', 'Estrada', 'Yoko', 'MWR56ZOO7AN', 'id.libero.Donec@lorem.com', 'user'),
(80, 'Dexter', 'Best', 'Norman', 'LXB71NXW7BE', 'vitae.dolor@facilisisegetipsum.co.uk', 'user'),
(81, 'Graham', 'Hoffman', 'Emma', 'PBW11QJC1XS', 'mauris.ut@purusin.co.uk', 'user'),
(82, 'Vaughan', 'Combs', 'Tarik', 'SLY86HAW6TS', 'dapibus.rutrum@purusmaurisa.edu', 'user'),
(83, 'Warren', 'Cross', 'Hasad', 'XZK42YRD7FN', 'Aliquam@mollis.net', 'user'),
(84, 'Sean', 'Kelly', 'Heidi', 'RDR96MKM9BR', 'mauris.sagittis.placerat@volutpatNulla.ca', 'user'),
(85, 'Lyle', 'Castaneda', 'Minerva', 'HOS54EKC9XX', 'mauris@Uttincidunt.ca', 'user'),
(86, 'Scott', 'Mullins', 'Macaulay', 'AEE33FPP8KG', 'cursus@cursus.co.uk', 'user'),
(87, 'Calvin', 'Peterson', 'Leroy', 'UUQ02AZZ3IA', 'risus.quis.diam@feugiat.ca', 'user'),
(88, 'Rogan', 'Vinson', 'Ignacia', 'OBI29XVZ8AF', 'sit@nec.ca', 'user'),
(89, 'Hunter', 'Melendez', 'Kay', 'YMX05OPK2NB', 'vel.nisl@maurisut.edu', 'user'),
(90, 'Calvin', 'Grant', 'Jacqueline', 'IBU36ENZ8DF', 'nec@Quisquefringillaeuismod.edu', 'user'),
(91, 'Silas', 'Cotton', 'Nasim', 'CPF04JOL1NT', 'Donec.est@eusem.edu', 'user'),
(92, 'Arthur', 'Graves', 'Trevor', 'VBX28RXK1JB', 'velit.justo.nec@nonnisi.edu', 'user'),
(93, 'Michael', 'Sims', 'Jayme', 'ZGP29ZZX5GO', 'arcu@sempercursus.ca', 'user'),
(94, 'Armando', 'Villarreal', 'Quynn', 'UYV19GJQ8KB', 'sit.amet.lorem@et.co.uk', 'user'),
(95, 'Cedric', 'Mcgowan', 'Vanna', 'LQF05SFA0JZ', 'ultrices.posuere@Vivamus.net', 'user'),
(96, 'Tanek', 'Wilkinson', 'Kennan', 'QZX36WEX0ZO', 'vel.mauris.Integer@Cumsociis.ca', 'user'),
(97, 'Emmanuel', 'Nielsen', 'Armand', 'JUR40CHE9TA', 'lobortis@tinciduntnunc.co.uk', 'user'),
(98, 'Gil', 'Strong', 'Rebecca', 'FSC07WVL3KA', 'et@molestiesodales.com', 'user'),
(99, 'Colby', 'Hawkins', 'Gil', 'RYW76CCO4WJ', 'Lorem.ipsum.dolor@ipsumSuspendisse.co.uk', 'user'),
(100, 'Stewart', 'Swanson', 'John', 'CSU98ETW2TF', 'Nullam@pharetra.edu', 'user'),
(101, 'Griffin', 'Mack', 'Bernard', 'RVH42HPQ1HL', 'et@auctorodioa.org', 'user'),
(102, 'Declan', 'Ferrell', 'Rebecca', 'QYI19XAY5WY', 'ipsum@eu.ca', 'user'),
(103, 'Jordan', 'Campbell', 'Hakeem', 'LBR77FLF7VX', 'massa.Integer.vitae@arcu.com', 'user'),
(104, 'Sean', 'Lowery', 'Julian', 'MNZ58LYD3TN', 'dictum.eleifend@Aenean.net', 'user'),
(105, 'Jackson', 'Hyde', 'Zephr', 'FIX21VTS8EN', 'adipiscing.fringilla@doloregestas.org', 'user'),
(106, 'Nathaniel', 'Reyes', 'Gil', 'MIH91GLQ7CV', 'orci@tortordictum.com', 'user'),
(107, 'Quinlan', 'Gates', 'Robert', 'WGN78RRN9KD', 'volutpat.Nulla.facilisis@Integervitaenibh.ca', 'user'),
(108, 'Graiden', 'Bond', 'Nelle', 'YLM00LZB5QY', 'convallis.ante@dis.co.uk', 'user'),
(109, 'Henry', 'Mcclain', 'Uriah', 'WNI24RSN6CR', 'blandit.at.nisi@Phasellusliberomauris.ca', 'user'),
(110, 'Jesse', 'Henry', 'Mason', 'MAO91CSA7VR', 'enim.non.nisi@Duis.ca', 'user'),
(111, 'Brent', 'Prince', 'Regan', 'TNR01AAV5IW', 'Vivamus.non@odio.net', 'user'),
(112, 'Wesley', 'Hardy', 'Thaddeus', 'RID63MFQ8FY', 'arcu.Vestibulum.ante@elit.com', 'user'),
(113, 'Stone', 'Lyons', 'Idola', 'UZS41ABM5UH', 'mi.Aliquam@Sed.com', 'user'),
(114, 'Wyatt', 'Stark', 'Sylvester', 'YOR50OLQ4KS', 'non.magna.Nam@Quisque.org', 'user'),
(115, 'Brian', 'Parrish', 'Grady', 'BCJ43PGE0YE', 'ac.risus.Morbi@risus.com', 'user'),
(117, 'Chaney', 'Harmon', 'Ciaran', 'GFD52HJT9MW', 'diam@dolor.ca', 'user'),
(118, 'Jackson', 'Sutton', 'Lacota', 'FNA84ZUE4ZT', 'ut@elitpharetra.co.uk', 'user'),
(119, 'Slade', 'Horne', 'Kennedy', 'NSJ03NZZ7SS', 'Nulla.interdum@quis.co.uk', 'user'),
(120, 'Nasim', 'Workman', 'Cameran', 'DKD24INM1HB', 'tempus@vulputate.com', 'user'),
(121, 'Dante', 'Weeks', 'Ignacia', 'ROM33TEH8EO', 'nunc.Quisque@bibendumsed.net', 'user'),
(122, 'Jameson', 'Mercado', 'Iliana', 'WES31CPR2KU', 'sollicitudin.commodo.ipsum@Maecenasornareegestas.edu', 'user'),
(123, 'Ryan', 'Bolton', 'Brian', 'GVX92NWH5GO', 'quis.massa@nullaIn.com', 'user'),
(124, 'Grant', 'Harvey', 'Ahmed', 'JUH68HBQ4IP', 'et.ipsum.cursus@purusgravidasagittis.co.uk', 'user'),
(125, 'Luke', 'Mosley', 'Shad', 'HKU08PAO5JX', 'cursus@magnaPraesent.net', 'user'),
(126, 'Ethan', 'Dunlap', 'Caesar', 'NJG73FTV4BR', 'Cras.eu@suscipitnonummy.net', 'user'),
(128, 'Wade', 'Farmer', 'Abdul', 'BYI05LEE3CZ', 'consequat.lectus.sit@ametrisus.org', 'user'),
(129, 'Aristotle', 'Schmidt', 'Jaden', 'WCO15JSP9DP', 'dignissim@rutrum.org', 'user'),
(130, 'Malachi', 'Rowe', 'Clio', 'NRV25ESV7WN', 'eget.magna.Suspendisse@odio.net', 'user'),
(131, 'Nash', 'Morse', 'May', 'PHY85YIB7LM', 'quis@quamquis.com', 'user'),
(132, 'Christopher', 'Marks', 'Aquila', 'XXB80GAL0KL', 'Vivamus.molestie@at.ca', 'user'),
(133, 'Murphy', 'Sears', 'Petra', 'UWR25FNC8MQ', 'facilisis.Suspendisse.commodo@non.net', 'user'),
(134, 'Vincent', 'Walter', 'Acton', 'DSE90YSN8GL', 'eleifend.vitae.erat@mi.net', 'user'),
(135, 'Harding', 'Anthony', 'Brennan', 'LPT85ECX2QJ', 'dolor.sit@enimcommodohendrerit.edu', 'user'),
(138, 'Griffith', 'Tate', 'Eagan', 'TAQ02FHZ1VT', 'tellus.Aenean.egestas@Utsemperpretium.edu', 'user'),
(145, 'Nasim', 'Anjum', 'admin', 'admin', 'anjum@nsmajm.com', 'admin'),
(146, 'Nasim', 'ANjum', 'nsm', '123', 'nsmajm0@gmail.com', 'admin'),
(151, 'Nasim', 'ANjum', 'abc', 'abc', 'nsmajmffffff@gmail.com', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(50) NOT NULL,
  `adminPassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`adminId`, `adminName`, `adminPassword`) VALUES
(1, 'sunzid', 'sunzid'),
(2, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bandconcerts`
--

CREATE TABLE `bandconcerts` (
  `bandName` varchar(50) NOT NULL,
  `concertNo` int(11) NOT NULL,
  `concertName` varchar(1000) NOT NULL,
  `concertDateTime` datetime NOT NULL,
  `concertVenue` varchar(1000) NOT NULL,
  `ticketQuantity` int(11) NOT NULL,
  `perTicketPrice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bandconcerts`
--

INSERT INTO `bandconcerts` (`bandName`, `concertNo`, `concertName`, `concertDateTime`, `concertVenue`, `ticketQuantity`, `perTicketPrice`) VALUES
('Linkin Park', 2, 'TexasLive', '2017-12-09 16:00:00', 'Texas', 41, 1000),
('Shironamhin', 3, 'Joy Bangla', '2017-12-29 16:00:00', 'Dhaka', 20000, 500);

-- --------------------------------------------------------

--
-- Table structure for table `bands`
--

CREATE TABLE `bands` (
  `bandId` int(11) NOT NULL,
  `bandName` varchar(50) NOT NULL,
  `bandType` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bands`
--

INSERT INTO `bands` (`bandId`, `bandName`, `bandType`) VALUES
(1, 'Linkin Parki', 'Metal'),
(2, 'Shironamhin', 'Folk'),
(3, 'Shunno', 'Metal'),
(4, 'Nemesis', 'Rock'),
(5, 'Aurthohin', 'Metal'),
(6, 'Artcelll', 'Metal'),
(7, 'vjhhv', 'HeavyMetal');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `fileid` int(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `userid` int(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `filepicture` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `filetype` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `ticketId` int(50) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `userEmail` varchar(50) NOT NULL,
  `userMobileNo` int(50) NOT NULL,
  `concertName` varchar(50) NOT NULL,
  `concertDateTime` datetime NOT NULL,
  `issueDate` date NOT NULL,
  `concertVenue` varchar(500) NOT NULL,
  `ticketQuantity` int(50) NOT NULL,
  `totalPrice` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`ticketId`, `userName`, `userEmail`, `userMobileNo`, `concertName`, `concertDateTime`, `issueDate`, `concertVenue`, `ticketQuantity`, `totalPrice`) VALUES
(6, 'Protik', 'protik.hore@gmail.com', 1912969336, 'Tribute to Chester', '2017-12-06 16:00:00', '2017-11-15', 'Newyork', 3, 60),
(7, 'sunzid', 'sunzid02@gmail.com', 1674563623, 'Tribute to Chester', '2017-12-06 16:00:00', '2017-11-15', 'Newyork', 2, 40),
(8, 'songita', 'dhar@protik.com', 123, 'Tribute to Chester', '2017-12-06 16:00:00', '2017-11-15', 'Newyork', 2, 40),
(9, 'rabbi', 'rabbi@yahoo.com', 1675298797, 'Tribute to Chester', '2017-12-06 16:00:00', '2017-11-15', 'Newyork', 2, 40),
(10, 'abu', 'abu@babu.com', 1235465, 'Joy Bangla', '2017-12-29 16:00:00', '2017-11-15', 'Dhaka', 2, 400),
(12, 'dfgg', 'grtgre@bhgh.com', 2586, 'Joy Bangla', '2017-12-29 16:00:00', '2017-11-15', 'Dhaka', 3, 600),
(13, 'Nasim ANjum', 'nsmajm1995@gmail.com', 1750638163, 'yoyo', '2017-12-26 14:20:05', '2017-11-16', 'ghg', 3, 63),
(14, 'Nasim ANjum', 'nsmajm0@gmail.com', 1750638162, 'TexasLive', '2017-12-09 16:00:00', '2017-11-18', 'Texas', 1, 1000),
(15, 'Nasim ANjum', 'nsm44ajm@gmail.com', 1750638167, 'TexasLive', '2017-12-09 16:00:00', '2017-11-18', 'Texas', 2, 2000),
(16, 'Nasim ANjum', 'nsghhhfmajm@gmail.com', 1750630163, 'TexasLive', '2017-12-09 16:00:00', '2017-11-21', 'Texas', 2, 2000),
(18, 'Nasim ANjum', 'angelo@true-company.com', 1750638156, 'TexasLive', '2017-12-09 16:00:00', '2017-12-23', 'Texas', 3, 3000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `bandconcerts`
--
ALTER TABLE `bandconcerts`
  ADD PRIMARY KEY (`concertNo`),
  ADD UNIQUE KEY `concertNo` (`concertNo`);

--
-- Indexes for table `bands`
--
ALTER TABLE `bands`
  ADD PRIMARY KEY (`bandId`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`fileid`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticketId`),
  ADD UNIQUE KEY `mn` (`userMobileNo`),
  ADD UNIQUE KEY `userEmail` (`userEmail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;
--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `bandconcerts`
--
ALTER TABLE `bandconcerts`
  MODIFY `concertNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `bands`
--
ALTER TABLE `bands`
  MODIFY `bandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `fileid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ticketId` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
