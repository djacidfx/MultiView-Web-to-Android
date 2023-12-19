-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 31, 2023 at 11:40 AM
-- Server version: 8.0.30
-- PHP Version: 7.4.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webview_backend`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_accounts`
--

CREATE TABLE `admin_accounts` (
  `id` int NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `series_id` varchar(60) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `admin_type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_accounts`
--

INSERT INTO `admin_accounts` (`id`, `user_name`, `password`, `series_id`, `remember_token`, `expires`, `admin_type`) VALUES
(4, 'superadmin', '$2y$10$KUO7ywBXR4uG/cCp6/bJvehBzYXFdOvM2nB8xfWHBlTv0IHZn05gy', 'DZRIg34u3BvSw65i', '$2y$10$kNjzMTRitwx2RqesVB7B2eDrUZ1X/cMvwxxvTKIzU3GLq7/VQSyla', '2023-03-02 11:30:05', 'super'),
(7, 'anand', '$2y$10$OrQFRZdSUP3X2kvGZrg.zeplQkxcJAq1s6atRehyCpbEvOVPu8KPe', NULL, NULL, NULL, 'admin'),
(8, 'admin', '$2y$10$RnDwpen5c8.gtZLaxHEHDOKWY77t/20A4RRkWBsjlPuu7Wmy0HyBu', 'uFvpFxEkgZj24naT', '$2y$10$WsC.kcrdDes8Zs8lRNXJJePpNpmi27yHCg/JPlFYedZKtP5W7Yg8e', '2023-02-27 17:39:02', 'admin'),
(9, 'arvind', '$2y$10$/RUa4C6iI.PhPgsDJAtKYuC.Lciu8agQEzlw43WiJBXY6YQ601CdW', 'OIGva7AQbB8QmmEv', '$2y$10$fcdLjlSDw90QxZYbn..lSes5SQGYqtgWCTB3sE8IxHzT139VosXu.', '2023-02-27 18:57:36', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `web_urls`
--

CREATE TABLE `web_urls` (
  `id` int NOT NULL,
  `title` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default_image.png',
  `is_featured` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_urls`
--

INSERT INTO `web_urls` (`id`, `title`, `url`, `image`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, 'Probweb', 'https://www.probweb.com', 'images/appsfjsks.jpg', 'Yes', NULL, '2023-01-28 19:40:41'),
(2, 'YouTube', 'https://www.youtube.com', '', 'No', NULL, '2023-01-28 19:40:35'),
(3, 'Google', 'https://www.google.com', '', 'No', NULL, '2023-01-28 19:40:29'),
(4, 'CodeCanyon', 'https://codecanyon.net/', '', 'Yes', NULL, '2023-01-28 19:40:19'),
(5, 'InResult', 'http://inresult.in/', '', 'No', NULL, '2023-01-28 19:40:11'),
(6, 'Facebook', 'https://facebook.com/', '', 'Yes', NULL, '2023-01-28 13:15:29'),
(7, 'UP Bhulekh', 'https://inresult.in', '', 'No', NULL, '2023-01-28 19:40:01'),
(8, 'eShram Card', 'https://www.facebook.com', '', 'Yes', NULL, '2023-01-28 13:15:15'),
(9, 'Online Jobs', 'https://play.google.com/apps/publish', '', 'No', NULL, '2023-01-28 19:39:52'),
(10, 'Instagram', 'https://instagram.com', '', 'Yes', NULL, '2023-01-28 19:39:47'),
(11, 'Saoda', 'https://saoda.com', '', 'No', NULL, '2023-01-28 19:40:54'),
(12, 'Twitter', 'https://www.twitter.com', '', 'Yes', NULL, '2023-01-28 19:39:31'),
(21, 'Yahoo', 'https://in.search.yahoo.com/?fr2=inr', 'default_image.png', 'No', '2023-01-28 19:43:21', NULL),
(22, 'Yandex', 'https://yandex.com/', 'default_image.png', 'No', '2023-01-28 19:44:04', '2023-01-28 19:44:31'),
(23, 'Gmail', 'https://mail.google.com/mail/u/0/', 'default_image.png', 'No', '2023-01-28 19:45:05', '2023-01-30 19:31:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_accounts`
--
ALTER TABLE `admin_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Indexes for table `web_urls`
--
ALTER TABLE `web_urls`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_accounts`
--
ALTER TABLE `admin_accounts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `web_urls`
--
ALTER TABLE `web_urls`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
