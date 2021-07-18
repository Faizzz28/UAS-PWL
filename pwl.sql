-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 18, 2021 at 10:26 AM
-- Server version: 5.7.34-0ubuntu0.18.04.1
-- PHP Version: 7.3.29-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pwl_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `tmp_lahir` varchar(30) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jk` varchar(30) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `alamat`, `tmp_lahir`, `tgl_lahir`, `jk`, `updated_at`, `created_at`) VALUES
(1, 'Agung', 'Depok', 'Jakarta', '2000-12-01', 'Laki-Laki', NULL, NULL),
(3, 'Ayu', 'Depok', 'Bogor', '2021-07-18', 'Perempuan', '2021-07-18', '2021-07-18'),
(4, 'Mawar', 'jakarta', 'bandung', '2021-07-18', 'Perempuan', '2021-07-18', '2021-07-18'),
(5, 'Albert', 'Jakarta', 'Bali', '2021-07-18', 'Laki-Laki', '2021-07-18', '2021-07-18'),
(6, 'Jaka', 'Jakarta', 'Jakarta', '2021-07-18', 'Laki-laki', '2021-07-18', '2021-07-18'),
(7, 'Slamet', 'Depok', 'Jogja', '2021-07-18', 'Laki-laki', '2021-07-18', '2021-07-18');

-- --------------------------------------------------------

--
-- Table structure for table `menuses`
--

CREATE TABLE `menuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_induk` int(11) NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `menuses`
--

INSERT INTO `menuses` (`id`, `id_induk`, `nama`, `icon`, `url`, `created_at`, `updated_at`) VALUES
(1, 0, 'Dashboard', 'home', '/home', '2019-09-28 17:00:00', '2019-09-28 17:00:00'),
(2, 0, 'Task', 'text_fields', '/task', '2019-09-28 17:00:00', '2019-09-28 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_09_28_151835_create_task_table', 2),
(5, '2019_09_29_101031_create_menus_table', 3),
(6, '2019_09_30_160528_create_tasks_table', 4),
(7, '2019_09_30_160904_create_priorities_table', 4),
(8, '2019_09_30_161654_create_pivots_table', 4),
(9, '2019_09_30_162041_create_pivots_table', 5),
(10, '2019_09_30_162408_create_tasks_table', 6),
(11, '2019_09_30_162508_priorities_tasks_table', 6),
(12, '2019_09_30_162558_priorities_pivots_table', 6),
(13, '2019_10_01_151740_create_boards_table', 7),
(14, '2019_10_01_152052_create_cards_table', 7),
(15, '2019_10_01_152254_create_tasks_table', 7),
(16, '2019_10_01_153033_add_order_key_to_task', 7),
(17, '2019_10_05_155211_add_icons_and_bg_icon', 8),
(18, '2019_10_05_155759_add_icons_and_bg_icon', 9),
(19, '2019_10_05_161823_create_cards_table', 10),
(20, '2019_10_05_164043_create_tasks_table', 11),
(21, '2019_10_12_055109_remove_due_date_on_task', 12),
(22, '2019_10_12_055818_add_due_date_on_card', 13);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Admin Admin', 'admin@unf.ac.id', '2019-09-29 09:05:33', '$2y$10$oka9qZaxC7jmq9brf4ipKuJF10b6Hm5We6H6HoTHrRQCioFPByJsK', 'QUWpZsi8RAjE3jU4aMBTuJ97m79sG20AF0S6USXLI2rbuKyTqo7dwN1fcMpj', '2019-09-29 09:05:33', '2021-07-18 03:05:47'),
(5, 'marketing', 'marketing@gmail.com', NULL, '$2y$10$LmZZRbmLXJThVA/UCP638Oe0EY8O2xU04SE2bykr7rNHsi7xq3FOy', NULL, '2019-10-06 04:24:10', '2019-10-06 04:24:10'),
(6, 'keuangan', 'keuangan@gmail.com', NULL, '$2y$10$LkBTIWGGrZedoUEAo.R5/.d9fLOBmHXXzr8ZIHfQBjqm1xnTvkL52', NULL, '2019-10-17 23:54:59', '2019-10-25 21:06:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menuses`
--
ALTER TABLE `menuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `menuses`
--
ALTER TABLE `menuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
