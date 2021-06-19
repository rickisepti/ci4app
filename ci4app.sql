-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2021 at 11:18 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4app`
--

-- --------------------------------------------------------

--
-- Table structure for table `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(18, 'Attack on Titan Volume 1', 'attack-on-titan-volume-1', 'Hajime Isayama', 'Elex Media', '1623942293_2633bfa14100c8b887c8.png', '2021-06-17 10:04:17', '2021-06-17 10:07:05'),
(19, 'Attack on Titan Volume 2', 'attack-on-titan-volume-2', 'Hajime Isayama', 'Elex Media', '1623942311_9b61a76dfcbe492edf59.png', '2021-06-17 10:05:11', '2021-06-18 03:07:21'),
(20, 'Attack on Titan Volume 3', 'attack-on-titan-volume-3', 'Hajime Isayama', 'Elex Media', '1623942330_a71e265a75b851e0e40b.png', '2021-06-17 10:05:30', '2021-06-17 10:05:30'),
(21, 'Attack on Titan Volume 4', 'attack-on-titan-volume-4', 'Hajime Isayama', 'Elex Media', '1624023573_e2735d43e1659d370b3b.png', '2021-06-18 08:39:33', '2021-06-18 08:39:33'),
(22, 'Attack on Titan Volume 5', 'attack-on-titan-volume-5', 'Hajime Isayama', 'Elex Media', '1624023720_f2d7402730a06c8e8d4b.png', '2021-06-18 08:42:00', '2021-06-18 08:42:00'),
(23, 'Attack on Titan Volume 6', 'attack-on-titan-volume-6', 'Hajime Isayama', 'Elex Media', '1624023741_b21ef1caad7627fb3d47.png', '2021-06-18 08:42:21', '2021-06-18 08:42:21'),
(24, 'Attack on Titan Volume 7', 'attack-on-titan-volume-7', 'Hajime Isayama', 'Elex Media', '1624023778_fceac7a526fdc0cf2aa9.png', '2021-06-18 08:42:58', '2021-06-18 08:42:58'),
(25, 'Attack on Titan Volume 8', 'attack-on-titan-volume-8', 'Hajime Isayama', 'Elex Media', '1624023798_c561b274a065f31ceeb8.png', '2021-06-18 08:43:18', '2021-06-18 08:43:18'),
(26, 'Attack on Titan Volume 9', 'attack-on-titan-volume-9', 'Hajime Isayama', 'Elex Media', '1624023834_61873829d73eccfa79bd.png', '2021-06-18 08:43:54', '2021-06-18 08:43:54'),
(27, 'Attack on Titan Volume 10', 'attack-on-titan-volume-10', 'Hajime Isayama', 'Elex Media', '1624023855_da3fbc96d8d5cd6b53f6.png', '2021-06-18 08:44:15', '2021-06-18 08:44:15'),
(28, 'Attack on Titan Volume 11', 'attack-on-titan-volume-11', 'Hajime Isayama', 'Elex Media', '1624023873_6113cfd8ee6c0228347a.png', '2021-06-18 08:44:33', '2021-06-18 08:44:33'),
(29, 'Attack on Titan Volume 12', 'attack-on-titan-volume-12', 'Hajime Isayama', 'Elex Media', '1624023935_4c44978055556a25d2b8.png', '2021-06-18 08:45:35', '2021-06-18 08:45:35'),
(30, 'Attack on Titan Volume 13', 'attack-on-titan-volume-13', 'Hajime Isayama', 'Elex Media', '1624023958_e7342b7d481a925e1451.png', '2021-06-18 08:45:58', '2021-06-18 08:45:58'),
(31, 'Attack on Titan Volume 14', 'attack-on-titan-volume-14', 'Hajime Isayama', 'Elex Media', '1624023982_0f7b970ccf6f20722cce.png', '2021-06-18 08:46:22', '2021-06-18 08:46:22'),
(32, 'Attack on Titan Volume 15', 'attack-on-titan-volume-15', 'Hajime Isayama', 'Elex Media', '1624024007_7b1575e24d082a40fce9.png', '2021-06-18 08:46:47', '2021-06-18 08:46:47'),
(33, 'Attack on Titan Volume 16', 'attack-on-titan-volume-16', 'Hajime Isayama', 'Elex Media', '1624024033_6b5ca578267d0d89da24.png', '2021-06-18 08:47:13', '2021-06-18 08:47:13'),
(34, 'Attack on Titan Volume 17', 'attack-on-titan-volume-17', 'Hajime Isayama', 'Elex Media', '1624024055_8367fba341ae92ea7006.png', '2021-06-18 08:47:35', '2021-06-18 08:47:35'),
(35, 'Attack on Titan Volume 18', 'attack-on-titan-volume-18', 'Hajime Isayama', 'Elex Media', '1624024094_5f24465dcdce7bc2ecf9.png', '2021-06-18 08:48:14', '2021-06-18 08:48:14'),
(36, 'Attack on Titan Volume 19', 'attack-on-titan-volume-19', 'Hajime Isayama', 'Elex Media', '1624024118_b2de0474df4b445a88c2.png', '2021-06-18 08:48:38', '2021-06-18 08:48:38'),
(37, 'Attack on Titan Volume 20', 'attack-on-titan-volume-20', 'Hajime Isayama', 'Elex Media', '1624024145_e71f1ba214f1b9cb6a13.png', '2021-06-18 08:49:05', '2021-06-18 08:49:05'),
(38, 'Attack on Titan Volume 21', 'attack-on-titan-volume-21', 'Hajime Isayama', 'Elex Media', '1624024171_3d2552156a7ccfca3e36.png', '2021-06-18 08:49:31', '2021-06-18 08:49:31'),
(39, 'Attack on Titan Volume 22', 'attack-on-titan-volume-22', 'Hajime Isayama', 'Elex Media', '1624024198_234327ee6865adcbe790.png', '2021-06-18 08:49:58', '2021-06-18 08:49:58'),
(40, 'Attack on Titan Volume 23', 'attack-on-titan-volume-23', 'Hajime Isayama', 'Elex Media', '1624024222_507ea5ab52085cc54855.png', '2021-06-18 08:50:22', '2021-06-18 08:50:22'),
(41, 'Attack on Titan Volume 24', 'attack-on-titan-volume-24', 'Hajime Isayama', 'Elex Media', '1624024248_35ee496ed0451b39e2db.png', '2021-06-18 08:50:48', '2021-06-18 08:50:48'),
(42, 'Attack on Titan Volume 25', 'attack-on-titan-volume-25', 'Hajime Isayama', 'Elex Media', '1624024271_03709d8b7975f6ea4115.png', '2021-06-18 08:51:11', '2021-06-18 08:51:11'),
(43, 'Attack on Titan Volume 26', 'attack-on-titan-volume-26', 'Hajime Isayama', 'Elex Media', '1624024295_30487a29640849aeed6b.png', '2021-06-18 08:51:35', '2021-06-18 08:51:35'),
(44, 'Attack on Titan Volume 27', 'attack-on-titan-volume-27', 'Hajime Isayama', 'Elex Media', '1624024323_86fe8b27b6d00009fe79.png', '2021-06-18 08:52:03', '2021-06-18 08:52:03'),
(45, 'Attack on Titan Volume 28', 'attack-on-titan-volume-28', 'Hajime Isayama', 'Elex Media', '1624024346_ed43b86e285daeacf74b.png', '2021-06-18 08:52:26', '2021-06-18 08:52:26'),
(46, 'Attack on Titan Volume 29', 'attack-on-titan-volume-29', 'Hajime Isayama', 'Elex Media', '1624024391_376b47ae30e280ae4d97.png', '2021-06-18 08:53:11', '2021-06-18 08:53:11'),
(47, 'Attack on Titan Volume 30', 'attack-on-titan-volume-30', 'Hajime Isayama', 'Elex Media', '1624024421_54e11231551a40b35363.png', '2021-06-18 08:53:41', '2021-06-18 08:53:41'),
(48, 'Attack on Titan Volume 31', 'attack-on-titan-volume-31', 'Hajime Isayama', 'Elex Media', '1624024444_1a1ac53fc7f07d68ba82.png', '2021-06-18 08:54:04', '2021-06-18 08:54:04'),
(49, 'Attack on Titan Volume 32', 'attack-on-titan-volume-32', 'Hajime Isayama', 'Elex Media', '1624024471_884c775f8ee865e270b1.png', '2021-06-18 08:54:31', '2021-06-18 08:54:31'),
(50, 'Attack on Titan Volume 33', 'attack-on-titan-volume-33', 'Hajime Isayama', 'Elex Media', '1624024494_ad2d6b4033a6d5bb9f86.png', '2021-06-18 08:54:54', '2021-06-18 08:54:54'),
(51, 'Attack on Titan Volume 34', 'attack-on-titan-volume-34', 'Hajime Isayama', 'Elex Media', '1624024927_ea88d535cbd9ea28ee42.png', '2021-06-18 09:02:07', '2021-06-18 09:02:07');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(5, '2021-06-18-081753', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1624093723, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Lili Laila Kusmawati S.E.I', 'Kpg. Samanhudi No. 546, Sorong 45863, Bengkulu', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(2, 'Gilda Agustina', 'Ki. Raya Ujungberung No. 550, Sawahlunto 26895, Riau', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(3, 'Ulya Dina Pudjiastuti', 'Dk. Abdul No. 30, Semarang 33832, Sumut', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(4, 'Hilda Wulandari', 'Ki. Umalas No. 521, Mojokerto 35457, Jabar', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(5, 'Nrima Radika Kuswoyo', 'Psr. Tambun No. 919, Sibolga 78750, Kalteng', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(6, 'Harimurti Irsad Gunawan M.M.', 'Psr. Imam No. 382, Solok 55812, Kaltim', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(7, 'Respati Gangsar Januar M.Pd', 'Jln. Sudirman No. 110, Bandung 77350, Pabar', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(8, 'Raihan Dadi Hidayanto S.Pd', 'Jr. Sukabumi No. 569, Pematangsiantar 30900, Kaltara', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(9, 'Betania Usada', 'Jr. Sadang Serang No. 715, Padangsidempuan 55813, Riau', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(10, 'Caraka Adikara Kuswoyo', 'Gg. Gajah No. 971, Banjarbaru 22979, Jabar', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(11, 'Lili Utami S.Ked', 'Dk. K.H. Maskur No. 799, Palangka Raya 59479, Babel', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(12, 'Atma Nashiruddin', 'Jln. Yosodipuro No. 612, Bukittinggi 82901, Sulsel', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(13, 'Gara Lutfan Widodo', 'Gg. Taman No. 904, Administrasi Jakarta Timur 85022, Jabar', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(14, 'Kania Lestari', 'Kpg. B.Agam Dlm No. 652, Bekasi 99437, Sumut', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(15, 'Edison Jasmani Napitupulu S.E.I', 'Gg. Orang No. 87, Sungai Penuh 77197, Banten', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(16, 'Rahmi Cornelia Nurdiyanti', 'Jr. Yosodipuro No. 294, Medan 75531, Kaltara', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(17, 'Iriana Rahmawati', 'Dk. Elang No. 515, Banjarmasin 77964, Sultra', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(18, 'Karen Wijayanti', 'Psr. Sukabumi No. 903, Palopo 22654, Sumut', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(19, 'Ajeng Hasanah', 'Jln. Basuki No. 85, Administrasi Jakarta Timur 70104, Babel', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(20, 'Taufan Jais Kurniawan', 'Dk. Gegerkalong Hilir No. 938, Pekanbaru 48936, Malut', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(21, 'Rina Wulandari S.Psi', 'Jr. Surapati No. 199, Surakarta 50588, Sulteng', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(22, 'Cakrawala Samsul Wibowo S.Pt', 'Dk. Bawal No. 583, Palopo 81355, Malut', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(23, 'Ika Wahyuni', 'Psr. Merdeka No. 821, Blitar 21421, Banten', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(24, 'Rudi Panji Iswahyudi', 'Gg. Taman No. 462, Bogor 61812, Lampung', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(25, 'Rina Susanti', 'Ki. Baranangsiang No. 221, Bekasi 78385, Malut', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(26, 'Raisa Irma Palastri S.Psi', 'Dk. Basoka Raya No. 334, Bengkulu 28374, NTB', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(27, 'Kajen Adriansyah', 'Ki. Setiabudhi No. 830, Metro 11797, Sultra', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(28, 'Rafi Vinsen Prasasta', 'Jln. Dahlia No. 822, Sorong 37344, Sulsel', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(29, 'Olivia Novitasari M.Ak', 'Jr. Salak No. 42, Blitar 67409, NTB', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(30, 'Jono Eluh Hutasoit S.Gz', 'Jln. Monginsidi No. 443, Palu 79694, Malut', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(31, 'Wardi Hardiansyah', 'Jln. Gambang No. 683, Sungai Penuh 37079, Gorontalo', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(32, 'Bagya Ardianto S.Gz', 'Jln. Hasanuddin No. 285, Kotamobagu 43933, Papua', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(33, 'Rahmi Pratiwi', 'Jln. Bakti No. 593, Tomohon 55252, Kalbar', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(34, 'Nugraha Hartana Wibowo M.Farm', 'Dk. Daan No. 107, Tangerang Selatan 84735, Jabar', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(35, 'Lasmono Karna Nainggolan', 'Gg. Laswi No. 765, Banda Aceh 35764, Jabar', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(36, 'Citra Yessi Haryanti', 'Dk. Gotong Royong No. 59, Batu 30731, Kalsel', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(37, 'Danang Natsir S.Kom', 'Gg. Cikutra Timur No. 408, Binjai 56198, Sulsel', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(38, 'Mutia Wirda Oktaviani S.IP', 'Ki. Perintis Kemerdekaan No. 454, Administrasi Jakarta Selatan 86727, Babel', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(39, 'Sadina Nurdiyanti', 'Ki. Adisucipto No. 423, Batam 24003, Lampung', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(40, 'Rosman Ozy Nababan M.Pd', 'Ki. Raya Ujungberung No. 792, Salatiga 53022, Sumut', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(41, 'Rika Cici Riyanti', 'Jln. Camar No. 226, Manado 38348, Jateng', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(42, 'Wani Siti Handayani S.E.I', 'Ki. Lada No. 74, Bandung 11151, Jambi', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(43, 'Dina Rahmawati', 'Gg. Wahidin No. 974, Cimahi 99630, Kepri', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(44, 'Vanesa Purwanti', 'Jr. Tubagus Ismail No. 194, Tegal 48423, Jateng', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(45, 'Rina Zahra Halimah M.TI.', 'Jr. Sutarjo No. 539, Padangsidempuan 13135, Kalbar', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(46, 'Banara Ade Simbolon S.E.I', 'Kpg. Gading No. 142, Tanjungbalai 76779, Bengkulu', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(47, 'Wahyu Sihombing S.E.', 'Kpg. Abang No. 878, Tidore Kepulauan 67427, Jambi', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(48, 'Qori Lestari S.Ked', 'Dk. Bara Tambar No. 770, Tidore Kepulauan 82161, Lampung', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(49, 'Balangga Heru Hakim S.H.', 'Psr. Basoka No. 867, Sawahlunto 50802, Maluku', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(50, 'Jamalia Usamah', 'Jln. Hang No. 730, Tanjung Pinang 75142, Jabar', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(51, 'Zahra Elisa Pertiwi', 'Jln. Laswi No. 838, Sawahlunto 90051, Kalbar', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(52, 'Cinthia Melani', 'Kpg. Dr. Junjunan No. 385, Dumai 71795, DKI', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(53, 'Queen Kania Usamah S.Ked', 'Gg. Diponegoro No. 561, Medan 65721, Sulsel', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(54, 'Yani Wulandari', 'Ki. Panjaitan No. 658, Bogor 83117, Papua', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(55, 'Amelia Mardhiyah', 'Psr. Otto No. 126, Medan 41792, Maluku', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(56, 'Narji Ardianto', 'Ki. Baik No. 544, Tebing Tinggi 25193, Jambi', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(57, 'Puput Yessi Hastuti', 'Ki. Tangkuban Perahu No. 674, Tebing Tinggi 24477, Jateng', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(58, 'Maida Hariyah', 'Dk. Abang No. 67, Administrasi Jakarta Timur 21269, Sulut', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(59, 'Padma Usada', 'Ds. Gading No. 682, Palopo 24599, Sulsel', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(60, 'Siska Julia Pertiwi', 'Jr. Bazuka Raya No. 795, Banjarmasin 48588, Jateng', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(61, 'Ida Suci Puspasari M.Ak', 'Gg. Orang No. 860, Sorong 48694, Papua', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(62, 'Jane Pratiwi', 'Dk. Barasak No. 744, Manado 86245, Babel', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(63, 'Puji Wulandari S.IP', 'Kpg. Sunaryo No. 643, Bukittinggi 52091, Gorontalo', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(64, 'Ade Jaka Firmansyah M.Ak', 'Jr. Surapati No. 960, Magelang 48367, Sulbar', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(65, 'Raden Gunarto', 'Kpg. Bacang No. 207, Pematangsiantar 82195, Kalbar', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(66, 'Alika Aisyah Permata', 'Ds. Kalimalang No. 346, Padangpanjang 16390, Bengkulu', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(67, 'Gasti Lailasari', 'Dk. Reksoninten No. 641, Salatiga 19991, Papua', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(68, 'Lalita Putri Mardhiyah', 'Jr. Asia Afrika No. 861, Subulussalam 35374, Sultra', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(69, 'Harsaya Respati Prabowo S.H.', 'Jr. Bah Jaya No. 719, Cirebon 76491, Kepri', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(70, 'Septi Yessi Padmasari', 'Jln. Padang No. 147, Magelang 69979, DIY', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(71, 'Candra Saragih', 'Dk. Gardujati No. 271, Pariaman 55920, Kalsel', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(72, 'Ibrahim Jabal Setiawan M.Farm', 'Gg. Barasak No. 938, Depok 62095, DIY', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(73, 'Citra Melinda Zulaika S.IP', 'Ki. Yoga No. 568, Malang 33736, Kalbar', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(74, 'Saadat Saka Saputra S.Farm', 'Jln. Gardujati No. 216, Palangka Raya 96332, Kalbar', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(75, 'Zahra Rahimah', 'Jln. Sadang Serang No. 363, Padang 25582, Sulsel', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(76, 'Adika Kawaca Suwarno', 'Jln. Zamrud No. 560, Sungai Penuh 14645, Bali', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(77, 'Chelsea Winarsih', 'Dk. Baan No. 932, Subulussalam 68923, Sumbar', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(78, 'Lala Suryatmi', 'Jln. Bambon No. 227, Parepare 77381, Kaltara', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(79, 'Umaya Mahfud Damanik S.Farm', 'Jln. Bakin No. 959, Pekanbaru 57539, DKI', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(80, 'Eli Melani', 'Kpg. Sam Ratulangi No. 130, Gunungsitoli 89838, Lampung', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(81, 'Warta Najmudin', 'Kpg. Abdul Rahmat No. 695, Padang 15814, Kaltim', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(82, 'Limar Mahendra S.IP', 'Jr. Suryo No. 165, Bogor 73162, Gorontalo', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(83, 'Maryanto Uwais', 'Dk. Basket No. 231, Padangpanjang 55866, NTT', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(84, 'Cawisono Lazuardi', 'Ki. Sunaryo No. 4, Sorong 49721, Bengkulu', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(85, 'Danu Megantara', 'Psr. Industri No. 279, Tegal 36292, Kalsel', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(86, 'Jabal Utama', 'Kpg. Kiaracondong No. 923, Administrasi Jakarta Timur 31684, Sumsel', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(87, 'Juli Safitri', 'Jln. Abdullah No. 475, Tarakan 22377, Gorontalo', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(88, 'Dimaz Kusumo S.Ked', 'Kpg. Bayan No. 715, Dumai 51928, Kalteng', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(89, 'Dalimin Budiyanto S.Pd', 'Ki. R.E. Martadinata No. 670, Bekasi 23064, Papua', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(90, 'Mitra Cawuk Maheswara S.Sos', 'Ds. Sugiono No. 332, Tanjung Pinang 20180, Sultra', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(91, 'Ellis Anita Haryanti S.Ked', 'Ki. BKR No. 432, Sungai Penuh 93481, Gorontalo', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(92, 'Kamaria Kusmawati', 'Jr. Bappenas No. 368, Padangsidempuan 28565, Sumut', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(93, 'Aisyah Pratiwi', 'Kpg. Sudiarto No. 589, Kotamobagu 49046, Kepri', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(94, 'Gamani Situmorang S.Kom', 'Ki. B.Agam 1 No. 985, Binjai 13967, Bali', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(95, 'Ika Mardhiyah', 'Ds. Barasak No. 991, Tual 21344, Gorontalo', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(96, 'Harto Ardianto', 'Ds. Yos Sudarso No. 56, Palu 64139, Pabar', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(97, 'Dwi Budiyanto', 'Gg. Padang No. 125, Solok 40858, Kepri', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(98, 'Safina Yuniar', 'Ki. Banal No. 60, Sabang 68132, Maluku', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(99, 'Hasan Januar', 'Ki. Rajawali Barat No. 321, Yogyakarta 44097, Maluku', '2021-06-19 04:14:40', '2021-06-19 04:14:40'),
(100, 'Saadat Widodo', 'Ds. Ters. Buah Batu No. 15, Cirebon 62694, Babel', '2021-06-19 04:14:40', '2021-06-19 04:14:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
