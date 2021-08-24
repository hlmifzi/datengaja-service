-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2021 at 01:45 PM
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
  `rekening` varchar(50) DEFAULT NULL,
  `is_publish` varchar(20) DEFAULT NULL,
  `expired_at` datetime DEFAULT NULL,
  `status_paid` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` char(20) NOT NULL DEFAULT 'AKTIF'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `buyer_product`
--

INSERT INTO `buyer_product` (`id`, `user_id`, `background1`, `background2`, `product_id`, `bride_couple_img`, `bridegroom_full_name`, `bride_full_name`, `bridegroom_call_name`, `bridegroom_img`, `bride_img`, `bride_call_name`, `bridegroom_mother`, `bridegroom_fathers`, `bride_woman_mother`, `bride_woman_father`, `bride_date`, `bride_start_time`, `bride_end_time`, `bride_location`, `reception_date`, `reception_start_time`, `reception_end_time`, `reception_location`, `reception_location_google_maps`, `gallery`, `live_streaming_zoom`, `live_streaming_zoom_meeting_id`, `live_streaming_zoom_password`, `live_streaming_ig`, `live_streaming_ig_account`, `handphone_wa`, `rekening_qr_img`, `rekening`, `is_publish`, `expired_at`, `status_paid`, `created_at`, `updated_at`, `status`) VALUES
(26, 2, '/img/2.jpeg', '/img/6.jpeg', 1, '/img/1.jpeg', 'helmi fauzi', 'siti nurjannah', 'helmicoba1', '/img/3.jpeg', '/img/4.jpeg', 'jannahcoba1', 'tes', 'tes', 'asd', '123', '2021-08-18', '00:25:00', '22:24:00', 'tes', '2021-08-10', '22:21:00', '20:23:00', 'asda', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.4408681594346!2d106.88866431410297!3d-6.205430862513204!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f4a2d70819c1%3A0x34c8dff84ebb630e!2sGg.%20Anyelir%2C%20RT.5%2FRW.2%2C%20Cipinang%2C%20Kec.%20Pulo%20Gadung%2C%20Kota%20Jakarta%20Timur%2C%20Daerah%20Khusus%20Ibukota%20Jakarta%2013240!5e0!3m2!1sen!2sid!4v1623944384045!5m2!1sen!2sid\" width=\"100%\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', '/img/2.jpeg|/img/7.jpeg|/img/5.jpeg|/img/6.jpeg', '', '', '', NULL, '', '', '/img/qrcode.jpeg', '', '', '0000-00-00 00:00:00', '', '2021-08-17 13:21:52', '2021-08-22 11:25:45', 'AKTIF');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invitations`
--

INSERT INTO `invitations` (`id`, `buyerProductId`, `invitation_category_id`, `fullname`, `phone_wa`, `attend_status`, `greetings`, `attend_qty`, `time_end`, `created_at`, `updated_at`, `status`, `present_time`) VALUES
(22, 26, 27, 'Cholis', '6281294923207', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2021-08-23 14:35:22', 'AKTIF', NULL),
(23, 26, 28, 'ojan', '6281294923207', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2021-08-23 14:43:49', 'AKTIF', NULL),
(24, 26, 27, 'haryanto jayusman', '62812913121', 'Menunggu Konfirmasi', NULL, NULL, NULL, NULL, '2021-08-23 14:52:22', 'AKTIF', NULL);

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
(25, 1, 'temen ayah', '', '00:00:00', '00:00:00', 'AKTIF'),
(26, 25, 'Temen SMK Mempelai laki laki', 'SESI I', '05:39:00', '01:42:00', 'AKTIF'),
(27, 26, 'Temen SMK Helmi', '', '00:00:00', '00:00:00', 'AKTIF'),
(28, 26, 'Temen SMP', '', '00:00:00', '00:00:00', 'AKTIF');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `phone`, `password`, `type`, `status`, `created_at`, `updated_at`) VALUES
(2, 'admin@datengaja.id', '081294923207', 'SMKN26Pembangunan', 'ADMIN', 'AKTIF', '2021-06-16 08:25:32.000000', '2021-06-02 22:04:44.000000');

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
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `invitations`
--
ALTER TABLE `invitations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `invitation_categories`
--
ALTER TABLE `invitation_categories`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
