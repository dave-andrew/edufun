-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2024 at 04:01 AM
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
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `image_url`, `created_at`, `updated_at`, `user_id`, `category_id`) VALUES
(1, 'Quia commodi voluptatem et qui.', 'Et dolores quod est ut reprehenderit vitae voluptatem. Aut qui minus consequuntur nemo quia repellat. Omnis sed dolores vel sed illum debitis aut. Tempora ad odio est fugit.', 'https://via.placeholder.com/640x480.png/00bb33?text=eum', '1979-09-16 22:45:21', '1979-02-27 03:15:03', 4, 2),
(2, 'Qui ipsam molestiae eligendi neque.', 'Voluptatem ut excepturi facilis. Voluptatibus aut sit animi natus vel beatae iure.', 'https://via.placeholder.com/640x480.png/005500?text=dignissimos', '2005-03-12 03:08:08', '1975-06-12 09:56:59', 5, 2),
(3, 'Omnis fugit pariatur repellat et praesentium quia velit quibusdam.', 'Nam repudiandae explicabo molestias. Eius labore voluptas placeat exercitationem excepturi earum. Mollitia ipsam consequatur sint pariatur quam. Repudiandae omnis sit porro beatae sint suscipit.', 'https://via.placeholder.com/640x480.png/00cc99?text=saepe', '2015-09-17 22:20:03', '1982-10-09 13:20:37', 4, 1),
(4, 'Qui quaerat vitae repellat mollitia nisi omnis iste sequi.', 'Quia soluta odit consequatur assumenda. Et saepe assumenda nihil. Esse est molestiae consequatur quam animi sapiente laboriosam.', 'https://via.placeholder.com/640x480.png/0033aa?text=esse', '2008-12-20 03:48:42', '2023-02-20 12:53:49', 6, 2),
(5, 'Voluptate quia nihil quia.', 'Dolor dolor qui et sint quod. Dolores eos ipsa earum vitae vel iure ut. Inventore ad repellendus et nobis.', 'https://via.placeholder.com/640x480.png/001188?text=quam', '1974-01-15 19:32:53', '1990-06-06 02:01:04', 1, 2),
(6, 'Non consequatur aut iste et beatae.', 'In facere eos quae eius placeat iusto nisi. Quia cumque qui consequuntur. Vitae quae et iste et. Unde eveniet et in error.', 'https://via.placeholder.com/640x480.png/00ee11?text=accusantium', '2000-11-28 15:43:18', '2002-10-02 01:26:07', 7, 1),
(7, 'Voluptas perspiciatis et possimus amet.', 'Eos ut vero odio. Reiciendis quia perferendis illum numquam voluptas odio veritatis. Numquam suscipit aut amet sint.', 'https://via.placeholder.com/640x480.png/009955?text=tempora', '2007-10-27 00:11:41', '1982-05-20 21:27:41', 1, 2),
(8, 'Id vel eaque corrupti quis porro.', 'Sed repellendus eaque esse quia ut aut. Numquam iusto est et at excepturi ipsa. Excepturi deserunt recusandae quas repellendus. Quo non voluptatum quis in.', 'https://via.placeholder.com/640x480.png/005566?text=adipisci', '1995-12-13 07:46:20', '1975-05-30 14:58:10', 2, 1),
(9, 'Voluptatem deleniti voluptates veniam non aperiam impedit sequi natus.', 'Aut ratione necessitatibus autem id. Culpa ut accusantium aliquid est dolores. Aut suscipit voluptates veritatis hic quis non optio. Sunt expedita perspiciatis magnam et unde. Quis et voluptatibus excepturi sint beatae natus deserunt.', 'https://via.placeholder.com/640x480.png/006666?text=voluptates', '1990-01-23 23:42:06', '2019-10-11 13:50:15', 6, 1),
(10, 'Voluptates sapiente quam omnis odit.', 'Repellat perferendis nisi minima ipsa. Debitis ut molestiae numquam. Reprehenderit et voluptates quis.', 'https://via.placeholder.com/640x480.png/005577?text=id', '2016-09-23 14:00:22', '1982-10-25 08:54:53', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Interactive Multimedia'),
(2, 'Software Engineering');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_05_073024_create_categories_table', 1),
(5, '2024_11_05_083011_create_articles_table', 1);

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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('M86cjYWNE2dRR04dzDG4J768LxNH61Y9xxfLP8pu', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVzVMeDMydFMxcFBaODF2bHBGNlNqQm82bjhWdVRKSFU1a0NjRzRIeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS9JbnRlcmFjdGl2ZSUyME11bHRpbWVkaWEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1730862074);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `specialty` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `image`, `specialty`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Miss Reva Bergnaum DDS', 'https://via.placeholder.com/640x480.png/001177?text=et', 'Spesialis Software Engineering', 'hardy.ondricka@example.org', '2024-11-05 14:21:48', '$2y$12$mxTVOcgo33NE1Ao65Pi35OzW/fenYPK3wN0zUMwusuG/q9J7SGjba', '6WHtRSumwv', '2024-11-05 14:21:48', '2024-11-05 14:21:48'),
(2, 'Mrs. Rosie Stracke PhD', 'https://via.placeholder.com/640x480.png/00bbdd?text=perferendis', 'Spesialis Interactive Multimedia', 'mateo.kautzer@example.net', '2024-11-05 14:21:48', '$2y$12$mxTVOcgo33NE1Ao65Pi35OzW/fenYPK3wN0zUMwusuG/q9J7SGjba', 'kwd0QbntuV', '2024-11-05 14:21:48', '2024-11-05 14:21:48'),
(3, 'Dr. Anthony Goyette', 'https://via.placeholder.com/640x480.png/0088dd?text=laudantium', 'Spesialis Interactive Multimedia', 'rogahn.ruth@example.com', '2024-11-05 14:21:48', '$2y$12$mxTVOcgo33NE1Ao65Pi35OzW/fenYPK3wN0zUMwusuG/q9J7SGjba', 'p4QqY1H9Sc', '2024-11-05 14:21:48', '2024-11-05 14:21:48'),
(4, 'Bridgette Beier', 'https://via.placeholder.com/640x480.png/0088aa?text=neque', 'Spesialis Interactive Multimedia', 'adrienne.heidenreich@example.net', '2024-11-05 14:21:48', '$2y$12$mxTVOcgo33NE1Ao65Pi35OzW/fenYPK3wN0zUMwusuG/q9J7SGjba', 'DhwUTHvXWx', '2024-11-05 14:21:48', '2024-11-05 14:21:48'),
(5, 'Aurelie Rowe', 'https://via.placeholder.com/640x480.png/0022dd?text=delectus', 'Spesialis Interactive Multimedia', 'pollich.jett@example.net', '2024-11-05 14:21:48', '$2y$12$mxTVOcgo33NE1Ao65Pi35OzW/fenYPK3wN0zUMwusuG/q9J7SGjba', 'IXtB40rN69', '2024-11-05 14:21:48', '2024-11-05 14:21:48'),
(6, 'Mrs. Camille Keeling IV', 'https://via.placeholder.com/640x480.png/0022dd?text=voluptatum', 'Spesialis Interactive Multimedia', 'romaine.reilly@example.com', '2024-11-05 14:21:48', '$2y$12$mxTVOcgo33NE1Ao65Pi35OzW/fenYPK3wN0zUMwusuG/q9J7SGjba', 'WB0cFGVyDD', '2024-11-05 14:21:48', '2024-11-05 14:21:48'),
(7, 'Dr. Carlo Kautzer', 'https://via.placeholder.com/640x480.png/005599?text=qui', 'Spesialis Interactive Multimedia', 'larson.alene@example.net', '2024-11-05 14:21:48', '$2y$12$mxTVOcgo33NE1Ao65Pi35OzW/fenYPK3wN0zUMwusuG/q9J7SGjba', 'XTsMUB3JTV', '2024-11-05 14:21:48', '2024-11-05 14:21:48'),
(8, 'Mrs. Cleora Torp', 'https://via.placeholder.com/640x480.png/003344?text=deleniti', 'Spesialis Software Engineering', 'mercedes.schulist@example.com', '2024-11-05 14:21:48', '$2y$12$mxTVOcgo33NE1Ao65Pi35OzW/fenYPK3wN0zUMwusuG/q9J7SGjba', 'AjbQMHCePw', '2024-11-05 14:21:48', '2024-11-05 14:21:48'),
(9, 'Prof. Dillon Murazik', 'https://via.placeholder.com/640x480.png/0000bb?text=cum', 'Spesialis Software Engineering', 'quitzon.golda@example.com', '2024-11-05 14:21:48', '$2y$12$mxTVOcgo33NE1Ao65Pi35OzW/fenYPK3wN0zUMwusuG/q9J7SGjba', 'V0l5y34n01', '2024-11-05 14:21:48', '2024-11-05 14:21:48'),
(10, 'Rosanna Russel MD', 'https://via.placeholder.com/640x480.png/00bb00?text=quaerat', 'Spesialis Software Engineering', 'bogan.laisha@example.net', '2024-11-05 14:21:48', '$2y$12$mxTVOcgo33NE1Ao65Pi35OzW/fenYPK3wN0zUMwusuG/q9J7SGjba', 'x5iS7kwoPx', '2024-11-05 14:21:48', '2024-11-05 14:21:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_user_id_foreign` (`user_id`),
  ADD KEY `articles_category_id_foreign` (`category_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
