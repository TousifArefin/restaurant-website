-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 23, 2023 at 08:58 AM
-- Server version: 5.7.33
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finalproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(3, 'All Salad 1', 'all-salad-1', '2022-04-21 04:42:12', '2022-08-25 06:46:30'),
(4, 'Biriani', 'biriani', '2022-04-21 04:42:22', '2022-04-21 04:42:22'),
(7, 'Lunch', 'lunch', '2022-04-21 05:15:32', '2022-04-21 05:15:32'),
(8, 'Breakfast', 'breakfast', '2022-04-21 05:15:42', '2022-04-21 05:15:51'),
(9, 'Drinks', 'drinks', '2022-04-23 15:04:06', '2022-04-23 15:04:06'),
(10, 'Dinner', 'dinner', '2022-04-24 04:07:57', '2022-04-24 04:07:57'),
(11, 'Snacks', 'snacks', '2022-06-10 09:30:55', '2022-06-10 09:30:55'),
(12, 'Party Food', 'party-food', '2022-06-10 09:31:48', '2022-06-10 09:31:48');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `category_id`, `name`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
(2, 3, 'Healthy Salad', 'Healthy salad item', '150 Tk', 'healthy-salad-2022-07-09-.jpg', '2022-04-23 14:41:12', '2022-07-09 03:12:27'),
(3, 8, 'New Breakfast', 'Pan cake', '550Tk', 'new-breakfast-2022-04-23-.jpg', '2022-04-23 15:08:24', '2022-04-23 15:08:24'),
(4, 9, 'Lacchi', 'This is Watermellon lacchi', '120', 'lacchi-2022-04-23-.jpg', '2022-04-23 16:02:48', '2022-04-23 16:02:48'),
(5, 7, 'Set menu', 'All kinds of indian lunch', '499', 'set-menu-2022-04-24-.jpg', '2022-04-24 04:00:34', '2022-04-24 04:00:34'),
(6, 4, 'Cheaken Biriani', 'Our Biriani', '750', 'cheaken-biriani-2022-04-24-.jpg', '2022-04-24 04:02:23', '2022-04-24 04:02:23'),
(7, 9, 'CocaCola', 'All kinds of soft Drink', '20', 'cocacola-2022-04-24-.jpg', '2022-04-24 04:04:33', '2022-04-24 04:04:33'),
(8, 10, 'Candel Night Dinner', 'Our Candel Night dinner', '1500', 'candel-night-dinner-2022-04-24-.jpg', '2022-04-24 04:08:48', '2022-04-24 04:08:48'),
(9, 11, 'Pan Cake', 'This is pan spicial cake', '150 Tk', 'pan-cake-2022-06-10-.jpg', '2022-06-10 09:33:58', '2022-06-10 09:33:58'),
(10, 12, 'This is party food', 'all kinds of party food here', '550Tk', 'this-is-party-food-2022-06-10-.jpg', '2022-06-10 09:36:00', '2022-06-10 09:36:00'),
(11, 12, 'Gretchen Mcintosh', 'Fugiat mollit est n', '825', 'gretchen-mcintosh-2022-08-29-.jpg', '2022-08-29 12:13:49', '2022-08-29 12:13:49');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(5, '2022_04_20_102940_create_sliders_table', 2),
(6, '2022_04_20_134635_create_categories_table', 3),
(7, '2022_04_21_105420_create_items_table', 4),
(8, '2022_04_24_101905_create_reservations_table', 5);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_and_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `name`, `phone`, `email`, `date_and_time`, `message`, `status`, `created_at`, `updated_at`) VALUES
(14, 'Shellie Wilkinson', '+1 (451) 466-8553', 'nixim@mailinator.com', '22-Jun-2003', 'Veritatis voluptas c', 1, '2022-04-27 05:07:37', '2022-04-27 05:12:10'),
(15, 'Imelda Fox', '+1 (582) 638-6184', 'hukubyfis@mailinator.com', '19-May-1998', 'Quos irure adipisci', 1, '2022-04-27 05:13:32', '2022-04-27 05:13:48'),
(16, 'Cade Walker', '+1 (712) 414-2004', 'vaqyvaxo@mailinator.com', '16-Jun-2013', 'Dolor ab et omnis pa', 1, '2022-04-27 05:13:41', '2022-04-27 05:13:56'),
(17, 'Ursula Rasmussen', '+1 (798) 249-1785', 'sokat@mailinator.com', '13-Sep-2002', 'Suscipit voluptate a', 1, '2022-05-04 03:28:03', '2022-05-04 03:28:32'),
(18, 'Lisandra Branch', '+1 (522) 343-9571', 'mejuxu@mailinator.com', '27-Apr-2018', 'Sed obcaecati aliqua', 1, '2022-05-24 04:00:42', '2022-05-24 04:00:59'),
(19, 'Tousif Arefin', '01722336655', 'tousifarefin@gmail.com', '08 June 2022 -10:00 AM', 'jaslflghg ljk slgjsafg', 1, '2022-06-02 03:50:59', '2022-06-02 03:51:10'),
(20, 'Xyla Pace', '+1 (247) 875-5988', 'gadido@mailinator.com', '18-Jan-1987', 'Quam illum tempor e', 1, '2022-07-08 04:20:52', '2022-07-08 04:21:10'),
(21, 'Owen Bennett', '+1 (453) 884-2236', 'ruxajoci@mailinator.com', '28-May-1974', 'Autem consequatur p', 1, '2022-08-10 04:44:45', '2022-08-10 04:44:59'),
(22, 'Indigo Sheppard', '+1 (207) 972-7531', 'wyxuh@mailinator.com', '26-Nov-2000', 'Aliqua Ullamco cons', 0, '2022-08-10 04:45:26', '2022-08-10 04:45:26'),
(23, 'Elizabeth Mcfadden', '+1 (257) 462-7648', 'zilenoje@mailinator.com', '05-Feb-1970', 'Quas velit quia esse', 0, '2022-08-11 10:32:21', '2022-08-11 10:32:21');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `sub_title`, `image`, `created_at`, `updated_at`) VALUES
(1, 'We Porvide Best Food In The City', 'Best food update', 'best-food-2022-04-20-.jpg', '2022-04-20 05:22:56', '2022-08-31 14:44:51'),
(2, 'Organic food', 'sadfgasdrgsadf', 'organic-food-2022-04-20-.jpg', '2022-04-20 05:23:25', '2022-04-20 05:23:25'),
(4, 'Best Snaks', 'targdfhgdshdfh', 'best-snaks-2022-04-20-.jpg', '2022-04-20 07:25:22', '2022-04-20 07:25:22'),
(5, 'Best salad', 'we provide best salad', 'best-salad-2022-04-23-.jpg', '2022-04-23 02:51:49', '2022-04-23 02:51:49'),
(6, 'Best Dinner', 'Explicabo Non id v', 'best-dinner-2022-04-24-.jpg', '2022-04-24 12:30:32', '2022-04-24 12:30:32'),
(7, 'best drinks', 'In temporibus invent', 'we-provide-best-drinks-2022-04-24-.jpg', '2022-04-24 12:31:36', '2022-04-24 12:32:28'),
(8, 'bangali food', 'Quisquam eum amet q', 'bangali-food-2022-04-24-.jpg', '2022-04-24 12:33:14', '2022-04-24 12:33:14'),
(9, 'Accusamus et aliquip', 'Veritatis quo do vol Update', 'accusamus-et-aliquip-2022-07-08-.jpg', '2022-07-08 04:15:37', '2022-07-17 09:51:35'),
(10, 'Nostrud ut laudantiu', 'Reprehenderit non s', 'nostrud-ut-laudantiu-2022-08-10-.jpg', '2022-08-10 04:44:10', '2022-08-10 04:44:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$Pvs/BsBGTMmZZ/ibZDgFJuPci8PPLNFJ83sXLYYNjP90XDXpFh0Pm', NULL, '2022-04-19 07:30:36', '2022-04-19 07:30:36');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_category_id_foreign` (`category_id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
