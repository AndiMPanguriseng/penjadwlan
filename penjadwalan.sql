-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2024 at 02:03 AM
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
-- Database: `penjadwalan`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosens`
--

CREATE TABLE `dosens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Nama_Dosen` varchar(255) NOT NULL,
  `NIP` varchar(255) NOT NULL,
  `Prodi` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dosens`
--

INSERT INTO `dosens` (`id`, `Nama_Dosen`, `NIP`, `Prodi`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Irfan Syamsuddin,S.T. M.Com.ISM.,Ph.D.', '197312202000031008', 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Ir.Dahlia,M.T.', '196412311991032003', 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Muh. Fajri Raharjo,S.T, M.T.', '197005211996011001', 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Iin Karmila Yusri,S.ST., M.Eng., Ph.D.', '197604032002122001', 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Irmawati,S.T.,M.T.', '197811242012122002', 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Drs.Kasim,M.T.', '196306201991031002', 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Eddy Tungadi,S.T., M.T.', '197908232010121001', 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Meylanie Olivya,S.T.,M.T.', '198205032014042002', 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Rini Nur,S.T., M.T.', '197307132009122001', 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Muhammad Nur Yasir Utomo, S.ST, M.Eng.', '199211242019031012', 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Tantri Indrabulan, S.T, M.T.', '199002052020122004', 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Fadli Tamrin, S.Kom.,M.Cs.', '198912232022031006', 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Amhar Davi Dewantara, S.Kom., M.T.I.', '198707142022031003', 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Hartinah, S.ST., M.Kom.', '199609052024062001', 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, '⁠Andi Asvin Mahersatillah Suradi, S.Kom., M.T.', '199506032024061001', 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Pulung Hendro Prastyo, S.S.T., M.Eng.', '199509262024061001', 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Muhammad Rizal, S.Kom., M.T.', '199208262024061002', 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Ardiansyah, S.Kom., M.Kom.', '199305122024061002', 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Wahyuddin Saputra, S.Kom., M.T.', '199105142024061001', 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Budy Santoso, S.Kom., M.Eng.', '198404082024211007', 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Naely Muchtar, S.Pd., M.Pd.', '198312212000041009', 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Dr. Ir Nurhayati, S.Si.,M.T.', '197205032000122001', 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Asriyadi, S.ST.,M.Eng.', '197708142003121002', 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Muhammad Ilyas Syarif, S.ST.,M.Kom.', '198005052006041003', 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Muhammad Ahyar, S.ST.,M.T.', '198410272008121003', 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Syahrir, S.T.,M.T.', '198512192015041003', 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Alvian Bastian, S.ST.,M.Sc.', '198709052019031006', 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Nurul Khaerani Hamzidah, S.T.,M.T.', '198908142019032020', 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Ainun Jariyah, S.T.,M.T.', '198909072022032007', 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Muh. Irsan S, S.Kom.,M.T.', '199106172022031005', 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Andi Hamdianah, S.Kom.,M.Kom.', '199210202023212050', 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Nur Ichzan As, S.Si.,M.Si.', '198904192024211022', 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Irvan Muzakkir, S.Kom.,M.Kom.', '198603112024211017', 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Andi Syarwani, S.ST.,M.T.', '199108032024062002', 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Nurhikmayana Janna, S.T.,M.Kom.', '199407182024062001', 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'M. Rudini Kurniawan Amiruddin, S.ST.,M.T.', '199505252024061001', 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Achmad Zulfajri Syaharuddin, S.ST.,M.T.', '199611022024061003', 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Sri Suci Indasari, S.Kom.,M.Kom.', '199711052024062001', 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Andi Asyraf Furqan, S.Kom.,M.Kom.', '199611122024061002', 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Syahril Syam S.Kom.,M.T.', '197807022008011006', 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Dr. Alimin, M.Pd.', '195908121990031002', 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Dr. Khairun Nisa, S.PdI.,M.PdI.', '198405012010122006', 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Aulia Susantri, S.H.,M.H.', 'Dosen Part-Timer', 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Nurmiani, S.H.,M.H.', 'Dosen Part-Timer', 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `haris`
--

CREATE TABLE `haris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Nama_Hari` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `haris`
--

INSERT INTO `haris` (`id`, `Nama_Hari`, `created_at`, `updated_at`) VALUES
(1, 'Senin', '2024-10-23 13:26:05', '2024-10-23 13:26:05'),
(2, 'Selasa', '2024-10-23 22:15:13', '2024-10-23 22:15:13'),
(3, 'Rabu', '2024-10-23 22:15:18', '2024-10-23 22:15:18'),
(4, 'Kamis', '2024-10-23 22:15:23', '2024-10-23 22:15:23'),
(5, 'Jum\'at', '2024-10-23 22:15:31', '2024-10-23 22:15:31');

-- --------------------------------------------------------

--
-- Table structure for table `jams`
--

CREATE TABLE `jams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Jam_Ke` varchar(255) NOT NULL,
  `Waktu` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jams`
--

INSERT INTO `jams` (`id`, `Jam_Ke`, `Waktu`, `created_at`, `updated_at`) VALUES
(1, '1', '07:30 - 08:20', '2024-08-21 11:26:04', '2024-09-02 15:17:22'),
(2, '2', '08:20 - 09:10', '2024-08-21 11:26:04', '2024-09-02 15:15:19'),
(3, '3', '09:10 - 10:00', '2024-08-21 11:26:04', '2024-09-02 15:17:54'),
(4, '4', '10:20 - 11:10', '2024-08-21 11:26:04', '2024-09-02 15:18:43'),
(5, '5', '11:10 - 12:00', '2024-08-21 11:26:04', '2024-09-02 15:19:05'),
(6, '6', '13:00 - 13:50', '2024-09-02 15:19:42', '2024-09-02 15:19:42'),
(7, '7', '13:50 - 14:40', '2024-09-02 15:20:19', '2024-09-02 15:20:19'),
(8, '8', '14:40 - 15:30', '2024-09-02 15:21:09', '2024-09-02 15:21:09'),
(9, '9', '16:00 - 16:50', '2024-09-02 15:21:42', '2024-09-02 15:21:42'),
(10, '10', '16:50 - 17:40', '2024-09-02 15:22:06', '2024-09-02 15:22:06');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kelas` varchar(255) NOT NULL,
  `prodi` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `nama_kelas`, `prodi`, `created_at`, `updated_at`) VALUES
(1, '1A-TKJ', 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '1B-TKJ', 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '1C-TKJ', 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '1D-TKJ', 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '2A-TKJ', 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, '2B-TKJ', 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, '3A-TKJ', 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, '3B-TKJ', 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, '3C-TKJ', 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, '1A-TMJ', 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, '1B-TMJ', 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, '1C-TMJ', 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, '1D-TMJ-K', 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, '2A-TMJ', 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, '2B-TMJ', 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, '2C-TMJ-K', 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, '3A-TMJ', 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, '3B-TMJ', 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, '4A-TMJ', 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, '4B-TMJ', 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `matkuls`
--

CREATE TABLE `matkuls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_mata_kuliah` varchar(255) NOT NULL,
  `kode_mata_kuliah` varchar(255) NOT NULL,
  `sks` int(11) NOT NULL,
  `prodi` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `matkuls`
--

INSERT INTO `matkuls` (`id`, `nama_mata_kuliah`, `kode_mata_kuliah`, `sks`, `prodi`, `created_at`, `updated_at`) VALUES
(1, 'Arsitektur Komputer dan Sistem Operasi', '425P2110633', 3, 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Keamanan Informasi', '425P2150433', 3, 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Bengkel Komputer & Jaringan', '425P2110822', 2, 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Perangkat Elektronika', '425P2110312', 2, 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Rangkaian Listrik Arus Searah', '425J2110212', 2, 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Pengantar Teknologi Informasi', '425J2110512', 2, 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Sistem Embedded dan IoT', '425P2150333', 3, 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Sistem Digital', '425P2110733', 3, 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Statistik dan Probabilitas', '425P2130212', 2, 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Rekayasa Jaringan Komputer Dasar', '425P2130833', 3, 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Kewirausahaan ', '425I2150112', 2, 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Manajemen dan Desain Jaringan', '425P2150212', 2, 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Administrasi Jaringan', '425P2150633', 3, 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Desain dan Pemrograman Web', '425P2130733', 3, 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Matematika Diskrit', '425P2110412', 2, 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Desain Algoritma', '425P2130312', 2, 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Algoritma dan Pemrograman', '425P2110933', 3, 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Aplikasi Mobile', '425P2150733', 3, 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Administrasi Basis Data', '425P2130433', 3, 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Teknologi Jaringan Komputer', '425P2130633', 3, 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Sistem Terdistribusi', '425P2150533', 3, 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Pemrograman Berorientasi Objek', '425P2130533', 3, 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Bahasa Inggris Umum', '425I2110112', 2, 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Bahasa Inggris Komunikasi', '425P2130112', 2, 'D4-Teknik Komputer Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Fisika Teknik', '426J2110312', 2, 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Pengenalan Teknologi Informasi', '426P2110833', 3, 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Internet of Things', '426P2150433', 3, 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Kecerdasan Buatan', '426P2150733', 3, 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Etika Profesi', '426I21770112', 2, 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Algoritma dan Dasar Pemrograman', '426P2110633', 3, 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Kesehatan dan Keselamatan Kerja (K3)', '426I21770212', 2, 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Manajemen Proyek Perangkat Lunak', '426P2170532', 2, 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Pengantar Teknik Elektro', '426P2110533', 3, 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Organisasi dan Arsitektur Komputer', '426P2110712', 2, 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Bengkel Multimedia dan Jaringan', '426P2110922', 2, 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Kapita Selekta', '426P2170332', 3, 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Administrasi Jaringan', '426P2130433', 3, 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Pemrograman Berorientasi Objek', '426P2130733', 3, 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Proyek Desain Arsitektur Jaringan', '426P2170622', 2, 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Desain dan Pengembangan Multimedia', '426P2130633', 3, 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Proyek Multimedia dan Game', '426P2150322', 2, 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Grafika Komputer', '426P2130833', 3, 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Desain Web', '426P2130333', 3, 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Keamanan Informasi', '426P2150833', 3, 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Pengolahan Citra dan Video', '426P2150633', 3, 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Proposal Proyek Akhir', '426P2170421', 1, 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Magang', '426I2160729', 9, 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Komunikasi Data Multimedia', '426P2130212', 2, 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Produksi dan Pemrosesan Audio', '426P2150233', 3, 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Basis Data Multimedia', '426P2130533', 3, 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Metode Numerik', '426P2150533', 3, 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Matematika Dasar', '426P2110412', 2, 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Matematika Diskrit', '426P2130112', 2, 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Bahasa Inggris Umum', '426J2110212', 2, 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'Pendidikan Agama', '426U2110112', 2, 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Pendidikan Pancasila', '426U2150112', 2, 'D4-Teknik Multimedia Jaringan', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2024_10_23_201233_create_kelas_table', 3),
(8, '2024_10_23_211558_create_ruangans_table', 4),
(9, '2024_10_23_212240_create_haris_table', 5),
(10, '2024_10_24_050419_create_jams_table', 6),
(12, '2024_10_23_191441_create_dosens_table', 7),
(13, '2024_10_23_192125_create_matkuls_table', 8),
(17, '2024_10_28_051733_create_pengampu_t_k_j_s_table', 9),
(18, '2024_10_28_224602_create_pengampu_t_m_j_s_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `pengampu`
-- (See below for the actual view)
--
CREATE TABLE `pengampu` (
`id` bigint(20) unsigned
,`matkul_id` bigint(20) unsigned
,`dosen_pj` bigint(20) unsigned
,`dosen_anggota` bigint(20) unsigned
,`kelas_id` bigint(20) unsigned
,`jumlah_jam` int(11)
,`created_at` timestamp
,`updated_at` timestamp
);

-- --------------------------------------------------------

--
-- Table structure for table `pengampu_t_k_j_s`
--

CREATE TABLE `pengampu_t_k_j_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `matkul_id` bigint(20) UNSIGNED NOT NULL,
  `dosen_pj` bigint(20) UNSIGNED NOT NULL,
  `dosen_anggota` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah_jam` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengampu_t_k_j_s`
--

INSERT INTO `pengampu_t_k_j_s` (`id`, `matkul_id`, `dosen_pj`, `dosen_anggota`, `kelas_id`, `jumlah_jam`, `created_at`, `updated_at`) VALUES
(1, 19, 13, 13, 1, 4, '2024-10-27 23:32:38', '2024-10-27 23:32:38'),
(2, 13, 13, 10, 2, 5, '2024-10-27 23:43:34', '2024-10-27 23:43:34'),
(3, 18, 20, 12, 4, 3, '2024-10-27 23:57:21', '2024-10-27 23:57:21'),
(4, 18, 6, 10, 3, 4, '2024-10-28 00:06:52', '2024-10-28 00:06:52');

-- --------------------------------------------------------

--
-- Table structure for table `pengampu_t_m_j_s`
--

CREATE TABLE `pengampu_t_m_j_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `matkul_id` bigint(20) UNSIGNED NOT NULL,
  `dosen_pj` bigint(20) UNSIGNED NOT NULL,
  `dosen_anggota` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah_jam` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengampu_t_m_j_s`
--

INSERT INTO `pengampu_t_m_j_s` (`id`, `matkul_id`, `dosen_pj`, `dosen_anggota`, `kelas_id`, `jumlah_jam`, `created_at`, `updated_at`) VALUES
(1, 49, 25, 30, 14, 5, '2024-10-28 14:50:53', '2024-10-28 14:50:53');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ruangans`
--

CREATE TABLE `ruangans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Nama_Ruangan` varchar(255) NOT NULL,
  `Kode_Ruangan` varchar(255) NOT NULL,
  `Lokasi` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ruangans`
--

INSERT INTO `ruangans` (`id`, `Nama_Ruangan`, `Kode_Ruangan`, `Lokasi`, `created_at`, `updated_at`) VALUES
(1, 'EL2.203-Kampus 2', 'EL2.203-K2', 'Kampus 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'EL3.309-Kampus 2', 'EL3.309-K2', 'Kampus 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'EL3.107-Kampus 2', 'EL3.107-K2', 'Kampus 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'EL3-Sisfo-Kampus 2', 'EL3-Sisfo-K2', 'Kampus 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'EL3.208-Kampus 2', 'EL3.208-K2', 'Kampus 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'CNAP-AD305-Kampus 1', 'CNAP-AD305-K1', 'Kampus 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'EL3.106-Kampus 2', 'EL3.106-K2', 'Kampus 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'IoT-AD-Kampus 1', 'IoT-AD-K1', 'Kampus 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'TC209b-Kampus 1', 'TC209b-K1', 'Kampus 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'EL3.307-Kampus 2', 'EL3.307-K2', 'Kampus 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'EL2.104-Kampus 2', 'EL2.104-K2', 'Kampus 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'GS-301-Kampus 1', 'GS-301-K1', 'Kampus 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'EL3.308-Kampus 2', 'EL3.308-K2', 'Kampus 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'EL3.211-Kampus 2', 'EL3.211-K2', 'Kampus 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'EL2.205-Kampus 2', 'EL2.205-K2', 'Kampus 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'EL2.208-Kampus 2', 'EL2.208-K2', 'Kampus 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'JTE-EL3.207-Kampus 2', 'JTE-EL3.207-K2', 'Kampus 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'EL3.301-Kampus 2', 'EL3.301-K2', 'Kampus 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'EL2.206-Kampus 2', 'EL2.206-K2', 'Kampus 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'EL3.302-Kampus 2', 'EL3.302-K2', 'Kampus 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'EL2.204-Kampus 2', 'EL2.204-K2', 'Kampus 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'GS-308-Kampus 1', 'GS-308-K1', 'Kampus 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Aula-GS-Lt3-Kampus 1', 'Aula-GS-Lt3-K1', 'Kampus 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$WTvYKslXn.VN1s1rz5vWvuu5j5ct3weqfqxAN6Sv/tJBw5579mTzu', '', NULL, '2024-10-23 11:08:40', '2024-10-23 11:08:40');

-- --------------------------------------------------------

--
-- Structure for view `pengampu`
--
DROP TABLE IF EXISTS `pengampu`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pengampu`  AS SELECT `pengampu_t_k_j_s`.`id` AS `id`, `pengampu_t_k_j_s`.`matkul_id` AS `matkul_id`, `pengampu_t_k_j_s`.`dosen_pj` AS `dosen_pj`, `pengampu_t_k_j_s`.`dosen_anggota` AS `dosen_anggota`, `pengampu_t_k_j_s`.`kelas_id` AS `kelas_id`, `pengampu_t_k_j_s`.`jumlah_jam` AS `jumlah_jam`, `pengampu_t_k_j_s`.`created_at` AS `created_at`, `pengampu_t_k_j_s`.`updated_at` AS `updated_at` FROM `pengampu_t_k_j_s`union all select `pengampu_t_m_j_s`.`id` AS `id`,`pengampu_t_m_j_s`.`matkul_id` AS `matkul_id`,`pengampu_t_m_j_s`.`dosen_pj` AS `dosen_pj`,`pengampu_t_m_j_s`.`dosen_anggota` AS `dosen_anggota`,`pengampu_t_m_j_s`.`kelas_id` AS `kelas_id`,`pengampu_t_m_j_s`.`jumlah_jam` AS `jumlah_jam`,`pengampu_t_m_j_s`.`created_at` AS `created_at`,`pengampu_t_m_j_s`.`updated_at` AS `updated_at` from `pengampu_t_m_j_s`  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosens`
--
ALTER TABLE `dosens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `haris`
--
ALTER TABLE `haris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jams`
--
ALTER TABLE `jams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matkuls`
--
ALTER TABLE `matkuls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pengampu_t_k_j_s`
--
ALTER TABLE `pengampu_t_k_j_s`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengampu_t_k_j_s_matkul_id_foreign` (`matkul_id`),
  ADD KEY `pengampu_t_k_j_s_dosen_pj_foreign` (`dosen_pj`),
  ADD KEY `pengampu_t_k_j_s_dosen_anggota_foreign` (`dosen_anggota`),
  ADD KEY `pengampu_t_k_j_s_kelas_id_foreign` (`kelas_id`);

--
-- Indexes for table `pengampu_t_m_j_s`
--
ALTER TABLE `pengampu_t_m_j_s`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengampu_t_m_j_s_matkul_id_foreign` (`matkul_id`),
  ADD KEY `pengampu_t_m_j_s_dosen_pj_foreign` (`dosen_pj`),
  ADD KEY `pengampu_t_m_j_s_dosen_anggota_foreign` (`dosen_anggota`),
  ADD KEY `pengampu_t_m_j_s_kelas_id_foreign` (`kelas_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `ruangans`
--
ALTER TABLE `ruangans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dosens`
--
ALTER TABLE `dosens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `haris`
--
ALTER TABLE `haris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jams`
--
ALTER TABLE `jams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `matkuls`
--
ALTER TABLE `matkuls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pengampu_t_k_j_s`
--
ALTER TABLE `pengampu_t_k_j_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pengampu_t_m_j_s`
--
ALTER TABLE `pengampu_t_m_j_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ruangans`
--
ALTER TABLE `ruangans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pengampu_t_k_j_s`
--
ALTER TABLE `pengampu_t_k_j_s`
  ADD CONSTRAINT `pengampu_t_k_j_s_dosen_anggota_foreign` FOREIGN KEY (`dosen_anggota`) REFERENCES `dosens` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pengampu_t_k_j_s_dosen_pj_foreign` FOREIGN KEY (`dosen_pj`) REFERENCES `dosens` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pengampu_t_k_j_s_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pengampu_t_k_j_s_matkul_id_foreign` FOREIGN KEY (`matkul_id`) REFERENCES `matkuls` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pengampu_t_m_j_s`
--
ALTER TABLE `pengampu_t_m_j_s`
  ADD CONSTRAINT `pengampu_t_m_j_s_dosen_anggota_foreign` FOREIGN KEY (`dosen_anggota`) REFERENCES `dosens` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pengampu_t_m_j_s_dosen_pj_foreign` FOREIGN KEY (`dosen_pj`) REFERENCES `dosens` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pengampu_t_m_j_s_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pengampu_t_m_j_s_matkul_id_foreign` FOREIGN KEY (`matkul_id`) REFERENCES `matkuls` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
