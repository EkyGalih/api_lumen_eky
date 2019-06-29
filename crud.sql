-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 29, 2019 at 09:03 PM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `crud`
--

CREATE TABLE IF NOT EXISTS `crud` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aktifitas` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('Biasa','Segera','Urgen') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Complete','Uncomplete') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `crud`
--

INSERT INTO `crud` (`id`, `aktifitas`, `deskripsi`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Buat Laporan Penelitian', 'Makalah Penelitian di pulau bungin', 'Urgen', 'Complete', '2019-06-29 17:44:48', '2019-06-29 17:44:48'),
(2, 'Buat Laporan', 'Laporan Tour ke SMK se Lombok', 'Urgen', 'Uncomplete', '2019-06-29 17:45:03', '2019-06-29 17:45:03'),
(3, 'Buat Jurnal Penelitian', 'Buat jurnal penelitian tentang kecepatan akses data dengan LAN', 'Biasa', 'Complete', '2019-06-30 01:15:14', '2019-06-30 01:15:14'),
(4, 'Buat Modul Pengajaran', 'Modul Pengajaran Matkul SBD dan SO', 'Biasa', 'Uncomplete', '2019-06-29 16:00:53', '2019-06-30 01:15:14'),
(5, 'Buat Buku', 'Buat buku untuk rekap nilai mahasiswa', 'Segera', 'Uncomplete', '2019-06-30 00:22:40', '2019-06-30 00:22:40'),
(6, 'Buat paper', 'Paper tentang skripsi', 'Segera', 'Uncomplete', '2019-06-30 07:41:37', '2019-06-30 07:41:37');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2019_06_28_122429_crud', 1),
(10, '2019_06_28_133248_tabel_user', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id_user` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$iaBFsmF6hGtnjrRmratWUOtLaaGuuM7VUxrfaySTjFdsEhKYE1C76', NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
