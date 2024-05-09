-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:4306
-- Generation Time: May 09, 2024 at 10:45 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_puskesmas`
--

-- --------------------------------------------------------

--
-- Table structure for table `kelurahan`
--

CREATE TABLE `kelurahan` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `kecamatan` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelurahan`
--

INSERT INTO `kelurahan` (`id`, `nama`, `kecamatan`) VALUES
(1, 'Cikini', 'Menteng'),
(2, 'Gondangdia', 'Menteng'),
(3, 'Cideng', 'Gambir'),
(4, 'Duri Pulo', 'Gambir'),
(5, 'Kebon Kelapa', 'Gambir');

-- --------------------------------------------------------

--
-- Table structure for table `paramedik`
--

CREATE TABLE `paramedik` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `gender` char(1) NOT NULL,
  `tmp_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `telpon` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `kategori` enum('dokter umum','dokter bedah','dokter gigi','dokter kandungan','ahli gizi','dokter spesialis','bidan','perawat','apoteker','psikiater') NOT NULL,
  `unit_kerja_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paramedik`
--

INSERT INTO `paramedik` (`id`, `nama`, `gender`, `tmp_lahir`, `tgl_lahir`, `telpon`, `alamat`, `kategori`, `unit_kerja_id`) VALUES
(1, 'Dr. John', 'L', 'Bogor', '2024-05-01', '0891653163', ' ', 'dokter umum', 1),
(2, 'Drg. Attaki', 'L', 'Jakarta', '2000-12-04', '0213433856', ' ', 'dokter gigi', 3),
(8, 'Dr. Muhammad Ali', 'L', 'Medan', '1975-07-22', '087352462723', ' ', 'dokter spesialis', 13),
(9, 'Dr. Siti Indah', 'P', 'Jaktim', '1984-04-17', '085428428283', 'Jl. Kukusan no.2', 'dokter gigi', 10),
(10, 'Siti Nurhaliza', 'P', 'Depok', '1990-05-22', '08774565462', 'Jl. Pasir Putih', 'perawat', 15);

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `kode` varchar(45) DEFAULT NULL,
  `tmp_lahir` varchar(30) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `kelurahan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id`, `nama`, `kode`, `tmp_lahir`, `tgl_lahir`, `gender`, `email`, `alamat`, `kelurahan_id`) VALUES
(1, 'Cthrine Giacomuzzi', '1', 'Железный порт', '2004-05-05', 'M', 'cgiacomuzzi0@fastcompany.com', '05041 Center Circle', 1),
(3, 'Garrot Buxey', '1', 'Lapuan', '2000-07-16', 'F', 'gbuxey2@edublogs.org', '809 Boyd Way', 4),
(4, 'Lacy Manolov', '5', 'Gandekan', '2000-06-22', 'F', 'lmanolov3@tuttocitta.it', '5967 Nelson Junction', 3),
(5, 'Sindee Escott', '1', 'Bakunase', '2007-07-06', 'M', 'sescott4@europa.eu', '2507 Superior Lane', 5),
(7, 'Zelda Groveham', '3', 'Longhua', '2008-07-21', 'M', 'zgroveham6@engadget.com', '0673 Stang Alley', 4),
(8, 'Lacy Faithfull', '2', 'Kentau', '2015-03-23', 'M', 'lfaithfull7@goodreads.com', '0161 Hansons Hill', 3),
(9, 'Fleurette Peiser', '4', 'Huangshan', '1993-05-15', 'M', 'fpeiser8@ycombinator.com', '7233 Darwin Place', 4),
(10, 'Rhea Veldstra', '2', 'Villa Florida', '2012-05-24', 'F', 'rveldstra9@tripod.com', '76 Myrtle Hill', 5),
(11, 'Zachary Doul', '5', 'Citundun', '2008-04-11', 'M', 'zdoula@goodreads.com', '22 Saint Paul Parkway', 4),
(12, 'Bale Maudett', '3', 'Kostanay', '2008-06-15', 'M', 'bmaudettb@mediafire.com', '397 Merrick Street', 3),
(13, 'Earlie Murrow', '3', 'Yoiqag', '1997-05-09', 'M', 'emurrowc@amazon.co.uk', '4785 Fieldstone Street', 3),
(14, 'Amos Lannen', '1', 'Chinú', '2004-05-21', 'F', 'alannend@bravesites.com', '641 Golf Hill', 5),
(15, 'Earle Bummfrey', '1', 'Lugang', '1994-03-25', 'M', 'ebummfreye@livejournal.com', '6520 Monument Terrace', 4),
(16, 'Erena Flea', '2', 'El Cardo', '2003-07-14', 'M', 'efleaf@tmall.com', '68760 Buell Circle', 1),
(17, 'Lorelei Leed', '1', 'Bałtów', '2016-02-01', 'M', 'lleedg@amazon.de', '029 Waywood Pass', 4),
(18, 'Marinna Davidsohn', '4', 'Shenglilu', '2002-08-28', 'F', 'mdavidsohnh@bloglines.com', '8 Hooker Crossing', 1),
(19, 'Carena Roscrigg', '4', 'Banjar Batanpoh', '2015-09-24', 'M', 'croscriggi@springer.com', '55742 Harbort Park', 3),
(20, 'Leeann Reyner', '1', 'Lyon', '2015-06-28', 'M', 'lreynerj@census.gov', '300 Hermina Parkway', 3),
(21, 'Kali Curcher', '4', 'Saint-Jean-de-Védas', '2005-09-06', 'F', 'kcurcherk@mozilla.com', '572 Hoffman Drive', 3),
(22, 'Claudio Green', '5', 'Baghlān', '2005-11-11', 'M', 'cgreenl@surveymonkey.com', '7719 Magdeline Junction', 3),
(23, 'Morris Lynd', '1', 'Chirilagua', '2016-02-07', 'F', 'mlyndm@tamu.edu', '129 Bluejay Lane', 4),
(24, 'Noland Thew', '2', 'Jeju-si', '2002-10-22', 'F', 'nthewn@123-reg.co.uk', '27 Superior Pass', 4),
(25, 'Duffy Bustin', '1', 'Borzęta', '1995-07-19', 'M', 'dbustino@ameblo.jp', '7 New Castle Hill', 5),
(26, 'Lloyd Nipper', '1', 'Qingfeng', '2007-03-25', 'M', 'lnipperp@studiopress.com', '75999 Westport Plaza', 4),
(27, 'Guendolen Sowthcote', '4', 'Oetuke', '1999-01-06', 'F', 'gsowthcoteq@blogger.com', '733 Blaine Lane', 4),
(28, 'Cello McComas', '4', 'San Antonio de Los Altos', '2009-03-03', 'F', 'cmccomasr@histats.com', '21 Sugar Way', 5),
(29, 'Connie Bird', '3', 'Chicago', '1993-04-10', 'M', 'cbirds@technorati.com', '904 Talisman Way', 5),
(30, 'Therine Peplay', '2', 'Caticugan', '2014-05-28', 'F', 'tpeplayt@bbc.co.uk', '1 Eastwood Crossing', 4),
(31, 'Teri Freezor', '1', 'Bezlyudivka', '2019-06-18', 'F', 'tfreezoru@apache.org', '196 Bluestem Drive', 4),
(32, 'Grenville Goldingay', '4', 'Qingshi', '1994-09-24', 'M', 'ggoldingayv@friendfeed.com', '582 Glacier Hill Alley', 3),
(33, 'Chico Longstaffe', '5', 'Stockholm', '2011-04-03', 'F', 'clongstaffew@amazon.com', '546 Rowland Place', 3),
(34, 'Stan McVeagh', '5', 'Ban Lŭng', '1998-01-25', 'F', 'smcveaghx@unblog.fr', '92081 Cascade Parkway', 3),
(35, 'Caldwell Amies', '1', 'Tete', '2017-05-03', 'M', 'camiesy@harvard.edu', '20 Michigan Street', 3),
(36, 'Betsy Bridgen', '5', 'Kiukasen', '2001-05-01', 'F', 'bbridgenz@samsung.com', '0808 Dottie Point', 3),
(37, 'Thaddeus Nunan', '3', 'Túquerres', '2017-12-01', 'F', 'tnunan10@comsenz.com', '7 Corben Plaza', 5),
(38, 'Cari Jansky', '2', 'Zhaowanzhuang', '1994-09-25', 'M', 'cjansky11@unblog.fr', '9756 Bultman Plaza', 5),
(39, 'Aurelie Opdenorth', '1', 'Tuapse', '2007-02-19', 'M', 'aopdenorth12@linkedin.com', '8 Manitowish Place', 2),
(40, 'Wallis Hubbold', '3', 'Kasangulu', '1992-04-29', 'F', 'whubbold13@examiner.com', '733 Karstens Avenue', 5),
(41, 'Whitney Mardy', '4', 'Dakoutun', '2012-01-12', 'F', 'wmardy14@msu.edu', '5791 Melvin Junction', 3),
(42, 'Devonna Land', '1', 'Usman’', '1993-06-09', 'M', 'dland15@ibm.com', '25816 Forster Plaza', 2),
(43, 'Lottie Hayth', '4', 'Kaz', '2007-05-27', 'M', 'lhayth16@state.gov', '98 Clove Park', 4),
(44, 'Vinson Dole', '3', 'Los Aquijes', '2018-05-24', 'F', 'vdole17@photobucket.com', '19 Service Hill', 3),
(45, 'Wendel Sute', '3', 'Syriam', '2019-02-02', 'M', 'wsute18@opensource.org', '1838 Cardinal Parkway', 4),
(46, 'Chev Burgwin', '2', 'Gumel', '1998-10-31', 'M', 'cburgwin19@blog.com', '5 Brentwood Alley', 3),
(47, 'Oralia Longfield', '4', 'Ḩāfiz̧ Moghul', '2022-12-10', 'M', 'olongfield1a@twitter.com', '4 Kropf Alley', 5),
(48, 'Agace Cossans', '5', 'La Azulita', '2016-08-22', 'M', 'acossans1b@newyorker.com', '7734 Mcbride Point', 3),
(49, 'Carver Broomhall', '5', 'Independencia', '2008-01-11', 'M', 'cbroomhall1c@imgur.com', '2694 Lillian Pass', 5),
(50, 'Frasquito Pendre', '1', 'Putina', '2002-07-02', 'F', 'fpendre1d@joomla.org', '2 Muir Junction', 1),
(51, 'Amanda', 'P003', 'Depok', '2003-07-24', 'P', 'piki.cou@gmail.com', '  jl. Duri 5', 4);

-- --------------------------------------------------------

--
-- Table structure for table `periksa`
--

CREATE TABLE `periksa` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `berat` double NOT NULL,
  `tinggi` double NOT NULL,
  `tensi` varchar(20) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `pasien_id` int(11) NOT NULL,
  `dokter_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `periksa`
--

INSERT INTO `periksa` (`id`, `tanggal`, `berat`, `tinggi`, `tensi`, `keterangan`, `pasien_id`, `dokter_id`) VALUES
(1, '2024-05-01', 56, 150, '130/100', 'Darah Tinggi', 31, 2),
(23, '2024-05-10', 45, 155, '120/80', 'Normal', 51, 1);

-- --------------------------------------------------------

--
-- Table structure for table `unit_kerja`
--

CREATE TABLE `unit_kerja` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `unit_kerja`
--

INSERT INTO `unit_kerja` (`id`, `nama`) VALUES
(1, 'UGD'),
(2, 'IGD'),
(3, 'Laboratorium'),
(9, 'Poli Gigi'),
(10, 'Unit Gizi'),
(11, 'Unit Farmasi'),
(12, 'Poli Umum'),
(13, 'Poli Kesehatan Ibu dan Anak'),
(14, 'Unit Psikologi'),
(15, 'Unit Rawat inap');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(0, 'Amanda Fiqih Hauli', 'admin@gmail.com', '25d55ad283aa400af464c76d713c07ad'),
(0, 'Amanda Fiqih Hauli', 'admin@gmail.com', '25d55ad283aa400af464c76d713c07ad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kelurahan`
--
ALTER TABLE `kelurahan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paramedik`
--
ALTER TABLE `paramedik`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unit_kerja_id` (`unit_kerja_id`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelurahan_id` (`kelurahan_id`);

--
-- Indexes for table `periksa`
--
ALTER TABLE `periksa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pasien_id` (`pasien_id`),
  ADD KEY `pasien_id_2` (`pasien_id`),
  ADD KEY `dokter_id` (`dokter_id`);

--
-- Indexes for table `unit_kerja`
--
ALTER TABLE `unit_kerja`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kelurahan`
--
ALTER TABLE `kelurahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `paramedik`
--
ALTER TABLE `paramedik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `periksa`
--
ALTER TABLE `periksa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `unit_kerja`
--
ALTER TABLE `unit_kerja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `paramedik`
--
ALTER TABLE `paramedik`
  ADD CONSTRAINT `paramedik_ibfk_1` FOREIGN KEY (`unit_kerja_id`) REFERENCES `unit_kerja` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pasien`
--
ALTER TABLE `pasien`
  ADD CONSTRAINT `pasien_ibfk_1` FOREIGN KEY (`kelurahan_id`) REFERENCES `kelurahan` (`id`);

--
-- Constraints for table `periksa`
--
ALTER TABLE `periksa`
  ADD CONSTRAINT `periksa_ibfk_1` FOREIGN KEY (`pasien_id`) REFERENCES `pasien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `periksa_ibfk_2` FOREIGN KEY (`dokter_id`) REFERENCES `paramedik` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
