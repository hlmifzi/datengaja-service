-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2022 at 03:53 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datengajaid`
--

-- --------------------------------------------------------

--
-- Table structure for table `buyer_product`
--

CREATE TABLE `buyer_product` (
  `id` bigint(255) NOT NULL,
  `user_id` bigint(255) NOT NULL,
  `background1` longtext DEFAULT NULL,
  `background2` longtext DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `bride_couple_img` longtext NOT NULL,
  `bridegroom_full_name` tinytext NOT NULL,
  `bride_full_name` tinytext NOT NULL,
  `bridegroom_call_name` tinytext NOT NULL,
  `bridegroom_img` longtext NOT NULL,
  `bride_img` longtext NOT NULL,
  `bride_call_name` tinytext NOT NULL,
  `bridegroom_mother` tinytext NOT NULL,
  `bridegroom_fathers` tinytext NOT NULL,
  `bride_woman_mother` tinytext NOT NULL,
  `bride_woman_father` tinytext NOT NULL,
  `bride_date` date NOT NULL,
  `bride_start_time` time NOT NULL,
  `bride_end_time` time NOT NULL,
  `bride_location` varchar(255) NOT NULL,
  `reception_date` date NOT NULL,
  `reception_start_time` time NOT NULL,
  `reception_end_time` time DEFAULT NULL,
  `reception_location` varchar(255) NOT NULL,
  `reception_location_google_maps` longtext NOT NULL,
  `gallery` longtext NOT NULL,
  `live_streaming_zoom` varchar(100) DEFAULT NULL,
  `live_streaming_zoom_meeting_id` varchar(100) DEFAULT NULL,
  `live_streaming_zoom_password` varchar(100) DEFAULT NULL,
  `live_streaming_ig` varchar(50) DEFAULT NULL,
  `live_streaming_ig_account` varchar(100) DEFAULT NULL,
  `handphone_wa` varchar(20) DEFAULT NULL,
  `rekening_qr_img` longtext DEFAULT NULL,
  `rekening` varchar(255) DEFAULT NULL,
  `is_publish` varchar(20) DEFAULT NULL,
  `expired_at` datetime DEFAULT NULL,
  `status_paid` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` char(20) NOT NULL DEFAULT 'AKTIF'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `buyer_product`
--

INSERT INTO `buyer_product` (`id`, `user_id`, `background1`, `background2`, `product_id`, `bride_couple_img`, `bridegroom_full_name`, `bride_full_name`, `bridegroom_call_name`, `bridegroom_img`, `bride_img`, `bride_call_name`, `bridegroom_mother`, `bridegroom_fathers`, `bride_woman_mother`, `bride_woman_father`, `bride_date`, `bride_start_time`, `bride_end_time`, `bride_location`, `reception_date`, `reception_start_time`, `reception_end_time`, `reception_location`, `reception_location_google_maps`, `gallery`, `live_streaming_zoom`, `live_streaming_zoom_meeting_id`, `live_streaming_zoom_password`, `live_streaming_ig`, `live_streaming_ig_account`, `handphone_wa`, `rekening_qr_img`, `rekening`, `is_publish`, `expired_at`, `status_paid`, `created_at`, `updated_at`, `status`) VALUES

-- --------------------------------------------------------

--
-- Table structure for table `invitations`
--

CREATE TABLE `invitations` (
  `id` int(11) NOT NULL,
  `buyerProductId` bigint(255) NOT NULL,
  `invitation_category_id` int(11) NOT NULL,
  `fullname` text NOT NULL,
  `phone_wa` char(20) NOT NULL,
  `attend_status` char(30) NOT NULL DEFAULT 'menunggu konfirmasi',
  `greetings` longtext DEFAULT NULL,
  `attend_qty` int(11) DEFAULT NULL,
  `time_end` time(6) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `status` char(255) NOT NULL DEFAULT 'AKTIF',
  `present_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `invitations`
--

INSERT INTO `invitations` (`id`, `buyerProductId`, `invitation_category_id`, `fullname`, `phone_wa`, `attend_status`, `greetings`, `attend_qty`, `time_end`, `created_at`, `updated_at`, `status`, `present_time`) VALUES
(25, 51, 30, 'iqbal-dan-partner', '6281388231745', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(26, 51, 30, 'aripin-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(27, 51, 30, 'okta-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(28, 51, 30, 'paldi-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(29, 51, 30, 'nisa-dan-suami', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(30, 51, 30, 'arum-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(31, 51, 30, 'rebecca-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(32, 51, 30, 'yolanda-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(33, 51, 30, 'firli-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(34, 51, 30, 'sonya-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(35, 51, 30, 'dara-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(36, 51, 30, 'fauzan-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(37, 51, 30, 'earlyn-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(38, 51, 30, 'ageng-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(39, 51, 30, 'fuad-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(40, 51, 30, 'fina-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(41, 51, 30, 'farhan-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(42, 51, 30, 'shella-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(43, 51, 30, 'lucky-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(44, 51, 30, 'nicko-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(45, 51, 32, 'M.-Ramadhani-Fitriawan-dan-partner', '', 'Menunggu Konfirmasi', '', NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(46, 51, 32, 'Melliza-Xaviera-P.Y-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(47, 51, 32, 'Citra-Dwidya-Prastika-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(48, 51, 32, 'Rafi-Nabil-Hafizh-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(49, 51, 32, 'Fauzan-Muhammad-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(50, 51, 32, 'Firdaus-Agustha-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(51, 51, 32, 'Gusti-Fahmi-Fadhila-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(52, 51, 32, 'Fawwaz-Apdipandya-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(53, 51, 32, 'Giovanne-P.P-Ginting-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(54, 51, 32, 'M.-Ivan-Taftazani-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(55, 51, 32, 'Salsabila-Maryam-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(56, 51, 32, 'Nathania-Ariella-Adimuntja-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(57, 51, 32, 'Sisy-Ayu-Anggraini-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(58, 51, 32, 'Putri-Fitriani-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(59, 51, 32, 'Arvianty-Shafira-Putri-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(60, 51, 32, 'Anas-Izzudin-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(61, 51, 32, 'Lisha-Prizella-Mahdiya-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(62, 51, 32, 'Putri-Angelia-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(63, 51, 32, 'M.-Aldy-Akbar-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(64, 51, 32, 'M.-Zharfan-Nugroho-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(65, 51, 32, 'Risky-Febiansyah-Sulaeman-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(66, 51, 32, 'Bedwina-Rachmayanti-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(67, 51, 32, 'Fransisca-Regina-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(68, 51, 32, 'Muslimin-Budiman-Satriyanto-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(69, 51, 32, 'Zhelia-Alifa-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(70, 51, 32, 'Nadia-Tri-Oktaviani-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(71, 51, 32, 'Salsa-Bila-Rana-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(72, 51, 32, 'Adelia-Kartika-Sari-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(73, 51, 32, 'Balqis-Okta-Putry-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(74, 51, 32, 'Lya-Aprilia-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(75, 51, 32, 'Sarah-Savira-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(76, 51, 32, 'Galuh-Nur-Faizah-N.A-Lessy-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(77, 51, 32, 'Resita-Tara-Retnaningdya-Gunawan-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(78, 51, 32, 'Amani-Tedjowongso-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(79, 51, 32, 'Putri-Amrita-Sari-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(80, 51, 32, 'Nabila-Arfan-dan-Suami', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(81, 51, 36, 'M.-Afif-Afdholul-Matin-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(82, 51, 36, 'Wili-Sunjaya-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(83, 51, 36, 'M.-Faqih-Arrijal-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(84, 51, 36, 'Rieka-Maulida-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(85, 51, 36, 'Faisal-Maulana-Pasya-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(86, 51, 36, 'Muhammad-Rafly-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(87, 51, 36, 'Abdul-Arifin-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(88, 51, 36, 'Praska-Irsanti-Putri-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(89, 51, 36, 'Kurniasih-Wulandari-N.-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(90, 51, 36, 'Achmad-Muhajir-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(91, 51, 36, 'Dicky-Chriswandi-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(92, 51, 36, 'Fajar-Dwi-Aryanto-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(93, 51, 36, 'Rangga-Wahyu-Aditya-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(94, 51, 36, 'Yunita-Eka-Safitri-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(95, 51, 36, 'Ilham-Arrasyid-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(96, 51, 36, 'Rian-Priyanto-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(97, 51, 36, 'Rizky-Dwi-Agustian-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(98, 51, 36, 'Ghozi-Alwan-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(99, 51, 36, 'Saras-Nanda-Wardhani-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(100, 51, 36, 'Haryanto-Jayusman-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(101, 51, 36, 'Arif-Wicaksono-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(102, 51, 36, 'Palery-Farnando-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(103, 51, 36, 'Alda-Yusrica-Achmad-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(104, 51, 36, 'Andry-Apriyatna-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(105, 51, 36, 'Ferdian-Erlangga-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(106, 51, 36, 'Sharon-Audrey-Muke-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(107, 51, 36, 'Muhammad-Haidar-Rais-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(108, 51, 36, 'Anita-Gunawan-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(109, 51, 36, 'Devia-Ayu-Anggraini-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(110, 51, 36, 'Muhammad-Azhari-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(111, 51, 36, 'Luthfi-Putra-Permana-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(112, 51, 37, 'Bu-Dede', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(113, 51, 37, 'Bu-Kuri-dan-suami', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(114, 51, 37, 'Pak-Nur', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(115, 51, 37, 'Pak-Daniel-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(116, 51, 37, 'Mak-Tri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(117, 51, 37, 'Bu-Mexi', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(118, 51, 37, 'Bu-Efrida', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(119, 51, 38, 'M.-Cholis-Malik-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(120, 51, 29, 'Dede-Kurniawan-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(121, 51, 38, 'M.-Reza-Diharja-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(122, 51, 29, 'Ade-Mardiana-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(123, 51, 29, 'Rani-Ranusa-Dan-suami', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(124, 51, 29, 'widi-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(125, 51, 29, 'yuliana-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(126, 51, 38, 'kak-ester-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(127, 51, 38, 'bang-fauzan-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(128, 51, 29, 'rachim-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(129, 51, 29, 'rochim-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(130, 51, 29, 'lilo-pambudi-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(131, 51, 29, 'ahmad-bajuri-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(132, 51, 29, 'sumarni-dan-suami', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(133, 51, 29, 'bang-firdo-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(134, 51, 38, 'bang-muttaqin-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(135, 51, 38, 'bang-imron-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(136, 51, 38, 'jabar-hady-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(137, 51, 38, 'diva-quinta-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(138, 51, 38, 'divya-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(139, 51, 38, 'rivaldo-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(140, 51, 38, 'ammar-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(141, 51, 38, 'dewi-sophie-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(142, 51, 38, 'kak-egy-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(143, 51, 38, 'kak-abdil-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(144, 51, 38, 'kak-mayang-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(145, 51, 38, 'fadhil-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(146, 51, 38, 'fahira-dan-suami', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(147, 51, 38, 'endang-dan-suami', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(148, 51, 38, 'bayu-eka-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(149, 51, 38, 'kevin-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(150, 51, 38, 'tidar-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(151, 51, 38, 'retno-muhammad-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(152, 51, 38, 'haikhal-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(153, 51, 38, 'erik-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(154, 51, 38, 'wahid-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(155, 51, 38, 'gio-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(156, 51, 38, 'bang-septiar-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(157, 51, 38, 'bang-maul-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(158, 51, 38, 'bang-azis-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(159, 51, 38, 'bang-seto-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(160, 51, 33, 'kak-vivi-wahyuni-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(161, 51, 33, 'bang-ubay-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(162, 51, 33, 'kang-dedy-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(163, 51, 33, 'kak-ocho-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(164, 51, 33, 'bang-wisnu-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(165, 51, 33, 'kak-ratih-dan-suami', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(166, 51, 33, 'mba-atik', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(167, 51, 33, 'Bunda-ulvi-dan-suami', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(168, 51, 33, 'Bang-Musa-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(169, 51, 35, 'Ustadz-Subandi-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(170, 51, 35, 'Habibi-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(171, 51, 40, 'helmi-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(172, 51, 40, 'pak-ade-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(173, 51, 40, 'pak-tri-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(174, 51, 40, 'bang-ruslan', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(175, 51, 40, 'mulyana-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(176, 51, 41, 'christoper', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(177, 51, 41, 'fitrah-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(178, 51, 41, 'yezkiel', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(179, 51, 41, 'hari', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(180, 51, 41, 'irsal', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(181, 51, 41, 'rachim', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(182, 51, 41, 'fikri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(183, 51, 41, 'ilham-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(184, 51, 41, 'Bilal', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(185, 51, 41, 'andy', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(186, 51, 41, 'nathalie', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(187, 51, 41, 'hazim', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(188, 51, 41, 'ghifari', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(189, 51, 41, 'steve-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(191, 51, 41, 'reinhart', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(192, 51, 41, 'citra', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(193, 51, 41, 'fristiya', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(194, 51, 41, 'Ashandi-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(195, 51, 41, 'Luthfi-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(196, 51, 42, 'Miss-Gita-dan-suami', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(197, 51, 42, 'Ahmad-riski-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(198, 51, 42, 'Lia', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(199, 51, 42, 'Gita-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(200, 51, 42, 'asyiri-aulia', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(201, 51, 43, 'affiasca', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(202, 51, 43, 'yuliana', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(203, 51, 44, 'Fitri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(204, 51, 44, 'Bang-Elmy', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(205, 51, 44, 'Dessy', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(206, 51, 45, 'Kak-July', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(207, 51, 45, 'Mba-Sari', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(208, 51, 45, 'Mas-Mario', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(209, 51, 45, 'Mas-Adhit', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(210, 51, 45, 'Mas-handri-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(211, 51, 45, 'Ci-Olive', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(212, 51, 45, 'Mang-otoy', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(213, 51, 45, 'mas-annova-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(214, 51, 45, 'aulia', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(215, 51, 45, 'tante-sukma-dan-suami', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(216, 51, 45, 'irsan', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(217, 51, 45, 'labib', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(218, 51, 45, 'pak-kenneth', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(219, 51, 45, 'refiqi', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(220, 51, 45, 'kristo', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(221, 51, 45, 'feli', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(222, 51, 45, 'virginia', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(223, 51, 45, 'inez', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(224, 51, 45, 'mas-wira', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(225, 51, 45, 'arel-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(226, 51, 45, 'richap', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(227, 51, 45, 'rivari', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(228, 51, 45, 'gilang', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(229, 51, 45, 'annisa', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(230, 51, 45, 'memes', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(231, 51, 45, 'lily', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(232, 51, 45, 'farand', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(233, 51, 45, 'eldy', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(234, 51, 46, 'pak-jaud', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(235, 51, 46, 'bu-desi', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(236, 51, 46, 'pak-anton', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(237, 51, 46, 'mba-nanda-suami', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(238, 51, 46, 'kak-ana-dan-suami', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(239, 51, 46, 'bang-agus-nurjaman', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(240, 51, 46, 'pak-baharuddin-iddris', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(241, 51, 46, 'mba-rizka', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(242, 51, 46, 'pak-roby', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(243, 51, 46, 'bambang-ip', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(244, 51, 46, 'pak-engkus', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(245, 51, 46, 'pak-kodrat', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(246, 51, 46, 'siska-damayanti', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(247, 51, 46, 'putu', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(248, 51, 46, 'panji', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(249, 51, 46, 'Mas-Dika', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(250, 51, 46, 'Pak-Hartoto', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(251, 51, 46, 'Pak-Putra', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(252, 51, 46, 'Pak-Wiji', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(253, 51, 46, 'Bang-Nurdin', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(254, 51, 46, 'pak-kurnianto', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(255, 51, 34, 'Angga-dan-sofi', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(256, 51, 34, 'Habib-Adni-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(257, 51, 34, 'Momy-geo-dan-suami', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(258, 51, 39, 'Dzulfikri-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(259, 51, 39, 'Farid-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(260, 51, 39, 'mas-riski-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(261, 51, 39, 'mas-said-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(262, 51, 39, 'Yunus-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(263, 51, 39, 'ahad-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(264, 51, 39, 'taufik-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(265, 51, 39, 'haqim-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(266, 51, 39, 'kenneth-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(267, 51, 39, 'mas-dyo-dan-majikan', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(268, 51, 39, 'mas-heru-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(269, 51, 39, 'mas-yoga-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(270, 51, 39, 'mas-aan--dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(271, 51, 39, 'mas-putra-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(272, 51, 39, 'bos-katri-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(273, 51, 39, 'pak-sonny', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(274, 51, 39, 'pak-tatok', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(275, 51, 39, 'bu-wiwik', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(276, 51, 39, 'mas-dhani', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(277, 51, 39, 'mba-hani-dan-suami', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(278, 51, 39, 'mba-mel', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(279, 51, 39, 'Kak-ulil-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(280, 51, 39, 'shantika-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(281, 51, 39, 'mba-wenny', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(282, 51, 39, 'mba-rani-dan-suami', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(283, 51, 39, 'Rahma-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(284, 51, 39, 'mba-fitrah', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(285, 51, 39, 'aulia', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(286, 51, 39, 'afina-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(288, 51, 47, 'Indah-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(289, 51, 47, 'Dhimas-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(290, 51, 47, 'Mba-Anis-dan-Suami', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(292, 51, 41, 'chandra', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(293, 51, 41, 'mario', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(294, 51, 41, 'nicko-gilani-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(295, 51, 34, 'apang-dan-partner', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(296, 51, 48, 'Agha', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(297, 51, 48, 'Alivia', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(298, 51, 48, 'Almaidah', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(299, 51, 48, 'Anas', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(300, 51, 48, 'Atalla-rafa', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(301, 51, 48, 'Bani', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(302, 51, 48, 'Bunga', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(303, 51, 48, 'Dimas-April', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(304, 51, 48, 'Dimas-iqbal', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(305, 51, 48, 'Dimas-Satria', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(306, 51, 48, 'Dwi', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(307, 51, 48, 'Erman', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(308, 51, 48, 'Frisca', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(309, 51, 48, 'Gugun', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(310, 51, 48, 'Habibilah-Fitra', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(311, 51, 48, 'Indri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(312, 51, 48, 'Kirana', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(313, 51, 48, 'M.-Bagus', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(314, 51, 48, 'M.-Iqbal', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(315, 51, 48, 'M.-Reza', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(316, 51, 48, 'M.-Sabil', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(317, 51, 48, 'Nurindah-Tyas', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(318, 51, 48, 'Puput', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(319, 51, 48, 'Savina', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(320, 51, 48, 'Tiara-dwi', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(321, 51, 48, 'Wawan', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(322, 51, 48, 'Vivi', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(323, 51, 48, 'Yusnita', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(324, 51, 49, 'Carolina', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(325, 51, 49, 'Hanifah', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(326, 51, 49, 'Madari', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(327, 51, 49, 'Intan-prav', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(328, 51, 49, 'Diyah', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(329, 51, 49, 'Nurjanah', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(330, 51, 49, 'Dina', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(331, 51, 49, 'Prayoga', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(332, 51, 49, 'Ridwan', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(333, 51, 49, 'Machadz', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(334, 51, 49, 'Dwinda', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(335, 51, 49, 'Ega-Onyun', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(336, 51, 50, 'Afifah', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(337, 51, 50, 'Alifia', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(338, 51, 50, 'Atia', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(339, 51, 50, 'Ansy', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(340, 51, 50, 'Azura', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(341, 51, 50, 'Cira', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(342, 51, 50, 'Cahya-widi', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(343, 51, 50, 'Eka', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(344, 51, 50, 'Diah-nastiti', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(345, 51, 50, 'Everly', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(346, 51, 50, 'Faradina-riski', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(347, 51, 50, 'Farhan', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(348, 51, 50, 'Fira', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(349, 51, 50, 'Ismi', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(350, 51, 50, 'Islamiah-mia', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(351, 51, 50, 'M.-Ashraf', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(352, 51, 50, 'M.-Labib', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(353, 51, 50, 'Mitha', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(354, 51, 50, 'Nurul-aini', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(355, 51, 50, 'Niken', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(356, 51, 50, 'Neno', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(357, 51, 50, 'Putri-ratna', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(358, 51, 50, 'Rania', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(359, 51, 50, 'Rani', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(360, 51, 50, 'Sultan-najib', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(361, 51, 50, 'Sylvia', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(362, 51, 50, 'Tati', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(363, 51, 50, 'Yuana', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(364, 51, 50, 'Maria', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(365, 51, 52, 'Lezi', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(366, 51, 52, 'fanny', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(367, 51, 52, 'Utari', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(368, 51, 52, 'Manda', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(369, 51, 52, 'Ela', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(370, 51, 52, 'Sadikin', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(371, 51, 52, 'Fatimah', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(372, 51, 52, 'Maeta', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(373, 51, 52, 'Aldo', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(374, 51, 52, 'Adinda', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(375, 51, 52, 'Rinto', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(376, 51, 52, 'Ary', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(377, 51, 52, 'Syarifah', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(378, 51, 52, 'Maulia', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(379, 51, 52, 'hurul', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(380, 51, 52, 'nisa', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(381, 51, 52, 'mela', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(382, 51, 52, 'hermawan', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(383, 51, 50, 'Ka-Tiara', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(384, 51, 50, 'Ka-eca', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(385, 51, 50, 'Ka-Prisil', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(386, 51, 50, 'Ka-Ainun', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(387, 51, 50, 'Putri-tasya', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(388, 51, 50, 'Aliya', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(389, 51, 50, 'Linda', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(390, 51, 51, 'Vita', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(391, 51, 51, 'Devita', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(392, 51, 51, 'Aqilah', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(393, 51, 51, 'Inri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(394, 51, 51, 'Lolita', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(395, 51, 51, 'Krisman', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(396, 51, 51, 'Rendy', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(397, 51, 51, 'Rizka', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(398, 51, 51, 'Valdi', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(399, 51, 51, 'Muza', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(400, 51, 51, 'Novia', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(401, 51, 51, 'Shindy', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(402, 51, 51, 'Lintang', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(403, 51, 51, 'Ahmad-F', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(404, 51, 51, 'Aulia', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(405, 51, 51, 'Jaka', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(406, 51, 51, 'Erni', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(407, 51, 51, 'Netta', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(408, 51, 51, 'Syhintia', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(409, 51, 51, 'Khoirunnisa', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(410, 51, 51, 'Mei', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(411, 51, 51, 'Erika', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(412, 51, 34, 'ilham-musyafa-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(413, 51, 34, 'Om-Taufik-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(414, 51, 47, 'Ibu-Ifeh', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(415, 51, 47, 'Zirra-dan-Suami', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(416, 51, 47, 'Lek-Tin', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(417, 51, 47, 'Ibu Rika', '6281388231745', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(418, 51, 47, 'Ibu-Ika', '6281388231745', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(419, 51, 34, 'ryana-dan-suami', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(420, 51, 34, 'Gunawan-dan-istri', '6281388231745', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(421, 51, 47, 'Bapak-Surono-dan-istri', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(422, 51, 34, 'munadi', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(423, 51, 47, 'le-tuti-dan-om-sholihin', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL),
(424, 51, 47, 'le-joko-dan-tante-icha', '', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2022-12-14 12:08:41', 'AKTIF', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invitation_categories`
--

CREATE TABLE `invitation_categories` (
  `id` int(255) NOT NULL,
  `buyerProductId` bigint(255) NOT NULL,
  `desc` char(50) NOT NULL,
  `session` char(50) DEFAULT NULL,
  `time_start` time DEFAULT NULL,
  `time_end` time DEFAULT NULL,
  `status` char(50) NOT NULL DEFAULT 'AKTIF'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `invitation_categories`
--

INSERT INTO `invitation_categories` (`id`, `buyerProductId`, `desc`, `session`, `time_start`, `time_end`, `status`) VALUES
(29, 51, 'SMKN 26', '', '00:00:00', '00:00:00', 'AKTIF'),
(30, 51, 'SDN 011 PG', '', '00:00:00', '00:00:00', 'AKTIF'),
(32, 51, 'SMPN 216', '', '00:00:00', '00:00:00', 'AKTIF'),
(33, 51, 'IASPEM 26', '', '00:00:00', '00:00:00', 'AKTIF'),
(34, 51, 'TEMEN HELMI', '', '00:00:00', '00:00:00', 'AKTIF'),
(35, 51, 'NU Kemayoran', '', '00:00:00', '00:00:00', 'AKTIF'),
(36, 51, 'SMKN 26 TKJ 2', '', '00:00:00', '00:00:00', 'AKTIF'),
(37, 51, 'SMKN 26 GURU', '', '00:00:00', '00:00:00', 'AKTIF'),
(38, 51, 'SMKN 26 ALUMNI OSIS', '', '00:00:00', '00:00:00', 'AKTIF'),
(39, 51, 'ADW', '', '00:00:00', '00:00:00', 'AKTIF'),
(40, 51, 'AIT / KAMI', '', '00:00:00', '00:00:00', 'AKTIF'),
(41, 51, 'HAPPY5', '', '00:00:00', '00:00:00', 'AKTIF'),
(42, 51, 'ACCESS', '', '00:00:00', '00:00:00', 'AKTIF'),
(43, 51, 'BINUS UNIVERSITY', '', '00:00:00', '00:00:00', 'AKTIF'),
(44, 51, 'FOSJT', '', '00:00:00', '00:00:00', 'AKTIF'),
(45, 51, 'SIRCLO', '', '00:00:00', '00:00:00', 'AKTIF'),
(46, 51, 'BMC', '', '00:00:00', '00:00:00', 'AKTIF'),
(47, 51, 'SODARA HELMI', '', '00:00:00', '00:00:00', 'AKTIF'),
(48, 51, 'SD KRIDA PUTRA', '', '00:00:00', '00:00:00', 'AKTIF'),
(49, 51, 'SMPN 44', '', '00:00:00', '00:00:00', 'AKTIF'),
(50, 51, 'SMKN 40', '', '00:00:00', '00:00:00', 'AKTIF'),
(51, 51, 'Univ Krisnadwipayana', '', '00:00:00', '00:00:00', 'AKTIF'),
(52, 51, 'SMKN 40 OSIS', '', '00:00:00', '00:00:00', 'AKTIF');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(50) NOT NULL,
  `name` char(50) NOT NULL,
  `status` char(30) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'design01', 'AKTIF', '2021-06-02 22:03:58', NULL),
(2, 'design02', 'AKTIF', '2021-06-02 22:03:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(255) NOT NULL,
  `email` char(50) NOT NULL,
  `phone` char(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `type` char(20) NOT NULL,
  `status` char(50) DEFAULT 'AKTIF',
  `created_at` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `phone`, `password`, `type`, `status`, `created_at`, `updated_at`) VALUES
(2, 'admin@datengaja.id', '081294923207', 'SMKN26Pembangunan', 'ADMIN', 'AKTIF', '2021-06-16 08:25:32.000000', '2021-06-02 22:04:44.000000'),
(54, 'hlmifzi@gmail.com', '81294923207', 'SMKN26Pembangunan', 'BUYER', 'AKTIF', '2022-12-14 07:03:19.380434', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buyer_product`
--
ALTER TABLE `buyer_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invitations`
--
ALTER TABLE `invitations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invitation_categories`
--
ALTER TABLE `invitation_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buyer_product`
--
ALTER TABLE `buyer_product`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `invitations`
--
ALTER TABLE `invitations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=425;

--
-- AUTO_INCREMENT for table `invitation_categories`
--
ALTER TABLE `invitation_categories`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;