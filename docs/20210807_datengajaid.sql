-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2021 at 01:21 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

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
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `barang_id` int(11) NOT NULL,
  `artikel` varchar(50) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `size` varchar(5) NOT NULL,
  `warna` varchar(50) NOT NULL,
  `active` int(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `barang_type`
--

CREATE TABLE `barang_type` (
  `barang_type_id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `harga` float NOT NULL,
  `active` int(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `buyer_product`
--

CREATE TABLE `buyer_product` (
  `id` bigint(255) NOT NULL,
  `user_id` bigint(255) NOT NULL,
  `background1` text DEFAULT '/img/2.jpeg',
  `background2` text DEFAULT '/img/6.jpeg',
  `product_id` int(11) NOT NULL,
  `bride_couple_img` varchar(100) NOT NULL DEFAULT '/img/1.jpeg',
  `bridegroom_full_name` tinytext NOT NULL,
  `bride_full_name` tinytext NOT NULL,
  `bridegroom_call_name` tinytext NOT NULL,
  `bridegroom_img` varchar(255) NOT NULL DEFAULT '/img/3.jpeg',
  `bride_img` varchar(255) NOT NULL DEFAULT '/img/4.jpeg',
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
  `reception_location_google_maps` longtext NOT NULL DEFAULT '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.4408681594346!2d106.88866431410297!3d-6.205430862513204!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f4a2d70819c1%3A0x34c8dff84ebb630e!2sGg.%20Anyelir%2C%20RT.5%2FRW.2%2C%20Cipinang%2C%20Kec.%20Pulo%20Gadung%2C%20Kota%20Jakarta%20Timur%2C%20Daerah%20Khusus%20Ibukota%20Jakarta%2013240!5e0!3m2!1sen!2sid!4v1623944384045!5m2!1sen!2sid" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>',
  `gallery` varchar(255) NOT NULL DEFAULT '/img/2.jpeg,/img/7.jpeg,/img/5.jpeg,/img/6.jpeg',
  `live_streaming_zoom` varchar(100) NOT NULL,
  `live_streaming_zoom_meeting_id` varchar(100) NOT NULL,
  `live_streaming_zoom_password` varchar(100) NOT NULL,
  `live_streaming_ig` varchar(50) DEFAULT NULL,
  `live_streaming_ig_account` varchar(100) NOT NULL,
  `handphone_wa` varchar(20) NOT NULL,
  `rekening_qr_img` varchar(50) NOT NULL,
  `rekening` varchar(50) NOT NULL,
  `is_publish` varchar(20) NOT NULL,
  `expired_at` datetime NOT NULL,
  `status_paid` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` char(20) NOT NULL DEFAULT 'AKTIF'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `buyer_product`
--

INSERT INTO `buyer_product` (`id`, `user_id`, `background1`, `background2`, `product_id`, `bride_couple_img`, `bridegroom_full_name`, `bride_full_name`, `bridegroom_call_name`, `bridegroom_img`, `bride_img`, `bride_call_name`, `bridegroom_mother`, `bridegroom_fathers`, `bride_woman_mother`, `bride_woman_father`, `bride_date`, `bride_start_time`, `bride_end_time`, `bride_location`, `reception_date`, `reception_start_time`, `reception_end_time`, `reception_location`, `reception_location_google_maps`, `gallery`, `live_streaming_zoom`, `live_streaming_zoom_meeting_id`, `live_streaming_zoom_password`, `live_streaming_ig`, `live_streaming_ig_account`, `handphone_wa`, `rekening_qr_img`, `rekening`, `is_publish`, `expired_at`, `status_paid`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, '/img/2.jpeg', '/img/6.jpeg', 1, '/img/pernikahanHelmiJannah/profileHelmiJannah.jpg', 'Helmi Fauzi', 'Siti Nur Jannah', 'Helmi', '/img/pernikahanHelmiJannah/helmi.jpg', '/img/pernikahanHelmiJannah/jannah.jpg', 'Jannah', 'Endang Dwi Nolowati', 'Lukman Efendi', 'Hj. Siti Maemunah', 'Abdul Halim', '2022-05-27', '08:00:00', '10:00:00', 'Masjid Babussalam Jakarta timur', '2022-05-27', '10:00:00', '18:00:00', 'Gang anyelir ajakarta timur', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.4408681594346!2d106.88866431410297!3d-6.205430862513204!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f4a2d70819c1%3A0x34c8dff84ebb630e!2sGg.%20Anyelir%2C%20RT.5%2FRW.2%2C%20Cipinang%2C%20Kec.%20Pulo%20Gadung%2C%20Kota%20Jakarta%20Timur%2C%20Daerah%20Khusus%20Ibukota%20Jakarta%2013240!5e0!3m2!1sen!2sid!4v1623944384045!5m2!1sen!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', '/img/2.jpeg,/img/7.jpeg,/img/5.jpeg,/img/6.jpeg', '', '123 123 12 312', '12342', NULL, 'hlmifzi', '081294923207', '/img/qrcode.jpeg', 'BCA: 0912013123', '1', '2023-06-17 22:31:34', '', '2021-06-17 17:31:33', '2021-07-09 11:16:25', 'AKTIF'),
(18, 1, '/img/2.jpeg', '/img/6.jpeg', 1, '/img/1.jpeg', 'fulan nama full', 'fulin lengkap', 'fulan', '/img/3.jpeg', '/img/4.jpeg', 'fulin', 'tes nama ibu fulan', 'tes nama ayah fulan', 'tes', 'tes', '2021-07-29', '10:32:00', '11:32:00', 'jakarta ', '2021-07-29', '19:32:00', '20:32:00', 'jakarta', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.4408681594346!2d106.88866431410297!3d-6.205430862513204!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f4a2d70819c1%3A0x34c8dff84ebb630e!2sGg.%20Anyelir%2C%20RT.5%2FRW.2%2C%20Cipinang%2C%20Kec.%20Pulo%20Gadung%2C%20Kota%20Jakarta%20Timur%2C%20Daerah%20Khusus%20Ibukota%20Jakarta%2013240!5e0!3m2!1sen!2sid!4v1623944384045!5m2!1sen!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', '/img/2.jpeg,/img/7.jpeg,/img/5.jpeg,/img/6.jpeg', '', '', '', NULL, '', '', '', '', '', '0000-00-00 00:00:00', '', '2021-08-04 15:18:55', '2021-08-07 08:18:58', 'AKTIF'),
(19, 1, '/img/2.jpeg', '/img/6.jpeg', 1, '/img/1.jpeg', 'helmi 2', 'asdasdasd', 'helmipanggil', '/img/3.jpeg', '/img/4.jpeg', 'asd', 'tes', 'tes', 'asd', 'asd', '2021-07-28', '12:44:00', '18:50:00', 'pernikahan', '2021-07-08', '10:40:00', '08:44:00', 'resepso', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.4408681594346!2d106.88866431410297!3d-6.205430862513204!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f4a2d70819c1%3A0x34c8dff84ebb630e!2sGg.%20Anyelir%2C%20RT.5%2FRW.2%2C%20Cipinang%2C%20Kec.%20Pulo%20Gadung%2C%20Kota%20Jakarta%20Timur%2C%20Daerah%20Khusus%20Ibukota%20Jakarta%2013240!5e0!3m2!1sen!2sid!4v1623944384045!5m2!1sen!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', '/img/2.jpeg,/img/7.jpeg,/img/5.jpeg,/img/6.jpeg', '', '', '', NULL, '', '', '', '', '', '0000-00-00 00:00:00', '', '2021-08-17 15:19:01', '2021-08-07 08:19:05', 'AKTIF'),
(20, 1, '/img/2.jpeg', '/img/6.jpeg', 1, '/img/1.jpeg', 'helmi fauzi', 'Hlmifzi', 'helmi', '/img/3.jpeg', '/img/4.jpeg', 'putri', 'tes nama ibu fulan', 'tes', 'asd', '', '2021-07-01', '09:50:00', '09:51:00', 'tes', '2021-07-06', '12:48:00', '08:53:00', 'tes', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.4408681594346!2d106.88866431410297!3d-6.205430862513204!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f4a2d70819c1%3A0x34c8dff84ebb630e!2sGg.%20Anyelir%2C%20RT.5%2FRW.2%2C%20Cipinang%2C%20Kec.%20Pulo%20Gadung%2C%20Kota%20Jakarta%20Timur%2C%20Daerah%20Khusus%20Ibukota%20Jakarta%2013240!5e0!3m2!1sen!2sid!4v1623944384045!5m2!1sen!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', '/img/2.jpeg,/img/7.jpeg,/img/5.jpeg,/img/6.jpeg', '', '', '', NULL, '', '', '', '', '', '0000-00-00 00:00:00', '', '2029-08-08 15:42:46', '2021-08-07 08:42:51', 'AKTIF'),
(21, 1, '/img/2.jpeg', '/img/6.jpeg', 1, '/img/1.jpeg', 'tes', 'woi', 'asd', '/img/3.jpeg', '/img/4.jpeg', 'putri', 'asd', 'das', 'asd', 'asd', '2021-07-08', '08:52:00', '14:49:00', 'teas', '2021-07-14', '11:49:00', '11:51:00', 'adasd', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.4408681594346!2d106.88866431410297!3d-6.205430862513204!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f4a2d70819c1%3A0x34c8dff84ebb630e!2sGg.%20Anyelir%2C%20RT.5%2FRW.2%2C%20Cipinang%2C%20Kec.%20Pulo%20Gadung%2C%20Kota%20Jakarta%20Timur%2C%20Daerah%20Khusus%20Ibukota%20Jakarta%2013240!5e0!3m2!1sen!2sid!4v1623944384045!5m2!1sen!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', '/img/2.jpeg,/img/7.jpeg,/img/5.jpeg,/img/6.jpeg', '', '', '', NULL, '', '', '', '', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '2021-07-31 01:49:56', 'AKTIF');

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
  `greetings` longtext NOT NULL,
  `attend_qty` int(11) DEFAULT NULL,
  `time_end` time(6) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `status` char(255) NOT NULL DEFAULT 'AKTIF',
  `present_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invitations`
--

INSERT INTO `invitations` (`id`, `buyerProductId`, `invitation_category_id`, `fullname`, `phone_wa`, `attend_status`, `greetings`, `attend_qty`, `time_end`, `created_at`, `updated_at`, `status`, `present_time`) VALUES
(1, 1, 1, 'Affiasca', '6281294923207', 'Menunggu Konfirmasi', '', 0, NULL, '2021-06-02 17:25:56', '2021-06-02 17:25:56', 'AKTIF', '00:00:00'),
(3, 1, 3, 'Cholis', '6281294923207', 'Akan Hadir', '', 0, NULL, '2021-06-02 17:25:56', '2021-06-02 17:25:56', 'AKTIF', '00:00:00'),
(4, 1, 3, 'Rian', '6281294923207', 'Berhalangan', '', 0, NULL, '2021-06-02 17:25:56', '2021-06-02 17:25:56', 'AKTIF', '00:00:00'),
(5, 2, 1, 'Sheila', '6281294923207', 'Menunggu Konfirmasi', '', 0, NULL, '2021-06-02 17:25:56', '2021-06-02 17:25:56', 'AKTIF', '00:00:00'),
(13, 1, 2, 'Helmi Fauzi', '81294923207', 'Menunggu Konfirmasi', '', NULL, NULL, '0000-00-00 00:00:00', '2021-07-12 10:29:50', 'AKTIF', '00:00:00'),
(14, 1, 1, 'Helmi Fauzi', '81294923207', 'Menunggu Konfirmasi', '', NULL, NULL, '0000-00-00 00:00:00', '2021-07-12 10:30:39', 'AKTIF', '00:00:00'),
(15, 1, 3, 'Haryanto jayusman', '6281294923207', 'Menunggu Konfirmasi', '', NULL, NULL, '0000-00-00 00:00:00', '2021-07-12 10:31:40', 'AKTIF', '00:00:00'),
(16, 1, 3, 'haryanto', '6287785320614', 'Menunggu Konfirmasi', '', NULL, NULL, '0000-00-00 00:00:00', '2021-07-12 11:08:20', 'AKTIF', '00:00:00'),
(17, 1, 1, 'rian edit2', '626262819081158363', 'Menunggu Konfirmasi', '', NULL, NULL, '0000-00-00 00:00:00', '2021-07-12 11:34:09', 'AKTIF', '00:00:00'),
(18, 1, 17, 'Helmi Fauzi', '6262081294923207', 'Berhalangan', 'maaf ga bisa hadir cuy ada meeting', 0, NULL, '0000-00-00 00:00:00', '2021-07-31 16:41:16', 'AKTIF', '00:00:00'),
(19, 1, 16, 'oji', '626262123', 'Telah Hadir', '', NULL, NULL, '0000-00-00 00:00:00', '2021-08-03 17:05:35', 'AKTIF', '00:55:12'),
(20, 1, 3, 'kun', '62123', 'Akan Hadir', '', NULL, NULL, '2021-08-03 19:48:43', '2021-08-04 00:49:14', 'AKTIF', '00:58:44');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invitation_categories`
--

INSERT INTO `invitation_categories` (`id`, `buyerProductId`, `desc`, `session`, `time_start`, `time_end`, `status`) VALUES
(1, 1, 'Teman Kuliah Mempelai Laki-laki', NULL, NULL, NULL, 'AKTIF'),
(2, 1, 'Teman SD Mempelai Laki-laki', 'I', '10:00:00', '12:00:00', 'AKTIF'),
(3, 2, 'Teman SMK Mempelai Laki-laki', 'I', '10:00:00', '12:00:00', 'AKTIF'),
(4, 1, 'teman rumah laki laki', 'Sesi II', '08:00:00', '18:00:00', 'AKTIF'),
(5, 1, 'teman rumah laki laki', 'Sesi II', '08:00:00', '18:00:00', 'AKTIF'),
(6, 1, 'teman rumah laki laki', 'Sesi II', '08:00:00', '18:00:00', 'AKTIF'),
(7, 1, 'teman rumah laki laki', 'Sesi II', '08:00:00', '18:00:00', 'AKTIF'),
(8, 1, 'teman rumah laki laki', 'Sesi II', '08:00:00', '18:00:00', 'AKTIF'),
(9, 1, 'teman rumah laki laki', 'Sesi II', '08:00:00', '18:00:00', 'AKTIF'),
(14, 1, 'test woi', 'sesi IIII woi', '01:44:00', '11:44:00', 'AKTIF'),
(15, 1, 'temen ayah laki laki akuuu new', 'sesi II (09)', '00:45:00', '04:45:00', 'AKTIF'),
(16, 1, 'temen ayah laki laki new', 'sesi III', '03:23:00', '20:23:00', 'AKTIF'),
(17, 1, 'teman rumah laki laki', 'Sesi III', '08:00:00', '18:00:00', 'AKTIF'),
(18, 21, 'teman SD laki laki', '', '00:00:00', '00:00:00', 'AKTIF'),
(19, 21, 'teman SD Perempuan', '', '00:00:00', '00:00:00', 'AKTIF'),
(20, 21, 'temen smk perempuan', '', '00:00:00', '00:00:00', 'AKTIF'),
(21, 21, 'temen sma laki laki', '', '00:00:00', '00:00:00', 'AKTIF'),
(22, 21, 'temen sma laki laki', '', '00:00:00', '00:00:00', 'AKTIF'),
(23, 21, 'temen sma laki laki', '', '00:00:00', '00:00:00', 'AKTIF'),
(24, 1, 'temen tk laki laki', '', '00:00:00', '00:00:00', 'AKTIF'),
(25, 1, 'temen ayah', '', '00:00:00', '00:00:00', 'AKTIF');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'design01', 'AKTIF', '2021-06-02 22:03:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stok`
--

CREATE TABLE `stok` (
  `stok_id` int(11) NOT NULL,
  `barang_type_id` int(11) NOT NULL,
  `place_id` int(11) NOT NULL,
  `jumlah` float NOT NULL DEFAULT 0,
  `active` int(1) DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `status` char(50) DEFAULT '''AKTIF''',
  `created_at` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `phone`, `password`, `type`, `status`, `created_at`, `updated_at`) VALUES
(2, 'hlmifzi@gmail.com', '081294923207', 'SMKN26Pembangunan', 'ADMIN', 'AKTIF', '2021-06-16 08:25:32.000000', '2021-06-02 22:04:44.000000'),
(4, 'hlmifzi@gmail.com', '081294923207', 'SMKN26Pembangunan', 'ADMIN', 'TIDAK AKTIF', '2021-06-16 08:25:32.000000', '2021-06-02 22:04:44.000000'),
(5, 'HELMIEDIT@GMAIL.COM', '091802193', '090798', 'ADMIN', 'AKTIF', '2021-06-25 12:30:21.496721', '0000-00-00 00:00:00.000000'),
(6, 'hlmifzib@gmail.com', '088210587976', 'tes', 'BUYER', '\'AKTIF\'', '2021-07-09 03:58:34.399353', '0000-00-00 00:00:00.000000'),
(8, 'hlmifzi@gmail.com', '088210587976', 'tes', 'BUYER', '\'AKTIF\'', '2021-07-09 04:05:13.698825', '0000-00-00 00:00:00.000000'),
(9, 'hlmifzi@gmail.com', '088210587976', 'te', 'BUYER', '\'AKTIF\'', '2021-07-09 04:33:41.055504', '0000-00-00 00:00:00.000000'),
(10, 'hlmifziz@gmail.com', '088210587976', '123', 'BUYER', '\'AKTIF\'', '2021-07-09 04:47:21.594548', '0000-00-00 00:00:00.000000'),
(11, 'hlmifziz@gmail.com', '088210587976', '', 'BUYER', '\'AKTIF\'', '2021-07-09 04:51:02.893035', '0000-00-00 00:00:00.000000'),
(12, 'hlmifzi@gmail.com', '088210587976', 'asd', 'BUYER', '\'AKTIF\'', '2021-07-09 04:52:50.793439', '0000-00-00 00:00:00.000000'),
(13, 'cholis@gmail.com', '08123213', 'tes', 'BUYER', '\'AKTIF\'', '2021-07-09 06:04:01.972081', '0000-00-00 00:00:00.000000'),
(14, 'Affiasca@gmail.com', '09012', 'SMKN26Pembangunan', 'BUYER', '\'AKTIF\'', '2021-07-09 08:51:41.615294', '0000-00-00 00:00:00.000000'),
(15, 'hlmifzi@gmail.com', '088210587976', '1212', 'BUYER', '\'AKTIF\'', '2021-07-09 08:55:36.136468', '0000-00-00 00:00:00.000000'),
(16, 'hlmifzi@gmail.com', '812124322', 'SMKN26Pembangunan', 'BUYER', '\'AKTIF\'', '2021-07-09 11:04:25.369089', '0000-00-00 00:00:00.000000'),
(17, 'tes@gmail.com', '088210587976', 'mkasmdkjasd', 'BUYER', '\'AKTIF\'', '2021-07-09 11:26:27.878138', '0000-00-00 00:00:00.000000'),
(18, 'tes@gmail.com', '081294923207', '981123', 'BUYER', '\'AKTIF\'', '2021-07-09 11:32:40.147824', '0000-00-00 00:00:00.000000'),
(19, 'hlmifzi@gmail.com', '081294923207', 'SMKN27[enasd', 'BUYER', '\'AKTIF\'', '2021-07-31 01:40:35.607383', '0000-00-00 00:00:00.000000'),
(20, 'helmi.fauzi@sirclo.com', '081294923207', 'SMKN26Pembangunan', 'BUYER', '\'AKTIF\'', '2021-07-31 01:48:28.998290', '0000-00-00 00:00:00.000000'),
(21, 'helmi.fauzi@sirclo.com', '081294923207', 'SMKN26Pembangunan', 'BUYER', '\'AKTIF\'', '2021-07-31 01:49:56.660880', '0000-00-00 00:00:00.000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`barang_id`);

--
-- Indexes for table `barang_type`
--
ALTER TABLE `barang_type`
  ADD PRIMARY KEY (`barang_type_id`);

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
-- Indexes for table `stok`
--
ALTER TABLE `stok`
  ADD PRIMARY KEY (`stok_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `barang_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `barang_type`
--
ALTER TABLE `barang_type`
  MODIFY `barang_type_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `buyer_product`
--
ALTER TABLE `buyer_product`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `invitations`
--
ALTER TABLE `invitations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `invitation_categories`
--
ALTER TABLE `invitation_categories`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stok`
--
ALTER TABLE `stok`
  MODIFY `stok_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
