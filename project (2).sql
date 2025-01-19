-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2024 at 09:48 AM
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
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `address`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 'no 70, new roads, kandyyyy', 1, '2024-06-10 05:38:32', '2024-06-10 05:49:45'),
(2, 5, 'no 2, kurunegala', 1, '2024-06-12 00:42:56', '2024-06-12 00:42:56'),
(3, 8, 'No 127, New road, Kandy', 1, '2024-06-26 12:09:02', '2024-06-26 12:45:15'),
(4, 9, 'kandy', 1, '2024-07-14 06:47:09', '2024-07-14 06:47:09'),
(5, 10, 'kandy', 1, '2024-07-14 09:06:45', '2024-07-14 09:06:45'),
(6, 11, 'colombo', 1, '2024-07-14 12:25:25', '2024-07-14 12:25:25');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `confirm` enum('No','Yes') NOT NULL DEFAULT 'No',
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `type`, `vendor_id`, `mobile`, `email`, `password`, `image`, `confirm`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Kasun', 'superadmin', 0, '0723567862', 'admin@admin.com', '$2y$10$L3OmG74bXX09IpRxcUF27uZTfUVCNachy1LTr/hbNzOvw5KnyIEoG', '50158.jpg', 'No', 1, NULL, '2024-06-26 13:18:59'),
(18, 'supun', 'vendor', 17, '01233333', 'su@gmail.com', '$2y$10$FIcMBQ7HzjUu.883Z94c2uz8GfbhRi0bXoPSObvR1HAMkkMaIqSw2', '', 'Yes', 1, '2024-06-04 08:34:15', '2024-06-06 10:01:02'),
(20, 'kasun', 'vendor', 19, '011234567', 'kasun@gmail.com', '$2y$10$TqcGcxp5/cCOD0DiOD72FuljOBF53KIxVb/utE2Fdy.GSANW.hgP6', '', 'Yes', 1, '2024-06-06 15:25:01', '2024-06-07 01:44:50'),
(24, 'Dilshan Perera', 'vendor', 23, '0776964765', 'dilshan@gmail.com', '$2y$10$rmGhZJsHVovy3Nr2VYIIt.InsGR/1DHmKzr0xVFkmM8Lq1sFJPPI.', NULL, 'Yes', 1, '2024-06-26 09:22:33', '2024-07-14 09:46:36'),
(25, 'raj', 'vendor', 24, '01222222', 'r@gmail.com', '$2y$10$F7RA7EbBbOFzfrzip3CXE.G4dMd6o7bTgcJTdfqUiZXCjFaWM3FES', NULL, 'Yes', 1, '2024-07-14 06:54:34', '2024-07-14 14:03:26');

-- --------------------------------------------------------

--
-- Table structure for table `biddings`
--

CREATE TABLE `biddings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `biddings`
--

INSERT INTO `biddings` (`id`, `user_id`, `product_id`, `price`, `created_at`, `updated_at`) VALUES
(11, 10, 50, 251.00, '2024-07-14 09:25:33', '2024-07-14 09:25:33'),
(12, 10, 50, 255.00, '2024-07-14 10:06:24', '2024-07-14 10:06:24'),
(13, 11, 50, 252.00, '2024-07-14 13:57:06', '2024-07-14 13:57:06');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `size` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `session_id`, `user_id`, `product_id`, `size`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(136, 'V7CmfmrEHu2Lhv3SoTDpLl5nA2CsgW1FiuCx4zkS', 5, 41, 'white', 10, 485.00, '2024-06-25 07:29:14', '2024-06-25 07:29:14'),
(137, 'B2yp6ljaGoPDrpUTZI6y6jLvaAou4auZoLia0lhs', 5, 41, 'red', 50, 2425.00, '2024-06-25 07:32:43', '2024-06-25 07:32:43'),
(140, 'YNVV2P9RCHl45kQFTAQR8JDTUEpogCIVfBOEDC51', 0, 41, 'red', 50, 2425.00, '2024-06-26 19:02:16', '2024-06-26 19:02:16'),
(142, 'ix1GyXMBnNfhnT2t80MBFp6ohMtrZUNUIxyNlNDD', 0, 43, 'white', 2, 400.00, '2024-06-27 05:58:43', '2024-06-27 05:58:43');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_discount` double(8,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `section_id`, `category_name`, `category_discount`, `description`, `url`, `status`, `created_at`, `updated_at`) VALUES
(18, 0, 22, 'Fruits', 0.00, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.', 'Fruits', 1, '2024-05-31 07:50:24', '2024-06-02 01:51:48'),
(19, 0, 22, 'Vegetables', 0.00, NULL, 'Vegetables', 1, '2024-05-31 07:50:46', '2024-05-31 07:50:46'),
(20, 0, 23, 'Dairy', 0.00, NULL, 'Dairy', 1, '2024-05-31 07:51:30', '2024-05-31 07:51:30'),
(21, 0, 23, 'Eggs', 0.00, NULL, 'Eggs', 1, '2024-05-31 07:51:51', '2024-05-31 07:51:51'),
(22, 0, 24, 'Meat', 0.00, NULL, 'Meat', 1, '2024-05-31 07:52:23', '2024-05-31 07:52:23'),
(23, 22, 24, 'Chicken', 0.00, NULL, 'Chicken', 1, '2024-05-31 07:53:26', '2024-05-31 07:53:26'),
(24, 22, 24, 'Beef', 0.00, NULL, 'Beef', 1, '2024-05-31 07:54:22', '2024-05-31 07:54:22'),
(26, 20, 23, 'Cheese', 0.00, NULL, 'Cheese', 1, '2024-05-31 07:55:32', '2024-05-31 07:55:32'),
(28, 19, 22, 'potato', 0.00, NULL, 'potato', 1, '2024-05-31 08:02:04', '2024-05-31 08:02:04'),
(36, 0, 25, 'Rice', 0.00, NULL, 'Rice', 1, '2024-06-01 04:23:41', '2024-06-01 04:28:09'),
(37, 18, 22, 'Banana', 10.00, NULL, 'Banana', 1, '2024-06-01 04:28:39', '2024-06-01 04:28:39'),
(38, 36, 25, 'Samba', 5.00, NULL, 'Samba', 1, '2024-06-01 04:29:00', '2024-06-01 04:29:00'),
(39, 36, 25, 'Nadu', 0.00, NULL, 'Nadu', 1, '2024-06-01 04:29:16', '2024-06-01 04:29:16'),
(40, 0, 26, 'Snacks', 0.00, NULL, 'Snacks', 1, '2024-06-26 13:56:47', '2024-06-26 13:56:47');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `user_id`, `vendor_id`, `order_product_id`, `message`, `created_at`, `updated_at`) VALUES
(13, 5, 17, 10, 'mlmlk', '2024-06-20 02:16:22', '2024-06-20 02:16:22'),
(14, 3, 19, 16, 'hi', '2024-06-22 06:27:45', '2024-06-22 06:27:45'),
(15, 8, 17, 32, 'Hi, this is a test message from the customer', '2024-06-26 19:21:11', '2024-06-26 19:21:11'),
(16, 3, 23, 36, 'hi', '2024-07-13 04:44:53', '2024-07-13 04:44:53'),
(17, 9, 23, 38, 'hi', '2024-07-14 06:53:44', '2024-07-14 06:53:44'),
(18, 10, 23, 39, 'hi', '2024-07-14 09:09:34', '2024-07-14 09:09:34'),
(19, 10, 19, 40, 'hi', '2024-07-14 09:27:13', '2024-07-14 09:27:13'),
(20, 10, 19, 41, 'hi', '2024-07-14 10:08:01', '2024-07-14 10:08:01'),
(21, 11, 19, 42, 'hi', '2024-07-14 12:26:23', '2024-07-14 12:26:23'),
(22, 11, 19, 43, 'hi', '2024-07-14 13:58:36', '2024-07-14 13:58:36');

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
-- Table structure for table `measurements`
--

CREATE TABLE `measurements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `measurements`
--

INSERT INTO `measurements` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Kilogram (kg)', 1, NULL, NULL),
(2, 'Gram (g)', 1, NULL, NULL),
(4, 'Pound (lb)', 1, NULL, NULL),
(5, 'Milliliter (ml)', 1, NULL, NULL),
(6, 'Dozen', 1, NULL, NULL),
(7, 'Pack', 1, NULL, NULL),
(8, 'Box', 1, NULL, NULL),
(9, 'Bag', 1, NULL, NULL),
(10, 'Carton', 1, NULL, NULL),
(11, 'N/A', 1, NULL, NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_05_06_113732_create_vendors_table', 2),
(6, '2024_05_06_114224_create_admins_table', 3),
(7, '2024_05_08_145252_create_vendors_business_details', 4),
(8, '2024_05_08_150503_create_vendors_bank_details', 5),
(9, '2024_05_10_170641_create_sections_table', 6),
(10, '2024_05_11_041537_create_categories_table', 7),
(11, '2024_05_11_081354_create_products_table', 8),
(12, '2024_05_29_112024_add_is_featured_to_products_table', 9),
(13, '2024_05_30_085315_create_products_attributes_table', 10),
(14, '2024_05_30_160653_create_products_images_table', 11),
(15, '2024_06_03_162240_create_products_filters_table', 12),
(16, '2024_06_03_162632_create_products_filters_values_table', 13),
(17, '2024_06_07_043147_create_carts_table', 14),
(18, '2024_06_08_035100_add_columns_to_users', 15),
(19, '2024_06_10_103836_create_delivery_address_table', 16),
(20, '2024_06_10_120031_create_orders_table', 17),
(21, '2024_06_10_122058_create_orders_products_table', 18),
(22, '2024_06_12_021515_create_order_status_table', 19),
(23, '2024_06_12_044157_create_order_item_statuses_table', 20),
(24, '2024_06_17_043924_create_orders_logs_table', 21),
(25, '2024_06_17_092809_create_ratings_table', 21),
(26, '2024_06_17_165010_create_measurements_table', 22),
(27, '2024_06_19_165325_create_chat_table', 23),
(28, '2024_06_19_181555_create_user_chat_table', 24),
(29, '2024_06_21_162728_create_bidding_table', 25),
(30, '2024_06_22_103351_create_jobs_table', 26),
(31, '2024_06_23_235312_create_wholesale_quantity_table', 27);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `postalcode` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `shipping_charges` double(8,2) NOT NULL,
  `coupon_amount` double(8,2) NOT NULL,
  `order_status` varchar(250) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `grand_total` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `address`, `city`, `province`, `country`, `postalcode`, `mobile`, `email`, `shipping_charges`, `coupon_amount`, `order_status`, `payment_method`, `grand_total`, `created_at`, `updated_at`) VALUES
(31, 3, 'kasun gimhan', 'no 70, new roads, kandyyyy', 'kandy', 'central', 'SriLanka', '2000', '0122222222', 'ka@gmail.com', 0.00, 0.00, 'New', 'COD', '200', '2024-06-26 07:18:20', '2024-06-26 07:18:20'),
(32, 8, 'Nuwan Silva', 'No. 127, New road, Kandy', 'kandy', 'central', 'SriLanka', '20000', '0723456433', 'nuwan@gmail.com', 0.00, 0.00, 'New', 'COD', '400', '2024-06-26 12:26:56', '2024-06-26 12:26:56'),
(33, 8, 'Nuwan Silva', 'No 127, New road, Kandy', 'kandy', 'central', 'SriLanka', '20000', '0723456433', 'nuwan@gmail.com', 0.00, 0.00, 'New', 'COD', '2425', '2024-06-26 19:04:21', '2024-06-26 19:04:21'),
(34, 8, 'Nuwan Silva', 'No 127, New road, Kandy', 'kandy', 'central', 'SriLanka', '20000', '0723456433', 'nuwan@gmail.com', 0.00, 0.00, 'new', 'COD', '1050', '2024-06-27 03:30:59', '2024-06-27 03:30:59'),
(35, 3, 'kasun gimhan', 'no 70, kandy', 'kandy', 'central', 'SriLanka', '2000', '0122222222', 'ka@gmail.com', 0.00, 0.00, 'new', 'COD', '1050', '2024-06-27 03:34:40', '2024-06-27 03:34:40'),
(36, 3, 'kasun gimhan', 'no 70, new roads, kandyyyy', 'kandy', 'central', 'SriLanka', '2000', '0122222222', 'ka@gmail.com', 0.00, 0.00, 'New', 'COD', '400', '2024-06-27 06:05:50', '2024-06-27 06:05:50'),
(37, 3, 'kasun gimhan', 'no 70, new roads, kandyyyy', 'kandy', 'central', 'SriLanka', '2000', '0122222222', 'ka@gmail.com', 0.00, 0.00, 'New', 'COD', '2600', '2024-07-13 04:44:14', '2024-07-13 04:44:14'),
(38, 3, 'kasun gimhan', 'no 70, kandy', 'kandy', 'central', 'SriLanka', '2000', '0122222222', 'ka@gmail.com', 0.00, 0.00, 'new', 'COD', '1050', '2024-07-14 06:36:46', '2024-07-14 06:36:46'),
(39, 9, 'kasun', 'kandy', 'kandy', 'central', 'SriLanka', '2000', '0544444444', 'kg@gmail.com', 100.00, 0.00, 'New', 'COD', '250', '2024-07-14 06:52:59', '2024-07-14 06:52:59'),
(40, 10, 'namal', 'kandy', 'kandy', 'kandy', 'SriLanka', '22222', '0111111111', 'n@gmail.com', 100.00, 0.00, 'New', 'COD', '250', '2024-07-14 09:09:02', '2024-07-14 09:09:02'),
(41, 10, 'namal', 'kandy', 'kandy', 'kandy', 'SriLanka', '22222', '0111111111', 'n@gmail.com', 100.00, 0.00, 'New', 'COD', '3040', '2024-07-14 09:26:39', '2024-07-14 09:26:39'),
(42, 10, 'namal', 'kandy', 'kandy', 'kandy', 'SriLanka', '22222', '0111111111', 'n@gmail.com', 100.00, 0.00, 'New', 'COD', '786', '2024-07-14 10:07:36', '2024-07-14 10:07:36'),
(44, 11, 'kasun kodithuwakku', 'colombo', 'colombo', 'colombo', 'SriLanka', '24', '0122223337', 'k@gmail.com', 100.00, 0.00, 'New', 'COD', '3040', '2024-07-14 13:58:04', '2024-07-14 13:58:04');

-- --------------------------------------------------------

--
-- Table structure for table `orders_products`
--

CREATE TABLE `orders_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_size` varchar(255) DEFAULT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `item_status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_products`
--

INSERT INTO `orders_products` (`id`, `order_id`, `user_id`, `vendor_id`, `admin_id`, `product_id`, `product_code`, `product_name`, `product_size`, `product_price`, `product_qty`, `item_status`, `created_at`, `updated_at`) VALUES
(21, 23, 5, 19, 20, 43, 's1', 'samba', 'white', 213.40, 3, 'Pending', '2024-06-23 11:16:41', '2024-06-23 11:16:41'),
(22, 24, 5, 19, 20, 43, 's1', 'samba', 'white', 213.40, 3, 'Pending', '2024-06-23 13:11:13', '2024-06-23 13:11:13'),
(23, 25, 5, 19, 20, 43, 's1', 'samba', NULL, 1050.00, 10, 'Pending', '2024-06-24 03:40:15', '2024-06-24 03:40:15'),
(24, 26, 5, 19, 20, 43, 's1', 'samba', 'red', 242.50, 1, 'Pending', '2024-06-24 10:53:59', '2024-06-24 10:53:59'),
(25, 27, 5, 19, 20, 43, 's1', 'samba', 'red', 242.50, 1, 'Pending', '2024-06-24 10:58:57', '2024-06-24 10:58:57'),
(26, 28, 5, 19, 20, 43, 's1', 'samba', 'red', 145.50, 1, 'Pending', '2024-06-24 11:02:37', '2024-06-24 11:02:37'),
(27, 29, 5, 17, 18, 41, 'e1', 'Eggs', 'red', 45.00, 50, 'Pending', '2024-06-25 05:19:00', '2024-06-25 05:19:00'),
(28, 30, 5, 17, 18, 41, 'e1', 'Eggs', 'red', 2182.50, 50, 'Pending', '2024-06-25 06:37:47', '2024-06-25 06:37:47'),
(29, 30, 5, 17, 18, 41, 'e1', 'Eggs', 'red', 2250.00, 50, 'Pending', '2024-06-25 06:37:47', '2024-06-25 06:37:47'),
(30, 31, 3, 0, 1, 43, 's1', 'samba', 'white', 200.00, 1, 'Pending', '2024-06-26 07:18:20', '2024-06-26 07:18:20'),
(31, 32, 8, 0, 1, 43, 's1', 'samba', 'white', 400.00, 2, 'Pending', '2024-06-26 12:26:56', '2024-06-26 12:26:56'),
(32, 33, 8, 17, 18, 41, 'e1', 'Eggs', 'red', 2425.00, 50, 'In process', '2024-06-26 19:04:21', '2024-06-26 19:14:01'),
(33, 34, 8, 0, 1, 43, 's1', 'samba', NULL, 1050.00, 10, 'Pending', '2024-06-27 03:30:59', '2024-06-27 03:30:59'),
(34, 35, 3, 0, 1, 43, 's1', 'samba', NULL, 1050.00, 10, 'Pending', '2024-06-27 03:34:40', '2024-06-27 03:34:40'),
(35, 36, 3, 0, 1, 43, 's1', 'samba', 'white', 400.00, 2, 'Pending', '2024-06-27 06:05:50', '2024-06-27 06:05:50'),
(36, 37, 3, 23, 24, 44, 'c1', 'Carrot', 'normal', 2600.00, 20, 'Pending', '2024-07-13 04:44:14', '2024-07-13 04:44:14'),
(37, 38, 3, 0, 1, 43, 's1', 'samba', NULL, 1050.00, 10, 'Pending', '2024-07-14 06:36:46', '2024-07-14 06:36:46'),
(38, 39, 9, 23, 24, 44, 'c1', 'Carrot', 'normal', 150.00, 1, 'Pending', '2024-07-14 06:52:59', '2024-07-14 06:52:59'),
(39, 40, 10, 23, 24, 44, 'c1', 'Carrot', 'normal', 150.00, 1, 'Pending', '2024-07-14 09:09:02', '2024-07-14 09:09:02'),
(40, 41, 10, 19, 20, 50, 'b1', 'Basmati', 'red', 2940.00, 10, 'Shipped', '2024-07-14 09:26:39', '2024-07-14 09:31:58'),
(41, 42, 10, 19, 20, 50, 'b1', 'Basmati', 'red', 686.00, 2, 'Shipped', '2024-07-14 10:07:36', '2024-07-14 10:15:07'),
(42, 43, 11, 19, 20, 50, 'b1', 'Basmati', 'red', 686.00, 2, 'In process', '2024-07-14 12:25:54', '2024-07-14 12:29:29'),
(43, 44, 11, 19, 20, 50, 'b1', 'Basmati', 'red', 2940.00, 10, 'Shipped', '2024-07-14 13:58:04', '2024-07-14 14:02:39');

-- --------------------------------------------------------

--
-- Table structure for table `order_item_statuses`
--

CREATE TABLE `order_item_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_item_statuses`
--

INSERT INTO `order_item_statuses` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pending', 1, NULL, NULL),
(2, 'In process', 1, NULL, NULL),
(3, 'Shipped', 1, NULL, NULL),
(4, 'Delivered', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'New', 1, NULL, NULL),
(2, 'Pending', 1, NULL, NULL),
(3, 'Cancelled', 1, NULL, NULL),
(4, 'In process', 1, NULL, NULL),
(5, 'Shipped', 1, NULL, NULL),
(6, 'Partially shipped', 1, NULL, NULL),
(7, 'Delivered', 1, NULL, NULL),
(8, 'Partially delivered', 1, NULL, NULL),
(9, 'Paid', 1, NULL, NULL);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_type` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_quantity` int(11) DEFAULT NULL,
  `origin` varchar(255) NOT NULL,
  `harvest_date` date NOT NULL,
  `expiry_date` date NOT NULL,
  `product_price` int(11) DEFAULT NULL,
  `product_discount` varchar(255) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `product_video` varchar(255) DEFAULT NULL,
  `product_description` text DEFAULT NULL,
  `minimum_price` float DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `bid_start_date` date DEFAULT NULL,
  `bid_end_date` date DEFAULT NULL,
  `is_featured` enum('No','Yes') NOT NULL DEFAULT 'No',
  `is_bestseller` enum('No','Yes') NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `section_id`, `category_id`, `vendor_id`, `admin_id`, `admin_type`, `product_name`, `product_code`, `product_quantity`, `origin`, `harvest_date`, `expiry_date`, `product_price`, `product_discount`, `product_image`, `product_video`, `product_description`, `minimum_price`, `quantity`, `bid_start_date`, `bid_end_date`, `is_featured`, `is_bestseller`, `status`, `created_at`, `updated_at`) VALUES
(32, 22, 37, 0, 1, 'superadmin', 'banana', 'b1', NULL, 'kandy', '2024-06-26', '2024-06-29', NULL, '10', '28990.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, 'No', 'No', 1, '2024-06-26 13:59:45', '2024-06-26 13:59:45'),
(33, 22, 28, 0, 1, 'superadmin', 'potato', 'p1', NULL, 'dambulla', '0000-00-00', '0000-00-00', NULL, '2', '6190.jpg', '50907.mp4', 'Discover the versatile and nutritious potato, a staple in kitchens around the world. Our fresh potatoes are carefully selected to ensure the highest quality. Perfect for mashing, roasting, frying, or boiling, these potatoes add a delicious and hearty touch to any meal. Rich in vitamins and minerals, they are not only tasty but also a healthy addition to your diet. Enjoy the natural goodness and delightful texture of our premium potatoes in your favorite recipes today!', NULL, NULL, NULL, NULL, 'No', 'No', 1, '2024-05-31 09:12:11', '2024-06-05 09:35:51'),
(43, 25, 38, 0, 1, 'superadmin', 'samba', 's1', NULL, 'dambulla', '2024-06-20', '2024-07-26', NULL, '0', '57433.jpg', NULL, '<p><span style=\"color:hsl(0,75%,60%);\"><strong>high quality</strong></span></p>', 100, 10, '2024-06-27', '2024-06-28', 'No', 'No', 1, '2024-06-27 03:36:57', '2024-06-27 03:36:57'),
(44, 22, 19, 23, 24, 'vendor', 'Carrot', 'c1', NULL, 'Jaffna', '2024-06-13', '2024-07-26', NULL, '0', '29202.webp', NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', 'Yes', 1, '2024-06-26 09:44:40', '2024-06-26 09:44:40'),
(47, 22, 19, 23, 24, 'vendor', 'Bean', 'be1', NULL, 'India', '2024-06-01', '2024-06-29', NULL, '0', '65003.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'No', 'No', 1, '2024-06-26 10:15:33', '2024-06-26 10:15:33'),
(49, 25, 36, 24, 25, 'vendor', 'keeri samba', 'ks1', NULL, 'srilanka', '2024-07-14', '2024-08-14', NULL, '5', '96584.jpeg', NULL, '<p>great</p>', 100, 5, '2024-07-14', '2024-07-15', 'No', 'No', 1, '2024-07-14 07:00:34', '2024-07-14 07:00:34'),
(50, 25, 36, 19, 20, 'vendor', 'Basmati', 'b1', NULL, 'Sri Lanka', '2024-07-11', '2024-08-29', NULL, '2', '50917.jpg', NULL, '<p><span style=\"background-color:rgb(255,255,255);color:rgb(9,9,11);font-family:&quot;DM Sans Merlin&quot;, system-ui, -apple-system, BlinkMacSystemFont, Ubuntu, sans-serif;font-size:16px;\"><span style=\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Basmati rice is a long-grain, aromatic rice variety known for its distinct nutty flavor and fluffy texture. Originating from the Indian subcontinent, basmati rice is prized for its long, slender grains that remain separate after cooking.&nbsp;</span></span></p>', 250, 3, '2024-07-14', '2024-07-15', 'No', 'No', 1, '2024-07-14 09:18:10', '2024-07-14 09:18:10'),
(51, 22, 18, 19, 20, 'vendor', 'Guava', 'G1', NULL, 'India', '2024-07-14', '2024-07-31', NULL, '5', '31077.jpg', NULL, '<p><span style=\"background-color:rgb(255,255,255);color:rgb(32,33,36);font-family:&quot;Google Sans&quot;, Arial, sans-serif;font-size:20px;\"><span style=\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:left;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Guavas are </span></span><b style=\"-webkit-text-stroke-width:0px;animation:0.75s cubic-bezier(0.05, 0.7, 0.1, 1) 0.25s 1 normal forwards running highlight;background-color:rgb(255, 255, 255);color:rgb(4, 12, 40);font-family:&quot;Google Sans&quot;, Arial, sans-serif;font-size:20px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;orphans:2;text-align:left;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><strong>tropical trees originating in Central America</strong></b><span style=\"background-color:rgb(255,255,255);color:rgb(32,33,36);font-family:&quot;Google Sans&quot;, Arial, sans-serif;font-size:20px;\"><span style=\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:left;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">. Their fruits are oval in shape with light green or yellow skin and contain edible seeds.&nbsp;</span></span></p>', 100, 10, '2024-07-14', '2024-07-15', 'No', 'No', 1, '2024-07-14 09:29:50', '2024-07-14 09:29:50'),
(52, 22, 19, 19, 20, 'vendor', 'Brinjol', 'b1', NULL, 'Sri Lanka', '2024-07-14', '2024-08-14', NULL, '10', '10493.webp', NULL, '<p><span style=\"background-color:rgb(255,255,255);color:rgb(9,9,11);font-family:&quot;DM Sans Merlin&quot;, system-ui, -apple-system, BlinkMacSystemFont, Ubuntu, sans-serif;font-size:16px;\"><span style=\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Brinjal! Also known as eggplant, brinjal is a popular purple vegetable commonly used in various cuisines, particularly in Indian and Mediterranean cooking</span></span></p>', NULL, NULL, NULL, NULL, 'No', 'No', 1, '2024-07-14 10:11:37', '2024-07-14 10:11:37'),
(53, 22, 18, 19, 20, 'vendor', 'banana', 'bj3', NULL, 'srilanka', '2024-07-23', '2024-07-30', NULL, '3', '93154.jpg', '94911.mp4', '<p>banana</p>', 100, 5, '2024-07-14', '2024-07-15', 'No', 'No', 1, '2024-07-14 14:00:34', '2024-07-14 14:00:34');

-- --------------------------------------------------------

--
-- Table structure for table `products_filters`
--

CREATE TABLE `products_filters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_ids` varchar(255) NOT NULL,
  `filter_name` varchar(255) NOT NULL,
  `filter_column` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_filters`
--

INSERT INTO `products_filters` (`id`, `cat_ids`, `filter_name`, `filter_column`, `status`, `created_at`, `updated_at`) VALUES
(1, '20,21,22,23,24', 'Fast food', 'Fastfood', 1, NULL, '2024-06-03 11:39:07'),
(2, '18,19', 'Organic', 'organic', 1, NULL, '2024-06-03 11:38:04');

-- --------------------------------------------------------

--
-- Table structure for table `products_filter_values`
--

CREATE TABLE `products_filter_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filters_id` int(11) NOT NULL,
  `filter_value` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_filter_values`
--

INSERT INTO `products_filter_values` (`id`, `filters_id`, `filter_value`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Chemicals Free', 1, NULL, '2024-06-03 11:48:57'),
(2, 1, 'With Packing', 1, NULL, '2024-06-03 11:48:59');

-- --------------------------------------------------------

--
-- Table structure for table `products_images`
--

CREATE TABLE `products_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_images`
--

INSERT INTO `products_images` (`id`, `product_id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(9, 31, 'pum3.jpg43718.jpg', 1, '2024-05-30 22:21:54', '2024-05-30 22:31:03'),
(10, 31, 'pum2.jpeg43897.jpeg', 1, '2024-05-30 22:21:55', '2024-05-30 22:31:06'),
(12, 40, 'samba.jpeg25868.jpeg', 1, '2024-06-04 10:33:14', '2024-06-04 10:33:14'),
(13, 33, 'potato3.jpg4813.jpg', 1, '2024-06-04 21:49:28', '2024-06-04 21:49:28'),
(14, 33, 'potato2.jpg69364.jpg', 1, '2024-06-04 21:49:30', '2024-06-04 21:49:30'),
(15, 33, 'potato1.jpg70428.jpg', 1, '2024-06-04 21:49:31', '2024-06-04 21:49:31'),
(16, 34, 'brinj2.webp8218.webp', 1, '2024-06-04 22:02:36', '2024-06-04 22:02:36'),
(17, 34, 'brinj1.jpeg52810.jpeg', 1, '2024-06-04 22:02:37', '2024-06-04 22:02:37'),
(18, 33, 'potatoes4.jpg98101.jpg', 1, '2024-06-04 22:05:54', '2024-06-04 22:05:54'),
(20, 44, 'carrot3.jpg44879.jpg', 1, '2024-06-26 09:52:29', '2024-06-26 09:52:29'),
(21, 44, 'carrot2.webp76312.webp', 1, '2024-06-26 09:52:31', '2024-06-26 09:52:31'),
(23, 48, 'ap1.jpeg92342.jpeg', 1, '2024-06-26 18:54:45', '2024-06-26 18:54:45'),
(24, 51, 'guava-stock-2-600x600.jpg80954.jpg', 1, '2024-07-14 09:31:22', '2024-07-14 09:31:22'),
(25, 53, 'b1.jpg19278.jpg', 1, '2024-07-14 14:02:00', '2024-07-14 14:02:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `size` varchar(255) NOT NULL,
  `price` double(8,2) DEFAULT NULL,
  `wholesale_price` double(8,2) DEFAULT NULL,
  `stock` int(20) NOT NULL,
  `measurement_id` varchar(50) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `product_id`, `size`, `price`, `wholesale_price`, `stock`, `measurement_id`, `sku`, `status`, `created_at`, `updated_at`) VALUES
(31, 43, 'white', 200.00, 100.00, 95, 'Kilogram (kg)', 'ww1', 1, '2024-06-23 18:26:52', '2024-06-27 06:05:50'),
(32, 43, 'red', 250.00, 150.00, 100, 'Kilogram (kg)', 'd2', 1, '2024-06-24 04:48:22', '2024-06-25 04:24:30'),
(33, 41, 'red', 55.00, 50.00, 0, 'N/A', 'e1', 1, '2024-06-24 14:11:31', '2024-06-26 19:04:21'),
(34, 41, 'white', 60.00, 55.00, 20, 'N/A', 'e2', 1, '2024-06-24 14:12:34', '2024-06-25 07:32:33'),
(35, 41, 'fresh', 65.00, 60.00, 100, 'N/A', 'e5', 1, '2024-06-25 04:37:24', '2024-06-25 07:32:33'),
(36, 33, 'normal', 150.00, 0.00, 5, 'Kilogram (kg)', 'p1', 1, '2024-06-25 08:22:58', '2024-06-25 13:10:03'),
(37, 32, 'normal', 0.00, 250.00, 40, 'Kilogram (kg)', 'b1', 1, '2024-06-25 08:52:56', '2024-06-25 08:53:08'),
(38, 34, 'normal', 200.00, NULL, 5, 'Kilogram (kg)', 'bb1', 1, '2024-06-25 10:27:05', '2024-06-25 10:27:05'),
(39, 44, 'normal', 150.00, 130.00, 3, 'Kilogram (kg)', 'c11', 1, '2024-06-26 09:48:16', '2024-07-14 09:09:02'),
(40, 45, 'normal', 120.00, NULL, 10, 'Kilogram (kg)', 'g11', 1, '2024-06-26 10:05:13', '2024-06-26 10:05:13'),
(41, 46, 'normal', NULL, 130.00, 30, 'Kilogram (kg)', 'bt11', 1, '2024-06-26 10:11:01', '2024-06-26 10:11:01'),
(42, 47, 'normal', 150.00, NULL, 5, 'Kilogram (kg)', 'be11', 1, '2024-06-26 10:16:14', '2024-06-26 10:16:14'),
(43, 33, 'Indian', 130.00, NULL, 5, 'Kilogram (kg)', 'pi1', 1, '2024-06-26 11:24:21', '2024-06-26 11:24:21'),
(44, 48, 'normal', 150.00, 120.00, 25, 'Kilogram (kg)', 'aa1', 1, '2024-06-26 18:44:59', '2024-06-26 18:50:27'),
(45, 49, 'red', 140.00, 130.00, 15, 'Kilogram (kg)', 'sk2', 1, '2024-07-14 07:22:23', '2024-07-14 07:39:10'),
(46, 49, 'white', 160.00, 140.00, 13, 'Kilogram (kg)', 'sk3', 1, '2024-07-14 07:22:23', '2024-07-14 07:39:10'),
(47, 50, 'red', 350.00, 300.00, 18, 'Kilogram (kg)', 'br1', 1, '2024-07-14 09:18:57', '2024-07-14 13:58:04'),
(48, 51, 'normal', 150.00, 120.00, 20, 'Kilogram (kg)', 'gh1', 1, '2024-07-14 09:30:33', '2024-07-14 09:30:33'),
(49, 52, 'normal', 150.00, 130.00, 13, 'Kilogram (kg)', 'cc1', 1, '2024-07-14 10:13:29', '2024-07-14 10:13:29'),
(50, 52, 'new', 200.00, 180.00, 8, 'Kilogram (kg)', 'bb4', 1, '2024-07-14 12:28:45', '2024-07-14 12:28:45'),
(51, 53, 'normal', 140.00, 130.00, 20, 'Kilogram (kg)', 'bn1', 1, '2024-07-14 14:01:23', '2024-07-14 14:01:23');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `review` text NOT NULL,
  `rating` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `product_id`, `review`, `rating`, `status`, `created_at`, `updated_at`) VALUES
(5, 3, 41, 'bad', 3, 1, '2024-06-17 08:16:05', '2024-06-17 08:16:05'),
(6, 3, 43, 'good', 4, 1, '2024-06-22 15:22:53', '2024-06-22 15:22:53'),
(7, 5, 33, 'good', 5, 1, '2024-06-25 11:01:29', '2024-06-25 11:01:29'),
(8, 8, 44, 'Late delivery, but quality goods', 3, 1, '2024-06-26 09:50:27', '2024-06-26 09:50:27'),
(9, 8, 46, 'Great quality', 5, 1, '2024-06-26 11:31:30', '2024-06-26 11:31:30'),
(10, 8, 43, 'quality rice', 5, 1, '2024-06-26 11:56:14', '2024-06-26 11:56:14'),
(11, 9, 44, 'good', 5, 1, '2024-07-14 06:45:28', '2024-07-14 06:45:28'),
(12, 10, 50, 'great', 4, 1, '2024-07-14 09:25:48', '2024-07-14 09:25:48'),
(13, 11, 50, 'good', 4, 1, '2024-07-14 13:57:24', '2024-07-14 13:57:24');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(22, 'Fruits and Vegetables', 1, '2024-05-31 07:46:44', '2024-05-31 07:46:44'),
(23, 'Dairy and Eggs', 1, '2024-05-31 07:47:44', '2024-05-31 07:47:44'),
(24, 'Meat and Poultry', 1, '2024-05-31 07:48:04', '2024-05-31 07:48:04'),
(25, 'Grains', 1, '2024-05-31 08:11:50', '2024-05-31 08:11:50'),
(26, 'Quick Bites and Packs', 1, '2024-06-26 13:47:57', '2024-06-26 13:47:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `order_delivery_address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `postalcode` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `order_delivery_address`, `city`, `province`, `country`, `postalcode`, `mobile`, `email`, `email_verified_at`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'kasun gimhan', 'no 70, kandy', 'no 70, new roads, kandyyyy', 'kandy', 'central', 'SriLanka', '2000', '0122222222', 'ka@gmail.com', NULL, '$2y$10$AgYCb73nQvK2Q9R3TCDGtuOiMEoCeofc8KiBPzOSBmuwv0.HvoYeO', 1, NULL, '2024-06-08 05:07:04', '2024-06-10 05:49:45'),
(5, 'supun', 'no 2', 'no 2, kurunegala', 'kurunegala', 'central', 'SriLanka', '495', '0123456635', 's@gmail.com', NULL, '$2y$10$xjnVZLv7XNHAUm6b8Woz3.9ksx4gUnEI/qb1VzAfbJ3Q2LOe6lPw2', 1, NULL, '2024-06-08 07:24:52', '2024-06-23 10:55:52'),
(6, 'santhush', NULL, NULL, NULL, NULL, NULL, NULL, '0122222223', 'kasunsavoy@gmail.com', NULL, '$2y$10$lVFePUdPBShsYYR2vUVwY.9tAGQAas4ZyBs82JB6I6.E6f7TjVgh6', 1, NULL, '2024-06-17 07:32:53', '2024-07-14 09:47:31'),
(8, 'Nuwan Silva', 'No 127, New road, Kandy', 'No 127, New road, Kandy', 'kandy', 'central', 'SriLanka', '20000', '0723456433', 'nuwan@gmail.com', NULL, '$2y$10$YPbmXg8aXomhvnQvGdCAnur0mlB9/90w5tLlN60/amKk.jCaCqasy', 1, NULL, '2024-06-26 09:13:22', '2024-06-26 12:45:15'),
(10, 'namal', 'kandy', 'kandy', 'kandy', 'kandy', 'SriLanka', '22222', '0111111111', 'n@gmail.com', NULL, '$2y$10$UNFgycXuVqcVFmkOcTraf.6jaXQ93M4XxsBbEiawTHKRacw2qlYTC', 0, NULL, '2024-07-14 09:06:01', '2024-07-14 14:04:15'),
(11, 'kasun kodithuwakku', 'colombo', 'colombo', 'colombo', 'colombo', 'SriLanka', '24', '0122223337', 'k@gmail.com', NULL, '$2y$10$ZADDIgcEIxtWoPWkMqUMiO8r30K/Gr4lTl9O.kYLQugACQz6uyygu', 1, NULL, '2024-07-14 12:11:15', '2024-07-14 13:55:57');

-- --------------------------------------------------------

--
-- Table structure for table `user_chats`
--

CREATE TABLE `user_chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_chats`
--

INSERT INTO `user_chats` (`id`, `user_id`, `vendor_id`, `order_product_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 3, 17, 0, 'hi', '2024-06-19 12:59:49', '2024-06-19 12:59:49'),
(2, 3, 17, 0, 'm', '2024-06-19 13:03:22', '2024-06-19 13:03:22'),
(3, 3, 17, 0, ';km', '2024-06-19 13:04:45', '2024-06-19 13:04:45'),
(4, 3, 17, 0, ',', '2024-06-19 13:10:50', '2024-06-19 13:10:50'),
(5, 3, 17, 0, 'kasun', '2024-06-19 13:30:59', '2024-06-19 13:30:59'),
(6, 5, 19, 9, 'what?', '2024-06-19 23:29:02', '2024-06-19 23:29:02'),
(7, 5, 19, 11, '11', '2024-06-19 23:43:48', '2024-06-19 23:43:48'),
(8, 5, 19, 9, '10', '2024-06-19 23:45:41', '2024-06-19 23:45:41'),
(9, 5, 17, 10, '50', '2024-06-19 23:48:43', '2024-06-19 23:48:43'),
(10, 5, 19, 9, 'ok?', '2024-06-20 00:01:09', '2024-06-20 00:01:09'),
(11, 5, 17, 10, 'egg', '2024-06-20 00:03:08', '2024-06-20 00:03:08'),
(12, 5, 17, 10, 'khkk', '2024-06-20 00:14:48', '2024-06-20 00:14:48'),
(13, 5, 19, 9, 'knkk', '2024-06-20 00:20:21', '2024-06-20 00:20:21'),
(14, 5, 17, 8, 'he', '2024-06-20 00:22:46', '2024-06-20 00:22:46'),
(15, 5, 17, 8, 'll', '2024-06-20 00:31:10', '2024-06-20 00:31:10'),
(16, 5, 0, 7, 'm', '2024-06-20 00:33:07', '2024-06-20 00:33:07'),
(17, 5, 19, 9, 'gd', '2024-06-20 01:14:51', '2024-06-20 01:14:51'),
(18, 5, 17, 10, 'hnfn', '2024-06-20 01:16:38', '2024-06-20 01:16:38'),
(19, 5, 17, 10, 'mkmkm', '2024-06-20 02:16:37', '2024-06-20 02:16:37'),
(20, 3, 19, 16, 'hi', '2024-06-22 06:28:22', '2024-06-22 06:28:22'),
(21, 3, 19, 18, 'hi', '2024-06-22 15:55:22', '2024-06-22 15:55:22'),
(22, 8, 17, 32, 'Hi, this is a test message', '2024-06-26 19:17:40', '2024-06-26 19:17:40'),
(23, 10, 19, 40, 'hi', '2024-07-14 09:45:41', '2024-07-14 09:45:41'),
(24, 11, 19, 42, 'hi', '2024-07-14 12:29:48', '2024-07-14 12:29:48');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `postalcode` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `confirm` enum('No','Yes') NOT NULL DEFAULT 'No',
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `name`, `address`, `city`, `state`, `country`, `postalcode`, `mobile`, `email`, `confirm`, `status`, `created_at`, `updated_at`) VALUES
(1, 'kasun', 'no.72', 'kandy', 'central', 'srilanka', '20000', '00000000', 'k@gmail.com', 'No', 0, NULL, '2024-05-08 23:25:17'),
(17, 'supun', 'no.29', 'kandy', 'central', 'srilanka', '20000', '01233333', 'su@gmail.com', 'Yes', 0, '2024-06-04 08:34:15', '2024-06-04 06:59:25'),
(19, 'kasun', '72/1, kandy', 'kandy', 'central', 'srilanka', '20000', '011234567', 'kasun@gmail.com', 'Yes', 1, '2024-06-06 15:25:01', '2024-06-07 01:44:50'),
(23, 'Dilshan Perera', NULL, NULL, NULL, NULL, NULL, '0776964765', 'dilshan@gmail.com', 'Yes', 1, '2024-06-26 09:22:33', '2024-07-14 09:46:36'),
(24, 'raj', NULL, NULL, NULL, NULL, NULL, '01222222', 'r@gmail.com', 'Yes', 1, '2024-07-14 06:54:33', '2024-07-14 14:03:26');

-- --------------------------------------------------------

--
-- Table structure for table `vendors_bank_details`
--

CREATE TABLE `vendors_bank_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendors_id` int(11) NOT NULL,
  `accountholder_name` varchar(255) DEFAULT NULL,
  `account_no` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `bank_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors_bank_details`
--

INSERT INTO `vendors_bank_details` (`id`, `vendors_id`, `accountholder_name`, `account_no`, `bank_name`, `bank_code`, `created_at`, `updated_at`) VALUES
(1, 1, 'kasun kodi', '01220401111', 'commercial kandy', '012', NULL, '2024-05-10 22:10:37'),
(2, 17, 'supunya', '34322352', 'commercial', '21', NULL, NULL),
(3, 19, 'kasung', '2004657767', 'commercial', '20', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendors_business_details`
--

CREATE TABLE `vendors_business_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendors_id` int(11) NOT NULL,
  `business_name` varchar(255) NOT NULL,
  `business_address` varchar(255) DEFAULT NULL,
  `business_city` varchar(255) DEFAULT NULL,
  `business_country` varchar(255) DEFAULT NULL,
  `business_postalcode` varchar(255) DEFAULT NULL,
  `business_mobile` varchar(255) DEFAULT NULL,
  `business_email` varchar(255) DEFAULT NULL,
  `farming_practices` text DEFAULT NULL,
  `certifications` varchar(255) DEFAULT NULL,
  `farm_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors_business_details`
--

INSERT INTO `vendors_business_details` (`id`, `vendors_id`, `business_name`, `business_address`, `business_city`, `business_country`, `business_postalcode`, `business_mobile`, `business_email`, `farming_practices`, `certifications`, `farm_image`, `created_at`, `updated_at`) VALUES
(1, 1, 'farmkasssss', 'no.72', 'kandy', 'silanka', '20000', '0111188888', 'fam@gmail.com', '', '', '', NULL, '2024-05-09 00:59:45'),
(2, 17, 'suFARM', 'sfgsdg', 'sfgsg', 'sgs', '121', '2322222222', 'su@gmail.com', 'organic', 'SLS', '', NULL, '2024-06-04 09:54:28'),
(3, 19, 'kasun traders', 'no.29, kandy', 'kandy', 'srilanka', '20000', '0233333333', 'kasun@gmail.com', 'organic rice', 'SLS', '72683.jpg', NULL, '2024-06-06 10:58:29'),
(4, 23, 'Dilshan traders', 'no.45, ab road, Galle', 'Galle', 'Sri Lanka', '234445', '0133333333', 'dilshan@gmail.com', 'n/a', 'n/a', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wholesale_quantities`
--

CREATE TABLE `wholesale_quantities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `products_id` int(11) NOT NULL,
  `minimum_quantity` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wholesale_quantities`
--

INSERT INTO `wholesale_quantities` (`id`, `products_id`, `minimum_quantity`, `status`, `created_at`, `updated_at`) VALUES
(1, 43, 100, 1, NULL, NULL),
(2, 41, 50, 1, NULL, NULL),
(3, 44, 20, 1, NULL, NULL),
(4, 46, 10, 1, NULL, NULL),
(5, 48, 7, 1, NULL, NULL),
(7, 49, 6, 1, '2024-07-14 07:50:59', '2024-07-14 07:51:23'),
(8, 50, 10, 1, '2024-07-14 09:19:09', '2024-07-14 09:19:09'),
(9, 51, 10, 1, '2024-07-14 09:30:52', '2024-07-14 09:30:52'),
(10, 52, 5, 1, '2024-07-14 10:13:49', '2024-07-14 10:13:49'),
(11, 53, 5, 1, '2024-07-14 14:01:37', '2024-07-14 14:01:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `biddings`
--
ALTER TABLE `biddings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
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
-- Indexes for table `measurements`
--
ALTER TABLE `measurements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_item_statuses`
--
ALTER TABLE `order_item_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_filters`
--
ALTER TABLE `products_filters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_filter_values`
--
ALTER TABLE `products_filter_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_images`
--
ALTER TABLE `products_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_chats`
--
ALTER TABLE `user_chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vendors_email_unique` (`email`);

--
-- Indexes for table `vendors_bank_details`
--
ALTER TABLE `vendors_bank_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors_business_details`
--
ALTER TABLE `vendors_business_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wholesale_quantities`
--
ALTER TABLE `wholesale_quantities`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `biddings`
--
ALTER TABLE `biddings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
-- AUTO_INCREMENT for table `measurements`
--
ALTER TABLE `measurements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `order_item_statuses`
--
ALTER TABLE `order_item_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `products_filters`
--
ALTER TABLE `products_filters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products_filter_values`
--
ALTER TABLE `products_filter_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_chats`
--
ALTER TABLE `user_chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `vendors_bank_details`
--
ALTER TABLE `vendors_bank_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vendors_business_details`
--
ALTER TABLE `vendors_business_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wholesale_quantities`
--
ALTER TABLE `wholesale_quantities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
