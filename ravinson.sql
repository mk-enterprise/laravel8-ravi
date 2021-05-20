-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 02, 2021 at 05:13 PM
-- Server version: 8.0.21-0ubuntu0.20.04.4
-- PHP Version: 7.3.27-4+ubuntu20.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ravinson`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel_cache057ce20d4134fb3ecbf2e0e82a00a60f', 'i:1;', 1616864925),
('laravel_cache057ce20d4134fb3ecbf2e0e82a00a60f:timer', 'i:1616864925;', 1616864925),
('laravel_cache52f22fbd6e8eddbdf22c1976ae912a18c1d15880', 'i:1;', 1616863059),
('laravel_cache52f22fbd6e8eddbdf22c1976ae912a18c1d15880:timer', 'i:1616863059;', 1616863059),
('laravel_cachef1f70ec40aaa556905d4a030501c0ba4', 'i:2;', 1616929432),
('laravel_cachef1f70ec40aaa556905d4a030501c0ba4:timer', 'i:1616929432;', 1616929432),
('laravel_cacheposts', 'a:0:{}', 1615569762);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `post_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `text`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(112, 'good', 107, 2, '2021-03-13 23:08:02', '2021-03-13 23:08:02'),
(113, 'very good', 108, 3, '2021-03-13 23:08:02', '2021-03-13 23:08:02'),
(114, 'awesome', 108, 3, '2021-03-13 23:08:02', '2021-03-13 23:08:02');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `user_id`, `comment`) VALUES
(1, 4, '2021-03-28 08:01:58'),
(2, 6, '2021-03-28 08:03:10'),
(3, 8, 'Mail sent on 2021-03-28 08:10:24'),
(4, 9, 'Mail sent on 2021-03-28 08:14:21'),
(5, 10, 'Mail sent on 2021-03-28 08:14:26'),
(6, 11, 'Mail sent on 2021-03-28 08:16:02'),
(7, 12, 'Mail sent on 2021-03-28 08:16:12'),
(8, 13, 'Mail sent on 2021-03-28 08:16:22'),
(9, 14, 'Mail sent on 2021-03-28 08:16:32'),
(10, 15, 'Mail sent on 2021-03-28 08:21:40'),
(11, 18, 'Mail sent on 2021-03-28 08:35:03'),
(12, 17, 'Mail sent on 2021-03-28 08:35:13'),
(13, 16, 'Mail sent on 2021-03-28 08:35:23'),
(14, 19, 'Mail sent on 2021-03-28 09:48:03');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_10_171856_create_cache_table', 2),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 3),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 3),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 3),
(8, '2016_06_01_000004_create_oauth_clients_table', 3),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 3),
(10, '2021_03_28_074836_create_jobs_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('ba77f7889bdf96ce2a5fed3ce64b201e59c1b3accf16a685acf6aa106fad3ffc9c4c82efdf98502e', 1, 2, NULL, '[]', 0, '2021-03-23 12:02:22', '2021-03-23 12:02:22', '2022-03-23 17:32:22'),
('c5f7d284022f23dd0c48661955e35e7be9fc2737893dadc206cfef471a3f64436e19130a7b1218ff', 1, 2, NULL, '[]', 0, '2021-03-27 11:06:40', '2021-03-27 11:06:40', '2022-03-27 16:36:40');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'F4coJsbTMAeoLAc4P5sjaW6sR7mTZAcSH9aPJ2Gq', NULL, 'http://localhost', 1, 0, 0, '2021-03-23 11:37:31', '2021-03-23 11:37:31'),
(2, NULL, 'Laravel Password Grant Client', 'kNjUXN3A1k2jHXX1yiVKwfDCyUEIvT7c2BPHEHa4', 'users', 'http://localhost', 0, 1, 0, '2021-03-23 11:37:31', '2021-03-23 11:37:31');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-03-23 11:37:31', '2021-03-23 11:37:31');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('2607ee6548035659775e256fa7499f02648fae6ede8e70c9b2b91560f76ebe569c54a6fa049838e1', 'ba77f7889bdf96ce2a5fed3ce64b201e59c1b3accf16a685acf6aa106fad3ffc9c4c82efdf98502e', 0, '2022-03-23 17:32:23'),
('8446b480d1e6be84709387d88dc300569a6048bbe83db0e8f108b1e909e8a5a25ff0b7d26cee7275', 'c5f7d284022f23dd0c48661955e35e7be9fc2737893dadc206cfef471a3f64436e19130a7b1218ff', 0, '2022-03-27 16:36:40');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `details` varchar(255) DEFAULT NULL,
  `user_id` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `details`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(108, 'holywood ', NULL, 1, 1, '2021-03-13 22:46:35', '2021-03-13 22:46:35'),
(109, 'agara', NULL, 2, 1, '2021-03-13 22:46:35', '2021-03-13 22:46:35'),
(110, 'ludhiana', NULL, 2, 1, '2021-03-13 22:46:35', '2021-03-13 22:46:35'),
(111, 'chandigarh', NULL, 2, 1, '2021-03-13 22:46:35', '2021-03-13 22:46:35'),
(112, 'qw', 'ewr', 22, 0, '2021-03-15 16:41:37', '2021-03-15 16:41:37'),
(113, 'qw', 'ewr', 22, 1, '2021-03-15 16:43:17', '2021-03-15 16:43:17'),
(114, 'DSF', 'dsfd', 22, 0, '2021-03-15 17:17:22', '2021-03-15 17:17:22'),
(115, 'TEST1', 'desgffjkhklnkj', 1, 1, '2021-03-27 17:08:37', '2021-03-27 17:08:37'),
(116, '', 'desgffjkhklnkj', 1, 1, '2021-03-27 17:12:50', '2021-03-27 17:12:50'),
(117, '', NULL, 1, 1, '2021-03-27 17:13:00', '2021-03-27 17:13:00'),
(118, '', 'desgffjkhklnkj', 1, 1, '2021-03-27 17:13:17', '2021-03-27 17:13:17'),
(119, 'T3', 'desgffjkhklnkj', 1, 1, '2021-03-27 17:15:01', '2021-03-27 17:15:01'),
(120, 'BJG', 'desgffjkhklnkj', 1, 1, '2021-03-27 17:16:13', '2021-03-27 17:16:13'),
(121, 'BJG', 'desgffjkhklnkj', 1, 1, '2021-03-27 17:16:34', '2021-03-27 17:16:34');

-- --------------------------------------------------------

--
-- Table structure for table `post_descriptions`
--

CREATE TABLE `post_descriptions` (
  `id` int NOT NULL,
  `post_id` int NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `post_descriptions`
--

INSERT INTO `post_descriptions` (`id`, `post_id`, `details`, `created_at`, `updated_at`) VALUES
(1, 107, 'indian bolywood', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'mohit', 'mohit@yopmail.com', NULL, '$2y$10$fp9/Ku8c2szK/f9V0jDMGenqY9mibvpuF.04XYVa6URZlNoAXOL5e', NULL, NULL, '2021-03-23 12:02:07', NULL),
(2, 'ravinson', 'ravinson@yopmail.com', NULL, 'edsfasdfdf', NULL, NULL, NULL, '2021-03-27 17:26:51'),
(3, 'ratnesh1', 'ratnesh@yopmail.com', NULL, 'edsfasdfdf', NULL, NULL, '2021-03-27 11:56:51', NULL),
(4, 'abc', 'abc@gmail.com', NULL, '123456', NULL, '2021-03-28 02:31:58', '2021-03-28 02:31:58', NULL),
(6, 'abc', 'ab1c@gmail.com', NULL, '123456', NULL, '2021-03-28 02:33:05', '2021-03-28 02:33:05', NULL),
(7, 'abc', 'ab12c@gmail.com', NULL, '123456', NULL, '2021-03-28 02:39:52', '2021-03-28 02:39:52', NULL),
(8, 'abc', 'ab123c@gmail.com', NULL, '123456', NULL, '2021-03-28 02:40:19', '2021-03-28 02:40:19', NULL),
(9, 'abc', 'ab1233c@gmail.com', NULL, '123456', NULL, '2021-03-28 02:42:24', '2021-03-28 02:42:24', NULL),
(10, 'abc', 'ab12334c@gmail.com', NULL, '123456', NULL, '2021-03-28 02:42:54', '2021-03-28 02:42:54', NULL),
(11, 'abc', 'ab12334c@gmail.com3', NULL, '123456', NULL, '2021-03-28 02:45:50', '2021-03-28 02:45:50', NULL),
(12, 'abc', 'ab152334c@gmail.com3', NULL, '123456', NULL, '2021-03-28 02:45:55', '2021-03-28 02:45:55', NULL),
(13, 'abc', 'ab1526334c@gmail.com3', NULL, '123456', NULL, '2021-03-28 02:45:58', '2021-03-28 02:45:58', NULL),
(14, 'abc', 'ab1526334c@gmail.com36', NULL, '123456', NULL, '2021-03-28 02:46:03', '2021-03-28 02:46:03', NULL),
(15, 'abc', 'ab14526334c@gmail.com36', NULL, '123456', NULL, '2021-03-28 02:48:53', '2021-03-28 02:48:53', NULL),
(16, 'abc', 'ab14526334c@gmail.com364', NULL, '123456', NULL, '2021-03-28 02:55:22', '2021-03-28 02:55:22', NULL),
(17, 'abc', 'ab14526334c@gmail.com3643', NULL, '123456', NULL, '2021-03-28 02:57:20', '2021-03-28 02:57:20', NULL),
(18, 'abc', 'ab14526334c@gmail.com36434', NULL, '123456', NULL, '2021-03-28 02:58:55', '2021-03-28 02:58:55', NULL),
(19, 'abc', 'ab145246334c@gmail.com36434', NULL, '123456', NULL, '2021-03-28 04:17:49', '2021-03-28 04:17:49', NULL),
(21, 'abc', 'ab145246334c@gmail.com364342', NULL, '123456', NULL, '2021-03-28 05:02:04', '2021-03-28 05:02:04', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_descriptions`
--
ALTER TABLE `post_descriptions`
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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `post_descriptions`
--
ALTER TABLE `post_descriptions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
