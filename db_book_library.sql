-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2024 at 04:52 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_book_library`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`id`, `user_id`, `group`, `created_at`) VALUES
(1, 1, 'superadmin', '2024-09-20 17:35:21'),
(2, 4, 'admin', '2024-09-20 17:43:55');

-- --------------------------------------------------------

--
-- Table structure for table `auth_identities`
--

CREATE TABLE `auth_identities` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `secret` varchar(255) NOT NULL,
  `secret2` varchar(255) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `extra` text DEFAULT NULL,
  `force_reset` tinyint(1) NOT NULL DEFAULT 0,
  `last_used_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `auth_identities`
--

INSERT INTO `auth_identities` (`id`, `user_id`, `type`, `name`, `secret`, `secret2`, `expires`, `extra`, `force_reset`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'email_password', NULL, 'superadmin@admin.com', '$2y$12$vV5kNnYllxsSp1GPkjar2OTi/tlA3JwmNWV8YVHwBUZai7tw.mf6G', NULL, NULL, 0, '2024-09-20 17:42:57', '2024-09-20 17:35:21', '2024-09-20 17:42:57'),
(2, 4, 'email_password', NULL, 'admin@nandz.my.id', '$2y$12$3KWZOdXEk6drzmlGz0kwI.25fbCo4PAzDtIfwR16m.daNFNOv3v6y', NULL, NULL, 0, '2024-10-09 15:29:19', '2024-09-20 17:43:54', '2024-10-09 15:29:19');

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `id_type` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `user_agent`, `id_type`, `identifier`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', 'email_password', 'superadmin@gmail.com', NULL, '2024-09-20 17:42:34', 0),
(2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', 'email_password', 'superadmin@admin.com', 1, '2024-09-20 17:42:57', 1),
(3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', 'email_password', 'superadmin@admin.com', NULL, '2024-09-21 16:47:05', 0),
(4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', 'email_password', 'admin@nandz.my.id', 4, '2024-09-21 16:47:15', 1),
(5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', 'email_password', 'admin@nandz.my.id', 4, '2024-09-21 18:07:43', 1),
(6, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36 Edg/129.0.0.0', 'email_password', 'admin@nandz.my.id', 4, '2024-09-26 08:32:09', 1),
(7, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36 Edg/129.0.0.0', 'email_password', 'admin@nandz.my.id', 4, '2024-09-26 08:53:54', 1),
(8, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36 Edg/129.0.0.0', 'email_password', 'admin@nandz.my.id', 4, '2024-09-26 11:44:28', 1),
(9, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36 Edg/129.0.0.0', 'email_password', 'admin@nandz.my.id', 4, '2024-09-26 11:53:13', 1),
(10, '::1', 'Mozilla/5.0 (Linux; Android 14; en; Infinix X678B Build/SP1A.210812.016) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.129 HiBrowser/v2.23.1.4 UWS/ Mobile Safari/537.36', 'email_password', 'admin@nandz.my.id', 4, '2024-09-27 15:44:28', 1),
(11, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'email_password', 'nandarsgb@gmail.com', NULL, '2024-09-28 10:35:37', 0),
(12, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'email_password', 'admiN@nandz.my.id', 4, '2024-09-28 10:35:46', 1),
(13, '::1', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'email_password', 'admin@nandz.my.id', 4, '2024-09-28 12:41:17', 1),
(14, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36 Edg/129.0.0.0', 'email_password', 'admin@nandz.my.id', 4, '2024-09-30 12:33:25', 1),
(15, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36 Edg/129.0.0.0', 'email_password', 'admin@nandz.my.id', 4, '2024-10-02 07:33:09', 1),
(16, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36 Edg/129.0.0.0', 'email_password', 'admin@nandz.my.id', 4, '2024-10-02 07:33:10', 1),
(17, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36 Edg/129.0.0.0', 'email_password', 'admin@nandz.my.id', 4, '2024-10-02 07:43:12', 1),
(18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36 Edg/129.0.0.0', 'email_password', 'admin@nandz.my.id', 4, '2024-10-02 16:29:32', 1),
(19, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36 Edg/129.0.0.0', 'email_password', 'admin@nandz.my.id', 4, '2024-10-03 11:27:12', 1),
(20, '::1', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'email_password', 'admin@nandz.my.id', 4, '2024-10-03 11:31:35', 1),
(21, '::1', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'email_password', 'admin@nandz.my.id', 4, '2024-10-03 11:34:09', 1),
(22, '::1', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'email_password', 'nandarsgb@gmail.com', NULL, '2024-10-03 15:25:05', 0),
(23, '::1', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'email_password', 'nandz@ictsemart.my.id', NULL, '2024-10-03 15:25:24', 0),
(24, '::1', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'email_password', 'admin@nandz.my.id', 4, '2024-10-03 15:26:36', 1),
(25, '::1', 'Mozilla/5.0 (Linux; Android 14; TECNO LH7n Build/UP1A.231005.007; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/129.0.6668.70 Mobile Safari/537.36', 'email_password', 'admin@nandz.my.id', 4, '2024-10-07 12:49:35', 1),
(26, '::1', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'email_password', 'admin@nandz.my.id', 4, '2024-10-07 12:50:15', 1),
(27, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36 Edg/129.0.0.0', 'email_password', 'admin@nandz.my.id', NULL, '2024-10-09 15:29:01', 0),
(28, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36 Edg/129.0.0.0', 'email_password', 'admin@nandz.my.id', 4, '2024-10-09 15:29:13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions_users`
--

CREATE TABLE `auth_permissions_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `permission` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_remember_tokens`
--

CREATE TABLE `auth_remember_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_token_logins`
--

CREATE TABLE `auth_token_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `id_type` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(127) NOT NULL,
  `author` varchar(64) NOT NULL,
  `publisher` varchar(64) NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `year` year(4) NOT NULL,
  `rack_id` int(11) UNSIGNED NOT NULL,
  `category_id` int(11) UNSIGNED NOT NULL,
  `book_cover` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `slug`, `title`, `author`, `publisher`, `isbn`, `year`, `rack_id`, `category_id`, `book_cover`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ex-et-non-et85804', 'Ex et non et.', 'Latika Paulin Rahayu S.Sos', 'UD Saragih Tbk', '9,78235E+12', '1974', 7, 5, 'book-1.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(2, 'atque-perspiciatis71837', 'Atque perspiciatis.', 'Leo Permadi', 'CV Ramadan Tbk', '9,79332E+12', '1993', 6, 4, 'book-1.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(3, 'aut-aliquam-enim96829', 'Aut aliquam enim.', 'Almira Febi Zulaika S.IP', 'PD Anggraini', '9,78962E+12', '2014', 10, 2, 'book-7.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(4, 'blanditiis-fuga-sint30824', 'Blanditiis fuga sint.', 'Yono Hadi Widodo', 'CV Simanjuntak', '9,79557E+12', '1995', 3, 3, 'book-6.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(5, 'aut-earum-quibusdam43195', 'Aut earum quibusdam.', 'Anastasia Utami M.Ak', 'UD Sitompul', '9,78609E+12', '1998', 6, 2, 'book-10.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(6, 'seni-bersikap-bodo-amat-598', 'SENI BERSIKAP BODO AMAT', 'Wardaya Winarno', 'UD Lailasari', '1234567891', '1998', 8, 1, 'book-5.jpg', '0000-00-00 00:00:00', '2024-10-03 04:38:59', NULL),
(7, 'voluptatem-culpa-minus-impedit-doloribus80425', 'Voluptatem culpa minus impedit doloribus.', 'Lembah Haryanto', 'Fa Maryadi Tbk', '9,78822E+12', '2022', 6, 3, 'book-8.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(8, 'beatae-praesentium-aliquid71866', 'Beatae praesentium aliquid.', 'Bakda Setiawan M.Kom.', 'CV Kusumo Astuti', '9,79507E+12', '2011', 2, 5, 'book-1.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(9, 'voluptatem-consequuntur-blanditiis-quisquam87584', 'Voluptatem consequuntur blanditiis quisquam.', 'Restu Pudjiastuti S.Gz', 'PD Nuraini', '9,78002E+12', '2024', 3, 3, 'book-10.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(10, 'eius-architecto-nisi-voluptas90958', 'Eius architecto nisi voluptas.', 'Jumari Siregar', 'Yayasan Sinaga Sihotang', '9,78969E+12', '2018', 7, 3, 'book-2.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(11, 'et-consequatur-pariatur97882', 'Et consequatur pariatur.', 'Puti Anggraini', 'Yayasan Lailasari Tbk', '9,79678E+12', '2019', 5, 2, 'book-2.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(12, 'quis-deserunt-optio65339', 'Quis deserunt optio.', 'Eli Safitri', 'PT Waluyo (Persero) Tbk', '9,78756E+12', '1976', 10, 1, 'book-1.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(13, 'aut-sunt-corporis-impedit65653', 'Aut sunt corporis impedit.', 'Gasti Padmasari', 'Perum Maryati Hutapea', '9,79311E+12', '1977', 7, 1, 'book-10.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(14, 'aut-et-mollitia84768', 'Aut et mollitia.', 'Farhunnisa Kusmawati', 'Perum Agustina', '9,78921E+12', '2024', 10, 2, 'book-3.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(15, 'laboriosam-sint-et-similique25482', 'Laboriosam sint et similique.', 'Najam Kemal Waluyo', 'Perum Winarsih Astuti (Persero) Tbk', '9,79468E+12', '1999', 3, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(16, 'quas-minus-aut-quaerat-voluptatem23658', 'Quas minus aut quaerat voluptatem.', 'Laras Pertiwi', 'PT Namaga (Persero) Tbk', '9,78216E+12', '1995', 6, 3, 'book-2.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(17, 'et-et-qui-quibusdam-quam99994', 'Et et qui quibusdam quam.', 'Queen Suartini S.Sos', 'PJ Usamah (Persero) Tbk', '9,78486E+12', '2001', 3, 2, 'book-8.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(18, 'id-vel-facilis-ut-et-quis22059', 'Id vel facilis ut et quis.', 'Joko Pradana S.Psi', 'UD Wastuti Susanti', '9,78438E+12', '2007', 4, 5, 'book-8.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(19, 'et-qui-ipsa-deleniti44754', 'Et qui ipsa deleniti.', 'Farhunnisa Prastuti', 'Fa Simbolon Hardiansyah (Persero) Tbk', '9,79587E+12', '2001', 8, 5, 'book-9.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(20, 'aspernatur-ea-vel-tempore72478', 'Aspernatur ea vel tempore.', 'Gandewa Lamar Suwarno', 'PJ Fujiati', '9,78353E+12', '1996', 4, 2, 'book-2.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(21, 'quo-dolorum-nulla-excepturi-suscipit-aperiam94600', 'Quo dolorum nulla excepturi suscipit aperiam.', 'Cinta Prastuti', 'PD Tamba Usada', '9,79146E+12', '2012', 9, 3, 'book-3.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(22, 'placeat-possimus-qui-cupiditate-magnam26531', 'Placeat possimus qui cupiditate magnam.', 'Jasmin Aryani', 'PD Uwais Pradana', '9,79567E+12', '1985', 10, 4, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(23, 'at-modi-perspiciatis-eos-quidem67510', 'At modi perspiciatis eos quidem.', 'Tari Pertiwi', 'Fa Adriansyah Winarsih (Persero) Tbk', '9,78932E+12', '1983', 2, 5, 'book-2.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(24, 'qui-explicabo-nobis89137', 'Qui explicabo nobis.', 'Balamantri Napitupulu S.Sos', 'UD Sihombing', '9,78525E+12', '2002', 1, 2, 'book-3.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(25, 'quas-enim-quasi-vel-sint88452', 'Quas enim quasi vel sint.', 'Nilam Yuliarti M.TI.', 'PJ Prakasa Gunawan (Persero) Tbk', '9,78128E+12', '2014', 5, 5, 'book-10.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(26, 'iure-quae-unde68590', 'Iure quae unde.', 'Dewi Rahimah', 'Perum Thamrin Aryani Tbk', '9,78106E+12', '1973', 5, 1, 'book-6.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(27, 'inventore-hic-perspiciatis-dolore32287', 'Inventore hic perspiciatis dolore.', 'Tasdik Firgantoro', 'PT Habibi Yuliarti (Persero) Tbk', '9,79526E+12', '1995', 10, 4, 'book-7.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(28, 'ipsum-et-minus81404', 'Ipsum et minus.', 'Ganep Prasetyo', 'Fa Halim (Persero) Tbk', '9,79019E+12', '1995', 7, 2, 'book-5.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(29, 'est-maxime-qui-aperiam-quisquam46992', 'Est maxime qui aperiam quisquam.', 'Laras Puspita', 'UD Laksmiwati', '9,79002E+12', '2002', 9, 2, 'book-2.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(30, 'hic-laudantium-odio-incidunt49427', 'Hic laudantium odio incidunt.', 'Nyana Nainggolan', 'Yayasan Utama Wacana Tbk', '9,79347E+12', '2018', 10, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(31, 'malin-kundang', 'MALIN KUNDANG', 'TITIS ASMARANDANA', 'DUA MEDIA', '1234567895', '2009', 1, 2, '1727321494_9b824c6fc563bae724c0.jpg', '0000-00-00 00:00:00', '2024-09-26 03:33:40', NULL),
(32, 'kumpulan-cerita-rakyat-nusantara', 'KUMPULAN CERITA RAKYAT NUSANTARA', 'YUSTITIA ANGELIA', 'LINTAS MEDIA JOMBANG', '1234567891', '0000', 1, 1, '1727321731_5c48e450c5bd8d881adb.jpg', '0000-00-00 00:00:00', '2024-09-26 03:35:31', NULL),
(34, 'cerita-rakyat-nusantara-576', 'CERITA RAKYAT NUSANTARA ', 'TRIFIA ASTUTI', 'BINTANG INDONESIA JAKARTA', '1234567895', '0000', 1, 4, '1727323074_777b32e8f0838c8e7664.jpg', '0000-00-00 00:00:00', '2024-09-26 03:57:54', NULL),
(35, 'legenda-batu-menangis-306', 'LEGENDA BATU MENANGIS', 'MB RAHIMSYAH. AR', 'BINTANG INDONESIA JAKARTA', '1234567895', '2010', 1, 4, '1727322801_9951a4af9b04e2132dc8.jpg', '0000-00-00 00:00:00', '2024-09-26 03:53:21', NULL),
(36, 'walisongo', 'WALISONGO', 'MB.RAHIMSAH', 'CV.BRINGIN 55', '1234567895', '0000', 1, 5, '1727323263_64cf9953c198316eaf7f.jpg', '0000-00-00 00:00:00', '2024-09-26 04:01:03', NULL),
(37, 'hutan-mangrove', 'HUTAN MANGROVE', 'YULIADI SOEKARDI', 'PT SANDIARTA SUKSES', '1234567895', '2011', 1, 1, '1727323551_9c17e3bee7c64974b5b6.jpg', '0000-00-00 00:00:00', '2024-09-26 04:05:51', NULL),
(38, 'kemuning', 'KEMUNING', 'MARIA A SARDJONO', 'PT GRAMEDIA PUSTAKA UTAMA', '1', '2001', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(39, 'legenda-danau-toba', 'LEGENDA DANAU TOBA', 'TIRA IKRANEGARA', 'BINTANG INDONESIA JAKARTA', '1234567895', '0000', 1, 1, '1727324014_9d179eec4a18a00330c5.jpg', '0000-00-00 00:00:00', '2024-09-26 04:13:34', NULL),
(40, 'roro-jonggrang', 'RORO JONGGRANG', 'GEMAR BACA', 'PAH', '1234567895', '0000', 1, 1, '1727324105_3be78eea7214e85e5fd5.jpg', '0000-00-00 00:00:00', '2024-09-26 04:15:05', NULL),
(43, 'legeda-batu-menangis', 'LEGEDA BATU MENANGIS', 'MB.RAHIMSYAH AR', 'BINTANG INDONESIA JAKARTA', '1123456789', '2010', 1, 6, '1727328021_bafae420bbcef2a9333b.jpg', '0000-00-00 00:00:00', '2024-09-26 05:24:40', NULL),
(48, 'keong-mas-382', 'keong mas ', 'TIRA IKRANEGARA', 'PUSTAKA SANDRO JAYA JAKARTA', '1234567895', '2016', 1, 4, '1727326678_d44928740ebd4a3e6085.jpg', '0000-00-00 00:00:00', '2024-09-26 04:57:58', NULL),
(49, 'timun-mas', 'TIMUN MAS', 'TIRA IKRANEGARA', 'KARYA AGUNG SURABAYA', '12345678922', '2005', 1, 6, '1727328689_ad56d5a7efa53c2eb965.jpg', '0000-00-00 00:00:00', '2024-09-26 05:37:23', NULL),
(50, 'timun-emas-melawan-raksasa', 'TIMUN EMAS MELAWAN RAKSASA', 'OKKIADANA ARDI', 'BINTANG USAHA JAYA', '1234569875', '2013', 1, 1, '1727329843_30ab94c14d777efc6a43.jpg', '0000-00-00 00:00:00', '2024-09-26 05:50:43', NULL),
(51, 'asal-mula-danau-toba', 'ASAL MULA DANAU TOBA', 'YUDHISTIRA IKRANEGARA', 'SANDRO JAYA JAKARTA', '1030120092', '2011', 1, 1, '1727330518_74fd87e7657115561444.jpg', '0000-00-00 00:00:00', '2024-09-26 06:01:58', NULL),
(52, 'sidharta-gautama', 'SIDHARTA GAUTAMA', 'IE SWE CHING', 'PT ELEX MEDIA KOMPUTINDO', '12522456222', '2001', 1, 6, '1727336113_336a31abfb4b7165a344.jpg', '0000-00-00 00:00:00', '2024-09-26 07:35:13', NULL),
(53, 'joko-kendil', 'JOKO KENDIL', 'YUDHISTIRA IKRANEGARA', 'SERBA JAYA SURABAYA', '1300202300', '2022', 1, 1, '1727336227_0099aa6fb8e267c60beb.jpg', '0000-00-00 00:00:00', '2024-09-26 07:37:07', NULL),
(54, 'legenda-gunung-tinggi-raja', 'LEGENDA GUNUNG TINGGI RAJA', 'MB. RAHIMSYAH. AR', 'BINTANG INDONESIA JAKARTA', '12345678899', '0000', 1, 1, '1727336333_0ff199c59cb13501a530.jpg', '0000-00-00 00:00:00', '2024-09-26 07:38:53', NULL),
(56, 'putri-wangi-dari-kertarahayu', 'PUTRI WANGI DARI KERTARAHAYU', 'ATISAH', '', '1', '2008', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(58, 'bawang-merah-bawang-putih', 'BAWANG MERAH BAWANG PUTIH', 'MB. RAHIMSYAH. AR', 'SANDRO JAYA JAKARTA', '1301120083', '0000', 1, 1, '1727331026_740fcb7885e03b16813b.jpg', '0000-00-00 00:00:00', '2024-09-26 06:10:26', NULL),
(59, 'nyi-roro-kidul', 'NYI RORO KIDUL', 'YUDHISTIRA IKRANEGARA', 'SERBA JAYA SURABAYA', '12345697512', '2022', 1, 1, '1727336607_206eee2cea59530d2ce9.jpg', '0000-00-00 00:00:00', '2024-09-26 07:43:27', NULL),
(62, 'asal-mula-candi-borobudur', 'ASAL MULA CANDI BOROBUDUR', 'TIRA IKRANEGARA', 'PUSAKA SANDRO JAYA', '12345689755', '2016', 1, 6, '1727336741_ac055a9bc6c57395fdff.jpg', '0000-00-00 00:00:00', '2024-09-26 07:45:41', NULL),
(64, 'kumpulan-cerita-rakyat', 'KUMPULAN CERITA RAKYAT', 'YUSTITIA ANGELIA', 'LINGKAR MEDIA', '125549856625', '2010', 1, 1, '1727336817_b452882adc34e7409f30.jpg', '0000-00-00 00:00:00', '2024-09-26 07:46:57', NULL),
(65, 'asal-danau-toba', 'ASAL DANAU TOBA', 'JIHAN RAHMA PARVATI', 'SANDRO JAYA JAKARTA', '12345645625', '0000', 1, 1, '1727336925_6ab708043699c6d9f30c.jpeg', '0000-00-00 00:00:00', '2024-09-26 07:48:45', NULL),
(66, 'malin-kundang-si-anak-durhaka', 'MALIN KUNDANG SI ANAK DURHAKA', 'JIHAN RAHMA PARVATI', 'SANDRO JAYA JAKARTA', '1213514652', '0000', 1, 6, '1727337052_0ad4323128319ec469c8.jpg', '0000-00-00 00:00:00', '2024-09-26 07:50:52', NULL),
(67, 'kumpula-nusantara', 'KUMPULA NUSANTARA', 'MB RAHIMSYAH. AR', 'BINTANG INDONESIA JAKARTA', '1234568945', '0000', 1, 6, '1727337172_80b92af5a862d12c8c4b.jpg', '0000-00-00 00:00:00', '2024-09-26 07:52:52', NULL),
(69, 'legendamalin-kundang-si-anak-durhaka', 'LEGENDAMALIN KUNDANG SI ANAK DURHAKA', 'ARYASATYA', 'LINGKAR MEDIA', '12354689422', '0000', 1, 1, '1727337547_8f3d2ba45b21d676d271.jpg', '0000-00-00 00:00:00', '2024-09-26 07:59:07', NULL),
(71, 'batu-menangis', 'BATU MENANGIS', '', 'PUSTAKA SANDRO JAYA JAKARTA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(73, 'ning-rangda', 'NING RANGDA', '', 'PUSTAKA SANDRO JAYA JAKARTA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(75, 'putri-tangguk-', 'PUTRI TANGGUK ', 'AGUS BUDI HERMAWAN', 'PT SANDRO JAYA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(76, 'jayaprana-&-layonsari', 'JAYAPRANA & LAYONSARI', '', 'SANDRO JAYA JAKARTA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(78, 'legenda-malin-kundang-si-anak-durhaka', 'LEGENDA MALIN KUNDANG SI ANAK DURHAKA', 'YUSTITIA ANGELIA', 'BINTANG INDONESIA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(90, 'kumpulan-dongeng-rakyat-nusantara', 'KUMPULAN DONGENG RAKYAT NUSANTARA', 'TIA ANGELIA', 'INSYADUL ANAM', '1', '2004', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(91, 'keong-emas', 'KEONG EMAS', 'YUDHISTIRA IKRANEGARA', 'BINTANG INDONESIA', '1', '2008', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(92, 'legenda-rakyat-jawa-barat-sangkuriang', 'LEGENDA RAKYAT JAWA BARAT SANGKURIANG', 'TIRA IKRANEGARA', 'BINTANG INDONESIA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(94, 'legenda-batu-menangis', 'LEGENDA BATU MENANGIS', 'MB.RAHIMSYAH.AR', 'PUSTAKA SANDRO JAYA', '1', '2016', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(95, 'kisah-perjuangan-wali-songo', 'KISAH PERJUANGAN WALI SONGO', 'MB.RAHIMSYAH.AR', 'PUSAKA SANDRO JAYA', '1', '2016', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(96, 'legenda-keong-emas', 'LEGENDA KEONG EMAS', 'YUDHISTIRA IKRANEGARA', 'SERBA JAYA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(97, 'legenda-nusantara', 'LEGENDA NUSANTARA', 'PUTRI VIRGINA', 'PT BUKU KITA', '1', '2012', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(102, 'ande-ande-lumut', 'ANDE ANDE LUMUT', 'SERI DONGENG', 'PUSTAKA SANDRO JAYA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(103, 'asal-mula-situ-bagendit', 'ASAL MULA SITU BAGENDIT', '', 'SANDRO JAYA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(107, 'kumpulan-kisah-anak-sedunia-terbaik', 'KUMPULAN KISAH ANAK SEDUNIA TERBAIK', 'GIBRAN MAULANA', 'GEMILANG UTAMA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(108, 'dongeng-manca-negara', 'DONGENG MANCA NEGARA', 'YUDHISTIRA-KHID HIDAYAT', 'BINTANG INDONESIA JAKARTA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(109, 'landa-yang-kesepian-', 'LANDA YANG KESEPIAN ', 'AHAMAD FILYAN', 'SERBA JAYA SURABAYA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(110, 'putri-salju', 'PUTRI SALJU', 'JIHAN RAHMA PARVATI', 'PUSTAKA SANDRO JAYA JAKARTA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(111, 'lebah-dan-semut', 'LEBAH DAN SEMUT', 'AHMAD FILYAN', 'SERBA JAYA SURABAYA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(112, 'para-detektif-mungil', 'PARA DETEKTIF MUNGIL', 'CRESSIDA COWELL', 'TSHQ 3CE', '1', '2021', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(113, 'nasi-untuk-kakek', 'NASI UNTUK KAKEK', 'QURROTA AINI', 'PT MIZAN BUNAYA KREATIVA', '1', '2008', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(114, 'lomba-model-cilik-', 'LOMBA MODEL CILIK ', 'DAHAYU ERINNA', 'PT MIZAN PUSTAKA', '1', '2018', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(115, 'jebaka-kucing', 'JEBAKA KUCING', 'RENDRA M RIDWAN', 'PT MIZAN UTAMA', '1', '2016', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(116, 'my-cookies', 'MY COOKIES', 'JESSICA LARISSA', 'PT MIZAN PUSTAKA', '1', '2013', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(117, 'pengganggu-si-kancil', 'PENGGANGGU SI KANCIL', 'SUNDORO', 'PUSTAKA LEBAH', '1', '2005', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(118, 'nyamuk-yang-menakjukkan', 'NYAMUK YANG MENAKJUKKAN', 'AHMAD FILYAN', 'SERBA JAYA SURABAYA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(119, 'kutukan-lumba-lumba', 'KUTUKAN LUMBA LUMBA', 'BETH SWINNERTON', 'PT BENTANG PUSTAKA', '1', '2006', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(120, 'si-kancil', 'SI KANCIL', 'YUDISHTIRA. I', 'KARYA GEMILANG UTAMA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(121, 'hercules', 'HERCULES', 'MB. RAHIMSYAH. AR', 'SANDRO JAYA JAKARTA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(122, 'putri-duyung-dan-dongeng-populer', 'PUTRI DUYUNG DAN DONGENG POPULER', 'TIRA IKRANEGARA', 'PUSTAKA SANDRO JAYA JAKARTA', '1', '2016', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(123, 'petualangan-anjing-dan-ayam', 'PETUALANGAN ANJING DAN AYAM', 'AHMAD FILYAN', 'SERBA JAYA SURABAYA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(124, 'keangkuhan-sang-naga', 'KEANGKUHAN SANG NAGA', 'AHMAD FILYAN', 'SERBA JAYA SURABAYA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(125, 'singa-bersayap', 'SINGA BERSAYAP', 'AHMAD FILYAN', 'SERBA JAYA SURABAYA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(126, 'persahabatan-kucing-dan-tikus', 'PERSAHABATAN KUCING DAN TIKUS', 'AHMAD FILYAN', 'SERBA JAYA SURABAYA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(127, 'burung-onta-dan-kasuari', 'BURUNG ONTA DAN KASUARI', 'AHMAD FILYAN', 'SERBA JAYA SURABAYA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(128, 'akibat-kebohongan-serigala', 'AKIBAT KEBOHONGAN SERIGALA', 'ENDYAS WIGUNA', 'BINTANG INDONESIA JAKARTA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(129, 'durian-runtuh', 'DURIAN RUNTUH', 'KINARA PUTRI', 'SANDRO JAYA JAKARTA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(130, 'nabi-sulaiman-as.', 'NABI SULAIMAN AS.', 'IBNU MUHIDIN', 'BINTANG INDONESIA JAKARTA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(131, 'kumpulan-dongeng-si-kancil', 'KUMPULAN DONGENG SI KANCIL', 'MB RAHIMSYAH. AR', 'DUA MEDIA', '1', '2012', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(132, 'kisah-putri-cinderella', 'KISAH PUTRI CINDERELLA', 'JIHAN RAHMA PARVATI', 'DUA MEDIA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(133, 'kancil-melawan-harimau', 'KANCIL MELAWAN HARIMAU', 'AHMAD FILYAN', 'SERBA JAYA SURABAYA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(134, 'jalan-ke-surga', 'JALAN KE SURGA', 'CHOIRUL ANWAR', 'TIGA SERANGKAI', '1', '2007', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(135, 'kisah-anak-gembala', 'KISAH ANAK GEMBALA', 'DHANY LARITO', 'DAFFAMEDIA JAKARTA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(136, 'kerisauan-uman-bin-khatap', 'KERISAUAN UMAN BIN KHATAP', 'ARESTA', 'PUSTAKA SANDRO JAYA JAKARTA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(137, 'nabi-ayyub-alaihissalam', 'NABI AYYUB ALAIHISSALAM', 'KINARA PUTRI', 'PUSTAKA SANDRO JAYA JAKARTA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(138, 'pinokio', 'PINOKIO', '', 'KARYA GEMILANG UTAMA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(139, 'asyiknya-menjadi-presiden', 'ASYIKNYA MENJADI PRESIDEN', 'RAE SITA PATAPPA', 'TIGA ANANDA SOLO', '1', '2018', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(140, 'paus', 'PAUS', 'KRISNA', 'PUSTAKA SANDRO JAYA JAKARTA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(141, 'kisah-kodok-dan-siput', 'KISAH KODOK DAN SIPUT', 'ANGGA B.S', 'YAYASAN PENGEMBANGAN ANAK INDONESIA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(142, 'nabi-isa-as-', 'NABI ISA AS ', 'KAK RINA NOVIA', 'ZIKRUL KIDS', '1', '2013', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(144, 'nabi-isa-as', 'NABI ISA AS', 'KINARA PUTRI', 'SANDRO JAYA JAKARTA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(145, 'keajaiban-ikhlas', 'KEAJAIBAN IKHLAS', '', 'SANDRO JAYA JAKARTA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(146, 'kisah-bangau-yang-ceroboh', 'KISAH BANGAU YANG CEROBOH', 'WINDA WIDISYANTI', 'SANDRO JAYA JAKARTA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(147, 'kisah-belalang-yang-malas', 'KISAH BELALANG YANG MALAS', 'WINDA WIDISYANTI', 'SANDRO JAYA JAKARTA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(148, 'sapi-dan-kutu', 'SAPI DAN KUTU', '', 'PT GADING INTI PRIMA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(149, 'anak-domba-yang-nakal', 'ANAK DOMBA YANG NAKAL', 'RENATA POHAM', 'PT GADING INTI PRIMA', '1', '2014', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(150, 'loli-anak-tuhan', 'LOLI ANAK TUHAN', 'YULIUS. S.D DAN NONNI MUKIN', 'FIDEI PRESS', '1', '2012', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(152, 'gajah-dan-tikus', 'GAJAH DAN TIKUS', 'ENDYAS WIGUNA', 'BINTANG INDONESIA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(153, 'rusa-yang-senang-memaafkan', 'RUSA YANG SENANG MEMAAFKAN', 'ANGGA B.S', 'YAYASAN PENGEMBANGAN ANAK INDONESIA', '1', '2021', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(154, 'cerita-anak-populer-1', 'CERITA ANAK POPULER 1', 'ANITA', 'AMA', '1', '2008', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(155, 'buaya-perompak', 'BUAYA PEROMPAK', '', 'PUSTAKA SANDRO JAYA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(156, 'si-monyet-&-kura-kura', 'SI MONYET & KURA-KURA', 'FRANSISCO', 'PUSTAKA SANDRO JAYA', '1', '2016', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(158, 'ikan-pari', 'IKAN PARI', 'KINARA PUTRI', 'PUSTAKA SANDRO JAYA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(159, 'superislam', 'SUPERISLAM', 'RANI YULIANTY', 'SYGMA PUBLISHING', '1', '2008', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(160, 'keong-mas-', 'KEONG MAS ', 'TIRA IKRANEGARA', 'PUSTAKA SANDRO JAYA', '1', '2016', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(161, 'kumpulan-cerita-putri', 'KUMPULAN CERITA PUTRI', 'RAMAYANTI & NINA', 'PT GRAMEDIA PUSTAKA UTAMA', '1', '2015', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(162, 'legenda-si-kancil', 'LEGENDA SI KANCIL', 'MB.RAHIMSYAH.AR', 'BINTANG INDONESIA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(164, 'seri-dongeng-binatang', 'SERI DONGENG BINATANG', 'ENDYAS WIGUNA', 'BINTANG INDONESIA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(165, 'batik-yang-paling-indah', 'BATIK YANG PALING INDAH', 'DIAN KRISTIANI', 'PT ASTA ILMU SUKSES', '1', '2019', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(166, 'kisah-abu-nawas', 'KISAH ABU NAWAS', 'MB.RAHIMSYAH.AR', 'SANDRO JAYA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(167, 'mimpi-mimpi-lyra', 'MIMPI-MIMPI LYRA', 'UTAMI ICHDA RAMADHANTY', 'MIZAN MEDIA UTAMA', '1', '2014', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(168, 'magiic-land', 'MAGIIC LAND', 'NABILAH ZULINAR', 'PT LINGKAR PENA KREATIVA', '1', '2011', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(169, 'batu-keramat', 'BATU KERAMAT', 'TITISARI', 'PURI MARGASARI', '1', '2011', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(170, 'nabi-ya\'qub-as.', 'NABI YA\'QUB AS.', 'IBNU MUHIDIN', 'BINTANG INDONESIA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(171, 'raja-parakeet', 'RAJA PARAKEET', '', 'PUSTAKA SANDRO JAYA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(172, 'singa-&-tikus-baik', 'SINGA & TIKUS BAIK', 'CHANDRA IMAM DAUSYAH', 'PUSTAKA SANDRO JAYA', '1', '2016', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(173, 'si-tupai-&-raja-hutan', 'SI TUPAI & RAJA HUTAN', 'CHANDRA IMAM DAUSYAH', 'PUTAKA SANDRO JAYA', '1', '2016', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(174, 'kera-jadi-raja', 'KERA JADI RAJA', '', 'PUSTAKA DAFFA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(175, 'asal-mula-gunung-merapi', 'ASAL MULA GUNUNG MERAPI', 'IMAM KR.MOCOL', 'BINTANG INDONESIA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(176, 'yuki-kucing-kesayanganku', 'YUKI KUCING KESAYANGANKU', 'DR.IRMA YULIANTINA,M.PD.', 'ERLANGGA', '1', '2024', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(179, 'la-zelda\'s-hotel', 'LA ZELDA\'S HOTEL', 'SYAHLA', 'PT MIZAN PUSTAKA', '1', '2014', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(180, '35-higher-than-the-moon', '35 HIGHER THAN THE MOON', 'TITE KUBO', 'GD.KOMPAS GRAMEDIA', '1', '2010', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(181, 'stardust-wink', 'STARDUST WINK', 'NANA HARUTA', 'PT GRAMEDIA PUSTAKA UTAMA', '1', '2017', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(182, 'flowery-kis-in-the-morning', 'FLOWERY KIS IN THE MORNING', 'GOTO MISAKI', 'PT GRAMEDIA PUSTAKA UTAMA', '1', '2017', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(183, 'in-the-name-of-love', 'IN THE NAME OF LOVE', 'KIMI NO NA WO', 'PT GRAMEDIA PUSTAKA UTAMA', '1', '2016', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(184, 'papa-goto', 'PAPA GOTO', ' NAOE KITA', 'PT GRAMEDIA JAKARTA', '1', '2006', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(185, 'first-love-rocket', 'FIRST LOVE ROCKET', 'TAAMO', 'PT GRAMEDIA JAKARTA', '1', '2005', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(186, 'sijuki-seri-jalan-jalan', 'SIJUKI SERI JALAN JALAN', 'FAZA MEONK', 'PT ELEK MEDIA KOMPUTINDO KELOMPOK GRAMEDIA', '1', '2017', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(187, 'meagical-princess', 'MEAGICAL PRINCESS', 'AVINA SALSABILA & PRISKA', 'PT MIZAN MEDIA UTAMA', '1', '2014', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(188, 'frieren', 'FRIEREN', 'KANEHITO YAMADA', 'VIZ MEDIA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(189, 'hantu-dimuseum', 'HANTU DIMUSEUM', 'AHMAD SUFIATUR', 'PT TRANS MEDIA', '1', '2014', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(190, 'kantong-bolong-pak-wong', 'KANTONG BOLONG PAK WONG', 'DWI PUJIASTUTI', 'PT PENERBITAN SARANA BOBO', '1', '2013', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(191, 'rebirth-ragnorak-eps-9', 'REBIRTH RAGNORAK EPS 9', '', 'GRAVITY', '1', '2005', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(192, 'mammothnya-masih-hidup', 'MAMMOTHNYA MASIH HIDUP', 'SHOBICHATUL AMINAH', 'PT ELEX MEDIA KOMPUTINDO', '1', '2009', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(193, 'let\'s-ask-dr.lin', 'LET\'S ASK DR.LIN', 'KIYOKO ARAI', 'PT GRAMEDIA MAJALAH', '1', '2003', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(194, 'islam-agama-penyayang', 'ISLAM AGAMA PENYAYANG', 'ANGGA  PRIATNA DAN ADY KRISTANTO', 'PUSTAKA AL KAUSAR GRUP', '1', '2016', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(195, 'regarding-reincarnated', 'REGARDING REINCARNATED', 'FAIRA AMMADEA', 'PT ALEX MEDIA KOMPUTINDO', '1', '2019', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(196, 'doraemon', 'DORAEMON', 'FUJIKO F FUJIO', 'PT GRAMEDIA JAKARTA', '1', '2017', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(197, 'naruto-vol.42', 'NARUTO VOL.42', 'MASASHI KISHIMOTO', 'PT GRAMEDIA JAKARTA', '1', '2008', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(198, 'naruto-vol.37', 'NARUTO VOL.37', 'MASASHI KISHIMOTO', 'PT GRAMEDIA JAKARTA', '1', '2008', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(199, 'naruto-vol.57', 'NARUTO VOL.57', 'MASASHI KISHIMOTO', 'PT GRAMEDIA JAKARTA', '1', '2012', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(200, 'naruto-vol.50', 'NARUTO VOL.50', 'MASASHI KISHIMOTO', 'PT GRAMEDIA JAKARTA', '1', '2010', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(201, 'naruto-vol.28', 'NARUTO VOL.28', 'MASASHI KISHIMOTO', 'PT GRAMEDIA JAKARTA', '1', '2007', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(202, 'naruto-vol.22', 'NARUTO VOL.22', 'MASASHI KISHIMOTO', 'PT GRAMEDIA JAKARTA', '1', '2006', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(203, 'naruto-vol.49', 'NARUTO VOL.49', 'MASASHI KISHIMOTO', 'PT GRAMEDIA JAKARTA', '1', '2010', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(204, 'naruto-vol.47', 'NARUTO VOL.47', 'MASASHI KISHIMOTO', 'PT GRAMEDIA JAKARTA', '1', '2010', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(205, 'naruto-vol.72', 'NARUTO VOL.72', 'MASASHI KISHIMOTO', 'PT GRAMEDIA JAKARTA', '1', '2016', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(207, 'lil\'sis-please-cook-for-me', 'LIL\'SIS PLEASE COOK FOR ME', 'SHOGAKUKAN', 'PT ELEX MEDIA KOMPUTINDO', '1', '2021', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(208, 'komi-sulit-berkomunikasi', 'KOMI SULIT BERKOMUNIKASI', 'TOMOHITO ODA', 'PT ELEX MEDIA KOMPUTINDO', '1', '2023', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(209, 'spy-x-family', 'SPY X FAMILY', 'TATSUYA ENDO', 'PT ELEX MEDIA KOMPUTINDO', '1', '2020', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(210, 'nepiege', 'NEPIEGE', 'EIICHIRO ODA', 'PT ELEX MEDIA KOMPUTINDO', '1', '2003', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(211, 'crayon-shinchan', 'CRAYON SHINCHAN', 'YOSHITTO USUI', 'PT INDORESTU PACIFIC', '1', '2001', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(214, 'ben-10-alien-force', 'BEN 10 ALIEN FORCE', 'YOHANES', 'PT CITRA SASTRA MEDIA', '1', '2010', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(215, 'eine-kleine', 'EINE KLEINE', 'FETTY', 'PT ELEX MEDIA KOMPUTINDO', '1', '1993', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(216, 'dragonquest', 'DRAGONQUEST', '', 'RAJA WALI GRAFITI', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(217, 'kungfu-kid', 'KUNGFU KID', '', 'RAJA WALI GRAFITI', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(218, 'comic-maple-story', 'COMIC MAPLE STORY', 'SONG DOSU, KIM SING JOONG', 'EDU COMIC', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(219, 'malas-bersih-bersih', 'MALAS BERSIH BERSIH', 'CITRA MUSTIKAWATI', 'MUFFIN GRAPHICS', '1', '2018', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(220, 'kuark', 'KUARK', '', 'KOMIK SAINS', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(221, 'lima-sekawan-pantun-dewa-aneh', 'LIMA SEKAWAN PANTUN DEWA ANEH', 'ENID BLYTON', 'PT GRAMEDIA JAKARTA', '1', '1984', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(222, 'doctor\'s-love', 'DOCTOR\'S LOVE', 'YOSHINO AKI', 'PT TIGA LANCAR SEMESTA', '1', '2011', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(223, 'kure-nai', 'KURE-NAI', 'KENTARO KATAYAMA', 'PT ELEX MEDIA KOMPUTINDO', '1', '2008', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(224, 'yotsuba-&-!', 'YOTSUBA & !', 'KIYOHIKO AZUMA', 'PT ELEX MEDIA KOMPUTINDO', '1', '2003', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(225, 'have-a-good-night', 'HAVE A GOOD NIGHT', 'SAYAKA YAMAZAKI', 'PT ELEX MEDIA KOMPUTINDO', '1', '2010', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(226, 'high-school-debut', 'HIGH SCHOOL DEBUT', 'KAZUNE KAWAHARA', 'PT ELEX MEDIA KOMPUTINDO', '1', '2003', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(227, 'baule-&-bill-ayo-bersenang-senang', 'BAULE & BILL AYO BERSENANG SENANG', 'AHMAD FARHANDI', 'PT ELEX MEDIA KOMPUTINDO', '1', '2010', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(228, 'indonesia-banget-2', 'INDONESIA BANGET 2', 'MUHAMMAD MISRAD', 'PENYALUR BUKU NALAR', '1', '2017', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(229, 'suki-suki-darling', 'SUKI SUKI DARLING', 'SEINO SHIZURU', 'PT GRAMEDIA', '1', '2005', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(230, 'get-up-&-go!', 'GET UP & GO!', 'YOKO SHOJI', 'PT ELEX MEDIA KOMPUTINDO', '1', '1980', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(231, 'the-power-of-doa', 'THE POWER OF DOA', 'ERTHA RIZQINA CAHYANINGPUTRI', 'MIZAN MEDIA UTAMA', '1', '2019', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(232, 'tenda-lovely', 'TENDA LOVELY', 'HAEMIL', 'PT ELEX MEDIA KOMPUTINDO', '1', '2014', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(233, 'lapak-budha', 'LAPAK BUDHA', 'TONY WONG', 'PT. CENTRAL KUMALA SAKTI', '1', '2004', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(234, 'sky-of-love', 'SKY OF LOVE', 'IBUKI HANEDA', 'PT ELEX MEDIA KOMPUTINDO', '1', '2007', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(235, 'slug', 'title', 'author', 'publisher', 'isbn', '0000', 0, 0, 'book_cover', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 'gensosuikoden-2', 'GENSOSUIKODEN 2', 'YU HIJIKATA', 'KONAMI DIGITAL ENTERTAINMENT', '1', '2010', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(238, 'jujutsu-kaisen', 'JUJUTSU KAISEN', 'GEGE UTAMI', 'V12 MEDIA', '1', '2022', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(239, 'paman-gober-terkena-asmara', 'PAMAN GOBER TERKENA ASMARA', '', 'PT GRAMEDIA ', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(240, 'hari-tanpa-ponsel', 'HARI TANPA PONSEL', 'NASWA FAZILA WIDYATI', 'MUFFIN GRAPHICS', '1', '2023', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(241, 'berburu-harta-karun', 'BERBURU HARTA KARUN', '', 'PT GRAMEDIA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(242, 'wright-bersaudara', 'WRIGHT BERSAUDARA', 'LIN JUE HWA', 'PT ELEX MEDIA KOMPUTINDO', '1', '2002', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(243, 'spongebob-squarpants-\"oh-seram\"', 'SPONGEBOB SQUARPANTS \"OH SERAM\"', 'YOHANES', 'KOMIK WARNA', '1', '2008', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(244, 'spongebob-squarpants-\"spongebob-sang-penyelamat\"', 'SPONGEBOB SQUARPANTS \"SPONGEBOB SANG PENYELAMAT\"', 'YOHANES', 'KOMIK WARNA', '1', '2007', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(245, 'shin-kurogashi-vol.9', 'SHIN KUROGASHI VOL.9', 'KUROMARU, TAKESHI NATSUHARA', 'PT GRAMEDIA', '1', '2008', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(246, 'attack-on-titan-15', 'ATTACK ON TITAN 15', 'HAJIME ISAMAYA', 'PT GRAMEDIA', '1', '2014', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(247, 'crayon-shincan-vol.9', 'CRAYON SHINCAN VOL.9', 'YOSHITO USUI', 'PT INDORESTU PACIFIC', '1', '1992', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(248, 'nan-nan\'s-dialy-life', 'NAN NAN\'S DIALY LIFE', 'ANANDA', 'PT GRAMEDIA', '1', '2012', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(249, 'dear-boys', 'DEAR BOYS', 'HIROKI YAGAMI', 'PT MIDAS SURYA GRAFINDO', '1', '1990', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(250, 'detektif-conan', 'DETEKTIF CONAN', 'AOYAMA GOSHO', 'PT GRAMEDIA', '1', '2009', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(252, 'haikyu!!-18', 'HAIKYU!! 18', 'HARUICHI FURUDATE', 'PT GRAMEDIA', '1', '2012', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(253, 'knights-of-apocalypse', 'KNIGHTS OF APOCALYPSE', 'IS YUNIARTO, JHON G R, ASWIN AGASTYA', 'WIND RIDER', '1', '2007', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(254, 'rave-33', 'RAVE 33', 'HIRO MASHIMA', 'PT GRAMEDIA', '1', '2005', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(255, 'flash-girl', 'FLASH GIRL', 'YUKIKO ASANO', 'PT ELEX MEDIA KOMPUTINDO', '1', '2013', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(256, 'sweet-rabu-rabu', 'SWEET RABU RABU', 'YUMI INOGUCHI', 'PT ELEX MEDIA KOMPUTINDO', '1', '1990', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(257, 'garuda-eleven', 'GARUDA ELEVEN', 'SWETA KARTIKA', 'PT ELEX MEDIA KOMPUTINDO', '1', '2021', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(258, 'pembawa-pesan', 'PEMBAWA PESAN', 'LUCKY COMICS', 'PT GRAMEDIA', '1', '2012', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(259, 'rockman-exe', 'ROCKMAN EXE', 'KEIJIMA JUN & ASADA MIHO', 'PT GRAMEDIA', '1', '2009', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(260, 'noragami', 'NORAGAMI', 'AKI SHIMIZU', 'PT ALEX MEDIA KOPUTINDO', '1', '2012', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(262, 'mei-the-servant', 'MEI THE SERVANT', 'ANNISA MUTHIA', 'PT MIZAN PUSTAKA', '1', '2017', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(264, 'kung-fu-boy-36', 'KUNG FU BOY 36', 'TAKESHI MEKAWA', 'KODANSHA,LTD.TOKYO', '1', '1997', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(265, 'with-you-paradise-room', 'WITH YOU PARADISE ROOM', 'AYA ODA', 'DEWASA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(266, 'uroboros-18', 'UROBOROS 18', 'YAYA KANZAKI', 'PT ALEX MEDIA KOPUTINDO', '1', '2016', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(267, 'godhand-teru', 'GODHAND TERU', 'ANITA PRATAMA L.', 'PT ALEX MEDIA KOPUTINDO', '1', '2010', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(268, 'avatar-the-legend-of-aang', 'AVATAR THE LEGEND OF AANG', 'YOHANES', 'KOMIK WARNA', '1', '2007', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(269, 'i-love-you,16-suzuki-kun!!', 'I LOVE YOU,16 SUZUKI KUN!!', 'IKEYAMADA GO', 'PT TIGA LANCAR SEMESTA', '1', '2013', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(270, 'it\'s-tough-for-kobayashi-for-being-so-cute!!', 'IT\'S TOUGH FOR KOBAYASHI FOR BEING SO CUTE!!', 'GO IKEYAMADA', 'PT.TIGA LANCAR SEMESTA', '1', '2016', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(271, 'teens-house-1', 'TEENS HOUSE 1', 'YUU YOSHINAGA', 'PT GRAMEDIA PUSTAKA UTAMA', '1', '2015', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(272, 'preparation-for-love', 'PREPARATION FOR LOVE', 'YAMAZAKI TAKAKO', 'PT GRAMEDIA PUSTAKA UTAMA', '1', '2016', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(273, 'uniform-ferever', 'UNIFORM FEREVER', 'SHIN YUMACHI', 'PT TIGA LANCAR SEMESTA', '1', '2014', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(275, 'jakartamu-jakarta-kita', 'JAKARTAMU JAKARTA KITA', '', 'DINAS KOMUNIKASI, INFORMATIKA DAN KEHUMASAN', '1', '2011', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(276, 'mountain', 'MOUNTAIN', 'HONG JAE-CHEOL', 'PT ALEX MEDIA KOPUTINDO', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(278, 'kung-fu-boy--8', 'KUNG FU BOY  8', 'TAKESHI MEKAWA', 'PT ALEX MEDIA KOPUTINDO', '1', '2001', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(279, 'puberty-pubertas', 'PUBERTY PUBERTAS', 'JEON,JI-EUN', 'PT ALEX MEDIA KOPUTINDO', '1', '2012', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(280, 'gila-dilubang-kubur-ibu', 'GILA DILUBANG KUBUR IBU', 'HIDAYAH', 'MAJALAH MUSLIM', '1', '2005', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(281, 'menyibak-kedasyatan-dzikir', 'MENYIBAK KEDASYATAN DZIKIR', 'UST. MUJADDIDUL ISLAM MAFA', 'LUMBUNG INSANI', '1', '2009', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(282, '7-keajaiban-orangtua', '7 KEAJAIBAN ORANGTUA', 'UST.AL HABSYI', 'HAQIENA MEDIA', '1', '2012', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(283, 'kala-takdir-masih-bisa-diubah', 'KALA TAKDIR MASIH BISA DIUBAH', 'MUHAMMAD HADI BASHORI', 'ZIYASBOOKS', '1', '2022', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(284, 'mimpi-sejuta-rupiah', 'MIMPI SEJUTA RUPIAH', 'ELIE MULYADI', 'PT MIZAN PUSTAKA', '1', '2013', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(285, 'dasyatnya-berkah-bangun-pagi-tahajjud,-shubuh-&-dhuha', 'DASYATNYA BERKAH BANGUN PAGI TAHAJJUD, SHUBUH & DHUHA', 'ABIL QAYS MAARIF', 'FILLAH BOOKS', '1', '2020', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(286, 'nanggroe-aceh-darussalam-hancur-berantakan-dihantam-gelombang-tsunami', 'NANGGROE ACEH DARUSSALAM HANCUR BERANTAKAN DIHANTAM GELOMBANG TSUNAMI', 'RAZALI ABDULAH', 'CV.GULIGA', '1', '2006', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(287, 'kisah-nyata-25-nabi-dan-rasul', 'KISAH NYATA 25 NABI DAN RASUL', 'MB.RAHIMSAH AR', 'WIDYA KARYA SEMARANG', '1', '2015', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(288, 'seni-berbahagia', 'SENI BERBAHAGIA', 'HERMAN ADAMSON', 'PSIKOLOGI CORNER', '1', '2020', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(289, 'doa-doa-mustajab-anak', 'DOA DOA MUSTAJAB ANAK', 'AHMAD KAMIL AL JAUZI', 'ARASKA', '1', '2016', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(290, 'kisah-perjuangan-dan-air-mata-member-jkt-48-n-group', 'KISAH PERJUANGAN DAN AIR MATA MEMBER JKT 48 N GROUP', 'JUNAEDI', 'NUANSA KATA KENANI', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(291, '31-sembab-lemahnya-iman', '31 SEMBAB LEMAHNYA IMAN', 'HUSAIN MUHAMMAD SYAMIR', 'DAR IBNU KHUZAIMAH', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(292, 'sebuah-car-baru-untuk-hidup', 'SEBUAH CAR BARU UNTUK HIDUP', 'JOYCE MEYER', 'YAYASAN TANGAN PENGHARAPAN ', '1', '2012', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(293, 'sabar-&-syukur', 'SABAR & SYUKUR', 'DR.AHMAD', 'DARUL HAQ', '1', '2019', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(294, '5-tarma-manusia-dalam-al-quran-', '5 TARMA MANUSIA DALAM AL QURAN ', 'PROF.DR.H.M.SYASUDDIN,MA', 'BAZNAS', '1', '2021', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(295, 'seni-menghadapi-anak-bandel', 'SENI MENGHADAPI ANAK BANDEL', 'DR.AIMAN', 'PUSTAKA AL KAUSAR GRUP', '1', '2008', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(296, 'mukjizat-ibadah', 'MUKJIZAT IBADAH', 'IBNU ABDULLA', 'PUSTAKA MEDIA PRESS', '1', '2013', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(297, 'kumpulan-puisi-pantun-&-ribahasa', 'KUMPULAN PUISI PANTUN & RIBAHASA', 'DRS.BUDI RAHARJO', 'WIDYA KARYA SEMARANG', '1', '2016', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(298, 'berani-berubah-untukhidup-yang-lebih-baik', 'BERANI BERUBAH UNTUKHIDUP YANG LEBIH BAIK', 'MULASIH TARY & YAZID ATTAFSIR', 'CHECKLIST', '1', '2024', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(299, 'nabi-idris-alaihi-salam', 'NABI IDRIS ALAIHI SALAM', 'KINARA PUTRI', 'SANDRO JAYA JAKARTA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(300, 'kisah-kisah-25-nabi-dan-rasul', 'KISAH KISAH 25 NABI DAN RASUL', 'ALI NURFADHILLAH', 'PUSTAKA SANDRO JAYA JAKARTA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(301, 'hidayah-sebuah-intisari-islam', 'HIDAYAH SEBUAH INTISARI ISLAM', '', '', '1', '2005', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(302, 'aku-senang-mengaji', 'AKU SENANG MENGAJI', 'LENI ARYANI', 'BINTANG INDONESIA JAKARTA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(303, 'beginikah-sakaratul-maut', 'BEGINIKAH SAKARATUL MAUT', 'DENI SULTAN BAHTIAR', 'DIVA PRESS', '1', '2008', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(304, 'kisah-teladan-25-nabi-dan-rasul', 'KISAH TELADAN 25 NABI DAN RASUL', 'MB. RAHIMSYAH. AR', 'BINTANG USAHA JAYA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(305, 'alkisah', 'ALKISAH', '', 'CV ASY SYIFA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(306, 'sejarah-singkat-kh.-a.-wahid-hasim', 'SEJARAH SINGKAT KH. A. WAHID HASIM', '', 'PANITIA SATU ABAD', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(309, 'asmaul-husna', 'ASMAUL HUSNA', 'LIA FITRIANI. S. PD', 'PUSTAKA SANDRO JAYA', '1', '2010', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(310, 'how-to-raise-the-next-genius', 'HOW TO RAISE THE NEXT GENIUS', '', '', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(311, 'kisah-teladan-25-nabis-&-rasul', 'KISAH TELADAN 25 NABIS & RASUL', 'MB. RAHIMSYAH. AR', 'SINAR KEMALA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(312, 'hi-travelers', 'HI TRAVELERS', 'GEORGE GULING', 'LAKSANA', '1', '2013', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(313, 'kiat-kiat-untuk-tetap-istiqamah', 'KIAT-KIAT UNTUK TETAP ISTIQAMAH', 'DR.AHMAD BIN ABDURRAHMAN AL-QADHI', 'DARUL HAQ', '1', '2016', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(314, 'perjalanan-ruh-setelah-mati', 'PERJALANAN RUH SETELAH MATI', 'KHALID BIN ABDURRAHMAN ASY-SYAYI\'', 'DARUL HAQ', '1', '2016', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(315, 'dajjal-tanda-turunnya-imam-mahdi', 'DAJJAL TANDA TURUNNYA IMAM MAHDI', 'S.TABRANI', 'BINTANG INDONESIA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(316, 'be-calm-be-strong-be-grateful', 'BE CALM BE STRONG BE GRATEFUL', 'WIRDA MANSUR', 'PERUM EXECUTIVE VILLAGE E9', '1', '2017', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(317, 'menangislah!-sebagaimana-rasullah-dan-para-sahabat-menangis', 'MENANGISLAH! SEBAGAIMANA RASULLAH DAN PARA SAHABAT MENANGIS', 'KHUMAIS AS-SA\'ID', 'PUSTAKA IBNU KATSIR', '1', '2002', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(318, 'mimpi-dan-penglihatan', 'MIMPI DAN PENGLIHATAN', 'GRAHAM FITZPATRICK', 'NAFIRI GABRIEL', '1', '1991', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(319, 'a-man-called', 'A MAN CALLED', 'KURAWA', 'KURAWA.BOOK1000', '1', '2016', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(320, 'asy-syafi\'i', 'ASY-SYAFI\'I', 'ABUL AFNAN AIMAN ABDILLAH,LC', 'PUSTAKA IMAM ASY\'SYAFI\'I', '1', '2014', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(321, '65-dongeng-penuh-hikmah-&-teladan-untuk-anak-muslim', '65 DONGENG PENUH HIKMAH & TELADAN UNTUK ANAK MUSLIM', 'MB.RAHIMSYAH.AR', 'SANDRO JAYA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(323, 'pandai-baca,tulis,&tahfiz-al-qur\'an', 'PANDAI BACA,TULIS,&TAHFIZ AL-QUR\'AN', 'H.ABD.ROSYID,DKK', 'ERLANGGA', '1', '2002', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(324, 'gibran-dirgantara', 'GIBRAN DIRGANTARA', 'falistiyana', 'PT CAHAYA DUABELAS SEMESTA', '1', '2021', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(325, 'mariposa', 'MARIPOSA', 'LULUK H.F', 'PT BUMI SEMESTA MEDIA ', '1', '2018', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(326, 'katak-hendak-jadi-lembu', 'KATAK HENDAK JADI LEMBU', 'NUR ST. ISKANDAR', 'BALAI PUSTAKA', '1', '2008', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `books` (`id`, `slug`, `title`, `author`, `publisher`, `isbn`, `year`, `rack_id`, `category_id`, `book_cover`, `created_at`, `updated_at`, `deleted_at`) VALUES
(327, 'diary-of-a-wimpy-kid', 'DIARY OF A WIMPY KID', 'JEFF KINNEY', 'PUFFIN', '1', '2007', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(328, 'winter-in-tokyo', 'WINTER IN TOKYO', 'ILANATAN', 'PT. GRAMEDIA PUSTAKA UTAMA', '1', '2008', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(329, '19-letters-beautiful-flowers', '19 LETTERS BEAUTIFUL FLOWERS', 'DINDA UNAROMA', '19 BOOKS', '1', '2019', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(330, 'bts-diary', 'BTS DIARY', 'BTS INDONESIA ARMY', 'HIRAKU PUBLISHING', '1', '2018', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(331, 'albiandra', 'ALBIANDRA', 'MICHEL NF', 'PT TEKAD MEDIA CAKRAWALA', '1', '2023', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(332, 'jamet-circle', 'JAMET CIRCLE', 'EHLIJA', 'PT AKAD MEDIA CAKRAWALA', '1', '2023', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(333, 'romansa-dan-putih-abu-abu', 'ROMANSA DAN PUTIH ABU ABU', 'WINDI SULISTRIANI', 'PT SEMBILAN CAHAYA ABADI', '1', '2023', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(334, 'reano', 'REANO', 'SABRINA FEBRIANTI', 'CLOUD BOOKS', '1', '2020', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(335, 'santri-ilihan-bunda', 'SANTRI ILIHAN BUNDA', 'SALSYABILA FALENSIA', 'CLOUD BOOKS', '1', '2021', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(336, 'third-party', 'THIRD PARTY', 'LUNA TORASHYNGU', 'PT GRAMEDIA PUSTAKA UTAMA', '1', '2016', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(337, 'dilan-1990', 'DILAN 1990', 'PIDI BAIQ', 'PT MIZAN PUSTAKA', '1', '2015', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(338, 'make-friend', 'MAKE FRIEND', 'UMI AKHIRI FANANIE', 'MASMEDIA BUANA PUSTAKA ', '1', '2008', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(339, 'gadis-tanpa-nama', 'GADIS TANPA NAMA', 'MARINA CHAPMAN', 'PT SRAMBI ILMU SEMESTA', '1', '2016', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(340, 'parable', 'PARABLE', 'BRIAN KRISNA', 'MEDIAKITA', '1', '2021', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(341, 'skaya-and-the-big-boss', 'SKAYA AND THE BIG BOSS', 'MARSELLA TINA', 'PT AKAD MEDIA CAKRAWALA', '1', '2022', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(343, 'petualangan-si-adit', 'PETUALANGAN SI ADIT', 'MUHAMMAD SYAFIQ AL FARISI', 'CERIVITAS BOOKS', '1', '2019', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(344, 'melted', 'MELTED', 'MAYAGNG AENI', 'PT BENTANG PUSTAKA', '1', '2017', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(345, 'mereka-ada', 'MEREKA ADA', 'MWV MYSTIC', 'PT SEMBILAN CAHAYA ABADI', '1', '2019', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(346, 'papadan', 'PAPADAN', 'RAVINKYU', 'PT SEMBILAN CAHAYA ABADI', '1', '2022', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(348, 'mereka-ada-2', 'MEREKA ADA 2', 'MWV MYSTIC', 'PT SEMBILAN CAHAYA ABADI', '1', '2021', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(349, 'dikta-&-hukum', 'DIKTA & HUKUM', 'DHIA \' AN FARAH', 'PT SEMBILAN CAHAYA ABADI', '1', '2021', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(350, 'mengatasi-masalah-besar-dalam-hidup', 'MENGATASI MASALAH BESAR DALAM HIDUP', 'RICHARD CARLSON', 'PT GRAMEDIA PUSTAKA UTAMA', '1', '2004', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(351, 'rentang-kisah', 'RENTANG KISAH', 'GITA SAVITRI DEVI', 'GAGAS MEDIA', '1', '2017', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(352, 'holy-mother', 'HOLY MOTHER', 'AKIYOSHI RIKAKO', 'HARU', '1', '2016', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(353, 'aku-tahu-kapan-kamu-mati', 'AKU TAHU KAPAN KAMU MATI', 'ARUMI E', 'PT SEMBILAN CAHAYA ABADI', '1', '2019', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(354, 'edenson', 'EDENSON', 'ANDREA HIRATA', 'PT BENTANG PUSTAKA', '1', '2007', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(355, 'kepada-mu-aku-berserah', 'KEPADA-MU AKU BERSERAH', 'SONY ADE', 'PT MIZAN PUBLIKA', '1', '2007', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(356, 'anak-kos-dodol-bareng-konco', 'ANAK KOS DODOL BARENG KONCO', 'DEWI RIEKA', 'PT GRAMEDIA MEDIA UTAMA', '1', '2010', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(357, 'harapan-dalam-kenangan', 'HARAPAN DALAM KENANGAN', 'JEE', 'RUMAH ORANYE', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(358, 'aileen-&-regan', 'AILEEN & REGAN', 'NUZILNA RAHMA', 'CLOUD BOOKS', '1', '2021', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(359, 'sahabat-tanpa-cinta-', 'SAHABAT TANPA CINTA ', 'ARINY NH', 'SKYLAY BOOKS', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(360, 'santri-pilihan-bunda-', 'SANTRI PILIHAN BUNDA ', 'SALSYABILA FALENSIA', 'CLOUD BOOKS', '1', '2021', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(361, 'memahami-diri-senidiri', 'MEMAHAMI DIRI SENIDIRI', 'SOFIA ALVIZHIE', 'CHECKLIST', '1', '2020', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(362, 'eccedentesiast', 'ECCEDENTESIAST', 'ITAKRN', 'PT AKAD MEDIA CAKRAWALA', '1', '2022', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(363, 'zauri-legenda-sang-amigdalus', 'ZAURI LEGENDA SANG AMIGDALUS', 'MIRA RAINAYATI', 'PT GRASINDO', '1', '2006', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(364, 'defeated-by-love', 'DEFEATED BY LOVE', 'GHINA NAUVALIA', 'PT BENTANG PUSTAKA', '1', '2017', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(365, 'rindu-ayah', 'RINDU AYAH', 'KOLABORASI 24 PENULIS', 'ZETTU', '1', '2013', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(366, 'sebuah-seni-untuk-bersikap-bodo-amat', 'SEBUAH SENI UNTUK BERSIKAP BODO AMAT', 'MARK MANSON', 'PT GRAMEDIA WIDIASARANA INDONESIA', '1', '2018', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(367, 'the-hunger-games-catching-fire', 'THE HUNGER GAMES CATCHING FIRE', 'SUZANNE', 'PT GRAMEDIA PUSTAKA UTAMA', '1', '2010', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(368, 'ikhlas-paling-serius', 'IKHLAS PALING SERIUS', 'FAJAR SULAIMAN', 'PT TRANS MEDIA', '1', '2022', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(369, 'hilmy-milan', 'HILMY MILAN', 'NADIA RISTIVANI', 'PT BUKUNE KREATIF', '1', '2022', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(370, 'lengking-kematian-', 'LENGKING KEMATIAN ', 'MERLINA LIN & IRA PUTRI BAHATI', 'MOKA MEDIA', '1', '2018', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(371, 'nagabonar', 'NAGABONAR', 'AKMAL', 'PT ANDAL KRIDA NUSANTARA', '1', '2007', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(372, 'perahu-kertas', 'PERAHU KERTAS', '', 'PT BENTANG PUSTAKA', '1', '2009', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(373, 'merantau-ke-deli', 'MERANTAU KE DELI', 'PROF. DR. HAMKA', 'BULAN BINTANG 1977', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(374, 'nanti-juga-sembuh-sendiri', 'NANTI JUGA SEMBUH SENDIRI', 'HELO BAGAS', 'GRADIEN MEDIATAMA', '1', '2023', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(375, 'the-magician\'s-nephew', 'THE MAGICIAN\'S NEPHEW', 'C.S LEWIS', 'GRAMEDIA PUSTAKA UTAMA', '1', '2022', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(376, 'sandra-brown', 'SANDRA BROWN', 'REUNI', 'PT GRAMEDIA PUSTAKA UTAMA', '1', '2005', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(377, 'empat-cinta-menatap-opera', 'EMPAT CINTA MENATAP OPERA', 'ZHEITTA VAZZA DEVI', 'PT GRASINDO', '1', '2006', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(379, 'negeri-para-bedebah', 'NEGERI PARA BEDEBAH', 'TERE LIYE', 'PT GRAMEDIA PUSTAKA UTAMA', '1', '2012', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(380, 'bagaimana-memulai-percakapan-dan-menjalin-persahabatan', 'BAGAIMANA MEMULAI PERCAKAPAN DAN MENJALIN PERSAHABATAN', 'DON GABOR', 'PT CAHAYA INSAN SUCI', '1', '2008', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(381, 'aku-mencintai-mu-dalam-diam', 'AKU MENCINTAI MU DALAM DIAM', 'PENA KECIL', 'TRANS MEDIA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(382, 'sunyaruri', 'SUNYARURI', 'RISA SARASWATI', 'RAK BUKU', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(383, 'rindu-', 'RINDU ', 'TERE LIYE', 'PT REPUBLIKA PENERBIT', '1', '2014', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(384, 'ketika-cinta-bertasbih', 'KETIKA CINTA BERTASBIH', 'HABIBURRAHMAN ELSHIRAZY', 'PENERBIT REPUBLIKA', '1', '2008', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(385, 'laskar-pelangi', 'LASKAR PELANGI', 'ANDREA HIRATA', 'MIZAN MEDIA UTAMA', '1', '2015', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(386, 'galaksi', 'GALAKSI', 'RAVISPA', 'COCONUT BOOKS', '1', '2019', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(387, 'marveluna-let\'s-fly-together', 'MARVELUNA LET\'S FLY TOGETHER', 'ITA KRN', 'AKAD', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(388, 'the-true-story-of-ah-q', 'THE TRUE STORY OF AH Q', 'LU HSUM', 'DIVA PRESS', '1', '2020', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(389, 'a-most-wanted-man', 'A MOST WANTED MAN', 'JOHN LE CARRE', 'NOURA BOOKS', '1', '2014', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(390, 'limit', 'LIMIT', 'TRIANO RETNO', 'PT GRAMEDIA JAKARTA', '1', '2014', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(392, 'life-is-so-simple-guys!', 'LIFE IS SO SIMPLE GUYS!', 'SERUNI NARESWARI', 'CEMERLANG PUBLISHING', '1', '2020', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(393, 'puncak-ilmu-adalah-akhlak', 'PUNCAK ILMU ADALAH AKHLAK', 'MHD.ROIS ALMAUDUDY', 'SYALMAHAT PUBLISHING ', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(394, 'yang-semangat-yang-bertahan-', 'YANG SEMANGAT YANG BERTAHAN ', 'Y.SUGIYANTO', 'KOSA KATA KITA', '1', '2014', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(395, 'cepat-dan-mudah-lancar-public-speaking-', 'CEPAT DAN MUDAH LANCAR PUBLIC SPEAKING ', 'ABA MEHMED AGHA', 'CHECKLIST', '1', '2023', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(396, 'bukan-salah-hujan', 'BUKAN SALAH HUJAN', 'UMMUCHAN', 'PT GRAMEDIA WIDIASARANA INDONESIA', '1', '2018', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(397, 'akatsuki!!-otokojuku', 'AKATSUKI!! OTOKOJUKU', 'MIYASHITA AKIRA', 'BZ COMIC', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(398, 'hwaiting!', 'HWAITING!', 'MUTHIA FADHILA KHAIRUNNISA', 'PT MIZAN PUSTAKA', '1', '2019', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(399, 'ai-badung-jadi-pengawas', 'AI BADUNG JADI PENGAWAS', 'ENID BLYTON', 'PT GRAMEDIA PUSTAKA UTAMA', '1', '1983', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(400, 'osis-girl-&-troublemaker', 'OSIS GIRL & TROUBLEMAKER', 'AQILAH TISALSABILAH', 'PT BUMI SEMESTA MEDIA', '1', '2017', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(401, 'septihan', 'SEPTIHAN', 'POPPI PERTIWI', 'PT BUMI SEMESTA MEDIA', '1', '2020', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(402, 'gola-gong', 'GOLA GONG', 'GOLA GONG', 'DAR MIZAN', '1', '2001', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(403, 'perfect-couple', 'PERFECT COUPLE', 'ASRI ACI', 'PT BENTANG PUSTAKA', '1', '2017', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(404, 'kenangan-dalam-puisi', 'KENANGAN DALAM PUISI', 'AHMAD RIZKI RAMADHAN', 'EFDE MEDIA', '1', '2018', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(405, '172-days', '172 DAYS', 'NADZIRA SHAFA', 'MOTIVAKSI INSPIRA', '1', '2022', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(406, 'beauty-and-the-beast', 'BEAUTY AND THE BEAST', 'MADAME DE VILLENEUVE', 'PT MIZAN PUSTAKA', '1', '2017', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(407, '4-masa-1-mimpi', '4 MASA 1 MIMPI', 'AGAM FACHRUL & WAHYUDI PRATAMA', 'PT AKAD MEDIA CAKRAWALA', '1', '2023', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(408, 'kambing-uatan', 'KAMBING UATAN', 'RADITYA DIKA', 'GAGASMEDIA', '1', '2005', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(409, 'permainan-maut', 'PERMAINAN MAUT', 'JOHAN SERIES', 'PT GRAMEDIA PUSTAKA UTAMA', '1', '2017', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(410, 'your-dreams', 'YOUR DREAMS', 'AHMAD MULYADI,S.P.D', 'SMP LABSCHOOL JAKARTA', '1', '2017', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(411, 'ayah', 'AYAH', 'ANDREA HIRATA', 'PT BENTANG PUSTAKA', '1', '2015', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(412, 'aku-&-cintaku', 'AKU & CINTAKU', 'ADISURYA ABDY', 'ALIF GEMILANG PRESSINDO', '1', '2022', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(413, 'mahen-algrafa', 'MAHEN ALGRAFA', 'KUSDINA AIN', 'RAINBOOKS', '1', '2023', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(414, 'orang-ketiga', 'ORANG KETIGA', 'YUDITHA HARDINI', 'GAGASMEDIA', '1', '2010', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(415, 'rewrite-my-heart', 'REWRITE MY HEART', 'ESTERSPY', 'PT AKAD MEDIA CAKRAWALA', '1', '2023', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(416, 'jun!!!', 'JUN!!!', 'MIA ARSJAD', 'PT GRAMEDIA PUSTAKA UTAMA', '1', '2012', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(417, 'the-bfg', 'THE BFG', 'JONATHAN', 'AMBLIN ENTERTAINMENT', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(418, 'dari-kabut', 'DARI KABUT', 'JANA CHIRISTY', 'PT GRAMEDIA PUSTAKA UTAMA', '1', '2016', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(419, 'rajewali', 'RAJEWALI', 'MICHEL NF', 'PT SEMBILAN CAHAYA ABADI', '1', '2022', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(420, 'peka', 'PEKA', 'IDA AYU SARASWATI', 'PT GRAMEDIA JAKARTA', '1', '2018', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(421, 'padang-bulan', 'PADANG BULAN', 'ANDREA HIRATA', 'BENTANG', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(422, 'ketika-aku-tak-tahu-apa-yang-aku-inginkan', 'KETIKA AKU TAK TAHU APA YANG AKU INGINKAN', 'JEON SEUNGHWAN', 'PT GRAMEDIA PUSTAKA UTAMA', '1', '2021', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(423, 'danur', 'DANUR', 'RISA SARASWATI', 'BUKUNE', '1', '2017', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(424, 'ramayana', 'RAMAYANA', 'WAWAN SUSETYA', 'PENERBIT NARASI', '1', '2008', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(425, 'camar-biru', 'CAMAR BIRU', 'NILAM SURI', 'GAGASMEDIA', '1', '2012', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(426, 'dijodohin', 'DIJODOHIN', 'ARINIIMANDASARI', 'CLOUDBOOKS', '1', '2021', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(428, 'trio-detektif', 'TRIO DETEKTIF', 'PETER LERANGIS', 'PT GRAMEDIA PUSTAKA UTAMA', '1', '1996', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(429, 'zero-zero', '00.00', 'AMEYLIA FALENSIA', 'PT SEMBILAN CAHAYA ABADI', '1', '2021', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(430, 'aku-ingin-menikah-tapi?', 'AKU INGIN MENIKAH TAPI?', 'AI HARKAN', 'INSAN CEMERLANG', '1', '2005', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(431, 'senja,hujan,&cerita-yang-telah-usai', 'SENJA,HUJAN,&CERITA YANG TELAH USAI', 'BOY CANDRA', 'MEDIAKITA', '1', '2015', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(432, 'aku-banyak-lukanya', 'AKU BANYAK LUKANYA', 'LULUX ROFIATUL FAIDAH', 'KOPIOPPI', '1', '2021', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(433, 'aku-sedang-benar-benar-berproses', 'AKU SEDANG BENAR-BENAR BERPROSES', 'ENDRA EL-FAEYZA', 'BUKU BAKLU', '1', '2023', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(434, 'kekasih-impian', 'KEKASIH IMPIAN', 'WARDAH MAULINA', 'PT FALCON', '1', '2019', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(435, 'ipa-&-ips', 'IPA & IPS', 'CHACHAII_', 'COCONUT BOOKS', '1', '2017', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(436, 'indonesia-2009', 'INDONESIA 2009', 'AHMAD BAHAR', 'PENA MULTI MEDIA ', '1', '2009', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(437, 'sales-&-operations-planning-in-stories', 'Sales & Operations Planning in Stories', 'Martoyo', 'PT Tosca Jaya Indonesia', '1', '2019', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(438, 'jago-kuasai-bahasa-jepang', 'jago kuasai bahasa jepang', 'aditya r saputra s.s', ' PUSTAKA BARU PRESS', '1', '2023', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(439, 'penuntun-da\'wah-membina-mental-mu\'min', 'PENUNTUN DA\'WAH MEMBINA MENTAL MU\'MIN', 'TERBIT TERANG', 'TERBIT TERANG SURABAYA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(440, 'indonesian-mental-health', 'INDONESIAN MENTAL HEALTH', 'DR. SANDERSAN ONIE', 'PT. MEDIA KOMPAS NUSANTARA', '1', '2021', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(441, 'rpal-rangkuman-pengetahuan-alam-lengkap-global', 'RPAL RANGKUMAN PENGETAHUAN ALAM LENGKAP GLOBAL', 'IR. SURYANTO TABRANI, MM', 'BINTANG INDONESIA JAKARTA', '1', '0000', 1, 1, 'book-4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(442, 'tuhan-maaf-aku-kurang-bersyukur-439', 'TUHAN, MAAF AKU KURANG BERSYUKUR', 'MALIK AL MUGHIS', 'SYALMAHAT', '1234567895', '0000', 1, 1, '1727326144_6eaafb96b82e4e7c1574.jpg', '2024-09-26 04:49:04', '2024-09-26 04:49:04', NULL),
(443, 'ullam-cupiditate-qui24368', 'Ullam cupiditate qui.', 'Farah Mutia Suryatmi S.Pd', 'Fa Manullang', '9793869043158', '2011', 2, 2, 'book-4.jpg', '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(444, 'dolore-veniam-voluptas-quia61211', 'Dolore veniam voluptas quia.', 'Darsirah Manullang', 'UD Mangunsong (Persero) Tbk', '9780704272545', '1990', 6, 3, 'book-3.jpg', '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(445, 'et-laudantium-et-repudiandae-dolor-maxime59337', 'Et laudantium et repudiandae dolor maxime.', 'Vera Amelia Wahyuni', 'CV Safitri Mardhiyah', '9784561067993', '1998', 9, 5, 'book-8.jpg', '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(446, 'quia-harum-ut-soluta48129', 'Quia harum ut soluta.', 'Dewi Hani Sudiati S.Psi', 'CV Latupono Maryadi Tbk', '9784782866627', '1984', 9, 3, 'book-4.jpg', '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(447, 'possimus-cum-cumque-accusantium44790', 'Possimus cum cumque accusantium.', 'Martana Mangunsong S.Ked', 'PT Lazuardi Agustina (Persero) Tbk', '9787293079784', '2012', 8, 2, 'book-9.jpg', '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(448, 'omnis-est-atque-magni-omnis37731', 'Omnis est atque magni omnis.', 'Darmana Jono Hakim S.Gz', 'Perum Permata Saragih', '9780951707173', '2009', 7, 3, 'book-2.jpg', '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(449, 'ea-aut-eos71890', 'Ea aut eos.', 'Luwar Cawisono Sinaga S.E.I', 'Yayasan Palastri Santoso', '9780701912864', '1975', 6, 3, 'book-9.jpg', '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(450, 'ab-consequatur-similique-qui39272', 'Ab consequatur similique qui.', 'Gadang Latupono S.Gz', 'Perum Kurniawan (Persero) Tbk', '9781819504255', '2009', 2, 4, 'book-1.jpg', '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(451, 'impedit-nihil-nam67425', 'Impedit nihil nam.', 'Prima Sihombing S.H.', 'PT Hutapea Tbk', '9799724842843', '2022', 5, 2, 'book-2.jpg', '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(452, 'est-quos-deleniti68850', 'Est quos deleniti.', 'Elvina Nasyiah', 'PJ Widodo Sitompul Tbk', '9792132976476', '1992', 7, 1, 'book-9.jpg', '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(453, 'quae-quis44469', 'Quae quis.', 'Citra Karen Usamah', 'Fa Prasasta', '9780982173305', '1996', 10, 4, 'book-8.jpg', '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(454, 'assumenda-sed-cupiditate-sed-aut-autem81470', 'Assumenda sed cupiditate sed aut autem.', 'Balamantri Vinsen Wibowo', 'Yayasan Wasita Suartini', '9781493200122', '1990', 6, 1, 'book-5.jpg', '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(455, 'vel-error-totam-eum-itaque-dolorum27147', 'Vel error totam eum itaque dolorum.', 'Prima Ramadan M.Ak', 'UD Laksmiwati Tbk', '9795859626365', '1986', 8, 1, 'book-2.jpg', '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(456, 'qui-provident-quae-porro-et85414', 'Qui provident quae porro et.', 'Patricia Zulaika', 'UD Mardhiyah', '9788984426887', '1975', 5, 4, 'book-10.jpg', '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(457, 'accusamus-a-error-rerum67726', 'Accusamus a error rerum.', 'Rina Fitriani Hartati S.Farm', 'CV Rahimah Wacana', '9792647388504', '2007', 1, 3, 'book-7.jpg', '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(458, 'qui-dolor-accusantium56786', 'Qui dolor accusantium.', 'Hartaka Maryadi M.Ak', 'UD Siregar (Persero) Tbk', '9780255974585', '1987', 1, 3, 'book-9.jpg', '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(459, 'atque-et-earum28566', 'Atque et earum.', 'Artanto Winarno', 'Perum Putra Saptono Tbk', '9794358610875', '2008', 4, 2, 'book-8.jpg', '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(460, 'pariatur-reprehenderit-suscipit-odit52042', 'Pariatur reprehenderit suscipit odit.', 'Luis Budiyanto', 'Fa Mayasari', '9784095229379', '2022', 5, 5, 'book-5.jpg', '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(461, 'accusantium-dolor-rerum19389', 'Accusantium dolor rerum.', 'Balamantri Kusumo', 'CV Purnawati Prasasta', '9791772389332', '1976', 2, 1, 'book-7.jpg', '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(462, 'maxime-adipisci-et43283', 'Maxime adipisci et.', 'Hilda Lestari', 'Fa Waskita Tbk', '9782170690373', '1999', 1, 2, 'book-2.jpg', '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(463, 'nisi-aliquam-facilis-et-incidunt-sapiente43951', 'Nisi aliquam facilis et incidunt sapiente.', 'Ira Usyi Winarsih M.Ak', 'Perum Maulana Tbk', '9796747741542', '1970', 3, 3, 'book-8.jpg', '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(464, 'ut-laboriosam-asperiores36522', 'Ut laboriosam asperiores.', 'Artawan Habibi', 'PT Pratama', '9792469840655', '1988', 2, 5, 'book-10.jpg', '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(465, 'fuga-dignissimos-unde54559', 'Fuga dignissimos unde.', 'Wisnu Lazuardi', 'PD Melani Marbun', '9793348729221', '1970', 8, 5, 'book-5.jpg', '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(466, 'porro-amet-maiores-ut65474', 'Porro amet maiores ut.', 'Maimunah Riyanti', 'Fa Yolanda Tbk', '9785717792332', '1971', 3, 5, 'book-10.jpg', '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(467, 'odio-aut-dolor78510', 'Odio aut dolor.', 'Patricia Fujiati', 'PT Prastuti', '9781313722919', '2016', 2, 1, 'book-1.jpg', '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(468, 'velit-minus-debitis44132', 'Velit minus debitis.', 'Kemal Adika Tampubolon M.M.', 'PD Oktaviani', '9798657171518', '2023', 4, 2, 'book-3.jpg', '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(469, 'ut-rerum-tempora89727', 'Ut rerum tempora.', 'Dewi Hasanah', 'Yayasan Rahayu', '9780111471890', '1970', 5, 5, 'book-4.jpg', '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(470, 'velit-totam55659', 'Velit totam.', 'Imam Sitorus M.Pd', 'PT Prastuti (Persero) Tbk', '9791327421401', '1971', 2, 4, 'book-3.jpg', '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(471, 'eum-itaque-quia-quae66155', 'Eum itaque quia quae.', 'Ani Farida', 'Fa Palastri Tbk', '9792258469630', '1988', 6, 5, 'book-3.jpg', '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(472, 'ea-quas-ipsam-porro-praesentium-quaerat10815', 'Ea quas ipsam porro praesentium quaerat.', 'Azalea Nilam Puspasari S.IP', 'PT Namaga Tbk', '9791885162549', '1987', 1, 3, 'book-1.jpg', '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `book_stock`
--

CREATE TABLE `book_stock` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `book_stock`
--

INSERT INTO `book_stock` (`id`, `book_id`, `quantity`, `created_at`, `updated_at`, `deleted_at`) VALUES
(33, 442, 1, '2024-09-26 04:49:04', '2024-09-26 04:49:04', NULL),
(34, 1, 34, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(35, 2, 19, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(36, 3, 81, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(37, 4, 82, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(38, 5, 34, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(39, 6, 1, '2024-10-03 04:37:47', '2024-10-03 04:38:59', NULL),
(40, 7, 90, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(41, 8, 63, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(42, 9, 20, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(43, 10, 65, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(44, 11, 90, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(45, 12, 20, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(46, 13, 74, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(47, 14, 82, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(48, 15, 19, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(49, 16, 97, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(50, 17, 28, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(51, 18, 96, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(52, 19, 6, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(53, 20, 33, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(54, 21, 20, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(55, 22, 5, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(56, 23, 23, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(57, 24, 65, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(58, 25, 15, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(59, 26, 96, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(60, 27, 42, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(61, 28, 9, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(62, 29, 97, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(63, 30, 34, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(64, 31, 77, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(65, 32, 62, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(66, 34, 40, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(67, 35, 64, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(68, 36, 39, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(69, 37, 33, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(70, 38, 78, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(71, 39, 26, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(72, 40, 53, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(73, 43, 64, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(74, 48, 54, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(75, 49, 19, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(76, 50, 42, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(77, 51, 63, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(78, 52, 6, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(79, 53, 82, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(80, 54, 86, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(81, 56, 76, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(82, 58, 86, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(83, 59, 12, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(84, 62, 98, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(85, 64, 46, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(86, 65, 84, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(87, 66, 45, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(88, 67, 28, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(89, 69, 57, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(90, 71, 29, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(91, 73, 81, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(92, 75, 98, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(93, 76, 17, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(94, 78, 29, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(95, 90, 76, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(96, 91, 90, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(97, 92, 60, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(98, 94, 91, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(99, 95, 26, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(100, 96, 73, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(101, 97, 59, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(102, 102, 65, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(103, 103, 21, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(104, 107, 12, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(105, 108, 61, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(106, 109, 33, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(107, 110, 41, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(108, 111, 79, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(109, 112, 38, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(110, 113, 79, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(111, 114, 56, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(112, 115, 22, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(113, 116, 26, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(114, 117, 10, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(115, 118, 97, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(116, 119, 50, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(117, 120, 80, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(118, 121, 25, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(119, 122, 100, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(120, 123, 34, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(121, 124, 8, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(122, 125, 46, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(123, 126, 34, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(124, 127, 40, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(125, 128, 57, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(126, 129, 59, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(127, 130, 64, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(128, 131, 61, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(129, 132, 15, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(130, 133, 40, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(131, 134, 27, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(132, 135, 41, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(133, 136, 63, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(134, 137, 61, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(135, 138, 19, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(136, 139, 17, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(137, 140, 8, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(138, 141, 12, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(139, 142, 11, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(140, 144, 67, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(141, 145, 65, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(142, 146, 81, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(143, 147, 80, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(144, 148, 81, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(145, 149, 92, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(146, 150, 65, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(147, 152, 48, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(148, 153, 15, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(149, 154, 99, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(150, 155, 35, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(151, 156, 21, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(152, 158, 35, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(153, 159, 27, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(154, 160, 47, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(155, 161, 43, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(156, 162, 59, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(157, 164, 41, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(158, 165, 100, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(159, 166, 10, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(160, 167, 50, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(161, 168, 12, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(162, 169, 34, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(163, 170, 99, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(164, 171, 91, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(165, 172, 13, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(166, 173, 59, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(167, 174, 21, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(168, 175, 22, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(169, 176, 55, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(170, 179, 14, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(171, 180, 16, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(172, 181, 55, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(173, 182, 75, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(174, 183, 67, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(175, 184, 6, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(176, 185, 70, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(177, 186, 17, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(178, 187, 9, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(179, 188, 70, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(180, 189, 82, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(181, 190, 42, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(182, 191, 99, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(183, 192, 11, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(184, 193, 80, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(185, 194, 7, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(186, 195, 62, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(187, 196, 59, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(188, 197, 67, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(189, 198, 58, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(190, 199, 54, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(191, 200, 7, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(192, 201, 93, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(193, 202, 94, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(194, 203, 19, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(195, 204, 30, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(196, 205, 100, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(197, 207, 43, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(198, 208, 49, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(199, 209, 44, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(200, 210, 14, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(201, 211, 82, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(202, 214, 43, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(203, 215, 44, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(204, 216, 53, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(205, 217, 85, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(206, 218, 57, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(207, 219, 32, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(208, 220, 97, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(209, 221, 100, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(210, 222, 5, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(211, 223, 94, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(212, 224, 56, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(213, 225, 28, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(214, 226, 23, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(215, 227, 20, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(216, 228, 33, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(217, 229, 63, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(218, 230, 18, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(219, 231, 27, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(220, 232, 36, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(221, 233, 77, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(222, 234, 11, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(223, 235, 93, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(224, 236, 45, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(225, 238, 94, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(226, 239, 6, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(227, 240, 24, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(228, 241, 79, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(229, 242, 97, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(230, 243, 12, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(231, 244, 18, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(232, 245, 66, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(233, 246, 60, '2024-10-03 04:37:47', '2024-10-03 04:37:47', NULL),
(234, 247, 37, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(235, 248, 66, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(236, 249, 83, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(237, 250, 6, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(238, 252, 23, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(239, 253, 27, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(240, 254, 79, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(241, 255, 56, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(242, 256, 79, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(243, 257, 86, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(244, 258, 71, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(245, 259, 84, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(246, 260, 55, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(247, 262, 14, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(248, 264, 67, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(249, 265, 39, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(250, 266, 33, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(251, 267, 57, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(252, 268, 57, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(253, 269, 40, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(254, 270, 56, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(255, 271, 97, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(256, 272, 11, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(257, 273, 30, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(258, 275, 37, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(259, 276, 85, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(260, 278, 74, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(261, 279, 50, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(262, 280, 98, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(263, 281, 5, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(264, 282, 10, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(265, 283, 10, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(266, 284, 54, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(267, 285, 21, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(268, 286, 76, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(269, 287, 11, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(270, 288, 66, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(271, 289, 14, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(272, 290, 7, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(273, 291, 70, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(274, 292, 86, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(275, 293, 34, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(276, 294, 13, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(277, 295, 13, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(278, 296, 43, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(279, 297, 59, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(280, 298, 94, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(281, 299, 14, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(282, 300, 29, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(283, 301, 13, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(284, 302, 33, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(285, 303, 39, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(286, 304, 79, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(287, 305, 70, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(288, 306, 25, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(289, 309, 33, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(290, 310, 23, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(291, 311, 20, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(292, 312, 9, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(293, 313, 71, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(294, 314, 11, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(295, 315, 94, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(296, 316, 10, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(297, 317, 39, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(298, 318, 11, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(299, 319, 94, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(300, 320, 88, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(301, 321, 100, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(302, 323, 54, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(303, 324, 37, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(304, 325, 67, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(305, 326, 40, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(306, 327, 57, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(307, 328, 39, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(308, 329, 47, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(309, 330, 91, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(310, 331, 15, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(311, 332, 7, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(312, 333, 17, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(313, 334, 40, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(314, 335, 35, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(315, 336, 25, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(316, 337, 54, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(317, 338, 67, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(318, 339, 31, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(319, 340, 65, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(320, 341, 87, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(321, 343, 18, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(322, 344, 81, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(323, 345, 5, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(324, 346, 31, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(325, 348, 40, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(326, 349, 75, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(327, 350, 43, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(328, 351, 44, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(329, 352, 91, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(330, 353, 74, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(331, 354, 18, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(332, 355, 53, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(333, 356, 82, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(334, 357, 64, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(335, 358, 22, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(336, 359, 20, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(337, 360, 75, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(338, 361, 21, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(339, 362, 83, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(340, 363, 87, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(341, 364, 75, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(342, 365, 71, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(343, 366, 52, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(344, 367, 74, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(345, 368, 79, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(346, 369, 26, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(347, 370, 89, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(348, 371, 54, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(349, 372, 84, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(350, 373, 37, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(351, 374, 82, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(352, 375, 86, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(353, 376, 12, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(354, 377, 85, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(355, 379, 21, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(356, 380, 98, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(357, 381, 94, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(358, 382, 19, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(359, 383, 92, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(360, 384, 46, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(361, 385, 53, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(362, 386, 95, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(363, 387, 100, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(364, 388, 20, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(365, 389, 22, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(366, 390, 99, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(367, 392, 88, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(368, 393, 62, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(369, 394, 6, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(370, 395, 73, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(371, 396, 93, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(372, 397, 80, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(373, 398, 44, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(374, 399, 19, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(375, 400, 93, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(376, 401, 40, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(377, 402, 98, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(378, 403, 65, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(379, 404, 53, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(380, 405, 31, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(381, 406, 92, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(382, 407, 70, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(383, 408, 15, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(384, 409, 78, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(385, 410, 59, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(386, 411, 16, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(387, 412, 17, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(388, 413, 46, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(389, 414, 43, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(390, 415, 46, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(391, 416, 5, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(392, 417, 88, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(393, 418, 86, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(394, 419, 44, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(395, 420, 38, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(396, 421, 83, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(397, 422, 54, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(398, 423, 26, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(399, 424, 35, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(400, 425, 11, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(401, 426, 50, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(402, 428, 76, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(403, 429, 44, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(404, 430, 18, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(405, 431, 84, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(406, 432, 93, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(407, 433, 51, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(408, 434, 78, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(409, 435, 73, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(410, 436, 40, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(411, 437, 56, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(412, 438, 83, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(413, 439, 48, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(414, 440, 46, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(415, 441, 70, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(416, 442, 92, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(417, 443, 44, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(418, 444, 65, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(419, 445, 23, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(420, 446, 28, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(421, 447, 23, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(422, 448, 55, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(423, 449, 16, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(424, 450, 40, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(425, 451, 94, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(426, 452, 23, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(427, 453, 73, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(428, 454, 18, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(429, 455, 66, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(430, 456, 75, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(431, 457, 82, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(432, 458, 34, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(433, 459, 80, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(434, 460, 13, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(435, 461, 69, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(436, 462, 56, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(437, 463, 56, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(438, 464, 74, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(439, 465, 42, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(440, 466, 82, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(441, 467, 13, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(442, 468, 26, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(443, 469, 7, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(444, 470, 92, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(445, 471, 52, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL),
(446, 472, 5, '2024-10-03 04:37:48', '2024-10-03 04:37:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'NOVEL', '2024-09-20 10:47:46', '2024-09-20 10:47:46', NULL),
(2, 'KOMIK', '2024-09-20 10:47:53', '2024-09-20 10:47:53', NULL),
(3, 'MAJALAH', '2024-09-20 10:48:40', '2024-09-20 10:48:40', NULL),
(4, 'Fiksi', '2024-09-20 11:17:06', '2024-09-20 11:17:06', NULL),
(5, 'Non-Fiksi', '2024-09-20 11:17:06', '2024-09-20 11:17:06', NULL),
(6, 'Sejarah', '2024-09-20 11:17:06', '2024-09-20 11:17:06', NULL),
(7, 'Komik', '2024-09-20 11:17:06', '2024-09-20 11:17:06', NULL),
(8, 'Teknologi', '2024-09-20 11:17:06', '2024-09-20 11:17:06', NULL),
(9, 'Fiksi', '2024-10-03 04:37:45', '2024-10-03 04:37:45', NULL),
(10, 'Non-Fiksi', '2024-10-03 04:37:45', '2024-10-03 04:37:45', NULL),
(11, 'Sejarah', '2024-10-03 04:37:45', '2024-10-03 04:37:45', NULL),
(12, 'Komik', '2024-10-03 04:37:45', '2024-10-03 04:37:45', NULL),
(13, 'Teknologi', '2024-10-03 04:37:45', '2024-10-03 04:37:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fines`
--

CREATE TABLE `fines` (
  `id` int(11) UNSIGNED NOT NULL,
  `loan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount_paid` int(11) UNSIGNED DEFAULT NULL,
  `fine_amount` int(11) UNSIGNED NOT NULL,
  `paid_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `fines`
--

INSERT INTO `fines` (`id`, `loan_id`, `amount_paid`, `fine_amount`, `paid_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 20000, 20000, '2024-09-21 17:55:45', '2024-09-20 11:17:06', '2024-09-21 11:21:55', '2024-09-21 11:21:55'),
(2, NULL, 15000, 15000, '2024-10-11 19:20:06', '2024-09-20 11:17:06', '2024-09-20 11:17:06', NULL),
(3, NULL, NULL, 70000, NULL, '2024-09-21 11:22:14', '2024-09-21 11:22:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fines_per_day`
--

CREATE TABLE `fines_per_day` (
  `id` int(11) UNSIGNED NOT NULL,
  `amount` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `fines_per_day`
--

INSERT INTO `fines_per_day` (`id`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1000, '2024-09-20 10:35:01', '2024-09-20 10:57:38');

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` varchar(255) NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `member_id` int(11) UNSIGNED NOT NULL,
  `loan_date` datetime NOT NULL,
  `due_date` date NOT NULL,
  `return_date` datetime DEFAULT NULL,
  `qr_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `loans`
--

INSERT INTO `loans` (`id`, `uid`, `book_id`, `quantity`, `member_id`, `loan_date`, `due_date`, `return_date`, `qr_code`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, '9c939098d405a58c5021fb4bcaed29ade37216bb', 442, 1, 11, '2024-10-03 11:34:45', '2024-10-10', '2024-10-03 11:35:06', 'tinandar-her_tuh_51b9e_1727930123.png', '2024-10-03 04:34:45', '2024-10-03 04:35:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) UNSIGNED NOT NULL,
  `uid` varchar(255) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` text DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `qr_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `uid`, `first_name`, `last_name`, `email`, `phone`, `address`, `date_of_birth`, `gender`, `qr_code`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'fd4223fc4d3440f92906b917ab4ac145c3b647d8', 'Among', 'Thamrin', 'chelsea.rajata@gmail.co.id', '0718 4124 3574', 'Jr. Basudewo No. 762, Tidore Kepulauan 31182, Kaltara', '1995-09-30', 'Male', NULL, '2024-09-20 10:54:16', '2024-09-20 10:54:16', NULL),
(2, '84f76560d87a9895ab72f42797bab365a02fb6af', 'Ilsa', 'Mandasari', 'zizi06@laksmiwati.my.id', '0988 1549 6443', 'Ds. Bara No. 352, Blitar 53379, Sulteng', '1978-11-09', 'Female', NULL, '2024-09-20 10:54:16', '2024-09-20 10:54:16', NULL),
(3, '3e2ab1cb6f7f91f7db6108f7f892b0c8983484d1', 'Karna', 'Natsir', 'ganjaran54@gmail.com', '0826 541 132', 'Ki. Kebonjati No. 441, Kupang 93835, Kalbar', '2000-01-31', 'Male', NULL, '2024-09-20 10:54:16', '2024-09-20 10:54:16', NULL),
(4, 'ea28fb519201ba94c10da9065f470f2f2700489a', 'Safina', 'Wahyuni', 'laswi.hariyah@gmail.com', '(+62) 27 3825 4225', 'Gg. Cikutra Barat No. 289, Salatiga 42692, Kepri', '2022-12-25', 'Female', NULL, '2024-09-20 10:54:16', '2024-09-20 10:54:16', NULL),
(5, 'd9f9a1fe8d7f561fa6774c4debec8da345926af8', 'Sabar', 'Mansur', 'tkusumo@gmail.com', '0279 6830 613', 'Ki. Raya Ujungberung No. 869, Tanjung Pinang 74979, Sulut', '1970-12-19', 'Male', NULL, '2024-09-20 10:54:16', '2024-09-20 10:54:16', NULL),
(6, '790cb0e8c3d356669c341d2c5656ae0af1fa83cb', 'Timbul', 'Saefullah', 'tiara.susanti@sudiati.my.id', '020 6710 7921', 'Ki. Cemara No. 701, Malang 32499, Maluku', '1970-07-05', 'Male', NULL, '2024-09-20 11:17:06', '2024-09-20 11:17:06', NULL),
(7, '4905acc352409c4a1cb12384b2eb61033995ba8b', 'Chelsea', 'Laksita', 'dnababan@sinaga.info', '(+62) 707 9949 945', 'Kpg. Umalas No. 275, Sibolga 16473, Kalteng', '1994-12-26', 'Female', NULL, '2024-09-20 11:17:06', '2024-09-20 11:17:06', NULL),
(8, '852934aaa39674cb1fbfe962339d7a68906a26ed', 'Laras', 'Zulaika', 'mahesa.agustina@gmail.co.id', '(+62) 510 8489 3018', 'Jln. Panjaitan No. 486, Serang 50608, Babel', '2005-07-16', 'Female', NULL, '2024-09-20 11:17:06', '2024-09-20 11:17:06', NULL),
(9, '363df79f1da62fb73f2ed72648c160cd5e859414', 'Dalima', 'Hasanah', 'titin77@yahoo.com', '020 0645 4715', 'Jln. Flores No. 271, Lubuklinggau 39801, Kalbar', '1999-06-08', 'Female', NULL, '2024-09-20 11:17:06', '2024-09-20 11:17:06', NULL),
(10, 'bbea9e2e0027d1485018ef383d2c0cdabaa500b6', 'Queen', 'Halimah', 'maheswara.lukita@yahoo.co.id', '(+62) 29 0612 209', 'Jr. Ters. Buah Batu No. 234, Tual 50978, Sulsel', '2000-07-05', 'Female', NULL, '2024-09-20 11:17:06', '2024-09-20 11:17:06', NULL),
(11, 'fd0d1bd3d2fe05afe68ca92c33df8a959474ccb9', 'Tinandar', 'Hermawan', 'admin@nandz.my.id', '+6285155154473', 'Jln Doang Jadian KGK', '2003-03-19', 'Male', 'tinandar-hermawa_0687f_1727494682.png', '2024-09-21 09:48:57', '2024-09-28 03:38:03', NULL),
(12, '9b0f397a0bfd5be3ba30b4e5ef6d4377d3e2fb9d', 'apian', 'ganteng', 'anjaymabar5@gmail.com', '+6285155154472', 'Jln Doang Jadian KGK', '2005-03-19', 'Female', 'apian-ganteng_06f52_1726914965.png', '2024-09-21 10:36:05', '2024-09-21 10:36:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2020-12-28-223112', 'CodeIgniter\\Shield\\Database\\Migrations\\CreateAuthTables', 'default', 'CodeIgniter\\Shield', 1726828501, 1),
(2, '2021-07-04-041948', 'CodeIgniter\\Settings\\Database\\Migrations\\CreateSettingsTable', 'default', 'CodeIgniter\\Settings', 1726828501, 1),
(3, '2021-11-14-143905', 'CodeIgniter\\Settings\\Database\\Migrations\\AddContextColumn', 'default', 'CodeIgniter\\Settings', 1726828501, 1),
(4, '2023-08-12-000001', 'App\\Database\\Migrations\\CreateRacksTable', 'default', 'App', 1726828501, 1),
(5, '2023-08-12-000002', 'App\\Database\\Migrations\\CreateCategoriesTable', 'default', 'App', 1726828501, 1),
(6, '2023-08-12-000003', 'App\\Database\\Migrations\\CreateBooksTable', 'default', 'App', 1726828501, 1),
(7, '2023-08-12-000004', 'App\\Database\\Migrations\\CreateBookStockTable', 'default', 'App', 1726828501, 1),
(8, '2023-08-12-000005', 'App\\Database\\Migrations\\CreateMembersTable', 'default', 'App', 1726828501, 1),
(9, '2023-08-12-000006', 'App\\Database\\Migrations\\CreateLoansTable', 'default', 'App', 1726828501, 1),
(10, '2023-08-12-000007', 'App\\Database\\Migrations\\CreateFinesTable', 'default', 'App', 1726828501, 1),
(11, '2024-07-08-045735', 'App\\Database\\Migrations\\CreateFinesPerDayTable', 'default', 'App', 1726828501, 1);

-- --------------------------------------------------------

--
-- Table structure for table `racks`
--

CREATE TABLE `racks` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(8) NOT NULL,
  `floor` varchar(16) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `racks`
--

INSERT INTO `racks` (`id`, `name`, `floor`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'KIRI', '3', '2024-09-20 10:48:30', '2024-09-20 10:48:30', NULL),
(2, '1A', '1', '2024-09-20 11:17:05', '2024-09-20 11:17:05', NULL),
(3, '1B', '1', '2024-09-20 11:17:05', '2024-09-20 11:17:05', NULL),
(4, '1C', '1', '2024-09-20 11:17:05', '2024-09-20 11:17:05', NULL),
(5, '2A', '2', '2024-09-20 11:17:05', '2024-09-20 11:17:05', NULL),
(6, '2B', '2', '2024-09-20 11:17:05', '2024-09-20 11:17:05', NULL),
(7, '2C', '2', '2024-09-20 11:17:05', '2024-09-20 11:17:05', NULL),
(8, '3A', '3', '2024-09-20 11:17:05', '2024-09-20 11:17:05', NULL),
(9, '3B', '3', '2024-09-20 11:17:05', '2024-09-20 11:17:05', NULL),
(10, '3C', '3', '2024-09-20 11:17:05', '2024-09-20 11:17:05', NULL),
(11, '3D', '3', '2024-09-20 11:17:05', '2024-09-20 11:17:05', NULL),
(12, '1A', '1', '2024-10-03 04:37:45', '2024-10-03 04:37:45', NULL),
(13, '1B', '1', '2024-10-03 04:37:45', '2024-10-03 04:37:45', NULL),
(14, '1C', '1', '2024-10-03 04:37:45', '2024-10-03 04:37:45', NULL),
(15, '2A', '2', '2024-10-03 04:37:45', '2024-10-03 04:37:45', NULL),
(16, '2B', '2', '2024-10-03 04:37:45', '2024-10-03 04:37:45', NULL),
(17, '2C', '2', '2024-10-03 04:37:45', '2024-10-03 04:37:45', NULL),
(18, '3A', '3', '2024-10-03 04:37:45', '2024-10-03 04:37:45', NULL),
(19, '3B', '3', '2024-10-03 04:37:45', '2024-10-03 04:37:45', NULL),
(20, '3C', '3', '2024-10-03 04:37:45', '2024-10-03 04:37:45', NULL),
(21, '3D', '3', '2024-10-03 04:37:45', '2024-10-03 04:37:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(9) NOT NULL,
  `class` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `type` varchar(31) NOT NULL DEFAULT 'string',
  `context` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `last_active` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `status`, `status_message`, `active`, `last_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'superadmin', NULL, NULL, 1, '2024-09-20 18:20:52', '2024-09-20 17:35:20', '2024-09-20 17:35:21', NULL),
(4, 'Nandz', NULL, NULL, 1, '2024-10-09 15:32:12', '2024-09-20 17:43:54', '2024-09-20 17:43:55', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `auth_identities`
--
ALTER TABLE `auth_identities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type_secret` (`type`,`secret`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type_identifier` (`id_type`,`identifier`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_permissions_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `selector` (`selector`),
  ADD KEY `auth_remember_tokens_user_id_foreign` (`user_id`);

--
-- Indexes for table `auth_token_logins`
--
ALTER TABLE `auth_token_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type_identifier` (`id_type`,`identifier`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `books_rack_id_foreign` (`rack_id`),
  ADD KEY `books_category_id_foreign` (`category_id`);

--
-- Indexes for table `book_stock`
--
ALTER TABLE `book_stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_stock_book_id_foreign` (`book_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fines`
--
ALTER TABLE `fines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fines_loan_id_foreign` (`loan_id`);

--
-- Indexes for table `fines_per_day`
--
ALTER TABLE `fines_per_day`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uid` (`uid`),
  ADD KEY `loans_book_id_foreign` (`book_id`),
  ADD KEY `loans_member_id_foreign` (`member_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uid` (`uid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `racks`
--
ALTER TABLE `racks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_identities`
--
ALTER TABLE `auth_identities`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_token_logins`
--
ALTER TABLE `auth_token_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=473;

--
-- AUTO_INCREMENT for table `book_stock`
--
ALTER TABLE `book_stock`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=447;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `fines`
--
ALTER TABLE `fines`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fines_per_day`
--
ALTER TABLE `fines_per_day`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `racks`
--
ALTER TABLE `racks`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_identities`
--
ALTER TABLE `auth_identities`
  ADD CONSTRAINT `auth_identities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  ADD CONSTRAINT `auth_permissions_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  ADD CONSTRAINT `auth_remember_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `books_rack_id_foreign` FOREIGN KEY (`rack_id`) REFERENCES `racks` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `book_stock`
--
ALTER TABLE `book_stock`
  ADD CONSTRAINT `book_stock_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fines`
--
ALTER TABLE `fines`
  ADD CONSTRAINT `fines_loan_id_foreign` FOREIGN KEY (`loan_id`) REFERENCES `loans` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `loans`
--
ALTER TABLE `loans`
  ADD CONSTRAINT `loans_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `loans_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
