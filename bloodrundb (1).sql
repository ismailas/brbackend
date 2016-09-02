-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2016 at 12:57 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloodrundb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bloodcall`
--

CREATE TABLE `bloodcall` (
  `bloodcall_id` int(10) UNSIGNED NOT NULL,
  `bcdate` datetime NOT NULL,
  `bcgoldar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bcatasnama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bcketerangan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bcstatus` tinyint(1) NOT NULL,
  `bcpriority` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bloodcall`
--

INSERT INTO `bloodcall` (`bloodcall_id`, `bcdate`, `bcgoldar`, `bcatasnama`, `bcketerangan`, `bcstatus`, `bcpriority`, `users_id`, `created_at`, `updated_at`) VALUES
(1, '2016-08-11 00:00:00', 'A', 'susi susana', 'susi butuh darah secepatnya dapat menghubungi 087654321', 0, 1, 5, NULL, NULL),
(2, '2016-09-09 00:00:00', 'AB', 'budi berbudi', 'budi butuh darah cukup banyak, dapat menghubungi nomor 08123456789 atau langsung ke ruang ugd rs hasan sadikin', 0, 2, 6, NULL, NULL),
(3, '2016-09-02 17:00:00', 'A', 'Budi Susanto', 'Sangat penting, segera hubungi 091 jika dapat membantu..', 0, 3, 8, '2016-09-02 15:51:43', '2016-09-02 15:51:43'),
(4, '2016-09-14 17:00:00', 'AB', 'Herman', 'Tes', 0, 2, 8, '2016-09-02 15:54:15', '2016-09-02 15:54:15'),
(5, '2016-09-09 17:00:00', 'O', 'Gugun Gendat', 'Hubungi 0899', 0, 1, 8, '2016-09-02 15:57:14', '2016-09-02 15:57:14'),
(6, '2016-09-13 17:00:00', 'B', 'Tester', 'Tes', 0, 2, 8, '2016-09-02 16:03:25', '2016-09-02 16:03:25'),
(7, '2016-09-06 17:00:00', 'A', 'tes', 'tesssss', 0, 2, 8, '2016-09-02 16:10:58', '2016-09-02 16:10:58');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` int(10) UNSIGNED NOT NULL,
  `evname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `evorganizer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `evaddress` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `evlat` double NOT NULL,
  `evlng` double NOT NULL,
  `evdate` datetime NOT NULL,
  `users_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `evname`, `evorganizer`, `evaddress`, `evlat`, `evlng`, `evdate`, `users_id`, `created_at`, `updated_at`) VALUES
(1, 'DONOR BERSAMA CHELSEA', 'islan foundation', 'Jl. Ir. H. Juanda No. 181-183, Dago, Coblong, Kota Bandung, Jawa Barat 40135', -6.88526431012107, 107.61372622648923, '2016-08-30 00:00:00', 5, NULL, NULL),
(2, 'DONOR BERSAMA BAPAK MAHDAN', 'mahdan foundation', 'Jl. Ir. H.Djuanda No. 100, Lebakgede, Coblong, Lebakgede, Coblong, Bandung, Jawa Barat 40132', -6.8945013, 107.6135607, '2016-09-16 00:00:00', 6, NULL, NULL),
(3, 'Mendonor Itu Baik', 'Kebaikan Cinta', 'Jl.Sangkuriang c2', -6.880958199999999, 107.60917849999998, '2016-09-28 17:00:00', 8, '2016-09-02 15:35:45', '2016-09-02 15:35:45'),
(4, 'DONOR BERSAMA DHENDI', 'dhendi corbuzier', 'jl.sangkurilang L2', -6.880663130489832, 107.60857478518074, '2016-09-20 17:00:00', 8, '2016-09-02 16:10:26', '2016-09-02 16:10:26'),
(5, 'coba', 'cobax', 'jl.coba', -6.88496916906766, 107.61200811271965, '2016-09-02 17:00:00', 8, '2016-09-02 21:35:03', '2016-09-02 21:35:03'),
(6, 'coba lagi', 'coba terus', 'jl.capek', -6.885948703165298, 107.61376824183344, '2016-09-03 01:35:00', 8, '2016-09-02 21:51:47', '2016-09-02 21:51:47');

-- --------------------------------------------------------

--
-- Table structure for table `histori`
--

CREATE TABLE `histori` (
  `histori_id` int(10) UNSIGNED NOT NULL,
  `hisdate` datetime NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `event_id` int(255) NOT NULL,
  `users_id` int(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `histori`
--

INSERT INTO `histori` (`histori_id`, `hisdate`, `type`, `event_id`, `users_id`, `created_at`, `updated_at`) VALUES
(1, '2016-08-01 00:00:00', 'private', 1, 4, NULL, NULL),
(2, '2016-08-02 00:00:00', 'dievent', 2, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2016_08_08_144337_create_users_table', 1),
('2016_08_10_103758_create_pmi_table', 1),
('2016_08_10_120340_create_event_table', 1),
('2016_08_10_122238_create_histori_table', 1),
('2016_08_10_122255_create_bloodcall_table', 1),
('2016_08_10_122403_create_newsfeed_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newsfeed`
--

CREATE TABLE `newsfeed` (
  `newsfeed_id` int(10) UNSIGNED NOT NULL,
  `nfjudul` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nfimage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nfcontent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nfdate` datetime NOT NULL,
  `users_id` int(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `newsfeed`
--

INSERT INTO `newsfeed` (`newsfeed_id`, `nfjudul`, `nfimage`, `nfcontent`, `nfdate`, `users_id`, `created_at`, `updated_at`) VALUES
(1, 'tidak ada darah AB di kepulauan seribu', 'pulauseribu.jpg', 'PMI cabang kepulauan seribu tidak mendapatkan suplai darah bergolongan AB', '2016-08-12 00:00:00', 5, NULL, NULL),
(2, '12 mahasiswa mendapat penghargaan donor darah', '12mahasiswa.jpg', '12 mahasiswa mendapat penghargaan donor darah 25kali donor dari walikota bandung.', '2016-08-29 00:00:00', 6, NULL, NULL),
(3, 'Seorang Telah Pria Mendonor 150 Kali', 'tes.img', 'Muljono, Seorang Ahli beladiri silat, telah mendonorkan darahnya 150 kali sepanjang hidupnya.', '2016-09-03 00:11:32', 8, '2016-09-02 17:11:32', '2016-09-02 17:11:32'),
(4, 'Tes Berita', 'berita.jpg', 'berita berita beritaaaa', '2016-09-02 17:13:30', 8, '2016-09-02 17:13:30', '2016-09-02 17:13:30');

-- --------------------------------------------------------

--
-- Table structure for table `pmi`
--

CREATE TABLE `pmi` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cabang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` int(11) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `goldar` varchar(2) DEFAULT NULL,
  `jumdon` int(11) DEFAULT NULL,
  `firstjumdon` int(11) DEFAULT NULL,
  `lastdonate` date DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `typeuser` tinyint(1) DEFAULT NULL,
  `bloodcall_id` int(11) DEFAULT NULL,
  `newsfeed_id` int(11) DEFAULT NULL,
  `cabang` varchar(255) DEFAULT NULL,
  `token` text,
  `daycount` int(11) NOT NULL,
  `histori_id` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users_id`, `firstname`, `lastname`, `birthdate`, `goldar`, `jumdon`, `firstjumdon`, `lastdonate`, `email`, `password`, `status`, `typeuser`, `bloodcall_id`, `newsfeed_id`, `cabang`, `token`, `daycount`, `histori_id`, `createdAt`, `updatedAt`) VALUES
(1, 'ismail', 'as', '1992-10-09', 'O', 3, 3, '2015-09-09', 'ismail@a.s', 'ismail', 0, 0, NULL, NULL, NULL, NULL, 0, 0, '2016-08-15 14:52:08', '2016-09-02 08:15:32'),
(2, 'chelsea', 'islan', '1995-06-02', 'A', 8, 6, '2016-07-15', 'chelseaislan@gmail.com', 'islan', 1, 0, NULL, NULL, NULL, NULL, 0, 1, '2016-08-15 14:55:32', '2016-08-15 14:55:32'),
(3, 'dekha', 'ar', '1991-02-03', 'B', 0, 0, '0000-00-00', 'd@a.r', 'dekha', 0, 0, NULL, NULL, NULL, NULL, 0, 0, '2016-08-15 14:56:56', '2016-09-02 06:07:06'),
(4, 'yuser', 'tester', '1992-01-01', 'AB', 20, 18, '2016-08-10', 'user@tes.com', 'tes', 1, 0, NULL, NULL, NULL, NULL, 20, 0, '2016-08-15 14:57:08', '2016-09-02 09:15:04'),
(5, 'pegawai', 'PMI', NULL, NULL, NULL, NULL, NULL, 'pegawai@pmi.com', 'pegawaipmi', NULL, 1, 1, 1, 'Bandung', NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'pendonor2', 'PMI', NULL, NULL, NULL, NULL, NULL, 'pegawai2@pmi.com', 'pegawaipmi2', NULL, 1, 2, 2, 'Bandung', NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'ismail', 'as', '1970-01-01', NULL, NULL, NULL, NULL, 'p@m.i', 'pmi', NULL, 1, NULL, NULL, 'bandung', NULL, 0, NULL, '2016-08-29 16:23:31', '2016-09-02 22:08:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bloodcall`
--
ALTER TABLE `bloodcall`
  ADD PRIMARY KEY (`bloodcall_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `histori`
--
ALTER TABLE `histori`
  ADD PRIMARY KEY (`histori_id`);

--
-- Indexes for table `newsfeed`
--
ALTER TABLE `newsfeed`
  ADD PRIMARY KEY (`newsfeed_id`);

--
-- Indexes for table `pmi`
--
ALTER TABLE `pmi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bloodcall`
--
ALTER TABLE `bloodcall`
  MODIFY `bloodcall_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `histori`
--
ALTER TABLE `histori`
  MODIFY `histori_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `newsfeed`
--
ALTER TABLE `newsfeed`
  MODIFY `newsfeed_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pmi`
--
ALTER TABLE `pmi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
