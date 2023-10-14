-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2023 at 07:17 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shred_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `charties`
--

CREATE TABLE `charties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fundraising_id` int(11) NOT NULL,
  `logo` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `donation` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referrer_code` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `charty_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `charties`
--

INSERT INTO `charties` (`id`, `fundraising_id`, `logo`, `first_name`, `last_name`, `phone`, `email_address`, `address`, `tax`, `donation`, `referrer_code`, `customer_id`, `charty_status`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Muhammad', 'Asim', '036666', 'asim75232@gmail.com', 'Islamabad Pakistan', NULL, 'Personal', 'ABC123', 0, 0, '2023-09-27 06:20:37', '2023-09-27 06:20:37');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `donation_id` int(11) NOT NULL,
  `referrer_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `donation_id`, `referrer_code`, `name`, `email`, `phone`, `address`, `customer_status`, `customer_id`, `created_at`, `updated_at`) VALUES
(1, 20, 'non', 'Florida Hamill', 'leuschke.jaylan@example.net', '+1 (757) 430-0503', '5122 Reilly River\nLake Kraig, OH 57865', 'Active', 'd393010f-ac7e-3cab-94fa-e20b849b498d', '2023-09-26 02:37:50', '2023-09-26 02:37:50'),
(2, 7, 'corrupti', 'Jamir Hand Sr.', 'lydia83@example.net', '+17746691420', '223 Sandra Stravenue\nSchowalterland, OK 82317-5289', 'Blocked', '06cc0628-219d-37cd-acc1-79eb0ec73aa3', '2023-09-26 02:37:50', '2023-09-26 02:37:50'),
(3, 82, 'iste', 'Vaughn Roob', 'lhintz@example.com', '1-805-485-7634', '7484 Braun Causeway\nDickinsonview, PA 18663-7044', 'Active', 'f497a51a-2277-38ab-8017-c40563586b79', '2023-09-26 02:37:50', '2023-09-26 02:37:50'),
(4, 21, 'voluptas', 'Miss Jazmyne Raynor V', 'aubrey.dickens@example.net', '(810) 620-4508', '29344 Cassidy Mount Suite 548\nRicofurt, PA 92044', 'Active', '04cfb39f-3ddb-3c4a-8950-86f3ad2fd0b1', '2023-09-26 02:37:50', '2023-09-26 02:37:50'),
(5, 39, 'hic', 'Prof. Einar Cartwright', 'adolphus.swaniawski@example.net', '1-930-416-3815', '65599 Lakin Stravenue Suite 191\nLake Viviennestad, NY 27375-8504', 'Active', '45d6a422-3d66-3203-9ab8-ed54c6606f62', '2023-09-26 02:37:50', '2023-09-26 02:37:50'),
(6, 84, 'ut', 'Dr. Joelle Ferry II', 'roy.stehr@example.com', '949-418-4540', '6700 Dare Island\nSchuppeshire, CA 99795', 'Inactive', 'd64e9521-a9d8-3924-b4d9-2003acc03413', '2023-09-26 02:37:50', '2023-09-26 02:37:50'),
(7, 5, 'voluptatem', 'Prof. Josefina Emmerich', 'ojaskolski@example.org', '256-917-6395', '731 Napoleon Flat Apt. 212\nAishaville, NC 97828', 'Blocked', '6e7dfea8-8e05-329a-86ab-ebd41e51eda0', '2023-09-26 02:37:50', '2023-09-26 02:37:50'),
(8, 29, 'ex', 'Ruben Huel', 'vivianne41@example.com', '1-262-546-4019', '32505 Ibrahim Underpass Suite 662\nEast Filibertoside, IN 09016-7571', 'Active', 'c5064133-3f4b-3151-a599-1f2fd7f9e06f', '2023-09-26 02:37:50', '2023-09-26 02:37:50'),
(9, 53, 'quidem', 'Prof. Herminio Kulas IV', 'colin.hudson@example.org', '330.425.8186', '15928 Selena Stream Apt. 739\nConsidineberg, WV 55215-4225', 'Blocked', 'cd520cde-b664-3ffa-9e66-d7e8f55df820', '2023-09-26 02:37:50', '2023-09-26 02:37:50'),
(10, 47, 'optio', 'Mr. Trevion Beer I', 'tgleason@example.org', '619-369-4943', '457 Sauer Ford\nEast Dina, MO 61255', 'Active', '5ddc8095-bdc1-33b6-9766-70629cc03d88', '2023-09-26 02:37:50', '2023-09-26 02:37:50');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver_status` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickup_status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `name`, `user_id`, `email`, `number`, `address`, `type`, `driver_status`, `pickup_status`, `created_at`, `updated_at`) VALUES
(3, 'Muhammad Asim', '3', 'asim75232@gamil.com', '03166002722', 'Islamabad Pakistan', 'Car', '1', '0', '2023-09-27 11:15:00', '2023-09-27 11:15:00'),
(21, 'Demetrius Hand', '', 'jarrell11@example.net', '269.491.0115', '662 Russel Radial\nFayhaven, KS 84217', 'car', '1', '0', '2023-09-27 04:40:19', '2023-09-27 04:40:19'),
(22, 'Prof. Baron Brekke', '', 'ona.nienow@example.org', '+1 (347) 730-4403', '863 Friesen Inlet\nWiegandhaven, GA 43498', 'bike', '1', '1', '2023-09-27 04:40:19', '2023-09-27 04:40:19'),
(23, 'Dejon Balistreri', '', 'anthony26@example.net', '+17268611902', '41990 Bernhard Street Suite 240\nHeaneyberg, GA 83693-5327', 'car', '0', '1', '2023-09-27 04:40:19', '2023-09-27 04:40:19'),
(24, 'Alicia Jenkins', '', 'aemard@example.org', '(458) 896-0846', '184 Ward Plaza Apt. 790\nNew Otha, TX 82440', 'car', '0', '1', '2023-09-27 04:40:19', '2023-09-27 04:40:19'),
(25, 'Herman Keeling', '', 'palma.hartmann@example.net', '+1-657-479-9908', '540 Hodkiewicz Bypass\nPort Agnesbury, WI 89214', 'bike', '1', '0', '2023-09-27 04:40:19', '2023-09-27 04:40:19'),
(26, 'Alexandro Ondricka', '', 'vmarvin@example.com', '+1 (947) 825-3290', '2592 Thompson Mountain\nEast Zariaburgh, KS 24319', 'bike', '1', '0', '2023-09-27 04:40:19', '2023-09-27 04:40:19'),
(27, 'Jordan Wolf', '', 'betty13@example.net', '952-650-9219', '282 Juana Burg Suite 522\nTorphymouth, CO 38319-0089', 'bike', '0', '1', '2023-09-27 04:40:19', '2023-09-27 04:40:19'),
(28, 'Paula Price', '', 'derrick.morissette@example.net', '+1.603.367.8106', '245 Margret Flats\nBridgetfort, CT 28819-6890', 'bike', '1', '0', '2023-09-27 04:40:19', '2023-09-27 04:40:19'),
(29, 'Miss Mossie Stark II', '', 'napoleon75@example.com', '+1-520-518-3359', '505 Quigley Rest Apt. 139\nPort Ernesto, MN 14899-3643', 'car', '0', '1', '2023-09-27 04:40:19', '2023-09-27 04:40:19'),
(30, 'Winfield Spinka', '', 'corrine18@example.net', '575.915.0268', '51482 Annette Mountains Apt. 472\nSouth Kitty, IA 77478-9221', 'bike', '0', '1', '2023-09-27 04:40:19', '2023-09-27 04:40:19'),
(31, 'Muhammad Asim', '1', 'asim75232@gamil.com', '03166002722', 'Islamabad Pakistan', 'Car', '0', '0', '2023-09-27 05:10:51', '2023-09-27 05:10:51'),
(32, 'Muhammad Asim', '3', 'asim75232@gamil.com', '03166002722', 'Islamabad Pakistan', 'Bike', '0', '0', '2023-09-27 11:11:23', '2023-09-27 11:11:23'),
(33, 'Muhammad Asim', '3', 'asim75232@gamil.com', '03166002722', 'Islamabad Pakistan', 'Car', '0', '0', '2023-09-27 11:14:01', '2023-09-27 11:14:01'),
(35, 'asim malik', '3', 'asim75232@gamil.com', '03166002722', 'Islamabad Pakistan', 'Bike', '0', '0', '2023-09-27 11:53:45', '2023-09-27 11:53:45'),
(36, 'Muhammad Asim', '3', 'asim75232@gamil.com', '03166002722', 'Islamabad Pakistan', 'Bike', '0', '0', '2023-09-27 11:56:02', '2023-09-27 11:56:02'),
(37, 'Muhammad Asim', '3', 'asim75232@gamil.com', '03166002722', 'Islamabad Pakistan', 'Bike', '0', '0', '2023-09-27 12:12:23', '2023-09-27 12:12:23');

-- --------------------------------------------------------

--
-- Table structure for table `driver_task`
--

CREATE TABLE `driver_task` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `charty_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickup` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drop` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `frontend_changes`
--

CREATE TABLE `frontend_changes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `top Bar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fundraisings`
--

CREATE TABLE `fundraisings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fundraising_id` int(11) NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `referrer_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_19_082604_create_pages_table', 1),
(6, '2023_08_23_141700_frontend_changes_table', 1),
(7, '2023_08_24_060344_profile_pages_table', 1),
(8, '2023_08_24_164358_driver_pages_table', 1),
(9, '2023_08_26_140200_driver_task_pages_table', 1),
(10, '2023_09_23_102200_create_fundraisings_table', 1),
(11, '2023_09_23_154931_create_customers_table', 1),
(12, '2023_09_24_142508_create_tracations_table', 1),
(13, '2023_09_25_134019_create_pickups_table', 1),
(14, '2023_09_26_063237_create_charties_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paragraph` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pickups`
--

CREATE TABLE `pickups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `donation_id` bigint(20) UNSIGNED NOT NULL,
  `driver_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `donation_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pickups`
--

INSERT INTO `pickups` (`id`, `donation_id`, `driver_id`, `customer_id`, `donation_type`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 0, 33, 10, 'bottle', '20', '2023-09-26 02:39:49', '2023-09-26 02:39:49'),
(2, 0, 22, 1, 'bottle', '20', '2023-09-27 08:57:37', '2023-09-27 08:57:37'),
(3, 0, 22, 1, 'bottle', '20', '2023-09-27 10:17:47', '2023-09-27 10:17:47'),
(4, 0, 3, 1, 'bottle', '20', '2023-09-27 10:28:44', '2023-09-27 10:28:44'),
(5, 0, 3, 1, 'bottle', '20', '2023-09-27 12:00:57', '2023-09-27 12:00:57'),
(6, 0, 3, 1, 'bottle', '20', '2023-09-27 12:16:11', '2023-09-27 12:16:11');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `fundraiser_id` bigint(20) UNSIGNED NOT NULL,
  `donation_id` bigint(20) UNSIGNED NOT NULL,
  `donation_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `customer_id`, `fundraiser_id`, `donation_id`, `donation_type`, `quantity`, `created_at`, `updated_at`) VALUES
(5, 1, 1, 0, 'bottle', 20, '2023-09-27 09:52:12', '2023-09-27 09:52:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fundraising_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`, `customer_type`, `driver_type`, `fundraising_type`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$10$rdfrIx2BfeeXwuzPYSujUOWsP3SLpqPFfo.WDm7y3LaowXwfu7aZy', 'admin', '0', '0', '0', NULL, NULL, '2023-09-26 02:38:15', '2023-09-26 02:38:15'),
(2, 'customer', 'customer@gmail.com', '$2y$10$pe7QRdAkxu6DHU5yJI.MqeSqNX6.oPaTs/Y4ajcbewFRo5wwQ8nCi', 'customer', '1', '0', '0', NULL, NULL, '2023-09-26 02:38:31', '2023-09-26 02:38:31'),
(3, 'driver', 'driver@gmail.com', '$2y$10$BMS9s7dBuDJWrGNrVfGhHute4njNF/hWQ4U0wjrA/flwLHBquHSMK', 'driver', '0', '1', '0', NULL, NULL, '2023-09-26 02:38:45', '2023-09-26 02:38:45'),
(4, 'customer', 'customers@gmail.com', '$2y$10$CDxUIRDiaLj0IFvKq2M63.a.hBwBYzuRrzpnMlvC.L2jpLZV2cv3K', '0', '0', '0', '0', NULL, NULL, '2023-09-27 05:59:05', '2023-09-27 05:59:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `charties`
--
ALTER TABLE `charties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `driver_task`
--
ALTER TABLE `driver_task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `frontend_changes`
--
ALTER TABLE `frontend_changes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fundraisings`
--
ALTER TABLE `fundraisings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pickups`
--
ALTER TABLE `pickups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pickups_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
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
-- AUTO_INCREMENT for table `charties`
--
ALTER TABLE `charties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=395;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `driver_task`
--
ALTER TABLE `driver_task`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frontend_changes`
--
ALTER TABLE `frontend_changes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fundraisings`
--
ALTER TABLE `fundraisings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pickups`
--
ALTER TABLE `pickups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pickups`
--
ALTER TABLE `pickups`
  ADD CONSTRAINT `pickups_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
