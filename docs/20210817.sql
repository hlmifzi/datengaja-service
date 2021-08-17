-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2021 at 05:12 PM
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
(2, 'hlmifzi@gmail.com', '081294923207', 'SMKN26Pembangunan', 'ADMIN', 'AKTIF', '2021-06-16 08:25:32.000000', '2021-06-02 22:04:44.000000'),
(24, 'helmi.fauzic@sirclo.com', '088210587976', 'SMKN26Pembangunan!', 'BUYER', 'AKTIF', '2021-08-14 18:33:13.240871', '0000-00-00 00:00:00.000000'),
(25, 'hlmifzicoba1@gmail.com', '081294923207', 'SMKN26Pembangunan', 'BUYER', 'AKTIF', '2021-08-17 13:21:51.993630', '0000-00-00 00:00:00.000000'),
(26, 'hlmifzicoba1@gmail.com', '088210587976', 'SMKN26Pembangunan', 'BUYER', 'AKTIF', '2021-08-17 13:24:21.765240', '0000-00-00 00:00:00.000000'),
(27, 'hlmifzicoba1@gmail.com', '088210587976', 'SMKN26Pembangunan', 'BUYER', 'AKTIF', '2021-08-17 13:27:58.659559', '0000-00-00 00:00:00.000000'),
(28, 'hlmifzi@gmail.com', '088210587976', 'SMKN26Pembangunan', 'BUYER', 'AKTIF', '2021-08-17 13:32:45.594325', '0000-00-00 00:00:00.000000'),
(29, 'hlmifzi@gmail.com', '088210587976', '', 'BUYER', 'AKTIF', '2021-08-17 14:06:47.388254', '0000-00-00 00:00:00.000000'),
(30, 'hlmifzi@gmail.com', '088210587976', 'SMKN26Pembangunan', 'BUYER', 'AKTIF', '2021-08-17 14:17:51.709994', '0000-00-00 00:00:00.000000'),
(31, 'hlmifzicobaa1@gmail.com', '9678687', 'SMKN26Pembangunan', 'BUYER', 'AKTIF', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000'),
(32, 'hlmifzicobaa1@gmail.com', '081294923207', 'smkn26pEMBANGUNAN', 'BUYER', 'AKTIF', '2021-08-24 21:29:33.000000', '2021-08-25 21:29:33.000000'),
(33, 'hlmifzi@gmail.com', '080', '123', 'BUYER', 'AKTIF', '2021-08-17 14:33:10.175506', '0000-00-00 00:00:00.000000'),
(34, 'hlmifzicoba1@gmail.com', '088210587976', 'SMKN26Pembangunan', 'BUYER', 'AKTIF', '2021-08-17 14:41:04.095335', '0000-00-00 00:00:00.000000'),
(35, 'hlmifzicoba1@gmail.com', '088210587976', 'SMKN26Pembangunan', 'BUYER', 'AKTIF', '2021-08-17 14:41:04.137685', '0000-00-00 00:00:00.000000'),
(36, 'hlmifzicoba1@gmail.com', '088210587976', 'SMKN26Pembangunan', 'BUYER', 'AKTIF', '2021-08-17 14:50:21.579678', '0000-00-00 00:00:00.000000'),
(37, 'hlmifzi@gmail.com', '088210587976', 'asd', 'BUYER', 'AKTIF', '2021-08-17 14:55:54.094540', '0000-00-00 00:00:00.000000'),
(38, 'hlmifzi@gmail.com', '088210587976', 'asd', 'BUYER', 'AKTIF', '2021-08-17 14:58:09.918903', '0000-00-00 00:00:00.000000'),
(39, 'hlmifzi@gmail.com', '080', '123', 'BUYER', 'AKTIF', '2021-08-17 15:09:15.579244', '0000-00-00 00:00:00.000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
