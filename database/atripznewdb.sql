-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2025 at 06:59 AM
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
-- Database: `gooseglasses_v2`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutuses`
--

CREATE TABLE `aboutuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `about_desc` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aboutuses`
--

INSERT INTO `aboutuses` (`id`, `title`, `about_desc`, `created_at`, `updated_at`) VALUES
(1, 'Your ultimate destination for premium eyewear', '<p class=\"text-justify\">Welcome to Goose Glasses, your ultimate \r\ndestination for premium eyewear. From trendy sunglasses to \r\nprecision-crafted prescription glasses and contact lenses, we cater to \r\nall your vision needs.</p>\r\n                        <p class=\"text-justify\">Founded in February, \r\n2021 by Shareyar Hossain Samir student of Northern University of \r\nBangladesh. Goose Glasses began as a small business start from facebook \r\nmarketplace. Our passion for enhancing sight and style has driven us to \r\nexpand our reach and continuously innovate our offerings.</p>\r\n                        <p class=\"text-justify\">Our mission is to \r\nprovide exceptional eyewear that not only improves vision but also \r\nenhances personal style. We believe in quality, customer satisfaction, \r\nand the importance of accessible eye care for everyone.\"</p>\r\n                        <p class=\"text-justify\">We pride ourselves on \r\nour diverse range of high-quality products sourced from the best \r\nmanufacturers worldwide. Whether you’re looking for the latest in UV \r\nprotection with our designer sunglasses or need custom-made progressive \r\nlenses, we have you covered.\"</p>\r\n                        <p class=\"text-justify\">At Gosse Glasses, every \r\npair of glasses is a promise of quality, comfort, and style. We are \r\ndedicated to providing a personalized shopping experience, ensuring each\r\n customer leaves satisfied with eyewear perfectly suited to their needs \r\nand lifestyle.</p>\r\n                        <p class=\"text-justify\">Explore our collection \r\nonline or visit us at our store in Shop 108, Twin Tower Concord Shopping\r\n Complex, Shnatinagar, Dhaka-1217. Follow us on Facebook and Instagram \r\nfor the latest styles and exclusive offers. We’re excited to help you \r\nfind your perfect pair of glasses!</p><p></p>', '2024-03-30 01:15:58', '2024-05-07 04:57:43');

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `header` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `btntext` int(255) DEFAULT NULL,
  `shop_url` varchar(255) DEFAULT NULL,
  `is_featured` varchar(255) DEFAULT NULL,
  `is_feature_no` varchar(255) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `header`, `title`, `btntext`, `shop_url`, `is_featured`, `is_feature_no`, `image`, `created_at`, `updated_at`) VALUES
(7, 'Eid Sale', 'Save up to 30% on everything', NULL, NULL, '1', '1', 'ads_banner/1717576512.jpg', '2024-05-02 10:57:10', '2024-06-05 08:35:12');

-- --------------------------------------------------------

--
-- Table structure for table `applied_coupones`
--

CREATE TABLE `applied_coupones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `coupone_id` bigint(20) UNSIGNED NOT NULL,
  `coupone_code` varchar(255) NOT NULL,
  `is_ordered` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_image` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_image`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(5, 'SWAROVSKI', 'SWAROVSKI_1717142551.jpeg', 'golglass', '1', '2024-04-17 04:23:26', '2024-05-31 08:02:31'),
(7, 'Z Charment', 'Z Charment_1716970596.jpg', 'z-charment', '1', '2024-05-29 08:16:36', '2024-05-29 08:16:36'),
(12, 'GUCCI', 'Gucci_1717128274.jpeg', 'gucci', '1', '2024-05-31 04:04:34', '2024-05-31 08:06:34'),
(14, 'Dior', 'Dior_1717558502.png', 'dior', '1', '2024-05-31 04:10:36', '2024-06-05 03:35:02'),
(15, 'CHANEL', 'CHANEL_1717142822.jpeg', 'chanel', '1', '2024-05-31 08:07:02', '2024-05-31 08:07:02'),
(16, 'BVLGARI', 'BVLGARI_1717142963.jpeg', 'bvlgari', '1', '2024-05-31 08:09:23', '2024-05-31 08:09:23'),
(18, 'PRADA', 'PRADA_1717143070.jpeg', 'prada', '1', '2024-05-31 08:11:10', '2024-05-31 08:11:10'),
(19, 'LOUIS VUITTON', 'LOUIS VUITTON_1717143136.jpeg', 'louis-vuitton', '1', '2024-05-31 08:12:16', '2024-05-31 08:12:16'),
(20, 'TOM FORD', 'TOM FORD_1717143520.jpeg', 'tom-ford', '1', '2024-05-31 08:18:40', '2024-05-31 08:18:40'),
(21, 'CARRERA', 'CARRERA_1717143591.png', 'carrera', '1', '2024-05-31 08:19:51', '2024-05-31 08:19:51'),
(22, 'CARTIER', 'CARTIER_1717143641.png', 'cartier', '1', '2024-05-31 08:20:41', '2024-05-31 08:20:41'),
(24, 'Non Branded', 'Non Branded_1717178146.jpg', 'non-branded', '1', '2024-05-31 17:55:46', '2024-05-31 17:55:46'),
(25, 'FENDI', 'FENDI_1717182105.png', 'fendi', '1', '2024-05-31 19:01:45', '2024-05-31 19:01:45'),
(26, 'Burberry', 'Burberry_1717183305.png', 'burberry', '1', '2024-05-31 19:21:45', '2024-05-31 19:21:45'),
(27, 'TITAN', 'TITAN_1717558380.jpg', 'titan', '1', '2024-06-01 07:08:21', '2024-06-05 03:33:00'),
(28, 'Reebook', 'Reebook_1717228534.jpg', 'reebook', '1', '2024-06-01 07:55:34', '2024-06-01 07:55:34'),
(29, 'DAHAB', 'DAHAB_1719299766.jpg', 'dahab', '1', '2024-06-25 07:16:06', '2024-06-25 07:16:06'),
(30, 'ANGEL SOFT', 'ANGEL SOFT_1720031481.png', 'angel-soft', '1', '2024-07-03 18:31:21', '2024-07-03 18:31:21');

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `camp_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `camp_offer` varchar(255) DEFAULT '0',
  `slug` varchar(255) NOT NULL,
  `status` enum('Draft','Published') NOT NULL DEFAULT 'Draft',
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `camp_products`
--

CREATE TABLE `camp_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `campaign_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `camp_price` decimal(8,2) DEFAULT NULL,
  `camp_qty` decimal(8,2) DEFAULT NULL,
  `start_date` decimal(8,2) DEFAULT NULL,
  `end_date` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categories_id` varchar(255) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `parent_category` varchar(255) DEFAULT NULL,
  `category_icon` varchar(255) DEFAULT NULL,
  `category_image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories_id`, `category_name`, `parent_category`, `category_icon`, `category_image`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(25, 'mFglX50jhM2z', 'Eyeglasses', NULL, NULL, 'Eyeglasses_1717267781.JPEG', 'eyeglasses', '1', '2024-05-29 08:12:34', '2024-06-01 18:49:41'),
(26, 'iVEZIUwqpMoQ', 'Womens Eyewear', NULL, 'category_image/icons/icon_1717267813.JPEG', 'Women\'s Eyewear_1716970457.jpg', 'womens-eyewear', '1', '2024-05-29 08:14:17', '2025-01-06 04:22:23'),
(27, 'Ygpdq26avPZV', 'Mens Eyewear', NULL, 'category_image/icons/icon_1716970524.jpg', 'Men\'s Eyewear_1716970524.jpg', 'mens-eyewear', '1', '2024-05-29 08:15:24', '2025-01-06 04:22:37'),
(30, 'QbjeYXswykFO', 'Sunglasses', NULL, NULL, 'Sunglasses_1717065051.png', 'sunglasses', '1', '2024-05-30 10:30:51', '2024-06-01 18:50:58'),
(31, 'VjcbnZ3Ld4FW', 'Mens Sunglasses', 'Sunglasses', NULL, 'Men\'s Sunglasses_1717065079.png', 'mens-sunglasses', '1', '2024-05-30 10:31:19', '2025-01-06 05:15:46'),
(32, 'bvcD7toXQyhG', 'Womens Sunglasses', 'Sunglasses', NULL, 'Women\'s Sunglasses_1717065131.png', 'womens-sunglasses', '1', '2024-05-30 10:32:11', '2025-01-06 05:15:38'),
(33, 'J0hQqD6PZ38X', 'Contact Lenses', NULL, 'category_image/icons/icon_1717223950.jpg', 'Contact Lenses_1717223950.jpg', 'contact-lenses', '1', '2024-06-01 06:39:10', '2024-06-01 06:39:10'),
(34, '9xmXnU6qj7QW', 'Dahab', 'Contact Lenses', 'category_image/icons/icon_1717224053.png', 'Dahab_1717224053.png', 'dahab', '1', '2024-06-01 06:40:53', '2024-06-01 06:40:53'),
(36, 'd2oRybMUCc1Y', 'Angel Soft', 'Contact Lenses', 'category_image/icons/icon_1720025757.png', 'Angel Soft_1720025757.png', 'angel-soft', '1', '2024-07-03 16:55:57', '2024-07-03 16:55:57');

-- --------------------------------------------------------

--
-- Table structure for table `category_size_headers`
--

CREATE TABLE `category_size_headers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `size_header_id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color_name` varchar(255) NOT NULL,
  `color_code` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `color_name`, `color_code`, `status`, `created_at`, `updated_at`) VALUES
(10, 'Black', 'rgba(0, 0, 0, 1)', 1, '2024-02-07 02:07:26', '2024-02-07 02:07:26'),
(11, 'White', 'rgba(255, 255, 255, 1)', 1, '2024-02-07 02:07:35', '2024-02-07 02:07:35'),
(16, 'Blue', 'rgba(73, 128, 237, 1)', 1, '2024-05-29 08:15:34', '2024-05-31 18:23:00'),
(17, 'Red', 'rgba(219, 4, 4, 1)', 1, '2024-05-29 08:16:01', '2024-05-31 18:34:38'),
(18, 'Maroon', 'rgba(209, 35, 35, 1)', 1, '2024-05-30 10:42:47', '2024-05-30 10:45:50'),
(19, 'Mint', 'rgba(117, 188, 201, 1)', 1, '2024-05-30 10:43:40', '2024-05-30 10:43:40'),
(20, 'Purple', 'rgba(174, 124, 191, 1)', 1, '2024-05-31 02:47:16', '2024-05-31 02:47:16'),
(21, 'Gray', 'rgba(135, 123, 123, 1)', 1, '2024-05-31 02:48:02', '2024-05-31 02:48:02'),
(22, 'Pitch', 'rgba(194, 159, 159, 1)', 1, '2024-05-31 03:00:09', '2024-05-31 03:00:09'),
(23, 'Golden', 'rgba(217, 156, 50, 1)', 1, '2024-05-31 03:03:01', '2024-05-31 03:03:01'),
(24, 'Transparent', 'rgba(247, 247, 247, 1)', 1, '2024-05-31 03:03:31', '2024-05-31 03:03:31'),
(25, 'Deep Purple', 'rgba(183, 21, 237, 1)', 1, '2024-05-31 03:08:56', '2024-05-31 03:09:15'),
(26, 'Rosepink', 'rgba(251, 198, 207, 1)', 1, '2024-05-31 03:20:42', '2024-11-12 14:10:43'),
(27, 'Off-White', 'rgba(204, 182, 182, 0.9)', 1, '2024-05-31 03:31:15', '2024-05-31 03:31:15'),
(28, 'Brown', 'rgba(144, 80, 63, 1)', 1, '2024-05-31 18:57:00', '2024-05-31 18:57:13'),
(29, 'Yellow', 'rgba(236, 252, 5, 1)', 1, '2024-06-01 07:09:06', '2024-06-01 07:09:13'),
(30, 'Olive', 'rgba(128, 128, 0, 1)', 1, '2024-06-03 17:55:53', '2024-06-03 17:55:53'),
(31, 'Green', 'rgba(0, 255, 0, 1)', 1, '2024-06-05 03:13:33', '2024-06-05 03:13:33'),
(32, 'Dark Gray', 'rgba(169, 169, 169, 1)', 1, '2024-09-08 07:47:19', '2024-09-08 07:47:19');

-- --------------------------------------------------------

--
-- Table structure for table `contactinfos`
--

CREATE TABLE `contactinfos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) NOT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `officehour` varchar(255) DEFAULT NULL,
  `google_map` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contactinfos`
--

INSERT INTO `contactinfos` (`id`, `phone`, `whatsapp`, `email`, `address`, `officehour`, `google_map`, `created_at`, `updated_at`) VALUES
(1, '01303027936', '01303027936', 'gooseglassesbd@gmail.com', 'Shop 108, Twin Tower Concord Shopping Complex, Shnatinagar, Dhaka-1217', '10:00 - 18:00, Mon - Sat', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1125.8369214148681!2d90.41259511318971!3d23.742595810888222!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b93a578a5aa1%3A0x5318b8a1c1d7d035!2sGoose%20Glasses!5e1!3m2!1sen!2sbd!4v1736224814195!5m2!1sen!2sbd\" width=\"100%\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '2024-05-06 01:11:04', '2025-01-06 22:40:36');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupons_title` varchar(255) NOT NULL,
  `coupons_code` varchar(255) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `free_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL,
  `percent_value` int(11) DEFAULT NULL,
  `fixed` double DEFAULT NULL,
  `discounts_type` enum('percent','fixed') NOT NULL DEFAULT 'percent',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `billing_address` varchar(255) DEFAULT NULL,
  `division` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `loyalty_point` varchar(255) NOT NULL DEFAULT '0',
  `status` enum('registerd','not registerd') NOT NULL DEFAULT 'not registerd',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `firstName`, `lastName`, `phone`, `email`, `billing_address`, `division`, `district`, `area`, `loyalty_point`, `status`, `created_at`, `updated_at`) VALUES
(68, 'MD RIFAT', 'HOSSAIN', '01738758133', 'rifatakhon@gmail.com', '522/B, North Sahjahanpur', '3', '1', '459', '10', 'registerd', '2024-05-04 10:33:31', '2024-05-04 10:33:31'),
(73, 'Sanjana', 'Aishy', '01317361745', 'Aishy575@gmail.com', 'Bashundhara residential area block I mashaallah trade center walton office r opposite lift 6', '3', '1', '460', '10', 'registerd', '2024-06-08 07:58:05', '2024-06-08 07:58:05'),
(74, 'Shareyar', 'Hossain', '01303027936', 'gooseglassesbd@gmail.com', '13 no goli, modhubag, mogbazar', '3', '1', '492', '10', 'registerd', '2024-06-11 08:03:35', '2024-06-11 08:03:35'),
(75, 'Devopria', 'Das', '01611056124', 'devopria.das@gmail.com', '43/1, shorojoni home. Sylhet sadar. Sylhet', '7', '54', '1347', '10', 'registerd', '2024-06-12 10:17:28', '2024-06-12 10:17:28'),
(76, 'Lamyea', 'Khandokar', '01823934372', 'lavana.hayat@gmail.com', '22/1, badda Nagar lane, Hazaribag park, Dhaka - 1205(munshi bari masjid por 2nd building 6th floor)', '3', '1', '483', '10', 'registerd', '2024-06-13 10:15:31', '2024-06-13 10:15:32'),
(77, 'Zakaria', 'Hossain', 'Shoumik', 'zakaria46325@gmail.com', 'Modhubag', '3', '1', '456', '10', 'registerd', '2024-06-24 05:00:09', '2024-06-24 05:00:10'),
(78, 'Bibi Jainab', 'Juma', '+880 1626-565948', 'valkyriejuma@gmail.com', 'Adress:mirrerhat,borua para road,nurani madrasha badsha hazir bari', '2', '43', '227', '10', 'registerd', '2024-06-24 17:37:55', '2024-06-24 17:37:55'),
(79, 'Bibi Jainab', 'Juma', '+880 1884291180', 'ikhtearahmed488@gmail.com', 'Adress:mirrerhat,borua para road,nurani madrasha badsha hazir bari', '2', '43', '227', '10', 'registerd', '2024-06-24 17:42:52', '2024-06-24 17:42:52'),
(80, 'Aiman', 'Tasnim', '01963410308', 'aimantasnimx@gmail.com', 'Akhter hamid khan building,ranir Dighir par,kandirpar,cumilla', '2', '44', '288', '10', 'registerd', '2024-06-25 10:33:57', '2024-06-25 10:33:57'),
(103, 'Manashi', 'Chowdhury', '01715-035429', '4204.riditapaulsneha@gmail.com', 'House# 272/21/1, Road#7, Baten Nagar Abashik Alaka, Mazar Road, Mirpur-1,, Dhaka', '3', '1', '472', '10', 'registerd', '2024-06-27 07:10:12', '2024-06-27 07:10:12'),
(104, 'Tester', 'Today', '01682016840', 'test@gmail.com', 'Dhkka', '3', '2', '503', '10', 'registerd', '2024-07-01 21:28:59', '2024-07-01 21:28:59'),
(105, 'Humayra Ibnat', 'Ankur', '01687702758', '1dibnatankur@gmail.com', 'Ayesha heritage, Road 10,  house 3, block A, Nobodoy housing society,  Mohammadpur,  Dhaka, 1207', '3', '1', '473', '10', 'registerd', '2024-07-03 15:43:27', '2024-07-03 15:43:27'),
(107, 'Mariam', 'Safa', '01999980081', 'nikhatrahman69@gmail.com', NULL, NULL, NULL, NULL, '0', 'registerd', '2024-07-06 10:30:06', '2024-07-06 10:30:06'),
(108, 'Shareyar', 'Hossain', '88888888888', 'etc@gmail.com', '13 no goli, modhubag, mogbazar', '2', '46', '338', '10', 'registerd', '2024-07-08 10:00:59', '2024-07-08 10:00:59'),
(109, 'Sadia', 'Ibnat', '01319722143', 'sadia.ibnat.esha@gmail.com', 'Flat 6E, house 74, road 11/A, dhanmondi', '3', '1', '458', '10', 'registerd', '2024-07-10 14:40:59', '2024-07-10 14:41:00'),
(110, 'Munna', 'Munna', '01985258029', 'Munna@gmail.com', 'Ghorashal Palash Narsingdi Ghorashal Bazar', '3', '12', '730', '10', 'registerd', '2024-07-13 08:23:30', '2024-07-13 08:23:30'),
(111, 'Test', 'User', '0141474747', 'test@user.com', 'dhaka', '3', '1', '452', '10', 'registerd', '2024-07-14 06:55:30', '2024-07-14 06:55:31'),
(112, 'Shoma', 'Akter', '01748018082', 'tasnimshoma6969@gmail.com', 'Dhaka Cantonment, cmh er sathe, sebanir building, lift 9e', '3', '1', '455', '10', 'registerd', '2024-07-29 20:32:04', '2024-07-29 20:32:04'),
(113, 'Anila', 'Alam', '01746846062', 'wanaizazahira@gmail.vom', 'Elephant road,274nakshi jahan, flat no3-D', '3', '1', '483', '10', 'registerd', '2024-08-10 14:20:13', '2024-08-10 14:20:13'),
(114, 'Tahmina', 'Tabassum', '+8801991413224', 'bonytahmina@gmail.com', 'Beparipara tangail', '3', '17', '826', '10', 'registerd', '2024-08-12 06:44:29', '2024-08-12 06:44:29'),
(115, 'Sharoat', 'Jahan', '01322616757', 'dr.sharoatjahan@gmail.com', 'Sirajdikhan general hospital', '3', '9', '649', '10', 'registerd', '2024-08-12 08:35:22', '2024-08-12 08:35:22'),
(116, 'nafisa', ' ', '01305733342', ' ', 'qbal Road, Mohammadpur, Dhaka', NULL, NULL, NULL, '0', 'not registerd', '2024-08-12 10:18:06', '2024-08-12 10:18:06'),
(117, 'Pipasha', 'Khan', '01317086984', 'pipasha011@gmail.com', 'Kalisankarpur, sonar bangla masjid', '4', '60', '940', '10', 'registerd', '2024-08-12 15:08:23', '2024-08-12 15:08:23'),
(118, 'cheaking', 'sagor', '01640357386', 'mdnnnsagoor@gmail.com', 'satkkhira shikri kuskhali', '1', '36', '53', '10', 'registerd', '2024-08-13 01:01:57', '2024-08-13 01:01:57'),
(119, 'mst', 'rabieya', '01884238552', 'mstrabiyakhatun21651@gmail.com', 'badsha mia school road', '3', '1', '466', '10', 'registerd', '2024-08-14 10:35:43', '2024-08-14 10:35:43'),
(120, 'Shipali  nur', 'Asma', '01783893948', 'shipali208@gmail.com', 'Khulna', '4', '59', '906', '10', 'registerd', '2024-08-14 10:53:16', '2024-08-14 10:53:16'),
(121, 'Shareyar', 'Hossain', '01795303012', 'samir@gmail.com', '13 no goli, modhubag, mogbazar', '2', '43', '187', '10', 'registerd', '2024-08-14 11:28:00', '2024-08-14 11:28:00'),
(122, 'Osam', 'Gani', '+919319510584', 'mdarifoc28@gmail.com', 'New Delhi, Dhaka,', '2', '41', '124', '10', 'registerd', '2024-08-14 12:20:22', '2024-08-14 12:20:22'),
(123, 'MD SAYED AHAMED', 'TALHA', '01892087281', 'Sayedahmedtalha5@gmail.com', 'badsha mia school road', '3', '1', '468', '10', 'registerd', '2024-08-14 13:10:32', '2024-08-14 13:10:32'),
(124, 'Maria', 'Zaman', '01704084629', 'arifakhanom432@gmail.com', '514 Malibag Railgate', '3', '1', '485', '10', 'registerd', '2024-08-14 14:12:53', '2024-08-14 14:12:53'),
(125, 'Fahmida', 'Nahid', '01611010402', 'f.i.nahid200778@gmail.com', 'Hotel highway Inn, Mia Bazar, Chouddagram, Cumilla', '2', '44', '286', '10', 'registerd', '2024-08-15 18:44:08', '2024-08-15 18:44:08'),
(127, 'Nishat Naila', 'Nilima', '01558956236', 'nishatnailanilima@gmail.com', 'House- 826/27 (7th floor, Flat- A7), Road- 21, Block- G, Bashundhara R/A, Dhaka- 1229', '3', '1', '470', '10', 'registerd', '2024-08-16 23:29:46', '2024-08-16 23:29:46'),
(128, 'Shreya', 'Saha', '01717150158', 'shreyasaha_123viqi@yahoo.com', NULL, NULL, NULL, NULL, '0', 'registerd', '2024-08-18 00:46:53', '2024-08-18 00:46:53'),
(129, 'Asif', 'Khan', '01852121218', 'asifkhanovib@gmail.com', 'Bagdha Bazare, Agailjhara, Barishal.', '1', '35', '11', '10', 'registerd', '2024-08-21 06:54:38', '2024-08-21 06:54:38'),
(131, 'Shahana', 'Sharmin', '01842155776', 'shahana.stacademy@gmail.com', 'flat 4A, house 24, road 20, sector 4', '3', '1', '502', '10', 'registerd', '2024-08-21 13:27:43', '2024-08-21 13:27:43'),
(132, 'Semonte', 'Dewan', '01741434518', 'dewan1984c5@gmail.com', 'Plot-4,Rupnogor main road, Mirpur', '3', '1', '472', '10', 'registerd', '2024-08-22 03:22:51', '2024-08-22 03:22:51'),
(133, 'Tanseer', 'Ahamed', '01730716727', 'ahamedtanseer@gmail.com', 'Grameen Abashon, H-712/19/40, R-10, Baitul Aman Housing, Adabor', '3', '1', '473', '10', 'registerd', '2024-08-22 11:46:40', '2024-08-22 11:46:40'),
(134, 'Arifa', 'arabi', '+8801717609386', 'arifaarabi90@gmail.com', 'Gaibandha mastar para pulse clinic', '6', '27', '1149', '10', 'registerd', '2024-08-28 15:48:38', '2024-08-28 15:48:38'),
(135, 'Abul', 'Hashem', '01819999961', 'sadiya.minecraftsteve49@gmail.com', 'Main Road, College Para, Tangail Sadar, Tangail', '3', '17', '826', '10', 'registerd', '2024-08-28 15:55:58', '2024-08-28 15:55:58'),
(136, 'arif', 'Hossen', '01601958560', 'arifhossen853@gmail.com', 'Dhaka, Bangladesh', '3', '1', '469', '10', 'registerd', '2024-08-28 16:19:42', '2024-08-28 16:19:42'),
(137, 'Zannatun Nayeem Shifa', 'Shifa', '01756877610', 'shifa0221@gmail.com', 'House no 77 -Ga, Shantinibash Bangladesh Air force officers quarters, (beside PM.office, before Lucas more), Tejgaon, Dhaka.', '3', '1', '500', '10', 'registerd', '2024-08-29 13:13:27', '2024-08-29 13:13:27'),
(138, 'dfghjgf', 'Hossainhgfdjfgh', '0130302712', 'sssssamir2fdghfg001@gmail.com', '13 no goli, modhubag, mogbazardfgh', '1', '35', '19', '10', 'registerd', '2024-08-31 06:54:25', '2024-08-31 06:54:25'),
(139, 'FGDFGDFG', 'GFDGDFGDSFRG', '013030271414', 'sssssamir200FGDDF1@gmail.com', '13 no goli, modhubag, mogbazarDFG', '3', '1', '453', '10', 'registerd', '2024-09-01 01:58:37', '2024-09-01 01:58:37'),
(140, 'Jahin', 'Tasnim', '01879661477', 'jahintasin500@gmail.com', 'Shimla house, B Ed college road, Chawkbazar', '2', '43', '192', '10', 'registerd', '2024-09-06 12:16:53', '2024-09-06 12:16:53'),
(141, 'Nasrin', 'Akter', '+8801634240112', 'dalianasrin149@gmail.com', 'Purohitpara', '8', '10', '686', '10', 'registerd', '2024-09-08 05:41:46', '2024-09-08 05:41:46'),
(142, 'Israt', 'Siddiqui', '+8801821349754', 'shantaislam560660@gmail.com', 'Poshu haspatal road, Fosolandi, Bhuapur, Tangail', '3', '17', '785', '10', 'registerd', '2024-09-08 09:31:12', '2024-09-08 09:31:13'),
(143, 'Progga', 'Nag', '01716325170', 'adritanagpaul@gmail.com', '3/7 Asad avenue, Flat A9', '3', '1', '473', '10', 'registerd', '2024-09-09 14:32:55', '2024-09-09 14:32:55'),
(144, 'UFtYAT5h', 'MeMgwplz', 'mjr1pUtl', 'u8c6_generic_3e613316_gooseglasses.com@serviseantilogin.com', NULL, NULL, NULL, NULL, '0', 'registerd', '2024-09-11 11:59:07', '2024-09-11 11:59:07'),
(145, 'Atia', 'Ferdos', '01731337904', 'atia.ferdos1988@gmail.com', '349/2, Uposohor, Rajshahi', '5', '24', '1099', '10', 'registerd', '2024-09-11 14:50:20', '2024-09-11 14:50:20'),
(146, 'Poly Shohel', 'Shohel', '01755529210', 'mariafatema13@gmail.com', 'Dhanmondi road 8 (Anwar khan modern Hospital road), house 9, flat B3', '3', '1', '483', '10', 'registerd', '2024-09-13 10:28:56', '2024-09-13 10:28:56'),
(147, 'Taniya', 'Tonni', '01761493513', 'mawa90994@gmail.com', 'বিশ্বনাথ,মাইজদী,নোয়াখালী', '2', '49', '429', '10', 'registerd', '2024-09-15 10:45:08', '2024-09-15 10:45:08'),
(148, 'ZA5IMuDi', 'yPW5RNng', '2M2P0R1u', '740Q_generic_3e613316_gooseglasses.com@serviseantilogin.com', NULL, NULL, NULL, NULL, '0', 'registerd', '2024-09-16 09:15:24', '2024-09-16 09:15:24'),
(149, 'Rafayel', 'Alam', '01845315700', 'safinadewan26@gmail.com', '260/1 (near rayer bazar community center) Jafarabad Shankar Dhaka', '3', '1', '473', '10', 'registerd', '2024-09-21 12:17:11', '2024-09-21 12:17:12'),
(150, 'Tajin', 'Bhuiyan', '01711152350', 'tajin.bhuiyan99@gmail.com', 'Shawpno Chaya Housing Society, Dewanbari Road(Bismillah-polli Opposite), Azampur Kacha bazaar, Dakshin khan, Uttara, Dhaka.', '3', '1', '502', '10', 'registerd', '2024-09-27 14:15:18', '2024-09-27 14:15:19'),
(151, 'Nusaiba', 'Zaman', '01968859869', 'nusaibazaman00@gmail.com', 'Mirpur DOHS , Road-6, avenue-3 , house-384', '3', '1', '472', '10', 'registerd', '2024-09-28 14:56:01', '2024-09-28 14:56:01'),
(152, 'Nipa', 'Islam', '01776024553', 'nipa.28280@gmail.com', 'B-5/22 ,Tiyabari, Genda, Savar, Dhaka', '3', '1', '493', '10', 'registerd', '2024-09-29 03:49:48', '2024-09-29 03:49:48'),
(153, 'DusBVDOh', 'rJB7dLB5', '6Ovrl8r2', 'nfbh_generic_3e613316_gooseglasses.com@serviseantilogin.com', NULL, NULL, NULL, NULL, '0', 'registerd', '2024-10-01 21:14:12', '2024-10-01 21:14:12'),
(154, 'Barsha', 'Saha', '01876572709', 'barshaa7865@gmail.com', 'Thanapara, Gopalgonj sodor', '3', '4', '545', '10', 'registerd', '2024-10-03 23:59:50', '2024-10-03 23:59:51'),
(155, 'Farhana', 'Sharif', '01678072550', 'fsharif51@gmail.com', 'Maa Bhaban, Road 1,  1st Floor, South Khulshi, Vip City Corporation Area, Chittagong', '2', '43', '210', '10', 'registerd', '2024-10-04 16:54:46', '2024-10-04 16:54:47'),
(156, 'Abu', 'Talha', '01533507046', 'talhamd06@gmail.com', 'Katerpara Ali Soner Lane (Seba Poly Clinic)', '5', '18', '998', '10', 'registerd', '2024-10-08 06:02:36', '2024-10-08 06:02:36'),
(157, 'Noor E Siddika', 'Swapnil', '01624211952', 'noorswapnil007@gmail.com', 'H 296, Road 6, Block i, Bashundhara R/A', '3', '1', '470', '10', 'registerd', '2024-10-08 15:31:13', '2024-10-08 15:31:13'),
(158, 'Sumaiya', 'Mohammed', '01789624634', 'Fahmida.mohammed94@gmail.com', 'Near mahmud cng pump and little buds kindergarten school, beanibazar', '7', '54', '1306', '10', 'registerd', '2024-10-10 13:19:13', '2024-10-10 13:19:13'),
(159, 'Maha', 'Jashim', '01791639668', 'mahajashim41@gmail.com', 'Cox\'s bazar,court bazar', '2', '45', '327', '10', 'registerd', '2024-10-13 11:08:05', '2024-10-13 11:08:05'),
(160, 'Ummay', 'Honey', '01521521615', 'ummayhoney422@gmail.com', 'Jamalchor', '3', '1', '464', '10', 'registerd', '2024-10-15 01:13:57', '2024-10-15 01:13:57'),
(161, 'Jannat', 'Mitu', '01840161521', 'jannatmitu0022@gmail.com', 'Wasa, High level er majhamajhi, 38/A, nigar mansion, Chittagong', '2', '43', '192', '0', 'registerd', '2024-10-15 07:14:31', '2024-10-15 07:19:45'),
(162, 'Sanjida', 'Noor', '01897833376', 'arishazaman318859@gmail.com', NULL, NULL, NULL, NULL, '0', 'registerd', '2024-10-16 12:22:01', '2024-10-16 12:22:01'),
(163, 'Deveshi', 'Morelock', '+15056488420', 'ssiazmsiauj@dont-reply.me', NULL, NULL, NULL, NULL, '0', 'registerd', '2024-10-17 16:29:47', '2024-10-17 16:29:47'),
(164, 'dmRtTWcSJnNRx', 'nCNwPVMqWVeNF', '8235877908', 'betct695@gmail.com', NULL, NULL, NULL, NULL, '0', 'registerd', '2024-10-21 04:40:20', '2024-10-21 04:40:20'),
(165, 'Nazifa', 'Islam', '01309323662', 'Islamnazifa322@gmail.com', 'Bernaiya bazar', '2', '42', '174', '10', 'registerd', '2024-10-21 09:19:02', '2024-10-21 09:19:02'),
(166, 'duGWVywLXLWXzq', 'wprJdzyFmd', '4342400165', 'alfredamtp@gmail.com', NULL, NULL, NULL, NULL, '0', 'registerd', '2024-10-25 14:11:11', '2024-10-25 14:11:11'),
(167, 'Suzana', 'Tabassum', '01993037987', 'suzanahtabassum@gmail.com', 'Lift-06, House-31, Road-01, Block-B, Banasree', '3', '1', '469', '10', 'registerd', '2024-10-26 04:14:21', '2024-10-26 04:14:21'),
(168, 'Tanjum Nahar', 'ohona', '01308387043', 'tanjumpatrick93399@gmail.com', 'sinthiya telecom, islampur, meghna, sonargaon, narayanganj', '3', '11', '700', '10', 'registerd', '2024-10-26 14:32:29', '2024-10-26 14:32:29'),
(169, 'zYvsVOzytaQlk', 'WegaCsjFFZvq', '6976280370', 'goitinh.1980@yahoo.com', NULL, NULL, NULL, NULL, '0', 'registerd', '2024-10-29 06:53:49', '2024-10-29 06:53:49'),
(170, 'Israt', 'Jahan', '01961895187', 'isratjahanmoumita3266370@gmail.com', 'Flat-704,Building-26,Japan Garden city,Mohammadpur,Dhaka', '3', '1', '473', '10', 'registerd', '2024-10-31 04:20:36', '2024-10-31 04:20:36'),
(171, 'Tasin', 'Chowdhury', '01906890377', 'tasinc277@gmail.com', NULL, NULL, NULL, NULL, '0', 'registerd', '2024-11-01 05:55:43', '2024-11-01 05:55:43'),
(172, 'Salika', 'Shetu', '01624510952', 'commssocial.cry@gmail.com', 'House: 159, Road-06, Block Ka, PC Cultute H/S, Shyamoli, Dhaka - 1207.', '3', '1', '473', '0', 'registerd', '2024-11-05 06:13:57', '2024-11-05 06:39:04'),
(173, 'Sinceer', 'Caughill', '+15045186463', 'zrmabraissuj@dont-reply.me', NULL, NULL, NULL, NULL, '0', 'registerd', '2024-11-05 09:49:09', '2024-11-05 09:49:09'),
(174, 'Nariyaha', 'Alamgir', '01915026557', 'nariyahaa@gmail.com', 'House-30(flat-3B), road-5/A, sector-11 uttara Dhaka', '3', '1', '502', '10', 'registerd', '2024-11-07 05:12:08', '2024-11-07 05:12:08'),
(175, 'Rafidul', 'Onnoy', '01684331082', 'rafidulannoy@gmail.com', '28/1b shonatangar ,tenarimor, zigatola 1209 (Infront of pulabi bakery -chorokghata)', '3', '1', '458', '10', 'registerd', '2024-11-16 18:30:31', '2024-11-16 18:30:31'),
(176, 'DlCCHsZsYDC', 'vHFPxnSGnkuv', '6007935557', 'arnitaylor26@gmail.com', NULL, NULL, NULL, NULL, '0', 'registerd', '2024-11-21 10:58:34', '2024-11-21 10:58:34'),
(177, 'YzXQdMaGWPegpa', 'RMbOsTlYSaVBs', '3084589354', 'hodonn234@gmail.com', NULL, NULL, NULL, NULL, '0', 'registerd', '2024-11-23 19:58:02', '2024-11-23 19:58:02'),
(178, 'Shadek', 'Hossain', '01575-631944', 'shadekhossain.du@gmail.com', 'Peoples Insurance Bhaban, 36 dilkusha C/A', '3', '1', '476', '10', 'registerd', '2024-11-28 13:45:37', '2024-11-28 13:45:37'),
(179, 'Tanzina Haque', 'Shawon', '01748098105', 'shawontanzina@gmail.com', 'Noyapara, Sadar, Mymensingh', '8', '10', '686', '10', 'registerd', '2024-12-01 18:22:47', '2024-12-01 18:22:48'),
(180, 'Seuty', 'Sabur', '01715022851', 'seutysabur@gmail.com', 'House 365, Road 6 West, Baridhara DOHS', '3', '1', '455', '10', 'registerd', '2024-12-02 05:54:47', '2024-12-02 05:54:48'),
(181, 'Marlin', 'Diba', '+8801868027168', 'merlindiba01@gmail.com', 'Southeast University, 252, Tejgaon Industrial Area, Dhaka', '3', '1', '500', '10', 'registerd', '2024-12-05 13:57:53', '2024-12-05 13:57:53'),
(182, 'Sayma A.', 'Asha', '01962-796785', 'sayma.asha85@gmail.com', 'House-1, Road- 12, Sector-12', '3', '1', '502', '10', 'registerd', '2024-12-11 15:11:05', '2024-12-11 15:11:05'),
(183, 'Saima Nur', 'Chowdhury', '01828342491', 'saimanurchowdhuryshifa@gmail.com', 'Ismail mansion, azam chy bari, joynob club er opposite e, aman bazar, Hathazari road , chattogram', '2', '43', '227', '0', 'registerd', '2024-12-28 05:21:21', '2024-12-28 05:41:30'),
(192, 'Amit', 'Roy', '01521428527', 'amitroyrock@gmail.com', 'Dhaka', '3', '1', '499', '10', 'registerd', '2025-01-07 06:04:44', '2025-01-07 06:04:45');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_zones`
--

CREATE TABLE `delivery_zones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `upazila` varchar(255) NOT NULL,
  `charge` decimal(8,2) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `bn_name` varchar(255) NOT NULL,
  `lat` varchar(255) NOT NULL,
  `long` varchar(255) NOT NULL,
  `zone_charge` decimal(10,0) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_id`, `name`, `bn_name`, `lat`, `long`, `zone_charge`, `created_at`, `updated_at`) VALUES
(1, 3, 'Dhaka', 'ঢাকা', '23.7115253', '90.4111451', 50, NULL, '2024-01-29 02:16:24'),
(2, 3, 'Faridpur', 'ফরিদপুর', '23.6070822', '89.8429406', 130, NULL, NULL),
(3, 3, 'Gazipur', 'গাজীপুর', '24.0022858', '90.4264283', 130, NULL, NULL),
(4, 3, 'Gopalganj', 'গোপালগঞ্জ', '23.0050857', '89.8266059', 130, NULL, NULL),
(5, 8, 'Jamalpur', 'জামালপুর', '24.937533', '89.937775', 130, NULL, NULL),
(6, 3, 'Kishoreganj', 'কিশোরগঞ্জ', '24.444937', '90.776575', 130, NULL, NULL),
(7, 3, 'Madaripur', 'মাদারীপুর', '23.164102', '90.1896805', 130, NULL, NULL),
(8, 3, 'Manikganj', 'মানিকগঞ্জ', '23.8644', '90.0047', 130, NULL, NULL),
(9, 3, 'Munshiganj', 'মুন্সিগঞ্জ', '23.5422', '90.5305', 130, NULL, NULL),
(10, 8, 'Mymensingh', 'ময়মনসিংহ', '24.7471', '90.4203', 130, NULL, NULL),
(11, 3, 'Narayanganj', 'নারায়াণগঞ্জ', '23.63366', '90.496482', 130, NULL, NULL),
(12, 3, 'Narsingdi', 'নরসিংদী', '23.932233', '90.71541', 130, NULL, NULL),
(13, 8, 'Netrokona', 'নেত্রকোণা', '24.870955', '90.727887', 130, NULL, NULL),
(14, 3, 'Rajbari', 'রাজবাড়ি', '23.7574305', '89.6444665', 130, NULL, NULL),
(15, 3, 'Shariatpur', 'শরীয়তপুর', '23.2423', '90.4348', 130, NULL, NULL),
(16, 8, 'Sherpur', 'শেরপুর', '25.0204933', '90.0152966', 130, NULL, NULL),
(17, 3, 'Tangail', 'টাঙ্গাইল', '24.2513', '89.9167', 130, NULL, NULL),
(18, 5, 'Bogura', 'বগুড়া', '24.8465228', '89.377755', 130, NULL, NULL),
(19, 5, 'Joypurhat', 'জয়পুরহাট', '25.0968', '89.0227', 130, NULL, NULL),
(20, 5, 'Naogaon', 'নওগাঁ', '24.7936', '88.9318', 130, NULL, NULL),
(21, 5, 'Natore', 'নাটোর', '24.420556', '89.000282', 130, NULL, NULL),
(22, 5, 'Nawabganj', 'নবাবগঞ্জ', '24.5965034', '88.2775122', 130, NULL, NULL),
(23, 5, 'Pabna', 'পাবনা', '23.998524', '89.233645', 130, NULL, NULL),
(24, 5, 'Rajshahi', 'রাজশাহী', '24.3745', '88.6042', 130, NULL, NULL),
(25, 5, 'Sirajgonj', 'সিরাজগঞ্জ', '24.4533978', '89.7006815', 130, NULL, NULL),
(26, 6, 'Dinajpur', 'দিনাজপুর', '25.6217061', '88.6354504', 130, NULL, NULL),
(27, 6, 'Gaibandha', 'গাইবান্ধা', '25.328751', '89.528088', 130, NULL, NULL),
(28, 6, 'Kurigram', 'কুড়িগ্রাম', '25.805445', '89.636174', 130, NULL, NULL),
(29, 6, 'Lalmonirhat', 'লালমনিরহাট', '25.9923', '89.2847', 130, NULL, NULL),
(30, 6, 'Nilphamari', 'নীলফামারী', '25.931794', '88.856006', 130, NULL, NULL),
(31, 6, 'Panchagarh', 'পঞ্চগড়', '26.3411', '88.5541606', 130, NULL, NULL),
(32, 6, 'Rangpur', 'রংপুর', '25.7558096', '89.244462', 130, NULL, NULL),
(33, 6, 'Thakurgaon', 'ঠাকুরগাঁও', '26.0336945', '88.4616834', 130, NULL, NULL),
(34, 1, 'Barguna', 'বরগুনা', '22.0953', '90.1121', 130, NULL, NULL),
(35, 1, 'Barishal', 'বরিশাল', '22.7010', '90.3535', 130, NULL, NULL),
(36, 1, 'Bhola', 'ভোলা', '22.685923', '90.648179', 130, NULL, NULL),
(37, 1, 'Jhalokati', 'ঝালকাঠি', '22.6406', '90.1987', 130, NULL, NULL),
(38, 1, 'Patuakhali', 'পটুয়াখালী', '22.3596316', '90.3298712', 130, NULL, NULL),
(39, 1, 'Pirojpur', 'পিরোজপুর', '22.5841', '89.9720', 130, NULL, NULL),
(40, 2, 'Bandarban', 'বান্দরবান', '22.1953275', '92.2183773', 130, NULL, NULL),
(41, 2, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', '23.9570904', '91.1119286', 130, NULL, NULL),
(42, 2, 'Chandpur', 'চাঁদপুর', '23.2332585', '90.6712912', 130, NULL, NULL),
(43, 2, 'Chattogram', 'চট্টগ্রাম', '22.335109', '91.834073', 130, NULL, NULL),
(44, 2, 'Cumilla', 'কুমিল্লা', '23.4682747', '91.1788135', 130, NULL, NULL),
(45, 2, 'Cox\'s Bazar', 'কক্স বাজার', '21.4272', '92.0058', 130, NULL, NULL),
(46, 2, 'Feni', 'ফেনী', '23.0159', '91.3976', 130, NULL, NULL),
(47, 2, 'Khagrachari', 'খাগড়াছড়ি', '23.119285', '91.984663', 130, NULL, NULL),
(48, 2, 'Lakshmipur', 'লক্ষ্মীপুর', '22.942477', '90.841184', 130, NULL, NULL),
(49, 2, 'Noakhali', 'নোয়াখালী', '22.869563', '91.099398', 130, NULL, NULL),
(50, 2, 'Rangamati', 'রাঙ্গামাটি', '22.7324', '92.2985', 130, NULL, NULL),
(51, 7, 'Habiganj', 'হবিগঞ্জ', '24.374945', '91.41553', 130, NULL, NULL),
(52, 7, 'Maulvibazar', 'মৌলভীবাজার', '24.482934', '91.777417', 130, NULL, NULL),
(53, 7, 'Sunamganj', 'সুনামগঞ্জ', '25.0658042', '91.3950115', 130, NULL, NULL),
(54, 7, 'Sylhet', 'সিলেট', '24.8897956', '91.8697894', 130, NULL, NULL),
(55, 4, 'Bagerhat', 'বাগেরহাট', '22.651568', '89.785938', 130, NULL, NULL),
(56, 4, 'Chuadanga', 'চুয়াডাঙ্গা', '23.6401961', '88.841841', 130, NULL, NULL),
(57, 4, 'Jashore', 'যশোর', '23.16643', '89.2081126', 130, NULL, NULL),
(58, 4, 'Jhenaidah', 'ঝিনাইদহ', '23.5448176', '89.1539213', 130, NULL, NULL),
(59, 4, 'Khulna', 'খুলনা', '22.815774', '89.568679', 130, NULL, NULL),
(60, 4, 'Kushtia', 'কুষ্টিয়া', '23.901258', '89.120482', 130, NULL, NULL),
(61, 4, 'Magura', 'মাগুরা', '23.487337', '89.419956', 130, NULL, NULL),
(62, 4, 'Meherpur', 'মেহেরপুর', '23.762213', '88.631821', 130, NULL, NULL),
(63, 4, 'Narail', 'নড়াইল', '23.172534', '89.512672', 130, NULL, NULL),
(64, 4, 'Satkhira', 'সাতক্ষীরা', '22.7185', '89.0705', 130, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `bn_name` varchar(255) NOT NULL,
  `lat` varchar(255) NOT NULL,
  `long` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `bn_name`, `lat`, `long`, `created_at`, `updated_at`) VALUES
(1, 'Barishal', 'বরিশাল', '22.701002', '90.353451', NULL, NULL),
(2, 'Chattogram', 'চট্টগ্রাম', '22.356851', '91.783182', NULL, NULL),
(3, 'Dhaka', 'ঢাকা', '23.810332', '90.412518', NULL, NULL),
(4, 'Khulna', 'খুলনা', '22.845641', '89.540328', NULL, NULL),
(5, 'Rajshahi', 'রাজশাহী', '24.363589', '88.624135', NULL, NULL),
(6, 'Rangpur', 'রংপুর', '25.743892', '89.275227', NULL, NULL),
(7, 'Sylhet', 'সিলেট', '24.894929', '91.868706', NULL, NULL),
(8, 'Mymensingh', 'ময়মনসিংহ', '24.747149', '90.420273', NULL, NULL);

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
-- Table structure for table `feature_categories`
--

CREATE TABLE `feature_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feature_categories`
--

INSERT INTO `feature_categories` (`id`, `category_id`, `title`, `text`, `image`, `status`, `created_at`, `updated_at`) VALUES
(9, 26, 'Women\'s Collection', NULL, 'feature/category/1717411738.jpg', 'Active', '2024-06-03 10:48:58', '2024-06-05 06:43:31');

-- --------------------------------------------------------

--
-- Table structure for table `feature_products`
--

CREATE TABLE `feature_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feature_products_title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feature_products`
--

INSERT INTO `feature_products` (`id`, `feature_products_title`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Goose Glasses', 'feature/products/1714818150.png', 'Active', '2024-05-04 10:22:30', '2024-05-04 10:22:30');

-- --------------------------------------------------------

--
-- Table structure for table `feature_products_with_pivot`
--

CREATE TABLE `feature_products_with_pivot` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feature_products_id` bigint(20) UNSIGNED NOT NULL,
  `products_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_12_20_065626_create_subcategories_table', 1),
(7, '2023_12_20_065636_create_brands_table', 1),
(11, '2023_12_21_061717_create_varients_table', 1),
(14, '2023_12_26_112636_create_offers_table', 1),
(16, '2023_12_27_100009_create_media_table', 1),
(17, '2023_12_28_060721_create_products_colors_table', 1),
(18, '2023_12_28_060740_create_products_sizes_table', 1),
(19, '2023_12_30_063527_create_product_tags_table', 1),
(20, '2023_12_30_063545_create_product_overviews_table', 1),
(21, '2023_12_30_063847_create_product_additionalinfos_table', 1),
(22, '2023_12_30_063858_create_product_images_table', 1),
(23, '2023_12_30_063908_create_product_extras_table', 1),
(24, '2024_01_04_150814_create_product_prices_table', 1),
(25, '2024_01_08_070143_create_carts_table', 1),
(26, '2024_01_08_091312_create_shoppingcart_table', 1),
(27, '2024_01_14_041713_create_districts_table', 2),
(28, '2024_01_14_042136_create_upazillas_table', 3),
(29, '2024_01_13_044915_create_divisions_table', 4),
(33, '2024_01_14_044937_create_postcodes_table', 5),
(34, '2023_12_23_122959_create_customers_table', 6),
(36, '2023_12_24_054642_create_orders_table', 6),
(37, '2024_01_14_095315_create_order_items_table', 6),
(38, '2024_01_14_095428_create_shippings_table', 7),
(39, '2024_01_14_095446_create_transactions_table', 7),
(40, '2023_12_23_132528_create_register_customers_table', 8),
(42, '2024_01_22_054321_create_orderstatuses_table', 9),
(43, '2023_12_20_041449_create_suppliers_table', 10),
(46, '2024_01_29_055920_create_delivery_zones_table', 12),
(47, '2024_02_04_052438_create_feature_categories_table', 13),
(48, '2024_02_06_072336_create_product_thumbnails_table', 14),
(49, '2024_02_07_101403_create_sliders_table', 15),
(50, '2024_02_08_054458_create_ads_table', 16),
(51, '2024_02_12_115802_create_settings_table', 17),
(52, '2024_02_13_074304_create_campaigns_table', 18),
(53, '2024_02_13_074339_create_camp_products_table', 18),
(54, '2023_12_27_070522_create_coupons_table', 19),
(55, '2024_02_18_082822_create_password_resets_table', 20),
(56, '2023_12_20_065612_create_categories_table', 21),
(57, '2023_12_21_055317_create_products_table', 22),
(58, '2023_12_20_065711_create_colors_table', 23),
(59, '2023_12_20_065724_create_sizes_table', 23),
(60, '2024_03_03_103228_create_product_stocks_table', 24),
(61, '2024_03_04_061211_create_purchases_table', 24),
(62, '2024_02_28_102456_create_feature_products_table', 25),
(63, '2024_02_28_110813_create_feature_products_with_pivot_table', 25),
(64, '2024_03_03_044702_create_offer_types_table', 25),
(65, '2024_03_21_071133_create_permission_tables', 26),
(66, '2024_03_19_044311_create_applied_coupones_table', 27),
(67, '2024_04_02_062728_create_notifications_table', 28),
(68, '2024_04_17_090944_create_product_image_with_colors_table', 29),
(70, '2024_12_24_100425_create_product_color_images_table', 30);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 12),
(3, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 6),
(4, 'App\\Models\\User', 4),
(4, 'App\\Models\\User', 7),
(4, 'App\\Models\\User', 8),
(4, 'App\\Models\\User', 9),
(5, 'App\\Models\\User', 3),
(5, 'App\\Models\\User', 5),
(5, 'App\\Models\\User', 10);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('23d7cb75-98bf-4157-9b1e-a6d12eb275f4', 'App\\Notifications\\NewPendingOrderNotification', 'App\\Models\\Order', 259, '{\"message\":\"New Order!\",\"date\":\"2025-01-07T12:04:45.349650Z\",\"order_id\":259,\"order_details\":{\"customer_name\":\"Amit Roy\",\"total_amount\":\"2180\"}}', NULL, '2025-01-07 06:04:45', '2025-01-07 06:04:45'),
('46b0f2ab-3747-4cc5-b9bd-df697579870b', 'App\\Notifications\\NewPendingOrderNotification', 'App\\Models\\Order', 260, '{\"message\":\"New Order!\",\"date\":\"2025-01-07T12:06:49.208185Z\",\"order_id\":260,\"order_details\":{\"customer_name\":\"Amit Roy\",\"total_amount\":\"1780\"}}', NULL, '2025-01-07 06:06:49', '2025-01-07 06:06:49'),
('ed8c38ac-6b86-4562-8609-4ca341cf0ee1', 'App\\Notifications\\NewPendingOrderNotification', 'App\\Models\\Order', 261, '{\"message\":\"New Order!\",\"date\":\"2025-01-07T12:08:52.219689Z\",\"order_id\":261,\"order_details\":{\"customer_name\":\"Amit Roy\",\"total_amount\":\"1780\"}}', NULL, '2025-01-07 06:08:52', '2025-01-07 06:08:52');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offer_types`
--

CREATE TABLE `offer_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `offer_type_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offer_types`
--

INSERT INTO `offer_types` (`id`, `offer_type_name`, `created_at`, `updated_at`) VALUES
(1, 'Eid offer', '2024-03-28 00:22:45', '2024-03-28 00:22:45');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(255) DEFAULT NULL,
  `order_track_id` varchar(255) DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(8,2) DEFAULT NULL,
  `total` decimal(8,2) NOT NULL,
  `total_paid` decimal(8,2) DEFAULT 0.00,
  `total_due` decimal(8,2) DEFAULT 0.00,
  `delivery_charge` decimal(8,2) DEFAULT 0.00,
  `status` enum('pending','confirmed','delivered','completed','returned','cancelled','shipped') NOT NULL DEFAULT 'pending',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT 0,
  `order_from` varchar(255) DEFAULT NULL,
  `canceled_date` date DEFAULT NULL,
  `return_confirm` tinyint(1) DEFAULT 0,
  `comment` longtext DEFAULT NULL,
  `is_pos` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `invoice_no`, `order_track_id`, `customer_id`, `subtotal`, `discount`, `tax`, `total`, `total_paid`, `total_due`, `delivery_charge`, `status`, `is_shipping_different`, `order_from`, `canceled_date`, `return_confirm`, `comment`, `is_pos`, `created_at`, `updated_at`) VALUES
(135, '062460', 'K24-2026', 73, 599.00, 0.00, NULL, 679.00, 0.00, 0.00, 80.00, 'shipped', 0, NULL, NULL, 0, NULL, 0, '2024-06-08 07:58:05', '2024-06-11 07:17:36'),
(136, '062473', 'K24-5342', 74, 2760.00, 0.00, NULL, 2840.00, 0.00, 0.00, 80.00, 'cancelled', 0, NULL, NULL, 0, NULL, 0, '2024-06-11 08:03:35', '2024-06-11 10:54:40'),
(141, '062464', 'GG24-7519', 75, 850.00, 0.00, NULL, 980.00, 0.00, 980.00, 130.00, 'delivered', 0, NULL, NULL, 0, NULL, 0, '2024-06-12 10:17:28', '2024-06-22 17:49:51'),
(142, '062453', 'GG24-3607', 76, 624.00, 0.00, NULL, 1304.00, 0.00, 1304.00, 80.00, 'completed', 0, NULL, NULL, 0, NULL, 0, '2024-06-13 10:15:32', '2024-06-22 17:49:46'),
(143, '062472', 'GG24-2057', 68, 920.00, 0.00, NULL, 1000.00, 0.00, 1000.00, 80.00, 'cancelled', 0, NULL, NULL, 0, NULL, 0, '2024-06-24 05:26:46', '2024-06-24 05:27:19'),
(144, '062432', 'GG24-6301', 68, 920.00, 0.00, NULL, 1600.00, 0.00, 1600.00, 80.00, 'cancelled', 0, NULL, NULL, 0, NULL, 0, '2024-06-24 07:00:07', '2024-06-24 07:33:30'),
(145, '062482', 'GG24-1702', 78, 999.00, 0.00, NULL, 1129.00, 0.00, 1129.00, 130.00, 'pending', 0, NULL, NULL, 0, 'Adress:mirrerhat,borua para road,nurani madrasha badsha hazir bari', 0, '2024-06-24 17:37:55', '2024-06-24 17:37:55'),
(146, '062419', 'GG24-5559', 79, 999.00, 0.00, NULL, 1129.00, 0.00, 1129.00, 130.00, 'confirmed', 0, NULL, NULL, 0, 'call me to this number before comming +880 1626-565948', 0, '2024-06-24 17:42:52', '2024-06-25 06:37:27'),
(147, '062424', 'GG24-0964', 80, 890.00, 0.00, NULL, 2520.00, 0.00, 2520.00, 130.00, 'shipped', 0, NULL, NULL, 0, NULL, 0, '2024-06-25 10:33:57', '2024-06-27 13:28:26'),
(169, '062402', 'GG24-0927', 103, 599.00, 0.00, NULL, 979.00, 0.00, 979.00, 80.00, 'confirmed', 0, NULL, NULL, 0, NULL, 0, '2024-06-27 07:10:12', '2024-06-27 13:28:18'),
(170, '072461', 'GG24-9538', 104, 616.00, 0.00, NULL, 636.00, 0.00, 636.00, 20.00, 'pending', 0, NULL, NULL, 0, NULL, 0, '2024-07-01 21:28:59', '2024-07-08 07:49:32'),
(171, '072487', 'GG24-9823', 104, 2466.00, 0.00, NULL, 2486.00, 0.00, 2486.00, 20.00, 'pending', 0, NULL, NULL, 0, NULL, 0, '2024-07-03 08:13:10', '2024-07-03 08:13:10'),
(172, '072452', 'GG24-6662', 105, 850.00, 0.00, NULL, 1530.00, 0.00, 1530.00, 80.00, 'shipped', 0, NULL, NULL, 0, 'Send it by friday. The power should be putted very carefully and correctly. Lens should be blue cut uv protected.', 0, '2024-07-03 15:43:27', '2024-07-04 16:18:58'),
(173, '072420', 'GG24-8444', 68, 616.00, 0.00, NULL, 696.00, 0.00, 696.00, 80.00, 'pending', 0, NULL, NULL, 0, NULL, 0, '2024-07-04 12:05:12', '2024-07-04 12:05:12'),
(174, '072464', 'GG24-2549', 108, 2198.00, 0.00, NULL, 2728.00, 0.00, 2728.00, 130.00, 'pending', 0, NULL, NULL, 0, NULL, 0, '2024-07-08 10:00:59', '2024-07-08 10:00:59'),
(175, '072456', 'GG24-7562', 104, 900.00, 0.00, NULL, 1320.00, 0.00, 1320.00, 20.00, 'pending', 0, NULL, NULL, 0, NULL, 0, '2024-07-09 05:48:18', '2024-07-09 05:48:18'),
(176, '072443', 'GG24-5420', 109, 999.00, 0.00, NULL, 1079.00, 0.00, 1079.00, 80.00, 'shipped', 0, NULL, NULL, 0, NULL, 0, '2024-07-10 14:41:00', '2024-07-11 17:01:14'),
(177, '072465', 'GG24-7178', 110, 1300.00, 0.00, NULL, 1430.00, 0.00, 1430.00, 130.00, 'confirmed', 0, NULL, NULL, 0, 'Taratari dilae hobe', 0, '2024-07-13 08:23:30', '2024-07-14 06:02:49'),
(178, '072498', 'GG24-0838', 111, 1300.00, 0.00, NULL, 1680.00, 0.00, 1680.00, 80.00, 'pending', 0, NULL, NULL, 0, 'Test order', 0, '2024-07-14 06:55:31', '2024-07-14 06:55:31'),
(179, '072475', 'GG24-4505', 112, 720.00, 0.00, NULL, 800.00, 0.00, 800.00, 80.00, 'delivered', 0, NULL, NULL, 0, NULL, 0, '2024-07-29 20:32:04', '2024-08-12 08:43:43'),
(180, '082490', 'GG24-6473', 113, 900.00, 0.00, NULL, 980.00, 0.00, 980.00, 80.00, 'delivered', 0, NULL, NULL, 0, 'Frame colour is black.', 0, '2024-08-10 14:20:13', '2024-08-12 08:43:38'),
(181, '082429', 'GG24-4400', 114, 719.00, 0.00, NULL, 1249.00, 0.00, 1249.00, 130.00, 'confirmed', 0, NULL, NULL, 0, NULL, 0, '2024-08-12 06:44:29', '2024-08-12 08:43:33'),
(182, '082492', 'GG24-5761', 115, 719.00, 0.00, NULL, 1449.00, 0.00, 1449.00, 130.00, 'confirmed', 0, NULL, NULL, 0, NULL, 0, '2024-08-12 08:35:22', '2024-08-12 08:43:30'),
(183, '082459', NULL, 116, 780.00, 130.00, NULL, 650.00, 650.00, 0.00, 0.00, 'completed', 0, 'WalkInCustomer', NULL, 0, 'Pos order', 1, '2024-08-12 10:18:06', '2024-08-12 10:18:06'),
(184, '082416', 'GG24-5211', 117, 616.00, 0.00, NULL, 1346.00, 0.00, 1346.00, 130.00, 'pending', 0, NULL, NULL, 0, NULL, 0, '2024-08-12 15:08:23', '2024-08-12 15:08:23'),
(185, '082480', 'GG24-6237', 118, 720.00, 0.00, NULL, 850.00, 0.00, 850.00, 130.00, 'pending', 0, NULL, NULL, 0, NULL, 0, '2024-08-13 01:01:57', '2024-08-13 01:01:57'),
(186, '082486', 'GG24-3665', 119, 999.00, 0.00, NULL, 1079.00, 0.00, 1079.00, 80.00, 'pending', 0, NULL, NULL, 0, NULL, 0, '2024-08-14 10:35:43', '2024-08-14 10:35:43'),
(187, '082496', 'GG24-4561', 120, 999.00, 0.00, NULL, 1729.00, 0.00, 1729.00, 130.00, 'pending', 0, NULL, NULL, 0, 'Send me a sms on e-mail please sir', 0, '2024-08-14 10:53:16', '2024-08-14 10:53:16'),
(188, '082410', 'GG24-6181', 121, 2900.00, 0.00, NULL, 4530.00, 0.00, 4530.00, 130.00, 'pending', 0, NULL, NULL, 0, NULL, 0, '2024-08-14 11:28:00', '2024-08-14 11:38:46'),
(189, '082417', 'GG24-7811', 122, 2550.00, 0.00, NULL, 3080.00, 0.00, 3080.00, 130.00, 'cancelled', 0, NULL, NULL, 0, 'Testing', 0, '2024-08-14 12:20:22', '2024-08-14 12:23:46'),
(190, '082404', 'GG24-1028', 123, 999.00, 0.00, NULL, 1079.00, 0.00, 1079.00, 80.00, 'pending', 0, NULL, NULL, 0, NULL, 0, '2024-08-14 13:10:32', '2024-08-14 13:10:32'),
(191, '082415', 'GG24-6956', 124, 597.00, 0.00, NULL, 677.00, 0.00, 677.00, 80.00, 'pending', 0, NULL, NULL, 0, NULL, 0, '2024-08-14 14:12:53', '2024-08-14 14:12:53'),
(192, '082457', 'GG24-2000', 121, 3450.00, 0.00, NULL, 3980.00, 0.00, 3980.00, 130.00, 'completed', 0, NULL, NULL, 0, NULL, 0, '2024-08-15 17:08:30', '2024-08-16 08:47:51'),
(193, '082434', 'GG24-5528', 125, 900.00, 0.00, NULL, 1030.00, 0.00, 1030.00, 130.00, 'shipped', 0, NULL, NULL, 0, NULL, 0, '2024-08-15 18:44:08', '2024-08-16 10:51:56'),
(194, '082488', 'GG24-6361', 127, 999.00, 0.00, NULL, 2579.00, 0.00, 2579.00, 80.00, 'pending', 0, NULL, NULL, 0, 'Please give me a call before dispatching my parcel.', 0, '2024-08-16 23:29:46', '2024-08-16 23:29:46'),
(195, '082407', 'GG24-5413', 121, 1499.00, 0.00, NULL, 2029.00, 0.00, 2029.00, 130.00, 'pending', 0, NULL, NULL, 0, NULL, 0, '2024-08-19 09:42:53', '2024-08-19 09:42:53'),
(196, '082424', 'GG24-0072', 129, 1499.00, 0.00, NULL, 3129.00, 0.00, 3129.00, 130.00, 'pending', 0, NULL, NULL, 0, 'Please provide a premium glass box.', 0, '2024-08-21 06:54:38', '2024-08-21 06:54:38'),
(197, '082405', 'GG24-3887', 131, 999.00, 0.00, NULL, 1079.00, 0.00, 1079.00, 80.00, 'pending', 0, NULL, NULL, 0, 'please call before delivery, only on Friday or Saturday.', 0, '2024-08-21 13:27:43', '2024-08-21 13:27:43'),
(198, '082446', 'GG24-6893', 132, 1839.00, 0.00, NULL, 1919.00, 0.00, 1919.00, 80.00, 'pending', 0, NULL, NULL, 0, NULL, 0, '2024-08-22 03:22:51', '2024-08-22 03:22:51'),
(199, '082473', 'GG24-9692', 133, 2866.00, 0.00, NULL, 3546.00, 0.00, 3546.00, 80.00, 'pending', 0, NULL, NULL, 0, NULL, 0, '2024-08-22 11:46:40', '2024-08-22 11:46:40'),
(200, '082433', 'GG24-9235', 134, 1300.00, 0.00, NULL, 1430.00, 0.00, 1430.00, 130.00, 'pending', 0, NULL, NULL, 0, NULL, 0, '2024-08-28 15:48:38', '2024-08-28 15:48:38'),
(201, '082432', 'GG24-2491', 135, 990.00, 0.00, NULL, 2620.00, 0.00, 2620.00, 130.00, 'confirmed', 0, NULL, NULL, 0, NULL, 0, '2024-08-28 15:55:58', '2024-08-29 05:13:13'),
(202, '082449', 'GG24-0061', 136, 990.00, 0.00, NULL, 1470.00, 0.00, 1470.00, 80.00, 'cancelled', 0, NULL, NULL, 0, 'Testing Order', 0, '2024-08-28 16:19:42', '2024-08-28 16:22:21'),
(203, '082414', 'GG24-1432', 137, 750.00, 0.00, NULL, 1230.00, 0.00, 1230.00, 80.00, 'delivered', 0, NULL, NULL, 0, NULL, 0, '2024-08-29 13:13:27', '2024-09-03 04:18:11'),
(204, '082476', 'GG24-1592', 138, 1500.00, 0.00, NULL, 1630.00, 0.00, 1630.00, 130.00, 'cancelled', 0, NULL, NULL, 0, NULL, 0, '2024-08-31 06:54:25', '2024-09-02 11:58:54'),
(205, '092419', 'GG24-3345', 139, 1160.00, 0.00, NULL, 1240.00, 0.00, 1240.00, 80.00, 'cancelled', 0, NULL, NULL, 0, NULL, 0, '2024-09-01 01:58:37', '2024-09-02 11:58:51'),
(206, '092442', 'GG24-7372', 140, 1300.00, 0.00, NULL, 1830.00, 0.00, 1830.00, 130.00, 'pending', 0, NULL, NULL, 0, NULL, 0, '2024-09-06 12:16:53', '2024-09-06 12:16:53'),
(207, '092459', 'GG24-8141', 141, 750.00, 0.00, NULL, 880.00, 0.00, 880.00, 130.00, 'confirmed', 0, NULL, NULL, 0, NULL, 0, '2024-09-08 05:41:46', '2024-09-08 05:50:24'),
(208, '092428', 'GG24-6513', 142, 999.00, 0.00, NULL, 1129.00, 0.00, 1129.00, 130.00, 'confirmed', 0, NULL, NULL, 0, 'Kindly 2/3 din er majhei pathaben..', 0, '2024-09-08 09:31:13', '2024-09-09 09:27:19'),
(209, '092479', 'GG24-8339', 143, 1050.00, 0.00, NULL, 1130.00, 0.00, 1130.00, 80.00, 'pending', 0, NULL, NULL, 0, NULL, 0, '2024-09-09 14:32:55', '2024-09-09 14:32:55'),
(210, '092406', 'GG24-7016', 145, 770.00, 0.00, NULL, 900.00, 0.00, 900.00, 130.00, 'confirmed', 0, NULL, NULL, 0, NULL, 0, '2024-09-11 14:50:20', '2024-09-11 15:00:55'),
(211, '092489', 'GG24-5417', 146, 1797.00, 0.00, NULL, 1877.00, 0.00, 1877.00, 80.00, 'confirmed', 0, NULL, NULL, 0, NULL, 0, '2024-09-13 10:28:56', '2024-09-14 13:04:20'),
(212, '092495', 'GG24-1782', 147, 599.00, 0.00, NULL, 729.00, 0.00, 729.00, 130.00, 'pending', 0, NULL, NULL, 0, NULL, 0, '2024-09-15 10:45:08', '2024-09-15 10:45:08'),
(213, '092465', 'GG24-3815', 121, 1490.00, 0.00, NULL, 2020.00, 0.00, 2020.00, 130.00, 'pending', 0, NULL, NULL, 0, NULL, 0, '2024-09-21 10:47:39', '2024-09-21 10:47:39'),
(214, '092420', 'GG24-5645', 149, 990.00, 0.00, NULL, 1470.00, 0.00, 1470.00, 80.00, 'pending', 0, NULL, NULL, 0, 'Make sure to deliver the product within 2 days. I lost my glass😞', 0, '2024-09-21 12:17:12', '2024-09-21 12:17:12'),
(215, '092425', 'GG24-1193', 150, 599.00, 0.00, NULL, 1079.00, 0.00, 1079.00, 80.00, 'confirmed', 0, NULL, NULL, 0, 'Please get the lens power right.', 0, '2024-09-27 14:15:19', '2024-09-27 14:39:49'),
(216, '092439', 'GG24-7079', 151, 650.00, 0.00, NULL, 730.00, 0.00, 730.00, 80.00, 'pending', 0, NULL, NULL, 0, NULL, 0, '2024-09-28 14:56:01', '2024-09-28 14:56:01'),
(217, '092411', 'GG24-7287', 152, 770.00, 0.00, NULL, 1450.00, 0.00, 1450.00, 80.00, 'confirmed', 0, NULL, NULL, 0, NULL, 0, '2024-09-29 03:49:48', '2024-09-29 06:38:58'),
(218, '102465', 'GG24-8310', 154, 850.00, 0.00, NULL, 980.00, 0.00, 980.00, 130.00, 'confirmed', 0, NULL, NULL, 0, NULL, 0, '2024-10-03 23:59:51', '2024-10-04 17:30:22'),
(219, '102462', 'GG24-6260', 155, 850.00, 0.00, NULL, 1380.00, 0.00, 1380.00, 130.00, 'confirmed', 0, NULL, NULL, 0, NULL, 0, '2024-10-04 16:54:47', '2024-10-04 17:30:18'),
(220, '102473', 'GG24-3990', 156, 999.00, 0.00, NULL, 1129.00, 0.00, 1129.00, 130.00, 'confirmed', 0, NULL, NULL, 0, 'note :\r\nYou\'re doing great. Let not any failure get you. Let not any depression trap you. If it\'s written in Takdeer , it\'ll happen. Keep faith. I got your back. Best wishes for uni life.', 0, '2024-10-08 06:02:36', '2024-10-08 06:55:20'),
(221, '102492', 'GG24-3671', 157, 999.00, 0.00, NULL, 1679.00, 0.00, 1679.00, 80.00, 'confirmed', 0, NULL, NULL, 0, NULL, 0, '2024-10-08 15:31:13', '2024-10-13 11:17:29'),
(222, '102472', 'GG24-7485', 158, 1700.00, 0.00, NULL, 1830.00, 0.00, 1830.00, 130.00, 'confirmed', 0, NULL, NULL, 0, NULL, 0, '2024-10-10 13:19:13', '2024-10-13 11:17:25'),
(223, '102453', 'GG24-5678', 159, 599.00, 0.00, NULL, 1329.00, 0.00, 1329.00, 130.00, 'confirmed', 0, NULL, NULL, 0, NULL, 0, '2024-10-13 11:08:05', '2024-10-13 11:17:21'),
(224, '102415', 'GG24-6599', 160, 1050.00, 0.00, NULL, 1130.00, 0.00, 1130.00, 80.00, 'confirmed', 0, NULL, NULL, 0, NULL, 0, '2024-10-15 01:13:57', '2024-10-15 04:05:03'),
(225, '102440', 'GG24-5544', 165, 999.00, 0.00, NULL, 1429.00, 0.00, 1429.00, 130.00, 'pending', 0, NULL, NULL, 0, NULL, 0, '2024-10-21 09:19:02', '2024-10-21 09:19:02'),
(226, '102476', 'GG24-2837', 167, 599.00, 0.00, NULL, 679.00, 0.00, 679.00, 80.00, 'confirmed', 0, NULL, NULL, 0, NULL, 0, '2024-10-26 04:14:21', '2024-10-27 10:13:53'),
(227, '102426', 'GG24-9361', 168, 770.00, 0.00, NULL, 900.00, 0.00, 900.00, 130.00, 'confirmed', 0, NULL, NULL, 0, NULL, 0, '2024-10-26 14:32:29', '2024-10-27 10:13:50'),
(228, '102424', 'GG24-6622', 170, 599.00, 0.00, NULL, 1279.00, 0.00, 1279.00, 80.00, 'completed', 0, NULL, NULL, 0, NULL, 0, '2024-10-31 04:20:36', '2024-11-06 14:14:50'),
(229, '112460', 'GG24-0348', 172, 1369.00, 0.00, NULL, 1449.00, 0.00, 1449.00, 80.00, 'completed', 0, NULL, NULL, 0, NULL, 0, '2024-11-05 06:40:43', '2024-11-06 14:14:47'),
(230, '112448', 'GG24-8861', 121, 2100.00, 0.00, NULL, 2230.00, 0.00, 2230.00, 130.00, 'pending', 0, NULL, NULL, 0, NULL, 0, '2024-11-05 06:51:22', '2024-11-05 06:51:22'),
(231, '112438', 'GG24-5108', 174, 1540.00, 0.00, NULL, 1620.00, 0.00, 1620.00, 80.00, 'pending', 0, NULL, NULL, 0, 'Plz check the colour correctly I ordered transparent purple and transparent blue color and the lens dimensions is model TR 90 8039 , 51 [] 19 - 142 C12. Plz check that on eyeglasses arms.  And plz send new product. If the colour is not correct and size I will send it return it.', 0, '2024-11-07 05:12:08', '2024-11-07 05:12:08'),
(232, '112441', 'GG24-3350', 175, 599.00, 0.00, NULL, 1079.00, 0.00, 1079.00, 80.00, 'confirmed', 0, NULL, NULL, 0, NULL, 0, '2024-11-16 18:30:31', '2024-11-18 10:54:32'),
(233, '112427', 'GG24-7881', 121, 1090.00, 0.00, NULL, 1620.00, 0.00, 1620.00, 130.00, 'pending', 0, NULL, NULL, 0, NULL, 0, '2024-11-28 09:24:43', '2024-11-28 09:24:43'),
(234, '112488', 'GG24-7394', 178, 999.00, 0.00, NULL, 1079.00, 0.00, 1079.00, 80.00, 'cancelled', 0, NULL, NULL, 0, NULL, 0, '2024-11-28 13:45:37', '2024-12-05 17:32:02'),
(235, '122476', 'GG24-5510', 179, 719.00, 0.00, NULL, 1449.00, 0.00, 1449.00, 130.00, 'delivered', 0, NULL, NULL, 0, NULL, 0, '2024-12-01 18:22:48', '2024-12-05 17:31:51'),
(236, '122440', 'GG24-2433', 180, 1090.00, 0.00, NULL, 1170.00, 0.00, 1170.00, 80.00, 'pending', 0, NULL, NULL, 0, NULL, 0, '2024-12-02 05:54:48', '2024-12-02 05:54:48'),
(237, '122412', 'GG24-2901', 181, 650.00, 0.00, NULL, 730.00, 0.00, 730.00, 80.00, 'completed', 0, NULL, NULL, 0, NULL, 0, '2024-12-05 13:57:53', '2025-01-07 06:07:59'),
(238, '122486', 'GG24-0810', 182, 1198.00, 0.00, NULL, 1278.00, 0.00, 1278.00, 80.00, 'completed', 0, NULL, NULL, 0, NULL, 0, '2024-12-11 15:11:05', '2025-01-07 06:07:20'),
(259, '012562', 'GG25-1381', 192, 2100.00, 0.00, NULL, 2180.00, 0.00, 2180.00, 80.00, 'completed', 0, NULL, NULL, 0, NULL, 0, '2025-01-07 06:04:45', '2025-01-07 06:05:39'),
(260, '012559', 'GG25-2394', 192, 1700.00, 0.00, NULL, 1780.00, 0.00, 1780.00, 80.00, 'completed', 0, NULL, NULL, 0, NULL, 0, '2025-01-07 06:06:49', '2025-01-07 06:09:17'),
(261, '012506', 'GG25-1096', 192, 1700.00, 0.00, NULL, 1780.00, 0.00, 1780.00, 80.00, 'pending', 0, NULL, NULL, 0, NULL, 0, '2025-01-07 06:08:52', '2025-01-07 06:08:52');

-- --------------------------------------------------------

--
-- Table structure for table `orderstatuses`
--

CREATE TABLE `orderstatuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('pending','confirmed','shipped','delivered','completed','returned','cancelled') NOT NULL DEFAULT 'pending',
  `confirmed_date_time` datetime DEFAULT NULL,
  `shipped_date_time` datetime DEFAULT NULL,
  `delivered_date_time` datetime DEFAULT NULL,
  `completed_date_time` datetime DEFAULT NULL,
  `returned_date_time` datetime DEFAULT NULL,
  `cancelled_date_time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderstatuses`
--

INSERT INTO `orderstatuses` (`id`, `order_id`, `status`, `confirmed_date_time`, `shipped_date_time`, `delivered_date_time`, `completed_date_time`, `returned_date_time`, `cancelled_date_time`, `created_at`, `updated_at`) VALUES
(81, 135, 'shipped', NULL, '2024-06-11 07:17:36', NULL, NULL, NULL, NULL, '2024-06-08 07:58:05', '2024-06-11 07:17:36'),
(82, 136, 'cancelled', NULL, NULL, NULL, NULL, NULL, '2024-06-11 10:54:40', '2024-06-11 08:03:35', '2024-06-11 10:54:40'),
(87, 141, 'delivered', NULL, '2024-06-13 10:19:38', '2024-06-22 17:49:51', NULL, NULL, NULL, '2024-06-12 10:17:28', '2024-06-22 17:49:51'),
(88, 142, 'completed', NULL, '2024-06-13 14:40:40', NULL, '2024-06-22 17:49:46', NULL, NULL, '2024-06-13 10:15:32', '2024-06-22 17:49:46'),
(89, 143, 'cancelled', NULL, NULL, NULL, NULL, NULL, '2024-06-24 05:27:19', '2024-06-24 05:26:46', '2024-06-24 05:27:19'),
(90, 144, 'cancelled', NULL, NULL, NULL, NULL, NULL, '2024-06-24 07:33:30', '2024-06-24 07:00:07', '2024-06-24 07:33:30'),
(91, 145, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-24 17:37:55', '2024-06-24 17:37:55'),
(92, 146, 'confirmed', '2024-06-25 06:37:27', NULL, NULL, NULL, NULL, NULL, '2024-06-24 17:42:52', '2024-06-25 06:37:27'),
(93, 147, 'shipped', '2024-06-27 13:28:22', '2024-06-27 13:28:26', NULL, NULL, NULL, NULL, '2024-06-25 10:33:57', '2024-06-27 13:28:26'),
(115, 169, 'confirmed', '2024-06-27 13:28:18', NULL, NULL, NULL, NULL, NULL, '2024-06-27 07:10:12', '2024-06-27 13:28:18'),
(116, 170, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-01 21:28:59', '2024-07-01 21:28:59'),
(117, 171, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-03 08:13:10', '2024-07-03 08:13:10'),
(118, 172, 'shipped', NULL, '2024-07-04 16:18:58', NULL, NULL, NULL, NULL, '2024-07-03 15:43:27', '2024-07-04 16:18:58'),
(119, 173, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-04 12:05:12', '2024-07-04 12:05:12'),
(120, 174, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-08 10:00:59', '2024-07-08 10:00:59'),
(121, 175, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-09 05:48:18', '2024-07-09 05:48:18'),
(122, 176, 'shipped', NULL, '2024-07-11 19:01:14', NULL, NULL, NULL, NULL, '2024-07-10 14:41:00', '2024-07-11 17:01:14'),
(123, 177, 'confirmed', '2024-07-14 08:02:49', NULL, NULL, NULL, NULL, NULL, '2024-07-13 08:23:30', '2024-07-14 06:02:49'),
(124, 178, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-14 06:55:31', '2024-07-14 06:55:31'),
(125, 179, 'delivered', NULL, NULL, '2024-08-12 10:43:43', NULL, NULL, NULL, '2024-07-29 20:32:04', '2024-08-12 08:43:43'),
(126, 180, 'delivered', NULL, NULL, '2024-08-12 10:43:38', NULL, NULL, NULL, '2024-08-10 14:20:13', '2024-08-12 08:43:38'),
(127, 181, 'confirmed', '2024-08-12 10:43:33', NULL, NULL, NULL, NULL, NULL, '2024-08-12 06:44:29', '2024-08-12 08:43:33'),
(128, 182, 'confirmed', '2024-08-12 10:43:30', NULL, NULL, NULL, NULL, NULL, '2024-08-12 08:35:22', '2024-08-12 08:43:30'),
(129, 184, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-12 15:08:23', '2024-08-12 15:08:23'),
(130, 185, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-13 01:01:57', '2024-08-13 01:01:57'),
(131, 186, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-14 10:35:43', '2024-08-14 10:35:43'),
(132, 187, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-14 10:53:16', '2024-08-14 10:53:16'),
(133, 188, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-14 11:28:00', '2024-08-14 11:28:00'),
(134, 189, 'cancelled', NULL, NULL, NULL, NULL, NULL, '2024-08-14 14:23:46', '2024-08-14 12:20:22', '2024-08-14 12:23:46'),
(135, 190, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-14 13:10:32', '2024-08-14 13:10:32'),
(136, 191, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-14 14:12:53', '2024-08-14 14:12:53'),
(137, 192, 'completed', NULL, NULL, '2024-08-16 10:46:09', '2024-08-16 10:47:51', NULL, NULL, '2024-08-15 17:08:30', '2024-08-16 08:47:51'),
(138, 193, 'shipped', NULL, '2024-08-16 12:51:56', NULL, NULL, NULL, NULL, '2024-08-15 18:44:08', '2024-08-16 10:51:56'),
(139, 194, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-16 23:29:46', '2024-08-16 23:29:46'),
(140, 195, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-19 09:42:53', '2024-08-19 09:42:53'),
(141, 196, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-21 06:54:38', '2024-08-21 06:54:38'),
(142, 197, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-21 13:27:43', '2024-08-21 13:27:43'),
(143, 198, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-22 03:22:51', '2024-08-22 03:22:51'),
(144, 199, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-22 11:46:40', '2024-08-22 11:46:40'),
(145, 200, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-28 15:48:38', '2024-08-28 15:48:38'),
(146, 201, 'confirmed', '2024-08-29 07:13:13', NULL, NULL, NULL, NULL, NULL, '2024-08-28 15:55:58', '2024-08-29 05:13:13'),
(147, 202, 'cancelled', NULL, NULL, NULL, NULL, NULL, '2024-08-28 18:22:21', '2024-08-28 16:19:42', '2024-08-28 16:22:21'),
(148, 203, 'delivered', NULL, '2024-08-31 19:11:46', '2024-09-03 06:18:11', NULL, NULL, NULL, '2024-08-29 13:13:27', '2024-09-03 04:18:11'),
(149, 204, 'cancelled', NULL, NULL, NULL, NULL, NULL, '2024-09-02 13:58:54', '2024-08-31 06:54:25', '2024-09-02 11:58:54'),
(150, 205, 'cancelled', NULL, NULL, NULL, NULL, NULL, '2024-09-02 13:58:51', '2024-09-01 01:58:37', '2024-09-02 11:58:51'),
(151, 206, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-06 12:16:53', '2024-09-06 12:16:53'),
(152, 207, 'confirmed', '2024-09-08 07:50:24', NULL, NULL, '2024-09-08 07:50:20', NULL, NULL, '2024-09-08 05:41:46', '2024-09-08 05:50:24'),
(153, 208, 'confirmed', '2024-09-09 11:27:19', NULL, NULL, NULL, NULL, NULL, '2024-09-08 09:31:13', '2024-09-09 09:27:19'),
(154, 209, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-09 14:32:55', '2024-09-09 14:32:55'),
(155, 210, 'confirmed', '2024-09-11 17:00:55', NULL, NULL, NULL, NULL, NULL, '2024-09-11 14:50:20', '2024-09-11 15:00:55'),
(156, 211, 'confirmed', '2024-09-14 15:04:20', NULL, NULL, NULL, NULL, NULL, '2024-09-13 10:28:56', '2024-09-14 13:04:20'),
(157, 212, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-15 10:45:08', '2024-09-15 10:45:08'),
(158, 213, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-21 10:47:39', '2024-09-21 10:47:39'),
(159, 214, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-21 12:17:12', '2024-09-21 12:17:12'),
(160, 215, 'confirmed', '2024-09-27 16:39:49', NULL, NULL, NULL, NULL, NULL, '2024-09-27 14:15:19', '2024-09-27 14:39:49'),
(161, 216, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-28 14:56:01', '2024-09-28 14:56:01'),
(162, 217, 'confirmed', '2024-09-29 08:38:58', NULL, NULL, NULL, NULL, NULL, '2024-09-29 03:49:48', '2024-09-29 06:38:58'),
(163, 218, 'confirmed', '2024-10-04 19:30:22', NULL, NULL, NULL, NULL, NULL, '2024-10-03 23:59:51', '2024-10-04 17:30:22'),
(164, 219, 'confirmed', '2024-10-04 19:30:18', NULL, NULL, NULL, NULL, NULL, '2024-10-04 16:54:47', '2024-10-04 17:30:18'),
(165, 220, 'confirmed', '2024-10-08 08:55:20', NULL, NULL, NULL, NULL, NULL, '2024-10-08 06:02:36', '2024-10-08 06:55:20'),
(166, 221, 'confirmed', '2024-10-13 13:17:29', NULL, NULL, NULL, NULL, NULL, '2024-10-08 15:31:13', '2024-10-13 11:17:29'),
(167, 222, 'confirmed', '2024-10-13 13:17:25', NULL, NULL, NULL, NULL, NULL, '2024-10-10 13:19:13', '2024-10-13 11:17:25'),
(168, 223, 'confirmed', '2024-10-13 13:17:21', NULL, NULL, NULL, NULL, NULL, '2024-10-13 11:08:05', '2024-10-13 11:17:21'),
(169, 224, 'confirmed', '2024-10-15 06:05:03', NULL, NULL, NULL, NULL, NULL, '2024-10-15 01:13:57', '2024-10-15 04:05:03'),
(170, 225, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-21 09:19:02', '2024-10-21 09:19:02'),
(171, 226, 'confirmed', '2024-10-27 11:13:53', NULL, NULL, NULL, NULL, NULL, '2024-10-26 04:14:21', '2024-10-27 10:13:53'),
(172, 227, 'confirmed', '2024-10-27 11:13:50', NULL, NULL, NULL, NULL, NULL, '2024-10-26 14:32:29', '2024-10-27 10:13:50'),
(173, 228, 'completed', NULL, NULL, NULL, '2024-11-06 15:14:50', NULL, NULL, '2024-10-31 04:20:36', '2024-11-06 14:14:50'),
(174, 229, 'completed', NULL, NULL, NULL, '2024-11-06 15:14:47', NULL, NULL, '2024-11-05 06:40:43', '2024-11-06 14:14:47'),
(175, 230, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-05 06:51:22', '2024-11-05 06:51:22'),
(176, 231, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-07 05:12:08', '2024-11-07 05:12:08'),
(177, 232, 'confirmed', '2024-11-18 11:54:32', NULL, NULL, NULL, NULL, NULL, '2024-11-16 18:30:31', '2024-11-18 10:54:32'),
(178, 233, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-28 09:24:43', '2024-11-28 09:24:43'),
(179, 234, 'cancelled', NULL, NULL, NULL, NULL, NULL, '2024-12-05 18:32:02', '2024-11-28 13:45:37', '2024-12-05 17:32:02'),
(180, 235, 'delivered', NULL, NULL, '2024-12-05 18:31:51', NULL, NULL, NULL, '2024-12-01 18:22:48', '2024-12-05 17:31:51'),
(181, 236, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-02 05:54:48', '2024-12-02 05:54:48'),
(182, 237, 'completed', NULL, NULL, NULL, '2025-01-07 12:07:59', NULL, NULL, '2024-12-05 13:57:53', '2025-01-07 06:07:59'),
(183, 238, 'completed', NULL, NULL, NULL, '2025-01-07 12:07:20', NULL, NULL, '2024-12-11 15:11:05', '2025-01-07 06:07:20'),
(204, 259, 'completed', NULL, NULL, NULL, '2025-01-07 12:05:39', NULL, NULL, '2025-01-07 06:04:45', '2025-01-07 06:05:39'),
(205, 260, 'completed', '2025-01-07 12:07:56', NULL, NULL, '2025-01-07 12:09:17', NULL, NULL, '2025-01-07 06:06:49', '2025-01-07 06:09:17'),
(206, 261, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-07 06:08:52', '2025-01-07 06:08:52');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `eyeweartype` varchar(255) DEFAULT NULL,
  `lens_type` varchar(255) DEFAULT NULL,
  `prescription_note` varchar(255) DEFAULT NULL,
  `prescription_image` varchar(255) DEFAULT NULL,
  `lens_price` decimal(8,2) DEFAULT 0.00,
  `item_price_withlens` decimal(8,2) DEFAULT 0.00,
  `rstatus` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `color_id`, `price`, `quantity`, `eyeweartype`, `lens_type`, `prescription_note`, `prescription_image`, `lens_price`, `item_price_withlens`, `rstatus`, `created_at`, `updated_at`) VALUES
(26, 57, 135, NULL, 599.00, 1, 'BuyOnlyFrame', NULL, NULL, NULL, 0.00, 599.00, 0, '2024-06-08 07:58:05', '2024-06-08 07:58:05'),
(27, 85, 136, NULL, 920.00, 1, NULL, NULL, NULL, NULL, NULL, 920.00, 0, '2024-06-11 08:03:35', '2024-06-11 08:03:35'),
(28, 85, 136, NULL, 920.00, 2, NULL, NULL, NULL, NULL, 0.00, 920.00, 0, '2024-06-11 08:03:35', '2024-06-11 08:03:35'),
(34, 66, 141, 24, 850.00, 1, NULL, NULL, NULL, NULL, 0.00, 850.00, 0, '2024-06-12 10:17:28', '2024-06-12 10:17:28'),
(35, 51, 142, 25, 624.00, 1, 'ChoosePowerLens', '600', 'I.P.D valo kore set korben ', 'prescriptions/CHYJE3H22jNcMV0O1KqnmoOaYn2pp04rRagR46ZD.jpg', 600.00, 1224.00, 0, '2024-06-13 10:15:32', '2024-06-13 10:15:32'),
(36, 85, 143, 26, 920.00, 1, 'BuyOnlyFrame', NULL, NULL, NULL, NULL, 920.00, 0, '2024-06-24 05:26:46', '2024-06-24 05:26:46'),
(37, 85, 144, 26, 920.00, 1, 'ChoosePowerLens', 'bluecut_UV_protected', 'Note Test', 'prescriptions/phWHDDkn6KZuciD1c8YSHZOYaX1McVn6L9RRmyDl.jpg', 600.00, 1520.00, 0, '2024-06-24 07:00:07', '2024-06-24 07:00:07'),
(38, 80, 145, 10, 999.00, 1, NULL, NULL, NULL, NULL, NULL, 999.00, 0, '2024-06-24 17:37:55', '2024-06-24 17:37:55'),
(39, 80, 146, 10, 999.00, 1, NULL, NULL, NULL, NULL, NULL, 999.00, 0, '2024-06-24 17:42:52', '2024-06-24 17:42:52'),
(40, 68, 147, 21, 890.00, 1, 'ChoosePowerLens', 'photosun_bluecut', NULL, NULL, 1500.00, 2390.00, 0, '2024-06-25 10:33:57', '2024-06-25 10:33:57'),
(62, 56, 169, 10, 599.00, 1, 'ChoosePowerLens', 'Normal_Lens', 'Power will be -2.75 for both eyes', NULL, 300.00, 899.00, 0, '2024-06-27 07:10:12', '2024-06-27 07:10:12'),
(63, 50, 170, 10, 616.00, 1, NULL, NULL, NULL, NULL, NULL, 616.00, 0, '2024-07-01 21:28:59', '2024-07-01 21:28:59'),
(64, 69, 171, 10, 1850.00, 1, NULL, NULL, NULL, NULL, 0.00, 1850.00, 0, '2024-07-03 08:13:10', '2024-07-03 08:13:10'),
(65, 50, 171, 16, 616.00, 1, NULL, NULL, NULL, NULL, 0.00, 616.00, 0, '2024-07-03 08:13:10', '2024-07-03 08:13:10'),
(66, 66, 172, 18, 850.00, 1, 'ChoosePowerLens', 'bluecut_UV_protected', NULL, 'prescription/dvBIBcLh8W6C6hzwDsROQWgDBMPa6tD1MfzYOqeV.jpg', 600.00, 1450.00, 0, '2024-07-03 15:43:27', '2024-07-03 15:43:27'),
(67, 50, 173, 16, 616.00, 1, NULL, NULL, NULL, NULL, NULL, 616.00, 0, '2024-07-04 12:05:12', '2024-07-04 12:05:12'),
(69, 116, 174, 24, 2198.00, 1, 'ChoosePowerLens', 'Normal_Lens', NULL, 'prescription/XeHEuqeX9dJVwrRMBtDlpDOpifKMFLInx3DJjP4z.jpg', 400.00, 2598.00, 0, '2024-07-08 10:00:59', '2024-07-08 10:00:59'),
(70, 91, 175, 24, 900.00, 1, 'ChoosePowerLens', 'Normal_Lens', 'Testing order', NULL, 400.00, 1300.00, 0, '2024-07-09 05:48:18', '2024-07-09 05:48:18'),
(71, 80, 176, 21, 999.00, 1, NULL, NULL, NULL, NULL, NULL, 999.00, 0, '2024-07-10 14:41:00', '2024-07-10 14:41:00'),
(72, 80, 177, 10, 1300.00, 1, NULL, NULL, NULL, NULL, 0.00, 1300.00, 0, '2024-07-13 08:23:30', '2024-07-13 08:23:30'),
(73, 80, 178, 26, 1300.00, 1, 'ChoosePowerLens', 'Normal_Lens', 'Test order', NULL, 300.00, 1600.00, 0, '2024-07-14 06:55:31', '2024-07-14 06:55:31'),
(74, 53, 179, 25, 720.00, 1, NULL, NULL, NULL, NULL, NULL, 720.00, 0, '2024-07-29 20:32:04', '2024-07-29 20:32:04'),
(75, 53, 180, 10, 900.00, 1, NULL, NULL, NULL, NULL, NULL, 900.00, 0, '2024-08-10 14:20:13', '2024-08-10 14:20:13'),
(76, 56, 181, 10, 719.00, 1, 'ChoosePowerLens', 'Anti_Reflect_Lens', 'Right eye : -.50\nLeft eye: -.75', NULL, 400.00, 1119.00, 0, '2024-08-12 06:44:29', '2024-08-12 06:44:29'),
(77, 56, 182, 23, 719.00, 1, 'ChoosePowerLens', 'bluecut_UV_protected', NULL, 'prescription/qqU3T5JPd1Ia1Rj35tPkxFCfn8XcPVQcHHYBMGPF.jpg', 600.00, 1319.00, 0, '2024-08-12 08:35:22', '2024-08-12 08:35:22'),
(78, 51, 183, 16, 780.00, 1, NULL, NULL, NULL, NULL, 0.00, 0.00, 0, '2024-08-12 10:18:06', '2024-08-12 10:18:06'),
(79, 50, 184, 16, 616.00, 1, 'ChoosePowerLens', 'bluecut_UV_protected', NULL, NULL, 600.00, 1216.00, 0, '2024-08-12 15:08:23', '2024-08-12 15:08:23'),
(80, 52, 185, 10, 720.00, 1, NULL, NULL, NULL, NULL, 0.00, 720.00, 0, '2024-08-13 01:01:57', '2024-08-13 01:01:57'),
(81, 82, 186, 10, 999.00, 1, NULL, NULL, NULL, NULL, 0.00, 999.00, 0, '2024-08-14 10:35:43', '2024-08-14 10:35:43'),
(82, 82, 187, 28, 999.00, 1, 'ChoosePowerLens', 'bluecut_UV_protected', 'I need this in two days . Can i get this ?', NULL, 600.00, 1599.00, 0, '2024-08-14 10:53:16', '2024-08-14 10:53:16'),
(83, 121, 188, 16, 2900.00, 1, 'ChoosePowerLens', 'premium_Blu_Cut_lens', 'no...', NULL, 1500.00, 4400.00, 0, '2024-08-14 11:28:00', '2024-08-14 11:28:00'),
(84, 120, 189, 10, 2550.00, 1, 'ChoosePowerLens', 'photosun_sunproof', 'Testing', 'prescription/XnVOuhiSz1I8SEw01FRAeGsxPHK87JxeCgNOEV9h.jpg', 400.00, 2950.00, 0, '2024-08-14 12:20:22', '2024-08-14 12:20:22'),
(85, 82, 190, 10, 999.00, 1, NULL, NULL, NULL, NULL, 0.00, 999.00, 0, '2024-08-14 13:10:32', '2024-08-14 13:10:32'),
(86, 58, 191, 16, 597.00, 1, NULL, NULL, NULL, NULL, NULL, 597.00, 0, '2024-08-14 14:12:53', '2024-08-14 14:12:53'),
(87, 91, 192, 24, 900.00, 1, 'ChoosePowerLens', 'Normal_Lens', 'ho', 'prescription/8CHP02CHH3b5OTRmohUZjzw85V3zzbRqHoWAPzXY.jpg', 400.00, 1300.00, 0, '2024-08-15 17:08:30', '2024-08-15 17:08:30'),
(88, 120, 192, 10, 2550.00, 1, 'ChoosePowerLens', 'Anti_Reflect_Lens', 'ho', 'prescription/8CHP02CHH3b5OTRmohUZjzw85V3zzbRqHoWAPzXY.jpg', 400.00, 2950.00, 0, '2024-08-15 17:08:30', '2024-08-15 17:08:30'),
(89, 53, 193, 10, 900.00, 1, NULL, NULL, NULL, NULL, NULL, 900.00, 0, '2024-08-15 18:44:08', '2024-08-15 18:44:08'),
(90, 82, 194, 26, 999.00, 1, 'ChoosePowerLens', 'premium_Blu_Cut_lens', 'Please give me a call before dispatching my parcel. ', NULL, 1500.00, 2499.00, 0, '2024-08-16 23:29:46', '2024-08-16 23:29:46'),
(91, 124, 195, 10, 1499.00, 1, 'ChoosePowerLens', 'Anti_Reflect_Lens', 'hello ', 'prescription/SGJmMxCO8XfcbqR5kQBBradgFTCefDRTAFU8oBu1.jpg', 400.00, 1899.00, 0, '2024-08-19 09:42:53', '2024-08-19 09:42:53'),
(92, 124, 196, 28, 1499.00, 1, 'ChoosePowerLens', 'premium_Blu_Cut_lens', '', 'prescription/cJyB3KELEOBrok69I0BXtFtPLarmQbeLcyx6PidN.jpg', 1500.00, 2999.00, 0, '2024-08-21 06:54:38', '2024-08-21 06:54:38'),
(93, 80, 197, 10, 999.00, 1, NULL, NULL, NULL, NULL, NULL, 999.00, 0, '2024-08-21 13:27:43', '2024-08-21 13:27:43'),
(94, 80, 198, 10, 999.00, 1, NULL, NULL, NULL, NULL, NULL, 999.00, 0, '2024-08-22 03:22:51', '2024-08-22 03:22:51'),
(95, 55, 198, 26, 840.00, 1, NULL, NULL, NULL, NULL, 0.00, 840.00, 0, '2024-08-22 03:22:51', '2024-08-22 03:22:51'),
(96, 50, 199, 16, 616.00, 1, 'ChoosePowerLens', 'Anti_Reflect_Lens', NULL, 'prescription/VeRqkNrrGzi4A91ab2tjwFsaDYEkpalsy3DOef6T.jpg', 400.00, 1016.00, 0, '2024-08-22 11:46:40', '2024-08-22 11:46:40'),
(97, 118, 199, 28, 2250.00, 1, 'ChoosePowerLens', 'bluecut_UV_protected', NULL, 'prescription/VeRqkNrrGzi4A91ab2tjwFsaDYEkpalsy3DOef6T.jpg', 600.00, 2850.00, 0, '2024-08-22 11:46:40', '2024-08-22 11:46:40'),
(98, 80, 200, 10, 1300.00, 1, NULL, NULL, NULL, NULL, NULL, 1300.00, 0, '2024-08-28 15:48:38', '2024-08-28 15:48:38'),
(99, 126, 201, 17, 990.00, 1, 'ChoosePowerLens', 'premium_Blu_Cut_lens', NULL, 'prescription/dwF1o9jynUJ9S79eRQpnBXv5L4hu6qsUJ8rx90WI.jpg', 1500.00, 2490.00, 0, '2024-08-28 15:55:58', '2024-08-28 15:55:58'),
(100, 126, 202, 16, 990.00, 1, 'ChoosePowerLens', 'Anti_Reflect_Lens', 'dsfsdd', 'prescription/j9RKYGM0zjfJqhBF88v8Q6vYAYuk8vKEZoPAEG4Y.jpg', 400.00, 1390.00, 0, '2024-08-28 16:19:42', '2024-08-28 16:19:42'),
(101, 79, 203, 10, 750.00, 1, 'ChoosePowerLens', 'Anti_Reflect_Lens', NULL, 'prescription/rTRpP4shAfUkZ0YDQB6JydRDSdvrOCDcGYsxHsYi.pdf', 400.00, 1150.00, 0, '2024-08-29 13:13:27', '2024-08-29 13:13:27'),
(102, 73, 204, 10, 1500.00, 1, NULL, NULL, NULL, NULL, 0.00, 1500.00, 0, '2024-08-31 06:54:25', '2024-08-31 06:54:25'),
(103, 127, 205, 21, 1160.00, 1, NULL, NULL, NULL, NULL, 0.00, 1160.00, 0, '2024-09-01 01:58:37', '2024-09-01 01:58:37'),
(104, 80, 206, 26, 1300.00, 1, 'ChoosePowerLens', 'Anti_Reflect_Lens', NULL, 'prescription/LJyRWtckeVuCnI4j3yCS93BwgZwqMUlU53IuoqBH.jpg', 400.00, 1700.00, 0, '2024-09-06 12:16:53', '2024-09-06 12:16:53'),
(105, 79, 207, 10, 750.00, 1, NULL, NULL, NULL, NULL, NULL, 750.00, 0, '2024-09-08 05:41:46', '2024-09-08 05:41:46'),
(106, 82, 208, 24, 999.00, 1, NULL, NULL, NULL, NULL, NULL, 999.00, 0, '2024-09-08 09:31:13', '2024-09-08 09:31:13'),
(107, 128, 209, 21, 1050.00, 1, NULL, NULL, NULL, NULL, 0.00, 1050.00, 0, '2024-09-09 14:32:55', '2024-09-09 14:32:55'),
(108, 53, 210, 10, 770.00, 1, NULL, NULL, NULL, NULL, 0.00, 770.00, 0, '2024-09-11 14:50:20', '2024-09-11 14:50:20'),
(109, 123, 211, 22, 599.00, 1, NULL, NULL, NULL, NULL, 0.00, 599.00, 0, '2024-09-13 10:28:56', '2024-09-13 10:28:56'),
(110, 123, 211, 24, 599.00, 1, NULL, NULL, NULL, NULL, 0.00, 599.00, 0, '2024-09-13 10:28:56', '2024-09-13 10:28:56'),
(111, 123, 211, 16, 599.00, 1, NULL, NULL, NULL, NULL, NULL, 599.00, 0, '2024-09-13 10:28:56', '2024-09-13 10:28:56'),
(112, 123, 212, 24, 599.00, 1, 'BuyOnlyFrame', NULL, NULL, NULL, NULL, 599.00, 0, '2024-09-15 10:45:08', '2024-09-15 10:45:08'),
(113, 129, 213, 18, 1490.00, 1, 'ChoosePowerLens', 'Anti_Reflect_Lens', NULL, 'prescription/E5c7IKNhSwJ7kMTcU3vKgp6pjrZbwSofoxcT7W7X.jpg', 400.00, 1890.00, 0, '2024-09-21 10:47:39', '2024-09-21 10:47:39'),
(114, 65, 214, 29, 990.00, 1, 'ChoosePowerLens', 'Anti_Reflect_Lens', NULL, 'prescription/FS3WHZIxJGKYUXk8RmfsuZiKQCYXyQ1xV1XYcwzF.jpg', 400.00, 1390.00, 0, '2024-09-21 12:17:12', '2024-09-21 12:17:12'),
(115, 57, 215, 10, 599.00, 1, 'ChoosePowerLens', 'Anti_Reflect_Lens', NULL, 'prescription/JgfFpfZ1n6HaHx03k5YaWDGGL7M0ZIOL6To9vJyO.jpg', 400.00, 999.00, 0, '2024-09-27 14:15:19', '2024-09-27 14:15:19'),
(116, 51, 216, 21, 650.00, 1, NULL, NULL, NULL, NULL, NULL, 650.00, 0, '2024-09-28 14:56:01', '2024-09-28 14:56:01'),
(117, 53, 217, 10, 770.00, 1, 'ChoosePowerLens', 'photosun_anti_reflection', NULL, 'prescription/SEFy0Ix1uiyRl6O2AtVzyiequHLV0f6YPKhh3zXs.jpg', 600.00, 1370.00, 0, '2024-09-29 03:49:48', '2024-09-29 03:49:48'),
(118, 134, 218, 21, 850.00, 1, NULL, NULL, NULL, NULL, 0.00, 850.00, 0, '2024-10-03 23:59:51', '2024-10-03 23:59:51'),
(119, 66, 219, 20, 850.00, 1, 'ChoosePowerLens', 'Anti_Reflect_Lens', NULL, 'prescription/S8LMMyA2iYh9VZWst6T8ykKCm61E2Md5MY6Zneug.jpg', 400.00, 1250.00, 0, '2024-10-04 16:54:47', '2024-10-04 16:54:47'),
(120, 81, 220, 10, 999.00, 1, NULL, NULL, NULL, NULL, NULL, 999.00, 0, '2024-10-08 06:02:36', '2024-10-08 06:02:36'),
(121, 80, 221, 10, 999.00, 1, 'ChoosePowerLens', 'bluecut_UV_protected', NULL, 'prescription/G0tD8pldM4LIssUW6DHHRX0u1HXzPvPzGo5MUxON.jpg', 600.00, 1599.00, 0, '2024-10-08 15:31:13', '2024-10-08 15:31:13'),
(122, 134, 222, 16, 850.00, 1, NULL, NULL, NULL, NULL, 0.00, 850.00, 0, '2024-10-10 13:19:13', '2024-10-10 13:19:13'),
(123, 134, 222, 21, 850.00, 1, NULL, NULL, NULL, NULL, 0.00, 850.00, 0, '2024-10-10 13:19:13', '2024-10-10 13:19:13'),
(124, 58, 223, 16, 599.00, 1, 'ChoosePowerLens', 'bluecut_UV_protected', NULL, 'prescription/lb5swMk4jRauyttsnQ3GbmMgQHJgDcTNshPXOkSM.jpg', 600.00, 1199.00, 0, '2024-10-13 11:08:05', '2024-10-13 11:08:05'),
(125, 128, 224, 21, 1050.00, 1, 'BuyOnlyFrame', NULL, NULL, NULL, NULL, 1050.00, 0, '2024-10-15 01:13:57', '2024-10-15 01:13:57'),
(126, 82, 225, 10, 999.00, 1, 'ChoosePowerLens', 'Normal_Lens', NULL, 'prescription/nWSo78fLzF2MRyYlRcqoFshQhlRPcut3kF0PVlTh.jpg', 300.00, 1299.00, 0, '2024-10-21 09:19:02', '2024-10-21 09:19:02'),
(127, 57, 226, 10, 599.00, 1, 'BuyOnlyFrame', NULL, NULL, NULL, 0.00, 599.00, 0, '2024-10-26 04:14:21', '2024-10-26 04:14:21'),
(128, 50, 227, 18, 770.00, 1, NULL, NULL, NULL, NULL, NULL, 770.00, 0, '2024-10-26 14:32:29', '2024-10-26 14:32:29'),
(129, 58, 228, 16, 599.00, 1, 'ChoosePowerLens', 'bluecut_UV_protected', NULL, 'prescription/lmoxZJaCxKqyIcrr0QURKsZOB8KzHR83pYlFEQVK.jpg', 600.00, 1199.00, 0, '2024-10-31 04:20:36', '2024-10-31 04:20:36'),
(130, 58, 229, 10, 599.00, 1, 'ChoosePowerLens', 'bluecut_UV_protected', NULL, 'prescription/5Y91RB2pRz3WMOwoGmLXBOifsHdsYJ3jE82D5Nh7.jpg', 600.00, 1199.00, 0, '2024-11-05 06:40:43', '2024-11-05 06:40:43'),
(131, 50, 229, 19, 770.00, 1, NULL, NULL, NULL, 'prescription/5Y91RB2pRz3WMOwoGmLXBOifsHdsYJ3jE82D5Nh7.jpg', 0.00, 770.00, 0, '2024-11-05 06:40:43', '2024-11-05 06:40:43'),
(132, 135, 230, 21, 1250.00, 1, 'ChoosePowerLens', 'photosun_sunproof', NULL, 'prescription/ixOQsBRwNCPJKonyXESzvNc5GUicbmzmyOmWZvVg.png', 400.00, 1650.00, 0, '2024-11-05 06:51:22', '2024-11-05 06:51:22'),
(133, 134, 230, 21, 850.00, 1, NULL, NULL, NULL, 'prescription/ixOQsBRwNCPJKonyXESzvNc5GUicbmzmyOmWZvVg.png', 0.00, 850.00, 0, '2024-11-05 06:51:22', '2024-11-05 06:51:22'),
(134, 50, 231, 20, 770.00, 1, NULL, NULL, NULL, NULL, 0.00, 770.00, 0, '2024-11-07 05:12:08', '2024-11-07 05:12:08'),
(135, 50, 231, 16, 770.00, 1, NULL, NULL, NULL, NULL, 0.00, 770.00, 0, '2024-11-07 05:12:08', '2024-11-07 05:12:08'),
(136, 58, 232, 10, 599.00, 1, 'ChoosePowerLens', 'Anti_Reflect_Lens', 'left eye : minus 1.50\nright eye: minus 2.00', 'prescription/Bf8U4fcJiLIJ3SZWuneJhHRaKJ3eP5KmFpsZG9aA.jpg', 400.00, 999.00, 0, '2024-11-16 18:30:31', '2024-11-16 18:30:31'),
(137, 137, 233, 28, 1090.00, 1, 'ChoosePowerLens', 'photosun_sunproof', NULL, 'prescription/EA7fCK7PXuuiotPxU1yvzOOQIWZw9jUbJzWPjFKI.jpg', 400.00, 1490.00, 0, '2024-11-28 09:24:43', '2024-11-28 09:24:43'),
(138, 80, 234, 26, 999.00, 1, NULL, NULL, NULL, NULL, 0.00, 999.00, 0, '2024-11-28 13:45:37', '2024-11-28 13:45:37'),
(139, 56, 235, 16, 719.00, 1, 'ChoosePowerLens', 'bluecut_UV_protected', NULL, 'prescription/IvShmkex6Zoz4uCWlRMDpkb8hKtV2m69nliHij6D.jpg', 600.00, 1319.00, 0, '2024-12-01 18:22:48', '2024-12-01 18:22:48'),
(140, 137, 236, 10, 1090.00, 1, NULL, NULL, NULL, NULL, NULL, 1090.00, 0, '2024-12-02 05:54:48', '2024-12-02 05:54:48'),
(141, 51, 237, 10, 650.00, 1, NULL, NULL, NULL, NULL, 0.00, 650.00, 0, '2024-12-05 13:57:53', '2024-12-05 13:57:53'),
(142, 123, 238, 21, 599.00, 1, NULL, NULL, NULL, NULL, 0.00, 599.00, 0, '2024-12-11 15:11:05', '2024-12-11 15:11:05'),
(143, 58, 238, 23, 599.00, 1, NULL, NULL, NULL, NULL, 0.00, 599.00, 0, '2024-12-11 15:11:05', '2024-12-11 15:11:05'),
(157, 144, 259, 10, 2100.00, 1, 'ChoosePowerLens', 'photosun_sunproof', '', 'prescription/yLycAmvWM7LZQ1soJ0hGiE8ZBNv6cbrlhzAyLN19.jpg', 400.00, 2100.00, 0, '2025-01-07 06:04:45', '2025-01-07 06:04:45'),
(158, 144, 260, 10, 1700.00, 1, NULL, NULL, NULL, NULL, NULL, 1700.00, 0, '2025-01-07 06:06:49', '2025-01-07 06:06:49'),
(159, 144, 261, 10, 1700.00, 1, NULL, NULL, NULL, NULL, NULL, 1700.00, 0, '2025-01-07 06:08:52', '2025-01-07 06:08:52');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `address` text DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `name`, `email`, `phone`, `amount`, `address`, `status`, `transaction_id`, `currency`) VALUES
(1, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '65fb183439357', 'BDT'),
(2, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '65fb183e75d4c', 'BDT'),
(3, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '65fb18d856af4', 'BDT'),
(4, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '65fb19851e73e', 'BDT'),
(5, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '65fba52736ba3', 'BDT'),
(6, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '65fbd5b5bd2b9', 'BDT');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(84, 'view brand', 'web', '2024-08-13 22:42:44', '2024-08-13 22:42:44'),
(85, 'create brand', 'web', '2024-08-13 22:42:56', '2024-08-13 22:42:56'),
(86, 'update brand', 'web', '2024-08-13 22:43:08', '2024-08-13 22:43:08'),
(87, 'delete brand', 'web', '2024-08-13 22:43:18', '2024-08-13 22:43:18'),
(88, 'view category', 'web', '2024-08-13 22:44:57', '2024-08-13 22:44:57'),
(89, 'create category', 'web', '2024-08-13 22:45:09', '2024-08-13 22:45:09'),
(90, 'update category', 'web', '2024-08-13 22:45:17', '2024-08-13 22:45:17'),
(91, 'delete category', 'web', '2024-08-13 22:45:22', '2024-08-13 22:45:22'),
(92, 'view variant', 'web', '2024-08-13 22:47:43', '2024-08-13 22:47:43'),
(93, 'create variant', 'web', '2024-08-13 22:47:48', '2024-08-13 22:47:48'),
(94, 'update variant', 'web', '2024-08-13 22:47:53', '2024-08-13 22:47:53'),
(95, 'delete variant', 'web', '2024-08-13 22:47:59', '2024-08-13 22:47:59'),
(96, 'view product', 'web', '2024-08-13 22:48:07', '2024-08-13 22:48:07'),
(97, 'create product', 'web', '2024-08-13 22:48:11', '2024-08-13 22:48:11'),
(98, 'update product', 'web', '2024-08-13 22:48:16', '2024-08-13 22:48:16'),
(99, 'delete product', 'web', '2024-08-13 22:48:20', '2024-08-13 22:48:20'),
(100, 'view order', 'web', '2024-08-13 22:48:48', '2024-08-13 22:48:48'),
(101, 'update order', 'web', '2024-08-13 22:48:57', '2024-08-13 22:48:57'),
(102, 'view invoice', 'web', '2024-08-13 22:49:19', '2024-08-13 22:49:19'),
(103, 'view courier', 'web', '2024-08-13 22:50:29', '2024-08-13 22:50:29'),
(104, 'create courier', 'web', '2024-08-13 22:50:37', '2024-08-13 22:50:37'),
(105, 'view customer', 'web', '2024-08-13 22:51:01', '2024-08-13 22:51:01'),
(106, 'create customer', 'web', '2024-08-13 22:51:08', '2024-08-13 22:51:08'),
(107, 'update customer', 'web', '2024-08-13 22:51:17', '2024-08-13 22:51:17'),
(108, 'delete customer', 'web', '2024-08-13 22:51:23', '2024-08-13 22:51:23'),
(109, 'view offer', 'web', '2024-08-13 22:51:50', '2024-08-13 22:51:50'),
(110, 'create offer', 'web', '2024-08-13 22:51:56', '2024-08-13 22:51:56'),
(111, 'update offer', 'web', '2024-08-13 22:52:02', '2024-08-13 22:52:02'),
(112, 'delete offer', 'web', '2024-08-13 22:52:07', '2024-08-13 22:52:07'),
(113, 'view coupon', 'web', '2024-08-13 22:52:36', '2024-08-13 22:52:36'),
(114, 'create coupon', 'web', '2024-08-13 22:52:42', '2024-08-13 22:52:42'),
(115, 'update coupon', 'web', '2024-08-13 22:52:48', '2024-08-13 22:52:48'),
(116, 'delete coupon', 'web', '2024-08-13 22:52:52', '2024-08-13 22:52:52'),
(117, 'view supplier', 'web', '2024-08-13 22:53:29', '2024-08-13 22:53:29'),
(118, 'create supplier', 'web', '2024-08-13 22:53:35', '2024-08-13 22:53:35'),
(119, 'update supplier', 'web', '2024-08-13 22:53:41', '2024-08-13 22:53:41'),
(120, 'delete supplier', 'web', '2024-08-13 22:53:46', '2024-08-13 22:53:46'),
(121, 'view featurecategory', 'web', '2024-08-13 22:54:05', '2024-08-13 22:54:05'),
(122, 'create featurecategory', 'web', '2024-08-13 22:54:10', '2024-08-13 22:54:10'),
(123, 'update featurecategory', 'web', '2024-08-13 22:54:16', '2024-08-13 22:54:16'),
(124, 'delete featurecategory', 'web', '2024-08-13 22:54:20', '2024-08-13 22:54:20'),
(125, 'view featureproduct', 'web', '2024-08-13 22:54:32', '2024-08-13 22:54:32'),
(126, 'create featureproduct', 'web', '2024-08-13 22:54:37', '2024-08-13 22:54:37'),
(127, 'update featureproduct', 'web', '2024-08-13 22:54:41', '2024-08-13 22:54:41'),
(128, 'delete featureproduct', 'web', '2024-08-13 22:54:45', '2024-08-13 22:54:45'),
(129, 'view transaction', 'web', '2024-08-13 22:55:11', '2024-08-13 22:55:11'),
(130, 'update transaction', 'web', '2024-08-13 22:55:15', '2024-08-13 22:55:15'),
(131, 'view slider', 'web', '2024-08-13 22:55:30', '2024-08-13 22:55:30'),
(132, 'create slider', 'web', '2024-08-13 22:55:34', '2024-08-13 22:55:34'),
(133, 'update slider', 'web', '2024-08-13 22:55:37', '2024-08-13 22:55:37'),
(134, 'delete slider', 'web', '2024-08-13 22:55:40', '2024-08-13 22:55:40'),
(135, 'view advertisement', 'web', '2024-08-13 22:56:12', '2024-08-13 22:56:12'),
(136, 'create advertisement', 'web', '2024-08-13 22:56:24', '2024-08-13 22:56:24'),
(137, 'update advertisement', 'web', '2024-08-13 22:56:28', '2024-08-13 22:56:28'),
(138, 'delete advertisement', 'web', '2024-08-13 22:56:31', '2024-08-13 22:56:31'),
(139, 'view campaign', 'web', '2024-08-13 22:56:41', '2024-08-13 22:56:41'),
(140, 'create campaign', 'web', '2024-08-13 22:56:44', '2024-08-13 22:56:44'),
(141, 'update campaign', 'web', '2024-08-13 22:56:47', '2024-08-13 22:56:47'),
(142, 'delete campaign', 'web', '2024-08-13 22:56:58', '2024-08-13 22:56:58'),
(143, 'view inventory', 'web', '2024-08-13 22:57:57', '2024-08-13 22:57:57'),
(144, 'create inventory', 'web', '2024-08-13 22:58:00', '2024-08-13 22:58:00'),
(145, 'view pos', 'web', '2024-08-13 22:58:32', '2024-08-13 22:58:32'),
(146, 'create pos', 'web', '2024-08-13 22:58:36', '2024-08-13 22:58:36'),
(147, 'view report', 'web', '2024-08-13 22:58:47', '2024-08-13 22:58:47'),
(148, 'view user', 'web', '2024-08-13 22:58:56', '2024-08-13 22:58:56'),
(149, 'create user', 'web', '2024-08-13 22:59:00', '2024-08-13 22:59:00'),
(150, 'update user', 'web', '2024-08-13 22:59:03', '2024-08-13 22:59:03'),
(151, 'delete user', 'web', '2024-08-13 22:59:06', '2024-08-13 22:59:06'),
(152, 'view websetting', 'web', '2024-08-13 22:59:35', '2024-08-13 22:59:35'),
(153, 'create websetting', 'web', '2024-08-13 22:59:38', '2024-08-13 22:59:38'),
(154, 'update websetting', 'web', '2024-08-13 22:59:42', '2024-08-13 22:59:42'),
(155, 'delete websetting', 'web', '2024-08-13 22:59:44', '2024-08-13 22:59:44'),
(156, 'view role', 'web', '2024-08-13 23:00:26', '2024-08-13 23:00:26'),
(157, 'view permission', 'web', '2024-08-13 23:00:33', '2024-08-13 23:00:33');

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
-- Table structure for table `postcodes`
--

CREATE TABLE `postcodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `upazila` varchar(255) NOT NULL,
  `zone_charge` decimal(10,0) DEFAULT 0,
  `postOffice` varchar(255) NOT NULL,
  `postCode` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `postcodes`
--

INSERT INTO `postcodes` (`id`, `division_id`, `district_id`, `upazila`, `zone_charge`, `postOffice`, `postCode`, `created_at`, `updated_at`) VALUES
(1, 1, 34, 'Amtali', 130, 'Amtali', '8710', NULL, NULL),
(2, 1, 34, 'Bamna', 130, 'Bamna', '8730', NULL, NULL),
(3, 1, 34, 'Barguna Sadar', 130, 'Barguna Sadar', '8700', NULL, NULL),
(4, 1, 34, 'Barguna Sadar', 130, 'Nali Bandar', '8701', NULL, NULL),
(5, 1, 34, 'Betagi', 130, 'Betagi', '8740', NULL, NULL),
(6, 1, 34, 'Betagi', 130, 'Darul Ulam', '8741', NULL, NULL),
(7, 1, 34, 'Patharghata', 130, 'Kakchira', '8721', NULL, NULL),
(8, 1, 34, 'Patharghata', 130, 'Patharghata', '8720', NULL, NULL),
(9, 1, 35, 'Agailzhara', 130, 'Agailzhara', '8240', NULL, NULL),
(10, 1, 35, 'Agailzhara', 130, 'Gaila', '8241', NULL, NULL),
(11, 1, 35, 'Agailzhara', 130, 'Paisarhat', '8242', NULL, NULL),
(12, 1, 35, 'Babuganj', 130, 'Babuganj', '8210', NULL, NULL),
(13, 1, 35, 'Babuganj', 130, 'Barisal Cadet', '8216', NULL, NULL),
(14, 1, 35, 'Babuganj', 130, 'Chandpasha', '8212', NULL, NULL),
(15, 1, 35, 'Babuganj', 130, 'Madhabpasha', '8213', NULL, NULL),
(16, 1, 35, 'Babuganj', 130, 'Nizamuddin College', '8215', NULL, NULL),
(17, 1, 35, 'Babuganj', 130, 'Rahamatpur', '8211', NULL, NULL),
(18, 1, 35, 'Babuganj', 130, 'Thakur Mallik', '8214', NULL, NULL),
(19, 1, 35, 'Barajalia', 130, 'Barajalia', '8260', NULL, NULL),
(20, 1, 35, 'Barajalia', 130, 'Osman Manjil', '8261', NULL, NULL),
(21, 1, 35, 'Barisal Sadar', 130, 'Barisal Sadar', '8200', NULL, NULL),
(22, 1, 35, 'Barisal Sadar', 130, 'Bukhainagar', '8201', NULL, NULL),
(23, 1, 35, 'Barisal Sadar', 130, 'Jaguarhat', '8206', NULL, NULL),
(24, 1, 35, 'Barisal Sadar', 130, 'Kashipur', '8205', NULL, NULL),
(25, 1, 35, 'Barisal Sadar', 130, 'Patang', '8204', NULL, NULL),
(26, 1, 35, 'Barisal Sadar', 130, 'Saheberhat', '8202', NULL, NULL),
(27, 1, 35, 'Barisal Sadar', 130, 'Sugandia', '8203', NULL, NULL),
(28, 1, 35, 'Gouranadi', 130, 'Batajor', '8233', NULL, NULL),
(29, 1, 35, 'Gouranadi', 130, 'Gouranadi', '8230', NULL, NULL),
(30, 1, 35, 'Gouranadi', 130, 'Kashemabad', '8232', NULL, NULL),
(31, 1, 35, 'Gouranadi', 130, 'Tarki Bandar', '8231', NULL, NULL),
(32, 1, 35, 'Mahendiganj', 130, 'Langutia', '8274', NULL, NULL),
(33, 1, 35, 'Mahendiganj', 130, 'Laskarpur', '8271', NULL, NULL),
(34, 1, 35, 'Mahendiganj', 130, 'Mahendiganj', '8270', NULL, NULL),
(35, 1, 35, 'Mahendiganj', 130, 'Nalgora', '8273', NULL, NULL),
(36, 1, 35, 'Mahendiganj', 130, 'Ulania', '8272', NULL, NULL),
(37, 1, 35, 'Muladi', 130, 'Charkalekhan', '8252', NULL, NULL),
(38, 1, 35, 'Muladi', 130, 'Kazirchar', '8251', NULL, NULL),
(39, 1, 35, 'Muladi', 130, 'Muladi', '8250', NULL, NULL),
(40, 1, 35, 'Sahebganj', 130, 'Charamandi', '8281', NULL, NULL),
(41, 1, 35, 'Sahebganj', 130, 'kalaskati', '8284', NULL, NULL),
(42, 1, 35, 'Sahebganj', 130, 'Padri Shibpur', '8282', NULL, NULL),
(43, 1, 35, 'Sahebganj', 130, 'Sahebganj', '8280', NULL, NULL),
(44, 1, 35, 'Sahebganj', 130, 'Shialguni', '8283', NULL, NULL),
(45, 1, 35, 'Uzirpur', 130, 'Dakuarhat', '8223', NULL, NULL),
(46, 1, 35, 'Uzirpur', 130, 'Dhamura', '8221', NULL, NULL),
(47, 1, 35, 'Uzirpur', 130, 'Jugirkanda', '8222', NULL, NULL),
(48, 1, 35, 'Uzirpur', 130, 'Shikarpur', '8224', NULL, NULL),
(49, 1, 35, 'Uzirpur', 130, 'Uzirpur', '8220', NULL, NULL),
(50, 1, 36, 'Bhola Sadar', 130, 'Bhola Sadar', '8300', NULL, NULL),
(51, 1, 36, 'Bhola Sadar', 130, 'Joynagar', '8301', NULL, NULL),
(52, 1, 36, 'Borhanuddin UPO', 130, 'Borhanuddin UPO', '8320', NULL, NULL),
(53, 1, 36, 'Borhanuddin UPO', 130, 'Mirzakalu', '8321', NULL, NULL),
(54, 1, 36, 'Charfashion', 130, 'Charfashion', '8340', NULL, NULL),
(55, 1, 36, 'Charfashion', 130, 'Dularhat', '8341', NULL, NULL),
(56, 1, 36, 'Charfashion', 130, 'Keramatganj', '8342', NULL, NULL),
(57, 1, 36, 'Doulatkhan', 130, 'Doulatkhan', '8310', NULL, NULL),
(58, 1, 36, 'Doulatkhan', 130, 'Hajipur', '8311', NULL, NULL),
(59, 1, 36, 'Hajirhat', 130, 'Hajirhat', '8360', NULL, NULL),
(60, 1, 36, 'Hatshoshiganj', 130, 'Hatshoshiganj', '8350', NULL, NULL),
(61, 1, 36, 'Lalmohan UPO', 130, 'Daurihat', '8331', NULL, NULL),
(62, 1, 36, 'Lalmohan UPO', 130, 'Gazaria', '8332', NULL, NULL),
(63, 1, 36, 'Lalmohan UPO', 130, 'Lalmohan UPO', '8330', NULL, NULL),
(64, 1, 37, 'Jhalokathi Sadar', 130, 'Baukathi', '8402', NULL, NULL),
(65, 1, 37, 'Jhalokathi Sadar', 130, 'Gabha', '8403', NULL, NULL),
(66, 1, 37, 'Jhalokathi Sadar', 130, 'Jhalokathi Sadar', '8400', NULL, NULL),
(67, 1, 37, 'Jhalokathi Sadar', 130, 'Nabagram', '8401', NULL, NULL),
(68, 1, 37, 'Jhalokathi Sadar', 130, 'Shekherhat', '8404', NULL, NULL),
(69, 1, 37, 'Kathalia', 130, 'Amua', '8431', NULL, NULL),
(70, 1, 37, 'Kathalia', 130, 'Kathalia', '8430', NULL, NULL),
(71, 1, 37, 'Kathalia', 130, 'Niamatee', '8432', NULL, NULL),
(72, 1, 37, 'Kathalia', 130, 'Shoulajalia', '8433', NULL, NULL),
(73, 1, 37, 'Nalchhiti', 130, 'Beerkathi', '8421', NULL, NULL),
(74, 1, 37, 'Nalchhiti', 130, 'Nalchhiti', '8420', NULL, NULL),
(75, 1, 37, 'Rajapur', 130, 'Rajapur', '8410', NULL, NULL),
(76, 1, 38, 'Bauphal', 130, 'Bagabandar', '8621', NULL, NULL),
(77, 1, 38, 'Bauphal', 130, 'Bauphal', '8620', NULL, NULL),
(78, 1, 38, 'Bauphal', 130, 'Birpasha', '8622', NULL, NULL),
(79, 1, 38, 'Bauphal', 130, 'Kalaia', '8624', NULL, NULL),
(80, 1, 38, 'Bauphal', 130, 'Kalishari', '8623', NULL, NULL),
(81, 1, 38, 'Dashmina', 130, 'Dashmina', '8630', NULL, NULL),
(82, 1, 38, 'Galachipa', 130, 'Galachipa', '8640', NULL, NULL),
(83, 1, 38, 'Galachipa', 130, 'Gazipur Bandar', '8641', NULL, NULL),
(84, 1, 38, 'Khepupara', 130, 'Khepupara', '8650', NULL, NULL),
(85, 1, 38, 'Khepupara', 130, 'Mahipur', '8651', NULL, NULL),
(86, 1, 38, 'Patuakhali Sadar', 130, 'Dumkee', '8602', NULL, NULL),
(87, 1, 38, 'Patuakhali Sadar', 130, 'Moukaran', '8601', NULL, NULL),
(88, 1, 38, 'Patuakhali Sadar', 130, 'Patuakhali Sadar', '8600', NULL, NULL),
(89, 1, 38, 'Patuakhali Sadar', 130, 'Rahimabad', '8603', NULL, NULL),
(90, 1, 38, 'Subidkhali', 130, 'Subidkhali', '8610', NULL, NULL),
(91, 1, 39, 'Banaripara', 130, 'Banaripara', '8530', NULL, NULL),
(92, 1, 39, 'Banaripara', 130, 'Chakhar', '8531', NULL, NULL),
(93, 1, 39, 'Bhandaria', 130, 'Bhandaria', '8550', NULL, NULL),
(94, 1, 39, 'Bhandaria', 130, 'Dhaoa', '8552', NULL, NULL),
(95, 1, 39, 'Bhandaria', 130, 'Kanudashkathi', '8551', NULL, NULL),
(96, 1, 39, 'kaukhali', 130, 'Jolagati', '8513', NULL, NULL),
(97, 1, 39, 'kaukhali', 130, 'Joykul', '8512', NULL, NULL),
(98, 1, 39, 'kaukhali', 130, 'Kaukhali', '8510', NULL, NULL),
(99, 1, 39, 'kaukhali', 130, 'Keundia', '8511', NULL, NULL),
(100, 1, 39, 'Mathbaria', 130, 'Betmor Natun Hat', '8565', NULL, NULL),
(101, 1, 39, 'Mathbaria', 130, 'Gulishakhali', '8563', NULL, NULL),
(102, 1, 39, 'Mathbaria', 130, 'Halta', '8562', NULL, NULL),
(103, 1, 39, 'Mathbaria', 130, 'Mathbaria', '8560', NULL, NULL),
(104, 1, 39, 'Mathbaria', 130, 'Shilarganj', '8566', NULL, NULL),
(105, 1, 39, 'Mathbaria', 130, 'Tiarkhali', '8564', NULL, NULL),
(106, 1, 39, 'Mathbaria', 130, 'Tushkhali', '8561', NULL, NULL),
(107, 1, 39, 'Nazirpur', 130, 'Nazirpur', '8540', NULL, NULL),
(108, 1, 39, 'Nazirpur', 130, 'Sriramkathi', '8541', NULL, NULL),
(109, 1, 39, 'Pirojpur Sadar', 130, 'Hularhat', '8501', NULL, NULL),
(110, 1, 39, 'Pirojpur Sadar', 130, 'Parerhat', '8502', NULL, NULL),
(111, 1, 39, 'Pirojpur Sadar', 130, 'Pirojpur Sadar', '8500', NULL, NULL),
(112, 1, 39, 'Swarupkathi', 130, 'Darus Sunnat', '8521', NULL, NULL),
(113, 1, 39, 'Swarupkathi', 130, 'Jalabari', '8523', NULL, NULL),
(114, 1, 39, 'Swarupkathi', 130, 'Kaurikhara', '8522', NULL, NULL),
(115, 1, 39, 'Swarupkathi', 130, 'Swarupkathi', '8520', NULL, NULL),
(116, 2, 40, 'Alikadam', 130, 'Alikadam', '4650', NULL, NULL),
(117, 2, 40, 'Bandarban Sadar', 130, 'Bandarban Sadar', '4600', NULL, NULL),
(118, 2, 40, 'Naikhong', 130, 'Naikhong', '4660', NULL, NULL),
(119, 2, 40, 'Roanchhari', 130, 'Roanchhari', '4610', NULL, NULL),
(120, 2, 40, 'Ruma', 130, 'Ruma', '4620', NULL, NULL),
(121, 2, 40, 'Thanchi', 130, 'Lama', '4641', NULL, NULL),
(122, 2, 40, 'Thanchi', 130, 'Thanchi', '4630', NULL, NULL),
(123, 2, 41, 'Akhaura', 130, 'Akhaura', '3450', NULL, NULL),
(124, 2, 41, 'Akhaura', 130, 'Azampur', '3451', NULL, NULL),
(125, 2, 41, 'Akhaura', 130, 'Gangasagar', '3452', NULL, NULL),
(126, 2, 41, 'Banchharampur', 130, 'Banchharampur', '3420', NULL, NULL),
(127, 2, 41, 'Brahamanbaria Sadar', 130, 'Ashuganj', '3402', NULL, NULL),
(128, 2, 41, 'Brahamanbaria Sadar', 130, 'Ashuganj Share', '3403', NULL, NULL),
(129, 2, 41, 'Brahamanbaria Sadar', 130, 'Brahamanbaria Sadar', '3400', NULL, NULL),
(130, 2, 41, 'Brahamanbaria Sadar', 130, 'Poun', '3404', NULL, NULL),
(131, 2, 41, 'Brahamanbaria Sadar', 130, 'Talshahar', '3401', NULL, NULL),
(132, 2, 41, 'Kasba', 130, 'Chandidar', '3462', NULL, NULL),
(133, 2, 41, 'Kasba', 130, 'Chargachh', '3463', NULL, NULL),
(134, 2, 41, 'Kasba', 130, 'Gopinathpur', '3464', NULL, NULL),
(135, 2, 41, 'Kasba', 130, 'Kasba', '3460', NULL, NULL),
(136, 2, 41, 'Kasba', 130, 'Kuti', '3461', NULL, NULL),
(137, 2, 41, 'Nabinagar', 130, 'Jibanganj', '3419', NULL, NULL),
(138, 2, 41, 'Nabinagar', 130, 'Kaitala', '3417', NULL, NULL),
(139, 2, 41, 'Nabinagar', 130, 'Laubfatehpur', '3411', NULL, NULL),
(140, 2, 41, 'Nabinagar', 130, 'Nabinagar', '3410', NULL, NULL),
(141, 2, 41, 'Nabinagar', 130, 'Rasullabad', '3412', NULL, NULL),
(142, 2, 41, 'Nabinagar', 130, 'Ratanpur', '3414', NULL, NULL),
(143, 2, 41, 'Nabinagar', 130, 'Salimganj', '3418', NULL, NULL),
(144, 2, 41, 'Nabinagar', 130, 'Shahapur', '3415', NULL, NULL),
(145, 2, 41, 'Nabinagar', 130, 'Shamgram', '3413', NULL, NULL),
(146, 2, 41, 'Nasirnagar', 130, 'Fandauk', '3441', NULL, NULL),
(147, 2, 41, 'Nasirnagar', 130, 'Nasirnagar', '3440', NULL, NULL),
(148, 2, 41, 'Sarail', 130, 'Chandura', '3432', NULL, NULL),
(149, 2, 41, 'Sarail', 130, 'Sarial', '3430', NULL, NULL),
(150, 2, 41, 'Sarail', 130, 'Shahbajpur', '3431', NULL, NULL),
(151, 2, 42, 'Chandpur Sadar', 130, 'Baburhat', '3602', NULL, NULL),
(152, 2, 42, 'Chandpur Sadar', 130, 'Chandpur Sadar', '3600', NULL, NULL),
(153, 2, 42, 'Chandpur Sadar', 130, 'Puranbazar', '3601', NULL, NULL),
(154, 2, 42, 'Chandpur Sadar', 130, 'Sahatali', '3603', NULL, NULL),
(155, 2, 42, 'Faridganj', 130, 'Chandra', '3651', NULL, NULL),
(156, 2, 42, 'Faridganj', 130, 'Faridganj', '3650', NULL, NULL),
(157, 2, 42, 'Faridganj', 130, 'Gridkaliandia', '3653', NULL, NULL),
(158, 2, 42, 'Faridganj', 130, 'Islampur Shah Isain', '3655', NULL, NULL),
(159, 2, 42, 'Faridganj', 130, 'Rampurbazar', '3654', NULL, NULL),
(160, 2, 42, 'Faridganj', 130, 'Rupsha', '3652', NULL, NULL),
(161, 2, 42, 'Hajiganj', 130, 'Bolakhal', '3611', NULL, NULL),
(162, 2, 42, 'Hajiganj', 130, 'Hajiganj', '3610', NULL, NULL),
(163, 2, 42, 'Hayemchar', 130, 'Gandamara', '3661', NULL, NULL),
(164, 2, 42, 'Hayemchar', 130, 'Hayemchar', '3660', NULL, NULL),
(165, 2, 42, 'Kachua', 130, 'Kachua', '3630', NULL, NULL),
(166, 2, 42, 'Kachua', 130, 'Pak Shrirampur', '3631', NULL, NULL),
(167, 2, 42, 'Kachua', 130, 'Rahima Nagar', '3632', NULL, NULL),
(168, 2, 42, 'Kachua', 130, 'Shachar', '3633', NULL, NULL),
(169, 2, 42, 'Matlobganj', 130, 'Kalipur', '3642', NULL, NULL),
(170, 2, 42, 'Matlobganj', 130, 'Matlobganj', '3640', NULL, NULL),
(171, 2, 42, 'Matlobganj', 130, 'Mohanpur', '3641', NULL, NULL),
(172, 2, 42, 'Shahrasti', 130, 'Chotoshi', '3623', NULL, NULL),
(173, 2, 42, 'Shahrasti', 130, 'Islamia Madrasha', '3624', NULL, NULL),
(174, 2, 42, 'Shahrasti', 130, 'Khilabazar', '3621', NULL, NULL),
(175, 2, 42, 'Shahrasti', 130, 'Pashchim Kherihar Al', '3622', NULL, NULL),
(176, 2, 42, 'Shahrasti', 130, 'Shahrasti', '3620', NULL, NULL),
(177, 2, 43, 'Anawara', 130, 'Anowara', '4376', NULL, NULL),
(178, 2, 43, 'Anawara', 130, 'Battali', '4378', NULL, NULL),
(179, 2, 43, 'Anawara', 130, 'Paroikora', '4377', NULL, NULL),
(180, 2, 43, 'Boalkhali', 130, 'Boalkhali', '4366', NULL, NULL),
(181, 2, 43, 'Boalkhali', 130, 'Charandwip', '4369', NULL, NULL),
(182, 2, 43, 'Boalkhali', 130, 'Iqbal Park', '4365', NULL, NULL),
(183, 2, 43, 'Boalkhali', 130, 'Kadurkhal', '4368', NULL, NULL),
(184, 2, 43, 'Boalkhali', 130, 'Kanungopara', '4363', NULL, NULL),
(185, 2, 43, 'Boalkhali', 130, 'Sakpura', '4367', NULL, NULL),
(186, 2, 43, 'Boalkhali', 130, 'Saroatoli', '4364', NULL, NULL),
(187, 2, 43, 'Chittagong Sadar', 130, 'Al- Amin Baria Madra', '4221', NULL, NULL),
(188, 2, 43, 'Chittagong Sadar', 130, 'Amin Jute Mills', '4211', NULL, NULL),
(189, 2, 43, 'Chittagong Sadar', 130, 'Anandabazar', '4215', NULL, NULL),
(190, 2, 43, 'Chittagong Sadar', 130, 'Bayezid Bostami', '4210', NULL, NULL),
(191, 2, 43, 'Chittagong Sadar', 130, 'Chandgaon', '4212', NULL, NULL),
(192, 2, 43, 'Chittagong Sadar', 130, 'Chawkbazar', '4203', NULL, NULL),
(193, 2, 43, 'Chittagong Sadar', 130, 'Chitt. Cantonment', '4220', NULL, NULL),
(194, 2, 43, 'Chittagong Sadar', 130, 'Chitt. Customs Acca', '4219', NULL, NULL),
(195, 2, 43, 'Chittagong Sadar', 130, 'Chitt. Politechnic In', '4209', NULL, NULL),
(196, 2, 43, 'Chittagong Sadar', 130, 'Chitt. Sailers Colon', '4218', NULL, NULL),
(197, 2, 43, 'Chittagong Sadar', 130, 'Chittagong Airport', '4205', NULL, NULL),
(198, 2, 43, 'Chittagong Sadar', 130, 'Chittagong Bandar', '4100', NULL, NULL),
(199, 2, 43, 'Chittagong Sadar', 130, 'Chittagong GPO', '4000', NULL, NULL),
(200, 2, 43, 'Chittagong Sadar', 130, 'Export Processing', '4223', NULL, NULL),
(201, 2, 43, 'Chittagong Sadar', 130, 'Firozshah', '4207', NULL, NULL),
(202, 2, 43, 'Chittagong Sadar', 130, 'Halishahar', '4216', NULL, NULL),
(203, 2, 43, 'Chittagong Sadar', 130, 'Halishshar', '4225', NULL, NULL),
(204, 2, 43, 'Chittagong Sadar', 130, 'Jalalabad', '4214', NULL, NULL),
(205, 2, 43, 'Chittagong Sadar', 130, 'Jaldia Merine Accade', '4206', NULL, NULL),
(206, 2, 43, 'Chittagong Sadar', 130, 'Middle Patenga', '4222', NULL, NULL),
(207, 2, 43, 'Chittagong Sadar', 130, 'Mohard', '4208', NULL, NULL),
(208, 2, 43, 'Chittagong Sadar', 130, 'North Halishahar', '4226', NULL, NULL),
(209, 2, 43, 'Chittagong Sadar', 130, 'North Katuli', '4217', NULL, NULL),
(210, 2, 43, 'Chittagong Sadar', 130, 'Pahartoli', '4202', NULL, NULL),
(211, 2, 43, 'Chittagong Sadar', 130, 'Patenga', '4204', NULL, NULL),
(212, 2, 43, 'Chittagong Sadar', 130, 'Rampura TSO', '4224', NULL, NULL),
(213, 2, 43, 'Chittagong Sadar', 130, 'Wazedia', '4213', NULL, NULL),
(214, 2, 43, 'East Joara', 130, 'Barma', '4383', NULL, NULL),
(215, 2, 43, 'East Joara', 130, 'Dohazari', '4382', NULL, NULL),
(216, 2, 43, 'East Joara', 130, 'East Joara', '4380', NULL, NULL),
(217, 2, 43, 'East Joara', 130, 'Gachbaria', '4381', NULL, NULL),
(218, 2, 43, 'Fatikchhari', 130, 'Bhandar Sharif', '4352', NULL, NULL),
(219, 2, 43, 'Fatikchhari', 130, 'Fatikchhari', '4350', NULL, NULL),
(220, 2, 43, 'Fatikchhari', 130, 'Harualchhari', '4354', NULL, NULL),
(221, 2, 43, 'Fatikchhari', 130, 'Najirhat', '4353', NULL, NULL),
(222, 2, 43, 'Fatikchhari', 130, 'Nanupur', '4351', NULL, NULL),
(223, 2, 43, 'Fatikchhari', 130, 'Narayanhat', '4355', NULL, NULL),
(224, 2, 43, 'Hathazari', 130, 'Chitt.University', '4331', NULL, NULL),
(225, 2, 43, 'Hathazari', 130, 'Fatahabad', '4335', NULL, NULL),
(226, 2, 43, 'Hathazari', 130, 'Gorduara', '4332', NULL, NULL),
(227, 2, 43, 'Hathazari', 130, 'Hathazari', '4330', NULL, NULL),
(228, 2, 43, 'Hathazari', 130, 'Katirhat', '4333', NULL, NULL),
(229, 2, 43, 'Hathazari', 130, 'Madrasa', '4339', NULL, NULL),
(230, 2, 43, 'Hathazari', 130, 'Mirzapur', '4334', NULL, NULL),
(231, 2, 43, 'Hathazari', 130, 'Nuralibari', '4337', NULL, NULL),
(232, 2, 43, 'Hathazari', 130, 'Yunus Nagar', '4338', NULL, NULL),
(233, 2, 43, 'Jaldi', 130, 'Banigram', '4393', NULL, NULL),
(234, 2, 43, 'Jaldi', 130, 'Gunagari', '4392', NULL, NULL),
(235, 2, 43, 'Jaldi', 130, 'Jaldi', '4390', NULL, NULL),
(236, 2, 43, 'Jaldi', 130, 'Khan Bahadur', '4391', NULL, NULL),
(237, 2, 43, 'Lohagara', 130, 'Chunti', '4398', NULL, NULL),
(238, 2, 43, 'Lohagara', 130, 'Lohagara', '4396', NULL, NULL),
(239, 2, 43, 'Lohagara', 130, 'Padua', '4397', NULL, NULL),
(240, 2, 43, 'Mirsharai', 130, 'Abutorab', '4321', NULL, NULL),
(241, 2, 43, 'Mirsharai', 130, 'Azampur', '4325', NULL, NULL),
(242, 2, 43, 'Mirsharai', 130, 'Bharawazhat', '4323', NULL, NULL),
(243, 2, 43, 'Mirsharai', 130, 'Darrogahat', '4322', NULL, NULL),
(244, 2, 43, 'Mirsharai', 130, 'Joarganj', '4324', NULL, NULL),
(245, 2, 43, 'Mirsharai', 130, 'Korerhat', '4327', NULL, NULL),
(246, 2, 43, 'Mirsharai', 130, 'Mirsharai', '4320', NULL, NULL),
(247, 2, 43, 'Mirsharai', 130, 'Mohazanhat', '4328', NULL, NULL),
(248, 2, 43, 'Patiya', 130, 'Budhpara', '4371', NULL, NULL),
(249, 2, 43, 'Patiya', 130, 'Patiya Head Office', '4370', NULL, NULL),
(250, 2, 43, 'Rangunia', 130, 'Dhamair', '4361', NULL, NULL),
(251, 2, 43, 'Rangunia', 130, 'Rangunia', '4360', NULL, NULL),
(252, 2, 43, 'Rouzan', 130, 'B.I.T Post Office', '4349', NULL, NULL),
(253, 2, 43, 'Rouzan', 130, 'Beenajuri', '4341', NULL, NULL),
(254, 2, 43, 'Rouzan', 130, 'Dewanpur', '4347', NULL, NULL),
(255, 2, 43, 'Rouzan', 130, 'Fatepur', '4345', NULL, NULL),
(256, 2, 43, 'Rouzan', 130, 'Gahira', '4343', NULL, NULL),
(257, 2, 43, 'Rouzan', 130, 'Guzra Noapara', '4346', NULL, NULL),
(258, 2, 43, 'Rouzan', 130, 'jagannath Hat', '4344', NULL, NULL),
(259, 2, 43, 'Rouzan', 130, 'Kundeshwari', '4342', NULL, NULL),
(260, 2, 43, 'Rouzan', 130, 'Mohamuni', '4348', NULL, NULL),
(261, 2, 43, 'Rouzan', 130, 'Rouzan', '4340', NULL, NULL),
(262, 2, 43, 'Sandwip', 130, 'Sandwip', '4300', NULL, NULL),
(263, 2, 43, 'Sandwip', 130, 'Shiberhat', '4301', NULL, NULL),
(264, 2, 43, 'Sandwip', 130, 'Urirchar', '4302', NULL, NULL),
(265, 2, 43, 'Satkania', 130, 'Baitul Ijjat', '4387', NULL, NULL),
(266, 2, 43, 'Satkania', 130, 'Bazalia', '4388', NULL, NULL),
(267, 2, 43, 'Satkania', 130, 'Satkania', '4386', NULL, NULL),
(268, 2, 43, 'Sitakunda', 130, 'Barabkunda', '4312', NULL, NULL),
(269, 2, 43, 'Sitakunda', 130, 'Baroidhala', '4311', NULL, NULL),
(270, 2, 43, 'Sitakunda', 130, 'Bawashbaria', '4313', NULL, NULL),
(271, 2, 43, 'Sitakunda', 130, 'Bhatiari', '4315', NULL, NULL),
(272, 2, 43, 'Sitakunda', 130, 'Fouzdarhat', '4316', NULL, NULL),
(273, 2, 43, 'Sitakunda', 130, 'Jafrabad', '4317', NULL, NULL),
(274, 2, 43, 'Sitakunda', 130, 'Kumira', '4314', NULL, NULL),
(275, 2, 43, 'Sitakunda', 130, 'Sitakunda', '4310', NULL, NULL),
(276, 2, 44, 'Barura', 130, 'Barura', '3560', NULL, NULL),
(277, 2, 44, 'Barura', 130, 'Murdafarganj', '3562', NULL, NULL),
(278, 2, 44, 'Barura', 130, 'Poyalgachha', '3561', NULL, NULL),
(279, 2, 44, 'Brahmanpara', 130, 'Brahmanpara', '3526', NULL, NULL),
(280, 2, 44, 'Burichang', 130, 'Burichang', '3520', NULL, NULL),
(281, 2, 44, 'Burichang', 130, 'Maynamoti bazar', '3521', NULL, NULL),
(282, 2, 44, 'Chandina', 130, 'Chandia', '3510', NULL, NULL),
(283, 2, 44, 'Chandina', 130, 'Madhaiabazar', '3511', NULL, NULL),
(284, 2, 44, 'Chouddagram', 130, 'Batisa', '3551', NULL, NULL),
(285, 2, 44, 'Chouddagram', 130, 'Chiora', '3552', NULL, NULL),
(286, 2, 44, 'Chouddagram', 130, 'Chouddagram', '3550', NULL, NULL),
(287, 2, 44, 'Comilla Sadar', 130, 'Comilla Contoment', '3501', NULL, NULL),
(288, 2, 44, 'Comilla Sadar', 130, 'Comilla Sadar', '3500', NULL, NULL),
(289, 2, 44, 'Comilla Sadar', 130, 'Courtbari', '3503', NULL, NULL),
(290, 2, 44, 'Comilla Sadar', 130, 'Halimanagar', '3502', NULL, NULL),
(291, 2, 44, 'Comilla Sadar', 130, 'Suaganj', '3504', NULL, NULL),
(292, 2, 44, 'Daudkandi', 130, 'Dashpara', '3518', NULL, NULL),
(293, 2, 44, 'Daudkandi', 130, 'Daudkandi', '3516', NULL, NULL),
(294, 2, 44, 'Daudkandi', 130, 'Eliotganj', '3519', NULL, NULL),
(295, 2, 44, 'Daudkandi', 130, 'Gouripur', '3517', NULL, NULL),
(296, 2, 44, 'Davidhar', 130, 'Barashalghar', '3532', NULL, NULL),
(297, 2, 44, 'Davidhar', 130, 'Davidhar', '3530', NULL, NULL),
(298, 2, 44, 'Davidhar', 130, 'Dhamtee', '3533', NULL, NULL),
(299, 2, 44, 'Davidhar', 130, 'Gangamandal', '3531', NULL, NULL),
(300, 2, 44, 'Homna', 130, 'Homna', '3546', NULL, NULL),
(301, 2, 44, 'Laksam', 130, 'Bipulasar', '3572', NULL, NULL),
(302, 2, 44, 'Laksam', 130, 'Laksam', '3570', NULL, NULL),
(303, 2, 44, 'Laksam', 130, 'Lakshamanpur', '3571', NULL, NULL),
(304, 2, 44, 'Langalkot', 130, 'Chhariabazar', '3582', NULL, NULL),
(305, 2, 44, 'Langalkot', 130, 'Dhalua', '3581', NULL, NULL),
(306, 2, 44, 'Langalkot', 130, 'Gunabati', '3583', NULL, NULL),
(307, 2, 44, 'Langalkot', 130, 'Langalkot', '3580', NULL, NULL),
(308, 2, 44, 'Muradnagar', 130, 'Bangra', '3543', NULL, NULL),
(309, 2, 44, 'Muradnagar', 130, 'Companyganj', '3542', NULL, NULL),
(310, 2, 44, 'Muradnagar', 130, 'Muradnagar', '3540', NULL, NULL),
(311, 2, 44, 'Muradnagar', 130, 'Pantibazar', '3545', NULL, NULL),
(312, 2, 44, 'Muradnagar', 130, 'Ramchandarpur', '3541', NULL, NULL),
(313, 2, 44, 'Muradnagar', 130, 'Sonakanda', '3544', NULL, NULL),
(314, 2, 45, 'Chiringga', 130, 'Badarkali', '4742', NULL, NULL),
(315, 2, 45, 'Chiringga', 130, 'Chiringga', '4740', NULL, NULL),
(316, 2, 45, 'Chiringga', 130, 'Chiringga S.O', '4741', NULL, NULL),
(317, 2, 45, 'Chiringga', 130, 'Malumghat', '4743', NULL, NULL),
(318, 2, 45, 'Coxs Bazar Sadar', 130, 'Coxs Bazar Sadar', '4700', NULL, NULL),
(319, 2, 45, 'Coxs Bazar Sadar', 130, 'Eidga', '4702', NULL, NULL),
(320, 2, 45, 'Coxs Bazar Sadar', 130, 'Zhilanja', '4701', NULL, NULL),
(321, 2, 45, 'Gorakghat', 130, 'Gorakghat', '4710', NULL, NULL),
(322, 2, 45, 'Kutubdia', 130, 'Kutubdia', '4720', NULL, NULL),
(323, 2, 45, 'Ramu', 130, 'Ramu', '4730', NULL, NULL),
(324, 2, 45, 'Teknaf', 130, 'Hnila', '4761', NULL, NULL),
(325, 2, 45, 'Teknaf', 130, 'St.Martin', '4762', NULL, NULL),
(326, 2, 45, 'Teknaf', 130, 'Teknaf', '4760', NULL, NULL),
(327, 2, 45, 'Ukhia', 130, 'Ukhia', '4750', NULL, NULL),
(328, 2, 46, 'Chhagalnaia', 130, 'Chhagalnaia', '3910', NULL, NULL),
(329, 2, 46, 'Chhagalnaia', 130, 'Daraga Hat', '3912', NULL, NULL),
(330, 2, 46, 'Chhagalnaia', 130, 'Maharajganj', '3911', NULL, NULL),
(331, 2, 46, 'Chhagalnaia', 130, 'Puabashimulia', '3913', NULL, NULL),
(332, 2, 46, 'Dagonbhuia', 130, 'Chhilonia', '3922', NULL, NULL),
(333, 2, 46, 'Dagonbhuia', 130, 'Dagondhuia', '3920', NULL, NULL),
(334, 2, 46, 'Dagonbhuia', 130, 'Dudmukha', '3921', NULL, NULL),
(335, 2, 46, 'Dagonbhuia', 130, 'Rajapur', '3923', NULL, NULL),
(336, 2, 46, 'Feni Sadar', 130, 'Fazilpur', '3901', NULL, NULL),
(337, 2, 46, 'Feni Sadar', 130, 'Feni Sadar', '3900', NULL, NULL),
(338, 2, 46, 'Feni Sadar', 130, 'Laskarhat', '3903', NULL, NULL),
(339, 2, 46, 'Feni Sadar', 130, 'Sharshadie', '3902', NULL, NULL),
(340, 2, 46, 'Pashurampur', 130, 'Fulgazi', '3942', NULL, NULL),
(341, 2, 46, 'Pashurampur', 130, 'Munshirhat', '3943', NULL, NULL),
(342, 2, 46, 'Pashurampur', 130, 'Pashurampur', '3940', NULL, NULL),
(343, 2, 46, 'Pashurampur', 130, 'Shuarbazar', '3941', NULL, NULL),
(344, 2, 46, 'Sonagazi', 130, 'Ahmadpur', '3932', NULL, NULL),
(345, 2, 46, 'Sonagazi', 130, 'Kazirhat', '3933', NULL, NULL),
(346, 2, 46, 'Sonagazi', 130, 'Motiganj', '3931', NULL, NULL),
(347, 2, 46, 'Sonagazi', 130, 'Sonagazi', '3930', NULL, NULL),
(348, 2, 47, 'Diginala', 130, 'Diginala', '4420', NULL, NULL),
(349, 2, 47, 'Khagrachari Sadar', 130, 'Khagrachari Sadar', '4400', NULL, NULL),
(350, 2, 47, 'Laxmichhari', 130, 'Laxmichhari', '4470', NULL, NULL),
(351, 2, 47, 'Mahalchhari', 130, 'Mahalchhari', '4430', NULL, NULL),
(352, 2, 47, 'Manikchhari', 130, 'Manikchhari', '4460', NULL, NULL),
(353, 2, 47, 'Matiranga', 130, 'Matiranga', '4450', NULL, NULL),
(354, 2, 47, 'Panchhari', 130, 'Panchhari', '4410', NULL, NULL),
(355, 2, 47, 'Ramghar Head Office', 130, 'Ramghar Head Office', '4440', NULL, NULL),
(356, 2, 48, 'Char Alexgander', 130, 'Char Alexgander', '3730', NULL, NULL),
(357, 2, 48, 'Char Alexgander', 130, 'Hajirghat', '3731', NULL, NULL),
(358, 2, 48, 'Char Alexgander', 130, 'Ramgatirhat', '3732', NULL, NULL),
(359, 2, 48, 'Lakshimpur Sadar', 130, 'Amani Lakshimpur', '3709', NULL, NULL),
(360, 2, 48, 'Lakshimpur Sadar', 130, 'Bhabaniganj', '3702', NULL, NULL),
(361, 2, 48, 'Lakshimpur Sadar', 130, 'Chandraganj', '3708', NULL, NULL),
(362, 2, 48, 'Lakshimpur Sadar', 130, 'Choupalli', '3707', NULL, NULL),
(363, 2, 48, 'Lakshimpur Sadar', 130, 'Dalal Bazar', '3701', NULL, NULL),
(364, 2, 48, 'Lakshimpur Sadar', 130, 'Duttapara', '3706', NULL, NULL),
(365, 2, 48, 'Lakshimpur Sadar', 130, 'Keramatganj', '3704', NULL, NULL),
(366, 2, 48, 'Lakshimpur Sadar', 130, 'Lakshimpur Sadar', '3700', NULL, NULL),
(367, 2, 48, 'Lakshimpur Sadar', 130, 'Mandari', '3703', NULL, NULL),
(368, 2, 48, 'Lakshimpur Sadar', 130, 'Rupchara', '3705', NULL, NULL),
(369, 2, 48, 'Ramganj', 130, 'Alipur', '3721', NULL, NULL),
(370, 2, 48, 'Ramganj', 130, 'Dolta', '3725', NULL, NULL),
(371, 2, 48, 'Ramganj', 130, 'Kanchanpur', '3723', NULL, NULL),
(372, 2, 48, 'Ramganj', 130, 'Naagmud', '3724', NULL, NULL),
(373, 2, 48, 'Ramganj', 130, 'Panpara', '3722', NULL, NULL),
(374, 2, 48, 'Ramganj', 130, 'Ramganj', '3720', NULL, NULL),
(375, 2, 48, 'Raypur', 130, 'Bhuabari', '3714', NULL, NULL),
(376, 2, 48, 'Raypur', 130, 'Haydarganj', '3713', NULL, NULL),
(377, 2, 48, 'Raypur', 130, 'Nagerdighirpar', '3712', NULL, NULL),
(378, 2, 48, 'Raypur', 130, 'Rakhallia', '3711', NULL, NULL),
(379, 2, 48, 'Raypur', 130, 'Raypur', '3710', NULL, NULL),
(380, 2, 49, 'Basurhat', 130, 'Basur Hat', '3850', NULL, NULL),
(381, 2, 49, 'Basurhat', 130, 'Charhajari', '3851', NULL, NULL),
(382, 2, 49, 'Begumganj', 130, 'Alaiarpur', '3831', NULL, NULL),
(383, 2, 49, 'Begumganj', 130, 'Amisha Para', '3847', NULL, NULL),
(384, 2, 49, 'Begumganj', 130, 'Banglabazar', '3822', NULL, NULL),
(385, 2, 49, 'Begumganj', 130, 'Bazra', '3824', NULL, NULL),
(386, 2, 49, 'Begumganj', 130, 'Begumganj', '3820', NULL, NULL),
(387, 2, 49, 'Begumganj', 130, 'Bhabani Jibanpur', '3837', NULL, NULL),
(388, 2, 49, 'Begumganj', 130, 'Choumohani', '3821', NULL, NULL),
(389, 2, 49, 'Begumganj', 130, 'Dauti', '3843', NULL, NULL),
(390, 2, 49, 'Begumganj', 130, 'Durgapur', '3848', NULL, NULL),
(391, 2, 49, 'Begumganj', 130, 'Gopalpur', '3828', NULL, NULL),
(392, 2, 49, 'Begumganj', 130, 'Jamidar Hat', '3825', NULL, NULL),
(393, 2, 49, 'Begumganj', 130, 'Joyag', '3844', NULL, NULL),
(394, 2, 49, 'Begumganj', 130, 'Joynarayanpur', '3829', NULL, NULL),
(395, 2, 49, 'Begumganj', 130, 'Khalafat Bazar', '3833', NULL, NULL),
(396, 2, 49, 'Begumganj', 130, 'Khalishpur', '3842', NULL, NULL),
(397, 2, 49, 'Begumganj', 130, 'Maheshganj', '3838', NULL, NULL),
(398, 2, 49, 'Begumganj', 130, 'Mir Owarishpur', '3823', NULL, NULL),
(399, 2, 49, 'Begumganj', 130, 'Nadona', '3839', NULL, NULL),
(400, 2, 49, 'Begumganj', 130, 'Nandiapara', '3841', NULL, NULL),
(401, 2, 49, 'Begumganj', 130, 'Oachhekpur', '3835', NULL, NULL),
(402, 2, 49, 'Begumganj', 130, 'Rajganj', '3834', NULL, NULL),
(403, 2, 49, 'Begumganj', 130, 'Sonaimuri', '3827', NULL, NULL),
(404, 2, 49, 'Begumganj', 130, 'Tangirpar', '3832', NULL, NULL),
(405, 2, 49, 'Begumganj', 130, 'Thanar Hat', '3845', NULL, NULL),
(406, 2, 49, 'Chatkhil', 130, 'Bansa Bazar', '3879', NULL, NULL),
(407, 2, 49, 'Chatkhil', 130, 'Bodalcourt', '3873', NULL, NULL),
(408, 2, 49, 'Chatkhil', 130, 'Chatkhil', '3870', NULL, NULL),
(409, 2, 49, 'Chatkhil', 130, 'Dosh Gharia', '3878', NULL, NULL),
(410, 2, 49, 'Chatkhil', 130, 'Karihati', '3877', NULL, NULL),
(411, 2, 49, 'Chatkhil', 130, 'Khilpara', '3872', NULL, NULL),
(412, 2, 49, 'Chatkhil', 130, 'Palla', '3871', NULL, NULL),
(413, 2, 49, 'Chatkhil', 130, 'Rezzakpur', '3874', NULL, NULL),
(414, 2, 49, 'Chatkhil', 130, 'Sahapur', '3881', NULL, NULL),
(415, 2, 49, 'Chatkhil', 130, 'Sampara', '3882', NULL, NULL),
(416, 2, 49, 'Chatkhil', 130, 'Shingbahura', '3883', NULL, NULL),
(417, 2, 49, 'Chatkhil', 130, 'Solla', '3875', NULL, NULL),
(418, 2, 49, 'Hatiya', 130, 'Afazia', '3891', NULL, NULL),
(419, 2, 49, 'Hatiya', 130, 'Hatiya', '3890', NULL, NULL),
(420, 2, 49, 'Hatiya', 130, 'Tamoraddi', '3892', NULL, NULL),
(421, 2, 49, 'Noakhali Sadar', 130, 'Chaprashir Hat', '3811', NULL, NULL),
(422, 2, 49, 'Noakhali Sadar', 130, 'Char Jabbar', '3812', NULL, NULL),
(423, 2, 49, 'Noakhali Sadar', 130, 'Charam Tua', '3809', NULL, NULL),
(424, 2, 49, 'Noakhali Sadar', 130, 'Din Monir Hat', '3803', NULL, NULL),
(425, 2, 49, 'Noakhali Sadar', 130, 'Kabirhat', '3807', NULL, NULL),
(426, 2, 49, 'Noakhali Sadar', 130, 'Khalifar Hat', '3808', NULL, NULL),
(427, 2, 49, 'Noakhali Sadar', 130, 'Mriddarhat', '3806', NULL, NULL),
(428, 2, 49, 'Noakhali Sadar', 130, 'Noakhali College', '3801', NULL, NULL),
(429, 2, 49, 'Noakhali Sadar', 130, 'Noakhali Sadar', '3800', NULL, NULL),
(430, 2, 49, 'Noakhali Sadar', 130, 'Pak Kishoreganj', '3804', NULL, NULL),
(431, 2, 49, 'Noakhali Sadar', 130, 'Sonapur', '3802', NULL, NULL),
(432, 2, 49, 'Senbag', 130, 'Beezbag', '3862', NULL, NULL),
(433, 2, 49, 'Senbag', 130, 'Chatarpaia', '3864', NULL, NULL),
(434, 2, 49, 'Senbag', 130, 'Kallyandi', '3861', NULL, NULL),
(435, 2, 49, 'Senbag', 130, 'Kankirhat', '3863', NULL, NULL),
(436, 2, 49, 'Senbag', 130, 'Senbag', '3860', NULL, NULL),
(437, 2, 49, 'Senbag', 130, 'T.P. Lamua', '3865', NULL, NULL),
(438, 2, 50, 'Barakal', 130, 'Barakal', '4570', NULL, NULL),
(439, 2, 50, 'Bilaichhari', 130, 'Bilaichhari', '4550', NULL, NULL),
(440, 2, 50, 'Jarachhari', 130, 'Jarachhari', '4560', NULL, NULL),
(441, 2, 50, 'Kalampati', 130, 'Betbunia', '4511', NULL, NULL),
(442, 2, 50, 'Kalampati', 130, 'Kalampati', '4510', NULL, NULL),
(443, 2, 50, 'kaptai', 130, 'Chandraghona', '4531', NULL, NULL),
(444, 2, 50, 'kaptai', 130, 'Kaptai', '4530', NULL, NULL),
(445, 2, 50, 'kaptai', 130, 'Kaptai Nuton Bazar', '4533', NULL, NULL),
(446, 2, 50, 'kaptai', 130, 'Kaptai Project', '4532', NULL, NULL),
(447, 2, 50, 'Longachh', 130, 'Longachh', '4580', NULL, NULL),
(448, 2, 50, 'Marishya', 130, 'Marishya', '4590', NULL, NULL),
(449, 2, 50, 'Naniachhar', 130, 'Nanichhar', '4520', NULL, NULL),
(450, 2, 50, 'Rajsthali', 130, 'Rajsthali', '4540', NULL, NULL),
(451, 2, 50, 'Rangamati Sadar', 130, 'Rangamati Sadar', '4500', NULL, NULL),
(452, 3, 1, 'Demra', 80, 'Demra', '1360', NULL, '2024-01-29 05:15:04'),
(453, 3, 1, 'Demra', 80, 'Matuail', '1362', NULL, '2024-01-29 05:15:04'),
(454, 3, 1, 'Demra', 80, 'Sarulia', '1361', NULL, '2024-01-29 05:15:04'),
(455, 3, 1, 'Dhaka Cantt.', 80, 'Dhaka CantonmentTSO', '1206', NULL, '2024-01-29 05:14:48'),
(456, 3, 1, 'Dhamrai', 80, 'Dhamrai', '1350', NULL, NULL),
(457, 3, 1, 'Dhamrai', 80, 'Kamalpur', '1351', NULL, NULL),
(458, 3, 1, 'Dhanmondi', 80, 'Jigatala TSO', '1209', NULL, NULL),
(459, 3, 1, 'Gulshan', 80, 'Banani TSO', '1213', NULL, NULL),
(460, 3, 1, 'Gulshan', 80, 'Gulshan Model Town', '1212', NULL, NULL),
(461, 3, 1, 'Jatrabari', 80, 'Dhania TSO', '1232', NULL, NULL),
(462, 3, 1, 'Joypara', 80, 'Joypara', '1330', NULL, NULL),
(463, 3, 1, 'Joypara', 80, 'Narisha', '1332', NULL, NULL),
(464, 3, 1, 'Joypara', 80, 'Palamganj', '1331', NULL, NULL),
(465, 3, 1, 'Keraniganj', 80, 'Ati', '1312', NULL, NULL),
(466, 3, 1, 'Keraniganj', 80, 'Dhaka Jute Mills', '1311', NULL, NULL),
(467, 3, 1, 'Keraniganj', 80, 'Kalatia', '1313', NULL, NULL),
(468, 3, 1, 'Keraniganj', 80, 'Keraniganj', '1310', NULL, NULL),
(469, 3, 1, 'Khilgaon', 80, 'KhilgaonTSO', '1219', NULL, '2024-01-30 01:24:24'),
(470, 3, 1, 'Khilkhet', 80, 'KhilkhetTSO', '1229', NULL, NULL),
(471, 3, 1, 'Lalbag', 80, 'Posta TSO', '1211', NULL, NULL),
(472, 3, 1, 'Mirpur', 80, 'Mirpur TSO', '1216', NULL, NULL),
(473, 3, 1, 'Mohammadpur', 80, 'Mohammadpur Housing', '1207', NULL, NULL),
(474, 3, 1, 'Mohammadpur', 80, 'Sangsad BhabanTSO', '1225', NULL, NULL),
(475, 3, 1, 'Motijheel', 80, 'BangabhabanTSO', '1222', NULL, NULL),
(476, 3, 1, 'Motijheel', 80, 'DilkushaTSO', '1223', NULL, NULL),
(477, 3, 1, 'Nawabganj', 80, 'Agla', '1323', NULL, NULL),
(478, 3, 1, 'Nawabganj', 80, 'Churain', '1325', NULL, NULL),
(479, 3, 1, 'Nawabganj', 80, 'Daudpur', '1322', NULL, NULL),
(480, 3, 1, 'Nawabganj', 80, 'Hasnabad', '1321', NULL, NULL),
(481, 3, 1, 'Nawabganj', 80, 'Khalpar', '1324', NULL, NULL),
(482, 3, 1, 'Nawabganj', 80, 'Nawabganj', '1320', NULL, NULL),
(483, 3, 1, 'New market', 80, 'New Market TSO', '1205', NULL, NULL),
(484, 3, 1, 'Palton', 80, 'Dhaka GPO', '1000', NULL, NULL),
(485, 3, 1, 'Ramna', 80, 'Shantinagr TSO', '1217', NULL, NULL),
(486, 3, 1, 'Sabujbag', 80, 'Basabo TSO', '1214', NULL, NULL),
(487, 3, 1, 'Savar', 80, 'Amin Bazar', '1348', NULL, NULL),
(488, 3, 1, 'Savar', 80, 'Dairy Farm', '1341', NULL, NULL),
(489, 3, 1, 'Savar', 80, 'EPZ', '1349', NULL, NULL),
(490, 3, 1, 'Savar', 80, 'Jahangirnagar Univer', '1342', NULL, NULL),
(491, 3, 1, 'Savar', 80, 'Kashem Cotton Mills', '1346', NULL, NULL),
(492, 3, 1, 'Savar', 80, 'Rajphulbaria', '1347', NULL, NULL),
(493, 3, 1, 'Savar', 80, 'Savar', '1340', NULL, NULL),
(494, 3, 1, 'Savar', 80, 'Savar Canttonment', '1344', NULL, NULL),
(495, 3, 1, 'Savar', 80, 'Saver P.A.T.C', '1343', NULL, NULL),
(496, 3, 1, 'Savar', 80, 'Shimulia', '1345', NULL, NULL),
(497, 3, 1, 'Sutrapur', 80, 'Dhaka Sadar HO', '1100', NULL, NULL),
(498, 3, 1, 'Sutrapur', 80, 'Gendaria TSO', '1204', NULL, NULL),
(499, 3, 1, 'Sutrapur', 80, 'Wari TSO', '1203', NULL, NULL),
(500, 3, 1, 'Tejgaon', 80, 'Tejgaon TSO', '1215', NULL, NULL),
(501, 3, 1, 'Tejgaon Industrial Area', 80, 'Dhaka Politechnic', '1208', NULL, NULL),
(502, 3, 1, 'Uttara', 80, 'Uttara Model TwonTSO', '1230', NULL, NULL),
(503, 3, 2, 'Alfadanga', 20, 'Alfadanga', '7870', NULL, '2024-01-30 00:09:24'),
(504, 3, 2, 'Bhanga', 130, 'Bhanga', '7830', NULL, NULL),
(505, 3, 2, 'Boalmari', 130, 'Boalmari', '7860', NULL, NULL),
(506, 3, 2, 'Boalmari', 130, 'Rupatpat', '7861', NULL, NULL),
(507, 3, 2, 'Charbhadrasan', 130, 'Charbadrashan', '7810', NULL, NULL),
(508, 3, 2, 'Faridpur Sadar', 130, 'Ambikapur', '7802', NULL, NULL),
(509, 3, 2, 'Faridpur Sadar', 130, 'Baitulaman Politecni', '7803', NULL, NULL),
(510, 3, 2, 'Faridpur Sadar', 130, 'Faridpursadar', '7800', NULL, NULL),
(511, 3, 2, 'Faridpur Sadar', 130, 'Kanaipur', '7801', NULL, NULL),
(512, 3, 2, 'Madukhali', 130, 'Kamarkali', '7851', NULL, NULL),
(513, 3, 2, 'Madukhali', 130, 'Madukhali', '7850', NULL, NULL),
(514, 3, 2, 'Nagarkanda', 130, 'Nagarkanda', '7840', NULL, NULL),
(515, 3, 2, 'Nagarkanda', 130, 'Talma', '7841', NULL, NULL),
(516, 3, 2, 'Sadarpur', 130, 'Bishwa jaker Manjil', '7822', NULL, NULL),
(517, 3, 2, 'Sadarpur', 130, 'Hat Krishapur', '7821', NULL, NULL),
(518, 3, 2, 'Sadarpur', 130, 'Sadarpur', '7820', NULL, NULL),
(519, 3, 2, 'Shriangan', 130, 'Shriangan', '7804', NULL, NULL),
(520, 3, 3, 'Gazipur Sadar', 130, 'B.O.F', '1703', NULL, NULL),
(521, 3, 3, 'Gazipur Sadar', 130, 'B.R.R', '1701', NULL, NULL),
(522, 3, 3, 'Gazipur Sadar', 130, 'Chandna', '1702', NULL, NULL),
(523, 3, 3, 'Gazipur Sadar', 130, 'Gazipur Sadar', '1700', NULL, NULL),
(524, 3, 3, 'Gazipur Sadar', 130, 'National University', '1704', NULL, NULL),
(525, 3, 3, 'Kaliakaar', 60, 'Kaliakaar', '1750', NULL, '2024-01-30 01:40:13'),
(526, 3, 3, 'Kaliakaar', 60, 'Safipur', '1751', NULL, '2024-01-30 01:40:13'),
(527, 3, 3, 'Kaliganj', 130, 'Kaliganj', '1720', NULL, NULL),
(528, 3, 3, 'Kaliganj', 130, 'Pubail', '1721', NULL, NULL),
(529, 3, 3, 'Kaliganj', 130, 'Santanpara', '1722', NULL, NULL),
(530, 3, 3, 'Kaliganj', 130, 'Vaoal Jamalpur', '1723', NULL, NULL),
(531, 3, 3, 'Kapashia', 130, 'kapashia', '1730', NULL, NULL),
(532, 3, 3, 'Monnunagar', 130, 'Ershad Nagar', '1712', NULL, NULL),
(533, 3, 3, 'Monnunagar', 130, 'Monnunagar', '1710', NULL, NULL),
(534, 3, 3, 'Monnunagar', 130, 'Nishat Nagar', '1711', NULL, NULL),
(535, 3, 3, 'Sreepur', 130, 'Barmi', '1743', NULL, NULL),
(536, 3, 3, 'Sreepur', 130, 'Bashamur', '1747', NULL, NULL),
(537, 3, 3, 'Sreepur', 130, 'Boubi', '1748', NULL, NULL),
(538, 3, 3, 'Sreepur', 130, 'Kawraid', '1745', NULL, NULL),
(539, 3, 3, 'Sreepur', 130, 'Satkhamair', '1744', NULL, NULL),
(540, 3, 3, 'Sreepur', 130, 'Sreepur', '1740', NULL, NULL),
(541, 3, 3, 'Sripur', 130, 'Rajendrapur', '1741', NULL, NULL),
(542, 3, 3, 'Sripur', 130, 'Rajendrapur Canttome', '1742', NULL, NULL),
(543, 3, 4, 'Gopalganj Sadar', 130, 'Barfa', '8102', NULL, NULL),
(544, 3, 4, 'Gopalganj Sadar', 130, 'Chandradighalia', '8013', NULL, NULL),
(545, 3, 4, 'Gopalganj Sadar', 130, 'Gopalganj Sadar', '8100', NULL, NULL),
(546, 3, 4, 'Gopalganj Sadar', 130, 'Ulpur', '8101', NULL, NULL),
(547, 3, 4, 'Kashiani', 130, 'Jonapur', '8133', NULL, NULL),
(548, 3, 4, 'Kashiani', 130, 'Kashiani', '8130', NULL, NULL),
(549, 3, 4, 'Kashiani', 130, 'Ramdia College', '8131', NULL, NULL),
(550, 3, 4, 'Kashiani', 130, 'Ratoil', '8132', NULL, NULL),
(551, 3, 4, 'Kotalipara', 130, 'Kotalipara', '8110', NULL, NULL),
(552, 3, 4, 'Maksudpur', 130, 'Batkiamari', '8141', NULL, NULL),
(553, 3, 4, 'Maksudpur', 130, 'Khandarpara', '8142', NULL, NULL),
(554, 3, 4, 'Maksudpur', 130, 'Maksudpur', '8140', NULL, NULL),
(555, 3, 4, 'Tungipara', 130, 'Patgati', '8121', NULL, NULL),
(556, 3, 4, 'Tungipara', 130, 'Tungipara', '8120', NULL, NULL),
(557, 3, 5, 'Dewangonj', 130, 'Dewangonj', '2030', NULL, NULL),
(558, 3, 5, 'Dewangonj', 130, 'Dewangonj S. Mills', '2031', NULL, NULL),
(559, 3, 5, 'Islampur', 130, 'Durmoot', '2021', NULL, NULL),
(560, 3, 5, 'Islampur', 130, 'Gilabari', '2022', NULL, NULL),
(561, 3, 5, 'Islampur', 130, 'Islampur', '2020', NULL, NULL),
(562, 3, 5, 'Jamalpur', 130, 'Jamalpur', '2000', NULL, NULL),
(563, 3, 5, 'Jamalpur', 130, 'Nandina', '2001', NULL, NULL),
(564, 3, 5, 'Jamalpur', 130, 'Narundi', '2002', NULL, NULL),
(565, 3, 5, 'Malandah', 130, 'Jamalpur', '2011', NULL, NULL),
(566, 3, 5, 'Malandah', 130, 'Mahmoodpur', '2013', NULL, NULL),
(567, 3, 5, 'Malandah', 130, 'Malancha', '2012', NULL, NULL),
(568, 3, 5, 'Malandah', 130, 'Malandah', '2010', NULL, NULL),
(569, 3, 5, 'Mathargonj', 130, 'Balijhuri', '2041', NULL, NULL),
(570, 3, 5, 'Mathargonj', 130, 'Mathargonj', '2040', NULL, NULL),
(571, 3, 5, 'Shorishabari', 130, 'Bausee', '2052', NULL, NULL),
(572, 3, 5, 'Shorishabari', 130, 'Gunerbari', '2051', NULL, NULL),
(573, 3, 5, 'Shorishabari', 130, 'Jagannath Ghat', '2053', NULL, NULL),
(574, 3, 5, 'Shorishabari', 130, 'Jamuna Sar Karkhana', '2055', NULL, NULL),
(575, 3, 5, 'Shorishabari', 130, 'Pingna', '2054', NULL, NULL),
(576, 3, 5, 'Shorishabari', 130, 'Shorishabari', '2050', NULL, NULL),
(577, 3, 6, 'Bajitpur', 130, 'Bajitpur', '2336', NULL, NULL),
(578, 3, 6, 'Bajitpur', 130, 'Laksmipur', '2338', NULL, NULL),
(579, 3, 6, 'Bajitpur', 130, 'Sararchar', '2337', NULL, NULL),
(580, 3, 6, 'Bhairob', 130, 'Bhairab', '2350', NULL, NULL),
(581, 3, 6, 'Hossenpur', 130, 'Hossenpur', '2320', NULL, NULL),
(582, 3, 6, 'Itna', 130, 'Itna', '2390', NULL, NULL),
(583, 3, 6, 'Karimganj', 130, 'Karimganj', '2310', NULL, NULL),
(584, 3, 6, 'Katiadi', 130, 'Gochhihata', '2331', NULL, NULL),
(585, 3, 6, 'Katiadi', 130, 'Katiadi', '2330', NULL, NULL),
(586, 3, 6, 'Kishoreganj Sadar', 130, 'Kishoreganj S.Mills', '2301', NULL, NULL),
(587, 3, 6, 'Kishoreganj Sadar', 130, 'Kishoreganj Sadar', '2300', NULL, NULL),
(588, 3, 6, 'Kishoreganj Sadar', 130, 'Maizhati', '2302', NULL, NULL),
(589, 3, 6, 'Kishoreganj Sadar', 130, 'Nilganj', '2303', NULL, NULL),
(590, 3, 6, 'Kuliarchar', 130, 'Chhoysuti', '2341', NULL, NULL),
(591, 3, 6, 'Kuliarchar', 130, 'Kuliarchar', '2340', NULL, NULL),
(592, 3, 6, 'Mithamoin', 130, 'Abdullahpur', '2371', NULL, NULL),
(593, 3, 6, 'Mithamoin', 130, 'MIthamoin', '2370', NULL, NULL),
(594, 3, 6, 'Nikli', 130, 'Nikli', '2360', NULL, NULL),
(595, 3, 6, 'Ostagram', 130, 'Ostagram', '2380', NULL, NULL),
(596, 3, 6, 'Pakundia', 130, 'Pakundia', '2326', NULL, NULL),
(597, 3, 6, 'Tarial', 130, 'Tarial', '2316', NULL, NULL),
(598, 3, 7, 'Barhamganj', 130, 'Bahadurpur', '7932', NULL, NULL),
(599, 3, 7, 'Barhamganj', 130, 'Barhamganj', '7930', NULL, NULL),
(600, 3, 7, 'Barhamganj', 130, 'Nilaksmibandar', '7931', NULL, NULL),
(601, 3, 7, 'Barhamganj', 130, 'Umedpur', '7933', NULL, NULL),
(602, 3, 7, 'kalkini', 130, 'Kalkini', '7920', NULL, NULL),
(603, 3, 7, 'kalkini', 130, 'Sahabrampur', '7921', NULL, NULL),
(604, 3, 7, 'Madaripur Sadar', 130, 'Charmugria', '7901', NULL, NULL),
(605, 3, 7, 'Madaripur Sadar', 130, 'Habiganj', '7903', NULL, NULL),
(606, 3, 7, 'Madaripur Sadar', 130, 'Kulpaddi', '7902', NULL, NULL),
(607, 3, 7, 'Madaripur Sadar', 130, 'Madaripur Sadar', '7900', NULL, NULL),
(608, 3, 7, 'Madaripur Sadar', 130, 'Mustafapur', '7904', NULL, NULL),
(609, 3, 7, 'Rajoir', 130, 'Khalia', '7911', NULL, NULL),
(610, 3, 7, 'Rajoir', 130, 'Rajoir', '7910', NULL, NULL),
(611, 3, 8, 'Doulatpur', 130, 'Doulatpur', '1860', NULL, NULL),
(612, 3, 8, 'Gheor', 130, 'Gheor', '1840', NULL, NULL),
(613, 3, 8, 'Lechhraganj', 130, 'Jhitka', '1831', NULL, NULL),
(614, 3, 8, 'Lechhraganj', 130, 'Lechhraganj', '1830', NULL, NULL),
(615, 3, 8, 'Manikganj Sadar', 130, 'Barangail', '1804', NULL, NULL),
(616, 3, 8, 'Manikganj Sadar', 130, 'Gorpara', '1802', NULL, NULL),
(617, 3, 8, 'Manikganj Sadar', 130, 'Mahadebpur', '1803', NULL, NULL),
(618, 3, 8, 'Manikganj Sadar', 130, 'Manikganj Bazar', '1801', NULL, NULL),
(619, 3, 8, 'Manikganj Sadar', 130, 'Manikganj Sadar', '1800', NULL, NULL),
(620, 3, 8, 'Saturia', 130, 'Baliati', '1811', NULL, NULL),
(621, 3, 8, 'Saturia', 130, 'Saturia', '1810', NULL, NULL),
(622, 3, 8, 'Shibloya', 130, 'Aricha', '1851', NULL, NULL),
(623, 3, 8, 'Shibloya', 130, 'Shibaloy', '1850', NULL, NULL),
(624, 3, 8, 'Shibloya', 130, 'Tewta', '1852', NULL, NULL),
(625, 3, 8, 'Shibloya', 130, 'Uthli', '1853', NULL, NULL),
(626, 3, 8, 'Singari', 130, 'Baira', '1821', NULL, NULL),
(627, 3, 8, 'Singari', 130, 'joymantop', '1822', NULL, NULL),
(628, 3, 8, 'Singari', 130, 'Singair', '1820', NULL, NULL),
(629, 3, 9, 'Gajaria', 130, 'Gajaria', '1510', NULL, NULL),
(630, 3, 9, 'Gajaria', 130, 'Hossendi', '1511', NULL, NULL),
(631, 3, 9, 'Gajaria', 130, 'Rasulpur', '1512', NULL, NULL),
(632, 3, 9, 'Lohajong', 130, 'Gouragonj', '1334', NULL, NULL),
(633, 3, 9, 'Lohajong', 130, 'Gouragonj', '1534', NULL, NULL),
(634, 3, 9, 'Lohajong', 130, 'Haldia SO', '1532', NULL, NULL),
(635, 3, 9, 'Lohajong', 130, 'Haridia', '1333', NULL, NULL),
(636, 3, 9, 'Lohajong', 130, 'Haridia DESO', '1533', NULL, NULL),
(637, 3, 9, 'Lohajong', 130, 'Korhati', '1531', NULL, NULL),
(638, 3, 9, 'Lohajong', 130, 'Lohajang', '1530', NULL, NULL),
(639, 3, 9, 'Lohajong', 130, 'Madini Mandal', '1335', NULL, NULL),
(640, 3, 9, 'Lohajong', 130, 'Medini Mandal EDSO', '1535', NULL, NULL),
(641, 3, 9, 'Munshiganj Sadar', 130, 'Kathakhali', '1503', NULL, NULL),
(642, 3, 9, 'Munshiganj Sadar', 130, 'Mirkadim', '1502', NULL, NULL),
(643, 3, 9, 'Munshiganj Sadar', 130, 'Munshiganj Sadar', '1500', NULL, NULL),
(644, 3, 9, 'Munshiganj Sadar', 130, 'Rikabibazar', '1501', NULL, NULL),
(645, 3, 9, 'Sirajdikhan', 130, 'Ichapur', '1542', NULL, NULL),
(646, 3, 9, 'Sirajdikhan', 130, 'Kola', '1541', NULL, NULL),
(647, 3, 9, 'Sirajdikhan', 130, 'Malkha Nagar', '1543', NULL, NULL),
(648, 3, 9, 'Sirajdikhan', 130, 'Shekher Nagar', '1544', NULL, NULL),
(649, 3, 9, 'Sirajdikhan', 130, 'Sirajdikhan', '1540', NULL, NULL),
(650, 3, 9, 'Srinagar', 130, 'Baghra', '1557', NULL, NULL),
(651, 3, 9, 'Srinagar', 130, 'Barikhal', '1551', NULL, NULL),
(652, 3, 9, 'Srinagar', 130, 'Bhaggyakul', '1558', NULL, NULL),
(653, 3, 9, 'Srinagar', 130, 'Hashara', '1553', NULL, NULL),
(654, 3, 9, 'Srinagar', 130, 'Kolapara', '1554', NULL, NULL),
(655, 3, 9, 'Srinagar', 130, 'Kumarbhog', '1555', NULL, NULL),
(656, 3, 9, 'Srinagar', 130, 'Mazpara', '1552', NULL, NULL),
(657, 3, 9, 'Srinagar', 130, 'Srinagar', '1550', NULL, NULL),
(658, 3, 9, 'Srinagar', 130, 'Vaggyakul SO', '1556', NULL, NULL),
(659, 3, 9, 'Tangibari', 130, 'Bajrajugini', '1523', NULL, NULL),
(660, 3, 9, 'Tangibari', 130, 'Baligao', '1522', NULL, NULL),
(661, 3, 9, 'Tangibari', 130, 'Betkahat', '1521', NULL, NULL),
(662, 3, 9, 'Tangibari', 130, 'Dighirpar', '1525', NULL, NULL),
(663, 3, 9, 'Tangibari', 130, 'Hasail', '1524', NULL, NULL),
(664, 3, 9, 'Tangibari', 130, 'Pura', '1527', NULL, NULL),
(665, 3, 9, 'Tangibari', 130, 'Pura EDSO', '1526', NULL, NULL),
(666, 3, 9, 'Tangibari', 130, 'Tangibari', '1520', NULL, NULL),
(667, 3, 10, 'Bhaluka', 130, 'Bhaluka', '2240', NULL, NULL),
(668, 3, 10, 'Fulbaria', 130, 'Fulbaria', '2216', NULL, NULL),
(669, 3, 10, 'Gaforgaon', 130, 'Duttarbazar', '2234', NULL, NULL),
(670, 3, 10, 'Gaforgaon', 130, 'Gaforgaon', '2230', NULL, NULL),
(671, 3, 10, 'Gaforgaon', 130, 'Kandipara', '2233', NULL, NULL),
(672, 3, 10, 'Gaforgaon', 130, 'Shibganj', '2231', NULL, NULL),
(673, 3, 10, 'Gaforgaon', 130, 'Usti', '2232', NULL, NULL),
(674, 3, 10, 'Gouripur', 130, 'Gouripur', '2270', NULL, NULL),
(675, 3, 10, 'Gouripur', 130, 'Ramgopalpur', '2271', NULL, NULL),
(676, 3, 10, 'Haluaghat', 130, 'Dhara', '2261', NULL, NULL),
(677, 3, 10, 'Haluaghat', 130, 'Haluaghat', '2260', NULL, NULL),
(678, 3, 10, 'Haluaghat', 130, 'Munshirhat', '2262', NULL, NULL),
(679, 3, 10, 'Isshwargonj', 130, 'Atharabari', '2282', NULL, NULL),
(680, 3, 10, 'Isshwargonj', 130, 'Isshwargonj', '2280', NULL, NULL),
(681, 3, 10, 'Isshwargonj', 130, 'Sohagi', '2281', NULL, NULL),
(682, 3, 10, 'Muktagachha', 130, 'Muktagachha', '2210', NULL, NULL),
(683, 3, 10, 'Mymensingh Sadar', 130, 'Agriculture Universi', '2202', NULL, NULL),
(684, 3, 10, 'Mymensingh Sadar', 130, 'Biddyaganj', '2204', NULL, NULL),
(685, 3, 10, 'Mymensingh Sadar', 130, 'Kawatkhali', '2201', NULL, NULL),
(686, 3, 10, 'Mymensingh Sadar', 130, 'Mymensingh Sadar', '2200', NULL, NULL),
(687, 3, 10, 'Mymensingh Sadar', 130, 'Pearpur', '2205', NULL, NULL),
(688, 3, 10, 'Mymensingh Sadar', 130, 'Shombhuganj', '2203', NULL, NULL),
(689, 3, 10, 'Nandail', 130, 'Gangail', '2291', NULL, NULL),
(690, 3, 10, 'Nandail', 130, 'Nandail', '2290', NULL, NULL),
(691, 3, 10, 'Phulpur', 130, 'Beltia', '2251', NULL, NULL),
(692, 3, 10, 'Phulpur', 130, 'Phulpur', '2250', NULL, NULL),
(693, 3, 10, 'Phulpur', 130, 'Tarakanda', '2252', NULL, NULL),
(694, 3, 10, 'Trishal', 130, 'Ahmadbad', '2221', NULL, NULL),
(695, 3, 10, 'Trishal', 130, 'Dhala', '2223', NULL, NULL),
(696, 3, 10, 'Trishal', 130, 'Ram Amritaganj', '2222', NULL, NULL),
(697, 3, 10, 'Trishal', 130, 'Trishal', '2220', NULL, NULL),
(698, 3, 11, 'Araihazar', 130, 'Araihazar', '1450', NULL, NULL),
(699, 3, 11, 'Araihazar', 130, 'Gopaldi', '1451', NULL, NULL),
(700, 3, 11, 'Baidder Bazar', 130, 'Baidder Bazar', '1440', NULL, NULL),
(701, 3, 11, 'Baidder Bazar', 130, 'Bara Nagar', '1441', NULL, NULL),
(702, 3, 11, 'Baidder Bazar', 130, 'Barodi', '1442', NULL, NULL),
(703, 3, 11, 'Bandar', 130, 'Bandar', '1410', NULL, NULL),
(704, 3, 11, 'Bandar', 130, 'BIDS', '1413', NULL, NULL),
(705, 3, 11, 'Bandar', 130, 'D.C Mills', '1411', NULL, NULL),
(706, 3, 11, 'Bandar', 130, 'Madanganj', '1414', NULL, NULL),
(707, 3, 11, 'Bandar', 130, 'Nabiganj', '1412', NULL, NULL),
(708, 3, 11, 'Fatullah', 130, 'Fatulla Bazar', '1421', NULL, NULL),
(709, 3, 11, 'Fatullah', 130, 'Fatullah', '1420', NULL, NULL),
(710, 3, 11, 'Narayanganj Sadar', 130, 'Narayanganj Sadar', '1400', NULL, NULL),
(711, 3, 11, 'Rupganj', 130, 'Bhulta', '1462', NULL, NULL),
(712, 3, 11, 'Rupganj', 130, 'Kanchan', '1461', NULL, NULL),
(713, 3, 11, 'Rupganj', 130, 'Murapara', '1464', NULL, NULL),
(714, 3, 11, 'Rupganj', 130, 'Nagri', '1463', NULL, NULL),
(715, 3, 11, 'Rupganj', 130, 'Rupganj', '1460', NULL, NULL),
(716, 3, 11, 'Siddirganj', 130, 'Adamjeenagar', '1431', NULL, NULL),
(717, 3, 11, 'Siddirganj', 130, 'LN Mills', '1432', NULL, NULL),
(718, 3, 11, 'Siddirganj', 130, 'Siddirganj', '1430', NULL, NULL),
(719, 3, 12, 'Belabo', 130, 'Belabo', '1640', NULL, NULL),
(720, 3, 12, 'Monohordi', 130, 'Hatirdia', '1651', NULL, NULL),
(721, 3, 12, 'Monohordi', 130, 'Katabaria', '1652', NULL, NULL),
(722, 3, 12, 'Monohordi', 130, 'Monohordi', '1650', NULL, NULL),
(723, 3, 12, 'Narshingdi Sadar', 130, 'Karimpur', '1605', NULL, NULL),
(724, 3, 12, 'Narshingdi Sadar', 130, 'Madhabdi', '1604', NULL, NULL),
(725, 3, 12, 'Narshingdi Sadar', 130, 'Narshingdi College', '1602', NULL, NULL),
(726, 3, 12, 'Narshingdi Sadar', 130, 'Narshingdi Sadar', '1600', NULL, NULL),
(727, 3, 12, 'Narshingdi Sadar', 130, 'Panchdona', '1603', NULL, NULL),
(728, 3, 12, 'Narshingdi Sadar', 130, 'UMC Jute Mills', '1601', NULL, NULL),
(729, 3, 12, 'Palash', 130, 'Char Sindhur', '1612', NULL, NULL),
(730, 3, 12, 'Palash', 130, 'Ghorashal', '1613', NULL, NULL),
(731, 3, 12, 'Palash', 130, 'Ghorashal Urea Facto', '1611', NULL, NULL),
(732, 3, 12, 'Palash', 130, 'Palash', '1610', NULL, NULL),
(733, 3, 12, 'Raypura', 130, 'Bazar Hasnabad', '1631', NULL, NULL),
(734, 3, 12, 'Raypura', 130, 'Radhaganj bazar', '1632', NULL, NULL),
(735, 3, 12, 'Raypura', 130, 'Raypura', '1630', NULL, NULL),
(736, 3, 12, 'Shibpur', 130, 'Shibpur', '1620', NULL, NULL),
(737, 3, 13, 'Susung Durgapur', 130, 'Susnng Durgapur', '2420', NULL, NULL),
(738, 3, 13, 'Atpara', 130, 'Atpara', '2470', NULL, NULL),
(739, 3, 13, 'Barhatta', 130, 'Barhatta', '2440', NULL, NULL),
(740, 3, 13, 'Dharmapasha', 130, 'Dharampasha', '2450', NULL, NULL),
(741, 3, 13, 'Dhobaura', 130, 'Dhobaura', '2416', NULL, NULL),
(742, 3, 13, 'Dhobaura', 130, 'Sakoai', '2417', NULL, NULL),
(743, 3, 13, 'Kalmakanda', 130, 'Kalmakanda', '2430', NULL, NULL),
(744, 3, 13, 'Kendua', 130, 'Kendua', '2480', NULL, NULL),
(745, 3, 13, 'Khaliajuri', 130, 'Khaliajhri', '2460', NULL, NULL),
(746, 3, 13, 'Khaliajuri', 130, 'Shaldigha', '2462', NULL, NULL),
(747, 3, 13, 'Madan', 130, 'Madan', '2490', NULL, NULL),
(748, 3, 13, 'Moddhynagar', 130, 'Moddoynagar', '2456', NULL, NULL),
(749, 3, 13, 'Mohanganj', 130, 'Mohanganj', '2446', NULL, NULL),
(750, 3, 13, 'Netrakona Sadar', 130, 'Baikherhati', '2401', NULL, NULL),
(751, 3, 13, 'Netrakona Sadar', 130, 'Netrakona Sadar', '2400', NULL, NULL),
(752, 3, 13, 'Purbadhola', 130, 'Jaria Jhanjhail', '2412', NULL, NULL),
(753, 3, 13, 'Purbadhola', 130, 'Purbadhola', '2410', NULL, NULL),
(754, 3, 13, 'Purbadhola', 130, 'Shamgonj', '2411', NULL, NULL),
(755, 3, 14, 'Baliakandi', 130, 'Baliakandi', '7730', NULL, NULL),
(756, 3, 14, 'Baliakandi', 130, 'Nalia', '7731', NULL, NULL),
(757, 3, 14, 'Pangsha', 130, 'Mrigibazar', '7723', NULL, NULL),
(758, 3, 14, 'Pangsha', 130, 'Pangsha', '7720', NULL, NULL),
(759, 3, 14, 'Pangsha', 130, 'Ramkol', '7721', NULL, NULL),
(760, 3, 14, 'Pangsha', 130, 'Ratandia', '7722', NULL, NULL),
(761, 3, 14, 'Rajbari Sadar', 130, 'Goalanda', '7710', NULL, NULL),
(762, 3, 14, 'Rajbari Sadar', 130, 'Khankhanapur', '7711', NULL, NULL),
(763, 3, 14, 'Rajbari Sadar', 130, 'Rajbari Sadar', '7700', NULL, NULL),
(764, 3, 15, 'Bhedorganj', 130, 'Bhedorganj', '8030', NULL, NULL),
(765, 3, 15, 'Damudhya', 130, 'Damudhya', '8040', NULL, NULL),
(766, 3, 15, 'Gosairhat', 130, 'Gosairhat', '8050', NULL, NULL),
(767, 3, 15, 'Jajira', 130, 'Jajira', '8010', NULL, NULL),
(768, 3, 15, 'Naria', 130, 'Bhozeshwar', '8021', NULL, NULL),
(769, 3, 15, 'Naria', 130, 'Gharisar', '8022', NULL, NULL),
(770, 3, 15, 'Naria', 130, 'Kartikpur', '8024', NULL, NULL),
(771, 3, 15, 'Naria', 130, 'Naria', '8020', NULL, NULL),
(772, 3, 15, 'Naria', 130, 'Upshi', '8023', NULL, NULL),
(773, 3, 15, 'Shariatpur Sadar', 130, 'Angaria', '8001', NULL, NULL),
(774, 3, 15, 'Shariatpur Sadar', 130, 'Chikandi', '8002', NULL, NULL),
(775, 3, 15, 'Shariatpur Sadar', 130, 'Shariatpur Sadar', '8000', NULL, NULL),
(776, 3, 16, 'Bakshigonj', 130, 'Bakshigonj', '2140', NULL, NULL),
(777, 3, 16, 'Jhinaigati', 130, 'Jhinaigati', '2120', NULL, NULL),
(778, 3, 16, 'Nakla', 130, 'Gonopaddi', '2151', NULL, NULL),
(779, 3, 16, 'Nakla', 130, 'Nakla', '2150', NULL, NULL),
(780, 3, 16, 'Nalitabari', 130, 'Hatibandha', '2111', NULL, NULL);
INSERT INTO `postcodes` (`id`, `division_id`, `district_id`, `upazila`, `zone_charge`, `postOffice`, `postCode`, `created_at`, `updated_at`) VALUES
(781, 3, 16, 'Nalitabari', 130, 'Nalitabari', '2110', NULL, NULL),
(782, 3, 16, 'Sherpur Shadar', 130, 'Sherpur Shadar', '2100', NULL, NULL),
(783, 3, 16, 'Shribardi', 130, 'Shribardi', '2130', NULL, NULL),
(784, 3, 17, 'Basail', 130, 'Basail', '1920', NULL, NULL),
(785, 3, 17, 'Bhuapur', 130, 'Bhuapur', '1960', NULL, NULL),
(786, 3, 17, 'Delduar', 130, 'Delduar', '1910', NULL, NULL),
(787, 3, 17, 'Delduar', 130, 'Elasin', '1913', NULL, NULL),
(788, 3, 17, 'Delduar', 130, 'Hinga Nagar', '1914', NULL, NULL),
(789, 3, 17, 'Delduar', 130, 'Jangalia', '1911', NULL, NULL),
(790, 3, 17, 'Delduar', 130, 'Lowhati', '1915', NULL, NULL),
(791, 3, 17, 'Delduar', 130, 'Patharail', '1912', NULL, NULL),
(792, 3, 17, 'Ghatail', 130, 'D. Pakutia', '1982', NULL, NULL),
(793, 3, 17, 'Ghatail', 130, 'Dhalapara', '1983', NULL, NULL),
(794, 3, 17, 'Ghatail', 130, 'Ghatial', '1980', NULL, NULL),
(795, 3, 17, 'Ghatail', 130, 'Lohani', '1984', NULL, NULL),
(796, 3, 17, 'Ghatail', 130, 'Zahidganj', '1981', NULL, NULL),
(797, 3, 17, 'Gopalpur', 130, 'Gopalpur', '1990', NULL, NULL),
(798, 3, 17, 'Gopalpur', 130, 'Hemnagar', '1992', NULL, NULL),
(799, 3, 17, 'Gopalpur', 130, 'Jhowail', '1991', NULL, NULL),
(800, 3, 17, 'Kalihati', 130, 'Ballabazar', '1973', NULL, NULL),
(801, 3, 17, 'Kalihati', 130, 'Elinga', '1974', NULL, NULL),
(802, 3, 17, 'Kalihati', 130, 'Kalihati', '1970', NULL, NULL),
(803, 3, 17, 'Kalihati', 130, 'Nagarbari', '1977', NULL, NULL),
(804, 3, 17, 'Kalihati', 130, 'Nagarbari SO', '1976', NULL, NULL),
(805, 3, 17, 'Kalihati', 130, 'Nagbari', '1972', NULL, NULL),
(806, 3, 17, 'Kalihati', 130, 'Palisha', '1975', NULL, NULL),
(807, 3, 17, 'Kalihati', 130, 'Rajafair', '1971', NULL, NULL),
(808, 3, 17, 'Kashkaolia', 130, 'Kashkawlia', '1930', NULL, NULL),
(809, 3, 17, 'Madhupur', 130, 'Dhobari', '1997', NULL, NULL),
(810, 3, 17, 'Madhupur', 130, 'Madhupur', '1996', NULL, NULL),
(811, 3, 17, 'Mirzapur', 130, 'Gorai', '1941', NULL, NULL),
(812, 3, 17, 'Mirzapur', 130, 'Jarmuki', '1944', NULL, NULL),
(813, 3, 17, 'Mirzapur', 130, 'M.C. College', '1942', NULL, NULL),
(814, 3, 17, 'Mirzapur', 130, 'Mirzapur', '1940', NULL, NULL),
(815, 3, 17, 'Mirzapur', 130, 'Mohera', '1945', NULL, NULL),
(816, 3, 17, 'Mirzapur', 130, 'Warri paikpara', '1943', NULL, NULL),
(817, 3, 17, 'Nagarpur', 130, 'Dhuburia', '1937', NULL, NULL),
(818, 3, 17, 'Nagarpur', 130, 'Nagarpur', '1936', NULL, NULL),
(819, 3, 17, 'Nagarpur', 130, 'Salimabad', '1938', NULL, NULL),
(820, 3, 17, 'Sakhipur', 130, 'Kochua', '1951', NULL, NULL),
(821, 3, 17, 'Sakhipur', 130, 'Sakhipur', '1950', NULL, NULL),
(822, 3, 17, 'Tangail Sadar', 130, 'Kagmari', '1901', NULL, NULL),
(823, 3, 17, 'Tangail Sadar', 130, 'Korotia', '1903', NULL, NULL),
(824, 3, 17, 'Tangail Sadar', 130, 'Purabari', '1904', NULL, NULL),
(825, 3, 17, 'Tangail Sadar', 130, 'Santosh', '1902', NULL, NULL),
(826, 3, 17, 'Tangail Sadar', 130, 'Tangail Sadar', '1900', NULL, NULL),
(827, 4, 55, 'Bagerhat Sadar', 130, 'Bagerhat Sadar', '9300', NULL, NULL),
(828, 4, 55, 'Bagerhat Sadar', 130, 'P.C College', '9301', NULL, NULL),
(829, 4, 55, 'Bagerhat Sadar', 130, 'Rangdia', '9302', NULL, NULL),
(830, 4, 55, 'Chalna Ankorage', 130, 'Chalna Ankorage', '9350', NULL, NULL),
(831, 4, 55, 'Chalna Ankorage', 130, 'Mongla Port', '9351', NULL, NULL),
(832, 4, 55, 'Chitalmari', 130, 'Barabaria', '9361', NULL, NULL),
(833, 4, 55, 'Chitalmari', 130, 'Chitalmari', '9360', NULL, NULL),
(834, 4, 55, 'Fakirhat', 130, 'Bhanganpar Bazar', '9372', NULL, NULL),
(835, 4, 55, 'Fakirhat', 130, 'Fakirhat', '9370', NULL, NULL),
(836, 4, 55, 'Fakirhat', 130, 'Mansa', '9371', NULL, NULL),
(837, 4, 55, 'Kachua UPO', 130, 'Kachua', '9310', NULL, NULL),
(838, 4, 55, 'Kachua UPO', 130, 'Sonarkola', '9311', NULL, NULL),
(839, 4, 55, 'Mollahat', 130, 'Charkulia', '9383', NULL, NULL),
(840, 4, 55, 'Mollahat', 130, 'Dariala', '9382', NULL, NULL),
(841, 4, 55, 'Mollahat', 130, 'Kahalpur', '9381', NULL, NULL),
(842, 4, 55, 'Mollahat', 130, 'Mollahat', '9380', NULL, NULL),
(843, 4, 55, 'Mollahat', 130, 'Nagarkandi', '9384', NULL, NULL),
(844, 4, 55, 'Mollahat', 130, 'Pak Gangni', '9385', NULL, NULL),
(845, 4, 55, 'Morelganj', 130, 'Morelganj', '9320', NULL, NULL),
(846, 4, 55, 'Morelganj', 130, 'Sannasi Bazar', '9321', NULL, NULL),
(847, 4, 55, 'Morelganj', 130, 'Telisatee', '9322', NULL, NULL),
(848, 4, 55, 'Rampal', 130, 'Foylahat', '9341', NULL, NULL),
(849, 4, 55, 'Rampal', 130, 'Gourambha', '9343', NULL, NULL),
(850, 4, 55, 'Rampal', 130, 'Rampal', '9340', NULL, NULL),
(851, 4, 55, 'Rampal', 130, 'Sonatunia', '9342', NULL, NULL),
(852, 4, 55, 'Rayenda', 130, 'Rayenda', '9330', NULL, NULL),
(853, 4, 56, 'Alamdanga', 130, 'Alamdanga', '7210', NULL, NULL),
(854, 4, 56, 'Alamdanga', 130, 'Hardi', '7211', NULL, NULL),
(855, 4, 56, 'Chuadanga Sadar', 130, 'Chuadanga Sadar', '7200', NULL, NULL),
(856, 4, 56, 'Chuadanga Sadar', 130, 'Munshiganj', '7201', NULL, NULL),
(857, 4, 56, 'Damurhuda', 130, 'Andulbaria', '7222', NULL, NULL),
(858, 4, 56, 'Damurhuda', 130, 'Damurhuda', '7220', NULL, NULL),
(859, 4, 56, 'Damurhuda', 130, 'Darshana', '7221', NULL, NULL),
(860, 4, 56, 'Doulatganj', 130, 'Doulatganj', '7230', NULL, NULL),
(861, 4, 57, 'Bagharpara', 130, 'Bagharpara', '7470', NULL, NULL),
(862, 4, 57, 'Bagharpara', 130, 'Gouranagar', '7471', NULL, NULL),
(863, 4, 57, 'Chaugachha', 130, 'Chougachha', '7410', NULL, NULL),
(864, 4, 57, 'Jessore Sadar', 130, 'Basundia', '7406', NULL, NULL),
(865, 4, 57, 'Jessore Sadar', 130, 'Chanchra', '7402', NULL, NULL),
(866, 4, 57, 'Jessore Sadar', 130, 'Churamankathi', '7407', NULL, NULL),
(867, 4, 57, 'Jessore Sadar', 130, 'Jessore Airbach', '7404', NULL, NULL),
(868, 4, 57, 'Jessore Sadar', 130, 'Jessore canttonment', '7403', NULL, NULL),
(869, 4, 57, 'Jessore Sadar', 130, 'Jessore Sadar', '7400', NULL, NULL),
(870, 4, 57, 'Jessore Sadar', 130, 'Jessore Upa-Shahar', '7401', NULL, NULL),
(871, 4, 57, 'Jessore Sadar', 130, 'Rupdia', '7405', NULL, NULL),
(872, 4, 57, 'Jhikargachha', 130, 'Jhikargachha', '7420', NULL, NULL),
(873, 4, 57, 'Keshabpur', 130, 'Keshobpur', '7450', NULL, NULL),
(874, 4, 57, 'Monirampur', 130, 'Monirampur', '7440', NULL, NULL),
(875, 4, 57, 'Noapara', 130, 'Bhugilhat', '7462', NULL, NULL),
(876, 4, 57, 'Noapara', 130, 'Noapara', '7460', NULL, NULL),
(877, 4, 57, 'Noapara', 130, 'Rajghat', '7461', NULL, NULL),
(878, 4, 57, 'Sarsa', 130, 'Bag Achra', '7433', NULL, NULL),
(879, 4, 57, 'Sarsa', 130, 'Benapole', '7431', NULL, NULL),
(880, 4, 57, 'Sarsa', 130, 'Jadabpur', '7432', NULL, NULL),
(881, 4, 57, 'Sarsa', 130, 'Sarsa', '7430', NULL, NULL),
(882, 4, 58, 'Harinakundu', 130, 'Harinakundu', '7310', NULL, NULL),
(883, 4, 58, 'Jinaidaha Sadar', 130, 'Jinaidaha Cadet College', '7301', NULL, NULL),
(884, 4, 58, 'Jinaidaha Sadar', 130, 'Jinaidaha Sadar', '7300', NULL, NULL),
(885, 4, 58, 'Kotchandpur', 130, 'Kotchandpur', '7330', NULL, NULL),
(886, 4, 58, 'Maheshpur', 130, 'Maheshpur', '7340', NULL, NULL),
(887, 4, 58, 'Naldanga', 130, 'Hatbar Bazar', '7351', NULL, NULL),
(888, 4, 58, 'Naldanga', 130, 'Naldanga', '7350', NULL, NULL),
(889, 4, 58, 'Shailakupa', 130, 'Kumiradaha', '7321', NULL, NULL),
(890, 4, 58, 'Shailakupa', 130, 'Shailakupa', '7320', NULL, NULL),
(891, 4, 59, 'Alaipur', 130, 'Alaipur', '9240', NULL, NULL),
(892, 4, 59, 'Alaipur', 130, 'Belphulia', '9242', NULL, NULL),
(893, 4, 59, 'Alaipur', 130, 'Rupsha', '9241', NULL, NULL),
(894, 4, 59, 'Batiaghat', 130, 'Batiaghat', '9260', NULL, NULL),
(895, 4, 59, 'Batiaghat', 130, 'Surkalee', '9261', NULL, NULL),
(896, 4, 59, 'Chalna Bazar', 130, 'Bajua', '9272', NULL, NULL),
(897, 4, 59, 'Chalna Bazar', 130, 'Chalna Bazar', '9270', NULL, NULL),
(898, 4, 59, 'Chalna Bazar', 130, 'Dakup', '9271', NULL, NULL),
(899, 4, 59, 'Chalna Bazar', 130, 'Nalian', '9273', NULL, NULL),
(900, 4, 59, 'Digalia', 130, 'Chandni Mahal', '9221', NULL, NULL),
(901, 4, 59, 'Digalia', 130, 'Digalia', '9220', NULL, NULL),
(902, 4, 59, 'Digalia', 130, 'Gazirhat', '9224', NULL, NULL),
(903, 4, 59, 'Digalia', 130, 'Ghoshghati', '9223', NULL, NULL),
(904, 4, 59, 'Digalia', 130, 'Senhati', '9222', NULL, NULL),
(905, 4, 59, 'Khulna Sadar', 130, 'Atra Shilpa Area', '9207', NULL, NULL),
(906, 4, 59, 'Khulna Sadar', 130, 'BIT Khulna', '9203', NULL, NULL),
(907, 4, 59, 'Khulna Sadar', 130, 'Doulatpur', '9202', NULL, NULL),
(908, 4, 59, 'Khulna Sadar', 130, 'Jahanabad Canttonmen', '9205', NULL, NULL),
(909, 4, 59, 'Khulna Sadar', 130, 'Khula Sadar', '9100', NULL, NULL),
(910, 4, 59, 'Khulna Sadar', 130, 'Khulna G.P.O', '9000', NULL, NULL),
(911, 4, 59, 'Khulna Sadar', 130, 'Khulna Shipyard', '9201', NULL, NULL),
(912, 4, 59, 'Khulna Sadar', 130, 'Khulna University', '9208', NULL, NULL),
(913, 4, 59, 'Khulna Sadar', 130, 'Siramani', '9204', NULL, NULL),
(914, 4, 59, 'Khulna Sadar', 130, 'Sonali Jute Mills', '9206', NULL, NULL),
(915, 4, 59, 'Madinabad', 130, 'Amadee', '9291', NULL, NULL),
(916, 4, 59, 'Madinabad', 130, 'Madinabad', '9290', NULL, NULL),
(917, 4, 59, 'Paikgachha', 130, 'Chandkhali', '9284', NULL, NULL),
(918, 4, 59, 'Paikgachha', 130, 'Garaikhali', '9285', NULL, NULL),
(919, 4, 59, 'Paikgachha', 130, 'Godaipur', '9281', NULL, NULL),
(920, 4, 59, 'Paikgachha', 130, 'Kapilmoni', '9282', NULL, NULL),
(921, 4, 59, 'Paikgachha', 130, 'Katipara', '9283', NULL, NULL),
(922, 4, 59, 'Paikgachha', 130, 'Paikgachha', '9280', NULL, NULL),
(923, 4, 59, 'Phultala', 130, 'Phultala', '9210', NULL, NULL),
(924, 4, 59, 'Sajiara', 130, 'Chuknagar', '9252', NULL, NULL),
(925, 4, 59, 'Sajiara', 130, 'Ghonabanda', '9251', NULL, NULL),
(926, 4, 59, 'Sajiara', 130, 'Sajiara', '9250', NULL, NULL),
(927, 4, 59, 'Sajiara', 130, 'Shahapur', '9253', NULL, NULL),
(928, 4, 59, 'Terakhada', 130, 'Pak Barasat', '9231', NULL, NULL),
(929, 4, 59, 'Terakhada', 130, 'Terakhada', '9230', NULL, NULL),
(930, 4, 60, 'Bheramara', 130, 'Allardarga', '7042', NULL, NULL),
(931, 4, 60, 'Bheramara', 130, 'Bheramara', '7040', NULL, NULL),
(932, 4, 60, 'Bheramara', 130, 'Ganges Bheramara', '7041', NULL, NULL),
(933, 4, 60, 'Janipur', 130, 'Janipur', '7020', NULL, NULL),
(934, 4, 60, 'Janipur', 130, 'Khoksa', '7021', NULL, NULL),
(935, 4, 60, 'Kumarkhali', 130, 'Kumarkhali', '7010', NULL, NULL),
(936, 4, 60, 'Kumarkhali', 130, 'Panti', '7011', NULL, NULL),
(937, 4, 60, 'Kustia Sadar', 130, 'Islami University', '7003', NULL, NULL),
(938, 4, 60, 'Kustia Sadar', 130, 'Jagati', '7002', NULL, NULL),
(939, 4, 60, 'Kustia Sadar', 130, 'Kushtia Mohini', '7001', NULL, NULL),
(940, 4, 60, 'Kustia Sadar', 130, 'Kustia Sadar', '7000', NULL, NULL),
(941, 4, 60, 'Mirpur', 130, 'Amla Sadarpur', '7032', NULL, NULL),
(942, 4, 60, 'Mirpur', 130, 'Mirpur', '7030', NULL, NULL),
(943, 4, 60, 'Mirpur', 130, 'Poradaha', '7031', NULL, NULL),
(944, 4, 60, 'Rafayetpur', 130, 'Khasmathurapur', '7052', NULL, NULL),
(945, 4, 60, 'Rafayetpur', 130, 'Rafayetpur', '7050', NULL, NULL),
(946, 4, 60, 'Rafayetpur', 130, 'Taragunia', '7051', NULL, NULL),
(947, 4, 61, 'Arpara', 130, 'Arpara', '7620', NULL, NULL),
(948, 4, 61, 'Magura Sadar', 130, 'Magura Sadar', '7600', NULL, NULL),
(949, 4, 61, 'Mohammadpur', 130, 'Binodpur', '7631', NULL, NULL),
(950, 4, 61, 'Mohammadpur', 130, 'Mohammadpur', '7630', NULL, NULL),
(951, 4, 61, 'Mohammadpur', 130, 'Nahata', '7632', NULL, NULL),
(952, 4, 61, 'Shripur', 130, 'Langalbadh', '7611', NULL, NULL),
(953, 4, 61, 'Shripur', 130, 'Nachol', '7612', NULL, NULL),
(954, 4, 61, 'Shripur', 130, 'Shripur', '7610', NULL, NULL),
(955, 4, 62, 'Gangni', 130, 'Gangni', '7110', NULL, NULL),
(956, 4, 62, 'Meherpur Sadar', 130, 'Amjhupi', '7101', NULL, NULL),
(957, 4, 62, 'Meherpur Sadar', 130, 'Amjhupi', '7152', NULL, NULL),
(958, 4, 62, 'Meherpur Sadar', 130, 'Meherpur Sadar', '7100', NULL, NULL),
(959, 4, 62, 'Meherpur Sadar', 130, 'Mujib Nagar Complex', '7102', NULL, NULL),
(960, 4, 63, 'Kalia', 130, 'Kalia', '7520', NULL, NULL),
(961, 4, 63, 'Laxmipasha', 130, 'Baradia', '7514', NULL, NULL),
(962, 4, 63, 'Laxmipasha', 130, 'Itna', '7512', NULL, NULL),
(963, 4, 63, 'Laxmipasha', 130, 'Laxmipasha', '7510', NULL, NULL),
(964, 4, 63, 'Laxmipasha', 130, 'Lohagora', '7511', NULL, NULL),
(965, 4, 63, 'Laxmipasha', 130, 'Naldi', '7513', NULL, NULL),
(966, 4, 63, 'Mohajan', 130, 'Mohajan', '7521', NULL, NULL),
(967, 4, 63, 'Narail Sadar', 130, 'Narail Sadar', '7500', NULL, NULL),
(968, 4, 63, 'Narail Sadar', 130, 'Ratanganj', '7501', NULL, NULL),
(969, 4, 64, 'Ashashuni', 130, 'Ashashuni', '9460', NULL, NULL),
(970, 4, 64, 'Ashashuni', 130, 'Baradal', '9461', NULL, NULL),
(971, 4, 64, 'Debbhata', 130, 'Debbhata', '9430', NULL, NULL),
(972, 4, 64, 'Debbhata', 130, 'Gurugram', '9431', NULL, NULL),
(973, 4, 64, 'kalaroa', 130, 'Chandanpur', '9415', NULL, NULL),
(974, 4, 64, 'kalaroa', 130, 'Hamidpur', '9413', NULL, NULL),
(975, 4, 64, 'kalaroa', 130, 'Jhaudanga', '9412', NULL, NULL),
(976, 4, 64, 'kalaroa', 130, 'kalaroa', '9410', NULL, NULL),
(977, 4, 64, 'kalaroa', 130, 'Khordo', '9414', NULL, NULL),
(978, 4, 64, 'kalaroa', 130, 'Murarikati', '9411', NULL, NULL),
(979, 4, 64, 'Kaliganj UPO', 130, 'Kaliganj UPO', '9440', NULL, NULL),
(980, 4, 64, 'Kaliganj UPO', 130, 'Nalta Mubaroknagar', '9441', NULL, NULL),
(981, 4, 64, 'Kaliganj UPO', 130, 'Ratanpur', '9442', NULL, NULL),
(982, 4, 64, 'Nakipur', 130, 'Buri Goalini', '9453', NULL, NULL),
(983, 4, 64, 'Nakipur', 130, 'Gabura', '9454', NULL, NULL),
(984, 4, 64, 'Nakipur', 130, 'Habinagar', '9455', NULL, NULL),
(985, 4, 64, 'Nakipur', 130, 'Nakipur', '9450', NULL, NULL),
(986, 4, 64, 'Nakipur', 130, 'Naobeki', '9452', NULL, NULL),
(987, 4, 64, 'Nakipur', 130, 'Noornagar', '9451', NULL, NULL),
(988, 4, 64, 'Satkhira Sadar', 130, 'Budhhat', '9403', NULL, NULL),
(989, 4, 64, 'Satkhira Sadar', 130, 'Gunakar kati', '9402', NULL, NULL),
(990, 4, 64, 'Satkhira Sadar', 130, 'Satkhira Islamia Acc', '9401', NULL, NULL),
(991, 4, 64, 'Satkhira Sadar', 130, 'Satkhira Sadar', '9400', NULL, NULL),
(992, 4, 64, 'Taala', 130, 'Patkelghata', '9421', NULL, NULL),
(993, 4, 64, 'Taala', 130, 'Taala', '9420', NULL, NULL),
(994, 5, 18, 'Alamdighi', 130, 'Adamdighi', '5890', NULL, NULL),
(995, 5, 18, 'Alamdighi', 130, 'Nasharatpur', '5892', NULL, NULL),
(996, 5, 18, 'Alamdighi', 130, 'Santahar', '5891', NULL, NULL),
(997, 5, 18, 'Bogra Sadar', 130, 'Bogra Canttonment', '5801', NULL, NULL),
(998, 5, 18, 'Bogra Sadar', 130, 'Bogra Sadar', '5800', NULL, NULL),
(999, 5, 18, 'Dhunat', 130, 'Dhunat', '5850', NULL, NULL),
(1000, 5, 18, 'Dhunat', 130, 'Gosaibari', '5851', NULL, NULL),
(1001, 5, 18, 'Dupchachia', 130, 'Dupchachia', '5880', NULL, NULL),
(1002, 5, 18, 'Dupchachia', 130, 'Talora', '5881', NULL, NULL),
(1003, 5, 18, 'Gabtoli', 130, 'Gabtoli', '5820', NULL, NULL),
(1004, 5, 18, 'Gabtoli', 130, 'Sukhanpukur', '5821', NULL, NULL),
(1005, 5, 18, 'Kahalu', 130, 'Kahalu', '5870', NULL, NULL),
(1006, 5, 18, 'Nandigram', 130, 'Nandigram', '5860', NULL, NULL),
(1007, 5, 18, 'Sariakandi', 130, 'Chandan Baisha', '5831', NULL, NULL),
(1008, 5, 18, 'Sariakandi', 130, 'Sariakandi', '5830', NULL, NULL),
(1009, 5, 18, 'Sherpur', 130, 'Chandaikona', '5841', NULL, NULL),
(1010, 5, 18, 'Sherpur', 130, 'Palli Unnyan Accadem', '5842', NULL, NULL),
(1011, 5, 18, 'Sherpur', 130, 'Sherpur', '5840', NULL, NULL),
(1012, 5, 18, 'Shibganj', 130, 'Shibganj', '5810', NULL, NULL),
(1013, 5, 18, 'Sonatola', 130, 'Sonatola', '5826', NULL, NULL),
(1014, 5, 22, 'Bholahat', 130, 'Bholahat', '6330', NULL, NULL),
(1015, 5, 22, 'Chapinawabganj Sadar', 130, 'Amnura', '6303', NULL, NULL),
(1016, 5, 22, 'Chapinawabganj Sadar', 130, 'Chapinawbganj Sadar', '6300', NULL, NULL),
(1017, 5, 22, 'Chapinawabganj Sadar', 130, 'Rajarampur', '6301', NULL, NULL),
(1018, 5, 22, 'Chapinawabganj', 130, 'Ramchandrapur', '6302', NULL, NULL),
(1019, 5, 22, 'Nachol', 130, 'Mandumala', '6311', NULL, NULL),
(1020, 5, 22, 'Nachol', 130, 'Nachol', '6310', NULL, NULL),
(1021, 5, 22, 'Rohanpur', 130, 'Gomashtapur', '6321', NULL, NULL),
(1022, 5, 22, 'Rohanpur', 130, 'Rohanpur', '6320', NULL, NULL),
(1023, 5, 22, 'Shibganj U.P.O', 130, 'Kansart', '6341', NULL, NULL),
(1024, 5, 22, 'Shibganj U.P.O', 130, 'Manaksha', '6342', NULL, NULL),
(1025, 5, 22, 'Shibganj U.P.O', 130, 'Shibganj U.P.O', '6340', NULL, NULL),
(1026, 5, 19, 'Akkelpur', 130, 'Akklepur', '5940', NULL, NULL),
(1027, 5, 19, 'Akkelpur', 130, 'jamalganj', '5941', NULL, NULL),
(1028, 5, 19, 'Akkelpur', 130, 'Tilakpur', '5942', NULL, NULL),
(1029, 5, 19, 'Joypurhat Sadar', 130, 'Joypurhat Sadar', '5900', NULL, NULL),
(1030, 5, 19, 'kalai', 130, 'kalai', '5930', NULL, NULL),
(1031, 5, 19, 'Khetlal', 130, 'Khetlal', '5920', NULL, NULL),
(1032, 5, 19, 'panchbibi', 130, 'Panchbibi', '5910', NULL, NULL),
(1033, 5, 20, 'Ahsanganj', 130, 'Ahsanganj', '6596', NULL, NULL),
(1034, 5, 20, 'Ahsanganj', 130, 'Bandai', '6597', NULL, NULL),
(1035, 5, 20, 'Badalgachhi', 130, 'Badalgachhi', '6570', NULL, NULL),
(1036, 5, 20, 'Dhamuirhat', 130, 'Dhamuirhat', '6580', NULL, NULL),
(1037, 5, 20, 'Mahadebpur', 130, 'Mahadebpur', '6530', NULL, NULL),
(1038, 5, 20, 'Naogaon Sadar', 130, 'Naogaon Sadar', '6500', NULL, NULL),
(1039, 5, 20, 'Niamatpur', 130, 'Niamatpur', '6520', NULL, NULL),
(1040, 5, 20, 'Nitpur', 130, 'Nitpur', '6550', NULL, NULL),
(1041, 5, 20, 'Nitpur', 130, 'Panguria', '6552', NULL, NULL),
(1042, 5, 20, 'Nitpur', 130, 'Porsa', '6551', NULL, NULL),
(1043, 5, 20, 'Patnitala', 130, 'Patnitala', '6540', NULL, NULL),
(1044, 5, 20, 'Prasadpur', 130, 'Balihar', '6512', NULL, NULL),
(1045, 5, 20, 'Prasadpur', 130, 'Manda', '6511', NULL, NULL),
(1046, 5, 20, 'Prasadpur', 130, 'Prasadpur', '6510', NULL, NULL),
(1047, 5, 20, 'Raninagar', 130, 'Kashimpur', '6591', NULL, NULL),
(1048, 5, 20, 'Raninagar', 130, 'Raninagar', '6590', NULL, NULL),
(1049, 5, 20, 'Sapahar', 130, 'Moduhil', '6561', NULL, NULL),
(1050, 5, 20, 'Sapahar', 130, 'Sapahar', '6560', NULL, NULL),
(1051, 5, 21, 'Gopalpur UPO', 130, 'Abdulpur', '6422', NULL, NULL),
(1052, 5, 21, 'Gopalpur UPO', 130, 'Gopalpur U.P.O', '6420', NULL, NULL),
(1053, 5, 21, 'Gopalpur UPO', 130, 'Lalpur S.O', '6421', NULL, NULL),
(1054, 5, 21, 'Harua', 130, 'Baraigram', '6432', NULL, NULL),
(1055, 5, 21, 'Harua', 130, 'Dayarampur', '6431', NULL, NULL),
(1056, 5, 21, 'Harua', 130, 'Harua', '6430', NULL, NULL),
(1057, 5, 21, 'Hatgurudaspur', 130, 'Hatgurudaspur', '6440', NULL, NULL),
(1058, 5, 21, 'Laxman', 130, 'Laxman', '6410', NULL, NULL),
(1059, 5, 21, 'Natore Sadar', 130, 'Baiddyabal Gharia', '6402', NULL, NULL),
(1060, 5, 21, 'Natore Sadar', 130, 'Digapatia', '6401', NULL, NULL),
(1061, 5, 21, 'Natore Sadar', 130, 'Madhnagar', '6403', NULL, NULL),
(1062, 5, 21, 'Natore Sadar', 130, 'Natore Sadar', '6400', NULL, NULL),
(1063, 5, 21, 'Singra', 130, 'Singra', '6450', NULL, NULL),
(1064, 5, 22, 'Banwarinagar', 130, 'Banwarinagar', '6650', NULL, NULL),
(1065, 5, 22, 'Bera', 130, 'Bera', '6680', NULL, NULL),
(1066, 5, 22, 'Bera', 130, 'Kashinathpur', '6682', NULL, NULL),
(1067, 5, 22, 'Bera', 130, 'Nakalia', '6681', NULL, NULL),
(1068, 5, 22, 'Bera', 130, 'Puran Bharenga', '6683', NULL, NULL),
(1069, 5, 22, 'Bhangura', 130, 'Bhangura', '6640', NULL, NULL),
(1070, 5, 22, 'Chatmohar', 130, 'Chatmohar', '6630', NULL, NULL),
(1071, 5, 22, 'Debottar', 130, 'Debottar', '6610', NULL, NULL),
(1072, 5, 22, 'Ishwardi', 130, 'Dhapari', '6621', NULL, NULL),
(1073, 5, 22, 'Ishwardi', 130, 'Ishwardi', '6620', NULL, NULL),
(1074, 5, 22, 'Ishwardi', 130, 'Pakshi', '6622', NULL, NULL),
(1075, 5, 22, 'Ishwardi', 130, 'Rajapur', '6623', NULL, NULL),
(1076, 5, 22, 'Pabna Sadar', 130, 'Hamayetpur', '6602', NULL, NULL),
(1077, 5, 22, 'Pabna Sadar', 130, 'Kaliko Cotton Mills', '6601', NULL, NULL),
(1078, 5, 22, 'Pabna Sadar', 130, 'Pabna Sadar', '6600', NULL, NULL),
(1079, 5, 22, 'Sathia', 130, 'Sathia', '6670', NULL, NULL),
(1080, 5, 22, 'Sujanagar', 130, 'Sagarkandi', '6661', NULL, NULL),
(1081, 5, 22, 'Sujanagar', 130, 'Sujanagar', '6660', NULL, NULL),
(1082, 5, 24, 'Bagha', 130, 'Arani', '6281', NULL, NULL),
(1083, 5, 24, 'Bagha', 130, 'Bagha', '6280', NULL, NULL),
(1084, 5, 24, 'Bhabaniganj', 130, 'Bhabaniganj', '6250', NULL, NULL),
(1085, 5, 24, 'Bhabaniganj', 130, 'Taharpur', '6251', NULL, NULL),
(1086, 5, 24, 'Charghat', 130, 'Charghat', '6270', NULL, NULL),
(1087, 5, 24, 'Charghat', 130, 'Sarda', '6271', NULL, NULL),
(1088, 5, 24, 'Durgapur', 130, 'Durgapur', '6240', NULL, NULL),
(1089, 5, 24, 'Godagari', 130, 'Godagari', '6290', NULL, NULL),
(1090, 5, 24, 'Godagari', 130, 'Premtoli', '6291', NULL, NULL),
(1091, 5, 24, 'Khod Mohanpur', 130, 'Khodmohanpur', '6220', NULL, NULL),
(1092, 5, 24, 'Lalitganj', 130, 'Lalitganj', '6210', NULL, NULL),
(1093, 5, 24, 'Lalitganj', 130, 'Rajshahi Sugar Mills', '6211', NULL, NULL),
(1094, 5, 24, 'Lalitganj', 130, 'Shyampur', '6212', NULL, NULL),
(1095, 5, 24, 'Putia', 130, 'Putia', '6260', NULL, NULL),
(1096, 5, 24, 'Rajshahi Sadar', 130, 'Binodpur Bazar', '6206', NULL, NULL),
(1097, 5, 24, 'Rajshahi Sadar', 130, 'Ghuramara', '6100', NULL, NULL),
(1098, 5, 24, 'Rajshahi Sadar', 130, 'Kazla', '6204', NULL, NULL),
(1099, 5, 24, 'Rajshahi Sadar', 130, 'Rajshahi Canttonment', '6202', NULL, NULL),
(1100, 5, 24, 'Rajshahi Sadar', 130, 'Rajshahi Court', '6201', NULL, NULL),
(1101, 5, 24, 'Rajshahi Sadar', 130, 'Rajshahi Sadar', '6000', NULL, NULL),
(1102, 5, 24, 'Rajshahi Sadar', 130, 'Rajshahi University', '6205', NULL, NULL),
(1103, 5, 24, 'Rajshahi Sadar', 130, 'Sapura', '6203', NULL, NULL),
(1104, 5, 24, 'Tanor', 130, 'Tanor', '6230', NULL, NULL),
(1105, 5, 25, 'Baiddya Jam Toil', 130, 'Baiddya Jam Toil', '6730', NULL, NULL),
(1106, 5, 25, 'Belkuchi', 130, 'Belkuchi', '6740', NULL, NULL),
(1107, 5, 25, 'Belkuchi', 130, 'Enayetpur', '6751', NULL, NULL),
(1108, 5, 25, 'Belkuchi', 130, 'Rajapur', '6742', NULL, NULL),
(1109, 5, 25, 'Belkuchi', 130, 'Sohagpur', '6741', NULL, NULL),
(1110, 5, 25, 'Belkuchi', 130, 'Sthal', '6752', NULL, NULL),
(1111, 5, 25, 'Dhangora', 130, 'Dhangora', '6720', NULL, NULL),
(1112, 5, 25, 'Dhangora', 130, 'Malonga', '6721', NULL, NULL),
(1113, 5, 25, 'Kazipur', 130, 'Gandail', '6712', NULL, NULL),
(1114, 5, 25, 'Kazipur', 130, 'Kazipur', '6710', NULL, NULL),
(1115, 5, 25, 'Kazipur', 130, 'Shuvgachha', '6711', NULL, NULL),
(1116, 5, 25, 'Shahjadpur', 130, 'Jamirta', '6772', NULL, NULL),
(1117, 5, 25, 'Shahjadpur', 130, 'Kaijuri', '6773', NULL, NULL),
(1118, 5, 25, 'Shahjadpur', 130, 'Porjana', '6771', NULL, NULL),
(1119, 5, 25, 'Shahjadpur', 130, 'Shahjadpur', '6770', NULL, NULL),
(1120, 5, 25, 'Sirajganj Sadar', 130, 'Raipur', '6701', NULL, NULL),
(1121, 5, 25, 'Sirajganj Sadar', 130, 'Rashidabad', '6702', NULL, NULL),
(1122, 5, 25, 'Sirajganj Sadar', 130, 'Sirajganj Sadar', '6700', NULL, NULL),
(1123, 5, 25, 'Tarash', 130, 'Tarash', '6780', NULL, NULL),
(1124, 5, 25, 'Ullapara', 130, 'Lahiri Mohanpur', '6762', NULL, NULL),
(1125, 5, 25, 'Ullapara', 130, 'Salap', '6763', NULL, NULL),
(1126, 5, 25, 'Ullapara', 130, 'Ullapara', '6760', NULL, NULL),
(1127, 5, 25, 'Ullapara', 130, 'Ullapara R.S', '6761', NULL, NULL),
(1128, 6, 26, 'Bangla Hili', 130, 'Bangla Hili', '5270', NULL, NULL),
(1129, 6, 26, 'Biral', 130, 'Biral', '5210', NULL, NULL),
(1130, 6, 26, 'Birampur', 130, 'Birampur', '5266', NULL, NULL),
(1131, 6, 26, 'Birganj', 130, 'Birganj', '5220', NULL, NULL),
(1132, 6, 26, 'Chrirbandar', 130, 'Chrirbandar', '5240', NULL, NULL),
(1133, 6, 26, 'Chrirbandar', 130, 'Ranirbandar', '5241', NULL, NULL),
(1134, 6, 26, 'Dinajpur Sadar', 130, 'Dinajpur Rajbari', '5201', NULL, NULL),
(1135, 6, 26, 'Dinajpur Sadar', 130, 'Dinajpur Sadar', '5200', NULL, NULL),
(1136, 6, 26, 'Khansama', 130, 'Khansama', '5230', NULL, NULL),
(1137, 6, 26, 'Khansama', 130, 'Pakarhat', '5231', NULL, NULL),
(1138, 6, 26, 'Maharajganj', 130, 'Maharajganj', '5226', NULL, NULL),
(1139, 6, 26, 'Nababganj', 130, 'Daudpur', '5281', NULL, NULL),
(1140, 6, 26, 'Nababganj', 130, 'Gopalpur', '5282', NULL, NULL),
(1141, 6, 26, 'Nababganj', 130, 'Nababganj', '5280', NULL, NULL),
(1142, 6, 26, 'Osmanpur', 130, 'Ghoraghat', '5291', NULL, NULL),
(1143, 6, 26, 'Osmanpur', 130, 'Osmanpur', '5290', NULL, NULL),
(1144, 6, 26, 'Parbatipur', 130, 'Parbatipur', '5250', NULL, NULL),
(1145, 6, 26, 'Phulbari', 130, 'Phulbari', '5260', NULL, NULL),
(1146, 6, 26, 'Setabganj', 130, 'Setabganj', '5216', NULL, NULL),
(1147, 6, 27, 'Bonarpara', 130, 'Bonarpara', '5750', NULL, NULL),
(1148, 6, 27, 'Bonarpara', 130, 'saghata', '5751', NULL, NULL),
(1149, 6, 27, 'Gaibandha Sadar', 130, 'Gaibandha Sadar', '5700', NULL, NULL),
(1150, 6, 27, 'Gobindaganj', 130, 'Gobindhaganj', '5740', NULL, NULL),
(1151, 6, 27, 'Gobindaganj', 130, 'Mahimaganj', '5741', NULL, NULL),
(1152, 6, 27, 'Palashbari', 130, 'Palashbari', '5730', NULL, NULL),
(1153, 6, 27, 'Phulchhari', 130, 'Bharatkhali', '5761', NULL, NULL),
(1154, 6, 27, 'Phulchhari', 130, 'Phulchhari', '5760', NULL, NULL),
(1155, 6, 27, 'Saadullapur', 130, 'Naldanga', '5711', NULL, NULL),
(1156, 6, 27, 'Saadullapur', 130, 'Saadullapur', '5710', NULL, NULL),
(1157, 6, 27, 'Sundarganj', 130, 'Bamandanga', '5721', NULL, NULL),
(1158, 6, 27, 'Sundarganj', 130, 'Sundarganj', '5720', NULL, NULL),
(1159, 6, 28, 'Bhurungamari', 130, 'Bhurungamari', '5670', NULL, NULL),
(1160, 6, 28, 'Chilmari', 130, 'Chilmari', '5630', NULL, NULL),
(1161, 6, 28, 'Chilmari', 130, 'Jorgachh', '5631', NULL, NULL),
(1162, 6, 28, 'Kurigram Sadar', 130, 'Kurigram Sadar', '5600', NULL, NULL),
(1163, 6, 28, 'Kurigram Sadar', 130, 'Pandul', '5601', NULL, NULL),
(1164, 6, 28, 'Kurigram Sadar', 130, 'Phulbari', '5680', NULL, NULL),
(1165, 6, 28, 'Nageshwar', 130, 'Nageshwar', '5660', NULL, NULL),
(1166, 6, 28, 'Rajarhat', 130, 'Nazimkhan', '5611', NULL, NULL),
(1167, 6, 28, 'Rajarhat', 130, 'Rajarhat', '5610', NULL, NULL),
(1168, 6, 28, 'Rajibpur', 130, 'Rajibpur', '5650', NULL, NULL),
(1169, 6, 28, 'Roumari', 130, 'Roumari', '5640', NULL, NULL),
(1170, 6, 28, 'Ulipur', 130, 'Bazarhat', '5621', NULL, NULL),
(1171, 6, 28, 'Ulipur', 130, 'Ulipur', '5620', NULL, NULL),
(1172, 6, 29, 'Aditmari', 130, 'Aditmari', '5510', NULL, NULL),
(1173, 6, 29, 'Hatibandha', 130, 'Hatibandha', '5530', NULL, NULL),
(1174, 6, 29, 'Lalmonirhat Sadar', 130, 'Kulaghat SO', '5502', NULL, NULL),
(1175, 6, 29, 'Lalmonirhat Sadar', 130, 'Lalmonirhat Sadar', '5500', NULL, NULL),
(1176, 6, 29, 'Lalmonirhat Sadar', 130, 'Moghalhat', '5501', NULL, NULL),
(1177, 6, 29, 'Patgram', 130, 'Baura', '5541', NULL, NULL),
(1178, 6, 29, 'Patgram', 130, 'Burimari', '5542', NULL, NULL),
(1179, 6, 29, 'Patgram', 130, 'Patgram', '5540', NULL, NULL),
(1180, 6, 29, 'Tushbhandar', 130, 'Tushbhandar', '5520', NULL, NULL),
(1181, 6, 30, 'Dimla', 130, 'Dimla', '5350', NULL, NULL),
(1182, 6, 30, 'Dimla', 130, 'Ghaga Kharibari', '5351', NULL, NULL),
(1183, 6, 30, 'Domar', 130, 'Chilahati', '5341', NULL, NULL),
(1184, 6, 30, 'Domar', 130, 'Domar', '5340', NULL, NULL),
(1185, 6, 30, 'Jaldhaka', 130, 'Jaldhaka', '5330', NULL, NULL),
(1186, 6, 30, 'Kishoriganj', 130, 'Kishoriganj', '5320', NULL, NULL),
(1187, 6, 30, 'Nilphamari Sadar', 130, 'Nilphamari Sadar', '5300', NULL, NULL),
(1188, 6, 30, 'Nilphamari Sadar', 130, 'Nilphamari Sugar Mil', '5301', NULL, NULL),
(1189, 6, 30, 'Syedpur', 130, 'Syedpur', '5310', NULL, NULL),
(1190, 6, 30, 'Syedpur', 130, 'Syedpur Upashahar', '5311', NULL, NULL),
(1191, 6, 31, 'Boda', 130, 'Boda', '5010', NULL, NULL),
(1192, 6, 31, 'Chotto Dab', 130, 'Chotto Dab', '5040', NULL, NULL),
(1193, 6, 31, 'Chotto Dab', 130, 'Mirjapur', '5041', NULL, NULL),
(1194, 6, 31, 'Dabiganj', 130, 'Dabiganj', '5020', NULL, NULL),
(1195, 6, 31, 'Panchagarh Sadar', 130, 'Panchagarh Sadar', '5000', NULL, NULL),
(1196, 6, 31, 'Tetulia', 130, 'Tetulia', '5030', NULL, NULL),
(1197, 6, 32, 'Badarganj', 130, 'Badarganj', '5430', NULL, NULL),
(1198, 6, 32, 'Badarganj', 130, 'Shyampur', '5431', NULL, NULL),
(1199, 6, 32, 'Gangachara', 130, 'Gangachara', '5410', NULL, NULL),
(1200, 6, 32, 'Kaunia', 130, 'Haragachh', '5441', NULL, NULL),
(1201, 6, 32, 'Kaunia', 130, 'Kaunia', '5440', NULL, NULL),
(1202, 6, 32, 'Mithapukur', 130, 'Mithapukur', '5460', NULL, NULL),
(1203, 6, 32, 'Pirgachha', 130, 'Pirgachha', '5450', NULL, NULL),
(1204, 6, 32, 'Rangpur Sadar', 130, 'Alamnagar', '5402', NULL, NULL),
(1205, 6, 32, 'Rangpur Sadar', 130, 'Mahiganj', '5403', NULL, NULL),
(1206, 6, 32, 'Rangpur Sadar', 130, 'Rangpur Cadet Colleg', '5404', NULL, NULL),
(1207, 6, 32, 'Rangpur Sadar', 130, 'Rangpur Carmiecal Col', '5405', NULL, NULL),
(1208, 6, 32, 'Rangpur Sadar', 130, 'Rangpur Sadar', '5400', NULL, NULL),
(1209, 6, 32, 'Rangpur Sadar', 130, 'Rangpur Upa-Shahar', '5401', NULL, NULL),
(1210, 6, 32, 'Taraganj', 130, 'Taraganj', '5420', NULL, NULL),
(1211, 6, 33, 'Baliadangi', 130, 'Baliadangi', '5140', NULL, NULL),
(1212, 6, 33, 'Baliadangi', 130, 'Lahiri', '5141', NULL, NULL),
(1213, 6, 33, 'Jibanpur', 130, 'Jibanpur', '5130', NULL, NULL),
(1214, 6, 33, 'Pirganj', 130, 'Pirganj', '5110', NULL, NULL),
(1215, 6, 33, 'Pirganj', 130, 'Pirganj', '5470', NULL, NULL),
(1216, 6, 33, 'Rani Sankail', 130, 'Nekmarad', '5121', NULL, NULL),
(1217, 6, 33, 'Rani Sankail', 130, 'Rani Sankail', '5120', NULL, NULL),
(1218, 6, 33, 'Thakurgaon Sadar', 130, 'Ruhia', '5103', NULL, NULL),
(1219, 6, 33, 'Thakurgaon Sadar', 130, 'Shibganj', '5102', NULL, NULL),
(1220, 6, 33, 'Thakurgaon Sadar', 130, 'Thakurgaon Road', '5101', NULL, NULL),
(1221, 6, 33, 'Thakurgaon Sadar', 130, 'Thakurgaon Sadar', '5100', NULL, NULL),
(1222, 7, 51, 'Azmireeganj', 130, 'Azmireeganj', '3360', NULL, NULL),
(1223, 7, 51, 'Bahubal', 130, 'Bahubal', '3310', NULL, NULL),
(1224, 7, 51, 'Baniachang', 130, 'Baniachang', '3350', NULL, NULL),
(1225, 7, 51, 'Baniachang', 130, 'Jatrapasha', '3351', NULL, NULL),
(1226, 7, 51, 'Baniachang', 130, 'Kadirganj', '3352', NULL, NULL),
(1227, 7, 51, 'Chunarughat', 130, 'Chandpurbagan', '3321', NULL, NULL),
(1228, 7, 51, 'Chunarughat', 130, 'Chunarughat', '3320', NULL, NULL),
(1229, 7, 51, 'Chunarughat', 130, 'Narapati', '3322', NULL, NULL),
(1230, 7, 51, 'Hobiganj Sadar', 130, 'Gopaya', '3302', NULL, NULL),
(1231, 7, 51, 'Hobiganj Sadar', 130, 'Hobiganj Sadar', '3300', NULL, NULL),
(1232, 7, 51, 'Hobiganj Sadar', 130, 'Shaestaganj', '3301', NULL, NULL),
(1233, 7, 51, 'Kalauk', 130, 'Kalauk', '3340', NULL, NULL),
(1234, 7, 51, 'Kalauk', 130, 'Lakhai', '3341', NULL, NULL),
(1235, 7, 51, 'Madhabpur', 130, 'Itakhola', '3331', NULL, NULL),
(1236, 7, 51, 'Madhabpur', 130, 'Madhabpur', '3330', NULL, NULL),
(1237, 7, 51, 'Madhabpur', 130, 'Saihamnagar', '3333', NULL, NULL),
(1238, 7, 51, 'Madhabpur', 130, 'Shahajibazar', '3332', NULL, NULL),
(1239, 7, 51, 'Nabiganj', 130, 'Digalbak', '3373', NULL, NULL),
(1240, 7, 51, 'Nabiganj', 130, 'Golduba', '3372', NULL, NULL),
(1241, 7, 51, 'Nabiganj', 130, 'Goplarbazar', '3371', NULL, NULL),
(1242, 7, 51, 'Nabiganj', 130, 'Inathganj', '3374', NULL, NULL),
(1243, 7, 51, 'Nabiganj', 130, 'Nabiganj', '3370', NULL, NULL),
(1244, 7, 52, 'Baralekha', 130, 'Baralekha', '3250', NULL, NULL),
(1245, 7, 52, 'Baralekha', 130, 'Dhakkhinbag', '3252', NULL, NULL),
(1246, 7, 52, 'Baralekha', 130, 'Juri', '3251', NULL, NULL),
(1247, 7, 52, 'Baralekha', 130, 'Purbashahabajpur', '3253', NULL, NULL),
(1248, 7, 52, 'Kamalganj', 130, 'Kamalganj', '3220', NULL, NULL),
(1249, 7, 52, 'Kamalganj', 130, 'Keramatnaga', '3221', NULL, NULL),
(1250, 7, 52, 'Kamalganj', 130, 'Munshibazar', '3224', NULL, NULL),
(1251, 7, 52, 'Kamalganj', 130, 'Patrakhola', '3222', NULL, NULL),
(1252, 7, 52, 'Kamalganj', 130, 'Shamsher Nagar', '3223', NULL, NULL),
(1253, 7, 52, 'Kulaura', 130, 'Baramchal', '3237', NULL, NULL),
(1254, 7, 52, 'Kulaura', 130, 'Kajaldhara', '3234', NULL, NULL),
(1255, 7, 52, 'Kulaura', 130, 'Karimpur', '3235', NULL, NULL),
(1256, 7, 52, 'Kulaura', 130, 'Kulaura', '3230', NULL, NULL),
(1257, 7, 52, 'Kulaura', 130, 'Langla', '3232', NULL, NULL),
(1258, 7, 52, 'Kulaura', 130, 'Prithimpasha', '3233', NULL, NULL),
(1259, 7, 52, 'Kulaura', 130, 'Tillagaon', '3231', NULL, NULL),
(1260, 7, 52, 'Moulvibazar Sadar', 130, 'Afrozganj', '3203', NULL, NULL),
(1261, 7, 52, 'Moulvibazar Sadar', 130, 'Barakapan', '3201', NULL, NULL),
(1262, 7, 52, 'Moulvibazar Sadar', 130, 'Monumukh', '3202', NULL, NULL),
(1263, 7, 52, 'Moulvibazar Sadar', 130, 'Moulvibazar Sadar', '3200', NULL, NULL),
(1264, 7, 52, 'Rajnagar', 130, 'Rajnagar', '3240', NULL, NULL),
(1265, 7, 52, 'Srimangal', 130, 'Kalighat', '3212', NULL, NULL),
(1266, 7, 52, 'Srimangal', 130, 'Khejurichhara', '3213', NULL, NULL),
(1267, 7, 52, 'Srimangal', 130, 'Narain Chora', '3211', NULL, NULL),
(1268, 7, 52, 'Srimangal', 130, 'Satgaon', '3214', NULL, NULL),
(1269, 7, 52, 'Srimangal', 130, 'Srimangal', '3210', NULL, NULL),
(1270, 7, 53, 'Bishamsarpur', 130, 'Bishamsapur', '3010', NULL, NULL),
(1271, 7, 53, 'Chhatak', 130, 'Chhatak', '3080', NULL, NULL),
(1272, 7, 53, 'Chhatak', 130, 'Chhatak Cement Facto', '3081', NULL, NULL),
(1273, 7, 53, 'Chhatak', 130, 'Chhatak Paper Mills', '3082', NULL, NULL),
(1274, 7, 53, 'Chhatak', 130, 'Chourangi Bazar', '3893', NULL, NULL),
(1275, 7, 53, 'Chhatak', 130, 'Gabindaganj', '3083', NULL, NULL),
(1276, 7, 53, 'Chhatak', 130, 'Gabindaganj Natun Ba', '3084', NULL, NULL),
(1277, 7, 53, 'Chhatak', 130, 'Islamabad', '3088', NULL, NULL),
(1278, 7, 53, 'Chhatak', 130, 'jahidpur', '3087', NULL, NULL),
(1279, 7, 53, 'Chhatak', 130, 'Khurma', '3085', NULL, NULL),
(1280, 7, 53, 'Chhatak', 130, 'Moinpur', '3086', NULL, NULL),
(1281, 7, 53, 'Dhirai Chandpur', 130, 'Dhirai Chandpur', '3040', NULL, NULL),
(1282, 7, 53, 'Dhirai Chandpur', 130, 'Jagdal', '3041', NULL, NULL),
(1283, 7, 53, 'Duara bazar', 130, 'Duara bazar', '3070', NULL, NULL),
(1284, 7, 53, 'Ghungiar', 130, 'Ghungiar', '3050', NULL, NULL),
(1285, 7, 53, 'Jagnnathpur', 130, 'Atuajan', '3062', NULL, NULL),
(1286, 7, 53, 'Jagnnathpur', 130, 'Hasan Fatemapur', '3063', NULL, NULL),
(1287, 7, 53, 'Jagnnathpur', 130, 'Jagnnathpur', '3060', NULL, NULL),
(1288, 7, 53, 'Jagnnathpur', 130, 'Rasulganj', '3064', NULL, NULL),
(1289, 7, 53, 'Jagnnathpur', 130, 'Shiramsi', '3065', NULL, NULL),
(1290, 7, 53, 'Jagnnathpur', 130, 'Syedpur', '3061', NULL, NULL),
(1291, 7, 53, 'Sachna', 130, 'Sachna', '3020', NULL, NULL),
(1292, 7, 53, 'Sunamganj Sadar', 130, 'Pagla', '3001', NULL, NULL),
(1293, 7, 53, 'Sunamganj Sadar', 130, 'Patharia', '3002', NULL, NULL),
(1294, 7, 53, 'Sunamganj Sadar', 130, 'Sunamganj Sadar', '3000', NULL, NULL),
(1295, 7, 53, 'Tahirpur', 130, 'Tahirpur', '3030', NULL, NULL),
(1296, 7, 54, 'Balaganj', 130, 'Balaganj', '3120', NULL, NULL),
(1297, 7, 54, 'Balaganj', 130, 'Begumpur', '3125', NULL, NULL),
(1298, 7, 54, 'Balaganj', 130, 'Brahman Shashon', '3122', NULL, NULL),
(1299, 7, 54, 'Balaganj', 130, 'Gaharpur', '3128', NULL, NULL),
(1300, 7, 54, 'Balaganj', 130, 'Goala Bazar', '3124', NULL, NULL),
(1301, 7, 54, 'Balaganj', 130, 'Karua', '3121', NULL, NULL),
(1302, 7, 54, 'Balaganj', 130, 'Kathal Khair', '3127', NULL, NULL),
(1303, 7, 54, 'Balaganj', 130, 'Natun Bazar', '3129', NULL, NULL),
(1304, 7, 54, 'Balaganj', 130, 'Omarpur', '3126', NULL, NULL),
(1305, 7, 54, 'Balaganj', 130, 'Tajpur', '3123', NULL, NULL),
(1306, 7, 54, 'Bianibazar', 130, 'Bianibazar', '3170', NULL, NULL),
(1307, 7, 54, 'Bianibazar', 130, 'Churkai', '3175', NULL, NULL),
(1308, 7, 54, 'Bianibazar', 130, 'jaldup', '3171', NULL, NULL),
(1309, 7, 54, 'Bianibazar', 130, 'Kurar bazar', '3173', NULL, NULL),
(1310, 7, 54, 'Bianibazar', 130, 'Mathiura', '3172', NULL, NULL),
(1311, 7, 54, 'Bianibazar', 130, 'Salia bazar', '3174', NULL, NULL),
(1312, 7, 54, 'Bishwanath', 130, 'Bishwanath', '3130', NULL, NULL),
(1313, 7, 54, 'Bishwanath', 130, 'Dashghar', '3131', NULL, NULL),
(1314, 7, 54, 'Bishwanath', 130, 'Deokalas', '3133', NULL, NULL),
(1315, 7, 54, 'Bishwanath', 130, 'Doulathpur', '3132', NULL, NULL),
(1316, 7, 54, 'Bishwanath', 130, 'Singer kanch', '3134', NULL, NULL),
(1317, 7, 54, 'Fenchuganj', 130, 'Fenchuganj', '3116', NULL, NULL),
(1318, 7, 54, 'Fenchuganj', 130, 'Fenchuganj SareKarkh', '3117', NULL, NULL),
(1319, 7, 54, 'Jaintapur', 130, 'Chiknagul', '3152', NULL, NULL),
(1320, 7, 54, 'Gowainghat', 130, 'Gowainghat', '3150', NULL, NULL),
(1321, 7, 54, 'Gowainghat', 130, 'Jaflong', '3151', NULL, NULL),
(1322, 7, 54, 'Gopalganj', 130, 'banigram', '3164', NULL, NULL),
(1323, 7, 54, 'Gopalganj', 130, 'Chandanpur', '3165', NULL, NULL),
(1324, 7, 54, 'Gopalganj', 130, 'Dakkhin Bhadashore', '3162', NULL, NULL),
(1325, 7, 54, 'Gopalganj', 130, 'Dhaka Dakkhin', '3161', NULL, NULL),
(1326, 7, 54, 'Gopalganj', 130, 'Gopalgannj', '3160', NULL, NULL),
(1327, 7, 54, 'Gopalganj', 130, 'Ranaping', '3163', NULL, NULL),
(1328, 7, 54, 'Jaintapur', 130, 'Jaintapur', '3156', NULL, NULL),
(1329, 7, 54, 'Jakiganj', 130, 'Ichhamati', '3191', NULL, NULL),
(1330, 7, 54, 'Jakiganj', 130, 'Jakiganj', '3190', NULL, NULL),
(1331, 7, 54, 'Kanaighat', 130, 'Chatulbazar', '3181', NULL, NULL),
(1332, 7, 54, 'Kanaighat', 130, 'Gachbari', '3183', NULL, NULL),
(1333, 7, 54, 'Kanaighat', 130, 'Kanaighat', '3180', NULL, NULL),
(1334, 7, 54, 'Kanaighat', 130, 'Manikganj', '3182', NULL, NULL),
(1335, 7, 54, 'Kompanyganj', 130, 'Kompanyganj', '3140', NULL, NULL),
(1336, 7, 54, 'Sylhet Sadar', 130, 'Birahimpur', '3106', NULL, NULL),
(1337, 7, 54, 'Sylhet Sadar', 130, 'Jalalabad', '3107', NULL, NULL),
(1338, 7, 54, 'Sylhet Sadar', 130, 'Jalalabad Cantoment', '3104', NULL, NULL),
(1339, 7, 54, 'Sylhet Sadar', 130, 'Kadamtali', '3111', NULL, NULL),
(1340, 7, 54, 'Sylhet Sadar', 130, 'Kamalbazer', '3112', NULL, NULL),
(1341, 7, 54, 'Sylhet Sadar', 130, 'Khadimnagar', '3103', NULL, NULL),
(1342, 7, 54, 'Sylhet Sadar', 130, 'Lalbazar', '3113', NULL, NULL),
(1343, 7, 54, 'Sylhet Sadar', 130, 'Mogla', '3108', NULL, NULL),
(1344, 7, 54, 'Sylhet Sadar', 130, 'Ranga Hajiganj', '3109', NULL, NULL),
(1345, 7, 54, 'Sylhet Sadar', 130, 'Shahajalal Science &', '3114', NULL, NULL),
(1346, 7, 54, 'Sylhet Sadar', 130, 'Silam', '3105', NULL, NULL),
(1347, 7, 54, 'Sylhet Sadar', 130, 'Sylhe Sadar', '3100', NULL, NULL),
(1348, 7, 54, 'Sylhet Sadar', 130, 'Sylhet Biman Bondar', '3102', NULL, NULL),
(1349, 7, 54, 'Sylhet Sadar', 130, 'Sylhet Cadet Col', '3101', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED DEFAULT NULL,
  `raw_price` varchar(255) DEFAULT NULL,
  `regular_price` varchar(255) DEFAULT NULL,
  `description` longtext NOT NULL,
  `sku` varchar(255) NOT NULL,
  `stock` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `brand_id`, `category_id`, `supplier_id`, `raw_price`, `regular_price`, `description`, `sku`, `stock`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(50, 'Z Charment Square', 7, 26, 2, '280', '770', 'abc', 'CA1HP94Z', NULL, 'z-charment-square', 'active', '2024-05-30 10:41:56', '2024-06-02 13:15:03'),
(51, 'Charment Oval', 7, 26, 2, '350', '770', '<p>Comfortable | Lightweight | Flexible&nbsp;</p>', '2P0X4ZEY', NULL, 'charment-oval', 'active', '2024-05-31 04:02:11', '2024-08-23 15:39:14'),
(52, 'Dazzle Square', 12, 26, 2, '320', '900', '<p>Classic as much as you want.</p><p>Durable | Extrawide spring</p><p>Size: 51-20-140</p>', 'XUFYR8SA', NULL, 'dazzle-square', 'active', '2024-05-31 04:47:23', '2024-05-31 04:47:23'),
(53, 'Dazzle Catseye', 14, 26, 2, '320', '900', '<p>Size: 53-18-143</p><p>Lightweight perfect for regular using.</p>', '12K56EXU', NULL, 'dazzle-catseye', 'active', '2024-05-31 04:54:32', '2024-05-31 04:54:32'),
(54, 'Prime Metalic Eyewear', 12, 26, 2, '600', '1850', '<p>Made with pure stainless steel, ultra thin comfortable to use.</p><p>Size: 51-16-138</p>', '4RQGEC69', NULL, 'prime-metalic-eyewear', 'active', '2024-05-31 07:51:45', '2024-08-04 02:54:38'),
(55, 'Galore Catseye', 12, 26, 2, '420', '1200', '<p>Size: 53-16-141</p><p>Made with premium acetate material&nbsp;</p><p>Bow designed temple have an ordinary characteristic to change look instantly.</p>', 'IP86NZGB', NULL, 'galore-catseye', 'active', '2024-05-31 08:44:21', '2024-05-31 08:44:21'),
(56, 'Classic Oversized', 24, 26, 2, '270', '719', '<p>You just need a glasses to make a classic statement, that\'s it.<br>Oversized in budget<br>Body material: Plastic <br>Temple: Metal(stainless)</p>', 'SP5309F4', NULL, 'classic-oversized', 'active', '2024-05-31 18:10:11', '2024-08-23 17:04:04'),
(57, 'Classic Round', 24, 26, 2, '230', '719', '<p>A most demanding product for now a days<br>Lightweight and comfortable to use<br>Made with plastic body and stainless temple</p>', 'DCOZNL4J', NULL, 'classic-round', 'active', '2024-05-31 18:14:52', '2024-08-23 17:21:15'),
(58, 'Classic Hexa', 24, 26, 2, '250', '720', 'Border your eyes in hexa.&nbsp;<br>Lightweight comfort to use regularly.', 'FAZHBTYN', NULL, 'classic-hexa', 'active', '2024-05-31 18:21:13', '2024-08-24 03:01:54'),
(59, 'Dior Acetate Sunglasses', 14, 32, 2, '700', '1860', '<p><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\">- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-weight: 600; overflow-wrap: break-word; color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\">*UV400 Protection:*</span><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\"> Blocks 100% of UVA and UVB rays\r\n- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-weight: 600; overflow-wrap: break-word; color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\">*Polarized Lenses:*</span><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\"> Reduces glare and enhances clarity\r\n- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-weight: 600; overflow-wrap: break-word; color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\">*Lightweight Frame:*</span><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\"> Ensures comfort for prolonged wear\r\n- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-weight: 600; overflow-wrap: break-word; color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\">*Durable Construction:*</span><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\"> Built to withstand daily use\r\n- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-weight: 600; overflow-wrap: break-word; color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\">*Versatile Style:*</span><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\"> Complements any outfit</span><br></p>', 'QJGAKHX1', NULL, 'dior-acetate-sunglasses', 'active', '2024-05-31 18:59:08', '2024-05-31 18:59:08'),
(60, 'FENDI Premium Oversized', 25, 32, 2, '700', '1850', '<p><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-weight: 600; overflow-wrap: break-word; color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\">*UV400 Protection:*</span><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\"> Blocks 100% of UVA and UVB rays\r\n- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-weight: 600; overflow-wrap: break-word; color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\">*Polarized Lenses:*</span><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\"> Reduces glare and enhances clarity\r\n- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-weight: 600; overflow-wrap: break-word; color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\">*Lightweight Frame:*</span><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\"> Ensures comfort for prolonged wear\r\n- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-weight: 600; overflow-wrap: break-word; color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\">*Durable Construction:*</span><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\"> Built to withstand daily use\r\n- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-weight: 600; overflow-wrap: break-word; color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\">*Versatile Style:*</span><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\"> Complements any outfit</span><br></p>', 'C6SQ2V8P', NULL, 'fendi-premium-oversized', 'active', '2024-05-31 19:04:48', '2024-08-24 08:19:19'),
(61, 'LV Oversized Premium', 19, 32, 2, '700', '1860', '<p><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-weight: 600; overflow-wrap: break-word; color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\">*UV400 Protection:*</span><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\"> Blocks 100% of UVA and UVB rays\r\n- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-weight: 600; overflow-wrap: break-word; color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\">*Polarized Lenses:*</span><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\"> Reduces glare and enhances clarity\r\n- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-weight: 600; overflow-wrap: break-word; color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\">*Lightweight Frame:*</span><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\"> Ensures comfort for prolonged wear\r\n- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-weight: 600; overflow-wrap: break-word; color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\">*Durable Construction:*</span><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\"> Built to withstand daily use\r\n- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-weight: 600; overflow-wrap: break-word; color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\">*Versatile Style:*</span><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\"> Complements any outfit</span><br></p>', 'HMIZLAX4', NULL, 'lv-oversized-premium', 'active', '2024-05-31 19:07:17', '2024-05-31 19:07:17'),
(62, 'Louis Vuiton Sunglasses', 19, 32, 2, '700', '1860', '<p><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-weight: 600; overflow-wrap: break-word; color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\">*UV400 Protection:*</span><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\"> Blocks 100% of UVA and UVB rays\r\n- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-weight: 600; overflow-wrap: break-word; color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\">*Polarized Lenses:*</span><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\"> Reduces glare and enhances clarity\r\n- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-weight: 600; overflow-wrap: break-word; color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\">*Lightweight Frame:*</span><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\"> Ensures comfort for prolonged wear\r\n- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-weight: 600; overflow-wrap: break-word; color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\">*Durable Construction:*</span><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\"> Built to withstand daily use\r\n- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-weight: 600; overflow-wrap: break-word; color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\">*Versatile Style:*</span><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\"> Complements any outfit</span><br></p>', 'MH35C1BY', NULL, 'louis-vuiton-sunglasses', 'active', '2024-05-31 19:11:44', '2024-05-31 19:11:44'),
(63, 'PRADA Oversized Sunglasses', 18, 32, 2, '750', '1860', '<p><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-weight: 600; overflow-wrap: break-word; color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\">*UV400 Protection:*</span><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\"> Blocks 100% of UVA and UVB rays\r\n- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-weight: 600; overflow-wrap: break-word; color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\">*Polarized Lenses:*</span><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\"> Reduces glare and enhances clarity\r\n- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-weight: 600; overflow-wrap: break-word; color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\">*Lightweight Frame:*</span><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\"> Ensures comfort for prolonged wear\r\n- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-weight: 600; overflow-wrap: break-word; color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\">*Durable Construction:*</span><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\"> Built to withstand daily use\r\n- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-weight: 600; overflow-wrap: break-word; color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\">*Versatile Style:*</span><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve; background-color: rgb(240, 240, 240);\"> Complements any outfit</span><br></p>', 'A4S0P1OI', NULL, 'prada-oversized-sunglasses', 'active', '2024-05-31 19:16:56', '2024-05-31 19:16:56'),
(64, 'Burberry Acetate Catseye', 26, 26, 2, '400', '1290', '<li><strong>Premium Quality Materials:</strong> Crafted from high-grade acetate and stainless steel, ensuring durability and a lightweight feel for all-day comfort.</li><li><strong>Stylish Design:</strong> Featuring a timeless rectangular frame that suits a variety of face shapes, making it a versatile addition to your eyewear collection.</li><li><strong>Comfort Fit:</strong> Adjustable nose pads and flexible spring hinges provide a secure and customized fit.</li>', 'JC0U6WMQ', NULL, 'burberry-acetate-catseye', 'active', '2024-05-31 19:30:31', '2024-05-31 19:30:31'),
(65, 'Titan Oversized Oval', 27, 26, 2, '350', '990', '<p>.</p>', 'Y7I5DO18', NULL, 'titan-oversized-oval', 'active', '2024-06-01 07:13:01', '2024-06-01 07:13:01'),
(66, 'Titan Boldmatte', 27, 26, 2, '350', '990', '<li style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 900; font-size: 14px; font-family: Lato, sans-serif; color: rgb(79, 93, 119);\"><span style=\"font-weight: 600;\">Premium Quality Materials:</span>&nbsp;Crafted from high-grade acetate ensuring durability and a lightweight feel for all-day comfort.</li><li style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 900; font-size: 14px; font-family: Lato, sans-serif; color: rgb(79, 93, 119);\"><span style=\"font-weight: 600;\">Stylish Design:</span>&nbsp;Featuring a timeless rectangular frame that suits a variety of face shapes, making it a versatile addition to your eyewear collection.</li><li style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 900; font-size: 14px; font-family: Lato, sans-serif; color: rgb(79, 93, 119);\"><span style=\"font-weight: 600;\">Comfort Fit:</span>&nbsp;Adjustable nose pads and flexible spring hinges provide a secure and customized fit.</li>', 'TGWZISX8', NULL, 'titan-oversized-horn', 'active', '2024-06-01 07:28:05', '2024-08-27 06:38:37'),
(67, 'N One Catseye', 24, 26, 2, '280', '770', '<li style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 900; font-size: 14px; font-family: Lato, sans-serif; color: rgb(79, 93, 119);\"><span style=\"font-weight: 600;\">Premium Quality Materials:</span>&nbsp;Crafted from high-grade TR90 and stainless steel, ensuring durability and a lightweight feel for all-day comfort.</li><li style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 900; font-size: 14px; font-family: Lato, sans-serif; color: rgb(79, 93, 119);\"><span style=\"font-weight: 600;\">Stylish Design:</span>&nbsp;Featuring a timeless rectangular frame that suits a variety of face shapes, making it a versatile addition to your eyewear collection.</li><li style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 900; font-size: 14px; font-family: Lato, sans-serif; color: rgb(79, 93, 119);\"><span style=\"font-weight: 600;\">Comfort Fit:</span>&nbsp;Adjustable nose pads and flexible spring hinges provide a secure and customized fit.</li>', '7GPFNR4X', NULL, 'n-one-catseye', 'active', '2024-06-01 07:45:04', '2024-06-01 07:45:04'),
(68, 'Bvlgari Nerd', 16, 26, 2, '420', '1090', '<li style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 900; font-size: 14px; font-family: Lato, sans-serif; color: rgb(79, 93, 119);\"><span style=\"font-weight: 600;\">Premium Quality Materials:</span>&nbsp;Crafted from high-grade acetate and stainless steel, ensuring durability and a lightweight feel for all-day comfort.</li><li style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 900; font-size: 14px; font-family: Lato, sans-serif; color: rgb(79, 93, 119);\"><span style=\"font-weight: 600;\">Stylish Design:</span>&nbsp;Featuring a timeless rectangular frame that suits a variety of face shapes, making it a versatile addition to your eyewear collection.</li><li style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 900; font-size: 14px; font-family: Lato, sans-serif; color: rgb(79, 93, 119);\"><span style=\"font-weight: 600;\">Comfort Fit:</span>&nbsp;Adjustable nose pads and flexible spring hinges provide a secure and customized fit.</li>', 'GRT4ONES', NULL, 'bvlgari-nerd', 'active', '2024-06-01 07:49:58', '2024-06-01 07:49:58'),
(69, 'Burberry Catseye Sunglasses', 26, 32, 2, '700', '1850', '<p><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 600; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; overflow-wrap: break-word; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\">*UV400 Protection:*</span><span style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\"> Blocks 100% of UVA and UVB rays\r\n- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 600; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; overflow-wrap: break-word; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\">*Polarized Lenses:*</span><span style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\"> Reduces glare and enhances clarity\r\n- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 600; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; overflow-wrap: break-word; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\">*Lightweight Frame:*</span><span style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\"> Ensures comfort for prolonged wear\r\n- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 600; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; overflow-wrap: break-word; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\">*Durable Construction:*</span><span style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\"> Built to withstand daily use\r\n- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 600; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; overflow-wrap: break-word; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\">*Versatile Style:*</span><span style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\"> Complements any outfit</span><br></p>', 'HKVFGXI0', NULL, 'burberry-catseye-sunglasses', 'active', '2024-06-01 18:27:00', '2024-06-01 18:27:00'),
(70, 'Chanel Oversized Sunglasses', 15, 32, 2, '700', '1848', '<p><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 600; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; overflow-wrap: break-word; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\">*UV400 Protection:*</span><span style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\"> Blocks 100% of UVA and UVB rays\r\n- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 600; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; overflow-wrap: break-word; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\">*Polarized Lenses:*</span><span style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\"> Reduces glare and enhances clarity\r\n- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 600; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; overflow-wrap: break-word; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\">*Lightweight Frame:*</span><span style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\"> Ensures comfort for prolonged wear\r\n- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 600; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; overflow-wrap: break-word; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\">*Durable Construction:*</span><span style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\"> Built to withstand daily use\r\n- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 600; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; overflow-wrap: break-word; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\">*Versatile Style:*</span><span style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\"> Complements any outfit</span><br></p>', 'ME83T6XA', NULL, 'chanel-oversized-sunglasses', 'active', '2024-06-01 18:32:39', '2024-06-01 18:32:39'),
(71, 'Chanel Square Sunglasses', 15, 32, 2, '700', '1851', '<p><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 600; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; overflow-wrap: break-word; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\">*UV400 Protection:*</span><span style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\"> Blocks 100% of UVA and UVB rays\r\n- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 600; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; overflow-wrap: break-word; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\">*Polarized Lenses:*</span><span style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\"> Reduces glare and enhances clarity\r\n- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 600; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; overflow-wrap: break-word; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\">*Lightweight Frame:*</span><span style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\"> Ensures comfort for prolonged wear\r\n- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 600; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; overflow-wrap: break-word; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\">*Durable Construction:*</span><span style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\"> Built to withstand daily use\r\n- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 600; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; overflow-wrap: break-word; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\">*Versatile Style:*</span><span style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\"> Complements any outfit</span><br></p>', '9O7KFLHS', NULL, 'chanel-square-sunglasses', 'active', '2024-06-01 18:37:27', '2024-06-01 18:37:27'),
(72, 'Dior Square Sunglasses', 14, 32, 2, '700', '1850', '<p><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 600; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; overflow-wrap: break-word; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\">*UV400 Protection:*</span><span style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\"> Blocks 100% of UVA and UVB rays\r\n- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 600; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; overflow-wrap: break-word; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\">*Polarized Lenses:*</span><span style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\"> Reduces glare and enhances clarity\r\n- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 600; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; overflow-wrap: break-word; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\">*Lightweight Frame:*</span><span style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\"> Ensures comfort for prolonged wear\r\n- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 600; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; overflow-wrap: break-word; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\">*Durable Construction:*</span><span style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\"> Built to withstand daily use\r\n- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 600; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; overflow-wrap: break-word; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\">*Versatile Style:*</span><span style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\"> Complements any outfit</span><br></p>', '6ALBGWZN', NULL, 'dior-square-sunglasses', 'active', '2024-06-01 18:39:43', '2024-06-01 18:39:43');
INSERT INTO `products` (`id`, `product_name`, `brand_id`, `category_id`, `supplier_id`, `raw_price`, `regular_price`, `description`, `sku`, `stock`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(73, 'Prada Fancy Sunglasses', 18, 31, 2, '700', '1500', '<p><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 600; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; overflow-wrap: break-word; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\">*UV400 Protection:*</span><span style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\"> Blocks 100% of UVA and UVB rays\r\n- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 600; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; overflow-wrap: break-word; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\">*Polarized Lenses:*</span><span style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\"> Reduces glare and enhances clarity\r\n- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 600; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; overflow-wrap: break-word; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\">*Lightweight Frame:*</span><span style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\"> Ensures comfort for prolonged wear\r\n- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 600; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; overflow-wrap: break-word; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\">*Durable Construction:*</span><span style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\"> Built to withstand daily use\r\n- </span><span class=\"html-b xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 600; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; overflow-wrap: break-word; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\">*Versatile Style:*</span><span style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s; white-space-collapse: preserve; color: rgb(5, 5, 5); background-color: rgb(240, 240, 240);\"> Complements any outfit</span><br></p>', '14S3UDE6', NULL, 'prada-fancy-sunglasses', 'active', '2024-06-01 18:47:34', '2024-06-01 18:47:34'),
(79, 'Densen Horneye', 24, 26, 2, '320', '890', '<li style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 900; font-size: 14px; font-family: Lato, sans-serif; color: rgb(79, 93, 119);\"><span style=\"font-weight: 600; transition: all 0.3s ease 0s;\">Premium Quality Materials:</span>&nbsp;Crafted from high-grade acetate and stainless steel, ensuring durability and a lightweight feel for all-day comfort.</li><li style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 900; font-size: 14px; font-family: Lato, sans-serif; color: rgb(79, 93, 119);\"><span style=\"font-weight: 600; transition: all 0.3s ease 0s;\">Stylish Design:</span>&nbsp;Featuring a timeless rectangular frame that suits a variety of face shapes, making it a versatile addition to your eyewear collection.</li><li style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 900; font-size: 14px; font-family: Lato, sans-serif; color: rgb(79, 93, 119);\"><span style=\"font-weight: 600; transition: all 0.3s ease 0s;\">Comfort Fit:</span>&nbsp;Adjustable nose pads and flexible spring hinges provide a secure and customized fit.</li>', '45CVH91W', NULL, 'densen-horneye', 'active', '2024-06-03 11:26:04', '2024-06-03 11:26:04'),
(80, 'Titan Thin Horn', 27, 26, 2, '420', '1300', '<li style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 900; font-size: 14px; font-family: Lato, sans-serif; color: rgb(79, 93, 119);\"><span style=\"font-weight: 600; transition: all 0.3s ease 0s;\">Premium Quality Materials:</span>&nbsp;Crafted from high-grade acetate and stainless steel, ensuring durability and a lightweight feel for all-day comfort.</li><li style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 900; font-size: 14px; font-family: Lato, sans-serif; color: rgb(79, 93, 119);\"><span style=\"font-weight: 600; transition: all 0.3s ease 0s;\">Stylish Design:</span>&nbsp;Featuring a timeless rectangular frame that suits a variety of face shapes, making it a versatile addition to your eyewear collection.</li><li style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 900; font-size: 14px; font-family: Lato, sans-serif; color: rgb(79, 93, 119);\"><span style=\"font-weight: 600; transition: all 0.3s ease 0s;\">Comfort Fit:</span>&nbsp;Adjustable nose pads and flexible spring hinges provide a secure and customized fit.</li>', 'GNXVK4MC', NULL, 'titan-thin-horn', 'active', '2024-06-03 17:52:12', '2024-06-14 11:23:59'),
(81, 'Squarify Glasses', 27, 26, 2, '420', '1299', '<li style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 900; font-size: 14px; font-family: Lato, sans-serif; color: rgb(79, 93, 119);\"><span style=\"font-weight: 600; transition: all 0.3s ease 0s;\">Premium Quality Materials:</span>&nbsp;Crafted from high-grade acetate and stainless steel, ensuring durability and a lightweight feel for all-day comfort.</li><li style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 900; font-size: 14px; font-family: Lato, sans-serif; color: rgb(79, 93, 119);\"><span style=\"font-weight: 600; transition: all 0.3s ease 0s;\">Stylish Design:</span>&nbsp;Featuring a timeless rectangular frame that suits a variety of face shapes, making it a versatile addition to your eyewear collection.</li><li style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 900; font-size: 14px; font-family: Lato, sans-serif; color: rgb(79, 93, 119);\"><span style=\"font-weight: 600; transition: all 0.3s ease 0s;\">Comfort Fit:</span>&nbsp;Adjustable nose pads and flexible spring hinges provide a secure and customized fit.</li>', 'L856Q1U2', NULL, 'squarify-glasses', 'active', '2024-06-04 11:44:05', '2024-06-04 11:44:05'),
(82, 'Hexafy Glasses', 27, 26, 2, '420', '1300', '<li style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 900; font-size: 14px; font-family: Lato, sans-serif; color: rgb(79, 93, 119);\"><span style=\"font-weight: 600; transition: all 0.3s ease 0s;\">Premium Quality Materials:</span>&nbsp;Crafted from high-grade acetate and stainless steel, ensuring durability and a lightweight feel for all-day comfort.</li><li style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 900; font-size: 14px; font-family: Lato, sans-serif; color: rgb(79, 93, 119);\"><span style=\"font-weight: 600; transition: all 0.3s ease 0s;\">Stylish Design:</span>&nbsp;Featuring a timeless rectangular frame that suits a variety of face shapes, making it a versatile addition to your eyewear collection.</li><li style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 900; font-size: 14px; font-family: Lato, sans-serif; color: rgb(79, 93, 119);\"><span style=\"font-weight: 600; transition: all 0.3s ease 0s;\">Comfort Fit:</span>&nbsp;Adjustable nose pads and flexible spring hinges provide a secure and customized fit.</li>', '7JHOKN3E', NULL, 'hexafy-glasses', 'active', '2024-06-04 12:25:19', '2024-08-29 09:33:04'),
(83, 'Roundify Glasses', 15, 26, 2, '350', '890', '<li style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 900; font-size: 14px; font-family: Lato, sans-serif; color: rgb(79, 93, 119);\"><span style=\"font-weight: 600; transition: all 0.3s ease 0s;\">Premium Quality Materials:</span>&nbsp;Crafted from high-grade acetate and stainless steel, ensuring durability and a lightweight feel for all-day comfort.</li><li style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 900; font-size: 14px; font-family: Lato, sans-serif; color: rgb(79, 93, 119);\"><span style=\"font-weight: 600; transition: all 0.3s ease 0s;\">Stylish Design:</span>&nbsp;Featuring a timeless rectangular frame that suits a variety of face shapes, making it a versatile addition to your eyewear collection.</li><li style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 900; font-size: 14px; font-family: Lato, sans-serif; color: rgb(79, 93, 119);\"><span style=\"font-weight: 600; transition: all 0.3s ease 0s;\">Comfort Fit:</span>&nbsp;Adjustable nose pads and flexible spring hinges provide a secure and customized fit.</li>', 'LGCDO9XV', NULL, 'roundify-glasses', 'active', '2024-06-04 19:40:14', '2024-08-29 09:36:55'),
(84, 'Twotone Rounders', 24, 26, 2, '300', '920', '<li style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 900; font-size: 14px; font-family: Lato, sans-serif; color: rgb(79, 93, 119);\"><span style=\"font-weight: 600; transition: all 0.3s ease 0s;\">Premium Quality Materials:</span>&nbsp;Crafted from high-grade acetate and stainless steel, ensuring durability and a lightweight feel for all-day comfort.</li><li style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 900; font-size: 14px; font-family: Lato, sans-serif; color: rgb(79, 93, 119);\"><span style=\"font-weight: 600; transition: all 0.3s ease 0s;\">Stylish Design:</span>&nbsp;Featuring a timeless rectangular frame that suits a variety of face shapes, making it a versatile addition to your eyewear collection.</li><li style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 900; font-size: 14px; font-family: Lato, sans-serif; color: rgb(79, 93, 119);\"><span style=\"font-weight: 600; transition: all 0.3s ease 0s;\">Comfort Fit:</span>&nbsp;Adjustable nose pads and flexible spring hinges provide a secure and customized fit.</li>', '698YCNVT', NULL, 'twotone-rounders', 'active', '2024-06-05 03:19:19', '2024-06-05 03:19:19'),
(85, 'Twotone Catseye', 24, 26, 2, '300', '920', '<li style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 900; font-size: 14px; font-family: Lato, sans-serif; color: rgb(79, 93, 119);\"><span style=\"font-weight: 600; transition: all 0.3s ease 0s;\">Premium Quality Materials:</span>&nbsp;Crafted from high-grade acetate and stainless steel, ensuring durability and a lightweight feel for all-day comfort.</li><li style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 900; font-size: 14px; font-family: Lato, sans-serif; color: rgb(79, 93, 119);\"><span style=\"font-weight: 600; transition: all 0.3s ease 0s;\">Stylish Design:</span>&nbsp;Featuring a timeless rectangular frame that suits a variety of face shapes, making it a versatile addition to your eyewear collection.</li><li style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 900; font-size: 14px; font-family: Lato, sans-serif; color: rgb(79, 93, 119);\"><span style=\"font-weight: 600; transition: all 0.3s ease 0s;\">Comfort Fit:</span>&nbsp;Adjustable nose pads and flexible spring hinges provide a secure and customized fit.</li>', 'O0RWUP6K', NULL, 'twotone-catseye', 'active', '2024-06-05 03:21:06', '2024-06-05 06:15:55'),
(86, 'Dahab Alaska', 29, 34, 2, '500', '900', '<p><span style=\"color: rgb(82, 82, 82); font-family: Jost, Arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Eye Appearance: Larger Look, Lens Material: Polymacon, Base Curve: 8.8, Diameter: 14.8, Hydration: 38%, Center Thickness: 0.05 – 027mm, Type: Soft Contact Lenses. Power Up to -0.25 -6.00 SPH</span><br></p>', '698QBEXO', NULL, 'dahab-alaska', 'active', '2024-06-25 07:18:35', '2024-06-25 07:18:35'),
(87, 'Dahab Aqua', 29, 34, 2, '500', '900', '<p><span style=\"color: rgb(82, 82, 82); font-family: Jost, Arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Eye Appearance: Larger Look, Lens Material: Polymacon, Base Curve: 8.8, Diameter: 14.8, Hydration: 38%, Center Thickness: 0.05 – 027mm, Type: Soft Contact Lenses. Power Up to -0.25 -6.00 SPH</span><br></p>', '5JIBKO9Z', NULL, 'dahab-aqua', 'active', '2024-06-25 07:19:23', '2024-06-25 07:19:23'),
(88, 'Dahab Argan', 29, 34, 2, '500', '900', '<p><span style=\"color: rgb(82, 82, 82); font-family: Jost, Arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Eye Appearance: Larger Look, Lens Material: Polymacon, Base Curve: 8.8, Diameter: 14.8, Hydration: 38%, Center Thickness: 0.05 – 027mm, Type: Soft Contact Lenses. Power Up to -0.25 -6.00 SPH</span><br></p>', 'B69MD7Y8', NULL, 'dahab-argan', 'active', '2024-06-25 07:20:19', '2024-06-25 07:20:19'),
(89, 'Dahab Caramel', 29, 34, 2, '500', '900', '<p><span style=\"color: rgb(82, 82, 82); font-family: Jost, Arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Eye Appearance: Larger Look, Lens Material: Polymacon, Base Curve: 8.8, Diameter: 14.8, Hydration: 38%, Center Thickness: 0.05 – 027mm, Type: Soft Contact Lenses. Power Up to -0.25 -6.00 SPH</span><br></p>', 'LDFUIHGK', NULL, 'dahab-caramel', 'active', '2024-06-25 07:26:15', '2024-06-25 07:26:15'),
(90, 'Dahab Cat Eye', 29, 34, 2, '500', '900', '<p><span style=\"color: rgb(82, 82, 82); font-family: Jost, Arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Eye Appearance: Larger Look, Lens Material: Polymacon, Base Curve: 8.8, Diameter: 14.8, Hydration: 38%, Center Thickness: 0.05 – 027mm, Type: Soft Contact Lenses. Power Up to -0.25 -6.00 SPH</span><br></p>', 'EUQKT3ZX', NULL, 'dahab-cat-eye', 'active', '2024-06-25 07:27:25', '2024-06-25 07:27:25'),
(91, 'Dahab Creamy', 29, 34, NULL, '500', '900', '<p><span style=\"color: rgb(82, 82, 82); font-family: Jost, Arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Eye Appearance: Larger Look, Lens Material: Polymacon, Base Curve: 8.8, Diameter: 14.8, Hydration: 38%, Center Thickness: 0.05 – 027mm, Type: Soft Contact Lenses. Power Up to -0.25 -6.00 SPH</span><br></p>', 'JU9H67EL', NULL, 'dahab-creamy', 'active', '2024-06-25 07:28:12', '2024-06-25 07:28:12'),
(92, 'Dahab Diamond', 29, 34, NULL, '500', '900', '<p><span style=\"color: rgb(82, 82, 82); font-family: Jost, Arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Eye Appearance: Larger Look, Lens Material: Polymacon, Base Curve: 8.8, Diameter: 14.8, Hydration: 38%, Center Thickness: 0.05 – 027mm, Type: Soft Contact Lenses. Power Up to -0.25 -6.00 SPH</span><br></p>', '697S158P', NULL, 'dahab-diamond', 'active', '2024-06-25 07:28:50', '2024-06-25 07:28:50'),
(93, 'Dahab Gray Green', 29, 34, 2, '500', '900', '<p><span style=\"color: rgb(82, 82, 82); font-family: Jost, Arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Eye Appearance: Larger Look, Lens Material: Polymacon, Base Curve: 8.8, Diameter: 14.8, Hydration: 38%, Center Thickness: 0.05 – 027mm, Type: Soft Contact Lenses. Power Up to -0.25 -6.00 SPH</span><br></p>', 'T9I3FZSU', NULL, 'dahab-gray-green', 'active', '2024-06-25 07:29:38', '2024-06-25 07:29:38'),
(94, 'Dahab Hawaii', 29, 34, 2, '500', '900', '<p><span style=\"color: rgb(82, 82, 82); font-family: Jost, Arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Eye Appearance: Larger Look, Lens Material: Polymacon, Base Curve: 8.8, Diameter: 14.8, Hydration: 38%, Center Thickness: 0.05 – 027mm, Type: Soft Contact Lenses. Power Up to -0.25 -6.00 SPH</span><br></p>', 'E54W0HVS', NULL, 'dahab-hawaii', 'active', '2024-06-25 07:30:22', '2024-06-25 07:30:22'),
(95, 'Dahab Hind', 29, 34, 2, '500', '900', '<p><span style=\"color: rgb(82, 82, 82); font-family: Jost, Arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Eye Appearance: Larger Look, Lens Material: Polymacon, Base Curve: 8.8, Diameter: 14.8, Hydration: 38%, Center Thickness: 0.05 – 027mm, Type: Soft Contact Lenses. Power Up to -0.25 -6.00 SPH</span><br></p>', 'LXKE8OJ2', NULL, 'dahab-hind', 'active', '2024-06-25 07:31:01', '2024-06-25 07:31:01'),
(96, 'Dahab Ice', 29, 34, 2, '500', '900', '<p><span style=\"color: rgb(82, 82, 82); font-family: Jost, Arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Eye Appearance: Larger Look, Lens Material: Polymacon, Base Curve: 8.8, Diameter: 14.8, Hydration: 38%, Center Thickness: 0.05 – 027mm, Type: Soft Contact Lenses. Power Up to -0.25 -6.00 SPH</span><br></p>', 'GBKXAV1D', NULL, 'dahab-ice', 'active', '2024-06-25 07:31:44', '2024-06-25 07:31:44'),
(97, 'Dahab Luminere Blue', 29, 34, 2, '500', '900', '<p><span style=\"color: rgb(82, 82, 82); font-family: Jost, Arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Eye Appearance: Larger Look, Lens Material: Polymacon, Base Curve: 8.8, Diameter: 14.8, Hydration: 38%, Center Thickness: 0.05 – 027mm, Type: Soft Contact Lenses. Power Up to -0.25 -6.00 SPH</span><br></p>', 'TUKP2FYZ', NULL, 'dahab-luminere-blue', 'active', '2024-06-25 07:32:44', '2024-06-25 07:32:44'),
(98, 'Dahab Luminere Brown', 29, 34, 2, '500', '899', '<p>Eye Appearance: Larger Look, Lens Material: Polymacon, Base Curve: 8.8, Diameter: 14.8, Hydration: 38%, Center Thickness: 0.05 – 027mm, Type: Soft Contact Lenses. Power Up to -0.25 -6.00 SPH<br></p>', 'IW0EOA36', NULL, 'dahab-luminere-brown', 'active', '2024-06-25 07:33:29', '2024-06-25 07:33:29'),
(99, 'Dahab Luminere Gray', 29, 34, 2, '500', '900', '<p>Eye Appearance: Larger Look, Lens Material: Polymacon, Base Curve: 8.8, Diameter: 14.8, Hydration: 38%, Center Thickness: 0.05 – 027mm, Type: Soft Contact Lenses. Power Up to -0.25 -6.00 SPH<br></p>', 'GT0PKSYB', NULL, 'dahab-luminere-gray', 'active', '2024-06-25 07:34:26', '2024-06-25 07:34:26'),
(100, 'Dahab Luminere Green', 29, 34, 2, '500', '899', '<p>Eye Appearance: Larger Look, Lens Material: Polymacon, Base Curve: 8.8, Diameter: 14.8, Hydration: 38%, Center Thickness: 0.05 – 027mm, Type: Soft Contact Lenses. Power Up to -0.25 -6.00 SPH<br></p>', 'PR9DMEHG', NULL, 'dahab-luminere-green', 'active', '2024-06-25 07:35:16', '2024-06-25 07:35:16'),
(101, 'Dahab Luminere Hazel', 29, 34, 2, '500', '900', '<p><span style=\"color: rgb(70, 91, 82); font-family: Lato, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Eye Appearance: Larger Look, Lens Material: Polymacon, Base Curve: 8.8, Diameter: 14.8, Hydration: 38%, Center Thickness: 0.05 – 027mm, Type: Soft Contact Lenses. Power Up to -0.25 -6.00 SPH</span><br></p>', 'STH7COLF', NULL, 'dahab-luminere-hazel', 'active', '2024-06-27 06:27:21', '2024-06-27 06:27:21'),
(102, 'Dahab Maroon', 29, 34, 2, '500', '900', '<p><span style=\"color: rgb(70, 91, 82); font-family: Lato, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Eye Appearance: Larger Look, Lens Material: Polymacon, Base Curve: 8.8, Diameter: 14.8, Hydration: 38%, Center Thickness: 0.05 – 027mm, Type: Soft Contact Lenses. Power Up to -0.25 -6.00 SPH</span><br></p>', 'EH5WJ9N3', NULL, 'dahab-maroon', 'active', '2024-06-27 06:28:47', '2024-06-27 06:28:47'),
(103, 'Dahab Medusa', 29, 34, 2, '500', '900', '<p><span style=\"color: rgb(70, 91, 82); font-family: Lato, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Eye Appearance: Larger Look, Lens Material: Polymacon, Base Curve: 8.8, Diameter: 14.8, Hydration: 38%, Center Thickness: 0.05 – 027mm, Type: Soft Contact Lenses. Power Up to -0.25 -6.00 SPH</span><br></p>', 'Z6DU8EPX', NULL, 'dahab-medusa', 'active', '2024-06-27 06:30:07', '2024-06-27 06:30:07'),
(104, 'Dahab Mentha', 29, 34, 2, '500', '900', '<p><span style=\"color: rgb(70, 91, 82); font-family: Lato, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Eye Appearance: Larger Look, Lens Material: Polymacon, Base Curve: 8.8, Diameter: 14.8, Hydration: 38%, Center Thickness: 0.05 – 027mm, Type: Soft Contact Lenses. Power Up to -0.25 -6.00 SPH</span><br></p>', '7GMTZBK8', NULL, 'dahab-mentha', 'active', '2024-06-27 06:35:22', '2024-06-27 06:35:22'),
(105, 'Dahab Perle', 29, 34, 2, '500', '900', '<p><span style=\"color: rgb(70, 91, 82); font-family: Lato, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Eye Appearance: Larger Look, Lens Material: Polymacon, Base Curve: 8.8, Diameter: 14.8, Hydration: 38%, Center Thickness: 0.05 – 027mm, Type: Soft Contact Lenses. Power Up to -0.25 -6.00 SPH</span><br></p>', '0BURTZ2F', NULL, 'dahab-perle', 'active', '2024-06-27 08:41:18', '2024-06-27 08:41:18'),
(106, 'Dahab Rain', 29, 34, 2, '500', '900', '<p><span style=\"color: rgb(70, 91, 82); font-family: Lato, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Eye Appearance: Larger Look, Lens Material: Polymacon, Base Curve: 8.8, Diameter: 14.8, Hydration: 38%, Center Thickness: 0.05 – 027mm, Type: Soft Contact Lenses. Power Up to -0.25 -6.00 SPH</span><br></p>', 'PHCXAV4Q', NULL, 'dahab-rain', 'active', '2024-06-27 08:43:04', '2024-06-27 08:43:04'),
(107, 'Dahab Sabrin Gray', 29, 34, 2, '500', '900', '<p><span style=\"color: rgb(70, 91, 82); font-family: Lato, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Eye Appearance: Larger Look, Lens Material: Polymacon, Base Curve: 8.8, Diameter: 14.8, Hydration: 38%, Center Thickness: 0.05 – 027mm, Type: Soft Contact Lenses. Power Up to -0.25 -6.00 SPH</span><br></p>', 'ULCJEIT9', NULL, 'dahab-sabrin-gray', 'active', '2024-06-27 08:44:30', '2024-06-27 08:44:30'),
(108, 'Dahab Sabriin Soul', 29, 34, NULL, '500', '900', '<p><span style=\"color: rgb(70, 91, 82); font-family: Lato, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Eye Appearance: Larger Look, Lens Material: Polymacon, Base Curve: 8.8, Diameter: 14.8, Hydration: 38%, Center Thickness: 0.05 – 027mm, Type: Soft Contact Lenses. Power Up to -0.25 -6.00 SPH</span><br></p>', 'KFICWJN1', NULL, 'dahab-sabriin-soul', 'active', '2024-06-27 08:47:30', '2024-06-27 08:47:30'),
(109, 'Dahab Sky', 29, 34, NULL, '500', '900', '<p><span style=\"color: rgb(70, 91, 82); font-family: Lato, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Eye Appearance: Larger Look, Lens Material: Polymacon, Base Curve: 8.8, Diameter: 14.8, Hydration: 38%, Center Thickness: 0.05 – 027mm, Type: Soft Contact Lenses. Power Up to -0.25 -6.00 SPH</span><br></p>', 'RLMK163V', NULL, 'dahab-sky', 'active', '2024-06-27 08:48:31', '2024-06-27 08:48:31'),
(110, 'Dahab Solitaire', 29, 34, 2, '500', '900', '<p><span style=\"color: rgb(70, 91, 82); font-family: Lato, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Eye Appearance: Larger Look, Lens Material: Polymacon, Base Curve: 8.8, Diameter: 14.8, Hydration: 38%, Center Thickness: 0.05 – 027mm, Type: Soft Contact Lenses. Power Up to -0.25 -6.00 SPH</span><br></p>', '1QI9RFPC', NULL, 'dahab-solitaire', 'active', '2024-06-27 08:51:33', '2024-06-27 08:51:33'),
(111, 'Dahab Sun Kiss', 29, 34, 2, '500', '900', '<p><span style=\"color: rgb(70, 91, 82); font-family: Lato, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Eye Appearance: Larger Look, Lens Material: Polymacon, Base Curve: 8.8, Diameter: 14.8, Hydration: 38%, Center Thickness: 0.05 – 027mm, Type: Soft Contact Lenses. Power Up to -0.25 -6.00 SPH</span><br></p>', 'IM9DJYXO', NULL, 'dahab-sun-kiss', 'active', '2024-06-27 08:52:53', '2024-06-27 08:52:53'),
(112, 'Dahab Swarovaski', 29, 34, 2, '500', '900', '<p><span style=\"color: rgb(70, 91, 82); font-family: Lato, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Eye Appearance: Larger Look, Lens Material: Polymacon, Base Curve: 8.8, Diameter: 14.8, Hydration: 38%, Center Thickness: 0.05 – 027mm, Type: Soft Contact Lenses. Power Up to -0.25 -6.00 SPH</span><br></p>', 'WOL2B3QR', NULL, 'dahab-swarovaski', 'active', '2024-06-27 08:55:19', '2024-06-27 08:55:19'),
(113, 'Dahab Tiffany Blue', 29, 34, 2, '500', '900', '<p><span style=\"color: rgb(70, 91, 82); font-family: Lato, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Eye Appearance: Larger Look, Lens Material: Polymacon, Base Curve: 8.8, Diameter: 14.8, Hydration: 38%, Center Thickness: 0.05 – 027mm, Type: Soft Contact Lenses. Power Up to -0.25 -6.00 SPH</span><br></p>', '7MW5PL9V', NULL, 'dahab-tiffany-blue', 'active', '2024-06-27 09:01:24', '2024-06-27 09:01:24'),
(114, 'Dahab Topaz', 29, 34, 2, '500', '900', '<p><span style=\"color: rgb(70, 91, 82); font-family: Lato, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Eye Appearance: Larger Look, Lens Material: Polymacon, Base Curve: 8.8, Diameter: 14.8, Hydration: 38%, Center Thickness: 0.05 – 027mm, Type: Soft Contact Lenses. Power Up to -0.25 -6.00 SPH</span><br></p>', '0D3H2J57', NULL, 'dahab-topaz', 'active', '2024-06-27 09:02:15', '2024-06-27 09:02:15'),
(115, '202 BLUE', 30, 36, 2, '1450', '2200', '<div dir=\"auto\" style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve;\"><div dir=\"auto\" style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\"><span style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Brand : Angel Soft</span><br></div></div><div dir=\"auto\" style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve;\"><span class=\"html-span xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"text-align: inherit; overflow-wrap: break-word;\"><a tabindex=\"-1\" class=\"html-a xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"color: rgb(56, 88, 152); text-decoration: none; text-align: inherit; overflow-wrap: break-word;\"></a></span>Model : P-Cone</div><div dir=\"auto\" style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve;\">Material : Polymacon</div><div dir=\"auto\" style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve;\">Color : Multicolor </div><div dir=\"auto\" style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve;\">Tone : 1~4 Tone</div><div dir=\"auto\" style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve;\">B.C : 8.6~8.8mm</div><div dir=\"auto\" style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve;\">DIA : 14.0~14.5mm</div><div dir=\"auto\" style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve;\">Duration : 1 Year</div><div dir=\"auto\" style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve;\">Made in Korea</div><div dir=\"auto\" style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve;\">ISO, CE, FDA Certified.\r\n<span style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Duration: 1 Year </span>\r\n</div><hr><div dir=\"auto\" style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve;\"><br></div><hr><div dir=\"auto\" style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; white-space-collapse: preserve;\"><br></div>', 'VGORLS52', NULL, '202-blue', 'active', '2024-07-08 07:51:18', '2024-07-08 07:51:18'),
(116, '207 BLUE', 30, 36, 2, '1850', '2198', '<div dir=\"auto\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; white-space-collapse: preserve; color: rgb(5, 5, 5);\"><div dir=\"auto\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif;\"><span style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s;\">Brand : Angel Soft</span><br></div></div><div dir=\"auto\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; white-space-collapse: preserve; color: rgb(5, 5, 5);\"><span class=\"html-span xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"transition: all 0.3s ease 0s; text-align: inherit; overflow-wrap: break-word;\"><a tabindex=\"-1\" class=\"html-a xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"color: rgb(56, 88, 152); text-decoration: none; transition: all 0.3s ease 0s; text-align: inherit; overflow-wrap: break-word;\"></a></span>Model : P-Cone</div><div dir=\"auto\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; white-space-collapse: preserve; color: rgb(5, 5, 5);\">Material : Polymacon</div><div dir=\"auto\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; white-space-collapse: preserve; color: rgb(5, 5, 5);\">Color : Multicolor </div><div dir=\"auto\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; white-space-collapse: preserve; color: rgb(5, 5, 5);\">Tone : 1~4 Tone</div><div dir=\"auto\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; white-space-collapse: preserve; color: rgb(5, 5, 5);\">B.C : 8.6~8.8mm</div><div dir=\"auto\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; white-space-collapse: preserve; color: rgb(5, 5, 5);\">DIA : 14.0~14.5mm</div><div dir=\"auto\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; white-space-collapse: preserve; color: rgb(5, 5, 5);\">Duration : 1 Year</div><div dir=\"auto\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; white-space-collapse: preserve; color: rgb(5, 5, 5);\">Made in Korea</div><div dir=\"auto\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; white-space-collapse: preserve; color: rgb(5, 5, 5);\">ISO, CE, FDA Certified.\r\n<span style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s;\">Duration: 1 Year </span></div>', 'FI3VO9XY', NULL, '207-blue', 'active', '2024-07-08 07:53:43', '2024-07-08 07:53:43'),
(117, '207 GREEN', 30, 36, 2, '1850', '2199', '<div dir=\"auto\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; white-space-collapse: preserve; color: rgb(5, 5, 5);\"><div dir=\"auto\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif;\"><span style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s;\">Brand : Angel Soft</span><br></div></div><div dir=\"auto\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; white-space-collapse: preserve; color: rgb(5, 5, 5);\"><span class=\"html-span xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"transition: all 0.3s ease 0s; text-align: inherit; overflow-wrap: break-word;\"><a tabindex=\"-1\" class=\"html-a xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"color: rgb(56, 88, 152); text-decoration: none; transition: all 0.3s ease 0s; text-align: inherit; overflow-wrap: break-word;\"></a></span>Model : P-Cone</div><div dir=\"auto\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; white-space-collapse: preserve; color: rgb(5, 5, 5);\">Material : Polymacon</div><div dir=\"auto\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; white-space-collapse: preserve; color: rgb(5, 5, 5);\">Color : Multicolor </div><div dir=\"auto\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; white-space-collapse: preserve; color: rgb(5, 5, 5);\">Tone : 1~4 Tone</div><div dir=\"auto\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; white-space-collapse: preserve; color: rgb(5, 5, 5);\">B.C : 8.6~8.8mm</div><div dir=\"auto\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; white-space-collapse: preserve; color: rgb(5, 5, 5);\">DIA : 14.0~14.5mm</div><div dir=\"auto\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; white-space-collapse: preserve; color: rgb(5, 5, 5);\">Duration : 1 Year</div><div dir=\"auto\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; white-space-collapse: preserve; color: rgb(5, 5, 5);\">Made in Korea</div><div dir=\"auto\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; white-space-collapse: preserve; color: rgb(5, 5, 5);\">ISO, CE, FDA Certified.\r\n<span style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; transition: all 0.3s ease 0s;\">Duration: 1 Year </span></div>', 'C4NM2AFP', NULL, '207-green', 'active', '2024-07-08 07:54:43', '2024-07-08 07:54:43'),
(118, 'TOMFORD 22001', 20, 27, 2, '1000', '2550', '<p><strong>Size: 50-20-145<br>Key Features:<br></strong></p><ul><li><p><strong>High-Quality Acetate Frames</strong>: Made from the finest cellulose acetate, our frames offer unparalleled durability and a sleek, polished look. The hypoallergenic material ensures comfort for all skin types.</p></li><li><p><strong>Stylish &amp; Versatile Designs</strong>: Choose from a wide array of colors and patterns to suit your personal style. Each pair is meticulously designed to add a touch of elegance to any outfit, whether casual or formal.</p></li><li><p><strong>Exceptional Comfort</strong>: Lightweight and flexible, acetate frames provide a snug fit without causing discomfort. The adjustable nose pads and temples allow for a customized fit, ensuring you can wear them all day long.</p></li><li><p><strong>Sustainable Choice</strong>: Acetate is an eco-friendly material derived from natural sources like cotton and wood pulp. By choosing our glasses, you\'re making a sustainable fashion choice.</p><p><strong>Ideal For:</strong></p><ul><li>Daily wear</li><li>Office and professional use</li><li>Fashion-forward individuals</li><li>Prescription lens users</li></ul></li></ul>', 'KY93IN42', NULL, 'tomford-22001', 'active', '2024-07-09 07:14:36', '2024-07-09 07:14:36'),
(120, 'PRADA 90074', 18, 27, 2, '1000', '2550', '<li><strong>High-Quality Metallic Frame:</strong> Crafted from durable and lightweight metal, ensuring long-lasting wear and a comfortable fit.</li><li><strong>Elegant Design:</strong> A timeless and versatile design that complements any outfit, from business suits to casual attire.</li><li><strong>Adjustable Nose Pads:</strong> Customizable nose pads for a secure and personalized fit, providing all-day comfort.</li>', 'RK54DJG1', NULL, 'prada-90074', 'active', '2024-07-12 18:04:54', '2024-07-12 18:04:54'),
(121, 'Windsor Original 10007', 24, 27, NULL, '1250', '2900', '<li><strong>High-Quality Metallic Frame:</strong> Crafted from durable and lightweight metal, ensuring long-lasting wear and a comfortable fit.</li><li><strong>Elegant Design:</strong> A timeless and versatile design that complements any outfit, from business suits to casual attire.</li><li><strong>Adjustable Nose Pads:</strong> Customizable nose pads for a secure and personalized fit, providing all-day comfort.</li>', 'HJ54TKS2', NULL, 'windsor-original-10007', 'active', '2024-07-12 18:10:02', '2024-07-12 18:10:02'),
(122, 'Windsor Hexagon Rimless', 24, 27, 2, '1250', '2900', '<p><strong>Features:</strong></p><ul><li><strong>1. Ultra-Lightweight Design:</strong> Crafted with high-quality materials, our rimless glasses are incredibly light, providing all-day comfort.</li><li><strong>2. Elegant Aesthetics:</strong> The frameless design offers a clean, sophisticated look that complements any outfit, making them perfect for both casual and formal occasions.</li><li><strong>3. Durable Construction:</strong> Despite their delicate appearance, these glasses are built to last with sturdy hinges and shatter-resistant lenses.</li><li><strong>4. Optimal Vision Clarity:</strong> Experience superior visual clarity with our precision-engineered lenses that reduce glare and enhance focus.</li><li><strong>5. Adjustable Nose Pads:</strong> Customizable nose pads ensure a snug and comfortable fit for all face shapes and sizes.</li></ul>', 'DAWIY4SE', NULL, 'windsor-hexagon-rimless', 'active', '2024-07-14 07:01:22', '2024-07-14 07:01:22'),
(123, 'Densen Mystique', 24, 26, 2, '280', '750', '<p>Classic &amp; Lightweight</p><p>Material: Thermoplastic(Flexible)</p><p>Size: 50-19-145(Suitable size)</p><p>Perfect for regular use</p><p><br></p>', '9TX2A3PG', NULL, 'densen-mystique', 'active', '2024-08-16 18:05:25', '2024-08-16 18:05:25'),
(124, 'Dior Lumina', 14, 26, 2, '700', '2050', '<p>Material: Acetate( Scratch Removable)</p><p>Size: 53-16-142</p><p>Origin: Italy ( Premium copy)</p><p>Perfect for an official outfit.</p><p><br></p>', '146NMOQC', NULL, 'dior-lumina', 'active', '2024-08-16 18:24:17', '2024-08-16 18:24:17'),
(125, 'Dior Majesty', 14, 26, 2, '650', '1950', '<p>Brand: Dior(Mastercopy)<br>Size: 55-18-148(large)<br>Material: Premium Acetate(burnished)<br>\"Perfect for an official appearance.</p>', '538OYICE', NULL, 'dior-majesty', 'active', '2024-08-21 08:02:37', '2024-08-21 08:02:37'),
(126, 'Chanel Evoke', 15, 26, 2, '450', '1090', '<p>Material: Fiber(flexible) &amp; metal temple&nbsp;<br>Ensuring the quality of color<br>Size: 51-18-141<br>Perfect for rough and tough use with high power&nbsp;</p>', 'QG8DYLME', NULL, 'chanel-evoke', 'active', '2024-08-22 16:00:35', '2024-08-22 16:00:35'),
(127, 'Vanguard Sunglasses', 24, 31, 2, '450', '1250', '<p>Crafted for durability and style, these men\'s metal sunglasses offer a sleek, modern design that complements any look. With high-quality lenses providing optimal UV protection, these sunglasses are perfect for both everyday wear and outdoor adventures. Elevate your style with the perfect blend of form and function.<br></p>', 'HXMYN0JE', NULL, 'vanguard-sunglasses', 'active', '2024-08-22 16:10:05', '2024-08-22 16:10:05'),
(128, 'Fierce Eyewear', 27, 26, 2, '450', '1390', '<p><span style=\"color: rgb(70, 91, 82); font-family: Lato, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Material: Thermoplastic (flexible) &amp; metal temple&nbsp;</span><br style=\"color: rgb(70, 91, 82); font-family: Lato, sans-serif;\"><span style=\"color: rgb(70, 91, 82); font-family: Lato, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Ensuring the quality of color</span><br style=\"color: rgb(70, 91, 82); font-family: Lato, sans-serif;\"><span style=\"color: rgb(70, 91, 82); font-family: Lato, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Size: 51-15-139</span><br style=\"color: rgb(70, 91, 82); font-family: Lato, sans-serif;\"><span style=\"color: rgb(70, 91, 82); font-family: Lato, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Perfect for rough and tough use with high-power</span><br></p>', 'WV9UB3T7', NULL, 'fierce-eyewear', 'active', '2024-09-08 07:50:08', '2024-09-08 07:50:08');
INSERT INTO `products` (`id`, `product_name`, `brand_id`, `category_id`, `supplier_id`, `raw_price`, `regular_price`, `description`, `sku`, `stock`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(129, 'Femme Flair Frames', 5, 26, 2, '600', '1850', '<p>Material: Stainless Steel, electroplating color guaranteed<br>Quality: Top Notch<br>Ideal For: Large faces or for those who like to use oversized&nbsp;</p><p>Size: 55-16-138<br><br></p>', 'BKO2ES8M', NULL, 'femme-flair-frames', 'active', '2024-09-08 08:01:40', '2024-09-08 08:01:40'),
(132, 'TOMFORD A2281 Mastercopy', 20, 27, 2, '1500', '4500', '<ul style=\"margin-bottom: 0.8125rem; font-size: 0.875rem; padding-left: 0.875rem; font-family: &quot;Gotham A&quot;, &quot;Gotham B&quot;, Helvetica, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\"><li style=\"margin-bottom: 1rem; font-size: 0.8125rem; line-height: 1.25;\">3 dots logo on the spring hinge.</li><li style=\"margin-bottom: 1rem; font-size: 0.8125rem; line-height: 1.25;\"><span style=\"font-size: 0.8125rem;\">Available in 4 different colors.<br></span><br>Material: Acetate-Scratch Removeable</li><li style=\"margin-bottom: 1rem; font-size: 0.8125rem; line-height: 1.25;\">Spring hinge.</li><li style=\"margin-bottom: 1rem; font-size: 0.8125rem; line-height: 1.25;\">Size: 48-24-145</li></ul>', '89LKUOQ5', NULL, 'tomford-a2281-mastercopy', 'active', '2024-09-15 03:52:44', '2024-09-15 03:52:44'),
(133, 'TOMFORD A2285 MASTERCOPY', 20, 27, NULL, '1500', '4500', '<ul style=\"margin-bottom: 0.8125rem; font-size: 0.875rem; padding-left: 0.875rem; font-family: &quot;Gotham A&quot;, &quot;Gotham B&quot;, Helvetica, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\"><li style=\"margin-bottom: 1rem; font-size: 0.8125rem; line-height: 1.25;\">Material: Acetate-Scratch Removeable&nbsp;</li><li style=\"margin-bottom: 1rem; font-size: 0.8125rem; line-height: 1.25;\">Available in 4 different colors.<br><br>Grade: Mastercopy(1.1)</li><li style=\"margin-bottom: 1rem; font-size: 0.8125rem; line-height: 1.25;\">Spring hinge.</li><li style=\"margin-bottom: 1rem; font-size: 0.8125rem; line-height: 1.25;\">Size: 54-19-145</li></ul>', '4LFMWNCZ', NULL, 'tomford-a2285-mastercopy', 'active', '2024-09-15 04:06:27', '2024-09-15 04:06:27'),
(134, 'Hexaflex Eyewear', 28, 25, 2, '400', '1100', '<p>It is an ultra-flexible and bendable material that is comfortable to wear 24/7.<br>Size: 49-18-146</p>', 'A53QZX9E', NULL, 'hexaflex-eyewear', 'active', '2024-09-28 06:22:45', '2024-09-28 06:22:45'),
(135, 'Striped Oversized', 14, 26, 2, '500', '1590', '<p>Size: Oversized<br>Material: Acetate<br>Guaranteed Color<br>Spring Hinge</p>', 'ODRW2JXH', NULL, 'striped-oversized', 'active', '2024-10-16 16:06:49', '2024-10-17 04:44:04'),
(136, 'Benitez Oversized', 27, 26, 2, '390', '1350', '<p>Comfortable and Premium vibes&nbsp;<br>Material: Acetate and fiber<br>Size: 56-16-145</p>', 'QUPR079N', NULL, 'benitez-oversized', 'active', '2024-11-12 14:04:08', '2024-11-12 14:04:08'),
(137, 'Glance Eyewear', 27, 32, 2, '420', '1350', '<p>A perfect eyewear for an official and stylish outfit<br>Body made with acetate material and temples build with fiber&nbsp;<br>Size: 55-17-145<br>Perfect for medium to large faces</p>', 'SJLBZ3NA', NULL, 'glance-eyewear', 'active', '2024-11-13 19:00:34', '2024-11-13 19:00:34'),
(138, 'Dior Enigma', 14, 26, 2, '420', '1300', '<p>A perfect pieces for regular uses<br>Body made with semi acetate<br>Fine design on the temple&nbsp;<br>Spring hinge facilities&nbsp;</p>', '08BTHU41', NULL, 'dior-enigma', 'active', '2024-12-04 09:57:05', '2024-12-04 09:57:05'),
(139, 'Porsche Prism', 24, 25, 2, '400', '1350', '<p>Lightweight and Durable<br>Body built with fiber and metal mixed<br>Pure stainless steel rim.<br>Ultimate flexibility at the temple.<br><br></p>', 'RY7V04MP', NULL, 'porsche-prism', 'active', '2024-12-06 13:04:52', '2024-12-06 13:04:52'),
(140, 'Premium Silver Serenity', 24, 26, 2, '600', '2100', '<p>Premium Metal eyewear.<br>A thin rim indicates super lightweight.<br>Adjustable nose pad for face-sitting.<br>Rough &amp; tough usable.&nbsp;<br><br></p>', 'AO5DH462', NULL, 'premium-silver-serenity', 'active', '2024-12-06 13:16:20', '2024-12-06 13:16:20'),
(144, 'Our test product', 12, 31, 2, '1500', '1700', '<p>sdfsfgsfs</p>', '9YG62X7V', NULL, 'our-test-product', 'active', '2025-01-07 05:58:41', '2025-01-07 05:58:41');

-- --------------------------------------------------------

--
-- Table structure for table `products_colors`
--

CREATE TABLE `products_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_colors`
--

INSERT INTO `products_colors` (`id`, `product_id`, `color_id`, `created_at`, `updated_at`) VALUES
(24, 27, 9, '2024-04-08 08:59:42', '2024-04-08 08:59:42'),
(25, 27, 10, '2024-04-08 08:59:42', '2024-04-08 08:59:42'),
(26, 31, 5, '2024-04-17 04:27:08', '2024-04-17 04:27:08'),
(27, 31, 6, '2024-04-17 04:27:08', '2024-04-17 04:27:08'),
(28, 33, 5, '2024-04-17 04:31:13', '2024-04-17 04:31:13'),
(29, 33, 6, '2024-04-17 04:31:13', '2024-04-17 04:31:13'),
(30, 33, 7, '2024-04-17 04:31:13', '2024-04-17 04:31:13'),
(31, 34, 5, '2024-04-17 04:33:38', '2024-04-17 04:33:38'),
(32, 34, 6, '2024-04-17 04:33:38', '2024-04-17 04:33:38'),
(33, 34, 7, '2024-04-17 04:33:38', '2024-04-17 04:33:38'),
(34, 34, 8, '2024-04-17 04:33:38', '2024-04-17 04:33:38'),
(35, 35, 5, '2024-04-17 04:37:31', '2024-04-17 04:37:31'),
(36, 35, 6, '2024-04-17 04:37:31', '2024-04-17 04:37:31'),
(37, 35, 7, '2024-04-17 04:37:31', '2024-04-17 04:37:31'),
(38, 35, 8, '2024-04-17 04:37:31', '2024-04-17 04:37:31'),
(46, 38, 5, '2024-04-18 02:49:15', '2024-04-18 02:49:15'),
(47, 38, 8, '2024-04-18 02:49:15', '2024-04-18 02:49:15'),
(50, 40, 5, '2024-05-02 09:08:23', '2024-05-02 09:08:23'),
(51, 45, 8, '2024-05-02 09:42:16', '2024-05-02 09:42:16'),
(56, 50, 10, '2024-05-30 10:41:56', '2024-05-30 10:41:56'),
(57, 50, 16, '2024-05-30 10:41:56', '2024-05-30 10:41:56'),
(60, 51, 10, '2024-05-31 04:02:11', '2024-05-31 04:02:11'),
(61, 51, 16, '2024-05-31 04:02:11', '2024-05-31 04:02:11'),
(62, 51, 18, '2024-05-31 04:02:11', '2024-05-31 04:02:11'),
(63, 51, 19, '2024-05-31 04:02:11', '2024-05-31 04:02:11'),
(64, 51, 20, '2024-05-31 04:02:11', '2024-05-31 04:02:11'),
(65, 51, 21, '2024-05-31 04:02:11', '2024-05-31 04:02:11'),
(66, 51, 22, '2024-05-31 04:02:11', '2024-05-31 04:02:11'),
(67, 51, 25, '2024-05-31 04:02:11', '2024-05-31 04:02:11'),
(68, 52, 10, '2024-05-31 04:47:23', '2024-05-31 04:47:23'),
(69, 52, 17, '2024-05-31 04:47:23', '2024-05-31 04:47:23'),
(70, 52, 20, '2024-05-31 04:47:23', '2024-05-31 04:47:23'),
(71, 52, 25, '2024-05-31 04:47:23', '2024-05-31 04:47:23'),
(72, 52, 26, '2024-05-31 04:47:23', '2024-05-31 04:47:23'),
(73, 53, 10, '2024-05-31 04:54:32', '2024-05-31 04:54:32'),
(74, 53, 17, '2024-05-31 04:54:32', '2024-05-31 04:54:32'),
(75, 53, 20, '2024-05-31 04:54:32', '2024-05-31 04:54:32'),
(76, 53, 25, '2024-05-31 04:54:32', '2024-05-31 04:54:32'),
(77, 53, 26, '2024-05-31 04:54:32', '2024-05-31 04:54:32'),
(78, 54, 10, '2024-05-31 07:51:45', '2024-05-31 07:51:45'),
(79, 54, 16, '2024-05-31 07:51:45', '2024-05-31 07:51:45'),
(80, 54, 17, '2024-05-31 07:51:45', '2024-05-31 07:51:45'),
(81, 54, 20, '2024-05-31 07:51:45', '2024-05-31 07:51:45'),
(82, 54, 23, '2024-05-31 07:51:45', '2024-05-31 07:51:45'),
(83, 54, 27, '2024-05-31 07:51:45', '2024-05-31 07:51:45'),
(84, 55, 10, '2024-05-31 08:44:21', '2024-05-31 08:44:21'),
(85, 55, 18, '2024-05-31 08:44:21', '2024-05-31 08:44:21'),
(86, 55, 21, '2024-05-31 08:44:21', '2024-05-31 08:44:21'),
(87, 55, 23, '2024-05-31 08:44:21', '2024-05-31 08:44:21'),
(88, 55, 26, '2024-05-31 08:44:21', '2024-05-31 08:44:21'),
(89, 56, 10, '2024-05-31 18:10:11', '2024-05-31 18:10:11'),
(90, 56, 11, '2024-05-31 18:10:11', '2024-05-31 18:10:11'),
(91, 56, 16, '2024-05-31 18:10:11', '2024-05-31 18:10:11'),
(92, 56, 23, '2024-05-31 18:10:11', '2024-05-31 18:10:11'),
(93, 56, 26, '2024-05-31 18:10:11', '2024-05-31 18:10:11'),
(94, 57, 10, '2024-05-31 18:14:52', '2024-05-31 18:14:52'),
(95, 57, 16, '2024-05-31 18:14:52', '2024-05-31 18:14:52'),
(96, 57, 21, '2024-05-31 18:14:52', '2024-05-31 18:14:52'),
(97, 57, 23, '2024-05-31 18:14:52', '2024-05-31 18:14:52'),
(98, 57, 24, '2024-05-31 18:14:52', '2024-05-31 18:14:52'),
(99, 57, 26, '2024-05-31 18:14:52', '2024-05-31 18:14:52'),
(100, 58, 10, '2024-05-31 18:21:13', '2024-05-31 18:21:13'),
(101, 58, 16, '2024-05-31 18:21:13', '2024-05-31 18:21:13'),
(102, 58, 21, '2024-05-31 18:21:13', '2024-05-31 18:21:13'),
(103, 58, 23, '2024-05-31 18:21:13', '2024-05-31 18:21:13'),
(104, 58, 24, '2024-05-31 18:21:13', '2024-05-31 18:21:13'),
(105, 58, 26, '2024-05-31 18:21:13', '2024-05-31 18:21:13'),
(106, 59, 10, '2024-05-31 18:59:08', '2024-05-31 18:59:08'),
(107, 59, 23, '2024-05-31 18:59:08', '2024-05-31 18:59:08'),
(108, 60, 10, '2024-05-31 19:04:48', '2024-05-31 19:04:48'),
(109, 60, 26, '2024-05-31 19:04:48', '2024-05-31 19:04:48'),
(110, 60, 28, '2024-05-31 19:04:48', '2024-05-31 19:04:48'),
(111, 61, 10, '2024-05-31 19:07:17', '2024-05-31 19:07:17'),
(112, 61, 28, '2024-05-31 19:07:17', '2024-05-31 19:07:17'),
(113, 62, 10, '2024-05-31 19:11:44', '2024-05-31 19:11:44'),
(114, 62, 26, '2024-05-31 19:11:44', '2024-05-31 19:11:44'),
(115, 62, 28, '2024-05-31 19:11:44', '2024-05-31 19:11:44'),
(116, 63, 10, '2024-05-31 19:16:56', '2024-05-31 19:16:56'),
(117, 63, 21, '2024-05-31 19:16:56', '2024-05-31 19:16:56'),
(118, 63, 28, '2024-05-31 19:16:56', '2024-05-31 19:16:56'),
(119, 64, 10, '2024-05-31 19:30:31', '2024-05-31 19:30:31'),
(120, 64, 16, '2024-05-31 19:30:31', '2024-05-31 19:30:31'),
(121, 64, 17, '2024-05-31 19:30:31', '2024-05-31 19:30:31'),
(122, 64, 18, '2024-05-31 19:30:31', '2024-05-31 19:30:31'),
(123, 64, 20, '2024-05-31 19:30:31', '2024-05-31 19:30:31'),
(124, 64, 23, '2024-05-31 19:30:31', '2024-05-31 19:30:31'),
(125, 64, 26, '2024-05-31 19:30:31', '2024-05-31 19:30:31'),
(126, 65, 10, '2024-06-01 07:13:01', '2024-06-01 07:13:01'),
(127, 65, 28, '2024-06-01 07:13:01', '2024-06-01 07:13:01'),
(128, 65, 29, '2024-06-01 07:13:01', '2024-06-01 07:13:01'),
(129, 66, 10, '2024-06-01 07:28:05', '2024-06-01 07:28:05'),
(130, 66, 18, '2024-06-01 07:28:05', '2024-06-01 07:28:05'),
(131, 66, 24, '2024-06-01 07:28:05', '2024-06-01 07:28:05'),
(132, 66, 25, '2024-06-01 07:28:05', '2024-06-01 07:28:05'),
(133, 66, 28, '2024-06-01 07:28:05', '2024-06-01 07:28:05'),
(134, 67, 10, '2024-06-01 07:45:04', '2024-06-01 07:45:04'),
(135, 67, 11, '2024-06-01 07:45:04', '2024-06-01 07:45:04'),
(136, 67, 20, '2024-06-01 07:45:04', '2024-06-01 07:45:04'),
(137, 67, 21, '2024-06-01 07:45:04', '2024-06-01 07:45:04'),
(138, 67, 23, '2024-06-01 07:45:04', '2024-06-01 07:45:04'),
(139, 67, 24, '2024-06-01 07:45:04', '2024-06-01 07:45:04'),
(140, 67, 26, '2024-06-01 07:45:04', '2024-06-01 07:45:04'),
(141, 68, 10, '2024-06-01 07:49:58', '2024-06-01 07:49:58'),
(142, 68, 18, '2024-06-01 07:49:58', '2024-06-01 07:49:58'),
(143, 68, 21, '2024-06-01 07:49:58', '2024-06-01 07:49:58'),
(144, 68, 26, '2024-06-01 07:49:58', '2024-06-01 07:49:58'),
(145, 69, 10, '2024-06-01 18:27:00', '2024-06-01 18:27:00'),
(146, 69, 20, '2024-06-01 18:27:00', '2024-06-01 18:27:00'),
(147, 69, 28, '2024-06-01 18:27:00', '2024-06-01 18:27:00'),
(148, 70, 10, '2024-06-01 18:32:39', '2024-06-01 18:32:39'),
(149, 70, 27, '2024-06-01 18:32:39', '2024-06-01 18:32:39'),
(150, 70, 28, '2024-06-01 18:32:39', '2024-06-01 18:32:39'),
(151, 71, 10, '2024-06-01 18:37:27', '2024-06-01 18:37:27'),
(152, 71, 28, '2024-06-01 18:37:27', '2024-06-01 18:37:27'),
(153, 72, 10, '2024-06-01 18:39:43', '2024-06-01 18:39:43'),
(154, 72, 20, '2024-06-01 18:39:43', '2024-06-01 18:39:43'),
(155, 73, 10, '2024-06-01 18:47:34', '2024-06-01 18:47:34'),
(156, 73, 28, '2024-06-01 18:47:34', '2024-06-01 18:47:34'),
(157, 79, 10, '2024-06-03 11:26:04', '2024-06-03 11:26:04'),
(158, 79, 16, '2024-06-03 11:26:04', '2024-06-03 11:26:04'),
(159, 79, 20, '2024-06-03 11:26:04', '2024-06-03 11:26:04'),
(160, 79, 23, '2024-06-03 11:26:04', '2024-06-03 11:26:04'),
(161, 79, 28, '2024-06-03 11:26:04', '2024-06-03 11:26:04'),
(162, 79, 29, '2024-06-03 11:26:04', '2024-06-03 11:26:04'),
(163, 80, 10, '2024-06-03 17:52:12', '2024-06-03 17:52:12'),
(164, 80, 11, '2024-06-03 17:52:12', '2024-06-03 17:52:12'),
(165, 80, 21, '2024-06-03 17:52:12', '2024-06-03 17:52:12'),
(166, 80, 26, '2024-06-03 17:52:12', '2024-06-03 17:52:12'),
(172, 81, 10, '2024-06-04 11:44:05', '2024-06-04 11:44:05'),
(173, 81, 20, '2024-06-04 11:44:05', '2024-06-04 11:44:05'),
(174, 81, 21, '2024-06-04 11:44:05', '2024-06-04 11:44:05'),
(175, 81, 24, '2024-06-04 11:44:05', '2024-06-04 11:44:05'),
(176, 81, 28, '2024-06-04 11:44:05', '2024-06-04 11:44:05'),
(177, 82, 10, '2024-06-04 12:25:19', '2024-06-04 12:25:19'),
(178, 82, 21, '2024-06-04 12:25:19', '2024-06-04 12:25:19'),
(179, 82, 24, '2024-06-04 12:25:19', '2024-06-04 12:25:19'),
(180, 82, 26, '2024-06-04 12:25:19', '2024-06-04 12:25:19'),
(181, 82, 28, '2024-06-04 12:25:19', '2024-06-04 12:25:19'),
(182, 83, 10, '2024-06-04 19:40:14', '2024-06-04 19:40:14'),
(183, 83, 20, '2024-06-04 19:40:14', '2024-06-04 19:40:14'),
(184, 84, 26, '2024-06-05 03:19:19', '2024-06-05 03:19:19'),
(185, 84, 31, '2024-06-05 03:19:19', '2024-06-05 03:19:19'),
(186, 85, 26, '2024-06-05 03:21:06', '2024-06-05 03:21:06'),
(187, 85, 31, '2024-06-05 03:21:06', '2024-06-05 03:21:06'),
(189, 114, 24, '2024-07-06 10:41:28', '2024-07-06 10:41:28'),
(190, 113, 24, '2024-07-06 10:41:58', '2024-07-06 10:41:58'),
(191, 112, 24, '2024-07-06 10:42:32', '2024-07-06 10:42:32'),
(192, 111, 24, '2024-07-06 10:43:17', '2024-07-06 10:43:17'),
(193, 110, 24, '2024-07-06 10:43:48', '2024-07-06 10:43:48'),
(194, 109, 24, '2024-07-06 10:44:45', '2024-07-06 10:44:45'),
(195, 108, 24, '2024-07-06 10:46:18', '2024-07-06 10:46:18'),
(196, 107, 24, '2024-07-06 10:47:09', '2024-07-06 10:47:09'),
(197, 106, 24, '2024-07-06 10:47:52', '2024-07-06 10:47:52'),
(198, 105, 24, '2024-07-06 10:48:28', '2024-07-06 10:48:28'),
(199, 104, 24, '2024-07-06 10:49:15', '2024-07-06 10:49:15'),
(200, 103, 24, '2024-07-06 10:50:39', '2024-07-06 10:50:39'),
(201, 102, 24, '2024-07-06 10:51:21', '2024-07-06 10:51:21'),
(202, 101, 24, '2024-07-07 09:36:00', '2024-07-07 09:36:00'),
(203, 100, 24, '2024-07-07 09:36:40', '2024-07-07 09:36:40'),
(204, 99, 24, '2024-07-07 09:37:22', '2024-07-07 09:37:22'),
(205, 98, 24, '2024-07-07 09:37:53', '2024-07-07 09:37:53'),
(207, 97, 24, '2024-07-07 09:39:06', '2024-07-07 09:39:06'),
(208, 96, 24, '2024-07-07 09:39:49', '2024-07-07 09:39:49'),
(209, 95, 24, '2024-07-07 09:40:22', '2024-07-07 09:40:22'),
(210, 94, 24, '2024-07-07 09:40:55', '2024-07-07 09:40:55'),
(211, 86, 24, '2024-07-07 09:42:12', '2024-07-07 09:42:12'),
(212, 87, 24, '2024-07-07 09:42:44', '2024-07-07 09:42:44'),
(213, 88, 24, '2024-07-07 09:43:15', '2024-07-07 09:43:15'),
(214, 89, 24, '2024-07-07 09:43:47', '2024-07-07 09:43:47'),
(215, 90, 24, '2024-07-07 09:44:18', '2024-07-07 09:44:18'),
(216, 91, 24, '2024-07-07 09:44:48', '2024-07-07 09:44:48'),
(217, 92, 24, '2024-07-07 09:45:17', '2024-07-07 09:45:17'),
(218, 93, 24, '2024-07-07 09:45:47', '2024-07-07 09:45:47'),
(219, 115, 24, '2024-07-08 07:51:18', '2024-07-08 07:51:18'),
(220, 116, 24, '2024-07-08 07:53:43', '2024-07-08 07:53:43'),
(221, 117, 24, '2024-07-08 07:54:43', '2024-07-08 07:54:43'),
(222, 118, 28, '2024-07-09 07:14:36', '2024-07-09 07:14:36'),
(224, 120, 10, '2024-07-12 18:04:54', '2024-07-12 18:04:54'),
(225, 121, 16, '2024-07-12 18:10:02', '2024-07-12 18:10:02'),
(226, 122, 28, '2024-07-14 07:01:22', '2024-07-14 07:01:22'),
(234, 123, 10, '2024-08-16 18:05:25', '2024-08-16 18:05:25'),
(235, 123, 16, '2024-08-16 18:05:25', '2024-08-16 18:05:25'),
(236, 123, 21, '2024-08-16 18:05:25', '2024-08-16 18:05:25'),
(237, 123, 22, '2024-08-16 18:05:25', '2024-08-16 18:05:25'),
(238, 123, 24, '2024-08-16 18:05:25', '2024-08-16 18:05:25'),
(239, 124, 10, '2024-08-16 18:24:17', '2024-08-16 18:24:17'),
(240, 124, 16, '2024-08-16 18:24:17', '2024-08-16 18:24:17'),
(241, 124, 17, '2024-08-16 18:24:17', '2024-08-16 18:24:17'),
(242, 124, 20, '2024-08-16 18:24:17', '2024-08-16 18:24:17'),
(243, 124, 28, '2024-08-16 18:24:17', '2024-08-16 18:24:17'),
(244, 124, 30, '2024-08-16 18:24:17', '2024-08-16 18:24:17'),
(245, 125, 20, '2024-08-21 08:02:37', '2024-08-21 08:02:37'),
(246, 125, 27, '2024-08-21 08:02:37', '2024-08-21 08:02:37'),
(247, 125, 28, '2024-08-21 08:02:37', '2024-08-21 08:02:37'),
(248, 125, 30, '2024-08-21 08:02:37', '2024-08-21 08:02:37'),
(249, 126, 16, '2024-08-22 16:00:35', '2024-08-22 16:00:35'),
(250, 126, 17, '2024-08-22 16:00:35', '2024-08-22 16:00:35'),
(251, 126, 20, '2024-08-22 16:00:35', '2024-08-22 16:00:35'),
(252, 126, 26, '2024-08-22 16:00:35', '2024-08-22 16:00:35'),
(253, 127, 21, '2024-08-22 16:10:05', '2024-08-22 16:10:05'),
(254, 50, 18, '2024-08-23 15:38:14', '2024-08-23 15:38:14'),
(255, 50, 19, '2024-08-23 15:38:14', '2024-08-23 15:38:14'),
(256, 50, 20, '2024-08-23 15:38:14', '2024-08-23 15:38:14'),
(257, 50, 21, '2024-08-23 15:38:14', '2024-08-23 15:38:14'),
(258, 50, 22, '2024-08-23 15:38:14', '2024-08-23 15:38:14'),
(259, 50, 26, '2024-08-23 15:38:14', '2024-08-23 15:38:14'),
(260, 56, 20, '2024-08-23 17:04:04', '2024-08-23 17:04:04'),
(261, 57, 11, '2024-08-23 17:21:15', '2024-08-23 17:21:15'),
(262, 57, 20, '2024-08-23 17:21:15', '2024-08-23 17:21:15'),
(263, 65, 31, '2024-08-27 06:31:48', '2024-08-27 06:31:48'),
(264, 66, 20, '2024-08-27 06:38:37', '2024-08-27 06:38:37'),
(265, 67, 16, '2024-08-28 06:47:22', '2024-08-28 06:47:22'),
(266, 81, 11, '2024-08-29 09:22:14', '2024-08-29 09:22:14'),
(267, 81, 22, '2024-08-29 09:22:14', '2024-08-29 09:22:14'),
(268, 128, 10, '2024-09-08 07:50:08', '2024-09-08 07:50:08'),
(269, 128, 11, '2024-09-08 07:50:08', '2024-09-08 07:50:08'),
(270, 128, 21, '2024-09-08 07:50:08', '2024-09-08 07:50:08'),
(271, 128, 22, '2024-09-08 07:50:08', '2024-09-08 07:50:08'),
(274, 129, 16, '2024-09-08 08:01:40', '2024-09-08 08:01:40'),
(275, 129, 18, '2024-09-08 08:01:40', '2024-09-08 08:01:40'),
(276, 129, 25, '2024-09-08 08:01:40', '2024-09-08 08:01:40'),
(277, 129, 26, '2024-09-08 08:01:40', '2024-09-08 08:01:40'),
(278, 129, 28, '2024-09-08 08:01:40', '2024-09-08 08:01:40'),
(313, 59, 16, '2024-09-08 17:19:02', '2024-09-08 17:19:02'),
(317, 132, 10, '2024-09-15 03:52:44', '2024-09-15 03:52:44'),
(318, 132, 16, '2024-09-15 03:52:44', '2024-09-15 03:52:44'),
(319, 132, 17, '2024-09-15 03:52:44', '2024-09-15 03:52:44'),
(320, 132, 28, '2024-09-15 03:52:44', '2024-09-15 03:52:44'),
(321, 133, 10, '2024-09-15 04:06:27', '2024-09-15 04:06:27'),
(322, 133, 11, '2024-09-15 04:06:27', '2024-09-15 04:06:27'),
(323, 133, 17, '2024-09-15 04:06:27', '2024-09-15 04:06:27'),
(324, 133, 18, '2024-09-15 04:06:27', '2024-09-15 04:06:27'),
(325, 133, 23, '2024-09-15 04:06:27', '2024-09-15 04:06:27'),
(326, 50, 30, '2024-09-23 08:40:19', '2024-09-23 08:40:19'),
(327, 134, 11, '2024-09-28 06:22:45', '2024-09-28 06:22:45'),
(328, 134, 16, '2024-09-28 06:22:45', '2024-09-28 06:22:45'),
(329, 134, 21, '2024-09-28 06:22:45', '2024-09-28 06:22:45'),
(330, 134, 26, '2024-09-28 06:22:45', '2024-09-28 06:22:45'),
(331, 135, 10, '2024-10-16 16:06:49', '2024-10-16 16:06:49'),
(332, 135, 16, '2024-10-16 16:06:49', '2024-10-16 16:06:49'),
(333, 135, 20, '2024-10-16 16:06:49', '2024-10-16 16:06:49'),
(334, 135, 21, '2024-10-16 16:06:49', '2024-10-16 16:06:49'),
(335, 135, 22, '2024-10-16 16:06:49', '2024-10-16 16:06:49'),
(336, 135, 23, '2024-10-17 04:44:04', '2024-10-17 04:44:04'),
(337, 136, 10, '2024-11-12 14:04:08', '2024-11-12 14:04:08'),
(338, 136, 16, '2024-11-12 14:04:08', '2024-11-12 14:04:08'),
(339, 136, 20, '2024-11-12 14:04:08', '2024-11-12 14:04:08'),
(340, 136, 22, '2024-11-12 14:04:08', '2024-11-12 14:04:08'),
(341, 136, 26, '2024-11-12 14:04:08', '2024-11-12 14:04:08'),
(342, 137, 10, '2024-11-13 19:00:34', '2024-11-13 19:00:34'),
(343, 137, 16, '2024-11-13 19:00:34', '2024-11-13 19:00:34'),
(344, 137, 17, '2024-11-13 19:00:34', '2024-11-13 19:00:34'),
(345, 137, 20, '2024-11-13 19:00:34', '2024-11-13 19:00:34'),
(346, 137, 28, '2024-11-13 19:00:34', '2024-11-13 19:00:34'),
(347, 138, 10, '2024-12-04 09:57:05', '2024-12-04 09:57:05'),
(348, 138, 17, '2024-12-04 09:57:05', '2024-12-04 09:57:05'),
(349, 138, 21, '2024-12-04 09:57:05', '2024-12-04 09:57:05'),
(350, 138, 28, '2024-12-04 09:57:05', '2024-12-04 09:57:05'),
(351, 139, 10, '2024-12-06 13:04:52', '2024-12-06 13:04:52'),
(352, 139, 23, '2024-12-06 13:04:52', '2024-12-06 13:04:52'),
(353, 139, 24, '2024-12-06 13:04:52', '2024-12-06 13:04:52'),
(354, 140, 10, '2024-12-06 13:16:20', '2024-12-06 13:16:20'),
(355, 140, 16, '2024-12-06 13:16:20', '2024-12-06 13:16:20'),
(356, 140, 23, '2024-12-06 13:16:20', '2024-12-06 13:16:20'),
(357, 140, 28, '2024-12-06 13:16:20', '2024-12-06 13:16:20');

-- --------------------------------------------------------

--
-- Table structure for table `products_sizes`
--

CREATE TABLE `products_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_sizes`
--

INSERT INTO `products_sizes` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(49, 25, 5, '2024-02-07 10:31:34', '2024-02-07 10:31:34'),
(50, 25, 6, '2024-02-07 10:31:34', '2024-02-07 10:31:34'),
(51, 25, 7, '2024-02-07 10:31:34', '2024-02-07 10:31:34'),
(52, 25, 8, '2024-02-07 10:31:34', '2024-02-07 10:31:34'),
(53, 26, 5, '2024-02-07 10:38:18', '2024-02-07 10:38:18'),
(54, 26, 6, '2024-02-07 10:38:18', '2024-02-07 10:38:18'),
(55, 26, 7, '2024-02-07 10:38:18', '2024-02-07 10:38:18'),
(56, 26, 8, '2024-02-07 10:38:18', '2024-02-07 10:38:18');

-- --------------------------------------------------------

--
-- Table structure for table `product_additionalinfos`
--

CREATE TABLE `product_additionalinfos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `additional_name` varchar(255) DEFAULT NULL,
  `additional_value` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_additionalinfos`
--

INSERT INTO `product_additionalinfos` (`id`, `product_id`, `additional_name`, `additional_value`, `created_at`, `updated_at`) VALUES
(116, 27, 'Frame :', NULL, '2024-04-08 08:59:42', '2024-04-08 08:59:42'),
(117, 27, 'Weight Capacity :', NULL, '2024-04-08 08:59:42', '2024-04-08 08:59:42'),
(118, 27, 'Width :', NULL, '2024-04-08 08:59:42', '2024-04-08 08:59:42'),
(119, 27, 'Height :', NULL, '2024-04-08 08:59:42', '2024-04-08 08:59:42'),
(120, 27, 'Wheels :', NULL, '2024-04-08 08:59:42', '2024-04-08 08:59:42'),
(121, 28, 'Frame :', NULL, '2024-04-08 09:04:51', '2024-04-08 09:04:51'),
(122, 28, 'Weight Capacity :', NULL, '2024-04-08 09:04:51', '2024-04-08 09:04:51'),
(123, 28, 'Width :', NULL, '2024-04-08 09:04:51', '2024-04-08 09:04:51'),
(124, 28, 'Height :', NULL, '2024-04-08 09:04:51', '2024-04-08 09:04:51'),
(125, 28, 'Wheels :', NULL, '2024-04-08 09:04:51', '2024-04-08 09:04:51'),
(126, 29, 'Frame :', NULL, '2024-04-08 09:11:40', '2024-04-08 09:11:40'),
(127, 29, 'Weight Capacity :', NULL, '2024-04-08 09:11:40', '2024-04-08 09:11:40'),
(128, 29, 'Width :', NULL, '2024-04-08 09:11:40', '2024-04-08 09:11:40'),
(129, 29, 'Height :', NULL, '2024-04-08 09:11:40', '2024-04-08 09:11:40'),
(130, 29, 'Wheels :', NULL, '2024-04-08 09:11:40', '2024-04-08 09:11:40');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `product_id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(372, 87, 'Color', '29', '2024-12-24 04:23:18', '2024-12-24 04:23:18'),
(373, 87, 'Size', '41', '2024-12-24 04:23:18', '2024-12-24 04:23:18'),
(374, 88, 'Color', '30', '2024-12-24 05:16:41', '2024-12-24 05:16:41'),
(375, 88, 'Size', '41', '2024-12-24 05:16:41', '2024-12-24 05:16:41'),
(376, 89, 'Color', '31', '2024-12-24 05:53:03', '2024-12-24 05:53:03'),
(377, 89, 'Size', '42', '2024-12-24 05:53:03', '2024-12-24 05:53:03'),
(378, 90, 'Color', '32', '2024-12-24 06:29:26', '2024-12-24 06:29:26'),
(379, 90, 'Size', '42', '2024-12-24 06:29:26', '2024-12-24 06:29:26'),
(380, 91, 'Color', '33', '2024-12-24 07:11:02', '2024-12-24 07:11:02'),
(381, 91, 'Size', '43', '2024-12-24 07:11:02', '2024-12-24 07:11:02'),
(382, 92, 'Color', '32', '2024-12-24 07:40:32', '2024-12-24 07:40:32'),
(383, 92, 'Size', '43', '2024-12-24 07:40:32', '2024-12-24 07:40:32'),
(384, 93, 'Color', '31', '2024-12-24 08:12:23', '2024-12-24 08:12:23'),
(385, 93, 'Size', '43', '2024-12-24 08:12:23', '2024-12-24 08:12:23'),
(386, 94, 'Color', '33', '2024-12-24 08:39:41', '2024-12-24 08:39:41'),
(387, 94, 'Size', '42', '2024-12-24 08:39:41', '2024-12-24 08:39:41'),
(388, 95, 'Color', '34', '2024-12-24 09:15:07', '2024-12-24 09:15:07'),
(389, 95, 'Size', '44', '2024-12-24 09:15:07', '2024-12-24 09:15:07'),
(390, 96, 'Color', '35', '2024-12-24 09:35:28', '2024-12-24 09:35:28'),
(391, 96, 'Size', '45', '2024-12-24 09:35:28', '2024-12-24 09:35:28'),
(392, 97, 'Color', '34', '2024-12-24 09:45:11', '2024-12-24 09:45:11'),
(393, 97, 'Size', '45', '2024-12-24 09:45:11', '2024-12-24 09:45:11'),
(394, 98, 'Color', '36', '2024-12-24 09:55:07', '2024-12-24 09:55:07'),
(395, 98, 'Size', '45', '2024-12-24 09:55:07', '2024-12-24 09:55:07'),
(407, 144, 'Color', '10', '2025-01-07 05:58:41', '2025-01-07 05:58:41'),
(408, 144, 'Color', '17', '2025-01-07 05:58:41', '2025-01-07 05:58:41'),
(409, 144, 'Color', '10', '2025-01-08 03:20:25', '2025-01-08 03:20:25'),
(410, 144, 'Color', '31', '2025-01-08 05:02:16', '2025-01-08 05:02:16'),
(411, 144, 'Color', '20', '2025-01-08 05:23:54', '2025-01-08 05:23:54');

-- --------------------------------------------------------

--
-- Table structure for table `product_color_images`
--

CREATE TABLE `product_color_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_color_images`
--

INSERT INTO `product_color_images` (`id`, `product_id`, `color_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 144, 10, 'product_images/color-image/product_144101736338732.jpg', '2025-01-08 06:18:52', '2025-01-08 06:18:52'),
(2, 144, 20, 'product_images/color-image/product_144201736338732.jpg', '2025-01-08 06:18:52', '2025-01-08 06:18:52'),
(3, 144, 17, 'product_images/color-image/product_144171736831012.jpg', '2025-01-13 23:03:32', '2025-01-13 23:03:32'),
(4, 144, 31, 'product_images/color-image/product_144311736831012.png', '2025-01-13 23:03:32', '2025-01-13 23:03:32');

-- --------------------------------------------------------

--
-- Table structure for table `product_extras`
--

CREATE TABLE `product_extras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `warranty_type` varchar(255) DEFAULT NULL,
  `return_policy` varchar(255) DEFAULT NULL,
  `delivery_type` varchar(255) DEFAULT NULL,
  `emi` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_extras`
--

INSERT INTO `product_extras` (`id`, `product_id`, `warranty_type`, `return_policy`, `delivery_type`, `emi`, `created_at`, `updated_at`) VALUES
(24, 27, NULL, NULL, '0', 'Available', '2024-04-08 08:59:42', '2024-05-02 12:04:23'),
(25, 28, NULL, NULL, '0', 'Available', '2024-04-08 09:04:51', '2024-05-02 12:04:31'),
(26, 29, NULL, NULL, '0', 'Available', '2024-04-08 09:11:40', '2024-05-02 12:27:09'),
(31, 40, NULL, NULL, '0', 'Available', '2024-05-02 09:08:23', '2024-05-02 09:08:23'),
(32, 45, NULL, NULL, '1', 'Not Available', '2024-05-02 09:42:16', '2024-05-02 09:42:16'),
(37, 50, NULL, NULL, '0', 'Available', '2024-05-30 10:41:57', '2024-06-02 13:15:03'),
(38, 51, NULL, NULL, '0', 'Available', '2024-05-31 04:02:12', '2024-06-13 10:31:03'),
(39, 52, NULL, NULL, '0', 'Available', '2024-05-31 04:47:24', '2024-08-23 16:13:47'),
(40, 53, NULL, NULL, '0', 'Available', '2024-05-31 04:54:33', '2024-08-10 06:46:01'),
(41, 54, NULL, NULL, '0', 'Available', '2024-05-31 07:51:46', '2024-07-04 10:02:43'),
(42, 55, NULL, NULL, '0', 'Available', '2024-05-31 08:44:22', '2024-08-23 16:46:14'),
(43, 56, NULL, NULL, '0', 'Available', '2024-05-31 18:10:12', '2024-08-10 07:45:34'),
(44, 57, NULL, NULL, '0', 'Available', '2024-05-31 18:14:53', '2024-08-23 17:21:16'),
(45, 58, NULL, NULL, '0', 'Available', '2024-05-31 18:21:14', '2024-08-24 03:01:56'),
(46, 59, NULL, NULL, '0', 'Available', '2024-05-31 18:59:08', '2024-08-24 03:12:44'),
(47, 60, NULL, NULL, '0', 'Available', '2024-05-31 19:04:48', '2024-08-24 08:19:19'),
(48, 61, NULL, NULL, '1', 'Not Available', '2024-05-31 19:07:17', '2024-05-31 19:07:17'),
(49, 62, NULL, NULL, '1', 'Not Available', '2024-05-31 19:11:44', '2024-05-31 19:11:44'),
(50, 63, NULL, NULL, '1', 'Not Available', '2024-05-31 19:16:56', '2024-05-31 19:16:56'),
(51, 64, NULL, NULL, '0', 'Available', '2024-05-31 19:30:32', '2024-08-27 06:28:58'),
(52, 65, NULL, NULL, '0', 'Available', '2024-06-01 07:13:01', '2024-08-27 06:31:48'),
(53, 66, NULL, NULL, '0', 'Available', '2024-06-01 07:28:06', '2024-08-27 06:38:37'),
(54, 67, NULL, NULL, '0', 'Available', '2024-06-01 07:45:05', '2024-08-28 06:47:23'),
(55, 68, NULL, NULL, '0', 'Available', '2024-06-01 07:49:59', '2024-08-28 06:51:35'),
(56, 69, NULL, NULL, '1', 'Not Available', '2024-06-01 18:27:00', '2024-06-01 18:27:00'),
(57, 70, NULL, NULL, '1', 'Not Available', '2024-06-01 18:32:39', '2024-06-01 18:32:39'),
(58, 71, NULL, NULL, '1', 'Not Available', '2024-06-01 18:37:27', '2024-06-01 18:37:27'),
(59, 72, NULL, NULL, '1', 'Not Available', '2024-06-01 18:39:43', '2024-06-01 18:39:43'),
(60, 73, NULL, NULL, '1', 'Not Available', '2024-06-01 18:47:34', '2024-06-01 18:47:34'),
(62, 79, NULL, NULL, '0', 'Available', '2024-06-03 11:26:05', '2024-08-28 07:19:09'),
(63, 80, NULL, NULL, '0', 'Available', '2024-06-03 17:52:12', '2024-06-04 10:35:55'),
(64, 81, NULL, NULL, '0', 'Available', '2024-06-04 11:44:06', '2024-08-29 09:22:14'),
(65, 82, NULL, NULL, '0', 'Available', '2024-06-04 12:25:20', '2024-08-29 09:33:04'),
(66, 83, NULL, NULL, '0', 'Available', '2024-06-04 19:40:14', '2024-08-29 09:36:55'),
(67, 84, NULL, NULL, '1', 'Not Available', '2024-06-05 03:19:19', '2024-06-05 03:19:19'),
(68, 85, NULL, NULL, '0', 'Available', '2024-06-05 03:21:06', '2024-06-05 06:15:37'),
(69, 86, NULL, NULL, '0', 'Available', '2024-06-25 07:18:35', '2024-07-07 09:42:12'),
(70, 87, NULL, NULL, '0', 'Available', '2024-06-25 07:19:23', '2024-07-07 09:42:45'),
(71, 88, NULL, NULL, '0', 'Available', '2024-06-25 07:20:19', '2024-07-07 09:43:15'),
(72, 89, NULL, NULL, '0', 'Available', '2024-06-25 07:26:15', '2024-07-07 09:43:47'),
(73, 90, NULL, NULL, '0', 'Available', '2024-06-25 07:27:25', '2024-07-07 09:44:18'),
(74, 91, NULL, NULL, '0', 'Available', '2024-06-25 07:28:12', '2024-07-07 09:44:48'),
(75, 92, NULL, NULL, '0', 'Available', '2024-06-25 07:28:50', '2024-07-07 09:45:17'),
(76, 93, NULL, NULL, '0', 'Available', '2024-06-25 07:29:38', '2024-07-07 09:45:47'),
(77, 94, NULL, NULL, '0', 'Available', '2024-06-25 07:30:22', '2024-07-07 09:40:55'),
(78, 95, NULL, NULL, '0', 'Available', '2024-06-25 07:31:01', '2024-07-07 09:40:23'),
(79, 96, NULL, NULL, '0', 'Available', '2024-06-25 07:31:44', '2024-07-07 09:39:49'),
(80, 97, NULL, NULL, '0', 'Available', '2024-06-25 07:32:44', '2024-07-07 09:39:06'),
(81, 98, NULL, NULL, '0', 'Available', '2024-06-25 07:33:29', '2024-07-07 09:37:53'),
(82, 99, NULL, NULL, '0', 'Available', '2024-06-25 07:34:26', '2024-07-07 09:37:22'),
(83, 100, NULL, NULL, '0', 'Available', '2024-06-25 07:35:16', '2024-07-07 09:36:41'),
(84, 101, NULL, NULL, '0', 'Available', '2024-06-27 06:27:22', '2024-07-07 09:36:00'),
(85, 102, NULL, NULL, '0', 'Available', '2024-06-27 06:28:48', '2024-07-06 10:51:21'),
(86, 103, NULL, NULL, '0', 'Available', '2024-06-27 06:30:07', '2024-07-06 10:50:39'),
(87, 104, NULL, NULL, '0', 'Available', '2024-06-27 06:35:22', '2024-07-06 10:49:15'),
(88, 105, NULL, NULL, '0', 'Available', '2024-06-27 08:41:18', '2024-07-06 10:48:29'),
(89, 106, NULL, NULL, '0', 'Available', '2024-06-27 08:43:04', '2024-07-06 10:47:52'),
(90, 107, NULL, NULL, '0', 'Available', '2024-06-27 08:44:30', '2024-07-06 10:47:09'),
(91, 108, NULL, NULL, '0', 'Available', '2024-06-27 08:47:30', '2024-07-06 10:46:18'),
(92, 109, NULL, NULL, '0', 'Available', '2024-06-27 08:48:31', '2024-07-06 10:44:45'),
(93, 110, NULL, NULL, '0', 'Available', '2024-06-27 08:51:33', '2024-07-06 10:43:48'),
(94, 111, NULL, NULL, '0', 'Available', '2024-06-27 08:52:53', '2024-07-06 10:43:17'),
(95, 112, NULL, NULL, '0', 'Available', '2024-06-27 08:55:19', '2024-07-06 10:42:32'),
(96, 113, NULL, NULL, '0', 'Available', '2024-06-27 09:01:24', '2024-07-06 10:41:58'),
(97, 114, NULL, NULL, '0', 'Available', '2024-06-27 09:02:16', '2024-07-06 10:41:28'),
(98, 115, NULL, NULL, '1', 'Not Available', '2024-07-08 07:51:18', '2024-07-08 07:51:18'),
(99, 116, NULL, NULL, '1', 'Not Available', '2024-07-08 07:53:43', '2024-07-08 07:53:43'),
(100, 117, NULL, NULL, '1', 'Not Available', '2024-07-08 07:54:43', '2024-07-08 07:54:43'),
(101, 118, NULL, NULL, '0', 'Available', '2024-07-09 07:14:37', '2024-09-08 07:15:37'),
(102, 120, NULL, NULL, '1', 'Not Available', '2024-07-12 18:04:56', '2024-07-12 18:04:56'),
(103, 121, NULL, NULL, '1', 'Not Available', '2024-07-12 18:10:02', '2024-07-12 18:10:02'),
(104, 122, NULL, NULL, '1', 'Not Available', '2024-07-14 07:01:23', '2024-07-14 07:01:23'),
(105, 123, NULL, NULL, '0', 'Available', '2024-08-16 18:05:27', '2024-08-27 06:05:57'),
(106, 124, NULL, NULL, '1', 'Not Available', '2024-08-16 18:24:18', '2024-08-16 18:24:18'),
(107, 125, NULL, NULL, '1', 'Not Available', '2024-08-21 08:02:39', '2024-08-21 08:02:39'),
(108, 126, NULL, NULL, '1', 'Not Available', '2024-08-22 16:00:35', '2024-08-22 16:00:35'),
(109, 127, NULL, NULL, '1', 'Not Available', '2024-08-22 16:10:05', '2024-08-22 16:10:05'),
(110, 128, NULL, NULL, '1', 'Not Available', '2024-09-08 07:50:09', '2024-09-08 07:50:09'),
(111, 129, NULL, NULL, '1', 'Not Available', '2024-09-08 08:01:40', '2024-09-08 08:01:40'),
(114, 132, NULL, NULL, '0', 'Available', '2024-09-15 03:52:45', '2024-09-15 04:07:20'),
(115, 133, NULL, NULL, '1', 'Not Available', '2024-09-15 04:06:28', '2024-09-15 04:06:28'),
(116, 134, NULL, NULL, '1', 'Not Available', '2024-09-28 06:22:46', '2024-09-28 06:22:46'),
(117, 135, NULL, NULL, '0', 'Available', '2024-10-16 16:06:50', '2024-10-16 16:11:15'),
(118, 136, NULL, NULL, '1', 'Not Available', '2024-11-12 14:04:09', '2024-11-12 14:04:09'),
(119, 137, NULL, NULL, '1', 'Not Available', '2024-11-13 19:00:36', '2024-11-13 19:00:36'),
(120, 138, NULL, NULL, '1', 'Not Available', '2024-12-04 09:57:06', '2024-12-04 09:57:06'),
(121, 139, NULL, NULL, '1', 'Not Available', '2024-12-06 13:04:53', '2024-12-06 13:04:53'),
(122, 140, NULL, NULL, '1', 'Not Available', '2024-12-06 13:16:20', '2024-12-06 13:16:20'),
(125, 143, NULL, NULL, '1', 'Available', '2024-12-30 23:35:20', '2024-12-30 23:35:20'),
(126, 144, '20 years', 'lifetime', '1', 'Not Available', '2025-01-07 05:58:43', '2025-01-07 05:58:43');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `product_image`, `slug`, `created_at`, `updated_at`) VALUES
(103, 27, 'swarovski_0_1713327712.webp', '', '2024-04-17 04:21:52', '2024-04-17 04:21:52'),
(104, 27, 'swarovski_1_1713327712.webp', '', '2024-04-17 04:21:52', '2024-04-17 04:21:52'),
(105, 27, 'swarovski_2_1713327712.webp', '', '2024-04-17 04:21:52', '2024-04-17 04:21:52'),
(106, 28, 'burberry-1355_0_1713327847.webp', '', '2024-04-17 04:24:07', '2024-04-17 04:24:07'),
(107, 28, 'burberry-1355_1_1713327847.webp', '', '2024-04-17 04:24:07', '2024-04-17 04:24:07'),
(108, 28, 'burberry-1355_2_1713327847.webp', '', '2024-04-17 04:24:07', '2024-04-17 04:24:07'),
(109, 29, 'burberry-1348_0_1713327921.webp', '', '2024-04-17 04:25:21', '2024-04-17 04:25:21'),
(110, 29, 'burberry-1348_1_1713327921.webp', '', '2024-04-17 04:25:21', '2024-04-17 04:25:21'),
(111, 29, 'burberry-1348_2_1713327921.webp', '', '2024-04-17 04:25:21', '2024-04-17 04:25:21'),
(112, 29, 'burberry-1348_3_1713327921.webp', '', '2024-04-17 04:25:21', '2024-04-17 04:25:21'),
(113, 29, 'burberry-1348_4_1713327921.webp', '', '2024-04-17 04:25:21', '2024-04-17 04:25:21'),
(114, 29, 'burberry-1348_5_1713327921.webp', '', '2024-04-17 04:25:21', '2024-04-17 04:25:21'),
(122, 40, 'silver-full-rim-square-eyeglasses-otis-201441_0_1714640903.webp', '', '2024-05-02 09:08:23', '2024-05-02 09:08:23'),
(123, 45, 'versace-3304-single-vision-full-frame_0_1714642936.webp', '', '2024-05-02 09:42:16', '2024-05-02 09:42:16'),
(130, 71, 'chanel-square-sunglasses_0_1717267047.webp', '', '2024-06-01 18:37:27', '2024-06-01 18:37:27'),
(133, 120, 'prada-90074_0_1720814695.webp', '', '2024-07-12 18:04:56', '2024-07-12 18:04:56'),
(134, 120, 'prada-90074_1_1720814696.webp', '', '2024-07-12 18:04:56', '2024-07-12 18:04:56'),
(135, 124, 'dior-lumina_0_1723839858.webp', '', '2024-08-16 18:24:18', '2024-08-16 18:24:18'),
(136, 125, 'dior-majesty_0_1724234559.webp', '', '2024-08-21 08:02:39', '2024-08-21 08:02:39'),
(140, 54, 'prime-metalic-eyewear_1_1724438594.webp', '', '2024-08-23 16:43:14', '2024-08-23 16:43:14'),
(142, 81, 'squarify-glasses_1_1724930534.webp', '', '2024-08-29 09:22:14', '2024-08-29 09:22:14'),
(147, 133, 'tomford-a2285-mastercopy_0_1726380388.webp', '', '2024-09-15 04:06:28', '2024-09-15 04:06:28'),
(148, 132, 'tomford-a2281-mastercopy_0_1726380440.webp', '', '2024-09-15 04:07:20', '2024-09-15 04:07:20'),
(149, 51, 'charment-oval_1717128131.webp', '', NULL, NULL),
(150, 55, 'galore-catseye_1717145061.webp', '', NULL, NULL),
(151, 57, 'classic-round_1717179292.webp', '', NULL, NULL),
(152, 61, 'lv-oversized-premium_1717182437.webp', '', NULL, NULL),
(153, 62, 'louis-vuiton-sunglasses_1717182704.webp', '', NULL, NULL),
(154, 63, 'prada-oversized-sunglasses_1717183016.webp', '', NULL, NULL),
(155, 68, 'bvlgari-nerd_1717228198.webp', '', NULL, NULL),
(156, 69, 'burberry-catseye-sunglasses_1717266420.webp', '', NULL, NULL),
(157, 70, 'chanel-oversized-sunglasses_1717266759.webp', '', NULL, NULL),
(158, 71, 'chanel-square-sunglasses_1717267047.webp', '', NULL, NULL),
(159, 72, 'dior-square-sunglasses_1717267183.webp', '', NULL, NULL),
(160, 73, 'prada-fancy-sunglasses_1717267654.webp', '', NULL, NULL),
(161, 78, 'testing_1717338426.webp', '', NULL, NULL),
(162, 84, 'twotone-rounders_1717557559.webp', '', NULL, NULL),
(163, 85, 'twotone-catseye_1717557666.webp', '', NULL, NULL),
(164, 86, 'dahab-alaska_1719299915.webp', '', NULL, NULL),
(165, 87, 'dahab-aqua_1719299963.webp', '', NULL, NULL),
(166, 88, 'dahab-argan_1719300019.webp', '', NULL, NULL),
(167, 89, 'dahab-caramel_1719300375.webp', '', NULL, NULL),
(168, 90, 'dahab-cat-eye_1719300445.webp', '', NULL, NULL),
(169, 91, 'dahab-creamy_1719300492.webp', '', NULL, NULL),
(170, 92, 'dahab-diamond_1719300530.webp', '', NULL, NULL),
(171, 93, 'dahab-gray-green_1719300578.webp', '', NULL, NULL),
(172, 94, 'dahab-hawaii_1719300622.webp', '', NULL, NULL),
(173, 95, 'dahab-hind_1719300661.webp', '', NULL, NULL),
(174, 96, 'dahab-ice_1719300704.webp', '', NULL, NULL),
(175, 97, 'dahab-luminere-blue_1719300764.webp', '', NULL, NULL),
(176, 98, 'dahab-luminere-brown_1719300809.webp', '', NULL, NULL),
(177, 99, 'dahab-luminere-gray_1719300866.webp', '', NULL, NULL),
(178, 100, 'dahab-luminere-green_1719300916.webp', '', NULL, NULL),
(179, 101, 'dahab-luminere-hazel_1719469641.webp', '', NULL, NULL),
(180, 102, 'dahab-maroon_1719469727.webp', '', NULL, NULL),
(181, 103, 'dahab-medusa_1719469807.webp', '', NULL, NULL),
(182, 104, 'dahab-mentha_1719470122.webp', '', NULL, NULL),
(183, 105, 'dahab-perle_1719477678.webp', '', NULL, NULL),
(184, 106, 'dahab-rain_1719477784.webp', '', NULL, NULL),
(185, 107, 'dahab-sabrin-gray_1719477870.webp', '', NULL, NULL),
(186, 108, 'dahab-sabriin-soul_1719478050.webp', '', NULL, NULL),
(187, 109, 'dahab-sky_1719478111.webp', '', NULL, NULL),
(188, 110, 'dahab-solitaire_1719478293.webp', '', NULL, NULL),
(189, 111, 'dahab-sun-kiss_1719478373.webp', '', NULL, NULL),
(190, 112, 'dahab-swarovaski_1719478519.webp', '', NULL, NULL),
(191, 113, 'dahab-tiffany-blue_1719478884.webp', '', NULL, NULL),
(192, 114, 'dahab-topaz_1719478935.webp', '', NULL, NULL),
(193, 115, '202-blue_1720425078.webp', '', NULL, NULL),
(194, 116, '207-blue_1720425223.webp', '', NULL, NULL),
(195, 117, '207-green_1720425283.webp', '', NULL, NULL),
(196, 118, 'tomford-22001_1720509276.webp', '', NULL, NULL),
(197, 120, 'prada-90074_1720814694.webp', '', NULL, NULL),
(198, 121, 'windsor-original-10007_1720815002.webp', '', NULL, NULL),
(199, 122, 'windsor-hexagon-rimless_1720947682.webp', '', NULL, NULL),
(200, 123, 'densen-mystique_1723838725.webp', '', NULL, NULL),
(201, 124, 'dior-lumina_1723839857.webp', '', NULL, NULL),
(202, 125, 'dior-majesty_1724234557.webp', '', NULL, NULL),
(203, 126, 'chanel-evoke_1724349635.webp', '', NULL, NULL),
(204, 127, 'vanguard-sunglasses_1724350205.webp', '', NULL, NULL),
(205, 50, 'z-charment-square_1724434694.webp', '', NULL, NULL),
(206, 52, 'dazzle-square_1724436827.webp', '', NULL, NULL),
(207, 53, 'dazzle-catseye_1724437606.webp', '', NULL, NULL),
(208, 54, 'prime-metalic-eyewear_1724438594.webp', '', NULL, NULL),
(209, 56, 'classic-oversized_1724439844.webp', '', NULL, NULL),
(210, 58, 'classic-hexa_1724475714.webp', '', NULL, NULL),
(211, 59, 'dior-acetate-sunglasses_1724476364.webp', '', NULL, NULL),
(212, 60, 'fendi-premium-oversized_1724494760.webp', '', NULL, NULL),
(213, 64, 'burberry-acetate-catseye_1724747337.webp', '', NULL, NULL),
(214, 65, 'titan-oversized-oval_1724747508.webp', '', NULL, NULL),
(215, 66, 'titan-oversized-horn_1724747917.webp', '', NULL, NULL),
(216, 67, 'n-one-catseye_1724834843.webp', '', NULL, NULL),
(217, 80, 'titan-thin-horn_1724836003.webp', '', NULL, NULL),
(218, 79, 'densen-horneye_1724836749.webp', '', NULL, NULL),
(219, 81, 'squarify-glasses_1724930534.webp', '', NULL, NULL),
(220, 82, 'hexafy-glasses_1724931184.webp', '', NULL, NULL),
(221, 83, 'roundify-glasses_1724931415.webp', '', NULL, NULL),
(222, 128, 'fierce-eyewear_1725789008.webp', '', NULL, NULL),
(223, 129, 'femme-flair-frames_1725789700.webp', '', NULL, NULL),
(224, 130, 'testing-product_1726309995.webp', '', NULL, NULL),
(225, 131, 'testing-product-2_1726310039.webp', '', NULL, NULL),
(226, 132, 'tomford-a2281-mastercopy_1726379564.webp', '', NULL, NULL),
(227, 133, 'tomford-a2285-mastercopy_1726380387.webp', '', NULL, NULL),
(228, 134, 'hexaflex-eyewear_1727511765.webp', '', NULL, NULL),
(229, 135, 'striped-oversized_1729147444.jpg', '', NULL, NULL),
(230, 136, 'benitez-oversized_1731423848.jpg', '', NULL, NULL),
(231, 137, 'glance-eyewear_1731528034.jpg', '', NULL, NULL),
(232, 138, 'dior-enigma_1733309825.jpg', '', NULL, NULL),
(233, 139, 'porsche-prism_1733493892.jpg', '', NULL, NULL),
(234, 140, 'premium-silver-serenity_1733494580.jpg', '', NULL, NULL),
(243, 143, 'test_0.jpg', '', '2024-12-30 23:35:20', '2024-12-30 23:35:20'),
(244, 144, 'our-test-product_0.jpg', '', '2025-01-07 05:58:43', '2025-01-07 05:58:43'),
(245, 144, 'our-test-product_0_1736337181.png', '', '2025-01-08 05:53:02', '2025-01-08 05:53:02'),
(246, 144, 'our-test-product_0_1736338628.png', '', '2025-01-08 06:17:08', '2025-01-08 06:17:08');

-- --------------------------------------------------------

--
-- Table structure for table `product_image_with_colors`
--

CREATE TABLE `product_image_with_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `stock` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_image_with_colors`
--

INSERT INTO `product_image_with_colors` (`id`, `color_id`, `product_id`, `price`, `sku`, `stock`, `image`, `created_at`, `updated_at`) VALUES
(76, 10, 62, 1860.00, '-BLACK', '5', '-BLACK_10_1717182704.webp', '2024-05-31 19:11:44', '2024-05-31 19:11:44'),
(77, 26, 62, 1860.00, '-ROSEPINK', '5', '-ROSEPINK_26_1717182704.webp', '2024-05-31 19:11:44', '2024-05-31 19:11:44'),
(78, 28, 62, 1860.00, '-BROWN', '5', '-BROWN_28_1717182704.webp', '2024-05-31 19:11:44', '2024-05-31 19:11:44'),
(79, 10, 63, 1860.00, '-BLACK', '5', '-BLACK_10_1717183016.webp', '2024-05-31 19:16:56', '2024-05-31 19:16:56'),
(80, 21, 63, 1860.00, '-GRAY', '5', '-GRAY_21_1717183016.webp', '2024-05-31 19:16:56', '2024-05-31 19:16:56'),
(81, 28, 63, 1860.00, '-BROWN', '3', '-BROWN_28_1717183016.webp', '2024-05-31 19:16:56', '2024-05-31 19:16:56'),
(108, 10, 69, 1850.00, '-BLACK', '3', '-BLACK_10_1717266420.webp', '2024-06-01 18:27:00', '2024-06-01 18:27:00'),
(109, 20, 69, 1850.00, '-PURPLE', '3', '-PURPLE_20_1717266420.webp', '2024-06-01 18:27:00', '2024-06-01 18:27:00'),
(110, 28, 69, 1849.99, '-BROWN', '3', '-BROWN_28_1717266420.webp', '2024-06-01 18:27:00', '2024-06-01 18:27:00'),
(111, 10, 70, 1850.00, '-BLACK', '3', '-BLACK_10_1717266759.webp', '2024-06-01 18:32:39', '2024-06-01 18:32:39'),
(112, 27, 70, 1850.00, '-OFF-WHITE', '3', '-OFF-WHITE_27_1717266759.webp', '2024-06-01 18:32:39', '2024-06-01 18:32:39'),
(113, 28, 70, 1850.00, '-BROWN', '3', '-BROWN_28_1717266759.webp', '2024-06-01 18:32:39', '2024-06-01 18:32:39'),
(114, 10, 71, 1850.00, '-BLACK', '4', '-BLACK_10_1717267047.webp', '2024-06-01 18:37:27', '2024-06-01 18:37:27'),
(115, 28, 71, 1850.00, '-BROWN', '4', '-BROWN_28_1717267047.webp', '2024-06-01 18:37:27', '2024-06-01 18:37:27'),
(116, 10, 72, 1850.00, '-BLACK', '3', '-BLACK_10_1717267183.webp', '2024-06-01 18:39:43', '2024-06-01 18:39:43'),
(117, 20, 72, 1850.00, '-PURPLE', '3', '-PURPLE_20_1717267183.webp', '2024-06-01 18:39:43', '2024-06-01 18:39:43'),
(118, 10, 73, 1500.00, '-BLACK', '2', '-BLACK_10_1717267654.webp', '2024-06-01 18:47:34', '2024-06-01 18:47:34'),
(119, 28, 73, 1499.98, '-BROWN', '2', '-BROWN_28_1717267654.webp', '2024-06-01 18:47:34', '2024-06-01 18:47:34'),
(142, 26, 84, 920.00, '-ROSEPINK', '10', '-ROSEPINK_26_1717557559.webp', '2024-06-05 03:19:19', '2024-06-05 03:19:19'),
(143, 31, 84, 919.98, '-GREEN', '10', '-GREEN_31_1717557559.webp', '2024-06-05 03:19:19', '2024-06-05 03:19:19'),
(144, 26, 85, 920.00, '-ROSEPINK', '10', '-ROSEPINK_26_1717557666.webp', '2024-06-05 03:21:06', '2024-06-05 03:21:06'),
(145, 31, 85, 919.97, '-GREEN', '10', '-GREEN_31_1717557666.webp', '2024-06-05 03:21:06', '2024-06-05 03:21:06'),
(146, 24, 114, 900.00, '-TRANSPARENT', '10', '_24_1720262488.webp', '2024-07-06 10:41:28', '2024-07-06 10:41:28'),
(147, 24, 113, 900.00, '-TRANSPARENT', '1', '_24_1720262518.webp', '2024-07-06 10:41:58', '2024-07-06 10:41:58'),
(148, 24, 112, 900.00, '-TRANSPARENT', '8', '_24_1720262552.webp', '2024-07-06 10:42:32', '2024-07-06 10:42:32'),
(149, 24, 111, 900.00, '-TRANSPARENT', '10', '_24_1720262597.webp', '2024-07-06 10:43:17', '2024-07-06 10:43:17'),
(150, 24, 110, 900.00, '-TRANSPARENT', '10', '_24_1720262628.webp', '2024-07-06 10:43:48', '2024-07-06 10:43:48'),
(151, 24, 109, 900.00, '-TRANSPARENT', '10', '_24_1720262685.webp', '2024-07-06 10:44:45', '2024-07-06 10:44:45'),
(152, 24, 108, 900.00, '-TRANSPARENT', '10', '_24_1720262778.webp', '2024-07-06 10:46:18', '2024-07-06 10:46:18'),
(153, 24, 107, 900.00, '-TRANSPARENT', '10', '_24_1720262829.webp', '2024-07-06 10:47:09', '2024-07-06 10:47:09'),
(154, 24, 106, 900.00, '-TRANSPARENT', '10', '_24_1720262872.webp', '2024-07-06 10:47:52', '2024-07-06 10:47:52'),
(155, 24, 105, 900.00, '-TRANSPARENT', '10', '_24_1720262908.webp', '2024-07-06 10:48:29', '2024-07-06 10:48:29'),
(156, 24, 104, 900.00, '-TRANSPARENT', '10', '_24_1720262955.webp', '2024-07-06 10:49:15', '2024-07-06 10:49:15'),
(157, 24, 103, 900.00, '-TRANSPARENT', '10', '_24_1720263039.webp', '2024-07-06 10:50:39', '2024-07-06 10:50:39'),
(158, 24, 102, 900.00, '-TRANSPARENT', '10', '_24_1720263081.webp', '2024-07-06 10:51:21', '2024-07-06 10:51:21'),
(159, 24, 101, 900.00, '-TRANSPARENT', '10', '_24_1720344960.webp', '2024-07-07 09:36:00', '2024-07-07 09:36:00'),
(160, 24, 100, 900.00, '-TRANSPARENT', '10', '_24_1720345000.webp', '2024-07-07 09:36:41', '2024-07-07 09:36:41'),
(161, 24, 99, 900.00, '-TRANSPARENT', '10', '_24_1720345042.webp', '2024-07-07 09:37:22', '2024-07-07 09:37:22'),
(162, 24, 98, 900.00, '-TRANSPARENT', '10', '_24_1720345073.webp', '2024-07-07 09:37:53', '2024-07-07 09:37:53'),
(163, 24, 97, 900.00, '-TRANSPARENT', '10', '_24_1720345146.webp', '2024-07-07 09:39:06', '2024-07-07 09:39:06'),
(164, 24, 96, 900.00, '-TRANSPARENT', '10', '_24_1720345189.webp', '2024-07-07 09:39:49', '2024-07-07 09:39:49'),
(165, 24, 95, 900.00, '-TRANSPARENT', '9', '_24_1720345222.webp', '2024-07-07 09:40:23', '2024-07-07 09:40:23'),
(166, 24, 94, 900.00, '-TRANSPARENT', '10', '_24_1720345255.webp', '2024-07-07 09:40:55', '2024-07-07 09:40:55'),
(167, 24, 86, 900.00, '-TRANSPARENT', '10', '_24_1720345332.webp', '2024-07-07 09:42:12', '2024-07-07 09:42:12'),
(168, 24, 87, 900.00, '-TRANSPARENT', '9', '_24_1720345365.webp', '2024-07-07 09:42:45', '2024-07-07 09:42:45'),
(169, 24, 88, 900.00, '-TRANSPARENT', '10', '_24_1720345395.webp', '2024-07-07 09:43:15', '2024-07-07 09:43:15'),
(170, 24, 89, 900.00, '-TRANSPARENT', '9', '_24_1720345427.webp', '2024-07-07 09:43:47', '2024-07-07 09:43:47'),
(171, 24, 90, 900.00, '-TRANSPARENT', '8', '_24_1720345458.webp', '2024-07-07 09:44:18', '2024-07-07 09:44:18'),
(172, 24, 91, 900.00, '-TRANSPARENT', '10', '_24_1720345488.webp', '2024-07-07 09:44:48', '2024-07-07 09:44:48'),
(173, 24, 92, 900.00, '-TRANSPARENT', '8', '_24_1720345517.webp', '2024-07-07 09:45:17', '2024-07-07 09:45:17'),
(174, 24, 93, 900.00, '-TRANSPARENT', '10', '_24_1720345547.webp', '2024-07-07 09:45:47', '2024-07-07 09:45:47'),
(175, 24, 115, 2200.00, '-TRANSPARENT', '10', '-TRANSPARENT_24_1720425078.webp', '2024-07-08 07:51:18', '2024-07-08 07:51:18'),
(176, 24, 116, 2200.00, '-TRANSPARENT', '10', '-TRANSPARENT_24_1720425223.webp', '2024-07-08 07:53:43', '2024-07-08 07:53:43'),
(177, 24, 117, 2200.00, '-TRANSPARENT', '10', '-TRANSPARENT_24_1720425283.webp', '2024-07-08 07:54:43', '2024-07-08 07:54:43'),
(178, 28, 118, 2550.00, '-BROWN', '0', '-BROWN_28_1720509277.webp', '2024-07-09 07:14:37', '2024-09-08 07:15:37'),
(179, 10, 120, 2550.00, '-BLACK', '2', '-BLACK_10_1720814695.webp', '2024-07-12 18:04:55', '2024-07-12 18:04:55'),
(180, 16, 121, 2900.00, '-BLUE', '2', '-BLUE_16_1720815002.webp', '2024-07-12 18:10:02', '2024-07-12 18:10:02'),
(181, 28, 122, 2900.00, '-BROWN', '2', '-BROWN_28_1720947682.webp', '2024-07-14 07:01:23', '2024-07-14 07:01:23'),
(187, 10, 123, 750.00, '-BLACK', '10', '-BLACK_10_1723838726.webp', '2024-08-16 18:05:26', '2024-08-16 18:05:26'),
(188, 16, 123, 750.00, '-BLUE', '10', '-BLUE_16_1723838726.webp', '2024-08-16 18:05:26', '2024-08-16 18:05:26'),
(189, 21, 123, 750.00, '-GRAY', '10', '-GRAY_21_1723838726.webp', '2024-08-16 18:05:26', '2024-08-16 18:05:26'),
(190, 22, 123, 750.00, '-PITCH', '10', '-PITCH_22_1723838726.webp', '2024-08-16 18:05:27', '2024-08-16 18:05:27'),
(191, 24, 123, 750.00, '-TRANSPARENT', '10', '-TRANSPARENT_24_1723838727.webp', '2024-08-16 18:05:27', '2024-08-16 18:05:27'),
(192, 10, 124, 2050.00, '-BLACK', '5', '-BLACK_10_1723839857.webp', '2024-08-16 18:24:17', '2024-08-16 18:24:17'),
(193, 16, 124, 2050.00, '-BLUE', '5', '-BLUE_16_1723839857.webp', '2024-08-16 18:24:17', '2024-08-16 18:24:17'),
(194, 17, 124, 2050.00, '-RED', '5', '-RED_17_1723839857.webp', '2024-08-16 18:24:17', '2024-08-16 18:24:17'),
(195, 20, 124, 2050.00, '-PURPLE', '5', '-PURPLE_20_1723839857.webp', '2024-08-16 18:24:18', '2024-08-16 18:24:18'),
(196, 28, 124, 2050.00, '-BROWN', '5', '-BROWN_28_1723839858.webp', '2024-08-16 18:24:18', '2024-08-16 18:24:18'),
(197, 30, 124, 2050.00, '-OLIVE', '5', '-OLIVE_30_1723839858.webp', '2024-08-16 18:24:18', '2024-08-16 18:24:18'),
(198, 20, 125, 1950.00, '-PURPLE', '3', '-PURPLE_20_1724234558.webp', '2024-08-21 08:02:38', '2024-08-21 08:02:38'),
(199, 27, 125, 1950.00, '-OFF-WHITE', '3', '-OFF-WHITE_27_1724234558.webp', '2024-08-21 08:02:38', '2024-08-21 08:02:38'),
(200, 28, 125, 1950.00, '-BROWN', '3', '-BROWN_28_1724234558.webp', '2024-08-21 08:02:39', '2024-08-21 08:02:39'),
(201, 30, 125, 1950.00, '-OLIVE', '3', '-OLIVE_30_1724234559.webp', '2024-08-21 08:02:39', '2024-08-21 08:02:39'),
(202, 16, 126, 1090.00, '-BLUE', '3', '-BLUE_16_1724349635.webp', '2024-08-22 16:00:35', '2024-08-22 16:00:35'),
(203, 17, 126, 1090.00, '-RED', '3', '-RED_17_1724349635.webp', '2024-08-22 16:00:35', '2024-08-22 16:00:35'),
(204, 20, 126, 1090.00, '-PURPLE', '3', '-PURPLE_20_1724349635.webp', '2024-08-22 16:00:35', '2024-08-22 16:00:35'),
(205, 26, 126, 1090.00, '-ROSEPINK', '3', '-ROSEPINK_26_1724349635.webp', '2024-08-22 16:00:35', '2024-08-22 16:00:35'),
(206, 21, 127, 1250.00, '-GRAY', '1', '-GRAY_21_1724350205.webp', '2024-08-22 16:10:05', '2024-08-22 16:10:05'),
(207, 10, 50, 770.00, '-BLACK', '3', '_10_1724434695.webp', '2024-08-23 15:38:15', '2024-08-23 15:38:15'),
(208, 16, 50, 770.00, '-BLUE', '3', '_16_1724434695.webp', '2024-08-23 15:38:15', '2024-08-23 15:38:15'),
(209, 18, 50, 770.00, '-MAROON', '3', '_18_1724434695.webp', '2024-08-23 15:38:15', '2024-08-23 15:38:15'),
(210, 19, 50, 770.00, '-MINT', '3', '_19_1724434695.webp', '2024-08-23 15:38:15', '2024-08-23 15:38:15'),
(211, 20, 50, 770.00, '-PURPLE', '3', '_20_1724434695.webp', '2024-08-23 15:38:16', '2024-08-23 15:38:16'),
(212, 21, 50, 770.00, '-GRAY', '2', '_21_1724434696.webp', '2024-08-23 15:38:16', '2024-08-23 15:38:16'),
(213, 22, 50, 769.99, '-PITCH', '3', '_22_1724434696.webp', '2024-08-23 15:38:16', '2024-08-23 15:38:16'),
(214, 26, 50, 770.00, '-ROSEPINK', '3', '_26_1724434696.webp', '2024-08-23 15:38:16', '2024-08-23 15:38:16'),
(215, 10, 51, 770.00, '-BLACK', '3', '_10_1724435208.webp', '2024-08-23 15:46:48', '2024-08-23 15:46:48'),
(216, 16, 51, 770.00, '-BLUE', '3', '_16_1724435208.webp', '2024-08-23 15:46:48', '2024-08-23 15:46:48'),
(217, 19, 51, 770.00, '-MINT', '3', '_19_1724435208.webp', '2024-08-23 15:46:48', '2024-08-23 15:46:48'),
(218, 21, 51, 770.00, '-GRAY', '3', '_21_1724435208.webp', '2024-08-23 15:46:48', '2024-08-23 15:46:48'),
(219, 25, 51, 769.98, '-DEEP PURPLE', '3', '_25_1724435208.webp', '2024-08-23 15:46:48', '2024-08-23 15:46:48'),
(220, 10, 52, 900.00, '-BLACK', '3', '_10_1724436827.webp', '2024-08-23 16:13:47', '2024-08-23 16:13:47'),
(221, 17, 52, 900.00, '-RED', '3', '_17_1724436827.webp', '2024-08-23 16:13:47', '2024-08-23 16:13:47'),
(222, 20, 52, 900.00, '-PURPLE', '3', '_20_1724436827.webp', '2024-08-23 16:13:47', '2024-08-23 16:13:47'),
(223, 25, 52, 900.00, '-DEEP PURPLE', '3', '_25_1724436827.webp', '2024-08-23 16:13:47', '2024-08-23 16:13:47'),
(224, 26, 52, 900.00, '-ROSEPINK', '3', '_26_1724436827.webp', '2024-08-23 16:13:47', '2024-08-23 16:13:47'),
(225, 10, 53, 900.00, '-BLACK', '3', '_10_1724437606.webp', '2024-08-23 16:26:46', '2024-08-23 16:26:46'),
(226, 17, 53, 900.00, '-RED', '3', '_17_1724437606.webp', '2024-08-23 16:26:46', '2024-08-23 16:26:46'),
(227, 20, 53, 900.00, '-PURPLE', '3', '_20_1724437606.webp', '2024-08-23 16:26:46', '2024-08-23 16:26:46'),
(228, 25, 53, 900.00, '-DEEP PURPLE', '3', '_25_1724437606.webp', '2024-08-23 16:26:46', '2024-08-23 16:26:46'),
(229, 26, 53, 900.00, '-ROSEPINK', '3', '_26_1724437606.webp', '2024-08-23 16:26:46', '2024-08-23 16:26:46'),
(235, 10, 54, 1850.00, '-BLACK', '3', '_10_1724438594.webp', '2024-08-23 16:43:14', '2024-08-23 16:43:14'),
(236, 16, 54, 1850.00, '-BLUE', '3', '_16_1724438594.webp', '2024-08-23 16:43:14', '2024-08-23 16:43:14'),
(237, 17, 54, 1849.99, '-RED', '3', '_17_1724438594.webp', '2024-08-23 16:43:14', '2024-08-23 16:43:14'),
(238, 23, 54, 1850.00, '-GOLDEN', '3', '_23_1724438594.webp', '2024-08-23 16:43:14', '2024-08-23 16:43:14'),
(239, 27, 54, 1850.00, '-OFF-WHITE', '2', '_27_1724438594.webp', '2024-08-23 16:43:14', '2024-08-23 16:43:14'),
(240, 10, 55, 1200.00, '-BLACK', '3', '_10_1724438774.webp', '2024-08-23 16:46:14', '2024-08-23 16:46:14'),
(241, 21, 55, 1200.00, '-GRAY', '5', '_21_1724438774.webp', '2024-08-23 16:46:14', '2024-08-23 16:46:14'),
(242, 23, 55, 1200.00, '-GOLDEN', '3', '_23_1724438774.webp', '2024-08-23 16:46:14', '2024-08-23 16:46:14'),
(243, 26, 55, 1200.00, '-ROSEPINK', '5', '_26_1724438774.webp', '2024-08-23 16:46:14', '2024-08-23 16:46:14'),
(244, 10, 56, 719.00, '-BLACK', '2', '_10_1724439844.webp', '2024-08-23 17:04:04', '2024-08-23 17:04:04'),
(245, 11, 56, 719.00, '-WHITE', '0', '_11_1724439844.webp', '2024-08-23 17:04:04', '2024-08-23 17:04:04'),
(246, 16, 56, 719.00, '-BLUE', '1', '_16_1724439844.webp', '2024-08-23 17:04:04', '2024-08-23 17:04:04'),
(247, 20, 56, 719.00, '-PURPLE', '5', '_20_1724439844.webp', '2024-08-23 17:04:04', '2024-08-23 17:04:04'),
(248, 23, 56, 719.00, '-GOLDEN', '0', '_23_1724439844.webp', '2024-08-23 17:04:04', '2024-08-23 17:04:04'),
(249, 10, 57, 719.00, '-BLACK', '3', '_10_1724440875.webp', '2024-08-23 17:21:15', '2024-08-23 17:21:15'),
(250, 11, 57, 719.00, '-WHITE', '3', '_11_1724440875.webp', '2024-08-23 17:21:16', '2024-08-23 17:21:16'),
(251, 16, 57, 719.00, '-BLUE', '3', '_16_1724440876.webp', '2024-08-23 17:21:16', '2024-08-23 17:21:16'),
(252, 20, 57, 719.00, '-PURPLE', '3', '_20_1724440876.webp', '2024-08-23 17:21:16', '2024-08-23 17:21:16'),
(253, 21, 57, 718.99, '-GRAY', '3', '_21_1724440876.webp', '2024-08-23 17:21:16', '2024-08-23 17:21:16'),
(254, 23, 57, 719.00, '-GOLDEN', '3', '_23_1724440876.webp', '2024-08-23 17:21:16', '2024-08-23 17:21:16'),
(255, 10, 58, 720.00, '-BLACK', '5', '_10_1724475715.webp', '2024-08-24 03:01:55', '2024-08-24 03:01:55'),
(256, 16, 58, 720.00, '-BLUE', '5', '_16_1724475715.webp', '2024-08-24 03:01:55', '2024-08-24 03:01:55'),
(257, 21, 58, 720.00, '-GRAY', '0', '_21_1724475715.webp', '2024-08-24 03:01:55', '2024-08-24 03:01:55'),
(258, 23, 58, 720.00, '-GOLDEN', '5', '_23_1724475715.webp', '2024-08-24 03:01:55', '2024-08-24 03:01:55'),
(259, 24, 58, 720.00, '-TRANSPARENT', '5', '_24_1724475715.webp', '2024-08-24 03:01:55', '2024-08-24 03:01:55'),
(260, 26, 58, 720.00, '-ROSEPINK', '5', '_26_1724475715.webp', '2024-08-24 03:01:56', '2024-08-24 03:01:56'),
(261, 10, 59, 1860.00, '-BLACK', '4', '_10_1724476364.webp', '2024-08-24 03:12:44', '2024-08-24 03:12:44'),
(262, 23, 59, 1860.00, '-GOLDEN', '4', '_23_1724476364.webp', '2024-08-24 03:12:44', '2024-08-24 03:12:44'),
(263, 10, 60, 1850.00, '-BLACK', '3', '-BLACK_10_1724494760.webp', '2024-08-24 08:19:19', '2024-08-24 08:19:20'),
(264, 20, 64, 1290.00, '-PURPLE', '2', '_20_1724747337.webp', '2024-08-27 06:28:57', '2024-08-27 06:28:57'),
(265, 23, 64, 1290.00, '-GOLDEN', '2', '_23_1724747337.webp', '2024-08-27 06:28:58', '2024-08-27 06:28:58'),
(266, 26, 64, 1290.00, '-ROSEPINK', '4', '_26_1724747338.webp', '2024-08-27 06:28:58', '2024-08-27 06:28:58'),
(267, 10, 65, 990.00, '-BLACK', '3', '_10_1724747508.webp', '2024-08-27 06:31:48', '2024-08-27 06:31:48'),
(268, 28, 65, 990.00, '-BROWN', '3', '_28_1724747508.webp', '2024-08-27 06:31:48', '2024-08-27 06:31:48'),
(269, 31, 65, 990.00, '-GREEN', '3', '_31_1724747508.webp', '2024-08-27 06:31:48', '2024-08-27 06:31:48'),
(270, 10, 66, 990.00, '-BLACK', '2', '_10_1724747917.webp', '2024-08-27 06:38:37', '2024-08-27 06:38:37'),
(271, 18, 66, 990.00, '-MAROON', '2', '_18_1724747917.webp', '2024-08-27 06:38:37', '2024-08-27 06:38:37'),
(272, 20, 66, 990.00, '-PURPLE', '2', '_20_1724747917.webp', '2024-08-27 06:38:37', '2024-08-27 06:38:37'),
(273, 24, 66, 990.00, '-TRANSPARENT', '2', '_24_1724747917.webp', '2024-08-27 06:38:37', '2024-08-27 06:38:37'),
(274, 10, 67, 770.00, '-BLACK', '2', '_10_1724834843.webp', '2024-08-28 06:47:23', '2024-08-28 06:47:23'),
(275, 16, 67, 770.00, '-BLUE', '2', '_16_1724834843.webp', '2024-08-28 06:47:23', '2024-08-28 06:47:23'),
(276, 24, 67, 770.00, '-TRANSPARENT', '2', '_24_1724834843.webp', '2024-08-28 06:47:23', '2024-08-28 06:47:23'),
(277, 26, 67, 770.00, '-ROSEPINK', '2', '_26_1724834843.webp', '2024-08-28 06:47:23', '2024-08-28 06:47:23'),
(278, 10, 68, 1090.00, '-BLACK', '3', '_10_1724835095.webp', '2024-08-28 06:51:35', '2024-08-28 06:51:35'),
(279, 21, 68, 1090.00, '-GRAY', '3', '_21_1724835095.webp', '2024-08-28 06:51:35', '2024-08-28 06:51:35'),
(280, 26, 68, 1089.98, '-ROSEPINK', '3', '_26_1724835095.webp', '2024-08-28 06:51:35', '2024-08-28 06:51:35'),
(281, 10, 80, 1300.00, '-BLACK', '2', '_10_1724836003.webp', '2024-08-28 07:06:43', '2024-08-28 07:06:43'),
(282, 11, 80, 1300.00, '-WHITE', '4', '_11_1724836003.webp', '2024-08-28 07:06:43', '2024-08-28 07:06:43'),
(283, 21, 80, 1300.00, '-GRAY', '4', '_21_1724836003.webp', '2024-08-28 07:06:43', '2024-08-28 07:06:43'),
(284, 26, 80, 1300.00, '-ROSEPINK', '4', '_26_1724836003.webp', '2024-08-28 07:06:43', '2024-08-28 07:06:43'),
(285, 10, 79, 890.00, '-BLACK', '5', '_10_1724836749.webp', '2024-08-28 07:19:09', '2024-08-28 07:19:09'),
(286, 16, 79, 890.00, '-BLUE', '5', '_16_1724836749.webp', '2024-08-28 07:19:09', '2024-08-28 07:19:09'),
(287, 28, 79, 890.00, '-BROWN', '5', '_28_1724836749.webp', '2024-08-28 07:19:09', '2024-08-28 07:19:09'),
(288, 10, 81, 1299.00, '-BLACK', '3', '_10_1724930534.webp', '2024-08-29 09:22:14', '2024-08-29 09:22:14'),
(289, 11, 81, 1299.00, '-WHITE', '3', '_11_1724930534.webp', '2024-08-29 09:22:14', '2024-08-29 09:22:14'),
(290, 21, 81, 1299.00, '-GRAY', '2', '_21_1724930534.webp', '2024-08-29 09:22:14', '2024-08-29 09:22:14'),
(291, 22, 81, 1299.00, '-PITCH', '0', '_22_1724930534.webp', '2024-08-29 09:22:14', '2024-09-02 08:37:12'),
(292, 10, 82, 1300.00, '-BLACK', '2', '_10_1724931184.webp', '2024-08-29 09:33:04', '2024-08-29 09:33:04'),
(293, 21, 82, 1300.00, '-GRAY', '2', '_21_1724931184.webp', '2024-08-29 09:33:04', '2024-08-29 09:33:04'),
(294, 24, 82, 1300.00, '-TRANSPARENT', '4', '_24_1724931184.webp', '2024-08-29 09:33:04', '2024-08-29 09:33:04'),
(295, 26, 82, 1300.00, '-ROSEPINK', '3', '_26_1724931184.webp', '2024-08-29 09:33:04', '2024-08-29 09:33:04'),
(296, 10, 83, 890.00, '-BLACK', '0', '_10_1724931415.webp', '2024-08-29 09:36:55', '2024-08-29 09:36:55'),
(297, 20, 83, 890.00, '-PURPLE', '0', '_20_1724931415.webp', '2024-08-29 09:36:55', '2024-08-29 09:36:55'),
(298, 10, 128, 1390.00, '-BLACK', '2', '-BLACK_10_1725789009.webp', '2024-09-08 07:50:09', '2024-09-08 07:50:09'),
(299, 11, 128, 1390.00, '-WHITE', '4', '-WHITE_11_1725789009.webp', '2024-09-08 07:50:09', '2024-09-08 07:50:09'),
(300, 21, 128, 1390.00, '-GRAY', '4', '-GRAY_21_1725789009.webp', '2024-09-08 07:50:09', '2024-09-08 07:50:09'),
(301, 22, 128, 1390.00, '-PITCH', '4', '-PITCH_22_1725789009.webp', '2024-09-08 07:50:09', '2024-09-08 07:50:09'),
(302, 16, 129, 1850.00, '-BLUE', '2', '-BLUE_16_1725789700.webp', '2024-09-08 08:01:40', '2024-09-08 08:01:40'),
(303, 18, 129, 1850.00, '-MAROON', '3', '-MAROON_18_1725789700.webp', '2024-09-08 08:01:40', '2024-09-08 08:01:40'),
(304, 25, 129, 1850.00, '-DEEP PURPLE', '3', '-DEEP PURPLE_25_1725789700.webp', '2024-09-08 08:01:40', '2024-09-08 08:01:40'),
(305, 26, 129, 1850.00, '-ROSEPINK', '3', '-ROSEPINK_26_1725789700.webp', '2024-09-08 08:01:40', '2024-09-08 08:01:40'),
(306, 28, 129, 1850.00, '-BROWN', '2', '-BROWN_28_1725789700.webp', '2024-09-08 08:01:40', '2024-09-08 08:01:40'),
(311, 10, 132, 4500.00, '-BLACK', '2', '-BLACK_10_1726379565.webp', '2024-09-15 03:52:45', '2024-09-15 03:52:45'),
(312, 16, 132, 4500.00, '-BLUE', '2', '-BLUE_16_1726379565.webp', '2024-09-15 03:52:45', '2024-09-15 03:52:45'),
(313, 17, 132, 4500.00, '-RED', '2', '-RED_17_1726379565.webp', '2024-09-15 03:52:45', '2024-09-15 03:52:45'),
(314, 28, 132, 4500.00, '-BROWN', '2', '-BROWN_28_1726379565.webp', '2024-09-15 03:52:45', '2024-09-15 03:52:45'),
(315, 10, 133, 4500.00, '-BLACK', '2', '-BLACK_10_1726380388.webp', '2024-09-15 04:06:28', '2024-09-15 04:06:28'),
(316, 11, 133, 4500.00, '-WHITE', '2', '-WHITE_11_1726380388.webp', '2024-09-15 04:06:28', '2024-09-15 04:06:28'),
(317, 17, 133, 4499.99, '-RED', '2', '-RED_17_1726380388.webp', '2024-09-15 04:06:28', '2024-09-15 04:06:28'),
(318, 18, 133, 4500.00, '-MAROON', '2', '-MAROON_18_1726380388.webp', '2024-09-15 04:06:28', '2024-09-15 04:06:28'),
(319, 23, 133, 4499.94, '-GOLDEN', '2', '-GOLDEN_23_1726380388.webp', '2024-09-15 04:06:28', '2024-09-15 04:06:28'),
(321, 11, 134, 1100.00, '-WHITE', '3', '-WHITE_11_1727511766.webp', '2024-09-28 06:22:46', '2024-09-28 06:22:46'),
(322, 16, 134, 1100.00, '-BLUE', '3', '-BLUE_16_1727511766.webp', '2024-09-28 06:22:46', '2024-09-28 06:22:46'),
(323, 21, 134, 1100.00, '-GRAY', '3', '-GRAY_21_1727511766.webp', '2024-09-28 06:22:46', '2024-09-28 06:22:46'),
(324, 26, 134, 1100.00, '-ROSEPINK', '4', '-ROSEPINK_26_1727511766.webp', '2024-09-28 06:22:46', '2024-09-28 06:22:46'),
(335, 10, 136, 1350.00, '-BLACK', '3', '-BLACK_10_1731423849.jpg', '2024-11-12 14:04:09', '2024-11-12 14:04:09'),
(336, 16, 136, 1350.00, '-BLUE', '3', '-BLUE_16_1731423849.jpg', '2024-11-12 14:04:09', '2024-11-12 14:04:09'),
(337, 20, 136, 1350.00, '-PURPLE', '3', '-PURPLE_20_1731423849.jpg', '2024-11-12 14:04:09', '2024-11-12 14:04:09'),
(338, 22, 136, 1350.00, '-PITCH', '3', '-PITCH_22_1731423849.jpg', '2024-11-12 14:04:09', '2024-11-12 14:04:09'),
(339, 26, 136, 1350.00, '-ROSEPINK', '3', '-ROSEPINK_26_1731423849.jpg', '2024-11-12 14:04:09', '2024-11-12 14:04:09'),
(340, 10, 137, 3.00, '-BLACK', '1350', '-BLACK_10_1731528035.jpg', '2024-11-13 19:00:35', '2024-11-13 19:00:35'),
(341, 16, 137, 3.00, '-BLUE', '13500', '-BLUE_16_1731528035.jpg', '2024-11-13 19:00:36', '2024-11-13 19:00:36'),
(342, 17, 137, 3.00, '-RED', '1350', '-RED_17_1731528036.jpg', '2024-11-13 19:00:36', '2024-11-13 19:00:36'),
(343, 20, 137, 3.00, '-PURPLE', '1350', '-PURPLE_20_1731528036.jpg', '2024-11-13 19:00:36', '2024-11-13 19:00:36'),
(344, 28, 137, 3.00, '-BROWN', '1350', '-BROWN_28_1731528036.jpg', '2024-11-13 19:00:36', '2024-11-13 19:00:36'),
(345, 10, 138, 1300.00, '-BLACK', '3', '-BLACK_10_1733309826.jpg', '2024-12-04 09:57:06', '2024-12-04 09:57:06'),
(346, 17, 138, 1300.00, '-RED', '3', '-RED_17_1733309826.jpg', '2024-12-04 09:57:06', '2024-12-04 09:57:06'),
(347, 21, 138, 1300.00, '-GRAY', '3', '-GRAY_21_1733309826.jpg', '2024-12-04 09:57:06', '2024-12-04 09:57:06'),
(348, 28, 138, 1300.00, '-BROWN', '3', '-BROWN_28_1733309826.jpg', '2024-12-04 09:57:06', '2024-12-04 09:57:06'),
(349, 10, 139, 1350.00, '-BLACK', '5', '-BLACK_10_1733493892.jpg', '2024-12-06 13:04:53', '2024-12-06 13:04:53'),
(350, 23, 139, 1350.00, '-GOLDEN', '5', '-GOLDEN_23_1733493893.jpg', '2024-12-06 13:04:53', '2024-12-06 13:04:53'),
(351, 24, 139, 1350.00, '-TRANSPARENT', '5', '-TRANSPARENT_24_1733493893.jpg', '2024-12-06 13:04:53', '2024-12-06 13:04:53'),
(352, 10, 140, 2100.00, '-BLACK', '3', '-BLACK_10_1733494580.jpg', '2024-12-06 13:16:20', '2024-12-06 13:16:20'),
(353, 16, 140, 2100.00, '-BLUE', '1', '-BLUE_16_1733494580.jpg', '2024-12-06 13:16:20', '2024-12-06 13:16:20'),
(354, 23, 140, 2100.00, '-GOLDEN', '4', '-GOLDEN_23_1733494580.jpg', '2024-12-06 13:16:20', '2024-12-06 13:16:20'),
(355, 28, 140, 2100.00, '-BROWN', '2', '-BROWN_28_1733494580.jpg', '2024-12-06 13:16:20', '2024-12-06 13:16:20');

-- --------------------------------------------------------

--
-- Table structure for table `product_overviews`
--

CREATE TABLE `product_overviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `overview_name` varchar(255) DEFAULT NULL,
  `overview_value` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_overviews`
--

INSERT INTO `product_overviews` (`id`, `product_id`, `overview_name`, `overview_value`, `created_at`, `updated_at`) VALUES
(74, 40, 'Type Of Packing :', 'asa', '2024-05-02 09:08:23', '2024-05-02 09:08:23'),
(75, 45, 'Frame:', 'Optical grade plastic', '2024-05-02 09:42:16', '2024-05-02 09:42:16'),
(82, 50, 'Type Of Packing :', 'Normal Packaging', '2024-05-30 10:41:57', '2024-05-30 10:41:57'),
(83, 51, 'Type Of Packing :', 'Normal Packaging', '2024-05-31 04:02:12', '2024-05-31 04:02:12'),
(84, 52, 'Type Of Packing :', 'Classic packaging with selvet and box, wrap with mailer poly', '2024-05-31 04:47:24', '2024-05-31 04:47:24'),
(85, 53, 'Type Of Packing :', 'Wrap with mailer poly including box and selvet', '2024-05-31 04:54:33', '2024-05-31 04:54:33'),
(86, 54, 'Type Of Packing :', 'Packed with selvet and box, warped with mailer poly', '2024-05-31 07:51:46', '2024-05-31 07:51:46'),
(87, 55, 'Type Of Packing :', 'Packed in box with selvet, wrapped with mailer poly.', '2024-05-31 08:44:22', '2024-05-31 08:44:22'),
(88, 56, 'Type Of Packing :', 'Packed with box and salved, wrapped with mailer poly', '2024-05-31 18:10:12', '2024-05-31 18:10:12'),
(89, 57, 'Type Of Packing :', 'Packed with box and salved, wrapped with mailer poly', '2024-05-31 18:14:53', '2024-05-31 18:14:53'),
(90, 58, 'Type Of Packing :', 'Packed with box and salved, wrapped with mailer poly', '2024-05-31 18:21:14', '2024-05-31 18:21:14'),
(91, 59, 'Type Of Packing :', 'Packed with Chain box and salved, wrapped with mailer poly', '2024-05-31 18:59:08', '2024-05-31 18:59:08'),
(92, 60, 'Type Of Packing :', 'Packed with Chain box and salved, wrapped with mailer poly', '2024-05-31 19:04:48', '2024-05-31 19:04:48'),
(93, 61, 'Type Of Packing :', 'Packed with Chain box and salved, wrapped with mailer poly', '2024-05-31 19:07:17', '2024-05-31 19:07:17'),
(94, 62, 'Type Of Packing :', 'Packed with Chain box and salved, wrapped with mailer poly', '2024-05-31 19:11:44', '2024-05-31 19:11:44'),
(95, 63, 'Type Of Packing :', 'Packed with Chain box and salved, wrapped with mailer poly', '2024-05-31 19:16:56', '2024-05-31 19:16:56'),
(96, 64, 'Type Of Packing :', 'Packed with box and salved, wrapped with mailer poly', '2024-05-31 19:30:32', '2024-05-31 19:30:32'),
(97, 65, 'Type Of Packing :', 'Packed with box and salved, wrapped with mailer poly', '2024-06-01 07:13:01', '2024-06-01 07:13:01'),
(98, 66, 'Type Of Packing :', 'Packed with box and salved, wrapped with mailer poly', '2024-06-01 07:28:06', '2024-06-01 07:28:06'),
(99, 67, 'Type Of Packing :', 'Packed with box and salved, wrapped with mailer poly', '2024-06-01 07:45:05', '2024-06-01 07:45:05'),
(100, 68, 'Type Of Packing :', 'Packed with box and salved, wrapped with mailer poly', '2024-06-01 07:49:59', '2024-06-01 07:49:59'),
(101, 69, 'Type Of Packing :', 'Packed with Chain box and salved, wrapped with mailer poly', '2024-06-01 18:27:00', '2024-06-01 18:27:00'),
(102, 70, 'Type Of Packing :', 'Packed with Chain box and salved, wrapped with mailer poly', '2024-06-01 18:32:39', '2024-06-01 18:32:39'),
(103, 71, 'Type Of Packing :', 'Packed with Chain box and salved, wrapped with mailer poly', '2024-06-01 18:37:27', '2024-06-01 18:37:27'),
(104, 72, 'Type Of Packing :', 'Packed with Chain box and salved, wrapped with mailer poly', '2024-06-01 18:39:43', '2024-06-01 18:39:43'),
(105, 73, 'Type Of Packing :', 'Packed with Chain box and salved, wrapped with mailer poly', '2024-06-01 18:47:34', '2024-06-01 18:47:34'),
(107, 79, 'Type Of Packing :', 'Packed with box and salved, wrapped with mailer poly', '2024-06-03 11:26:05', '2024-06-03 11:26:05'),
(108, 80, 'Type Of Packing :', 'Packed with box and salved, wrapped with mailer poly', '2024-06-03 17:52:12', '2024-06-03 17:52:12'),
(109, 81, 'Type Of Packing :', 'Packed with box and salved, wrapped with mailer poly', '2024-06-04 11:44:06', '2024-06-04 11:44:06'),
(110, 82, 'Type Of Packing :', 'Packed with box and salved, wrapped with mailer poly', '2024-06-04 12:25:20', '2024-06-04 12:25:20'),
(111, 83, 'Type Of Packing :', 'Packed with box and salved, wrapped with mailer poly', '2024-06-04 19:40:14', '2024-06-04 19:40:14'),
(112, 84, 'Type Of Packing :', 'Packed with box and salved, wrapped with mailer poly', '2024-06-05 03:19:19', '2024-06-05 03:19:19'),
(113, 85, 'Type Of Packing :', 'Packed with box and salved, wrapped with mailer poly', '2024-06-05 03:21:06', '2024-06-05 03:21:06'),
(114, 86, 'Type Of Packing :', 'Packed with bubblewrap and mailer poly', '2024-06-25 07:18:35', '2024-06-25 07:18:35'),
(115, 87, 'Type Of Packing :', 'Packed with bubblewrap and mailer poly', '2024-06-25 07:19:23', '2024-06-25 07:19:23'),
(116, 88, 'Type Of Packing :', 'Packed with bubblewrap and mailer poly', '2024-06-25 07:20:19', '2024-06-25 07:20:19'),
(117, 89, 'Type Of Packing :', 'Packed with bubblewrap and mailer poly', '2024-06-25 07:26:15', '2024-06-25 07:26:15'),
(118, 90, 'Type Of Packing :', 'Packed with bubblewrap and mailer poly', '2024-06-25 07:27:25', '2024-06-25 07:27:25'),
(119, 91, 'Type Of Packing :', 'Packed with bubblewrap and mailer poly', '2024-06-25 07:28:12', '2024-06-25 07:28:12'),
(120, 92, 'Type Of Packing :', 'Packed with bubblewrap and mailer poly', '2024-06-25 07:28:50', '2024-06-25 07:28:50'),
(121, 93, 'Type Of Packing :', 'Packed with bubblewrap and mailer poly', '2024-06-25 07:29:38', '2024-06-25 07:29:38'),
(122, 94, 'Type Of Packing :', 'Packed with Chain box and salved, wrapped with mailer poly', '2024-06-25 07:30:22', '2024-06-25 07:30:22'),
(123, 95, 'Type Of Packing :', 'Packed with Chain box and salved, wrapped with mailer poly', '2024-06-25 07:31:01', '2024-06-25 07:31:01'),
(124, 96, 'Type Of Packing :', 'Packed with bubblewrap and mailer poly', '2024-06-25 07:31:44', '2024-06-25 07:31:44'),
(125, 97, 'Type Of Packing :', 'Packed with Chain box and salved, wrapped with mailer poly', '2024-06-25 07:32:44', '2024-06-25 07:32:44'),
(126, 98, 'Type Of Packing :', 'Packed with bubblewrap and mailer poly', '2024-06-25 07:33:29', '2024-06-25 07:33:29'),
(127, 99, 'Type Of Packing :', 'Packed with Chain box and salved, wrapped with mailer poly', '2024-06-25 07:34:26', '2024-06-25 07:34:26'),
(128, 100, 'Type Of Packing :', 'Packed with Chain box and salved, wrapped with mailer poly', '2024-06-25 07:35:16', '2024-06-25 07:35:16'),
(129, 101, 'Type Of Packing :', 'Packed with bubblewrap and mailer poly', '2024-06-27 06:27:22', '2024-06-27 06:27:22'),
(130, 102, 'Type Of Packing :', 'Packed with bubblewrap and mailer poly', '2024-06-27 06:28:48', '2024-06-27 06:28:48'),
(131, 103, 'Type Of Packing :', 'Packed with bubblewrap and mailer poly', '2024-06-27 06:30:07', '2024-06-27 06:30:07'),
(132, 104, 'Type Of Packing :', 'Packed with bubblewrap and mailer poly', '2024-06-27 06:35:22', '2024-06-27 06:35:22'),
(133, 105, 'Type Of Packing :', 'Packed with bubblewrap and mailer poly', '2024-06-27 08:41:18', '2024-06-27 08:41:18'),
(134, 106, 'Type Of Packing :', 'Packed with bubblewrap and mailer poly', '2024-06-27 08:43:04', '2024-06-27 08:43:04'),
(135, 107, 'Type Of Packing :', 'Packed with bubblewrap and mailer poly', '2024-06-27 08:44:30', '2024-06-27 08:44:30'),
(136, 108, 'Type Of Packing :', 'Packed with bubblewrap and mailer poly', '2024-06-27 08:47:30', '2024-06-27 08:47:30'),
(137, 109, 'Type Of Packing :', 'Packed with bubblewrap and mailer poly', '2024-06-27 08:48:31', '2024-06-27 08:48:31'),
(138, 110, 'Type Of Packing :', 'Packed with bubblewrap and mailer poly', '2024-06-27 08:51:33', '2024-06-27 08:51:33'),
(139, 111, 'Type Of Packing :', 'Packed with bubblewrap and mailer poly', '2024-06-27 08:52:53', '2024-06-27 08:52:53'),
(140, 112, 'Type Of Packing :', 'Packed with bubblewrap and mailer poly', '2024-06-27 08:55:19', '2024-06-27 08:55:19'),
(141, 113, 'Type Of Packing :', 'Packed with bubblewrap and mailer poly', '2024-06-27 09:01:24', '2024-06-27 09:01:24'),
(142, 114, 'Type Of Packing :', 'Packed with bubblewrap and mailer poly', '2024-06-27 09:02:16', '2024-06-27 09:02:16'),
(143, 115, 'Type Of Packing :', 'Branded Packaging', '2024-07-08 07:51:18', '2024-07-08 07:51:18'),
(144, 116, 'Type Of Packing :', 'Branded Packaging', '2024-07-08 07:53:43', '2024-07-08 07:53:43'),
(145, 117, 'Type Of Packing :', 'Branded Packaging', '2024-07-08 07:54:43', '2024-07-08 07:54:43'),
(146, 118, 'Type Of Packing :', 'Packed with box and salved, wrapped with mailer poly', '2024-07-09 07:14:37', '2024-07-09 07:14:37'),
(147, 120, 'Type Of Packing :', 'Packed with bubblewrap and mailer poly', '2024-07-12 18:04:56', '2024-07-12 18:04:56'),
(148, 121, 'Type Of Packing :', 'Packed with bubblewrap and mailer poly', '2024-07-12 18:10:02', '2024-07-12 18:10:02'),
(149, 122, 'Type Of Packing :', 'Packed with box and salved, wrapped with mailer poly', '2024-07-14 07:01:23', '2024-07-14 07:01:23'),
(150, 123, 'Type Of Packing :', 'Packed with selvet and box, warped with mailer poly', '2024-08-16 18:05:27', '2024-08-16 18:05:27'),
(151, 124, 'Type Of Packing :', 'Packed with selvet and box, warped with mailer poly', '2024-08-16 18:24:18', '2024-08-16 18:24:18'),
(152, 125, 'Type Of Packing :', 'Packed with bubblewrap and mailer poly', '2024-08-21 08:02:39', '2024-08-21 08:02:39'),
(153, 126, 'Type Of Packing :', 'Packed with bubblewrap and mailer poly', '2024-08-22 16:00:35', '2024-08-22 16:00:35'),
(154, 127, 'Type Of Packing :', 'Packed with Chain box and salved, wrapped with mailer poly', '2024-08-22 16:10:05', '2024-08-22 16:10:05'),
(155, 128, 'Type Of Packing :', 'Packed with box and salved, wrapped with mailer poly', '2024-09-08 07:50:09', '2024-09-08 07:50:09'),
(156, 129, 'Type Of Packing :', 'Packed with box and salved, wrapped with mailer poly', '2024-09-08 08:01:40', '2024-09-08 08:01:40'),
(159, 132, 'Type Of Packing :', 'Branded Packaging', '2024-09-15 03:52:45', '2024-09-15 03:52:45'),
(160, 133, 'Type Of Packing :', 'Branded Packaging', '2024-09-15 04:06:28', '2024-09-15 04:06:28'),
(161, 134, 'Type Of Packing :', 'Packed with box and salved, wrapped with mailer poly', '2024-09-28 06:22:46', '2024-09-28 06:22:46'),
(162, 135, 'Type Of Packing :', 'Packed with box and salved, wrapped with mailer poly', '2024-10-16 16:06:50', '2024-10-16 16:06:50'),
(163, 136, 'Type Of Packing :', 'Packed with bubblewrap and mailer poly', '2024-11-12 14:04:09', '2024-11-12 14:04:09'),
(164, 137, 'Type Of Packing :', 'Packed with bubblewrap and mailer poly', '2024-11-13 19:00:36', '2024-11-13 19:00:36'),
(165, 138, 'Type Of Packing :', 'Packed with bubblewrap and mailer poly', '2024-12-04 09:57:06', '2024-12-04 09:57:06'),
(166, 139, 'Type Of Packing :', 'Packed with bubblewrap and mailer poly', '2024-12-06 13:04:53', '2024-12-06 13:04:53'),
(167, 140, 'Type Of Packing :', 'Packed with bubblewrap and mailer poly', '2024-12-06 13:16:20', '2024-12-06 13:16:20'),
(172, 143, 'TEST', 'TEST', '2024-12-30 23:35:20', '2024-12-30 23:35:20'),
(173, 143, 'TEST', 'TEST', '2024-12-30 23:35:20', '2024-12-30 23:35:20'),
(174, 144, 'size', 'Xl', '2025-01-07 05:58:43', '2025-01-07 05:58:43'),
(175, 144, 'designer', 'amit', '2025-01-07 05:58:43', '2025-01-07 05:58:43');

-- --------------------------------------------------------

--
-- Table structure for table `product_prices`
--

CREATE TABLE `product_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `offer_price` varchar(255) DEFAULT NULL,
  `percentage` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_prices`
--

INSERT INTO `product_prices` (`id`, `product_id`, `offer_price`, `percentage`, `amount`, `created_at`, `updated_at`) VALUES
(21, 27, '299', '40', '200', '2024-04-08 08:59:42', '2024-05-02 12:04:23'),
(22, 28, '299', '46', '253', '2024-04-08 09:04:51', '2024-05-02 12:04:31'),
(23, 29, '0', NULL, NULL, '2024-04-08 09:11:40', '2024-04-08 09:11:40'),
(28, 40, '1500', '40.0', '1000', '2024-05-02 09:08:23', '2024-05-02 09:08:23'),
(29, 45, '0', NULL, NULL, '2024-05-02 09:42:16', '2024-05-02 09:42:16'),
(34, 50, '0', '0', '0', '2024-05-30 10:41:57', '2024-09-08 17:39:15'),
(35, 51, '650', '16', '120', '2024-05-31 04:02:12', '2024-09-08 07:12:38'),
(36, 52, '0', '0', '0', '2024-05-31 04:47:24', '2024-08-23 16:13:47'),
(37, 53, '770', '14', '130', '2024-05-31 04:54:33', '2024-08-23 16:26:46'),
(38, 54, '1490', '19', '360', '2024-05-31 07:51:46', '2024-09-08 07:11:15'),
(39, 55, '990', '18', '210', '2024-05-31 08:44:22', '2024-09-08 07:09:46'),
(40, 56, '0', '0', '0', '2024-05-31 18:10:12', '2024-08-10 07:45:34'),
(41, 57, '599', '17', '120', '2024-05-31 18:14:53', '2024-08-23 17:21:16'),
(42, 58, '599', '17', '121', '2024-05-31 18:21:14', '2024-08-24 03:01:56'),
(43, 59, '0', '0', '0', '2024-05-31 18:59:08', '2024-08-24 03:12:44'),
(44, 60, '1480', '20', '370', '2024-05-31 19:04:48', '2024-08-24 08:19:19'),
(45, 61, '1488', '20', '372', '2024-05-31 19:07:17', '2024-05-31 19:07:17'),
(46, 62, '1488', '20', '372', '2024-05-31 19:11:44', '2024-05-31 19:11:44'),
(47, 63, '1488', '20', '372', '2024-05-31 19:16:56', '2024-05-31 19:16:56'),
(48, 64, '1090', '16', '200', '2024-05-31 19:30:32', '2024-08-27 06:28:58'),
(49, 65, '0', '0', '0', '2024-06-01 07:13:01', '2024-08-27 06:31:48'),
(50, 66, '850', '14', '140', '2024-06-01 07:28:06', '2024-08-27 06:38:37'),
(51, 67, '0', '0', '0', '2024-06-01 07:45:05', '2024-08-28 06:47:23'),
(52, 68, '890', '18', '200', '2024-06-01 07:49:59', '2024-08-28 06:51:35'),
(53, 69, '-4810', '360', '6660', '2024-06-01 18:27:00', '2024-06-01 18:27:00'),
(54, 70, '1488', '19.5', '360', '2024-06-01 18:32:39', '2024-06-01 18:32:39'),
(55, 71, '1491', '19.4', '360', '2024-06-01 18:37:27', '2024-06-01 18:37:27'),
(56, 72, '1490', '19.5', '360', '2024-06-01 18:39:43', '2024-06-01 18:39:43'),
(57, 73, '-2250', '250', '3750', '2024-06-01 18:47:34', '2024-06-01 18:47:34'),
(59, 79, '750', '16', '140', '2024-06-03 11:26:05', '2024-08-28 07:19:09'),
(60, 80, '999', '23', '301', '2024-06-03 17:52:12', '2024-09-10 06:37:28'),
(61, 81, '999', '23', '300', '2024-06-04 11:44:06', '2024-09-08 07:10:16'),
(62, 82, '999', '23', '301', '2024-06-04 12:25:20', '2024-08-29 09:33:04'),
(63, 83, '750', '16', '140', '2024-06-04 19:40:14', '2024-08-29 09:36:55'),
(64, 84, '699', '24.0', '221', '2024-06-05 03:19:19', '2024-06-05 03:19:19'),
(65, 85, '0', '0', '0', '2024-06-05 03:21:06', '2024-06-05 06:15:37'),
(66, 86, '0', '0', '0', '2024-06-25 07:18:35', '2024-06-25 07:18:35'),
(67, 87, '0', '0', '0', '2024-06-25 07:19:23', '2024-06-25 07:19:23'),
(68, 88, '0', '0', '0', '2024-06-25 07:20:19', '2024-06-25 07:20:19'),
(69, 89, '0', '0', '0', '2024-06-25 07:26:15', '2024-06-25 07:26:15'),
(70, 90, '0', '0', '0', '2024-06-25 07:27:25', '2024-06-25 07:27:25'),
(71, 91, '0', '0', '0', '2024-06-25 07:28:12', '2024-06-25 07:28:12'),
(72, 92, '0', '0', '0', '2024-06-25 07:28:50', '2024-06-25 07:28:50'),
(73, 93, '0', '0', '0', '2024-06-25 07:29:38', '2024-06-25 07:29:38'),
(74, 94, '0', '0', '0', '2024-06-25 07:30:22', '2024-06-25 07:30:22'),
(75, 95, '0', '0', '0', '2024-06-25 07:31:01', '2024-06-25 07:31:01'),
(76, 96, '0', '0', '0', '2024-06-25 07:31:44', '2024-06-25 07:31:44'),
(77, 97, '0', '0', '0', '2024-06-25 07:32:44', '2024-06-25 07:32:44'),
(78, 98, '0', '0', '0', '2024-06-25 07:33:29', '2024-06-25 07:33:29'),
(79, 99, '0', '0', '0', '2024-06-25 07:34:26', '2024-06-25 07:34:26'),
(80, 100, '0', '0', '0', '2024-06-25 07:35:16', '2024-06-25 07:35:16'),
(81, 101, '0', '0', '0', '2024-06-27 06:27:22', '2024-06-27 06:27:22'),
(82, 102, '0', '0', '0', '2024-06-27 06:28:48', '2024-06-27 06:28:48'),
(83, 103, '0', '0', '0', '2024-06-27 06:30:07', '2024-06-27 06:30:07'),
(84, 104, '0', '0', '0', '2024-06-27 06:35:22', '2024-06-27 06:35:22'),
(85, 105, '0', '0', '0', '2024-06-27 08:41:18', '2024-06-27 08:41:18'),
(86, 106, '0', '0', '0', '2024-06-27 08:43:04', '2024-06-27 08:43:04'),
(87, 107, '0', '0', '0', '2024-06-27 08:44:30', '2024-06-27 08:44:30'),
(88, 108, '0', '0', '0', '2024-06-27 08:47:30', '2024-06-27 08:47:30'),
(89, 109, '0', '0', '0', '2024-06-27 08:48:31', '2024-06-27 08:48:31'),
(90, 110, '0', '0', '0', '2024-06-27 08:51:33', '2024-06-27 08:51:33'),
(91, 111, '0', '0', '0', '2024-06-27 08:52:53', '2024-06-27 08:52:53'),
(92, 112, '0', '0', '0', '2024-06-27 08:55:19', '2024-06-27 08:55:19'),
(93, 113, '0', '0', '0', '2024-06-27 09:01:24', '2024-06-27 09:01:24'),
(94, 114, '0', '0', '0', '2024-06-27 09:02:16', '2024-06-27 09:02:16'),
(95, 115, '0', '0', '0', '2024-07-08 07:51:18', '2024-07-08 07:51:18'),
(96, 116, '0', '0', '0', '2024-07-08 07:53:43', '2024-07-08 07:53:43'),
(97, 117, '0', '0', '0', '2024-07-08 07:54:43', '2024-07-08 07:54:43'),
(98, 118, '0', '0', '0', '2024-07-09 07:14:37', '2024-09-08 07:15:37'),
(99, 120, '0', '0', '0', '2024-07-12 18:04:56', '2024-07-12 18:04:56'),
(100, 121, '0', '0', '0', '2024-07-12 18:10:02', '2024-07-12 18:10:02'),
(101, 122, '2790', '4', '110', '2024-07-14 07:01:23', '2024-07-14 07:01:23'),
(102, 123, '599', '20', '151', '2024-08-16 18:05:27', '2024-08-27 06:05:57'),
(103, 124, '1499', '27', '551', '2024-08-16 18:24:18', '2024-08-16 18:24:18'),
(104, 125, '1490', '24', '460', '2024-08-21 08:02:39', '2024-08-21 08:02:39'),
(105, 126, '990', '9', '100', '2024-08-22 16:00:35', '2024-08-22 16:00:35'),
(106, 127, '1160', '7', '90', '2024-08-22 16:10:05', '2024-08-22 16:10:05'),
(107, 128, '1050', '24', '340', '2024-09-08 07:50:09', '2024-09-08 07:50:09'),
(108, 129, '1490', '19', '360', '2024-09-08 08:01:40', '2024-09-08 08:01:40'),
(111, 132, '3900', '13', '600', '2024-09-15 03:52:45', '2024-09-15 03:52:45'),
(112, 133, '3900', '13', '600', '2024-09-15 04:06:28', '2024-09-15 04:06:28'),
(113, 134, '850', '23', '250', '2024-09-28 06:22:46', '2024-09-28 06:22:46'),
(114, 135, '1250', '21', '340', '2024-10-16 16:06:50', '2024-10-16 16:11:15'),
(115, 136, '1090', '19', '260', '2024-11-12 14:04:09', '2024-11-12 14:04:09'),
(116, 137, '1090', '19', '260', '2024-11-13 19:00:36', '2024-11-13 19:00:36'),
(117, 138, '990', '24', '310', '2024-12-04 09:57:06', '2024-12-04 09:57:06'),
(118, 139, '990', '27', '360', '2024-12-06 13:04:53', '2024-12-06 13:04:53'),
(119, 140, '1601', '24', '499', '2024-12-06 13:16:20', '2024-12-06 13:16:20'),
(122, 143, '5000', '29', '2002', '2024-12-30 23:35:20', '2024-12-30 23:39:57'),
(123, 144, '0', NULL, NULL, '2025-01-07 05:58:43', '2025-01-07 05:58:43');

-- --------------------------------------------------------

--
-- Table structure for table `product_stocks`
--

CREATE TABLE `product_stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED NOT NULL,
  `inStock` varchar(255) NOT NULL DEFAULT '0',
  `outStock` varchar(255) NOT NULL DEFAULT '0',
  `price` varchar(255) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_stocks`
--

INSERT INTO `product_stocks` (`id`, `product_id`, `color_id`, `inStock`, `outStock`, `price`, `purchase_date`, `created_at`, `updated_at`) VALUES
(52, 50, 10, '3', '0', NULL, NULL, '2024-05-30 10:41:56', '2024-09-26 15:31:16'),
(53, 50, 16, '3', '0', NULL, NULL, '2024-05-30 10:41:57', '2024-09-26 15:31:16'),
(54, 51, 10, '9', '0', NULL, NULL, '2024-05-31 04:02:11', '2024-11-26 17:27:30'),
(55, 51, 16, '0', '1', NULL, NULL, '2024-05-31 04:02:11', '2024-11-26 17:27:30'),
(56, 51, 18, '3', '0', NULL, NULL, '2024-05-31 04:02:11', '2024-11-26 17:27:30'),
(57, 51, 19, '-1', '0', NULL, NULL, '2024-05-31 04:02:11', '2024-11-26 17:27:30'),
(58, 51, 20, '2', '0', NULL, NULL, '2024-05-31 04:02:11', '2024-11-26 17:27:30'),
(59, 51, 21, '9', '0', NULL, NULL, '2024-05-31 04:02:12', '2024-11-26 17:27:30'),
(60, 51, 22, '3', '0', NULL, NULL, '2024-05-31 04:02:12', '2024-11-26 17:27:30'),
(61, 51, 25, '9', '0', NULL, NULL, '2024-05-31 04:02:12', '2024-11-26 17:27:30'),
(62, 52, 10, '4', '0', '900', NULL, '2024-05-31 04:47:23', '2024-08-23 16:13:47'),
(63, 52, 17, '4', '0', '900', NULL, '2024-05-31 04:47:24', '2024-08-23 16:13:47'),
(64, 52, 20, '4', '0', '900', NULL, '2024-05-31 04:47:24', '2024-08-23 16:13:47'),
(65, 52, 25, '4', '0', '900', NULL, '2024-05-31 04:47:24', '2024-08-23 16:13:47'),
(66, 52, 26, '4', '0', '900', NULL, '2024-05-31 04:47:24', '2024-08-23 16:13:47'),
(67, 53, 10, '2', '0', NULL, NULL, '2024-05-31 04:54:32', '2024-10-05 04:03:28'),
(68, 53, 17, '2', '0', NULL, NULL, '2024-05-31 04:54:32', '2024-10-05 04:03:28'),
(69, 53, 20, '0', '0', NULL, NULL, '2024-05-31 04:54:32', '2024-10-05 04:03:28'),
(70, 53, 25, '3', '0', NULL, NULL, '2024-05-31 04:54:33', '2024-10-05 04:03:28'),
(71, 53, 26, '0', '0', NULL, NULL, '2024-05-31 04:54:33', '2024-10-05 04:03:28'),
(72, 54, 10, '2', '0', NULL, NULL, '2024-05-31 07:51:45', '2024-10-05 04:05:03'),
(73, 54, 16, '3', '0', NULL, NULL, '2024-05-31 07:51:45', '2024-10-05 04:05:03'),
(74, 54, 17, '1', '0', NULL, NULL, '2024-05-31 07:51:46', '2024-10-05 04:05:03'),
(75, 54, 20, '0', '0', NULL, NULL, '2024-05-31 07:51:46', '2024-10-05 04:05:03'),
(76, 54, 23, '2', '0', NULL, NULL, '2024-05-31 07:51:46', '2024-10-05 04:05:03'),
(77, 54, 27, '3', '0', NULL, NULL, '2024-05-31 07:51:46', '2024-10-05 04:05:03'),
(78, 55, 10, '9', '0', NULL, NULL, '2024-05-31 08:44:21', '2024-10-12 12:50:37'),
(79, 55, 18, '0', '0', NULL, NULL, '2024-05-31 08:44:21', '2024-10-12 12:50:37'),
(80, 55, 21, '2', '0', NULL, NULL, '2024-05-31 08:44:21', '2024-10-12 12:50:37'),
(81, 55, 23, '0', '0', NULL, NULL, '2024-05-31 08:44:22', '2024-10-12 12:50:37'),
(82, 55, 26, '2', '0', NULL, NULL, '2024-05-31 08:44:22', '2024-10-12 12:50:37'),
(83, 56, 10, '3', '0', NULL, NULL, '2024-05-31 18:10:11', '2024-11-26 17:27:01'),
(84, 56, 11, '3', '0', NULL, NULL, '2024-05-31 18:10:12', '2024-11-26 17:27:01'),
(85, 56, 16, '3', '0', NULL, NULL, '2024-05-31 18:10:12', '2024-11-26 17:27:01'),
(86, 56, 23, '2', '0', NULL, NULL, '2024-05-31 18:10:12', '2024-11-26 17:27:01'),
(87, 56, 26, '5', '0', NULL, NULL, '2024-05-31 18:10:12', '2024-11-26 17:27:01'),
(88, 57, 10, '5', '0', NULL, NULL, '2024-05-31 18:14:52', '2024-10-05 04:07:50'),
(89, 57, 16, '5', '0', NULL, NULL, '2024-05-31 18:14:52', '2024-10-05 04:07:50'),
(90, 57, 21, '0', '0', NULL, NULL, '2024-05-31 18:14:52', '2024-10-05 04:07:50'),
(91, 57, 23, '2', '0', NULL, NULL, '2024-05-31 18:14:53', '2024-10-05 04:07:50'),
(92, 57, 24, '3', '0', NULL, NULL, '2024-05-31 18:14:53', '2024-10-05 04:07:50'),
(93, 57, 26, '3', '0', NULL, NULL, '2024-05-31 18:14:53', '2024-10-05 04:07:50'),
(94, 58, 10, '5', '0', NULL, NULL, '2024-05-31 18:21:13', '2024-10-05 04:08:42'),
(95, 58, 16, '2', '0', NULL, NULL, '2024-05-31 18:21:13', '2024-10-05 04:08:42'),
(96, 58, 21, '0', '0', NULL, NULL, '2024-05-31 18:21:13', '2024-10-05 04:08:42'),
(97, 58, 23, '2', '0', NULL, NULL, '2024-05-31 18:21:13', '2024-10-05 04:08:42'),
(98, 58, 24, '3', '0', NULL, NULL, '2024-05-31 18:21:14', '2024-10-05 04:08:42'),
(99, 58, 26, '1', '0', NULL, NULL, '2024-05-31 18:21:14', '2024-10-05 04:08:42'),
(100, 59, 10, '5', '0', NULL, NULL, '2024-05-31 18:59:08', '2024-10-05 04:09:22'),
(101, 59, 23, '4', '0', NULL, NULL, '2024-05-31 18:59:08', '2024-10-05 04:09:22'),
(102, 60, 10, '11', '0', '1850', NULL, '2024-05-31 19:04:48', '2024-08-24 08:19:20'),
(103, 60, 26, '5', '0', '1860', NULL, '2024-05-31 19:04:48', '2024-05-31 19:04:48'),
(104, 60, 28, '5', '0', '1860', NULL, '2024-05-31 19:04:48', '2024-05-31 19:04:48'),
(105, 61, 10, '5', '0', '1860', NULL, '2024-05-31 19:07:17', '2024-05-31 19:07:17'),
(106, 61, 28, '5', '0', '1859.98', NULL, '2024-05-31 19:07:17', '2024-05-31 19:07:17'),
(107, 62, 10, '5', '0', '1860', NULL, '2024-05-31 19:11:44', '2024-05-31 19:11:44'),
(108, 62, 26, '5', '0', '1860', NULL, '2024-05-31 19:11:44', '2024-05-31 19:11:44'),
(109, 62, 28, '5', '0', '1860', NULL, '2024-05-31 19:11:44', '2024-05-31 19:11:44'),
(110, 63, 10, '5', '0', '1860', NULL, '2024-05-31 19:16:56', '2024-05-31 19:16:56'),
(111, 63, 21, '5', '0', '1860', NULL, '2024-05-31 19:16:56', '2024-05-31 19:16:56'),
(112, 63, 28, '3', '0', '1860', NULL, '2024-05-31 19:16:56', '2024-05-31 19:16:56'),
(113, 64, 10, '0', '0', NULL, NULL, '2024-05-31 19:30:31', '2024-10-12 12:51:58'),
(114, 64, 16, '0', '0', NULL, NULL, '2024-05-31 19:30:31', '2024-10-12 12:51:58'),
(115, 64, 17, '0', '0', NULL, NULL, '2024-05-31 19:30:32', '2024-10-12 12:51:58'),
(116, 64, 18, '0', '0', NULL, NULL, '2024-05-31 19:30:32', '2024-10-12 12:51:58'),
(117, 64, 20, '2', '0', NULL, NULL, '2024-05-31 19:30:32', '2024-10-12 12:51:58'),
(118, 64, 23, '3', '0', NULL, NULL, '2024-05-31 19:30:32', '2024-10-12 12:51:58'),
(119, 64, 26, '3', '0', NULL, NULL, '2024-05-31 19:30:32', '2024-10-12 12:51:58'),
(120, 65, 10, '8', '0', '990', NULL, '2024-06-01 07:13:01', '2024-08-27 06:31:48'),
(121, 65, 28, '8', '0', '990', NULL, '2024-06-01 07:13:01', '2024-08-27 06:31:48'),
(122, 65, 29, '3', '0', '990', NULL, '2024-06-01 07:13:01', '2024-06-01 07:13:01'),
(123, 66, 10, '3', '0', NULL, NULL, '2024-06-01 07:28:06', '2024-10-05 04:10:42'),
(124, 66, 18, '4', '0', NULL, NULL, '2024-06-01 07:28:06', '2024-10-05 04:10:42'),
(125, 66, 24, '2', '0', NULL, NULL, '2024-06-01 07:28:06', '2024-10-05 04:10:42'),
(126, 66, 25, '3', '0', NULL, NULL, '2024-06-01 07:28:06', '2024-10-05 04:10:42'),
(127, 66, 28, '0', '0', NULL, NULL, '2024-06-01 07:28:06', '2024-10-05 04:10:42'),
(128, 67, 10, '3', '0', '770', NULL, '2024-06-01 07:45:04', '2024-08-28 06:47:23'),
(129, 67, 11, '1', '0', '770', NULL, '2024-06-01 07:45:04', '2024-06-01 07:45:04'),
(130, 67, 20, '1', '0', '770', NULL, '2024-06-01 07:45:04', '2024-06-01 07:45:04'),
(131, 67, 21, '1', '0', '770', NULL, '2024-06-01 07:45:05', '2024-06-01 07:45:05'),
(132, 67, 23, '1', '0', '770', NULL, '2024-06-01 07:45:05', '2024-06-01 07:45:05'),
(133, 67, 24, '3', '0', '770', NULL, '2024-06-01 07:45:05', '2024-08-28 06:47:23'),
(134, 67, 26, '3', '0', '770', NULL, '2024-06-01 07:45:05', '2024-08-28 06:47:23'),
(135, 68, 10, '0', '0', NULL, NULL, '2024-06-01 07:49:59', '2024-10-12 12:51:03'),
(136, 68, 18, '0', '0', NULL, NULL, '2024-06-01 07:49:59', '2024-10-12 12:51:03'),
(137, 68, 21, '8', '0', NULL, NULL, '2024-06-01 07:49:59', '2024-10-12 12:51:03'),
(138, 68, 26, '8', '0', NULL, NULL, '2024-06-01 07:49:59', '2024-10-12 12:51:03'),
(139, 69, 10, '3', '0', '1850', NULL, '2024-06-01 18:27:00', '2024-06-01 18:27:00'),
(140, 69, 20, '3', '0', '1850', NULL, '2024-06-01 18:27:00', '2024-06-01 18:27:00'),
(141, 69, 28, '3', '0', '1849.99', NULL, '2024-06-01 18:27:00', '2024-06-01 18:27:00'),
(142, 70, 10, '3', '0', '1850', NULL, '2024-06-01 18:32:39', '2024-06-01 18:32:39'),
(143, 70, 27, '3', '0', '1850', NULL, '2024-06-01 18:32:39', '2024-06-01 18:32:39'),
(144, 70, 28, '3', '0', '1850', NULL, '2024-06-01 18:32:39', '2024-06-01 18:32:39'),
(145, 71, 10, '4', '0', '1850', NULL, '2024-06-01 18:37:27', '2024-06-01 18:37:27'),
(146, 71, 28, '4', '0', '1850', NULL, '2024-06-01 18:37:27', '2024-06-01 18:37:27'),
(147, 72, 10, '3', '0', '1850', NULL, '2024-06-01 18:39:43', '2024-06-01 18:39:43'),
(148, 72, 20, '3', '0', '1850', NULL, '2024-06-01 18:39:43', '2024-06-01 18:39:43'),
(149, 73, 10, '2', '0', '1500', NULL, '2024-06-01 18:47:34', '2024-06-01 18:47:34'),
(150, 73, 28, '2', '0', '1499.98', NULL, '2024-06-01 18:47:34', '2024-06-01 18:47:34'),
(151, 79, 10, '11', '0', '890', NULL, '2024-06-03 11:26:04', '2024-08-28 07:19:09'),
(152, 79, 16, '10', '0', '890', NULL, '2024-06-03 11:26:05', '2024-08-28 07:19:09'),
(153, 79, 20, '5', '0', '890', NULL, '2024-06-03 11:26:05', '2024-06-03 11:26:05'),
(154, 79, 23, '5', '0', '890', NULL, '2024-06-03 11:26:05', '2024-06-03 11:26:05'),
(155, 79, 28, '7', '0', '890', NULL, '2024-06-03 11:26:05', '2024-08-28 07:19:09'),
(156, 79, 29, '6', '0', '890', NULL, '2024-06-03 11:26:05', '2024-06-03 11:26:05'),
(157, 80, 10, '1', '0', NULL, NULL, '2024-06-03 17:52:12', '2024-11-29 16:25:35'),
(158, 80, 11, '2', '0', NULL, NULL, '2024-06-03 17:52:12', '2024-11-29 16:25:35'),
(159, 80, 21, '0', '0', NULL, NULL, '2024-06-03 17:52:12', '2024-11-29 16:25:35'),
(160, 80, 26, '0', '0', NULL, NULL, '2024-06-03 17:52:12', '2024-11-29 16:25:35'),
(161, 81, 10, '1', '0', NULL, NULL, '2024-06-04 11:44:05', '2024-10-12 12:50:11'),
(162, 81, 20, '-1', '0', NULL, NULL, '2024-06-04 11:44:05', '2024-10-12 12:50:11'),
(163, 81, 21, '2', '0', NULL, NULL, '2024-06-04 11:44:06', '2024-10-12 12:50:11'),
(164, 81, 24, '1', '0', NULL, NULL, '2024-06-04 11:44:06', '2024-10-12 12:50:11'),
(165, 81, 28, '1', '0', NULL, NULL, '2024-06-04 11:44:06', '2024-10-12 12:50:11'),
(166, 82, 10, '2', '0', NULL, NULL, '2024-06-04 12:25:20', '2024-10-12 12:49:10'),
(167, 82, 21, '2', '0', NULL, NULL, '2024-06-04 12:25:20', '2024-10-12 12:49:10'),
(168, 82, 24, '1', '0', NULL, NULL, '2024-06-04 12:25:20', '2024-10-12 12:49:10'),
(169, 82, 26, '1', '0', NULL, NULL, '2024-06-04 12:25:20', '2024-10-12 12:49:10'),
(170, 82, 28, '1', '0', NULL, NULL, '2024-06-04 12:25:20', '2024-10-12 12:49:10'),
(171, 83, 10, '5', '0', '890', NULL, '2024-06-04 19:40:14', '2024-08-29 09:36:55'),
(172, 83, 20, '10', '0', '890', NULL, '2024-06-04 19:40:14', '2024-08-29 09:36:55'),
(173, 84, 26, '10', '0', '920', NULL, '2024-06-05 03:19:19', '2024-06-05 03:19:19'),
(174, 84, 31, '10', '0', '919.98', NULL, '2024-06-05 03:19:19', '2024-06-05 03:19:19'),
(175, 85, 26, '30', '0', '920.00', NULL, '2024-06-05 03:21:06', '2024-06-05 06:15:55'),
(176, 85, 31, '30', '0', '919.97', NULL, '2024-06-05 03:21:06', '2024-06-05 06:15:55'),
(177, 114, 24, '10', '0', '900', NULL, '2024-07-06 10:41:28', '2024-07-06 10:41:28'),
(178, 113, 24, '1', '0', '900', NULL, '2024-07-06 10:41:58', '2024-07-06 10:41:58'),
(179, 112, 24, '8', '0', '900', NULL, '2024-07-06 10:42:32', '2024-07-06 10:42:32'),
(180, 111, 24, '10', '0', '900', NULL, '2024-07-06 10:43:17', '2024-07-06 10:43:17'),
(181, 110, 24, '10', '0', '900', NULL, '2024-07-06 10:43:48', '2024-07-06 10:43:48'),
(182, 109, 24, '10', '0', '900', NULL, '2024-07-06 10:44:45', '2024-07-06 10:44:45'),
(183, 108, 24, '10', '0', '900', NULL, '2024-07-06 10:46:18', '2024-07-06 10:46:18'),
(184, 107, 24, '10', '0', '900', NULL, '2024-07-06 10:47:09', '2024-07-06 10:47:09'),
(185, 106, 24, '10', '0', '900', NULL, '2024-07-06 10:47:52', '2024-07-06 10:47:52'),
(186, 105, 24, '10', '0', '900', NULL, '2024-07-06 10:48:29', '2024-07-06 10:48:29'),
(187, 104, 24, '10', '0', '900', NULL, '2024-07-06 10:49:15', '2024-07-06 10:49:15'),
(188, 103, 24, '10', '0', '900', NULL, '2024-07-06 10:50:39', '2024-07-06 10:50:39'),
(189, 102, 24, '10', '0', '900', NULL, '2024-07-06 10:51:21', '2024-07-06 10:51:21'),
(190, 101, 24, '10', '0', '900', NULL, '2024-07-07 09:36:00', '2024-07-07 09:36:00'),
(191, 100, 24, '10', '0', '900', NULL, '2024-07-07 09:36:41', '2024-07-07 09:36:41'),
(192, 99, 24, '10', '0', '900', NULL, '2024-07-07 09:37:22', '2024-07-07 09:37:22'),
(193, 98, 24, '10', '0', '900', NULL, '2024-07-07 09:37:53', '2024-07-07 09:37:53'),
(194, 97, 24, '10', '0', '900', NULL, '2024-07-07 09:39:06', '2024-07-07 09:39:06'),
(195, 96, 24, '10', '0', '900', NULL, '2024-07-07 09:39:49', '2024-07-07 09:39:49'),
(196, 95, 24, '9', '0', '900', NULL, '2024-07-07 09:40:23', '2024-07-07 09:40:23'),
(197, 94, 24, '10', '0', '900', NULL, '2024-07-07 09:40:55', '2024-07-07 09:40:55'),
(198, 86, 24, '10', '0', '900', NULL, '2024-07-07 09:42:12', '2024-07-07 09:42:12'),
(199, 87, 24, '9', '0', '900', NULL, '2024-07-07 09:42:45', '2024-07-07 09:42:45'),
(200, 88, 24, '10', '0', '900', NULL, '2024-07-07 09:43:15', '2024-07-07 09:43:15'),
(201, 89, 24, '9', '0', '900', NULL, '2024-07-07 09:43:47', '2024-07-07 09:43:47'),
(202, 90, 24, '8', '0', '900', NULL, '2024-07-07 09:44:18', '2024-07-07 09:44:18'),
(203, 91, 24, '10', '0', '900', NULL, '2024-07-07 09:44:48', '2024-07-07 09:44:48'),
(204, 92, 24, '8', '0', '900', NULL, '2024-07-07 09:45:17', '2024-07-07 09:45:17'),
(205, 93, 24, '10', '0', '900', NULL, '2024-07-07 09:45:47', '2024-07-07 09:45:47'),
(206, 115, 24, '10', '0', '2200', NULL, '2024-07-08 07:51:18', '2024-07-08 07:51:18'),
(207, 116, 24, '10', '0', '2200', NULL, '2024-07-08 07:53:43', '2024-07-08 07:53:43'),
(208, 117, 24, '10', '0', '2200', NULL, '2024-07-08 07:54:43', '2024-07-08 07:54:43'),
(209, 118, 28, '1', '0', '2550.00', NULL, '2024-07-09 07:14:37', '2024-09-08 07:15:37'),
(210, 120, 10, '2', '0', '2550', NULL, '2024-07-12 18:04:55', '2024-07-12 18:04:55'),
(211, 121, 16, '2', '0', '2900', NULL, '2024-07-12 18:10:02', '2024-07-12 18:10:02'),
(212, 122, 28, '2', '0', '2900', NULL, '2024-07-14 07:01:23', '2024-07-14 07:01:23'),
(218, 123, 10, '20', '0', '750.00', NULL, '2024-08-16 18:05:26', '2024-08-27 06:05:57'),
(219, 123, 16, '20', '0', '750.00', NULL, '2024-08-16 18:05:26', '2024-08-27 06:05:57'),
(220, 123, 21, '20', '0', '750.00', NULL, '2024-08-16 18:05:26', '2024-08-27 06:05:57'),
(221, 123, 22, '20', '0', '750.00', NULL, '2024-08-16 18:05:27', '2024-08-27 06:05:57'),
(222, 123, 24, '20', '0', '750.00', NULL, '2024-08-16 18:05:27', '2024-08-27 06:05:57'),
(223, 124, 10, '0', '0', NULL, NULL, '2024-08-16 18:24:17', '2024-11-06 14:12:40'),
(224, 124, 16, '5', '0', NULL, NULL, '2024-08-16 18:24:17', '2024-11-06 14:12:40'),
(225, 124, 17, '5', '0', NULL, NULL, '2024-08-16 18:24:17', '2024-11-06 14:12:40'),
(226, 124, 20, '5', '0', NULL, NULL, '2024-08-16 18:24:18', '2024-11-06 14:12:40'),
(227, 124, 28, '5', '0', NULL, NULL, '2024-08-16 18:24:18', '2024-11-06 14:12:40'),
(228, 124, 30, '5', '0', NULL, NULL, '2024-08-16 18:24:18', '2024-11-06 14:12:40'),
(229, 125, 20, '3', '0', '1950', NULL, '2024-08-21 08:02:38', '2024-08-21 08:02:38'),
(230, 125, 27, '3', '0', '1950', NULL, '2024-08-21 08:02:38', '2024-08-21 08:02:38'),
(231, 125, 28, '3', '0', '1950', NULL, '2024-08-21 08:02:39', '2024-08-21 08:02:39'),
(232, 125, 30, '3', '0', '1950', NULL, '2024-08-21 08:02:39', '2024-08-21 08:02:39'),
(233, 126, 16, '3', '0', NULL, NULL, '2024-08-22 16:00:35', '2024-11-06 14:13:19'),
(234, 126, 17, '3', '0', NULL, NULL, '2024-08-22 16:00:35', '2024-11-06 14:13:19'),
(235, 126, 20, '0', '0', NULL, NULL, '2024-08-22 16:00:35', '2024-11-06 14:13:19'),
(236, 126, 26, '3', '0', NULL, NULL, '2024-08-22 16:00:35', '2024-11-06 14:13:19'),
(237, 127, 21, '1', '0', '1250', NULL, '2024-08-22 16:10:05', '2024-08-22 16:10:05'),
(238, 50, 18, '2', '0', NULL, NULL, '2024-08-23 15:38:15', '2024-09-26 15:31:16'),
(239, 50, 19, '2', '0', NULL, NULL, '2024-08-23 15:38:15', '2024-09-26 15:31:16'),
(240, 50, 20, '3', '0', NULL, NULL, '2024-08-23 15:38:16', '2024-09-26 15:31:16'),
(241, 50, 21, '3', '0', NULL, NULL, '2024-08-23 15:38:16', '2024-09-26 15:31:16'),
(242, 50, 22, '0', '0', NULL, NULL, '2024-08-23 15:38:16', '2024-09-26 15:31:16'),
(243, 50, 26, '0', '0', NULL, NULL, '2024-08-23 15:38:16', '2024-09-26 15:31:16'),
(244, 56, 20, '0', '0', NULL, NULL, '2024-08-23 17:04:04', '2024-11-26 17:27:01'),
(245, 57, 11, '0', '0', NULL, NULL, '2024-08-23 17:21:16', '2024-10-05 04:07:50'),
(246, 57, 20, '0', '0', NULL, NULL, '2024-08-23 17:21:16', '2024-10-05 04:07:50'),
(247, 65, 31, '3', '0', '990', NULL, '2024-08-27 06:31:48', '2024-08-27 06:31:48'),
(248, 66, 20, '2', '0', NULL, NULL, '2024-08-27 06:38:37', '2024-10-05 04:10:42'),
(249, 67, 16, '2', '0', '770', NULL, '2024-08-28 06:47:23', '2024-08-28 06:47:23'),
(250, 81, 11, '0', '0', NULL, NULL, '2024-08-29 09:22:14', '2024-10-12 12:50:11'),
(251, 81, 22, '0', '0', NULL, NULL, '2024-08-29 09:22:14', '2024-10-12 12:50:11'),
(252, 128, 10, '2', '0', '1390', NULL, '2024-09-08 07:50:09', '2024-09-08 07:50:09'),
(253, 128, 11, '4', '0', '1390', NULL, '2024-09-08 07:50:09', '2024-09-08 07:50:09'),
(254, 128, 21, '4', '0', '1390', NULL, '2024-09-08 07:50:09', '2024-09-08 07:50:09'),
(255, 128, 22, '4', '0', '1390', NULL, '2024-09-08 07:50:09', '2024-09-08 07:50:09'),
(256, 129, 16, '2', '0', '1850', NULL, '2024-09-08 08:01:40', '2024-09-08 08:01:40'),
(257, 129, 18, '3', '0', '1850', NULL, '2024-09-08 08:01:40', '2024-09-08 08:01:40'),
(258, 129, 25, '3', '0', '1850', NULL, '2024-09-08 08:01:40', '2024-09-08 08:01:40'),
(259, 129, 26, '3', '0', '1850', NULL, '2024-09-08 08:01:40', '2024-09-08 08:01:40'),
(260, 129, 28, '2', '0', '1850', NULL, '2024-09-08 08:01:40', '2024-09-08 08:01:40'),
(261, 59, 16, '2', '0', NULL, NULL, '2024-09-08 17:19:02', '2024-10-05 04:09:22'),
(265, 132, 10, '2', '0', '4500', NULL, '2024-09-15 03:52:45', '2024-09-15 03:52:45'),
(266, 132, 16, '2', '0', '4500', NULL, '2024-09-15 03:52:45', '2024-09-15 03:52:45'),
(267, 132, 17, '2', '0', '4500', NULL, '2024-09-15 03:52:45', '2024-09-15 03:52:45'),
(268, 132, 28, '2', '0', '4500', NULL, '2024-09-15 03:52:45', '2024-09-15 03:52:45'),
(269, 133, 10, '2', '0', '4500', NULL, '2024-09-15 04:06:28', '2024-09-15 04:06:28'),
(270, 133, 11, '2', '0', '4500', NULL, '2024-09-15 04:06:28', '2024-09-15 04:06:28'),
(271, 133, 17, '2', '0', '4499.99', NULL, '2024-09-15 04:06:28', '2024-09-15 04:06:28'),
(272, 133, 18, '2', '0', '4500', NULL, '2024-09-15 04:06:28', '2024-09-15 04:06:28'),
(273, 133, 23, '2', '0', '4499.94', NULL, '2024-09-15 04:06:28', '2024-09-15 04:06:28'),
(274, 50, 30, '0', '0', NULL, NULL, '2024-09-23 08:40:20', '2024-09-26 15:31:16'),
(275, 134, 11, '3', '0', '1100', NULL, '2024-09-28 06:22:46', '2024-09-28 06:22:46'),
(276, 134, 16, '3', '0', '1100', NULL, '2024-09-28 06:22:46', '2024-09-28 06:22:46'),
(277, 134, 21, '3', '0', '1100', NULL, '2024-09-28 06:22:46', '2024-09-28 06:22:46'),
(278, 134, 26, '4', '0', '1100', NULL, '2024-09-28 06:22:46', '2024-09-28 06:22:46'),
(279, 135, 10, '6', '0', '1590', NULL, '2024-10-16 16:06:50', '2024-10-17 04:44:05'),
(280, 135, 16, '6', '0', '1590', NULL, '2024-10-16 16:06:50', '2024-10-17 04:44:06'),
(281, 135, 20, '6', '0', '1590', NULL, '2024-10-16 16:06:50', '2024-10-17 04:44:06'),
(282, 135, 21, '6', '0', '1590', NULL, '2024-10-16 16:06:50', '2024-10-17 04:44:06'),
(283, 135, 22, '3', '0', '1590', NULL, '2024-10-16 16:06:50', '2024-10-16 16:06:50'),
(284, 135, 23, '3', '0', '1590', NULL, '2024-10-17 04:44:06', '2024-10-17 04:44:06'),
(285, 136, 10, '3', '0', '1350', NULL, '2024-11-12 14:04:09', '2024-11-12 14:04:09'),
(286, 136, 16, '3', '0', '1350', NULL, '2024-11-12 14:04:09', '2024-11-12 14:04:09'),
(287, 136, 20, '3', '0', '1350', NULL, '2024-11-12 14:04:09', '2024-11-12 14:04:09'),
(288, 136, 22, '3', '0', '1350', NULL, '2024-11-12 14:04:09', '2024-11-12 14:04:09'),
(289, 136, 26, '3', '0', '1350', NULL, '2024-11-12 14:04:09', '2024-11-12 14:04:09'),
(290, 137, 10, '4', '0', NULL, NULL, '2024-11-13 19:00:35', '2024-11-28 14:59:59'),
(291, 137, 16, '4', '0', NULL, NULL, '2024-11-13 19:00:36', '2024-11-28 14:59:59'),
(292, 137, 17, '4', '0', NULL, NULL, '2024-11-13 19:00:36', '2024-11-28 14:59:59'),
(293, 137, 20, '4', '0', NULL, NULL, '2024-11-13 19:00:36', '2024-11-28 14:59:59'),
(294, 137, 28, '4', '0', NULL, NULL, '2024-11-13 19:00:36', '2024-11-28 14:59:59'),
(295, 138, 10, '3', '0', '1300', NULL, '2024-12-04 09:57:06', '2024-12-04 09:57:06'),
(296, 138, 17, '3', '0', '1300', NULL, '2024-12-04 09:57:06', '2024-12-04 09:57:06'),
(297, 138, 21, '3', '0', '1300', NULL, '2024-12-04 09:57:06', '2024-12-04 09:57:06'),
(298, 138, 28, '3', '0', '1300', NULL, '2024-12-04 09:57:06', '2024-12-04 09:57:06'),
(299, 139, 10, '5', '0', '1350', NULL, '2024-12-06 13:04:53', '2024-12-06 13:04:53'),
(300, 139, 23, '5', '0', '1350', NULL, '2024-12-06 13:04:53', '2024-12-06 13:04:53'),
(301, 139, 24, '5', '0', '1350', NULL, '2024-12-06 13:04:53', '2024-12-06 13:04:53'),
(302, 140, 10, '3', '0', '2100', NULL, '2024-12-06 13:16:20', '2024-12-06 13:16:20'),
(303, 140, 16, '1', '0', '2100', NULL, '2024-12-06 13:16:20', '2024-12-06 13:16:20'),
(304, 140, 23, '4', '0', '2100', NULL, '2024-12-06 13:16:20', '2024-12-06 13:16:20'),
(305, 140, 28, '2', '0', '2100', NULL, '2024-12-06 13:16:20', '2024-12-06 13:16:20');

-- --------------------------------------------------------

--
-- Table structure for table `product_tags`
--

CREATE TABLE `product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_tags`
--

INSERT INTO `product_tags` (`id`, `product_id`, `tag`, `created_at`, `updated_at`) VALUES
(83, 50, '', '2024-05-30 10:41:57', '2024-05-30 10:41:57'),
(84, 51, '', '2024-05-31 04:02:12', '2024-05-31 04:02:12'),
(85, 52, '', '2024-05-31 04:47:24', '2024-05-31 04:47:24'),
(86, 53, '', '2024-05-31 04:54:33', '2024-05-31 04:54:33'),
(87, 54, '', '2024-05-31 07:51:46', '2024-05-31 07:51:46'),
(88, 55, '', '2024-05-31 08:44:22', '2024-05-31 08:44:22'),
(89, 56, '', '2024-05-31 18:10:12', '2024-05-31 18:10:12'),
(90, 57, '', '2024-05-31 18:14:53', '2024-05-31 18:14:53'),
(91, 58, '', '2024-05-31 18:21:14', '2024-05-31 18:21:14'),
(92, 59, '', '2024-05-31 18:59:08', '2024-05-31 18:59:08'),
(93, 60, '', '2024-05-31 19:04:48', '2024-05-31 19:04:48'),
(94, 61, '', '2024-05-31 19:07:17', '2024-05-31 19:07:17'),
(95, 62, '', '2024-05-31 19:11:44', '2024-05-31 19:11:44'),
(96, 63, '', '2024-05-31 19:16:56', '2024-05-31 19:16:56'),
(97, 64, '', '2024-05-31 19:30:32', '2024-05-31 19:30:32'),
(98, 65, '', '2024-06-01 07:13:01', '2024-06-01 07:13:01'),
(99, 66, '', '2024-06-01 07:28:06', '2024-06-01 07:28:06'),
(100, 67, '', '2024-06-01 07:45:05', '2024-06-01 07:45:05'),
(101, 68, '', '2024-06-01 07:49:59', '2024-06-01 07:49:59'),
(102, 69, '', '2024-06-01 18:27:00', '2024-06-01 18:27:00'),
(103, 70, '', '2024-06-01 18:32:39', '2024-06-01 18:32:39'),
(104, 71, '', '2024-06-01 18:37:27', '2024-06-01 18:37:27'),
(105, 72, '', '2024-06-01 18:39:43', '2024-06-01 18:39:43'),
(106, 73, '', '2024-06-01 18:47:34', '2024-06-01 18:47:34'),
(108, 79, '', '2024-06-03 11:26:05', '2024-06-03 11:26:05'),
(109, 80, '', '2024-06-03 17:52:12', '2024-06-03 17:52:12'),
(110, 50, 'Charment', '2024-06-04 04:31:46', '2024-06-04 04:31:46'),
(111, 50, 'Square', '2024-06-04 04:31:46', '2024-06-04 04:31:46'),
(112, 50, 'gooseglass', '2024-06-04 04:31:46', '2024-06-04 04:31:46'),
(113, 80, 'Stylish Design', '2024-06-04 10:37:04', '2024-06-04 10:37:04'),
(114, 80, 'Titan', '2024-06-04 10:37:04', '2024-06-04 10:37:04'),
(115, 81, '', '2024-06-04 11:44:06', '2024-06-04 11:44:06'),
(116, 82, '', '2024-06-04 12:25:20', '2024-06-04 12:25:20'),
(117, 83, '', '2024-06-04 19:40:14', '2024-06-04 19:40:14'),
(118, 84, '', '2024-06-05 03:19:19', '2024-06-05 03:19:19'),
(119, 85, '', '2024-06-05 03:21:06', '2024-06-05 03:21:06'),
(120, 86, '', '2024-06-25 07:18:35', '2024-06-25 07:18:35'),
(121, 87, '', '2024-06-25 07:19:23', '2024-06-25 07:19:23'),
(122, 88, '', '2024-06-25 07:20:19', '2024-06-25 07:20:19'),
(123, 89, '', '2024-06-25 07:26:15', '2024-06-25 07:26:15'),
(124, 90, '', '2024-06-25 07:27:25', '2024-06-25 07:27:25'),
(125, 91, '', '2024-06-25 07:28:12', '2024-06-25 07:28:12'),
(126, 92, '', '2024-06-25 07:28:50', '2024-06-25 07:28:50'),
(127, 93, '', '2024-06-25 07:29:38', '2024-06-25 07:29:38'),
(128, 94, '', '2024-06-25 07:30:22', '2024-06-25 07:30:22'),
(129, 95, '', '2024-06-25 07:31:01', '2024-06-25 07:31:01'),
(130, 96, '', '2024-06-25 07:31:44', '2024-06-25 07:31:44'),
(131, 97, '', '2024-06-25 07:32:44', '2024-06-25 07:32:44'),
(132, 98, '', '2024-06-25 07:33:29', '2024-06-25 07:33:29'),
(133, 99, '', '2024-06-25 07:34:26', '2024-06-25 07:34:26'),
(134, 100, '', '2024-06-25 07:35:16', '2024-06-25 07:35:16'),
(135, 101, '', '2024-06-27 06:27:22', '2024-06-27 06:27:22'),
(136, 102, '', '2024-06-27 06:28:48', '2024-06-27 06:28:48'),
(137, 103, '', '2024-06-27 06:30:07', '2024-06-27 06:30:07'),
(138, 104, '', '2024-06-27 06:35:22', '2024-06-27 06:35:22'),
(139, 105, '', '2024-06-27 08:41:18', '2024-06-27 08:41:18'),
(140, 106, '', '2024-06-27 08:43:04', '2024-06-27 08:43:04'),
(141, 107, '', '2024-06-27 08:44:30', '2024-06-27 08:44:30'),
(142, 108, '', '2024-06-27 08:47:30', '2024-06-27 08:47:30'),
(143, 109, '', '2024-06-27 08:48:31', '2024-06-27 08:48:31'),
(144, 110, '', '2024-06-27 08:51:33', '2024-06-27 08:51:33'),
(145, 111, '', '2024-06-27 08:52:53', '2024-06-27 08:52:53'),
(146, 112, '', '2024-06-27 08:55:19', '2024-06-27 08:55:19'),
(147, 113, '', '2024-06-27 09:01:24', '2024-06-27 09:01:24'),
(148, 114, '', '2024-06-27 09:02:16', '2024-06-27 09:02:16'),
(149, 115, '', '2024-07-08 07:51:18', '2024-07-08 07:51:18'),
(150, 116, '', '2024-07-08 07:53:43', '2024-07-08 07:53:43'),
(151, 117, '', '2024-07-08 07:54:43', '2024-07-08 07:54:43'),
(152, 118, '', '2024-07-09 07:14:37', '2024-07-09 07:14:37'),
(153, 120, '', '2024-07-12 18:04:56', '2024-07-12 18:04:56'),
(154, 121, '', '2024-07-12 18:10:02', '2024-07-12 18:10:02'),
(155, 122, '', '2024-07-14 07:01:23', '2024-07-14 07:01:23'),
(156, 123, '', '2024-08-16 18:05:27', '2024-08-16 18:05:27'),
(157, 124, '', '2024-08-16 18:24:18', '2024-08-16 18:24:18'),
(158, 125, '', '2024-08-21 08:02:39', '2024-08-21 08:02:39'),
(159, 126, '', '2024-08-22 16:00:35', '2024-08-22 16:00:35'),
(160, 127, '', '2024-08-22 16:10:05', '2024-08-22 16:10:05'),
(161, 128, '', '2024-09-08 07:50:09', '2024-09-08 07:50:09'),
(162, 129, '', '2024-09-08 08:01:40', '2024-09-08 08:01:40'),
(166, 132, '', '2024-09-15 03:52:46', '2024-09-15 03:52:46'),
(167, 133, '', '2024-09-15 04:06:28', '2024-09-15 04:06:28'),
(168, 134, '', '2024-09-28 06:22:46', '2024-09-28 06:22:46'),
(169, 135, '', '2024-10-16 16:06:50', '2024-10-16 16:06:50'),
(170, 136, '', '2024-11-12 14:04:09', '2024-11-12 14:04:09'),
(171, 137, '', '2024-11-13 19:00:36', '2024-11-13 19:00:36'),
(172, 138, '', '2024-12-04 09:57:06', '2024-12-04 09:57:06'),
(173, 139, '', '2024-12-06 13:04:53', '2024-12-06 13:04:53'),
(174, 140, '', '2024-12-06 13:16:20', '2024-12-06 13:16:20'),
(181, 144, 'chasmi', '2025-01-07 05:58:43', '2025-01-07 05:58:43'),
(182, 144, '', '2025-01-08 05:23:54', '2025-01-08 05:23:54');

-- --------------------------------------------------------

--
-- Table structure for table `product_thumbnails`
--

CREATE TABLE `product_thumbnails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_thumbnail` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_thumbnails`
--

INSERT INTO `product_thumbnails` (`id`, `product_id`, `product_thumbnail`, `slug`, `created_at`, `updated_at`) VALUES
(59, 51, 'charment-oval_1717128131.webp', '', '2024-05-31 04:02:11', '2024-05-31 04:02:11'),
(63, 55, 'galore-catseye_1717145061.webp', '', '2024-05-31 08:44:21', '2024-05-31 08:44:21'),
(65, 57, 'classic-round_1717179292.webp', '', '2024-05-31 18:14:52', '2024-05-31 18:14:52'),
(69, 61, 'lv-oversized-premium_1717182437.webp', '', '2024-05-31 19:07:17', '2024-05-31 19:07:17'),
(70, 62, 'louis-vuiton-sunglasses_1717182704.webp', '', '2024-05-31 19:11:44', '2024-05-31 19:11:44'),
(71, 63, 'prada-oversized-sunglasses_1717183016.webp', '', '2024-05-31 19:16:56', '2024-05-31 19:16:56'),
(76, 68, 'bvlgari-nerd_1717228198.webp', '', '2024-06-01 07:49:58', '2024-06-01 07:49:58'),
(77, 69, 'burberry-catseye-sunglasses_1717266420.webp', '', '2024-06-01 18:27:00', '2024-06-01 18:27:00'),
(78, 70, 'chanel-oversized-sunglasses_1717266759.webp', '', '2024-06-01 18:32:39', '2024-06-01 18:32:39'),
(79, 71, 'chanel-square-sunglasses_1717267047.webp', '', '2024-06-01 18:37:27', '2024-06-01 18:37:27'),
(80, 72, 'dior-square-sunglasses_1717267183.webp', '', '2024-06-01 18:39:43', '2024-06-01 18:39:43'),
(81, 73, 'prada-fancy-sunglasses_1717267654.webp', '', '2024-06-01 18:47:34', '2024-06-01 18:47:34'),
(86, 78, 'testing_1717338426.webp', '', '2024-06-02 14:27:06', '2024-06-02 14:27:06'),
(92, 84, 'twotone-rounders_1717557559.webp', '', '2024-06-05 03:19:19', '2024-06-05 03:19:19'),
(93, 85, 'twotone-catseye_1717557666.webp', '', '2024-06-05 03:21:06', '2024-06-05 03:21:06'),
(94, 86, 'dahab-alaska_1719299915.webp', '', '2024-06-25 07:18:35', '2024-06-25 07:18:35'),
(95, 87, 'dahab-aqua_1719299963.webp', '', '2024-06-25 07:19:23', '2024-06-25 07:19:23'),
(96, 88, 'dahab-argan_1719300019.webp', '', '2024-06-25 07:20:19', '2024-06-25 07:20:19'),
(97, 89, 'dahab-caramel_1719300375.webp', '', '2024-06-25 07:26:15', '2024-06-25 07:26:15'),
(98, 90, 'dahab-cat-eye_1719300445.webp', '', '2024-06-25 07:27:25', '2024-06-25 07:27:25'),
(99, 91, 'dahab-creamy_1719300492.webp', '', '2024-06-25 07:28:12', '2024-06-25 07:28:12'),
(100, 92, 'dahab-diamond_1719300530.webp', '', '2024-06-25 07:28:50', '2024-06-25 07:28:50'),
(101, 93, 'dahab-gray-green_1719300578.webp', '', '2024-06-25 07:29:38', '2024-06-25 07:29:38'),
(102, 94, 'dahab-hawaii_1719300622.webp', '', '2024-06-25 07:30:22', '2024-06-25 07:30:22'),
(103, 95, 'dahab-hind_1719300661.webp', '', '2024-06-25 07:31:01', '2024-06-25 07:31:01'),
(104, 96, 'dahab-ice_1719300704.webp', '', '2024-06-25 07:31:44', '2024-06-25 07:31:44'),
(105, 97, 'dahab-luminere-blue_1719300764.webp', '', '2024-06-25 07:32:44', '2024-06-25 07:32:44'),
(106, 98, 'dahab-luminere-brown_1719300809.webp', '', '2024-06-25 07:33:29', '2024-06-25 07:33:29'),
(107, 99, 'dahab-luminere-gray_1719300866.webp', '', '2024-06-25 07:34:26', '2024-06-25 07:34:26'),
(108, 100, 'dahab-luminere-green_1719300916.webp', '', '2024-06-25 07:35:16', '2024-06-25 07:35:16'),
(109, 101, 'dahab-luminere-hazel_1719469641.webp', '', '2024-06-27 06:27:22', '2024-06-27 06:27:22'),
(110, 102, 'dahab-maroon_1719469727.webp', '', '2024-06-27 06:28:48', '2024-06-27 06:28:48'),
(111, 103, 'dahab-medusa_1719469807.webp', '', '2024-06-27 06:30:07', '2024-06-27 06:30:07'),
(112, 104, 'dahab-mentha_1719470122.webp', '', '2024-06-27 06:35:22', '2024-06-27 06:35:22'),
(113, 105, 'dahab-perle_1719477678.webp', '', '2024-06-27 08:41:18', '2024-06-27 08:41:18'),
(114, 106, 'dahab-rain_1719477784.webp', '', '2024-06-27 08:43:04', '2024-06-27 08:43:04'),
(115, 107, 'dahab-sabrin-gray_1719477870.webp', '', '2024-06-27 08:44:30', '2024-06-27 08:44:30'),
(116, 108, 'dahab-sabriin-soul_1719478050.webp', '', '2024-06-27 08:47:30', '2024-06-27 08:47:30'),
(117, 109, 'dahab-sky_1719478111.webp', '', '2024-06-27 08:48:31', '2024-06-27 08:48:31'),
(118, 110, 'dahab-solitaire_1719478293.webp', '', '2024-06-27 08:51:33', '2024-06-27 08:51:33'),
(119, 111, 'dahab-sun-kiss_1719478373.webp', '', '2024-06-27 08:52:53', '2024-06-27 08:52:53'),
(120, 112, 'dahab-swarovaski_1719478519.webp', '', '2024-06-27 08:55:19', '2024-06-27 08:55:19'),
(121, 113, 'dahab-tiffany-blue_1719478884.webp', '', '2024-06-27 09:01:24', '2024-06-27 09:01:24'),
(122, 114, 'dahab-topaz_1719478935.webp', '', '2024-06-27 09:02:16', '2024-06-27 09:02:16'),
(123, 115, '202-blue_1720425078.webp', '', '2024-07-08 07:51:18', '2024-07-08 07:51:18'),
(124, 116, '207-blue_1720425223.webp', '', '2024-07-08 07:53:43', '2024-07-08 07:53:43'),
(125, 117, '207-green_1720425283.webp', '', '2024-07-08 07:54:43', '2024-07-08 07:54:43'),
(126, 118, 'tomford-22001_1720509276.webp', '', '2024-07-09 07:14:37', '2024-07-09 07:14:37'),
(128, 120, 'prada-90074_1720814694.webp', '', '2024-07-12 18:04:55', '2024-07-12 18:04:55'),
(129, 121, 'windsor-original-10007_1720815002.webp', '', '2024-07-12 18:10:02', '2024-07-12 18:10:02'),
(130, 122, 'windsor-hexagon-rimless_1720947682.webp', '', '2024-07-14 07:01:22', '2024-07-14 07:01:22'),
(131, 123, 'densen-mystique_1723838725.webp', '', '2024-08-16 18:05:26', '2024-08-16 18:05:26'),
(132, 124, 'dior-lumina_1723839857.webp', '', '2024-08-16 18:24:17', '2024-08-16 18:24:17'),
(133, 125, 'dior-majesty_1724234557.webp', '', '2024-08-21 08:02:38', '2024-08-21 08:02:38'),
(134, 126, 'chanel-evoke_1724349635.webp', '', '2024-08-22 16:00:35', '2024-08-22 16:00:35'),
(135, 127, 'vanguard-sunglasses_1724350205.webp', '', '2024-08-22 16:10:05', '2024-08-22 16:10:05'),
(136, 50, 'z-charment-square_1724434694.webp', '', '2024-08-23 15:38:15', '2024-08-23 15:38:15'),
(137, 52, 'dazzle-square_1724436827.webp', '', '2024-08-23 16:13:47', '2024-08-23 16:13:47'),
(138, 53, 'dazzle-catseye_1724437606.webp', '', '2024-08-23 16:26:46', '2024-08-23 16:26:46'),
(140, 54, 'prime-metalic-eyewear_1724438594.webp', '', '2024-08-23 16:43:14', '2024-08-23 16:43:14'),
(141, 56, 'classic-oversized_1724439844.webp', '', '2024-08-23 17:04:04', '2024-08-23 17:04:04'),
(142, 58, 'classic-hexa_1724475714.webp', '', '2024-08-24 03:01:55', '2024-08-24 03:01:55'),
(143, 59, 'dior-acetate-sunglasses_1724476364.webp', '', '2024-08-24 03:12:44', '2024-08-24 03:12:44'),
(145, 60, 'fendi-premium-oversized_1724494760.webp', '', '2024-08-24 08:19:20', '2024-08-24 08:19:20'),
(146, 64, 'burberry-acetate-catseye_1724747337.webp', '', '2024-08-27 06:28:57', '2024-08-27 06:28:57'),
(147, 65, 'titan-oversized-oval_1724747508.webp', '', '2024-08-27 06:31:48', '2024-08-27 06:31:48'),
(148, 66, 'titan-oversized-horn_1724747917.webp', '', '2024-08-27 06:38:37', '2024-08-27 06:38:37'),
(149, 67, 'n-one-catseye_1724834843.webp', '', '2024-08-28 06:47:23', '2024-08-28 06:47:23'),
(150, 80, 'titan-thin-horn_1724836003.webp', '', '2024-08-28 07:06:43', '2024-08-28 07:06:43'),
(151, 79, 'densen-horneye_1724836749.webp', '', '2024-08-28 07:19:09', '2024-08-28 07:19:09'),
(152, 81, 'squarify-glasses_1724930534.webp', '', '2024-08-29 09:22:14', '2024-08-29 09:22:14'),
(153, 82, 'hexafy-glasses_1724931184.webp', '', '2024-08-29 09:33:04', '2024-08-29 09:33:04'),
(154, 83, 'roundify-glasses_1724931415.webp', '', '2024-08-29 09:36:55', '2024-08-29 09:36:55'),
(155, 128, 'fierce-eyewear_1725789008.webp', '', '2024-09-08 07:50:09', '2024-09-08 07:50:09'),
(156, 129, 'femme-flair-frames_1725789700.webp', '', '2024-09-08 08:01:40', '2024-09-08 08:01:40'),
(157, 130, 'testing-product_1726309995.webp', '', '2024-09-14 08:33:15', '2024-09-14 08:33:15'),
(158, 131, 'testing-product-2_1726310039.webp', '', '2024-09-14 08:33:59', '2024-09-14 08:33:59'),
(159, 132, 'tomford-a2281-mastercopy_1726379564.webp', '', '2024-09-15 03:52:45', '2024-09-15 03:52:45'),
(160, 133, 'tomford-a2285-mastercopy_1726380387.webp', '', '2024-09-15 04:06:28', '2024-09-15 04:06:28'),
(161, 134, 'hexaflex-eyewear_1727511765.webp', '', '2024-09-28 06:22:46', '2024-09-28 06:22:46'),
(163, 135, 'striped-oversized_1729147444.jpg', '', '2024-10-17 04:44:05', '2024-10-17 04:44:05'),
(164, 136, 'benitez-oversized_1731423848.jpg', '', '2024-11-12 14:04:09', '2024-11-12 14:04:09'),
(165, 137, 'glance-eyewear_1731528034.jpg', '', '2024-11-13 19:00:35', '2024-11-13 19:00:35'),
(166, 138, 'dior-enigma_1733309825.jpg', '', '2024-12-04 09:57:06', '2024-12-04 09:57:06'),
(167, 139, 'porsche-prism_1733493892.jpg', '', '2024-12-06 13:04:52', '2024-12-06 13:04:52'),
(168, 140, 'premium-silver-serenity_1733494580.jpg', '', '2024-12-06 13:16:20', '2024-12-06 13:16:20');

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `stock` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `price`, `stock`, `created_at`, `updated_at`) VALUES
(263, 87, 119999.00, '10', '2024-12-24 04:23:18', '2024-12-24 04:28:35'),
(264, 88, 119999.00, '5', '2024-12-24 05:16:41', '2024-12-24 05:16:41'),
(265, 89, 30999.00, '5', '2024-12-24 05:53:03', '2024-12-24 05:53:03'),
(266, 90, 30999.00, '5', '2024-12-24 06:29:26', '2024-12-24 06:29:26'),
(267, 91, 28999.00, '5', '2024-12-24 07:11:02', '2024-12-24 07:11:02'),
(268, 92, 28999.00, '5', '2024-12-24 07:40:32', '2024-12-24 07:40:32'),
(269, 93, 28999.00, '5', '2024-12-24 08:12:23', '2024-12-24 08:12:23'),
(270, 94, 30999.00, '5', '2024-12-24 08:39:41', '2024-12-24 08:39:41'),
(271, 95, 34499.00, '5', '2024-12-24 09:15:07', '2024-12-24 09:15:07'),
(272, 96, 28999.00, '5', '2024-12-24 09:35:28', '2024-12-24 09:35:28'),
(273, 97, 28999.00, '5', '2024-12-24 09:45:11', '2024-12-24 09:45:11'),
(274, 98, 28999.00, '5', '2024-12-24 09:55:07', '2024-12-24 09:55:07'),
(282, 144, 1500.00, '2', '2025-01-07 05:58:41', '2025-01-07 05:58:41'),
(283, 144, 1500.00, '1', '2025-01-07 05:58:41', '2025-01-07 05:58:41'),
(284, 144, 17000.00, '5', '2025-01-08 03:20:25', '2025-01-08 03:20:25'),
(285, 144, 1700.00, '5', '2025-01-08 05:02:16', '2025-01-08 05:02:16'),
(286, 144, 1500.00, '4', '2025-01-08 05:23:54', '2025-01-08 05:23:54');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `purchase_date` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `register_customers`
--

CREATE TABLE `register_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` enum('registerd','not registerd') NOT NULL DEFAULT 'registerd',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `register_customers`
--

INSERT INTO `register_customers` (`id`, `customer_id`, `phone`, `email`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(29, 68, '01738758133', 'rifatakhon@gmail.com', '$2y$12$kSuGm8NGHLO/6cPQhex8HuoBtqAd2x1p9YCkdbzkCIx24t5zZ2FT2', 'registerd', NULL, '2024-05-04 10:33:31', '2024-05-04 10:33:31'),
(31, 70, '01303027936', 'sssssamir2001@gmail.com', '$2y$12$/Xtyk25OqEjPp6pZByTvN.RWVy/xSoYCOd42Lri/wv4.GwQSk3jOu', 'registerd', NULL, '2024-05-30 10:49:26', '2024-05-30 10:49:26'),
(34, 73, '01317361745', 'Aishy575@gmail.com', '$2y$12$GwxS9A6I.mgynmpHvq4OuutI6uVc5OU1J7Nr7CWbtj5XP199dGGoG', 'registerd', NULL, '2024-06-08 07:58:05', '2024-06-08 07:58:05'),
(35, 74, '01303027936', 'gooseglassesbd@gmail.com', '$2y$12$CYPyNPHMDm5cuOSiQA/Ry.x5G3WGoTLFuKymo5h/XfxFXaREm7ppq', 'registerd', NULL, '2024-06-11 08:03:35', '2024-06-11 08:03:35'),
(36, 75, '01611056124', 'devopria.das@gmail.com', '$2y$12$OtGOBB0H7QzqoLuaWd3Jh.JNsrcPBEQbFI8YIrC5QBCYqIxVdFeiK', 'registerd', NULL, '2024-06-12 10:17:28', '2024-06-12 10:17:28'),
(37, 76, '01823934372', 'lavana.hayat@gmail.com', '$2y$12$t.XqE3d2AMQqw/lW2tujFeEHpYcxS6TFaXZB0K8goGdJ.bHrpSmh2', 'registerd', NULL, '2024-06-13 10:15:32', '2024-06-13 10:15:32'),
(38, 77, 'Shoumik', 'zakaria46325@gmail.com', '$2y$12$ilIbHRwfVa2MM5GuxM5aE.SlTuLEBf5wfUgQSEYkm8MxJDccj86Vi', 'registerd', NULL, '2024-06-24 05:00:10', '2024-06-24 05:00:10'),
(39, 78, '+880 1626-565948', 'valkyriejuma@gmail.com', '$2y$12$O5ger715f/Go73BBqQe/f..kdqG02qu45wdh6RbwT3YswfwMH5OQ6', 'registerd', NULL, '2024-06-24 17:37:55', '2024-06-24 17:37:55'),
(40, 79, '+880 1884291180', 'ikhtearahmed488@gmail.com', '$2y$12$Q6rkIA2DsQ.TxEnlGOQaY.deUOvX7fEtC9jc7ZaxZEDuN83JSYncq', 'registerd', NULL, '2024-06-24 17:42:52', '2024-06-24 17:42:52'),
(41, 80, '01963410308', 'aimantasnimx@gmail.com', '$2y$12$yJvguD3jiNPNAVFhOtncY.gIXmaBzeYxCX2aCg7IljgOq3QVPIsKG', 'registerd', NULL, '2024-06-25 10:33:57', '2024-06-25 10:33:57'),
(64, 103, '01715-035429', '4204.riditapaulsneha@gmail.com', '$2y$12$OToVddvIS2f/Fz5arSVdfuR4DQkcs/YhUAXKdbbXkVbCEdO9IZQQe', 'registerd', NULL, '2024-06-27 07:10:12', '2024-06-27 07:10:12'),
(65, 104, '01682016840', 'test@gmail.com', '$2y$12$TUM80TXwlOVnUAbztaO0seL456wTmvFD/0DJ65TURe2haTY3d7CNW', 'registerd', NULL, '2024-07-01 21:28:59', '2024-07-01 21:28:59'),
(66, 105, '01687702758', '1dibnatankur@gmail.com', '$2y$12$2eV.SHHUHW6XDsJ2d60/j.3XGenuk/ShliLcKqVdFVdeDinW/sd4q', 'registerd', NULL, '2024-07-03 15:43:27', '2024-07-03 15:43:27'),
(68, 107, '01999980081', 'nikhatrahman69@gmail.com', '$2y$12$OhggRIeNWumpw9GSLAVq2uQyoVIE.jghxnFPJiwCWdp7hjCF3tdGa', 'registerd', NULL, '2024-07-06 10:30:06', '2024-07-06 10:30:06'),
(69, 108, '88888888888', 'etc@gmail.com', '$2y$12$YFAkoEYU2EmjVjICmfnPge0FG27CbYIXeqH4e7bsclJ7VZXaHA9Pa', 'registerd', NULL, '2024-07-08 10:00:59', '2024-07-08 10:00:59'),
(70, 109, '01319722143', 'sadia.ibnat.esha@gmail.com', '$2y$12$0bO0Ck4x55EOfBzgNs92IOGkOZ5hRjLxfz2x2nraJ.RB4Sp5Q.2sW', 'registerd', NULL, '2024-07-10 14:41:00', '2024-07-10 14:41:00'),
(71, 110, '01985258029', 'Munna@gmail.com', '$2y$12$HQoFw8iApiTaYjFgb7/dCufotpIcDjCJw6vHlOYnnO9tSu00A9MM.', 'registerd', NULL, '2024-07-13 08:23:30', '2024-07-13 08:23:30'),
(72, 111, '0141474747', 'test@user.com', '$2y$12$q5GvkIiTrEzeuPftRnP9AeUmzitmaikjXY3HMdaN30zkFI15mQ9De', 'registerd', NULL, '2024-07-14 06:55:31', '2024-07-14 06:55:31'),
(73, 112, '01748018082', 'tasnimshoma6969@gmail.com', '$2y$12$wPUkdUafmGRVM7ZqgYRhEeWM0UXiIZjYBL1GSU4IEK56f0CqTE4CO', 'registerd', NULL, '2024-07-29 20:32:04', '2024-07-29 20:32:04'),
(74, 113, '01746846062', 'wanaizazahira@gmail.vom', '$2y$12$20up28ZuXfhFrlegn4QGa.aCNrOTCfMfabdvcsvHptCgPV6pZ.hX6', 'registerd', NULL, '2024-08-10 14:20:13', '2024-08-10 14:20:13'),
(75, 114, '+8801991413224', 'bonytahmina@gmail.com', '$2y$12$Jr4lQji/13Wfss3TA1jK2ubNwfxI6ne9XZl3Vz2OZmS2YaFBz3cLi', 'registerd', NULL, '2024-08-12 06:44:29', '2024-08-12 06:44:29'),
(76, 115, '01322616757', 'dr.sharoatjahan@gmail.com', '$2y$12$7c54X3siOCIcR3TAzILckeTJSqLIJ2yr9lCysRTYQbjkkWjWQ8l6a', 'registerd', NULL, '2024-08-12 08:35:22', '2024-08-12 08:35:22'),
(77, 117, '01317086984', 'pipasha011@gmail.com', '$2y$12$3ACP0r7dZBDdoC9yEL2LBuH5cSAP.XEfykP53J5X.5oMUff8b2r1i', 'registerd', NULL, '2024-08-12 15:08:23', '2024-08-12 15:08:23'),
(78, 118, '01640357386', 'mdnnnsagoor@gmail.com', '$2y$12$KhqublRfHf/AwsBARZVxdOQfOqlz0xeNa4Z2a2ZKmR3AIKoMNf8R.', 'registerd', NULL, '2024-08-13 01:01:57', '2024-08-13 01:01:57'),
(79, 119, '01884238552', 'mstrabiyakhatun21651@gmail.com', '$2y$12$RgqbGdA2/zYh/Q8xbV6rFewpPgqaLBnFcz3j4U7f2G/SCNklAFOUK', 'registerd', NULL, '2024-08-14 10:35:43', '2024-08-14 10:35:43'),
(80, 120, '01783893948', 'shipali208@gmail.com', '$2y$12$kc/AXNBwBzv.ui1oI/NQwuup4g9B2vBOKY0JmTQkcMdtugSEySBKi', 'registerd', NULL, '2024-08-14 10:53:16', '2024-08-14 10:53:16'),
(81, 121, '01795303012', 'samir@gmail.com', '$2y$12$PiPOTC1LRjs3dtfIHm.gVurG2uadtRtasTl7DOnGe00P6YA6UseRm', 'registerd', NULL, '2024-08-14 11:28:00', '2024-08-14 11:28:00'),
(82, 122, '+919319510584', 'mdarifoc28@gmail.com', '$2y$12$PsB9fHQEzt66FEQNwmPdYuUhBDQsF4Y7xj5x4s7FfLd6P49iOTB/6', 'registerd', NULL, '2024-08-14 12:20:22', '2024-08-14 12:20:22'),
(83, 123, '01892087281', 'Sayedahmedtalha5@gmail.com', '$2y$12$poZzYlcRv.2KeLlyt/m7zu7O6dLhgyZWLl5Qb40R9mBFijjdwWbz6', 'registerd', NULL, '2024-08-14 13:10:32', '2024-08-14 13:10:32'),
(84, 124, '01704084629', 'arifakhanom432@gmail.com', '$2y$12$j/I6oKs9QBg8a61wvnNMRuNJPm4U8rECxA54BRqzIvwwsUuX.z6UC', 'registerd', NULL, '2024-08-14 14:12:53', '2024-08-14 14:12:53'),
(85, 125, '01611010402', 'f.i.nahid200778@gmail.com', '$2y$12$WiNAx7irYjjaHV8lbQcqBumyLouggZuTX8fdGLkdS/mtHrMl8tIlm', 'registerd', NULL, '2024-08-15 18:44:08', '2024-08-15 18:44:08'),
(87, 127, '01558956236', 'nishatnailanilima@gmail.com', '$2y$12$AXgi6AQYA9xKu4usk1x2de3Nbx5CywyqYFFo8dVtWdNCiaCsReELy', 'registerd', NULL, '2024-08-16 23:29:46', '2024-08-16 23:29:46'),
(88, 128, '01717150158', 'shreyasaha_123viqi@yahoo.com', '$2y$12$3d/LFKJ.Q96Pd3YDIRXINOLaERe7VP5/oKY6wpMrszr1KU/xnyfVS', 'registerd', NULL, '2024-08-18 00:46:53', '2024-08-18 00:46:53'),
(89, 129, '01852121218', 'asifkhanovib@gmail.com', '$2y$12$wZIqhBCivXqKGISDxwGBUuLtTsnyJ9XHBRE2txUAbqN.ph/CfP1YG', 'registerd', NULL, '2024-08-21 06:54:38', '2024-08-21 06:54:38'),
(91, 131, '01842155776', 'shahana.stacademy@gmail.com', '$2y$12$aOTQrpHKOJ31xeSeVNHjAOCQzcYwNcQhj4MnZsPCQDlIzhVU84cHO', 'registerd', NULL, '2024-08-21 13:27:43', '2024-08-21 13:27:43'),
(92, 132, '01741434518', 'dewan1984c5@gmail.com', '$2y$12$z.pZiy2KFcFkAWrIGWhZnuv56x2q6ulGWxWa5ocybJira6/sxz4Zi', 'registerd', NULL, '2024-08-22 03:22:51', '2024-08-22 03:22:51'),
(93, 133, '01730716727', 'ahamedtanseer@gmail.com', '$2y$12$yYCiiiUGMvqm/8Dh72FLvO40Z8R2tH0tsiKYCtXGYMtSZ1G.LK3O6', 'registerd', NULL, '2024-08-22 11:46:40', '2024-08-22 11:46:40'),
(94, 134, '+8801717609386', 'arifaarabi90@gmail.com', '$2y$12$sgJZjTgLGMNOAqcvZieaTeVRWoczBL.7ZoQ/BgoGFlHwr2obV.4Ta', 'registerd', NULL, '2024-08-28 15:48:38', '2024-08-28 15:48:38'),
(95, 135, '01819999961', 'sadiya.minecraftsteve49@gmail.com', '$2y$12$5jshd/apLZQvJfbNMsXhdeKRaZf4lVwZ06FIENyBojaGEC/63gE7S', 'registerd', NULL, '2024-08-28 15:55:58', '2024-08-28 15:55:58'),
(96, 136, '01601958560', 'arifhossen853@gmail.com', '$2y$12$88gt8Wm9LBAfrXSs9s/OgO6RhpHqJbLgT2vo5898W4g2AOGy5fbwW', 'registerd', NULL, '2024-08-28 16:19:42', '2024-08-28 16:19:42'),
(97, 137, '01756877610', 'shifa0221@gmail.com', '$2y$12$us68bxh91WkcNtyj/0HL7.mEewStwka7CJvTI.JJKoOI/fVu/FJyO', 'registerd', NULL, '2024-08-29 13:13:27', '2024-08-29 13:13:27'),
(98, 138, '0130302712', 'sssssamir2fdghfg001@gmail.com', '$2y$12$mr0IPCEOx2L981ddj5qFvuUdz36Y3WygMz8XOiMYN2jd1LL2kZSyu', 'registerd', NULL, '2024-08-31 06:54:25', '2024-08-31 06:54:25'),
(99, 139, '013030271414', 'sssssamir200FGDDF1@gmail.com', '$2y$12$UEf88BFpr9UNmwjyJKNI9OE4Y0AhVEtLJlmM3O4zVGlUM3SRU//R.', 'registerd', NULL, '2024-09-01 01:58:37', '2024-09-01 01:58:37'),
(100, 140, '01879661477', 'jahintasin500@gmail.com', '$2y$12$mfg3sDBbsKk6GG30E29/eetP1mAM.g7oeJzmofs9Xz5oy67.8p9Ra', 'registerd', NULL, '2024-09-06 12:16:53', '2024-09-06 12:16:53'),
(101, 141, '+8801634240112', 'dalianasrin149@gmail.com', '$2y$12$cvq7Inrj85Zwa0iAnhBJlO7moHqswUjk0zTXoaNihJBQnNkrA4SKm', 'registerd', NULL, '2024-09-08 05:41:46', '2024-09-08 05:41:46'),
(102, 142, '+8801821349754', 'shantaislam560660@gmail.com', '$2y$12$CJOFQOdqQAYHiUZSfp5p/uaBEbyozsFdyWgc7PBoyJmtycvCq.6VK', 'registerd', NULL, '2024-09-08 09:31:12', '2024-09-08 09:31:12'),
(103, 143, '01716325170', 'adritanagpaul@gmail.com', '$2y$12$KIjZYhkvo39jR1WmnDDPlug/Ve7sh7152D89zlEZ.H8I8/.mV48ka', 'registerd', NULL, '2024-09-09 14:32:55', '2024-09-09 14:32:55'),
(104, 144, 'mjr1pUtl', 'u8c6_generic_3e613316_gooseglasses.com@serviseantilogin.com', '$2y$12$vSn6JAtUZKRqlAawfzUkBeMDKNGuxtThRgz3M7vA.V8dLyErJqzO.', 'registerd', NULL, '2024-09-11 11:59:07', '2024-09-11 11:59:07'),
(105, 145, '01731337904', 'atia.ferdos1988@gmail.com', '$2y$12$xn1.dTb3IbRKiSmEqyQvWeIIm3/reSqMmSay8KEYjQD0OHUK73yMe', 'registerd', NULL, '2024-09-11 14:50:20', '2024-09-11 14:50:20'),
(106, 146, '01755529210', 'mariafatema13@gmail.com', '$2y$12$kG9C7v0JwdIJb.hopm/hou/DDlHOd/vtcZ0wEsH1CTHnhk/6M5pue', 'registerd', NULL, '2024-09-13 10:28:56', '2024-09-13 10:28:56'),
(107, 147, '01761493513', 'mawa90994@gmail.com', '$2y$12$AAHJF7Ve2OzSCiV43KOP6eECeyiRKp8pVVwQknPUxB5jDgJOL.Sa.', 'registerd', NULL, '2024-09-15 10:45:08', '2024-09-15 10:45:08'),
(108, 148, '2M2P0R1u', '740Q_generic_3e613316_gooseglasses.com@serviseantilogin.com', '$2y$12$x5URz3WBvD7W39psDQfHmelQcdrlrjb6RIxaLfU76VPjsUFfzijBe', 'registerd', NULL, '2024-09-16 09:15:24', '2024-09-16 09:15:24'),
(109, 149, '01845315700', 'safinadewan26@gmail.com', '$2y$12$FqGZhQWTSe7ijQEm7N2NxuKDWTs.mmCnAT/DubfTwldCeJtIlZHhm', 'registerd', NULL, '2024-09-21 12:17:12', '2024-09-21 12:17:12'),
(110, 150, '01711152350', 'tajin.bhuiyan99@gmail.com', '$2y$12$UftlxAR2yn5t6QZk7DOFKOGk2TUw/tdqTPq.lNwTQgvtm/XCxKptW', 'registerd', NULL, '2024-09-27 14:15:19', '2024-09-27 14:15:19'),
(111, 151, '01968859869', 'nusaibazaman00@gmail.com', '$2y$12$W7KK.cTC8fTCLHpXs/XC5.zOkHewQZluD9qI3Fb0USwLEBsH9XtK6', 'registerd', NULL, '2024-09-28 14:56:01', '2024-09-28 14:56:01'),
(112, 152, '01776024553', 'nipa.28280@gmail.com', '$2y$12$G2c1X4hqU.pw4tOS3xtLzO4kvadj7GfKGH8L9QOaYzKOun3.uyvau', 'registerd', NULL, '2024-09-29 03:49:48', '2024-09-29 03:49:48'),
(113, 153, '6Ovrl8r2', 'nfbh_generic_3e613316_gooseglasses.com@serviseantilogin.com', '$2y$12$Qm8YU28Fd/nVx.6inHSsHe6ccPBMjl2Dp.O1/nKoE.b.W1hr.lIWu', 'registerd', NULL, '2024-10-01 21:14:12', '2024-10-01 21:14:12'),
(114, 154, '01876572709', 'barshaa7865@gmail.com', '$2y$12$hs3xFjJe.uCLvnkbCrugPeFDx9/fX2s.euwxX6ejFap1SU07yZWli', 'registerd', NULL, '2024-10-03 23:59:51', '2024-10-03 23:59:51'),
(115, 155, '01678072550', 'fsharif51@gmail.com', '$2y$12$Nl5RiDh.FE8gwYn8D8uA8.qJzoYTKbMu00JDXp4nF1AhEjOlpb6NW', 'registerd', NULL, '2024-10-04 16:54:47', '2024-10-04 16:54:47'),
(116, 156, '01533507046', 'talhamd06@gmail.com', '$2y$12$vv3Pf0QbwkjXEJwRJXNZcuXD9QY1XIcZ.fF2J9ElddTuP/X5QfWyO', 'registerd', NULL, '2024-10-08 06:02:36', '2024-10-08 06:02:36'),
(117, 157, '01624211952', 'noorswapnil007@gmail.com', '$2y$12$mRLbTZSm9GMONSvXmA4caOAZ5i/9Xzo41S9h8wv889oK/3qDmmiDe', 'registerd', NULL, '2024-10-08 15:31:13', '2024-10-08 15:31:13'),
(118, 158, '01789624634', 'Fahmida.mohammed94@gmail.com', '$2y$12$uYNpOHUarmOB3zmKBaPKo.74x7o0PbXRVNDCV/XirynNGddkTsq9q', 'registerd', NULL, '2024-10-10 13:19:13', '2024-10-10 13:19:13'),
(119, 159, '01791639668', 'mahajashim41@gmail.com', '$2y$12$3O0JfHmqsgRYqwTRWxFs8u8mZ7gIz31U3xwj5nCNJcXNI5s0YKlVq', 'registerd', NULL, '2024-10-13 11:08:05', '2024-10-13 11:08:05'),
(120, 160, '01521521615', 'ummayhoney422@gmail.com', '$2y$12$2bW9l9iD9kxG7nb2L60X6Ol2qK6sixUazq7xHkJarPNUPOZ1owWE.', 'registerd', NULL, '2024-10-15 01:13:57', '2024-10-15 01:13:57'),
(121, 161, '01840161521', 'jannatmitu0022@gmail.com', '$2y$12$uom0E4FfCUYW7hIUnfw6uuyk1r2aFjVcOJAOfNRQvqLgtByCCIxvK', 'registerd', NULL, '2024-10-15 07:14:31', '2024-10-15 07:14:31'),
(122, 162, '01897833376', 'arishazaman318859@gmail.com', '$2y$12$52dScpK5J5.hTQqX3r.iHu7QFZLcMWD7vfmwJk8LKsFR.iwgxqls6', 'registerd', NULL, '2024-10-16 12:22:01', '2024-10-16 12:22:01'),
(123, 163, '+15056488420', 'ssiazmsiauj@dont-reply.me', '$2y$12$UBXul44Y8qPXXkpeeV3oheavAxBt0TARoOxHPqKJ0d4PBqNvVVxAG', 'registerd', NULL, '2024-10-17 16:29:47', '2024-10-17 16:29:47'),
(124, 164, '8235877908', 'betct695@gmail.com', '$2y$12$0lBYZpVBTDN3Qd4KW/1x2O2iu8YR9vkqnpvwTjNCHc.frCDVRnTx2', 'registerd', NULL, '2024-10-21 04:40:20', '2024-10-21 04:40:20'),
(125, 165, '01309323662', 'Islamnazifa322@gmail.com', '$2y$12$n0wmYDY2yUUML56wkEUw8.7KsbbXlpPSgdVAoTHl6WH1LzDGEPyB6', 'registerd', NULL, '2024-10-21 09:19:02', '2024-10-21 09:19:02'),
(126, 166, '4342400165', 'alfredamtp@gmail.com', '$2y$12$b5m.mTt5Oq1rUK2vkHy4lug/yGvkCAAhkF3JLjJTWKx.n3sDYVHpm', 'registerd', NULL, '2024-10-25 14:11:11', '2024-10-25 14:11:11'),
(127, 167, '01993037987', 'suzanahtabassum@gmail.com', '$2y$12$WF6w4pLSR1TBWFdp.yX2IOzCKvZuM.kYlEtVJIBkcveXV4Hs4/wSy', 'registerd', NULL, '2024-10-26 04:14:21', '2024-10-26 04:14:21'),
(128, 168, '01308387043', 'tanjumpatrick93399@gmail.com', '$2y$12$efiW8iL0kFpz2yuBgbDmOeonkXk6p/r1GHo5rpufapwYs0ELk81p2', 'registerd', NULL, '2024-10-26 14:32:29', '2024-10-26 14:32:29'),
(129, 169, '6976280370', 'goitinh.1980@yahoo.com', '$2y$12$ATsiZ1tTUimbV4fXQEw3g.4AodePPL4RCJnNs7xtlnCoLOfDZsvZu', 'registerd', NULL, '2024-10-29 06:53:50', '2024-10-29 06:53:50'),
(130, 170, '01961895187', 'isratjahanmoumita3266370@gmail.com', '$2y$12$2DiJs7LGdIGLyQ6KRfsWmusOo5Y7OqzAiKO1epyPNh2Kj.MwYXavS', 'registerd', NULL, '2024-10-31 04:20:36', '2024-10-31 04:20:36'),
(131, 171, '01906890377', 'tasinc277@gmail.com', '$2y$12$n5MLqf4x3LIqMs2PLiVYFuV37du0i63yYDkbijV2CAnAbKWN2/bqy', 'registerd', NULL, '2024-11-01 05:55:43', '2024-11-01 05:55:43'),
(132, 172, '01624510952', 'commssocial.cry@gmail.com', '$2y$12$LPzTXlta0C7FFdpkqyPS..oLzvwz8NGGN1Luy30qFWVdv2kAYEyaq', 'registerd', NULL, '2024-11-05 06:13:58', '2024-11-05 06:13:58'),
(133, 173, '+15045186463', 'zrmabraissuj@dont-reply.me', '$2y$12$tRyZkqO3RkaDRMSsJWEHpegG3il8aBLDgHMbJ2a2uTUD213Zz1hja', 'registerd', NULL, '2024-11-05 09:49:09', '2024-11-05 09:49:09'),
(134, 174, '01915026557', 'nariyahaa@gmail.com', '$2y$12$KdT8bBdv/tBN3o71H6KMreKf0C4AOL3GgNCOKSrDlYI3HR4AcAJXi', 'registerd', NULL, '2024-11-07 05:12:08', '2024-11-07 05:12:08'),
(135, 175, '01684331082', 'rafidulannoy@gmail.com', '$2y$12$UiRICxo5z4eP4UbPJcCK5unF51bu5GDSgNUIN0FVUsb7JP3I2r06i', 'registerd', NULL, '2024-11-16 18:30:31', '2024-11-16 18:30:31'),
(136, 176, '6007935557', 'arnitaylor26@gmail.com', '$2y$12$RVT8vFcKdN.MMyawCNuuaOC8BRa4mzDhUorf8E1xaWzX3cDJzhBO6', 'registerd', NULL, '2024-11-21 10:58:34', '2024-11-21 10:58:34'),
(137, 177, '3084589354', 'hodonn234@gmail.com', '$2y$12$/CxGlrggkAl4/TyLnqciO.i.d/pl8H3FoAqeqJ3Ux7UDOOpBhFbSe', 'registerd', NULL, '2024-11-23 19:58:02', '2024-11-23 19:58:02'),
(138, 178, '01575-631944', 'shadekhossain.du@gmail.com', '$2y$12$derhYntzko234VkOvi1COOse9aIbakC/WG/RJtuYi5sFUxEi1IWZ6', 'registerd', NULL, '2024-11-28 13:45:37', '2024-11-28 13:45:37'),
(139, 179, '01748098105', 'shawontanzina@gmail.com', '$2y$12$J3rRfg0Hw4YxMHj6kENN6uHRAItXNGwv5KpS8krNjM6s6HQrM6uqS', 'registerd', NULL, '2024-12-01 18:22:48', '2024-12-01 18:22:48'),
(140, 180, '01715022851', 'seutysabur@gmail.com', '$2y$12$Qe.VTXUdUEH36fVWdx3AWewaHDBiLJjJdEz.2onj7ZNDTbqnKPw9a', 'registerd', NULL, '2024-12-02 05:54:48', '2024-12-02 05:54:48'),
(141, 181, '+8801868027168', 'merlindiba01@gmail.com', '$2y$12$Douu7yoVHFsgE2UT/W5fle1Fa6R1EZTDsdkTElA4.p6oiHTVJd0qW', 'registerd', NULL, '2024-12-05 13:57:53', '2024-12-05 13:57:53'),
(142, 182, '01962-796785', 'sayma.asha85@gmail.com', '$2y$12$l3STOudmI7X4s7PgL6rbFubNeVDxHk0lvZRo7m46YdQZ2COT7pRem', 'registerd', NULL, '2024-12-11 15:11:05', '2024-12-11 15:11:05'),
(143, 183, '01828342491', 'saimanurchowdhuryshifa@gmail.com', '$2y$12$9WFJUwps5ORBqREr2axMLeOBtjBKdHJzIO/itcIB.qumb5l3k.j9m', 'registerd', NULL, '2024-12-28 05:21:22', '2024-12-28 05:21:22'),
(152, 192, '01521428527', 'amitroyrock@gmail.com', '$2y$12$4mcm66AlNcnUXL77Tz3TbO53vGLRFWEV6qfJe6B5BXDjkHyZSGi7K', 'registerd', NULL, '2025-01-07 06:04:45', '2025-01-07 06:04:45');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(2, 'Super Admin', 'web', '2024-03-21 04:41:50', '2024-03-21 12:06:04'),
(3, 'admin', 'web', '2024-03-21 04:41:55', '2024-07-07 10:44:06'),
(4, 'manager', 'web', '2024-03-21 04:42:02', '2024-07-07 10:44:04'),
(5, 'user', 'web', '2024-03-21 04:42:08', '2024-07-07 10:44:08');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(84, 5),
(85, 5),
(86, 5),
(87, 5),
(96, 5),
(97, 5),
(98, 5),
(99, 5);

-- --------------------------------------------------------

--
-- Table structure for table `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seoTitle` varchar(255) NOT NULL,
  `seoLogo` varchar(255) NOT NULL,
  `seoDescription` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo_settings`
--

INSERT INTO `seo_settings` (`id`, `seoTitle`, `seoLogo`, `seoDescription`, `created_at`, `updated_at`) VALUES
(2, 'Koohen', '1714553583.png', 'Koohen offers a wide range of clothing, including T-shirts, hoodies, traditional Panjabi and Sharee dresses. Orders are carefully handled from Dhaka and delivered across Bangladesh!', '2024-05-01 02:53:03', '2024-05-01 02:53:03'),
(3, 'Goose Glass', '1714668128.jpg', 'This handy tool helps you create dummy text for all your layout needs. We are gradually adding new functionality and we welcome your suggestions and feedback.', '2024-05-02 10:42:08', '2024-05-02 10:42:08'),
(4, 'Goose Glass', '1714668166.jpg', 'This handy tool helps you create dummy text for all your layout needs. We are gradually adding new functionality and we welcome your suggestions and feedback.', '2024-05-02 10:42:46', '2024-05-02 10:42:46');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `primary_mobile_no` varchar(255) DEFAULT NULL,
  `secondary_mobile_no` varchar(255) DEFAULT NULL,
  `whatsapp_url` varchar(255) DEFAULT NULL,
  `facebook_url` varchar(255) DEFAULT NULL,
  `twiter_url` varchar(255) DEFAULT NULL,
  `instagram_url` varchar(255) DEFAULT NULL,
  `youtube_url` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `company_address` text DEFAULT NULL,
  `company_short_details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `primary_mobile_no`, `secondary_mobile_no`, `whatsapp_url`, `facebook_url`, `twiter_url`, `instagram_url`, `youtube_url`, `email`, `company_address`, `company_short_details`, `created_at`, `updated_at`) VALUES
(1, '+880 1751218778', '+880 1303027936', '#', NULL, NULL, NULL, NULL, 'gooseglassesbd@gmail.com', 'Shop 108, Twin Tower Concord Shopping Complex, Shnatinagar, Dhaka-1217', 'Koohen offers a wide range of clothing, including T-shirts, hoodies, traditional Panjabi and Sharee dresses. Orders are carefully handled from Dhaka and delivered across Bangladesh!', NULL, '2024-02-16 09:32:56');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `s_phone` varchar(255) NOT NULL,
  `s_email` varchar(255) NOT NULL,
  `shipping_add` text NOT NULL,
  `division` varchar(255) DEFAULT NULL,
  `district` varchar(255) NOT NULL,
  `area` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `customer_id`, `order_id`, `first_name`, `last_name`, `s_phone`, `s_email`, `shipping_add`, `division`, `district`, `area`, `created_at`, `updated_at`) VALUES
(31, 58, 115, 'MD RIFAT', 'HOSSAIN', '01738758133', 'rifatakhon@gmail.com', '522/B, North Sahjahanpur', '3', '1', 485, '2024-04-21 07:10:00', '2024-04-21 07:10:00'),
(36, 68, 129, 'MD RIFAT', 'HOSSAIN', '01738758133', 'rifatakhon@gmail.com', '522/B, North Sahjahanpur', '3', '1', 459, '2024-05-04 10:33:31', '2024-05-04 10:33:31'),
(38, 70, 132, 'Shareyar', 'Hossain', '01303027936', 'sssssamir2001@gmail.com', 'dream house, dakkhinpara, naddapara, dakshinkhan,dhaka', '3', '3', 531, '2024-05-30 10:49:26', '2024-05-30 10:49:26'),
(40, 73, 135, 'Sanjana', 'Aishy', '01317361745', 'Aishy575@gmail.com', 'Bashundhara residential area block I mashaallah trade center walton office r opposite lift 6', '3', '1', 460, '2024-06-08 07:58:05', '2024-06-08 07:58:05'),
(41, 74, 136, 'Shareyar', 'Hossain', '01303027936', 'gooseglassesbd@gmail.com', '13 no goli, modhubag, mogbazar', '3', '1', 492, '2024-06-11 08:03:35', '2024-06-11 08:03:35'),
(42, 75, 141, 'Devopria', 'Das', '01611056124', 'devopria.das@gmail.com', '43/1, shorojoni home. Sylhet sadar. Sylhet', '7', '54', 1347, '2024-06-12 10:17:28', '2024-06-12 10:17:28'),
(43, 76, 142, 'Lamyea', 'Khandokar', '01823934372', 'lavana.hayat@gmail.com', '22/1, badda Nagar lane, Hazaribag park, Dhaka - 1205(munshi bari masjid por 2nd building 6th floor)', '3', '1', 483, '2024-06-13 10:15:32', '2024-06-13 10:15:32'),
(44, 78, 145, 'Bibi Jainab', 'Juma', '+880 1626-565948', 'valkyriejuma@gmail.com', 'Adress:mirrerhat,borua para road,nurani madrasha badsha hazir bari', '2', '43', 227, '2024-06-24 17:37:55', '2024-06-24 17:37:55'),
(45, 79, 146, 'Bibi Jainab', 'Juma', '+880 1884291180', 'ikhtearahmed488@gmail.com', 'Adress:mirrerhat,borua para road,nurani madrasha badsha hazir bari', '2', '43', 227, '2024-06-24 17:42:52', '2024-06-24 17:42:52'),
(52, 103, 169, 'Manashi', 'Chowdhury', '01715-035429', '4204.riditapaulsneha@gmail.com', 'House# 272/21/1, Road#7, Baten Nagar Abashik Alaka, Mazar Road, Mirpur-1,, Dhaka', '3', '1', 472, '2024-06-27 07:10:12', '2024-06-27 07:10:12'),
(53, 104, 170, 'Tester', 'Today', '01682016840', 'test@gmail.com', 'Dhkka', '3', '2', 503, '2024-07-01 21:28:59', '2024-07-01 21:28:59'),
(54, 105, 172, 'Humayra Ibnat', 'Ankur', '01687702758', '1dibnatankur@gmail.com', 'Ayesha heritage, Road 10,  house 3, block A, Nobodoy housing society,  Mohammadpur,  Dhaka, 1207', '3', '1', 473, '2024-07-03 15:43:27', '2024-07-03 15:43:27'),
(55, 108, 174, 'Shareyar', 'Hossain', '88888888888', 'etc@gmail.com', '13 no goli, modhubag, mogbazar', '2', '46', 338, '2024-07-08 10:00:59', '2024-07-08 10:00:59'),
(56, 109, 176, 'Sadia', 'Ibnat', '01319722143', 'sadia.ibnat.esha@gmail.com', 'Flat 6E, house 74, road 11/A, dhanmondi', '3', '1', 458, '2024-07-10 14:41:00', '2024-07-10 14:41:00'),
(57, 110, 177, 'Munna', 'Munna', '01985258029', 'Munna@gmail.com', 'Ghorashal Palash Narsingdi Ghorashal Bazar', '3', '12', 730, '2024-07-13 08:23:30', '2024-07-13 08:23:30'),
(58, 111, 178, 'Test', 'User', '0141474747', 'test@user.com', 'dhaka', '3', '1', 452, '2024-07-14 06:55:31', '2024-07-14 06:55:31'),
(59, 112, 179, 'Shoma', 'Akter', '01748018082', 'tasnimshoma6969@gmail.com', 'Dhaka Cantonment, cmh er sathe, sebanir building, lift 9e', '3', '1', 455, '2024-07-29 20:32:04', '2024-07-29 20:32:04'),
(60, 113, 180, 'Anila', 'Alam', '01746846062', 'wanaizazahira@gmail.vom', 'Elephant road,274nakshi jahan, flat no3-D', '3', '1', 483, '2024-08-10 14:20:13', '2024-08-10 14:20:13'),
(61, 114, 181, 'Tahmina', 'Tabassum', '+8801991413224', 'bonytahmina@gmail.com', 'Beparipara tangail', '3', '17', 826, '2024-08-12 06:44:29', '2024-08-12 06:44:29'),
(62, 115, 182, 'Sharoat', 'Jahan', '01322616757', 'dr.sharoatjahan@gmail.com', 'Sirajdikhan general hospital', '3', '9', 649, '2024-08-12 08:35:22', '2024-08-12 08:35:22'),
(63, 117, 184, 'Pipasha', 'Khan', '01317086984', 'pipasha011@gmail.com', 'Kalisankarpur, sonar bangla masjid', '4', '60', 940, '2024-08-12 15:08:23', '2024-08-12 15:08:23'),
(64, 118, 185, 'cheaking', 'sagor', '01640357386', 'mdnnnsagoor@gmail.com', 'satkkhira shikri kuskhali', '1', '36', 53, '2024-08-13 01:01:57', '2024-08-13 01:01:57'),
(65, 119, 186, 'mst', 'rabieya', '01884238552', 'mstrabiyakhatun21651@gmail.com', 'badsha mia school road', '3', '1', 466, '2024-08-14 10:35:43', '2024-08-14 10:35:43'),
(66, 120, 187, 'Shipali  nur', 'Asma', '01783893948', 'shipali208@gmail.com', 'Khulna', '4', '59', 906, '2024-08-14 10:53:16', '2024-08-14 10:53:16'),
(67, 121, 188, 'Shareyar', 'Hossain', '01795303012', 'samir@gmail.com', '13 no goli, modhubag, mogbazar', '2', '43', 187, '2024-08-14 11:28:00', '2024-08-14 11:28:00'),
(68, 122, 189, 'Osam', 'Gani', '+919319510584', 'mdarifoc28@gmail.com', 'New Delhi, Dhaka,', '2', '41', 124, '2024-08-14 12:20:22', '2024-08-14 12:20:22'),
(69, 123, 190, 'MD SAYED AHAMED', 'TALHA', '01892087281', 'Sayedahmedtalha5@gmail.com', 'badsha mia school road', '3', '1', 468, '2024-08-14 13:10:32', '2024-08-14 13:10:32'),
(70, 124, 191, 'Maria', 'Zaman', '01704084629', 'arifakhanom432@gmail.com', '514 Malibag Railgate', '3', '1', 485, '2024-08-14 14:12:53', '2024-08-14 14:12:53'),
(71, 125, 193, 'Fahmida', 'Nahid', '01611010402', 'f.i.nahid200778@gmail.com', 'Hotel highway Inn, Mia Bazar, Chouddagram, Cumilla', '2', '44', 286, '2024-08-15 18:44:08', '2024-08-15 18:44:08'),
(72, 127, 194, 'Nishat Naila', 'Nilima', '01558956236', 'nishatnailanilima@gmail.com', 'House- 826/27 (7th floor, Flat- A7), Road- 21, Block- G, Bashundhara R/A, Dhaka- 1229', '3', '1', 470, '2024-08-16 23:29:46', '2024-08-16 23:29:46'),
(73, 129, 196, 'Asif', 'Khan', '01852121218', 'asifkhanovib@gmail.com', 'Bagdha Bazare, Agailjhara, Barishal.', '1', '35', 11, '2024-08-21 06:54:38', '2024-08-21 06:54:38'),
(74, 131, 197, 'Shahana', 'Sharmin', '01842155776', 'shahana.stacademy@gmail.com', 'flat 4A, house 24, road 20, sector 4', '3', '1', 502, '2024-08-21 13:27:43', '2024-08-21 13:27:43'),
(75, 132, 198, 'Semonte', 'Dewan', '01741434518', 'dewan1984c5@gmail.com', 'Plot-4,Rupnogor main road, Mirpur', '3', '1', 472, '2024-08-22 03:22:51', '2024-08-22 03:22:51'),
(76, 133, 199, 'Tanseer', 'Ahamed', '01730716727', 'ahamedtanseer@gmail.com', 'Grameen Abashon, H-712/19/40, R-10, Baitul Aman Housing, Adabor', '3', '1', 473, '2024-08-22 11:46:40', '2024-08-22 11:46:40'),
(77, 134, 200, 'Arifa', 'arabi', '+8801717609386', 'arifaarabi90@gmail.com', 'Gaibandha mastar para pulse clinic', '6', '27', 1149, '2024-08-28 15:48:38', '2024-08-28 15:48:38'),
(78, 135, 201, 'Abul', 'Hashem', '01819999961', 'sadiya.minecraftsteve49@gmail.com', 'Main Road, College Para, Tangail Sadar, Tangail', '3', '17', 826, '2024-08-28 15:55:58', '2024-08-28 15:55:58'),
(79, 136, 202, 'arif', 'Hossen', '01601958560', 'arifhossen853@gmail.com', 'Dhaka, Bangladesh', '3', '1', 469, '2024-08-28 16:19:42', '2024-08-28 16:19:42'),
(80, 137, 203, 'Zannatun Nayeem Shifa', 'Shifa', '01756877610', 'shifa0221@gmail.com', 'House no 77 -Ga, Shantinibash Bangladesh Air force officers quarters, (beside PM.office, before Lucas more), Tejgaon, Dhaka.', '3', '1', 500, '2024-08-29 13:13:27', '2024-08-29 13:13:27'),
(81, 138, 204, 'dfghjgf', 'Hossainhgfdjfgh', '0130302712', 'sssssamir2fdghfg001@gmail.com', '13 no goli, modhubag, mogbazardfgh', '1', '35', 19, '2024-08-31 06:54:25', '2024-08-31 06:54:25'),
(82, 139, 205, 'FGDFGDFG', 'GFDGDFGDSFRG', '013030271414', 'sssssamir200FGDDF1@gmail.com', '13 no goli, modhubag, mogbazarDFG', '3', '1', 453, '2024-09-01 01:58:37', '2024-09-01 01:58:37'),
(83, 140, 206, 'Jahin', 'Tasnim', '01879661477', 'jahintasin500@gmail.com', 'Shimla house, B Ed college road, Chawkbazar', '2', '43', 192, '2024-09-06 12:16:53', '2024-09-06 12:16:53'),
(84, 141, 207, 'Nasrin', 'Akter', '+8801634240112', 'dalianasrin149@gmail.com', 'Purohitpara', '8', '10', 686, '2024-09-08 05:41:46', '2024-09-08 05:41:46'),
(85, 142, 208, 'Israt', 'Siddiqui', '+8801821349754', 'shantaislam560660@gmail.com', 'Poshu haspatal road, Fosolandi, Bhuapur, Tangail', '3', '17', 785, '2024-09-08 09:31:13', '2024-09-08 09:31:13'),
(86, 143, 209, 'Progga', 'Nag', '01716325170', 'adritanagpaul@gmail.com', '3/7 Asad avenue, Flat A9', '3', '1', 473, '2024-09-09 14:32:55', '2024-09-09 14:32:55'),
(87, 145, 210, 'Atia', 'Ferdos', '01731337904', 'atia.ferdos1988@gmail.com', '349/2, Uposohor, Rajshahi', '5', '24', 1099, '2024-09-11 14:50:20', '2024-09-11 14:50:20'),
(88, 146, 211, 'Poly Shohel', 'Shohel', '01755529210', 'mariafatema13@gmail.com', 'Dhanmondi road 8 (Anwar khan modern Hospital road), house 9, flat B3', '3', '1', 483, '2024-09-13 10:28:56', '2024-09-13 10:28:56'),
(89, 147, 212, 'Taniya', 'Tonni', '01761493513', 'mawa90994@gmail.com', 'বিশ্বনাথ,মাইজদী,নোয়াখালী', '2', '49', 429, '2024-09-15 10:45:08', '2024-09-15 10:45:08'),
(90, 149, 214, 'Rafayel', 'Alam', '01845315700', 'safinadewan26@gmail.com', '260/1 (near rayer bazar community center) Jafarabad Shankar Dhaka', '3', '1', 473, '2024-09-21 12:17:12', '2024-09-21 12:17:12'),
(91, 150, 215, 'Tajin', 'Bhuiyan', '01711152350', 'tajin.bhuiyan99@gmail.com', 'Shawpno Chaya Housing Society, Dewanbari Road(Bismillah-polli Opposite), Azampur Kacha bazaar, Dakshin khan, Uttara, Dhaka.', '3', '1', 502, '2024-09-27 14:15:19', '2024-09-27 14:15:19'),
(92, 151, 216, 'Nusaiba', 'Zaman', '01968859869', 'nusaibazaman00@gmail.com', 'Mirpur DOHS , Road-6, avenue-3 , house-384', '3', '1', 472, '2024-09-28 14:56:01', '2024-09-28 14:56:01'),
(93, 152, 217, 'Nipa', 'Islam', '01776024553', 'nipa.28280@gmail.com', 'B-5/22 ,Tiyabari, Genda, Savar, Dhaka', '3', '1', 493, '2024-09-29 03:49:48', '2024-09-29 03:49:48'),
(94, 154, 218, 'Barsha', 'Saha', '01876572709', 'barshaa7865@gmail.com', 'Thanapara, Gopalgonj sodor', '3', '4', 545, '2024-10-03 23:59:51', '2024-10-03 23:59:51'),
(95, 155, 219, 'Farhana', 'Sharif', '01678072550', 'fsharif51@gmail.com', 'Maa Bhaban, Road 1,  1st Floor, South Khulshi, Vip City Corporation Area, Chittagong', '2', '43', 210, '2024-10-04 16:54:47', '2024-10-04 16:54:47'),
(96, 156, 220, 'Abu', 'Talha', '01533507046', 'talhamd06@gmail.com', 'Katerpara Ali Soner Lane (Seba Poly Clinic)', '5', '18', 998, '2024-10-08 06:02:36', '2024-10-08 06:02:36'),
(97, 157, 221, 'Noor E Siddika', 'Swapnil', '01624211952', 'noorswapnil007@gmail.com', 'H 296, Road 6, Block i, Bashundhara R/A', '3', '1', 470, '2024-10-08 15:31:13', '2024-10-08 15:31:13'),
(98, 158, 222, 'Sumaiya', 'Mohammed', '01789624634', 'Fahmida.mohammed94@gmail.com', 'Near mahmud cng pump and little buds kindergarten school, beanibazar', '7', '54', 1306, '2024-10-10 13:19:13', '2024-10-10 13:19:13'),
(99, 159, 223, 'Maha', 'Jashim', '01791639668', 'mahajashim41@gmail.com', 'Cox\'s bazar,court bazar', '2', '45', 327, '2024-10-13 11:08:05', '2024-10-13 11:08:05'),
(100, 160, 224, 'Ummay', 'Honey', '01521521615', 'ummayhoney422@gmail.com', 'Jamalchor', '3', '1', 464, '2024-10-15 01:13:57', '2024-10-15 01:13:57'),
(101, 165, 225, 'Nazifa', 'Islam', '01309323662', 'Islamnazifa322@gmail.com', 'Bernaiya bazar', '2', '42', 174, '2024-10-21 09:19:02', '2024-10-21 09:19:02'),
(102, 167, 226, 'Suzana', 'Tabassum', '01993037987', 'suzanahtabassum@gmail.com', 'Lift-06, House-31, Road-01, Block-B, Banasree', '3', '1', 469, '2024-10-26 04:14:21', '2024-10-26 04:14:21'),
(103, 168, 227, 'Tanjum Nahar', 'ohona', '01308387043', 'tanjumpatrick93399@gmail.com', 'sinthiya telecom, islampur, meghna, sonargaon, narayanganj', '3', '11', 700, '2024-10-26 14:32:29', '2024-10-26 14:32:29'),
(104, 170, 228, 'Israt', 'Jahan', '01961895187', 'isratjahanmoumita3266370@gmail.com', 'Flat-704,Building-26,Japan Garden city,Mohammadpur,Dhaka', '3', '1', 473, '2024-10-31 04:20:36', '2024-10-31 04:20:36'),
(105, 172, NULL, 'Salika', 'Shetu', '01624510952', 'commssocial.cry@gmail.com', 'House: 159, Road-06, Block Ka, PC Cultute H/S, Shyamoli, Dhaka - 1207.', '3', '1', 473, '2024-11-05 06:40:11', '2024-11-05 06:40:11'),
(106, 174, 231, 'Nariyaha', 'Alamgir', '01915026557', 'nariyahaa@gmail.com', 'House-30(flat-3B), road-5/A, sector-11 uttara Dhaka', '3', '1', 502, '2024-11-07 05:12:08', '2024-11-07 05:12:08'),
(107, 175, 232, 'Rafidul', 'Onnoy', '01684331082', 'rafidulannoy@gmail.com', '28/1b shonatangar ,tenarimor, zigatola 1209 (Infront of pulabi bakery -chorokghata)', '3', '1', 458, '2024-11-16 18:30:31', '2024-11-16 18:30:31'),
(108, 178, 234, 'Shadek', 'Hossain', '01575-631944', 'shadekhossain.du@gmail.com', 'Peoples Insurance Bhaban, 36 dilkusha C/A', '3', '1', 476, '2024-11-28 13:45:37', '2024-11-28 13:45:37'),
(109, 179, 235, 'Tanzina Haque', 'Shawon', '01748098105', 'shawontanzina@gmail.com', 'Noyapara, Sadar, Mymensingh', '8', '10', 686, '2024-12-01 18:22:48', '2024-12-01 18:22:48'),
(110, 180, 236, 'Seuty', 'Sabur', '01715022851', 'seutysabur@gmail.com', 'House 365, Road 6 West, Baridhara DOHS', '3', '1', 455, '2024-12-02 05:54:48', '2024-12-02 05:54:48'),
(111, 181, 237, 'Marlin', 'Diba', '+8801868027168', 'merlindiba01@gmail.com', 'Southeast University, 252, Tejgaon Industrial Area, Dhaka', '3', '1', 500, '2024-12-05 13:57:53', '2024-12-05 13:57:53'),
(112, 182, 238, 'Sayma A.', 'Asha', '01962-796785', 'sayma.asha85@gmail.com', 'House-1, Road- 12, Sector-12', '3', '1', 502, '2024-12-11 15:11:05', '2024-12-11 15:11:05'),
(113, 183, NULL, 'Saima Nur', 'Chowdhury', '01828342491', 'saimanurchowdhuryshifa@gmail.com', 'Ismail mansion, azam chy bari, joynob club er opposite e, aman bazar , hathazari road, chattogram', '2', '43', 227, '2024-12-28 05:43:11', '2024-12-28 05:43:11'),
(118, 192, 259, 'Amit', 'Roy', '01521428527', 'amitroyrock@gmail.com', 'Dhaka', '3', '1', 499, '2025-01-07 06:04:45', '2025-01-07 06:04:45');

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) NOT NULL,
  `instance` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shoppingcart`
--

INSERT INTO `shoppingcart` (`identifier`, `instance`, `content`, `created_at`, `updated_at`) VALUES
('1dibnatankur@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2024-07-08 07:23:32', NULL),
('ahossen711@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2024-03-20 11:14:36', NULL),
('amitroyrock@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2025-01-07 06:14:09', NULL),
('arifhosse12@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2024-02-17 10:21:42', NULL),
('arifhossen384@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2024-02-29 22:45:39', NULL),
('arifhossen853@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2024-04-22 17:55:44', NULL),
('arifhossen853@yahoo.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2024-04-22 17:38:39', NULL),
('devopria.das@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2024-07-08 07:13:26', NULL),
('jannatmitu0022@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2024-10-15 07:16:15', NULL),
('mizancse2018@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2025-01-07 04:12:13', NULL),
('nariyahaa@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2024-11-08 01:07:14', NULL),
('qbittech.dev1@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"2a90c448bff205edf2016ecd884c95cc\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"2a90c448bff205edf2016ecd884c95cc\";s:2:\"id\";i:82;s:3:\"qty\";i:1;s:4:\"name\";s:14:\"Hexafy Glasses\";s:5:\"price\";d:999;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:1:{s:4:\"slug\";s:14:\"hexafy-glasses\";}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";N;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:5;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2024-06-25 12:12:08', NULL),
('rifatakhon@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2024-07-04 12:09:26', NULL),
('saimanurchowdhuryshifa@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2024-12-28 05:44:21', NULL),
('samir@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2024-08-17 05:10:26', NULL),
('sssssamir2001@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2024-08-13 10:20:42', NULL),
('tajin.bhuiyan99@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2024-09-28 16:14:43', NULL),
('test@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2024-07-09 06:17:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `size_name` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `size_name`, `size`, `status`, `created_at`, `updated_at`) VALUES
(5, '38', '38', '1', '2024-02-07 02:17:02', '2024-02-07 02:17:02'),
(6, '40', '40', '1', '2024-02-07 02:17:10', '2024-02-07 02:17:10'),
(7, '42', '42', '1', '2024-02-07 02:17:18', '2024-02-07 02:17:18'),
(8, '44', '44', '1', '2024-02-07 02:17:26', '2024-02-07 02:17:26'),
(9, 'Small', 'S', '1', '2024-02-07 04:40:45', '2024-02-07 04:40:45'),
(10, 'Medium', 'M', '1', '2024-02-07 04:40:56', '2024-02-07 04:40:56'),
(11, 'Large', 'L', '1', '2024-02-07 04:41:05', '2024-02-07 04:41:05'),
(12, 'Extra Large', 'XL', '1', '2024-02-07 04:41:15', '2024-02-07 04:41:15');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_url` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_url`, `image`, `created_at`, `updated_at`) VALUES
(11, 'https://gooseglasses.com/products/dior-square-sunglasses', 'slider/1728750992.jpg', '2024-04-30 12:47:15', '2024-10-12 14:36:32');

-- --------------------------------------------------------

--
-- Table structure for table `socialinfos`
--

CREATE TABLE `socialinfos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `social_title` varchar(255) NOT NULL,
  `title_value` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socialinfos`
--

INSERT INTO `socialinfos` (`id`, `social_title`, `title_value`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Phone', '+880100000000', '1', '2024-05-05 00:05:57', '2024-07-09 05:12:30'),
(2, 'Email', 'support@gooseglasses.com', '1', '2024-05-05 00:05:57', '2024-07-09 05:12:42'),
(3, 'WhatsApp', '01800000000', '1', '2024-05-05 00:05:57', '2024-07-09 05:12:54'),
(4, 'Facebook', 'https://www.facebook.com/Goose.Glasses', '1', '2024-05-05 00:05:57', '2024-07-09 05:12:42'),
(5, 'Instagram', 'https://www.instagram.com/goose_glasses/', '1', '2024-05-05 00:05:57', '2024-07-09 05:12:42'),
(6, 'LinkedIn', 'https://www.linkedin.com', '0', '2024-05-05 00:05:57', '2024-05-07 04:45:50'),
(7, 'YouTube', 'https://www.youtube.com', '0', '2024-05-05 00:05:57', '2024-06-01 06:55:53'),
(8, 'Twitter', 'https://www.twitter.com', '0', '2024-05-05 00:05:57', '2024-06-01 06:55:54');

-- --------------------------------------------------------

--
-- Table structure for table `specifications`
--

CREATE TABLE `specifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `specifications`
--

INSERT INTO `specifications` (`id`, `product_id`, `name`, `created_at`, `updated_at`) VALUES
(25, 87, 'General', '2024-12-24 04:33:12', '2024-12-24 04:33:12'),
(26, 87, 'Display Features', '2024-12-24 04:33:21', '2024-12-24 04:33:21'),
(27, 87, 'Os & Processor Features', '2024-12-24 04:37:20', '2024-12-24 04:37:20'),
(28, 87, 'Memory & Storage Features', '2024-12-24 04:39:12', '2024-12-24 04:39:12'),
(29, 87, 'Camera Features', '2024-12-24 04:40:12', '2024-12-24 04:40:12'),
(30, 87, 'Call Features', '2024-12-24 04:43:06', '2024-12-24 04:43:06'),
(31, 87, 'Connectivity Features', '2024-12-24 04:44:19', '2024-12-24 04:44:19'),
(32, 87, 'Other Details', '2024-12-24 04:47:49', '2024-12-24 04:47:49'),
(33, 87, 'Multimedia Features', '2024-12-24 04:50:05', '2024-12-24 04:50:05'),
(34, 87, 'Battery & Power Features', '2024-12-24 04:52:00', '2024-12-24 04:52:00'),
(35, 87, 'Dimensions', '2024-12-24 04:52:42', '2024-12-24 04:52:42'),
(36, 87, 'Warranty', '2024-12-24 04:54:06', '2024-12-24 04:54:06'),
(37, 88, 'General', '2024-12-24 05:18:40', '2024-12-24 05:18:40'),
(38, 88, 'Display Features', '2024-12-24 05:20:58', '2024-12-24 05:20:58'),
(39, 88, 'Os & Processor Features', '2024-12-24 05:22:08', '2024-12-24 05:22:08'),
(40, 88, 'Memory & Storage Features', '2024-12-24 05:24:24', '2024-12-24 05:24:24'),
(41, 88, 'Camera Features', '2024-12-24 05:25:36', '2024-12-24 05:25:36'),
(42, 88, 'Call Features', '2024-12-24 05:28:25', '2024-12-24 05:28:25'),
(43, 88, 'Connectivity Features', '2024-12-24 05:29:46', '2024-12-24 05:29:46'),
(44, 88, 'Other Details', '2024-12-24 05:32:47', '2024-12-24 05:32:47'),
(45, 88, 'Multimedia Features', '2024-12-24 05:36:18', '2024-12-24 05:36:18'),
(46, 88, 'Battery & Power Features', '2024-12-24 05:36:54', '2024-12-24 05:36:54'),
(47, 88, 'Dimensions', '2024-12-24 05:37:28', '2024-12-24 05:37:28'),
(48, 88, 'Warranty', '2024-12-24 05:38:21', '2024-12-24 05:38:21'),
(49, 89, 'General', '2024-12-24 05:54:12', '2024-12-24 05:54:12'),
(50, 89, 'Display Features', '2024-12-24 05:56:28', '2024-12-24 05:56:28'),
(51, 89, 'Os & Processor Features', '2024-12-24 05:57:16', '2024-12-24 05:57:16'),
(52, 89, 'Memory & Storage Features', '2024-12-24 05:59:18', '2024-12-24 05:59:18'),
(53, 89, 'Camera Features', '2024-12-24 05:59:56', '2024-12-24 05:59:56'),
(54, 89, 'Call Features', '2024-12-24 06:02:23', '2024-12-24 06:02:23'),
(55, 89, 'Connectivity Features', '2024-12-24 06:03:33', '2024-12-24 06:03:33'),
(56, 89, 'Other Details', '2024-12-24 06:06:24', '2024-12-24 06:06:24'),
(57, 89, 'Multimedia Features', '2024-12-24 06:08:56', '2024-12-24 06:08:56'),
(58, 89, 'Battery & Power Features', '2024-12-24 06:09:33', '2024-12-24 06:09:33'),
(59, 89, 'Dimensions', '2024-12-24 06:09:59', '2024-12-24 06:09:59'),
(60, 89, 'Warranty', '2024-12-24 06:10:38', '2024-12-24 06:10:38'),
(61, 90, 'General', '2024-12-24 06:29:42', '2024-12-24 06:29:42'),
(62, 90, 'Display Features', '2024-12-24 06:31:32', '2024-12-24 06:31:32'),
(63, 90, 'Os & Processor Features', '2024-12-24 06:33:29', '2024-12-24 06:33:29'),
(64, 90, 'Memory & Storage Features', '2024-12-24 06:34:52', '2024-12-24 06:34:52'),
(65, 90, 'Camera Features', '2024-12-24 06:36:06', '2024-12-24 06:36:06'),
(66, 90, 'Call Features', '2024-12-24 06:55:34', '2024-12-24 06:55:34'),
(67, 90, 'Connectivity Features', '2024-12-24 06:56:40', '2024-12-24 06:56:40'),
(68, 90, 'Other Details', '2024-12-24 06:59:29', '2024-12-24 06:59:29'),
(69, 90, 'Multimedia Features', '2024-12-24 07:02:11', '2024-12-24 07:02:11'),
(70, 90, 'Battery & Power Features', '2024-12-24 07:02:43', '2024-12-24 07:02:43'),
(71, 90, 'Dimensions', '2024-12-24 07:03:10', '2024-12-24 07:03:10'),
(72, 90, 'Warranty', '2024-12-24 07:03:51', '2024-12-24 07:03:51'),
(73, 91, 'General', '2024-12-24 07:11:20', '2024-12-24 07:11:20'),
(74, 91, 'Display Features', '2024-12-24 07:12:52', '2024-12-24 07:12:52'),
(75, 91, 'Os & Processor Features', '2024-12-24 07:13:36', '2024-12-24 07:13:36'),
(76, 91, 'Memory & Storage Features', '2024-12-24 07:14:35', '2024-12-24 07:14:35'),
(77, 91, 'Camera Features', '2024-12-24 07:15:05', '2024-12-24 07:15:05'),
(78, 91, 'Call Features', '2024-12-24 07:17:06', '2024-12-24 07:17:06'),
(79, 91, 'Connectivity Features', '2024-12-24 07:18:21', '2024-12-24 07:18:21'),
(80, 91, 'Other Details', '2024-12-24 07:20:54', '2024-12-24 07:20:54'),
(81, 91, 'Multimedia Features', '2024-12-24 07:23:49', '2024-12-24 07:23:49'),
(82, 91, 'Battery & Power Features', '2024-12-24 07:25:25', '2024-12-24 07:25:25'),
(83, 91, 'Dimensions', '2024-12-24 07:25:57', '2024-12-24 07:25:57'),
(84, 91, 'Warranty', '2024-12-24 07:26:34', '2024-12-24 07:26:34'),
(85, 92, 'General', '2024-12-24 07:40:55', '2024-12-24 07:40:55'),
(86, 92, 'Display Features', '2024-12-24 07:43:10', '2024-12-24 07:43:10'),
(87, 92, 'Os & Processor Features', '2024-12-24 07:44:09', '2024-12-24 07:44:09'),
(88, 92, 'Memory & Storage Features', '2024-12-24 07:45:08', '2024-12-24 07:45:08'),
(89, 92, 'Camera Features', '2024-12-24 07:45:44', '2024-12-24 07:45:44'),
(90, 92, 'Call Features', '2024-12-24 07:48:17', '2024-12-24 07:48:17'),
(91, 92, 'Connectivity Features', '2024-12-24 07:49:14', '2024-12-24 07:49:14'),
(92, 92, 'Other Details', '2024-12-24 07:51:47', '2024-12-24 07:51:47'),
(93, 92, 'Multimedia Features', '2024-12-24 07:54:36', '2024-12-24 07:54:36'),
(94, 92, 'Battery & Power Features', '2024-12-24 07:55:23', '2024-12-24 07:55:23'),
(95, 92, 'Dimensions', '2024-12-24 07:56:13', '2024-12-24 07:56:13'),
(96, 92, 'Warranty', '2024-12-24 07:57:10', '2024-12-24 07:57:10'),
(97, 93, 'General', '2024-12-24 08:13:00', '2024-12-24 08:13:00'),
(98, 93, 'Display Features', '2024-12-24 08:14:44', '2024-12-24 08:14:44'),
(99, 93, 'Os & Processor Features', '2024-12-24 08:15:32', '2024-12-24 08:15:32'),
(100, 93, 'Memory & Storage Features', '2024-12-24 08:16:34', '2024-12-24 08:16:34'),
(101, 93, 'Camera Features', '2024-12-24 08:17:01', '2024-12-24 08:17:01'),
(102, 93, 'Call Features', '2024-12-24 08:19:29', '2024-12-24 08:19:29'),
(103, 93, 'Connectivity Features', '2024-12-24 08:20:27', '2024-12-24 08:20:27'),
(104, 93, 'Other Details', '2024-12-24 08:22:56', '2024-12-24 08:22:56'),
(105, 93, 'Multimedia Features', '2024-12-24 08:25:00', '2024-12-24 08:25:00'),
(106, 93, 'Battery & Power Features', '2024-12-24 08:25:34', '2024-12-24 08:25:34'),
(107, 93, 'Dimensions', '2024-12-24 08:25:58', '2024-12-24 08:25:58'),
(108, 93, 'Warranty', '2024-12-24 08:26:33', '2024-12-24 08:26:33'),
(109, 94, 'General', '2024-12-24 08:40:30', '2024-12-24 08:40:30'),
(110, 94, 'Display Features', '2024-12-24 08:42:03', '2024-12-24 08:42:03'),
(111, 94, 'Os & Processor Features', '2024-12-24 08:42:47', '2024-12-24 08:42:47'),
(112, 94, 'Memory & Storage Features', '2024-12-24 08:43:41', '2024-12-24 08:43:41'),
(113, 94, 'Camera Features', '2024-12-24 08:44:07', '2024-12-24 08:44:07'),
(114, 94, 'Call Features', '2024-12-24 08:45:55', '2024-12-24 08:45:55'),
(115, 94, 'Connectivity Features', '2024-12-24 08:46:40', '2024-12-24 08:46:40'),
(116, 94, 'Other Details', '2024-12-24 08:49:00', '2024-12-24 08:49:00'),
(117, 94, 'Multimedia Features', '2024-12-24 08:51:05', '2024-12-24 08:51:05'),
(118, 94, 'Battery & Power Features', '2024-12-24 08:51:32', '2024-12-24 08:51:32'),
(119, 94, 'Dimensions', '2024-12-24 08:51:53', '2024-12-24 08:51:53'),
(120, 94, 'Warranty', '2024-12-24 08:52:31', '2024-12-24 08:52:31'),
(121, 95, 'General', '2024-12-24 09:15:38', '2024-12-24 09:15:38'),
(122, 95, 'Product Details', '2024-12-24 09:16:53', '2024-12-24 09:16:53'),
(123, 95, 'Battery Features', '2024-12-24 09:18:05', '2024-12-24 09:18:05'),
(124, 95, 'Camera Features', '2024-12-24 09:18:21', '2024-12-24 09:18:21'),
(125, 95, 'Connectivity Features', '2024-12-24 09:18:55', '2024-12-24 09:18:55'),
(126, 95, 'Display Features', '2024-12-24 09:19:33', '2024-12-24 09:19:33'),
(127, 95, 'Warranty', '2024-12-24 09:19:47', '2024-12-24 09:19:47'),
(128, 96, 'General', '2024-12-24 09:35:39', '2024-12-24 09:35:39'),
(129, 96, 'Product Details', '2024-12-24 09:37:15', '2024-12-24 09:37:15'),
(130, 96, 'Battery Features', '2024-12-24 09:38:25', '2024-12-24 09:38:25'),
(131, 96, 'Camera Features', '2024-12-24 09:38:38', '2024-12-24 09:38:38'),
(132, 96, 'Connectivity Features', '2024-12-24 09:39:13', '2024-12-24 09:39:13'),
(133, 96, 'Display Features', '2024-12-24 09:39:58', '2024-12-24 09:39:58'),
(134, 96, 'Warranty', '2024-12-24 09:40:13', '2024-12-24 09:40:13'),
(135, 97, 'General', '2024-12-24 09:45:31', '2024-12-24 09:45:31'),
(136, 97, 'Product Details', '2024-12-24 09:46:53', '2024-12-24 09:46:53'),
(137, 97, 'Battery Features', '2024-12-24 09:47:57', '2024-12-24 09:47:57'),
(138, 97, 'Camera Features', '2024-12-24 09:48:10', '2024-12-24 09:48:10'),
(139, 97, 'Connectivity Features', '2024-12-24 09:48:40', '2024-12-24 09:48:40'),
(140, 97, 'Display Features', '2024-12-24 09:49:18', '2024-12-24 09:49:18'),
(141, 97, 'Warranty', '2024-12-24 09:49:29', '2024-12-24 09:49:29');

-- --------------------------------------------------------

--
-- Table structure for table `specification_features`
--

CREATE TABLE `specification_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `specification_id` bigint(20) UNSIGNED NOT NULL,
  `feature_name` varchar(255) DEFAULT NULL,
  `feature_value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `specification_features`
--

INSERT INTO `specification_features` (`id`, `specification_id`, `feature_name`, `feature_value`, `created_at`, `updated_at`) VALUES
(103, 25, 'In The Box', 'Handset, Adapter, USB Type-C Cable, Sim Eject Tool, Protective Case, Quick Start Guide, Warranty Card', '2024-12-24 04:36:00', '2024-12-24 04:36:00'),
(104, 25, 'Model Number', 'MZB0GVNIN', '2024-12-24 04:36:00', '2024-12-24 04:36:00'),
(105, 25, 'Model Name', '14 Ultra', '2024-12-24 04:36:00', '2024-12-24 04:36:00'),
(106, 25, 'Color', 'Black', '2024-12-24 04:36:00', '2024-12-24 04:36:00'),
(107, 25, 'Browse Type', 'Smartphones', '2024-12-24 04:36:00', '2024-12-24 04:36:00'),
(108, 25, 'SIM Type', 'Dual Sim', '2024-12-24 04:36:00', '2024-12-24 04:36:00'),
(109, 25, 'Hybrid Sim Slot', 'No', '2024-12-24 04:36:00', '2024-12-24 04:36:00'),
(110, 25, 'Touchscreen', 'Yes', '2024-12-24 04:36:00', '2024-12-24 04:36:00'),
(111, 25, 'OTG Compatible', 'Yes', '2024-12-24 04:36:00', '2024-12-24 04:36:00'),
(112, 25, 'Quick Charging', 'Yes', '2024-12-24 04:36:00', '2024-12-24 04:36:00'),
(113, 25, 'SAR Value', 'SAR Limit: 1.6 W/kg, Head: 0.829 W/kg, Body: 0.816 W/kg', '2024-12-24 04:36:00', '2024-12-24 04:36:00'),
(114, 26, 'Display Size', '17.09 cm c (6.73 inch)', '2024-12-24 04:37:14', '2024-12-24 04:37:14'),
(115, 26, 'Resolution', '3200 x 1440 Pixels', '2024-12-24 04:37:14', '2024-12-24 04:37:14'),
(116, 26, 'GPU', 'Adreno GPU', '2024-12-24 04:37:14', '2024-12-24 04:37:14'),
(117, 26, 'Display Type', '2K 120Hz LTPO AMOLED Display with Xiaomi Shield Glass Protection', '2024-12-24 04:37:14', '2024-12-24 04:37:14'),
(118, 26, 'Other Display Features', 'Peak Brightness: 3000 Nits', '2024-12-24 04:37:14', '2024-12-24 04:37:14'),
(119, 27, 'Operating System', 'Android 14', '2024-12-24 04:39:06', '2024-12-24 04:39:06'),
(120, 27, 'Processor Brand', 'Snapdragon', '2024-12-24 04:39:06', '2024-12-24 04:39:06'),
(121, 27, 'Processor Type', 'Snapdragon 8 Gen 3 Mobile Platform', '2024-12-24 04:39:06', '2024-12-24 04:39:06'),
(122, 27, 'Processor Core', 'Octa Core', '2024-12-24 04:39:06', '2024-12-24 04:39:06'),
(123, 27, 'Primary Clock Speed', '3.3 GHz', '2024-12-24 04:39:06', '2024-12-24 04:39:06'),
(124, 27, 'Secondary Clock Speed', '3.2 GHz', '2024-12-24 04:39:06', '2024-12-24 04:39:06'),
(125, 27, 'Tertiary Clock Speed', '3 GHz', '2024-12-24 04:39:06', '2024-12-24 04:39:06'),
(126, 27, 'Operating Frequency', '2G GSM: B2/B3/B5/B8, 3G WCDMA: B1/B2/B4/B5/B8/B6/B19, 4G LTE FDD: B1/B2/B3/B4/B5/B7/B8/B18/B19/B20/B26/B28/B66, 4G LTE TDD: B38/B40/B41/B42/B48, 5G SA: n1/n2/n3/n5/n7/n8/n20/n28/n38/n40/n41/n48/n66/n77/n78/n79, 5G NSA: n1/n3/n5/n7/n8/n20/n28/n38/n40/n41/n66/n77/n78/n79', '2024-12-24 04:39:06', '2024-12-24 04:39:06'),
(127, 28, 'Internal Storage', '512 GB', '2024-12-24 04:40:06', '2024-12-24 04:40:06'),
(128, 28, 'RAM', '16 GB', '2024-12-24 04:40:06', '2024-12-24 04:40:06'),
(129, 28, 'Total Memory', '512 GB', '2024-12-24 04:40:06', '2024-12-24 04:40:06'),
(130, 28, 'Call Log Memory', 'Yes', '2024-12-24 04:40:06', '2024-12-24 04:40:06'),
(131, 29, 'Primary Camera Available', 'Yes', '2024-12-24 04:43:00', '2024-12-24 04:43:00'),
(132, 29, 'Primary Camera', '50MP + 50MP + 50MP + 50MP', '2024-12-24 04:43:00', '2024-12-24 04:43:00'),
(133, 29, 'Primary Camera Features', 'Leica Quad Camera: 50MP (LYT 900, 1 inch Image Sensor with f/1.63-f/4.0 Stepless Variable Aperture, 3.2um (4-in-1 Pixel Binning), OIS, Features: Photo, Portrait, Documents, Movie, Pro, Night, 50MP, Panorama, Short Film, Slow Motion, Timelapse, AI Watermark, Long Exposure, Supermoon, Fast Shot, Director Mode', '2024-12-24 04:43:00', '2024-12-24 04:43:00'),
(134, 29, 'Secondary Camera Available', 'Yes', '2024-12-24 04:43:00', '2024-12-24 04:43:00'),
(135, 29, 'Secondary Camera', '32MP Front Camera', '2024-12-24 04:43:00', '2024-12-24 04:43:00'),
(136, 29, 'Secondary Camera Features', 'Front Camera Setup: 32MP Camera', '2024-12-24 04:43:00', '2024-12-24 04:43:00'),
(137, 29, 'Flash', 'Dual Rear Flash', '2024-12-24 04:43:00', '2024-12-24 04:43:00'),
(138, 29, 'HD Recording', 'Yes', '2024-12-24 04:43:00', '2024-12-24 04:43:00'),
(139, 29, 'Full HD Recording', 'Yes', '2024-12-24 04:43:00', '2024-12-24 04:43:00'),
(140, 29, 'Video Recording', 'Yes', '2024-12-24 04:43:00', '2024-12-24 04:43:00'),
(141, 29, 'Video Recording Resolution', 'Rear Camera: 8K (at 30 fps/at 24 fps), 4K (at 120 fps/at 60 fps/at 30 fps), 1080p (at 60 fps/at 30 fps), 720p (at 30 fps)| Front Camera: 4K (at 60 fps/at 30 fps), 1080p (at 60 fps/at 30 fps), 720p (at 30 fps)', '2024-12-24 04:43:00', '2024-12-24 04:43:00'),
(142, 29, 'Digital Zoom', 'Yes', '2024-12-24 04:43:00', '2024-12-24 04:43:00'),
(143, 29, 'Dual Camera Lens', 'Primary Camera', '2024-12-24 04:43:00', '2024-12-24 04:43:00'),
(144, 30, 'Call Wait/Hold', 'Yes', '2024-12-24 04:44:12', '2024-12-24 04:44:12'),
(145, 30, 'Conference Call', 'Yes', '2024-12-24 04:44:12', '2024-12-24 04:44:12'),
(146, 30, 'Hands Free', 'Yes', '2024-12-24 04:44:12', '2024-12-24 04:44:12'),
(147, 30, 'Call Divert', 'Yes', '2024-12-24 04:44:12', '2024-12-24 04:44:12'),
(148, 30, 'Phone Book', 'Yes', '2024-12-24 04:44:12', '2024-12-24 04:44:12'),
(149, 30, 'Call Timer', 'Yes', '2024-12-24 04:44:12', '2024-12-24 04:44:12'),
(150, 30, 'Speaker Phone', 'Yes', '2024-12-24 04:44:12', '2024-12-24 04:44:12'),
(151, 30, 'Call Records', 'Yes', '2024-12-24 04:44:12', '2024-12-24 04:44:12'),
(152, 31, 'Network Type', '2G, 3G, 4G, 4G VOLTE, 5G', '2024-12-24 04:47:39', '2024-12-24 04:47:39'),
(153, 31, 'Supported Networks', '4G LTE, 4G VoLTE, 5G, GSM, WCDMA', '2024-12-24 04:47:39', '2024-12-24 04:47:39'),
(154, 31, 'Internet Connectivity', '5G, 4G, 3G, Wi-Fi, EDGE, GPRS', '2024-12-24 04:47:39', '2024-12-24 04:47:39'),
(155, 31, '3G', 'Yes', '2024-12-24 04:47:39', '2024-12-24 04:47:39'),
(156, 31, 'GPRS', 'Yes', '2024-12-24 04:47:39', '2024-12-24 04:47:39'),
(157, 31, 'Micro USB Port', 'Yes', '2024-12-24 04:47:39', '2024-12-24 04:47:39'),
(158, 31, 'Micro USB Version', 'Type C USB', '2024-12-24 04:47:39', '2024-12-24 04:47:39'),
(159, 31, 'Bluetooth Support', 'Yes', '2024-12-24 04:47:39', '2024-12-24 04:47:39'),
(160, 31, 'Bluetooth Version', 'v5.4', '2024-12-24 04:47:39', '2024-12-24 04:47:39'),
(161, 31, 'Wi-Fi', 'Yes', '2024-12-24 04:47:39', '2024-12-24 04:47:39'),
(162, 31, 'Wi-Fi Version', '802.11 a/b/g/n/ac/ax', '2024-12-24 04:47:39', '2024-12-24 04:47:39'),
(163, 31, 'Wi-Fi Hotspot', 'Yes', '2024-12-24 04:47:39', '2024-12-24 04:47:39'),
(164, 31, 'Mini HDMI Port', 'No', '2024-12-24 04:47:39', '2024-12-24 04:47:39'),
(165, 31, 'NFC', 'No', '2024-12-24 04:47:39', '2024-12-24 04:47:39'),
(166, 31, 'USB Tethering', 'Yes', '2024-12-24 04:47:39', '2024-12-24 04:47:39'),
(167, 31, 'USB Connectivity', 'Yes', '2024-12-24 04:47:39', '2024-12-24 04:47:39'),
(168, 31, 'Map Support', 'Google Maps', '2024-12-24 04:47:39', '2024-12-24 04:47:39'),
(169, 31, 'GPS Support', 'Yes', '2024-12-24 04:47:39', '2024-12-24 04:47:39'),
(170, 32, 'Smartphone', 'Yes', '2024-12-24 04:49:58', '2024-12-24 04:49:58'),
(171, 32, 'Touchscreen Type', 'Capacitive', '2024-12-24 04:49:58', '2024-12-24 04:49:58'),
(172, 32, 'SIM Size', 'Nano Sim', '2024-12-24 04:49:58', '2024-12-24 04:49:58'),
(173, 32, 'User Interface', 'HyperOS (Based on Android 14)', '2024-12-24 04:49:58', '2024-12-24 04:49:58'),
(174, 32, 'Instant Message', 'Yes', '2024-12-24 04:49:58', '2024-12-24 04:49:58'),
(175, 32, 'Removable Battery', 'No', '2024-12-24 04:49:58', '2024-12-24 04:49:58'),
(176, 32, 'MMS', 'Yes', '2024-12-24 04:49:58', '2024-12-24 04:49:58'),
(177, 32, 'SMS', 'Yes', '2024-12-24 04:49:58', '2024-12-24 04:49:58'),
(178, 32, 'Keypad', 'No', '2024-12-24 04:49:58', '2024-12-24 04:49:58'),
(179, 32, 'Voice Input', 'Yes', '2024-12-24 04:49:58', '2024-12-24 04:49:58'),
(180, 32, 'Predictive Text Input', 'Yes', '2024-12-24 04:49:58', '2024-12-24 04:49:58'),
(181, 32, 'Sensors', 'IR Blaster, NFC, Ambient Light Sensor, E-Compass, Gyroscope, Accelerometer, In-Display Fingerprint Sensor', '2024-12-24 04:49:58', '2024-12-24 04:49:58'),
(182, 32, 'Browser', 'Google Chrome', '2024-12-24 04:49:58', '2024-12-24 04:49:58'),
(183, 32, 'GPS Type', 'GPS, AGPS, GLONASS, BEIDOU, GALILEO', '2024-12-24 04:49:58', '2024-12-24 04:49:58'),
(184, 33, 'FM Radio', 'No', '2024-12-24 04:50:37', '2024-12-24 04:50:37'),
(185, 33, 'FM Radio Recording', 'No', '2024-12-24 04:50:37', '2024-12-24 04:50:37'),
(186, 33, 'FM Radio', 'No', '2024-12-24 04:51:53', '2024-12-24 04:51:53'),
(187, 33, 'FM Radio Recording', 'No', '2024-12-24 04:51:53', '2024-12-24 04:51:53'),
(188, 34, 'Battery Capacity', '5000 mAh', '2024-12-24 04:52:34', '2024-12-24 04:52:34'),
(189, 34, 'Battery Type', 'Lithium Polymer', '2024-12-24 04:52:34', '2024-12-24 04:52:34'),
(190, 35, 'Width', '75.3 mm', '2024-12-24 04:53:52', '2024-12-24 04:53:52'),
(191, 35, 'Height', '161.4 mm', '2024-12-24 04:53:52', '2024-12-24 04:53:52'),
(192, 35, 'Depth', '9.2 mm', '2024-12-24 04:53:52', '2024-12-24 04:53:52'),
(193, 35, 'Weight', '219.8 g', '2024-12-24 04:53:52', '2024-12-24 04:53:52'),
(194, 36, 'Warranty Summary', '1 Year Manufacturer Warranty for Phone and 6 Months Warranty for In the Box Accessories', '2024-12-24 04:54:45', '2024-12-24 04:54:45'),
(195, 36, 'Domestic Warranty', '1 Year', '2024-12-24 04:54:45', '2024-12-24 04:54:45'),
(196, 37, 'In The Box', 'Handset, Adapter, USB Type-C Cable, Sim Eject Tool, Protective Case, Quick Start Guide, Warranty Card', '2024-12-24 05:20:49', '2024-12-24 05:20:49'),
(197, 37, 'Model Number', 'MZB0GVNIN', '2024-12-24 05:20:49', '2024-12-24 05:20:49'),
(198, 37, 'Model Name', '14 Ultra', '2024-12-24 05:20:49', '2024-12-24 05:20:49'),
(199, 37, 'Color', 'White', '2024-12-24 05:20:49', '2024-12-24 05:20:49'),
(200, 37, 'Browse Type', 'Smartphones', '2024-12-24 05:20:49', '2024-12-24 05:20:49'),
(201, 37, 'SIM Type', 'Dual Sim', '2024-12-24 05:20:49', '2024-12-24 05:20:49'),
(202, 37, 'Hybrid Sim Slot', 'No', '2024-12-24 05:20:49', '2024-12-24 05:20:49'),
(203, 37, 'Touchscreen', 'Yes', '2024-12-24 05:20:49', '2024-12-24 05:20:49'),
(204, 37, 'OTG Compatible', 'Yes', '2024-12-24 05:20:49', '2024-12-24 05:20:49'),
(205, 37, 'Quick Charging', 'Yes', '2024-12-24 05:20:49', '2024-12-24 05:20:49'),
(206, 37, 'SAR Value', 'SAR Limit: 1.6 W/kg, Head: 0.829 W/kg, Body: 0.816 W/kg', '2024-12-24 05:20:49', '2024-12-24 05:20:49'),
(207, 38, 'Display Size', '17.09 cm c (6.73 inch)', '2024-12-24 05:22:01', '2024-12-24 05:22:01'),
(208, 38, 'Resolution', '3200 x 1440 Pixels', '2024-12-24 05:22:01', '2024-12-24 05:22:01'),
(209, 38, 'GPU', 'Adreno GPU', '2024-12-24 05:22:01', '2024-12-24 05:22:01'),
(210, 38, 'Display Type', '2K 120Hz LTPO AMOLED Display with Xiaomi Shield Glass Protection', '2024-12-24 05:22:01', '2024-12-24 05:22:01'),
(211, 38, 'Other Display Features', 'Peak Brightness: 3000 Nits', '2024-12-24 05:22:01', '2024-12-24 05:22:01'),
(212, 39, 'Operating System', 'Android 14', '2024-12-24 05:24:18', '2024-12-24 05:24:18'),
(213, 39, 'Processor Brand', 'Snapdragon', '2024-12-24 05:24:18', '2024-12-24 05:24:18'),
(214, 39, 'Processor Type', 'Snapdragon 8 Gen 3 Mobile Platform', '2024-12-24 05:24:18', '2024-12-24 05:24:18'),
(215, 39, 'Processor Core', 'Octa Core', '2024-12-24 05:24:18', '2024-12-24 05:24:18'),
(216, 39, 'Primary Clock Speed', '3.3 GHz', '2024-12-24 05:24:18', '2024-12-24 05:24:18'),
(217, 39, 'Secondary Clock Speed', '3.2 GHz', '2024-12-24 05:24:18', '2024-12-24 05:24:18'),
(218, 39, 'Tertiary Clock Speed', '3 GHz', '2024-12-24 05:24:18', '2024-12-24 05:24:18'),
(219, 39, 'Operating Frequency', '2G GSM: B2/B3/B5/B8, 3G WCDMA: B1/B2/B4/B5/B8/B6/B19, 4G LTE FDD: B1/B2/B3/B4/B5/B7/B8/B18/B19/B20/B26/B28/B66, 4G LTE TDD: B38/B40/B41/B42/B48, 5G SA: n1/n2/n3/n5/n7/n8/n20/n28/n38/n40/n41/n48/n66/n77/n78/n79, 5G NSA: n1/n3/n5/n7/n8/n20/n28/n38/n40/n41/n66/n77/n78/n79', '2024-12-24 05:24:18', '2024-12-24 05:24:18'),
(220, 40, 'Internal Storage', '512 GB', '2024-12-24 05:25:29', '2024-12-24 05:25:29'),
(221, 40, 'RAM', '16 GB', '2024-12-24 05:25:29', '2024-12-24 05:25:29'),
(222, 40, 'Total Memory', '512 GB', '2024-12-24 05:25:29', '2024-12-24 05:25:29'),
(223, 40, 'Call Log Memory', 'Yes', '2024-12-24 05:25:29', '2024-12-24 05:25:29'),
(224, 41, 'Primary Camera Available', 'Yes', '2024-12-24 05:28:19', '2024-12-24 05:28:19'),
(225, 41, 'Primary Camera', '50MP + 50MP + 50MP + 50MP', '2024-12-24 05:28:19', '2024-12-24 05:28:19'),
(226, 41, 'Primary Camera Features', 'Leica Quad Camera: 50MP (LYT 900, 1 inch Image Sensor with f/1.63-f/4.0 Stepless Variable Aperture, 3.2um (4-in-1 Pixel Binning), OIS, Features: Photo, Portrait, Documents, Movie, Pro, Night, 50MP, Panorama, Short Film, Slow Motion, Timelapse, AI Watermark, Long Exposure, Supermoon, Fast Shot, Director Mode', '2024-12-24 05:28:19', '2024-12-24 05:28:19'),
(227, 41, 'Secondary Camera Available', 'Yes', '2024-12-24 05:28:19', '2024-12-24 05:28:19'),
(228, 41, 'Secondary Camera', '32MP Front Camera', '2024-12-24 05:28:19', '2024-12-24 05:28:19'),
(229, 41, 'Secondary Camera Features', 'Front Camera Setup: 32MP Camera', '2024-12-24 05:28:19', '2024-12-24 05:28:19'),
(230, 41, 'Flash', 'Dual Rear Flash', '2024-12-24 05:28:19', '2024-12-24 05:28:19'),
(231, 41, 'HD Recording', 'Yes', '2024-12-24 05:28:19', '2024-12-24 05:28:19'),
(232, 41, 'Full HD Recording', 'Yes', '2024-12-24 05:28:19', '2024-12-24 05:28:19'),
(233, 41, 'Video Recording', 'Yes', '2024-12-24 05:28:19', '2024-12-24 05:28:19'),
(234, 41, 'Video Recording Resolution', 'Rear Camera: 8K (at 30 fps/at 24 fps), 4K (at 120 fps/at 60 fps/at 30 fps), 1080p (at 60 fps/at 30 fps), 720p (at 30 fps)| Front Camera: 4K (at 60 fps/at 30 fps), 1080p (at 60 fps/at 30 fps), 720p (at 30 fps)', '2024-12-24 05:28:19', '2024-12-24 05:28:19'),
(235, 41, 'Digital Zoom', 'Yes', '2024-12-24 05:28:19', '2024-12-24 05:28:19'),
(236, 41, 'Dual Camera Lens', 'Primary Camera', '2024-12-24 05:28:19', '2024-12-24 05:28:19'),
(237, 42, 'Call Wait/Hold', 'Yes', '2024-12-24 05:29:38', '2024-12-24 05:29:38'),
(238, 42, 'Conference Call', 'Yes', '2024-12-24 05:29:38', '2024-12-24 05:29:38'),
(239, 42, 'Hands Free', 'Yes', '2024-12-24 05:29:38', '2024-12-24 05:29:38'),
(240, 42, 'Call Divert', 'Yes', '2024-12-24 05:29:38', '2024-12-24 05:29:38'),
(241, 42, 'Phone Book', 'Yes', '2024-12-24 05:29:38', '2024-12-24 05:29:38'),
(242, 42, 'Call Timer', 'Yes', '2024-12-24 05:29:38', '2024-12-24 05:29:38'),
(243, 42, 'Speaker Phone', 'Yes', '2024-12-24 05:29:38', '2024-12-24 05:29:38'),
(244, 42, 'Call Records', 'Yes', '2024-12-24 05:29:38', '2024-12-24 05:29:38'),
(245, 43, 'Network Type', '2G, 3G, 4G, 4G VOLTE, 5G', '2024-12-24 05:32:34', '2024-12-24 05:32:34'),
(246, 43, 'Supported Networks', '4G LTE, 4G VoLTE, 5G, GSM, WCDMA', '2024-12-24 05:32:34', '2024-12-24 05:32:34'),
(247, 43, 'Internet Connectivity', '5G, 4G, 3G, Wi-Fi, EDGE, GPRS', '2024-12-24 05:32:34', '2024-12-24 05:32:34'),
(248, 43, '3G', 'Yes', '2024-12-24 05:32:34', '2024-12-24 05:32:34'),
(249, 43, 'GPRS', 'Yes', '2024-12-24 05:32:34', '2024-12-24 05:32:34'),
(250, 43, 'Micro USB Port', 'Yes', '2024-12-24 05:32:34', '2024-12-24 05:32:34'),
(251, 43, 'Micro USB Version', 'Type C USB', '2024-12-24 05:32:34', '2024-12-24 05:32:34'),
(252, 43, 'Bluetooth Support', 'Yes', '2024-12-24 05:32:34', '2024-12-24 05:32:34'),
(253, 43, 'Bluetooth Version', 'v5.4', '2024-12-24 05:32:34', '2024-12-24 05:32:34'),
(254, 43, 'Wi-Fi', 'Yes', '2024-12-24 05:32:34', '2024-12-24 05:32:34'),
(255, 43, 'Wi-Fi Version', '802.11 a/b/g/n/ac/ax', '2024-12-24 05:32:34', '2024-12-24 05:32:34'),
(256, 43, 'Wi-Fi Hotspot', 'Yes', '2024-12-24 05:32:34', '2024-12-24 05:32:34'),
(257, 43, 'Mini HDMI Port', 'No', '2024-12-24 05:32:34', '2024-12-24 05:32:34'),
(258, 43, 'NFC', 'Yes', '2024-12-24 05:32:34', '2024-12-24 05:32:34'),
(259, 43, 'USB Tethering', 'Yes', '2024-12-24 05:32:34', '2024-12-24 05:32:34'),
(260, 43, 'USB Connectivity', 'Yes', '2024-12-24 05:32:34', '2024-12-24 05:32:34'),
(261, 43, 'Map Support', 'Google Maps', '2024-12-24 05:32:34', '2024-12-24 05:32:34'),
(262, 43, 'GPS Support', 'Yes', '2024-12-24 05:32:34', '2024-12-24 05:32:34'),
(263, 44, 'Smartphone', 'Yes', '2024-12-24 05:36:11', '2024-12-24 05:36:11'),
(264, 44, 'Touchscreen Type', 'Capacitive', '2024-12-24 05:36:11', '2024-12-24 05:36:11'),
(265, 44, 'SIM Size', 'Nano Sim', '2024-12-24 05:36:11', '2024-12-24 05:36:11'),
(266, 44, 'User Interface', 'HyperOS (Based on Android 14)', '2024-12-24 05:36:11', '2024-12-24 05:36:11'),
(267, 44, 'Instant Message', 'Yes', '2024-12-24 05:36:11', '2024-12-24 05:36:11'),
(268, 44, 'Removable Battery', 'No', '2024-12-24 05:36:11', '2024-12-24 05:36:11'),
(269, 44, 'MMS', 'Yes', '2024-12-24 05:36:11', '2024-12-24 05:36:11'),
(270, 44, 'SMS', 'Yes', '2024-12-24 05:36:11', '2024-12-24 05:36:11'),
(271, 44, 'Keypad', 'No', '2024-12-24 05:36:11', '2024-12-24 05:36:11'),
(272, 44, 'Voice Input', 'Yes', '2024-12-24 05:36:11', '2024-12-24 05:36:11'),
(273, 44, 'Predictive Text Input', 'Yes', '2024-12-24 05:36:11', '2024-12-24 05:36:11'),
(274, 44, 'Sensors', 'IR Blaster, NFC, Ambient Light Sensor, E-Compass, Gyroscope, Accelerometer, In-Display Fingerprint Sensor', '2024-12-24 05:36:11', '2024-12-24 05:36:11'),
(275, 44, 'Browser', 'Google Chrome', '2024-12-24 05:36:11', '2024-12-24 05:36:11'),
(276, 44, 'GPS Type', 'GPS, AGPS, GLONASS, BEIDOU, GALILEO', '2024-12-24 05:36:11', '2024-12-24 05:36:11'),
(277, 45, 'FM Radio', 'No', '2024-12-24 05:36:43', '2024-12-24 05:36:43'),
(278, 45, 'FM Radio Recording', 'No', '2024-12-24 05:36:43', '2024-12-24 05:36:43'),
(279, 46, 'Battery Capacity', '5000 mAh', '2024-12-24 05:37:17', '2024-12-24 05:37:17'),
(280, 46, 'Battery Type', 'Lithium Polymer', '2024-12-24 05:37:17', '2024-12-24 05:37:17'),
(281, 47, 'Width', '75.3 mm', '2024-12-24 05:38:12', '2024-12-24 05:38:12'),
(282, 47, 'Height', '161.4 mm', '2024-12-24 05:38:12', '2024-12-24 05:38:12'),
(283, 47, 'Depth', '9.2 mm', '2024-12-24 05:38:12', '2024-12-24 05:38:12'),
(284, 47, 'Weight', '219.8 g', '2024-12-24 05:38:12', '2024-12-24 05:38:12'),
(285, 48, 'Warranty Summary', '1 Year Manufacturer Warranty for Phone and 6 Months Warranty for In the Box Accessories', '2024-12-24 05:38:51', '2024-12-24 05:38:51'),
(286, 48, 'Domestic Warranty', '1 Year', '2024-12-24 05:38:51', '2024-12-24 05:38:51'),
(287, 49, 'In The Box', 'Handset, 67W Charger, Type-C USB Cable, Sim Eject Tool, Protective Case, Quick Start Guide, Warranty Card', '2024-12-24 05:56:17', '2024-12-24 05:56:17'),
(288, 49, 'Model Number', 'MZB0G49IN', '2024-12-24 05:56:17', '2024-12-24 05:56:17'),
(289, 49, 'Model Name', 'Note 13 Pro 5G', '2024-12-24 05:56:17', '2024-12-24 05:56:17'),
(290, 49, 'Color', 'Arctic White', '2024-12-24 05:56:17', '2024-12-24 05:56:17'),
(291, 49, 'Browse Type', 'Smartphones', '2024-12-24 05:56:17', '2024-12-24 05:56:17'),
(292, 49, 'SIM Type', 'Dual Sim', '2024-12-24 05:56:17', '2024-12-24 05:56:17'),
(293, 49, 'Hybrid Sim Slot', 'No', '2024-12-24 05:56:17', '2024-12-24 05:56:17'),
(294, 49, 'Touchscreen', 'Yes', '2024-12-24 05:56:17', '2024-12-24 05:56:17'),
(295, 49, 'OTG Compatible', 'Yes', '2024-12-24 05:56:17', '2024-12-24 05:56:17'),
(296, 49, 'Quick Charging', 'Yes', '2024-12-24 05:56:17', '2024-12-24 05:56:17'),
(297, 49, 'Sound Enhancements', 'Dual Stereo Speakers with Dolby Atmos', '2024-12-24 05:56:17', '2024-12-24 05:56:17'),
(298, 49, 'SAR Value', 'SAR Limit: 1.6 W/kg, Head SAR: 0.856 W/kg, Body SAR: 0.864 W/kg', '2024-12-24 05:56:17', '2024-12-24 05:56:17'),
(299, 50, 'Display Size', '16.94 cm (6.67 inch)', '2024-12-24 05:57:09', '2024-12-24 05:57:09'),
(300, 50, 'Resolution', '2712 x 1220 Pixels', '2024-12-24 05:57:09', '2024-12-24 05:57:09'),
(301, 50, 'GPU', 'Adreno GPU A710', '2024-12-24 05:57:09', '2024-12-24 05:57:09'),
(302, 50, 'Display Type', '120Hz Adaptive 1.5K AMOLED', '2024-12-24 05:57:09', '2024-12-24 05:57:09'),
(303, 50, 'Other Display Features', 'Contrast: 5,000,000:1, 2160 Hz Instantaneous Touch Sample Rate, 1920 Hz PWM Dimming, 16000 Brightness Levels, 1800 nits Peak Brightness', '2024-12-24 05:57:09', '2024-12-24 05:57:09'),
(304, 51, 'Operating System', 'Android 13', '2024-12-24 05:58:58', '2024-12-24 05:58:58'),
(305, 51, 'Processor Brand', 'Snapdragon', '2024-12-24 05:58:58', '2024-12-24 05:58:58'),
(306, 51, 'Processor Type', '7s Gen 2 Mobile Platform 5G', '2024-12-24 05:58:58', '2024-12-24 05:58:58'),
(307, 51, 'Processor Core', 'Octa Core', '2024-12-24 05:58:58', '2024-12-24 05:58:58'),
(308, 51, 'Primary Clock Speed', '2.4 GHz', '2024-12-24 05:58:58', '2024-12-24 05:58:58'),
(309, 51, 'Secondary Clock Speed', '1.95 GHz', '2024-12-24 05:58:58', '2024-12-24 05:58:58'),
(310, 51, 'Operating Frequency', '2G GSM: B3/B5/B8, 3G WCDMA: B1/B5/B8, 4G LTE FDD: B1/B3/B5/B8, 4G LTE TDD: B38/B40/B41, 5G SA/NSA: N1/N3/N5/N8/N28A/N38/N40/N41/N77/N78', '2024-12-24 05:58:58', '2024-12-24 05:58:58'),
(311, 52, 'Internal Storage', '256 GB', '2024-12-24 05:59:47', '2024-12-24 05:59:47'),
(312, 52, 'RAM', '8 GB', '2024-12-24 05:59:47', '2024-12-24 05:59:47'),
(313, 52, 'Call Log Memory', 'Yes', '2024-12-24 05:59:47', '2024-12-24 05:59:47'),
(314, 53, 'Primary Camera Available', 'Yes', '2024-12-24 06:02:15', '2024-12-24 06:02:15'),
(315, 53, 'Primary Camera', '200MP (OIS) + 8MP + 2MP', '2024-12-24 06:02:15', '2024-12-24 06:02:15'),
(316, 53, 'Primary Camera Features', 'Triple Camera Setup: 200MP Main Camera (ISOCELL HP3 Sensor, f/1.65 Aperture, 1/1.4 inch Sensor Size, OIS + EIS, 0.56um Pixel Size, 7P Lens, ALD Anti Reflective Coating) + 8MP Ultra Wide Camera + 2MP Macro Camera, Features: Photo Mode, 200MP Mode, In-Sensor Zoom with 2X, 4X Lossless Zoom, Night Mode, Documents Mode, Portrait Mode with Beautify and Depth Control, AI Camera, Timed Burst, Tilt Shift, Google Lens, AI Beautify, Movie Frame, Pro Mode, Panorama (Wide, Selfie), HDR, Macro, Timer, Voice Shutter, Assist Cam, Long Exposure, Video Feature: 4K Recording, Short Film, Slow Motion Selfie, Timelapse Selfie, Movie Frame, Steady Video', '2024-12-24 06:02:15', '2024-12-24 06:02:15'),
(317, 53, 'Optical Zoom', 'Yes', '2024-12-24 06:02:15', '2024-12-24 06:02:15'),
(318, 53, 'Secondary Camera Available', 'Yes', '2024-12-24 06:02:15', '2024-12-24 06:02:15'),
(319, 53, 'Secondary Camera', '16MP Front Camera', '2024-12-24 06:02:15', '2024-12-24 06:02:15'),
(320, 53, 'Secondary Camera Features', 'Front Camera Setup: 16MP Camera, Features: Front Video Recording, AI Beautify Mode, HDR, Selfie Timer, Voice Shutter, Palm Shutter, Timed Burst, Portrait Mode with Depth Control, Movie Frame, Night Mode, Screen Ring Light, Panorama Selfies, Assist Cam, Short Video', '2024-12-24 06:02:15', '2024-12-24 06:02:15'),
(321, 53, 'Flash', 'Turbine LED Flash Design', '2024-12-24 06:02:15', '2024-12-24 06:02:15'),
(322, 53, 'HD Recording', 'Yes', '2024-12-24 06:02:15', '2024-12-24 06:02:15'),
(323, 53, 'Full HD Recording', 'Yes', '2024-12-24 06:02:15', '2024-12-24 06:02:15'),
(324, 53, 'Video Recording', 'Yes', '2024-12-24 06:02:15', '2024-12-24 06:02:15'),
(325, 53, 'Video Recording Resolution', 'Rear Camera: 4K (at 30 fps), 1080p (at 60 fps), 1080p (at 30 fps), 720p (at 30 fps) | Front Camera: 1080p (at 60 fps), 720p (at 30 fps)', '2024-12-24 06:02:15', '2024-12-24 06:02:15'),
(326, 53, 'Digital Zoom', 'Upto 10X', '2024-12-24 06:02:15', '2024-12-24 06:02:15'),
(327, 53, 'Frame Rate', '120 Hz fps', '2024-12-24 06:02:15', '2024-12-24 06:02:15'),
(328, 53, 'Image Editor', 'Yes', '2024-12-24 06:02:15', '2024-12-24 06:02:15'),
(329, 53, 'Dual Camera Lens', 'Primary Camera', '2024-12-24 06:02:15', '2024-12-24 06:02:15'),
(330, 54, 'Call Wait/Hold', 'Yes', '2024-12-24 06:03:27', '2024-12-24 06:03:27'),
(331, 54, 'Conference Call', 'Yes', '2024-12-24 06:03:27', '2024-12-24 06:03:27'),
(332, 54, 'Hands Free', 'Yes', '2024-12-24 06:03:27', '2024-12-24 06:03:27'),
(333, 54, 'Call Divert', 'Yes', '2024-12-24 06:03:27', '2024-12-24 06:03:27'),
(334, 54, 'Phone Book', 'Yes', '2024-12-24 06:03:27', '2024-12-24 06:03:27'),
(335, 54, 'Call Timer', 'Yes', '2024-12-24 06:03:27', '2024-12-24 06:03:27'),
(336, 54, 'Speaker Phone', 'Yes', '2024-12-24 06:03:27', '2024-12-24 06:03:27'),
(337, 54, 'Speed Dialing', 'Yes', '2024-12-24 06:03:27', '2024-12-24 06:03:27'),
(338, 54, 'Call Records', 'Yes', '2024-12-24 06:03:27', '2024-12-24 06:03:27'),
(339, 55, 'Network Type', '5G, 4G VOLTE, 4G, 3G, 2G', '2024-12-24 06:06:11', '2024-12-24 06:06:11'),
(340, 55, 'Supported Networks', '5G, 4G VoLTE, 4G LTE, WCDMA, GSM', '2024-12-24 06:06:11', '2024-12-24 06:06:11'),
(341, 55, 'Internet Connectivity', '5G, 4G, 3G, Wi-Fi, EDGE, GPRS', '2024-12-24 06:06:11', '2024-12-24 06:06:11'),
(342, 55, '3G', 'Yes', '2024-12-24 06:06:11', '2024-12-24 06:06:11'),
(343, 55, 'GPRS', 'Yes', '2024-12-24 06:06:11', '2024-12-24 06:06:11'),
(344, 55, 'Micro USB Port', 'Yes', '2024-12-24 06:06:11', '2024-12-24 06:06:11'),
(345, 55, 'Micro USB Version', 'USB Type C', '2024-12-24 06:06:11', '2024-12-24 06:06:11'),
(346, 55, 'Bluetooth Support', 'Yes', '2024-12-24 06:06:11', '2024-12-24 06:06:11'),
(347, 55, 'Bluetooth Version', 'v5.2', '2024-12-24 06:06:11', '2024-12-24 06:06:11'),
(348, 55, 'Wi-Fi', 'Yes', '2024-12-24 06:06:11', '2024-12-24 06:06:11'),
(349, 55, 'Wi-Fi Version', 'Wi-Fi 5, Supports 2.4 GHz and 5 GHz Dual Band', '2024-12-24 06:06:11', '2024-12-24 06:06:11'),
(350, 55, 'Wi-Fi Hotspot', 'Yes', '2024-12-24 06:06:11', '2024-12-24 06:06:11'),
(351, 55, 'Mini HDMI Port', 'No', '2024-12-24 06:06:11', '2024-12-24 06:06:11'),
(352, 55, 'NFC', 'No', '2024-12-24 06:06:11', '2024-12-24 06:06:11'),
(353, 55, 'USB Tethering', 'Yes', '2024-12-24 06:06:11', '2024-12-24 06:06:11'),
(354, 55, 'Infrared', 'Yes', '2024-12-24 06:06:11', '2024-12-24 06:06:11'),
(355, 55, 'USB Connectivity', 'Yes', '2024-12-24 06:06:11', '2024-12-24 06:06:11'),
(356, 55, 'Audio Jack', 'Yes', '2024-12-24 06:06:11', '2024-12-24 06:06:11'),
(357, 55, 'Map Support', 'Google Maps', '2024-12-24 06:06:11', '2024-12-24 06:06:11'),
(358, 55, 'GPS Support', 'Yes', '2024-12-24 06:06:11', '2024-12-24 06:06:11'),
(359, 56, 'Smartphone', 'Yes', '2024-12-24 06:08:47', '2024-12-24 06:08:47'),
(360, 56, 'Touchscreen Type', 'Capacitive', '2024-12-24 06:08:47', '2024-12-24 06:08:47'),
(361, 56, 'SIM Size', 'Nano Sim', '2024-12-24 06:08:47', '2024-12-24 06:08:47'),
(362, 56, 'User Interface', 'Android 13 (Based on MIUI 14)', '2024-12-24 06:08:47', '2024-12-24 06:08:47'),
(363, 56, 'Instant Message', 'Yes', '2024-12-24 06:08:47', '2024-12-24 06:08:47'),
(364, 56, 'Removable Battery', 'No', '2024-12-24 06:08:47', '2024-12-24 06:08:47'),
(365, 56, 'MMS', 'Yes', '2024-12-24 06:08:47', '2024-12-24 06:08:47'),
(366, 56, 'SMS', 'Yes', '2024-12-24 06:08:47', '2024-12-24 06:08:47'),
(367, 56, 'Keypad', 'No', '2024-12-24 06:08:47', '2024-12-24 06:08:47'),
(368, 56, 'Voice Input', 'Yes', '2024-12-24 06:08:47', '2024-12-24 06:08:47'),
(369, 56, 'Graphics PPI', '446 PPI', '2024-12-24 06:08:47', '2024-12-24 06:08:47'),
(370, 56, 'Predictive Text Input', 'Yes', '2024-12-24 06:08:47', '2024-12-24 06:08:47'),
(371, 56, 'Sensors', 'Proximity Sensor, Ambient Light Sensor, Accelerometer, E-Compass, Gyroscope, In-Display Fingerprint Sensor', '2024-12-24 06:08:47', '2024-12-24 06:08:47'),
(372, 56, 'Series', 'Redmi Note', '2024-12-24 06:08:47', '2024-12-24 06:08:47'),
(373, 56, 'Browser', 'Google Chrome', '2024-12-24 06:08:47', '2024-12-24 06:08:47'),
(374, 56, 'Other Features', 'IP54 Splash Resistant and Dust Protection, Corning Gorilla Glass Victus, MIUI Dialer', '2024-12-24 06:08:47', '2024-12-24 06:08:47'),
(375, 56, 'GPS Type', 'GPS, AGPS, BEIDOU, GLONASS', '2024-12-24 06:08:47', '2024-12-24 06:08:47'),
(376, 57, 'FM Radio', 'No', '2024-12-24 06:09:20', '2024-12-24 06:09:20'),
(377, 57, 'FM Radio Recording', 'No', '2024-12-24 06:09:20', '2024-12-24 06:09:20'),
(378, 57, 'Music Player', 'Yes', '2024-12-24 06:09:20', '2024-12-24 06:09:20'),
(379, 58, 'Battery Capacity', '5100 mAh', '2024-12-24 06:09:50', '2024-12-24 06:09:50'),
(380, 58, 'Battery Type', 'Lithium-ion Polymer', '2024-12-24 06:09:50', '2024-12-24 06:09:50'),
(381, 59, 'Width', '74.24 mm', '2024-12-24 06:10:30', '2024-12-24 06:10:30'),
(382, 59, 'Height', '161.15 mm', '2024-12-24 06:10:30', '2024-12-24 06:10:30'),
(383, 59, 'Depth', '7.98 mm', '2024-12-24 06:10:30', '2024-12-24 06:10:30'),
(384, 59, 'Weight', '187 g', '2024-12-24 06:10:30', '2024-12-24 06:10:30'),
(385, 60, 'Warranty Summary', '1 Year Manufacturer Warranty for Phone and 6 Months Warranty for In the Box Accessories', '2024-12-24 06:10:54', '2024-12-24 06:10:54'),
(386, 60, 'Domestic Warranty', '1 Year', '2024-12-24 06:10:54', '2024-12-24 06:10:54'),
(387, 61, 'In The Box', 'Handset, 67W Charger, Type-C USB Cable, Sim Eject Tool, Protective Case, Quick Start Guide, Warranty Card', '2024-12-24 06:31:26', '2024-12-24 06:31:26'),
(388, 61, 'Model Number', 'MZB0FOKIN', '2024-12-24 06:31:26', '2024-12-24 06:31:26'),
(389, 61, 'Model Name', 'Note 13 Pro 5G', '2024-12-24 06:31:26', '2024-12-24 06:31:26'),
(390, 61, 'Color', 'Midnight Black', '2024-12-24 06:31:26', '2024-12-24 06:31:26'),
(391, 61, 'Browse Type', 'Smartphones', '2024-12-24 06:31:26', '2024-12-24 06:31:26'),
(392, 61, 'SIM Type', 'Dual Sim', '2024-12-24 06:31:26', '2024-12-24 06:31:26'),
(393, 61, 'Hybrid Sim Slot', 'No', '2024-12-24 06:31:26', '2024-12-24 06:31:26'),
(394, 61, 'Touchscreen', 'Yes', '2024-12-24 06:31:26', '2024-12-24 06:31:26'),
(395, 61, 'OTG Compatible', 'Yes', '2024-12-24 06:31:26', '2024-12-24 06:31:26'),
(396, 61, 'Quick Charging', 'Yes', '2024-12-24 06:31:26', '2024-12-24 06:31:26'),
(397, 61, 'Sound Enhancementsc', 'Dual Stereo Speakers with Dolby Atmos', '2024-12-24 06:31:26', '2024-12-24 06:31:26'),
(398, 61, 'SAR Value', 'SAR Limit: 1.6 W/kg, Head SAR: 0.856 W/kg, Body SAR: 0.864 W/kg', '2024-12-24 06:31:26', '2024-12-24 06:31:26'),
(399, 62, 'Display Size', '16.94 cm (6.67 inch)', '2024-12-24 06:33:09', '2024-12-24 06:33:09'),
(400, 62, 'Resolution', '2712 x 1220 Pixels', '2024-12-24 06:33:09', '2024-12-24 06:33:09'),
(401, 62, 'GPU', 'Adreno GPU A710', '2024-12-24 06:33:09', '2024-12-24 06:33:09'),
(402, 62, 'Display Type', '120Hz Adaptive 1.5K AMOLED', '2024-12-24 06:33:09', '2024-12-24 06:33:09'),
(403, 62, 'Other Display Features', 'Contrast: 5,000,000:1, 2160 Hz Instantaneous Touch Sample Rate, 1920 Hz PWM Dimming, 16000 Brightness Levels, 1800 nits Peak Brightness', '2024-12-24 06:33:09', '2024-12-24 06:33:09'),
(404, 63, 'Operating System', 'Android 13', '2024-12-24 06:34:25', '2024-12-24 06:34:25'),
(405, 63, 'Processor Brand', 'Snapdragon', '2024-12-24 06:34:25', '2024-12-24 06:34:25'),
(406, 63, 'Processor Type', '7s Gen 2 Mobile Platform 5G', '2024-12-24 06:34:25', '2024-12-24 06:34:25'),
(407, 63, 'Processor Core', 'Octa Core', '2024-12-24 06:34:25', '2024-12-24 06:34:25'),
(408, 63, 'Primary Clock Speed', '2.4 GHz', '2024-12-24 06:34:25', '2024-12-24 06:34:25'),
(409, 63, 'Secondary Clock Speed', '1.95 GHz', '2024-12-24 06:34:25', '2024-12-24 06:34:25'),
(410, 63, 'Operating Frequency', '2G GSM: B3/B5/B8, 3G WCDMA: B1/B5/B8, 4G LTE FDD: B1/B3/B5/B8, 4G LTE TDD: B38/B40/B41, 5G SA/NSA: N1/N3/N5/N8/N28A/N38/N40/N41/N77/N78', '2024-12-24 06:34:25', '2024-12-24 06:34:25'),
(411, 64, 'Internal Storage', '256 GB', '2024-12-24 06:35:58', '2024-12-24 06:35:58'),
(412, 64, 'RAM', '8 GB', '2024-12-24 06:35:58', '2024-12-24 06:35:58'),
(413, 64, 'Call Log Memory', 'Yes', '2024-12-24 06:35:58', '2024-12-24 06:35:58'),
(414, 65, 'Primary Camera Available', 'Yes', '2024-12-24 06:38:10', '2024-12-24 06:38:10'),
(415, 65, 'Primary Camera', '200MP (OIS) + 8MP + 2MP', '2024-12-24 06:38:10', '2024-12-24 06:38:10'),
(416, 65, 'Primary Camera Features', 'Triple Camera Setup: 200MP Main Camera (ISOCELL HP3 Sensor, f/1.65 Aperture, 1/1.4 inch Sensor Size, OIS + EIS, 0.56um Pixel Size, 7P Lens, ALD Anti Reflective Coating) + 8MP Ultra Wide Camera + 2MP Macro Camera, Features: Photo Mode, 200MP Mode, In-Sensor Zoom with 2X, 4X Lossless Zoom, Night Mode, Documents Mode, Portrait Mode with Beautify and Depth Control, AI Camera, Timed Burst, Tilt Shift, Google Lens, AI Beautify, Movie Frame, Pro Mode, Panorama (Wide, Selfie), HDR, Macro, Timer, Voice Shutter, Assist Cam, Long Exposure, Video Feature: 4K Recording, Short Film, Slow Motion Selfie, Timelapse Selfie, Movie Frame, Steady Video', '2024-12-24 06:38:10', '2024-12-24 06:38:10'),
(417, 65, 'Optical Zoom', 'Yes', '2024-12-24 06:38:10', '2024-12-24 06:38:10'),
(418, 65, 'Secondary Camera Available', 'Yes', '2024-12-24 06:38:10', '2024-12-24 06:38:10'),
(419, 65, 'Secondary Camera', '16MP Front Camera', '2024-12-24 06:38:10', '2024-12-24 06:38:10'),
(420, 65, 'Secondary Camera Features', 'Front Camera Setup: 16MP Camera, Features: Front Video Recording, AI Beautify Mode, HDR, Selfie Timer, Voice Shutter, Palm Shutter, Timed Burst, Portrait Mode with Depth Control, Movie Frame, Night Mode, Screen Ring Light, Panorama Selfies, Assist Cam, Short Video', '2024-12-24 06:38:10', '2024-12-24 06:38:10'),
(421, 65, 'Flash', 'Turbine LED Flash Design', '2024-12-24 06:38:10', '2024-12-24 06:38:10'),
(422, 65, 'HD Recording', 'Yes', '2024-12-24 06:38:10', '2024-12-24 06:38:10'),
(423, 65, 'Full HD Recording', 'Yes', '2024-12-24 06:38:10', '2024-12-24 06:38:10'),
(424, 65, 'Video Recording', 'Yes', '2024-12-24 06:38:10', '2024-12-24 06:38:10'),
(425, 65, 'Video Recording Resolution', 'Rear Camera: 4K (at 30 fps), 1080p (at 60 fps), 1080p (at 30 fps), 720p (at 30 fps) | Front Camera: 1080p (at 60 fps), 720p (at 30 fps)', '2024-12-24 06:38:10', '2024-12-24 06:38:10'),
(426, 65, 'Digital Zoom', 'Upto 10X', '2024-12-24 06:38:10', '2024-12-24 06:38:10'),
(427, 65, 'Frame Rate', '120 Hz fps', '2024-12-24 06:38:10', '2024-12-24 06:38:10'),
(428, 65, 'Image Editor', 'Yes', '2024-12-24 06:38:10', '2024-12-24 06:38:10'),
(429, 65, 'Dual Camera Lens', 'Primary Camera', '2024-12-24 06:38:10', '2024-12-24 06:38:10'),
(430, 66, 'Call Wait/Hold', 'Yes', '2024-12-24 06:56:33', '2024-12-24 06:56:33'),
(431, 66, 'Conference Call', 'Yes', '2024-12-24 06:56:33', '2024-12-24 06:56:33'),
(432, 66, 'Hands Free', 'Yes', '2024-12-24 06:56:33', '2024-12-24 06:56:33'),
(433, 66, 'Call Divert', 'Yes', '2024-12-24 06:56:33', '2024-12-24 06:56:33'),
(434, 66, 'Phone Book', 'Yes', '2024-12-24 06:56:33', '2024-12-24 06:56:33'),
(435, 66, 'Call Timer', 'Yes', '2024-12-24 06:56:33', '2024-12-24 06:56:33'),
(436, 66, 'Speaker Phone', 'Yes', '2024-12-24 06:56:33', '2024-12-24 06:56:33'),
(437, 66, 'Speed Dialing', 'Yes', '2024-12-24 06:56:33', '2024-12-24 06:56:33'),
(438, 66, 'Call Records', 'Yes', '2024-12-24 06:56:33', '2024-12-24 06:56:33'),
(439, 67, 'Network Type', '5G, 4G VOLTE, 4G, 3G, 2G', '2024-12-24 06:59:14', '2024-12-24 06:59:14'),
(440, 67, 'Supported Networks', '5G, 4G VoLTE, 4G LTE, WCDMA, GSM', '2024-12-24 06:59:14', '2024-12-24 06:59:14'),
(441, 67, 'Internet Connectivity', '5G, 4G, 3G, Wi-Fi, EDGE, GPRS', '2024-12-24 06:59:14', '2024-12-24 06:59:14'),
(442, 67, '3G', 'Yes', '2024-12-24 06:59:14', '2024-12-24 06:59:14'),
(443, 67, 'GPRS', 'Yes', '2024-12-24 06:59:14', '2024-12-24 06:59:14'),
(444, 67, 'Micro USB Port', 'Yes', '2024-12-24 06:59:14', '2024-12-24 06:59:14'),
(445, 67, 'Micro USB Version', 'USB Type C', '2024-12-24 06:59:14', '2024-12-24 06:59:14'),
(446, 67, 'Bluetooth Support', 'Yes', '2024-12-24 06:59:14', '2024-12-24 06:59:14'),
(447, 67, 'Bluetooth Version', 'v5.2', '2024-12-24 06:59:14', '2024-12-24 06:59:14'),
(448, 67, 'Wi-Fi', 'Yes', '2024-12-24 06:59:14', '2024-12-24 06:59:14'),
(449, 67, 'Wi-Fi Version', 'Wi-Fi 5, Supports 2.4 GHz and 5 GHz Dual Band', '2024-12-24 06:59:14', '2024-12-24 06:59:14'),
(450, 67, 'Wi-Fi Hotspot', 'Yes', '2024-12-24 06:59:14', '2024-12-24 06:59:14'),
(451, 67, 'Mini HDMI Port', 'No', '2024-12-24 06:59:14', '2024-12-24 06:59:14'),
(452, 67, 'NFC', 'No', '2024-12-24 06:59:14', '2024-12-24 06:59:14'),
(453, 67, 'USB Tethering', 'Yes', '2024-12-24 06:59:14', '2024-12-24 06:59:14'),
(454, 67, 'Infrared', 'Yes', '2024-12-24 06:59:14', '2024-12-24 06:59:14'),
(455, 67, 'USB Connectivity', 'Yes', '2024-12-24 06:59:14', '2024-12-24 06:59:14'),
(456, 67, 'Audio Jack', 'Yes', '2024-12-24 06:59:14', '2024-12-24 06:59:14'),
(457, 67, 'Map Support', 'Google Maps', '2024-12-24 06:59:14', '2024-12-24 06:59:14'),
(458, 67, 'GPS Support', 'Yes', '2024-12-24 06:59:14', '2024-12-24 06:59:14'),
(459, 68, 'Smartphone', 'Yes', '2024-12-24 07:02:03', '2024-12-24 07:02:03'),
(460, 68, 'Touchscreen Type', 'Capacitive', '2024-12-24 07:02:03', '2024-12-24 07:02:03'),
(461, 68, 'SIM Size', 'Nano Sim', '2024-12-24 07:02:03', '2024-12-24 07:02:03'),
(462, 68, 'User Interface', 'Android 13 (Based on MIUI 14)', '2024-12-24 07:02:03', '2024-12-24 07:02:03'),
(463, 68, 'Instant Message', 'Yes', '2024-12-24 07:02:03', '2024-12-24 07:02:03'),
(464, 68, 'Removable Battery', 'No', '2024-12-24 07:02:03', '2024-12-24 07:02:03'),
(465, 68, 'MMS', 'Yes', '2024-12-24 07:02:03', '2024-12-24 07:02:03'),
(466, 68, 'SMS', 'Yes', '2024-12-24 07:02:03', '2024-12-24 07:02:03'),
(467, 68, 'Keypad', 'No', '2024-12-24 07:02:03', '2024-12-24 07:02:03'),
(468, 68, 'Voice Input', 'Yes', '2024-12-24 07:02:03', '2024-12-24 07:02:03'),
(469, 68, 'Graphics PPI', '446 PPI', '2024-12-24 07:02:03', '2024-12-24 07:02:03'),
(470, 68, 'Predictive Text Input', 'Yes', '2024-12-24 07:02:03', '2024-12-24 07:02:03'),
(471, 68, 'Sensors', 'Proximity Sensor, Ambient Light Sensor, Accelerometer, E-Compass, Gyroscope, In-Display Fingerprint Sensor', '2024-12-24 07:02:03', '2024-12-24 07:02:03'),
(472, 68, 'Series', 'Redmi Note', '2024-12-24 07:02:03', '2024-12-24 07:02:03'),
(473, 68, 'Browser', 'Google Chrome', '2024-12-24 07:02:03', '2024-12-24 07:02:03'),
(474, 68, 'Other Features', 'IP54 Splash Resistant and Dust Protection, Corning Gorilla Glass Victus, MIUI Dialer', '2024-12-24 07:02:03', '2024-12-24 07:02:03'),
(475, 68, 'GPS Type', 'GPS, AGPS, BEIDOU, GLONASS', '2024-12-24 07:02:03', '2024-12-24 07:02:03'),
(476, 69, 'FM Radio', 'No', '2024-12-24 07:02:38', '2024-12-24 07:02:38'),
(477, 69, 'FM Radio Recording', 'No', '2024-12-24 07:02:38', '2024-12-24 07:02:38'),
(478, 69, 'Music Player', 'Yes', '2024-12-24 07:02:38', '2024-12-24 07:02:38'),
(479, 70, 'Battery Capacity', '5100 mAh', '2024-12-24 07:03:01', '2024-12-24 07:03:01'),
(480, 70, 'Battery Type', 'Lithium-ion Polymer', '2024-12-24 07:03:01', '2024-12-24 07:03:01'),
(481, 71, 'Width', '74.24 mm', '2024-12-24 07:03:43', '2024-12-24 07:03:43'),
(482, 71, 'Height', '161.15 mm', '2024-12-24 07:03:43', '2024-12-24 07:03:43'),
(483, 71, 'Depth', '7.98 mm', '2024-12-24 07:03:43', '2024-12-24 07:03:43'),
(484, 71, 'Weight', '187 g', '2024-12-24 07:03:43', '2024-12-24 07:03:43'),
(485, 72, 'Warranty Summary', '1 Year Manufacturer Warranty for Phone and 6 Months Warranty for In the Box Accessories', '2024-12-24 07:04:10', '2024-12-24 07:04:10'),
(486, 72, 'Domestic Warranty', '1 Year', '2024-12-24 07:04:10', '2024-12-24 07:04:10'),
(487, 73, 'In The Box', 'Handset, 67W Charger, Type-C USB Cable, Sim Eject Tool, Protective Case, Quick Start Guide, Warranty Card', '2024-12-24 07:12:44', '2024-12-24 07:12:44'),
(488, 73, 'Model Number', 'MZB0G42IN', '2024-12-24 07:12:44', '2024-12-24 07:12:44'),
(489, 73, 'Model Name', 'Note 13 Pro 5G', '2024-12-24 07:12:44', '2024-12-24 07:12:44'),
(490, 73, 'Color', 'Coral Purple', '2024-12-24 07:12:44', '2024-12-24 07:12:44'),
(491, 73, 'Browse Type', 'Smartphones', '2024-12-24 07:12:44', '2024-12-24 07:12:44'),
(492, 73, 'SIM Type', 'Dual Sim', '2024-12-24 07:12:44', '2024-12-24 07:12:44'),
(493, 73, 'Hybrid Sim Slot', 'No', '2024-12-24 07:12:44', '2024-12-24 07:12:44'),
(494, 73, 'Touchscreen', 'Yes', '2024-12-24 07:12:44', '2024-12-24 07:12:44'),
(495, 73, 'OTG Compatible', 'Yes', '2024-12-24 07:12:44', '2024-12-24 07:12:44'),
(496, 73, 'Quick Charging', 'Yes', '2024-12-24 07:12:44', '2024-12-24 07:12:44'),
(497, 73, 'Sound Enhancements', 'Dual Stereo Speakers with Dolby Atmos', '2024-12-24 07:12:44', '2024-12-24 07:12:44'),
(498, 73, 'SAR Value', 'SAR Limit: 1.6 W/kg, Head SAR: 0.856 W/kg, Body SAR: 0.864 W/kg', '2024-12-24 07:12:44', '2024-12-24 07:12:44'),
(499, 74, 'Display Size', '16.94 cm (6.67 inch)', '2024-12-24 07:13:31', '2024-12-24 07:13:31'),
(500, 74, 'Resolution', '2712 x 1220 Pixels', '2024-12-24 07:13:31', '2024-12-24 07:13:31'),
(501, 74, 'GPU', 'Adreno GPU A710', '2024-12-24 07:13:31', '2024-12-24 07:13:31'),
(502, 74, 'Display Type', '120Hz Adaptive 1.5K AMOLED', '2024-12-24 07:13:31', '2024-12-24 07:13:31'),
(503, 74, 'Other Display Features', 'Contrast: 5,000,000:1, 2160 Hz Instantaneous Touch Sample Rate, 1920 Hz PWM Dimming, 16000 Brightness Levels, 1800 nits Peak Brightness', '2024-12-24 07:13:31', '2024-12-24 07:13:31'),
(504, 75, 'Operating System', 'Android 13', '2024-12-24 07:14:28', '2024-12-24 07:14:28'),
(505, 75, 'Processor Brand', 'Snapdragon', '2024-12-24 07:14:28', '2024-12-24 07:14:28'),
(506, 75, 'Processor Type', '7s Gen 2 Mobile Platform 5G', '2024-12-24 07:14:28', '2024-12-24 07:14:28'),
(507, 75, 'Processor Core', 'Octa Core', '2024-12-24 07:14:28', '2024-12-24 07:14:28'),
(508, 75, 'Primary Clock Speed', '2.4 GHz', '2024-12-24 07:14:28', '2024-12-24 07:14:28'),
(509, 75, 'Secondary Clock Speed', '1.95 GHz', '2024-12-24 07:14:28', '2024-12-24 07:14:28'),
(510, 75, 'Operating Frequency', '2G GSM: B3/B5/B8, 3G WCDMA: B1/B5/B8, 4G LTE FDD: B1/B3/B5/B8, 4G LTE TDD: B38/B40/B41, 5G SA/NSA: N1/N3/N5/N8/N28A/N38/N40/N41/N77/N78', '2024-12-24 07:14:28', '2024-12-24 07:14:28'),
(511, 76, 'Internal Storage', '128 GB', '2024-12-24 07:14:59', '2024-12-24 07:14:59'),
(512, 76, 'RAM', '8 GB', '2024-12-24 07:14:59', '2024-12-24 07:14:59'),
(513, 76, 'Call Log Memory', 'Yes', '2024-12-24 07:14:59', '2024-12-24 07:14:59'),
(514, 77, 'Primary Camera Available', 'Yes', '2024-12-24 07:17:00', '2024-12-24 07:17:00'),
(515, 77, 'Primary Camera', '200MP (OIS) + 8MP + 2MP', '2024-12-24 07:17:00', '2024-12-24 07:17:00'),
(516, 77, 'Primary Camera Features', 'Triple Camera Setup: 200MP Main Camera (ISOCELL HP3 Sensor, f/1.65 Aperture, 1/1.4 inch Sensor Size, OIS + EIS, 0.56um Pixel Size, 7P Lens, ALD Anti Reflective Coating) + 8MP Ultra Wide Camera + 2MP Macro Camera, Features: Photo Mode, 200MP Mode, In-Sensor Zoom with 2X, 4X Lossless Zoom, Night Mode, Documents Mode, Portrait Mode with Beautify and Depth Control, AI Camera, Timed Burst, Tilt Shift, Google Lens, AI Beautify, Movie Frame, Pro Mode, Panorama (Wide, Selfie), HDR, Macro, Timer, Voice Shutter, Assist Cam, Long Exposure, Video Feature: 4K Recording, Short Film, Slow Motion Selfie, Timelapse Selfie, Movie Frame, Steady Video', '2024-12-24 07:17:00', '2024-12-24 07:17:00'),
(517, 77, 'Optical Zoom', 'Yes', '2024-12-24 07:17:00', '2024-12-24 07:17:00'),
(518, 77, 'Secondary Camera Available', 'Yes', '2024-12-24 07:17:00', '2024-12-24 07:17:00'),
(519, 77, 'Secondary Camera', '16MP Front Camera', '2024-12-24 07:17:00', '2024-12-24 07:17:00'),
(520, 77, 'Secondary Camera Features', 'Front Camera Setup: 16MP Camera, Features: Front Video Recording, AI Beautify Mode, HDR, Selfie Timer, Voice Shutter, Palm Shutter, Timed Burst, Portrait Mode with Depth Control, Movie Frame, Night Mode, Screen Ring Light, Panorama Selfies, Assist Cam, Short Video', '2024-12-24 07:17:00', '2024-12-24 07:17:00'),
(521, 77, 'Flash', 'Turbine LED Flash Design', '2024-12-24 07:17:00', '2024-12-24 07:17:00'),
(522, 77, 'HD Recording', 'Yes', '2024-12-24 07:17:00', '2024-12-24 07:17:00'),
(523, 77, 'Full HD Recording', 'Yes', '2024-12-24 07:17:00', '2024-12-24 07:17:00'),
(524, 77, 'Video Recording', 'Yes', '2024-12-24 07:17:00', '2024-12-24 07:17:00'),
(525, 77, 'Video Recording Resolution', 'Rear Camera: 4K (at 30 fps), 1080p (at 60 fps), 1080p (at 30 fps), 720p (at 30 fps) | Front Camera: 1080p (at 60 fps), 720p (at 30 fps)', '2024-12-24 07:17:00', '2024-12-24 07:17:00'),
(526, 77, 'Digital Zoom', 'Upto 10X', '2024-12-24 07:17:00', '2024-12-24 07:17:00'),
(527, 77, 'Frame Rate', '120 Hz fps', '2024-12-24 07:17:00', '2024-12-24 07:17:00'),
(528, 77, 'Image Editor', 'Yes', '2024-12-24 07:17:00', '2024-12-24 07:17:00'),
(529, 77, 'Dual Camera Lens', 'Primary Camera', '2024-12-24 07:17:00', '2024-12-24 07:17:00'),
(530, 78, 'Call Wait/Hold', 'Yes', '2024-12-24 07:18:15', '2024-12-24 07:18:15'),
(531, 78, 'Conference Call', 'Yes', '2024-12-24 07:18:15', '2024-12-24 07:18:15'),
(532, 78, 'Hands Free', 'Yes', '2024-12-24 07:18:15', '2024-12-24 07:18:15'),
(533, 78, 'Call Divert', 'Yes', '2024-12-24 07:18:15', '2024-12-24 07:18:15'),
(534, 78, 'Phone Book', 'Yes', '2024-12-24 07:18:15', '2024-12-24 07:18:15'),
(535, 78, 'Call Timer', 'Yes', '2024-12-24 07:18:15', '2024-12-24 07:18:15'),
(536, 78, 'Speaker Phone', 'Yes', '2024-12-24 07:18:15', '2024-12-24 07:18:15'),
(537, 78, 'Speed Dialing', 'Yes', '2024-12-24 07:18:15', '2024-12-24 07:18:15'),
(538, 78, 'Call Records', 'Yes', '2024-12-24 07:18:15', '2024-12-24 07:18:15'),
(539, 79, 'Network Type', '5G, 4G VOLTE, 4G, 3G, 2G', '2024-12-24 07:20:42', '2024-12-24 07:20:42'),
(540, 79, 'Supported Networks', '5G, 4G VoLTE, 4G LTE, WCDMA, GSM', '2024-12-24 07:20:42', '2024-12-24 07:20:42'),
(541, 79, 'Internet Connectivity', '5G, 4G, 3G, Wi-Fi, EDGE, GPRS', '2024-12-24 07:20:42', '2024-12-24 07:20:42'),
(542, 79, '3G', 'Yes', '2024-12-24 07:20:42', '2024-12-24 07:20:42'),
(543, 79, 'GPRS', 'Yes', '2024-12-24 07:20:42', '2024-12-24 07:20:42'),
(544, 79, 'Micro USB Port', 'Yes', '2024-12-24 07:20:42', '2024-12-24 07:20:42'),
(545, 79, 'Micro USB Version', 'USB Type C', '2024-12-24 07:20:42', '2024-12-24 07:20:42'),
(546, 79, 'Bluetooth Support', 'Yes', '2024-12-24 07:20:42', '2024-12-24 07:20:42'),
(547, 79, 'Bluetooth Version', 'v5.2', '2024-12-24 07:20:42', '2024-12-24 07:20:42'),
(548, 79, 'Wi-Fi', 'Yes', '2024-12-24 07:20:42', '2024-12-24 07:20:42'),
(549, 79, 'Wi-Fi Version', 'Wi-Fi 5, Supports 2.4 GHz and 5 GHz Dual Band', '2024-12-24 07:20:42', '2024-12-24 07:20:42'),
(550, 79, 'Wi-Fi Hotspot', 'Yes', '2024-12-24 07:20:42', '2024-12-24 07:20:42'),
(551, 79, 'Mini HDMI Port', 'No', '2024-12-24 07:20:42', '2024-12-24 07:20:42'),
(552, 79, 'NFC', 'No', '2024-12-24 07:20:42', '2024-12-24 07:20:42'),
(553, 79, 'USB Tethering', 'Yes', '2024-12-24 07:20:42', '2024-12-24 07:20:42'),
(554, 79, 'Infrared', 'Yes', '2024-12-24 07:20:42', '2024-12-24 07:20:42'),
(555, 79, 'USB Connectivity', 'Yes', '2024-12-24 07:20:42', '2024-12-24 07:20:42'),
(556, 79, 'Audio Jack', 'Yes', '2024-12-24 07:20:42', '2024-12-24 07:20:42'),
(557, 79, 'Map Support', 'Google Maps', '2024-12-24 07:20:42', '2024-12-24 07:20:42'),
(558, 79, 'GPS Support', 'Yes', '2024-12-24 07:20:42', '2024-12-24 07:20:42'),
(559, 80, 'Smartphone', 'Yes', '2024-12-24 07:21:03', '2024-12-24 07:21:03'),
(560, 80, 'Touchscreen Type', 'Capacitive', '2024-12-24 07:23:04', '2024-12-24 07:23:04'),
(561, 80, 'SIM Size', 'Nano Sim', '2024-12-24 07:23:04', '2024-12-24 07:23:04'),
(562, 80, 'User Interface', 'Android 13 (Based on MIUI 14)', '2024-12-24 07:23:04', '2024-12-24 07:23:04'),
(563, 80, 'Instant Message', 'Yes', '2024-12-24 07:23:04', '2024-12-24 07:23:04'),
(564, 80, 'Removable Battery', 'No', '2024-12-24 07:23:04', '2024-12-24 07:23:04'),
(565, 80, 'MMS', 'Yes', '2024-12-24 07:23:04', '2024-12-24 07:23:04'),
(566, 80, 'SMS', 'Yes', '2024-12-24 07:23:04', '2024-12-24 07:23:04'),
(567, 80, 'Keypad', 'No', '2024-12-24 07:23:04', '2024-12-24 07:23:04'),
(568, 80, 'Voice Input', 'Yes', '2024-12-24 07:23:04', '2024-12-24 07:23:04'),
(569, 80, 'Graphics PPI', '446 PPI', '2024-12-24 07:23:04', '2024-12-24 07:23:04'),
(570, 80, 'Predictive Text Input', 'Yes', '2024-12-24 07:23:04', '2024-12-24 07:23:04'),
(571, 80, 'Sensors', 'Proximity Sensor, Ambient Light Sensor, Accelerometer, E-Compass, Gyroscope, In-Display Fingerprint Sensor', '2024-12-24 07:23:04', '2024-12-24 07:23:04'),
(572, 80, 'Series', 'Redmi Note', '2024-12-24 07:23:04', '2024-12-24 07:23:04'),
(573, 80, 'Browser', 'Google Chrome', '2024-12-24 07:23:04', '2024-12-24 07:23:04'),
(574, 80, 'Other Features', 'IP54 Splash Resistant and Dust Protection, Corning Gorilla Glass Victus, MIUI Dialer', '2024-12-24 07:23:04', '2024-12-24 07:23:04'),
(575, 80, 'GPS Type', 'GPS, AGPS, BEIDOU, GLONASS', '2024-12-24 07:23:04', '2024-12-24 07:23:04'),
(576, 81, 'FM Radio', 'No', '2024-12-24 07:24:15', '2024-12-24 07:24:15'),
(577, 81, 'FM Radio Recording', 'No', '2024-12-24 07:24:15', '2024-12-24 07:24:15'),
(578, 81, 'Music Player', 'Yes', '2024-12-24 07:24:15', '2024-12-24 07:24:15'),
(579, 82, 'Battery Capacity', '5100 mAh', '2024-12-24 07:25:49', '2024-12-24 07:25:49'),
(580, 82, 'Battery Type', 'Lithium-ion Polymer', '2024-12-24 07:25:49', '2024-12-24 07:25:49'),
(581, 83, 'Width', '74.24 mm', '2024-12-24 07:26:27', '2024-12-24 07:26:27'),
(582, 83, 'Height', '161.15 mm', '2024-12-24 07:26:27', '2024-12-24 07:26:27'),
(583, 83, 'Depth', '7.98 mm', '2024-12-24 07:26:27', '2024-12-24 07:26:27'),
(584, 83, 'Weight', '187 g', '2024-12-24 07:26:27', '2024-12-24 07:26:27'),
(585, 84, 'Warranty Summary', '1 Year Manufacturer Warranty for Phone and 6 Months Warranty for In the Box Accessories', '2024-12-24 07:26:54', '2024-12-24 07:26:54'),
(586, 84, 'Domestic Warranty', '1 Year', '2024-12-24 07:26:54', '2024-12-24 07:26:54'),
(587, 85, 'In The Box', 'Handset, 67W Charger, Type-C USB Cable, Sim Eject Tool, Protective Case, Quick Start Guide, Warranty Card', '2024-12-24 07:43:01', '2024-12-24 07:43:01'),
(588, 85, 'Model Number', 'MZB0FOJIN', '2024-12-24 07:43:01', '2024-12-24 07:43:01'),
(589, 85, 'Model Name', 'Note 13 Pro 5G', '2024-12-24 07:43:01', '2024-12-24 07:43:01'),
(590, 85, 'Color', 'Midnight Black', '2024-12-24 07:43:01', '2024-12-24 07:43:01'),
(591, 85, 'Browse Type', 'Smartphones', '2024-12-24 07:43:01', '2024-12-24 07:43:01'),
(592, 85, 'SIM Type', 'Dual Sim', '2024-12-24 07:43:01', '2024-12-24 07:43:01'),
(593, 85, 'Hybrid Sim Slot', 'No', '2024-12-24 07:43:01', '2024-12-24 07:43:01'),
(594, 85, 'Touchscreen', 'Yes', '2024-12-24 07:43:01', '2024-12-24 07:43:01'),
(595, 85, 'OTG Compatible', 'Yes', '2024-12-24 07:43:01', '2024-12-24 07:43:01'),
(596, 85, 'Quick Charging', 'Yes', '2024-12-24 07:43:01', '2024-12-24 07:43:01'),
(597, 85, 'Sound Enhancements', 'Dual Stereo Speakers with Dolby Atmos', '2024-12-24 07:43:01', '2024-12-24 07:43:01'),
(598, 85, 'SAR Value', 'SAR Limit: 1.6 W/kg, Head SAR: 0.856 W/kg, Body SAR: 0.864 W/kg', '2024-12-24 07:43:01', '2024-12-24 07:43:01'),
(599, 86, 'Display Size', '16.94 cm (6.67 inch)', '2024-12-24 07:44:04', '2024-12-24 07:44:04'),
(600, 86, 'Resolution', '2712 x 1220 Pixels', '2024-12-24 07:44:04', '2024-12-24 07:44:04'),
(601, 86, 'GPU', 'Adreno GPU A710', '2024-12-24 07:44:04', '2024-12-24 07:44:04'),
(602, 86, 'Display Type', '120Hz Adaptive 1.5K AMOLED', '2024-12-24 07:44:04', '2024-12-24 07:44:04'),
(603, 86, 'Other Display Features', 'Contrast: 5,000,000:1, 2160 Hz Instantaneous Touch Sample Rate, 1920 Hz PWM Dimming, 16000 Brightness Levels, 1800 nits Peak Brightness', '2024-12-24 07:44:04', '2024-12-24 07:44:04');
INSERT INTO `specification_features` (`id`, `specification_id`, `feature_name`, `feature_value`, `created_at`, `updated_at`) VALUES
(604, 87, 'Operating System', 'Android 13', '2024-12-24 07:45:02', '2024-12-24 07:45:02'),
(605, 87, 'Processor Brand', 'Snapdragon', '2024-12-24 07:45:02', '2024-12-24 07:45:02'),
(606, 87, 'Processor Type', '7s Gen 2 Mobile Platform 5G', '2024-12-24 07:45:02', '2024-12-24 07:45:02'),
(607, 87, 'Processor Core', 'Octa Core', '2024-12-24 07:45:02', '2024-12-24 07:45:02'),
(608, 87, 'Primary Clock Speed', '2.4 GHz', '2024-12-24 07:45:02', '2024-12-24 07:45:02'),
(609, 87, 'Secondary Clock Speed', '1.95 GHz', '2024-12-24 07:45:02', '2024-12-24 07:45:02'),
(610, 87, 'Operating Frequency', '2G GSM: B3/B5/B8, 3G WCDMA: B1/B5/B8, 4G LTE FDD: B1/B3/B5/B8, 4G LTE TDD: B38/B40/B41, 5G SA/NSA: N1/N3/N5/N8/N28A/N38/N40/N41/N77/N78', '2024-12-24 07:45:02', '2024-12-24 07:45:02'),
(611, 88, 'Internal Storage', '128 GB', '2024-12-24 07:45:39', '2024-12-24 07:45:39'),
(612, 88, 'RAM', '8 GB', '2024-12-24 07:45:39', '2024-12-24 07:45:39'),
(613, 88, 'Call Log Memory', 'Yes', '2024-12-24 07:45:39', '2024-12-24 07:45:39'),
(614, 89, 'Primary Camera Available', 'Yes', '2024-12-24 07:48:13', '2024-12-24 07:48:13'),
(615, 89, 'Primary Camera', '200MP (OIS) + 8MP + 2MP', '2024-12-24 07:48:13', '2024-12-24 07:48:13'),
(616, 89, 'Primary Camera Features', 'Triple Camera Setup: 200MP Main Camera (ISOCELL HP3 Sensor, f/1.65 Aperture, 1/1.4 inch Sensor Size, OIS + EIS, 0.56um Pixel Size, 7P Lens, ALD Anti Reflective Coating) + 8MP Ultra Wide Camera + 2MP Macro Camera, Features: Photo Mode, 200MP Mode, In-Sensor Zoom with 2X, 4X Lossless Zoom, Night Mode, Documents Mode, Portrait Mode with Beautify and Depth Control, AI Camera, Timed Burst, Tilt Shift, Google Lens, AI Beautify, Movie Frame, Pro Mode, Panorama (Wide, Selfie), HDR, Macro, Timer, Voice Shutter, Assist Cam, Long Exposure, Video Feature: 4K Recording, Short Film, Slow Motion Selfie, Timelapse Selfie, Movie Frame, Steady Video', '2024-12-24 07:48:13', '2024-12-24 07:48:13'),
(617, 89, 'Optical Zoom', 'Yes', '2024-12-24 07:48:13', '2024-12-24 07:48:13'),
(618, 89, 'Secondary Camera Available', 'Yes', '2024-12-24 07:48:13', '2024-12-24 07:48:13'),
(619, 89, 'Secondary Camera', '16MP Front Camera', '2024-12-24 07:48:13', '2024-12-24 07:48:13'),
(620, 89, 'Secondary Camera Features', 'Front Camera Setup: 16MP Camera, Features: Front Video Recording, AI Beautify Mode, HDR, Selfie Timer, Voice Shutter, Palm Shutter, Timed Burst, Portrait Mode with Depth Control, Movie Frame, Night Mode, Screen Ring Light, Panorama Selfies, Assist Cam, Short Video', '2024-12-24 07:48:13', '2024-12-24 07:48:13'),
(621, 89, 'Flash', 'Turbine LED Flash Design', '2024-12-24 07:48:13', '2024-12-24 07:48:13'),
(622, 89, 'HD Recording', 'Yes', '2024-12-24 07:48:13', '2024-12-24 07:48:13'),
(623, 89, 'Full HD Recording', 'Yes', '2024-12-24 07:48:13', '2024-12-24 07:48:13'),
(624, 89, 'Video Recording', 'Yes', '2024-12-24 07:48:13', '2024-12-24 07:48:13'),
(625, 89, 'Video Recording Resolution', 'Rear Camera: 4K (at 30 fps), 1080p (at 60 fps), 1080p (at 30 fps), 720p (at 30 fps) | Front Camera: 1080p (at 60 fps), 720p (at 30 fps)', '2024-12-24 07:48:13', '2024-12-24 07:48:13'),
(626, 89, 'Digital Zoom', 'Upto 10X', '2024-12-24 07:48:13', '2024-12-24 07:48:13'),
(627, 89, 'Frame Rate', '120 Hz fps', '2024-12-24 07:48:13', '2024-12-24 07:48:13'),
(628, 89, 'Image Editor', 'Yes', '2024-12-24 07:48:13', '2024-12-24 07:48:13'),
(629, 89, 'Dual Camera Lens', 'Primary Camera', '2024-12-24 07:48:13', '2024-12-24 07:48:13'),
(630, 90, 'Call Wait/Hold', 'Yes', '2024-12-24 07:49:07', '2024-12-24 07:49:07'),
(631, 90, 'Conference Call', 'Yes', '2024-12-24 07:49:07', '2024-12-24 07:49:07'),
(632, 90, 'Hands Free', 'Yes', '2024-12-24 07:49:07', '2024-12-24 07:49:07'),
(633, 90, 'Call Divert', 'Yes', '2024-12-24 07:49:07', '2024-12-24 07:49:07'),
(634, 90, 'Phone Book', 'Yes', '2024-12-24 07:49:07', '2024-12-24 07:49:07'),
(635, 90, 'Call Timer', 'Yes', '2024-12-24 07:49:07', '2024-12-24 07:49:07'),
(636, 90, 'Speaker Phone', 'Yes', '2024-12-24 07:49:07', '2024-12-24 07:49:07'),
(637, 90, 'Speed Dialing', 'Yes', '2024-12-24 07:49:07', '2024-12-24 07:49:07'),
(638, 90, 'Call Records', 'Yes', '2024-12-24 07:49:07', '2024-12-24 07:49:07'),
(639, 91, 'Network Type', '5G, 4G VOLTE, 4G, 3G, 2G', '2024-12-24 07:51:43', '2024-12-24 07:51:43'),
(640, 91, 'Supported Networks', '5G, 4G VoLTE, 4G LTE, WCDMA, GSM', '2024-12-24 07:51:43', '2024-12-24 07:51:43'),
(641, 91, 'Internet Connectivity', '5G, 4G, 3G, Wi-Fi, EDGE, GPRS', '2024-12-24 07:51:43', '2024-12-24 07:51:43'),
(642, 91, '3G', 'Yes', '2024-12-24 07:51:43', '2024-12-24 07:51:43'),
(643, 91, 'GPRS', 'Yes', '2024-12-24 07:51:43', '2024-12-24 07:51:43'),
(644, 91, 'Micro USB Port', 'Yes', '2024-12-24 07:51:43', '2024-12-24 07:51:43'),
(645, 91, 'Micro USB Version', 'USB Type C', '2024-12-24 07:51:43', '2024-12-24 07:51:43'),
(646, 91, 'Bluetooth Support', 'Yes', '2024-12-24 07:51:43', '2024-12-24 07:51:43'),
(647, 91, 'Bluetooth Version', 'v5.2', '2024-12-24 07:51:43', '2024-12-24 07:51:43'),
(648, 91, 'Wi-Fi', 'Yes', '2024-12-24 07:51:43', '2024-12-24 07:51:43'),
(649, 91, 'Wi-Fi Version', 'Wi-Fi 5, Supports 2.4 GHz and 5 GHz Dual Band', '2024-12-24 07:51:43', '2024-12-24 07:51:43'),
(650, 91, 'Wi-Fi Hotspot', 'Yes', '2024-12-24 07:51:43', '2024-12-24 07:51:43'),
(651, 91, 'Mini HDMI Port', 'No', '2024-12-24 07:51:43', '2024-12-24 07:51:43'),
(652, 91, 'NFC', 'No', '2024-12-24 07:51:43', '2024-12-24 07:51:43'),
(653, 91, 'USB Tethering', 'Yes', '2024-12-24 07:51:43', '2024-12-24 07:51:43'),
(654, 91, 'Infrared', 'Yes', '2024-12-24 07:51:43', '2024-12-24 07:51:43'),
(655, 91, 'USB Connectivity', 'Yes', '2024-12-24 07:51:43', '2024-12-24 07:51:43'),
(656, 91, 'Audio Jack', 'Yes', '2024-12-24 07:51:43', '2024-12-24 07:51:43'),
(657, 91, 'Map Support', 'Google Maps', '2024-12-24 07:51:43', '2024-12-24 07:51:43'),
(658, 91, 'GPS Support', 'Yes', '2024-12-24 07:51:43', '2024-12-24 07:51:43'),
(659, 92, 'Smartphone', 'Yes', '2024-12-24 07:54:31', '2024-12-24 07:54:31'),
(660, 92, 'Touchscreen Type', 'Capacitive', '2024-12-24 07:54:31', '2024-12-24 07:54:31'),
(661, 92, 'SIM Size', 'Nano Sim', '2024-12-24 07:54:31', '2024-12-24 07:54:31'),
(662, 92, 'User Interface', 'Android 13 (Based on MIUI 14)', '2024-12-24 07:54:31', '2024-12-24 07:54:31'),
(663, 92, 'Instant Message', 'Yes', '2024-12-24 07:54:31', '2024-12-24 07:54:31'),
(664, 92, 'Removable Battery', 'No', '2024-12-24 07:54:31', '2024-12-24 07:54:31'),
(665, 92, 'MMS', 'Yes', '2024-12-24 07:54:31', '2024-12-24 07:54:31'),
(666, 92, 'SMS', 'Yes', '2024-12-24 07:54:31', '2024-12-24 07:54:31'),
(667, 92, 'Keypad', 'No', '2024-12-24 07:54:31', '2024-12-24 07:54:31'),
(668, 92, 'Voice Input', 'Yes', '2024-12-24 07:54:31', '2024-12-24 07:54:31'),
(669, 92, 'Graphics PPI', '446 PPI', '2024-12-24 07:54:31', '2024-12-24 07:54:31'),
(670, 92, 'Predictive Text Input', 'Yes', '2024-12-24 07:54:31', '2024-12-24 07:54:31'),
(671, 92, 'Sensors', 'Proximity Sensor, Ambient Light Sensor, Accelerometer, E-Compass, Gyroscope, In-Display Fingerprint Sensor', '2024-12-24 07:54:31', '2024-12-24 07:54:31'),
(672, 92, 'Series', 'Redmi Note', '2024-12-24 07:54:31', '2024-12-24 07:54:31'),
(673, 92, 'Browser', 'Google Chrome', '2024-12-24 07:54:31', '2024-12-24 07:54:31'),
(674, 92, 'Other Features', 'IP54 Splash Resistant and Dust Protection, Corning Gorilla Glass Victus, MIUI Dialer', '2024-12-24 07:54:31', '2024-12-24 07:54:31'),
(675, 92, 'GPS Type', 'GPS, AGPS, BEIDOU, GLONASS', '2024-12-24 07:54:31', '2024-12-24 07:54:31'),
(676, 93, 'FM Radio', 'No', '2024-12-24 07:55:11', '2024-12-24 07:55:11'),
(677, 93, 'FM Radio Recording', 'No', '2024-12-24 07:55:11', '2024-12-24 07:55:11'),
(678, 93, 'Music Player', 'Yes', '2024-12-24 07:55:11', '2024-12-24 07:55:11'),
(679, 94, 'Battery Capacity', '5100 mAh', '2024-12-24 07:55:47', '2024-12-24 07:55:47'),
(680, 94, 'Battery Type', 'Lithium-ion Polymer', '2024-12-24 07:55:47', '2024-12-24 07:55:47'),
(681, 95, 'Width', '74.24 mm', '2024-12-24 07:57:05', '2024-12-24 07:57:05'),
(682, 95, 'Height', '161.15 mm', '2024-12-24 07:57:05', '2024-12-24 07:57:05'),
(683, 95, 'Depth', '7.98 mm', '2024-12-24 07:57:05', '2024-12-24 07:57:05'),
(684, 95, 'Weight', '187 g', '2024-12-24 07:57:05', '2024-12-24 07:57:05'),
(685, 96, 'Warranty Summary', '1 Year Manufacturer Warranty for Phone and 6 Months Warranty for In the Box Accessories', '2024-12-24 07:57:24', '2024-12-24 07:57:24'),
(686, 96, 'Domestic Warranty', '1 Year', '2024-12-24 07:57:24', '2024-12-24 07:57:24'),
(687, 97, 'In The Box', 'Handset, 67W Charger, Type-C USB Cable, Sim Eject Tool, Protective Case, Quick Start Guide, Warranty Card', '2024-12-24 08:14:37', '2024-12-24 08:14:37'),
(688, 97, 'Model Number', 'MZB0G45IN', '2024-12-24 08:14:37', '2024-12-24 08:14:37'),
(689, 97, 'Model Name', 'Note 13 Pro 5G', '2024-12-24 08:14:37', '2024-12-24 08:14:37'),
(690, 97, 'Color', 'Arctic White', '2024-12-24 08:14:37', '2024-12-24 08:14:37'),
(691, 97, 'Browse Type', 'Smartphones', '2024-12-24 08:14:37', '2024-12-24 08:14:37'),
(692, 97, 'SIM Type', 'Dual Sim', '2024-12-24 08:14:37', '2024-12-24 08:14:37'),
(693, 97, 'Hybrid Sim Slot', 'No', '2024-12-24 08:14:37', '2024-12-24 08:14:37'),
(694, 97, 'Touchscreen', 'Yes', '2024-12-24 08:14:37', '2024-12-24 08:14:37'),
(695, 97, 'OTG Compatible', 'Yes', '2024-12-24 08:14:37', '2024-12-24 08:14:37'),
(696, 97, 'Quick Charging', 'Yes', '2024-12-24 08:14:37', '2024-12-24 08:14:37'),
(697, 97, 'Sound Enhancements', 'Dual Stereo Speakers with Dolby Atmos', '2024-12-24 08:14:37', '2024-12-24 08:14:37'),
(698, 97, 'SAR Value', 'SAR Limit: 1.6 W/kg, Head SAR: 0.856 W/kg, Body SAR: 0.864 W/kg', '2024-12-24 08:14:37', '2024-12-24 08:14:37'),
(699, 98, 'Display Size', '16.94 cm (6.67 inch)', '2024-12-24 08:15:27', '2024-12-24 08:15:27'),
(700, 98, 'Resolution', '2712 x 1220 Pixels', '2024-12-24 08:15:27', '2024-12-24 08:15:27'),
(701, 98, 'GPU', 'Adreno GPU A710', '2024-12-24 08:15:27', '2024-12-24 08:15:27'),
(702, 98, 'Display Type', '120Hz Adaptive 1.5K AMOLED', '2024-12-24 08:15:27', '2024-12-24 08:15:27'),
(703, 98, 'Other Display Features', 'Contrast: 5,000,000:1, 2160 Hz Instantaneous Touch Sample Rate, 1920 Hz PWM Dimming, 16000 Brightness Levels, 1800 nits Peak Brightness', '2024-12-24 08:15:27', '2024-12-24 08:15:27'),
(704, 99, 'Operating System', 'Android 13', '2024-12-24 08:16:28', '2024-12-24 08:16:28'),
(705, 99, 'Processor Brand', 'Snapdragon', '2024-12-24 08:16:28', '2024-12-24 08:16:28'),
(706, 99, 'Processor Type', '7s Gen 2 Mobile Platform 5G', '2024-12-24 08:16:28', '2024-12-24 08:16:28'),
(707, 99, 'Processor Core', 'Octa Core', '2024-12-24 08:16:28', '2024-12-24 08:16:28'),
(708, 99, 'Primary Clock Speed', '2.4 GHz', '2024-12-24 08:16:28', '2024-12-24 08:16:28'),
(709, 99, 'Secondary Clock Speed', '1.95 GHz', '2024-12-24 08:16:28', '2024-12-24 08:16:28'),
(710, 99, 'Operating Frequency', '2G GSM: B3/B5/B8, 3G WCDMA: B1/B5/B8, 4G LTE FDD: B1/B3/B5/B8, 4G LTE TDD: B38/B40/B41, 5G SA/NSA: N1/N3/N5/N8/N28A/N38/N40/N41/N77/N78', '2024-12-24 08:16:28', '2024-12-24 08:16:28'),
(711, 100, 'Internal Storage', '128 GB', '2024-12-24 08:16:56', '2024-12-24 08:16:56'),
(712, 100, 'RAM', '8 GB', '2024-12-24 08:16:56', '2024-12-24 08:16:56'),
(713, 100, 'Call Log Memory', 'Yes', '2024-12-24 08:16:56', '2024-12-24 08:16:56'),
(714, 101, 'Primary Camera Available', 'Yes', '2024-12-24 08:19:25', '2024-12-24 08:19:25'),
(715, 101, 'Primary Camera', '200MP (OIS) + 8MP + 2MP', '2024-12-24 08:19:25', '2024-12-24 08:19:25'),
(716, 101, 'Primary Camera Features', 'Triple Camera Setup: 200MP Main Camera (ISOCELL HP3 Sensor, f/1.65 Aperture, 1/1.4 inch Sensor Size, OIS + EIS, 0.56um Pixel Size, 7P Lens, ALD Anti Reflective Coating) + 8MP Ultra Wide Camera + 2MP Macro Camera, Features: Photo Mode, 200MP Mode, In-Sensor Zoom with 2X, 4X Lossless Zoom, Night Mode, Documents Mode, Portrait Mode with Beautify and Depth Control, AI Camera, Timed Burst, Tilt Shift, Google Lens, AI Beautify, Movie Frame, Pro Mode, Panorama (Wide, Selfie), HDR, Macro, Timer, Voice Shutter, Assist Cam, Long Exposure, Video Feature: 4K Recording, Short Film, Slow Motion Selfie, Timelapse Selfie, Movie Frame, Steady Video', '2024-12-24 08:19:25', '2024-12-24 08:19:25'),
(717, 101, 'Optical Zoom', 'Yes', '2024-12-24 08:19:25', '2024-12-24 08:19:25'),
(718, 101, 'Secondary Camera Available', 'Yes', '2024-12-24 08:19:25', '2024-12-24 08:19:25'),
(719, 101, 'Secondary Camera', '16MP Front Camera', '2024-12-24 08:19:25', '2024-12-24 08:19:25'),
(720, 101, 'Secondary Camera Features', 'Front Camera Setup: 16MP Camera, Features: Front Video Recording, AI Beautify Mode, HDR, Selfie Timer, Voice Shutter, Palm Shutter, Timed Burst, Portrait Mode with Depth Control, Movie Frame, Night Mode, Screen Ring Light, Panorama Selfies, Assist Cam, Short Video', '2024-12-24 08:19:25', '2024-12-24 08:19:25'),
(721, 101, 'Flash', 'Turbine LED Flash Design', '2024-12-24 08:19:25', '2024-12-24 08:19:25'),
(722, 101, 'HD Recording', 'Yes', '2024-12-24 08:19:25', '2024-12-24 08:19:25'),
(723, 101, 'Full HD Recording', 'Yes', '2024-12-24 08:19:25', '2024-12-24 08:19:25'),
(724, 101, 'Video Recording', 'Yes', '2024-12-24 08:19:25', '2024-12-24 08:19:25'),
(725, 101, 'Video Recording Resolution', 'Rear Camera: 4K (at 30 fps), 1080p (at 60 fps), 1080p (at 30 fps), 720p (at 30 fps) | Front Camera: 1080p (at 60 fps), 720p (at 30 fps)', '2024-12-24 08:19:25', '2024-12-24 08:19:25'),
(726, 101, 'Digital Zoom', 'Upto 10X', '2024-12-24 08:19:25', '2024-12-24 08:19:25'),
(727, 101, 'Frame Rate', '120 Hz fps', '2024-12-24 08:19:25', '2024-12-24 08:19:25'),
(728, 101, 'Image Editor', 'Yes', '2024-12-24 08:19:25', '2024-12-24 08:19:25'),
(729, 101, 'Dual Camera Lens', 'Primary Camera', '2024-12-24 08:19:25', '2024-12-24 08:19:25'),
(730, 102, 'Call Wait/Hold', 'Yes', '2024-12-24 08:20:19', '2024-12-24 08:20:19'),
(731, 102, 'Conference Call', 'Yes', '2024-12-24 08:20:19', '2024-12-24 08:20:19'),
(732, 102, 'Hands Free', 'Yes', '2024-12-24 08:20:19', '2024-12-24 08:20:19'),
(733, 102, 'Call Divert', 'Yes', '2024-12-24 08:20:19', '2024-12-24 08:20:19'),
(734, 102, 'Phone Book', 'Yes', '2024-12-24 08:20:19', '2024-12-24 08:20:19'),
(735, 102, 'Call Timer', 'Yes', '2024-12-24 08:20:19', '2024-12-24 08:20:19'),
(736, 102, 'Speaker Phone', 'Yes', '2024-12-24 08:20:19', '2024-12-24 08:20:19'),
(737, 102, 'Speed Dialing', 'Yes', '2024-12-24 08:20:19', '2024-12-24 08:20:19'),
(738, 102, 'Call Records', 'Yes', '2024-12-24 08:20:19', '2024-12-24 08:20:19'),
(739, 103, 'Network Type', '5G, 4G VOLTE, 4G, 3G, 2G', '2024-12-24 08:22:46', '2024-12-24 08:22:46'),
(740, 103, 'Supported Networks', '5G, 4G VoLTE, 4G LTE, WCDMA, GSM', '2024-12-24 08:22:46', '2024-12-24 08:22:46'),
(741, 103, 'Internet Connectivity', '5G, 4G, 3G, Wi-Fi, EDGE, GPRS', '2024-12-24 08:22:46', '2024-12-24 08:22:46'),
(742, 103, '3G', 'Yes', '2024-12-24 08:22:46', '2024-12-24 08:22:46'),
(743, 103, 'GPRS', 'Yes', '2024-12-24 08:22:46', '2024-12-24 08:22:46'),
(744, 103, 'Micro USB Port', 'Yes', '2024-12-24 08:22:46', '2024-12-24 08:22:46'),
(745, 103, 'Micro USB Version', 'USB Type C', '2024-12-24 08:22:46', '2024-12-24 08:22:46'),
(746, 103, 'Bluetooth Support', 'Yes', '2024-12-24 08:22:46', '2024-12-24 08:22:46'),
(747, 103, 'Bluetooth Version', 'v5.2', '2024-12-24 08:22:46', '2024-12-24 08:22:46'),
(748, 103, 'Wi-Fi', 'Yes', '2024-12-24 08:22:46', '2024-12-24 08:22:46'),
(749, 103, 'Wi-Fi Version', 'Wi-Fi 5, Supports 2.4 GHz and 5 GHz Dual Band', '2024-12-24 08:22:46', '2024-12-24 08:22:46'),
(750, 103, 'Wi-Fi Hotspot', 'Yes', '2024-12-24 08:22:46', '2024-12-24 08:22:46'),
(751, 103, 'Mini HDMI Port', 'No', '2024-12-24 08:22:46', '2024-12-24 08:22:46'),
(752, 103, 'NFC', 'No', '2024-12-24 08:22:46', '2024-12-24 08:22:46'),
(753, 103, 'USB Tethering', 'Yes', '2024-12-24 08:22:46', '2024-12-24 08:22:46'),
(754, 103, 'Infrared', 'Yes', '2024-12-24 08:22:46', '2024-12-24 08:22:46'),
(755, 103, 'USB Connectivity', 'Yes', '2024-12-24 08:22:46', '2024-12-24 08:22:46'),
(756, 103, 'Audio Jack', 'Yes', '2024-12-24 08:22:46', '2024-12-24 08:22:46'),
(757, 103, 'Map Support', 'Google Maps', '2024-12-24 08:22:46', '2024-12-24 08:22:46'),
(758, 103, 'GPS Support', 'Yes', '2024-12-24 08:22:46', '2024-12-24 08:22:46'),
(759, 104, 'Smartphone', 'Yes', '2024-12-24 08:24:50', '2024-12-24 08:24:50'),
(760, 104, 'Touchscreen Type', 'Capacitive', '2024-12-24 08:24:50', '2024-12-24 08:24:50'),
(761, 104, 'SIM Size', 'Nano Sim', '2024-12-24 08:24:50', '2024-12-24 08:24:50'),
(762, 104, 'User Interface', 'Android 13 (Based on MIUI 14)', '2024-12-24 08:24:50', '2024-12-24 08:24:50'),
(763, 104, 'Instant Message', 'Yes', '2024-12-24 08:24:50', '2024-12-24 08:24:50'),
(764, 104, 'Removable Battery', 'No', '2024-12-24 08:24:50', '2024-12-24 08:24:50'),
(765, 104, 'MMS', 'Yes', '2024-12-24 08:24:50', '2024-12-24 08:24:50'),
(766, 104, 'SMS', 'Yes', '2024-12-24 08:24:50', '2024-12-24 08:24:50'),
(767, 104, 'Keypad', 'No', '2024-12-24 08:24:50', '2024-12-24 08:24:50'),
(768, 104, 'Voice Input', 'Yes', '2024-12-24 08:24:50', '2024-12-24 08:24:50'),
(769, 104, 'Graphics PPI', '446 PPI', '2024-12-24 08:24:50', '2024-12-24 08:24:50'),
(770, 104, 'Predictive Text Input', 'Yes', '2024-12-24 08:24:50', '2024-12-24 08:24:50'),
(771, 104, 'Sensors', 'Proximity Sensor, Ambient Light Sensor, Accelerometer, E-Compass, Gyroscope, In-Display Fingerprint Sensor', '2024-12-24 08:24:50', '2024-12-24 08:24:50'),
(772, 104, 'Series', 'Redmi Note', '2024-12-24 08:24:50', '2024-12-24 08:24:50'),
(773, 104, 'Browser', 'Google Chrome', '2024-12-24 08:24:50', '2024-12-24 08:24:50'),
(774, 104, 'Other Features', 'IP54 Splash Resistant and Dust Protection, Corning Gorilla Glass Victus, MIUI Dialer', '2024-12-24 08:24:50', '2024-12-24 08:24:50'),
(775, 104, 'GPS Type', 'GPS, AGPS, BEIDOU, GLONASS', '2024-12-24 08:24:50', '2024-12-24 08:24:50'),
(776, 105, 'FM Radio', 'No', '2024-12-24 08:25:28', '2024-12-24 08:25:28'),
(777, 105, 'FM Radio Recording', 'No', '2024-12-24 08:25:28', '2024-12-24 08:25:28'),
(778, 105, 'Music Player', 'Yes', '2024-12-24 08:25:28', '2024-12-24 08:25:28'),
(779, 106, 'Battery Capacity', '5100 mAh', '2024-12-24 08:25:52', '2024-12-24 08:25:52'),
(780, 106, 'Battery Type', 'Lithium-ion Polymer', '2024-12-24 08:25:52', '2024-12-24 08:25:52'),
(781, 107, 'Width', '74.24 mm', '2024-12-24 08:26:27', '2024-12-24 08:26:27'),
(782, 107, 'Height', '161.15 mm', '2024-12-24 08:26:27', '2024-12-24 08:26:27'),
(783, 107, 'Depth', '7.98 mm', '2024-12-24 08:26:27', '2024-12-24 08:26:27'),
(784, 107, 'Weight', '187 g', '2024-12-24 08:26:27', '2024-12-24 08:26:27'),
(785, 108, 'Warranty Summary', '1 Year Manufacturer Warranty for Phone and 6 Months Warranty for In the Box Accessories', '2024-12-24 08:26:52', '2024-12-24 08:26:52'),
(786, 108, 'Domestic Warranty', '1 Year', '2024-12-24 08:26:52', '2024-12-24 08:26:52'),
(787, 109, 'In The Box', 'Handset, 67W Charger, Type-C USB Cable, Sim Eject Tool, Protective Case, Quick Start Guide, Warranty Card', '2024-12-24 08:41:58', '2024-12-24 08:41:58'),
(788, 109, 'Model Number', 'MZB0G43IN', '2024-12-24 08:41:58', '2024-12-24 08:41:58'),
(789, 109, 'Model Name', 'Note 13 Pro 5G', '2024-12-24 08:41:58', '2024-12-24 08:41:58'),
(790, 109, 'Color', 'Coral Purple', '2024-12-24 08:41:58', '2024-12-24 08:41:58'),
(791, 109, 'Browse Type', 'Smartphones', '2024-12-24 08:41:58', '2024-12-24 08:41:58'),
(792, 109, 'SIM Type', 'Dual Sim', '2024-12-24 08:41:58', '2024-12-24 08:41:58'),
(793, 109, 'Hybrid Sim Slot', 'No', '2024-12-24 08:41:58', '2024-12-24 08:41:58'),
(794, 109, 'Touchscreen', 'Yes', '2024-12-24 08:41:58', '2024-12-24 08:41:58'),
(795, 109, 'OTG Compatible', 'Yes', '2024-12-24 08:41:58', '2024-12-24 08:41:58'),
(796, 109, 'Quick Charging', 'Yes', '2024-12-24 08:41:58', '2024-12-24 08:41:58'),
(797, 109, 'Sound Enhancements', 'Dual Stereo Speakers with Dolby Atmos', '2024-12-24 08:41:58', '2024-12-24 08:41:58'),
(798, 109, 'SAR Value', 'SAR Limit: 1.6 W/kg, Head SAR: 0.856 W/kg, Body SAR: 0.864 W/kg', '2024-12-24 08:41:58', '2024-12-24 08:41:58'),
(799, 110, 'Display Size', '16.94 cm (6.67 inch)', '2024-12-24 08:42:43', '2024-12-24 08:42:43'),
(800, 110, 'Resolution', '2712 x 1220 Pixels', '2024-12-24 08:42:43', '2024-12-24 08:42:43'),
(801, 110, 'GPU', 'Adreno GPU A710', '2024-12-24 08:42:43', '2024-12-24 08:42:43'),
(802, 110, 'Display Type', '120Hz Adaptive 1.5K AMOLED', '2024-12-24 08:42:43', '2024-12-24 08:42:43'),
(803, 110, 'Other Display Features', 'Contrast: 5,000,000:1, 2160 Hz Instantaneous Touch Sample Rate, 1920 Hz PWM Dimming, 16000 Brightness Levels, 1800 nits Peak Brightness', '2024-12-24 08:42:43', '2024-12-24 08:42:43'),
(804, 111, 'Operating System', 'Android 13', '2024-12-24 08:43:37', '2024-12-24 08:43:37'),
(805, 111, 'Processor Brand', 'Snapdragon', '2024-12-24 08:43:37', '2024-12-24 08:43:37'),
(806, 111, 'Processor Type', '7s Gen 2 Mobile Platform 5G', '2024-12-24 08:43:37', '2024-12-24 08:43:37'),
(807, 111, 'Processor Core', 'Octa Core', '2024-12-24 08:43:37', '2024-12-24 08:43:37'),
(808, 111, 'Primary Clock Speed', '2.4 GHz', '2024-12-24 08:43:37', '2024-12-24 08:43:37'),
(809, 111, 'Secondary Clock Speed', '1.95 GHz', '2024-12-24 08:43:37', '2024-12-24 08:43:37'),
(810, 111, 'Operating Frequency', '2G GSM: B3/B5/B8, 3G WCDMA: B1/B5/B8, 4G LTE FDD: B1/B3/B5/B8, 4G LTE TDD: B38/B40/B41, 5G SA/NSA: N1/N3/N5/N8/N28A/N38/N40/N41/N77/N78', '2024-12-24 08:43:37', '2024-12-24 08:43:37'),
(811, 112, 'Internal Storage', '256 GB', '2024-12-24 08:44:00', '2024-12-24 08:44:00'),
(812, 112, 'RAM', '8 GB', '2024-12-24 08:44:00', '2024-12-24 08:44:00'),
(813, 112, 'Call Log Memory', 'Yes', '2024-12-24 08:44:00', '2024-12-24 08:44:00'),
(814, 113, 'Primary Camera Available', 'Yes', '2024-12-24 08:45:51', '2024-12-24 08:45:51'),
(815, 113, 'Primary Camera', '200MP (OIS) + 8MP + 2MP', '2024-12-24 08:45:51', '2024-12-24 08:45:51'),
(816, 113, 'Primary Camera Features', 'Triple Camera Setup: 200MP Main Camera (ISOCELL HP3 Sensor, f/1.65 Aperture, 1/1.4 inch Sensor Size, OIS + EIS, 0.56um Pixel Size, 7P Lens, ALD Anti Reflective Coating) + 8MP Ultra Wide Camera + 2MP Macro Camera, Features: Photo Mode, 200MP Mode, In-Sensor Zoom with 2X, 4X Lossless Zoom, Night Mode, Documents Mode, Portrait Mode with Beautify and Depth Control, AI Camera, Timed Burst, Tilt Shift, Google Lens, AI Beautify, Movie Frame, Pro Mode, Panorama (Wide, Selfie), HDR, Macro, Timer, Voice Shutter, Assist Cam, Long Exposure, Video Feature: 4K Recording, Short Film, Slow Motion Selfie, Timelapse Selfie, Movie Frame, Steady Video', '2024-12-24 08:45:51', '2024-12-24 08:45:51'),
(817, 113, 'Optical Zoom', 'Yes', '2024-12-24 08:45:51', '2024-12-24 08:45:51'),
(818, 113, 'Secondary Camera Available', 'Yes', '2024-12-24 08:45:51', '2024-12-24 08:45:51'),
(819, 113, 'Secondary Camera', '16MP Front Camera', '2024-12-24 08:45:51', '2024-12-24 08:45:51'),
(820, 113, 'Secondary Camera Features', 'Front Camera Setup: 16MP Camera, Features: Front Video Recording, AI Beautify Mode, HDR, Selfie Timer, Voice Shutter, Palm Shutter, Timed Burst, Portrait Mode with Depth Control, Movie Frame, Night Mode, Screen Ring Light, Panorama Selfies, Assist Cam, Short Video', '2024-12-24 08:45:51', '2024-12-24 08:45:51'),
(821, 113, 'Flash', 'Turbine LED Flash Design', '2024-12-24 08:45:51', '2024-12-24 08:45:51'),
(822, 113, 'HD Recording', 'Yes', '2024-12-24 08:45:51', '2024-12-24 08:45:51'),
(823, 113, 'Full HD Recording', 'Yes', '2024-12-24 08:45:51', '2024-12-24 08:45:51'),
(824, 113, 'Video Recording', 'Yes', '2024-12-24 08:45:51', '2024-12-24 08:45:51'),
(825, 113, 'Video Recording Resolution', 'Rear Camera: 4K (at 30 fps), 1080p (at 60 fps), 1080p (at 30 fps), 720p (at 30 fps) | Front Camera: 1080p (at 60 fps), 720p (at 30 fps)', '2024-12-24 08:45:51', '2024-12-24 08:45:51'),
(826, 113, 'Digital Zoom', 'Upto 10X', '2024-12-24 08:45:51', '2024-12-24 08:45:51'),
(827, 113, 'Frame Rate', '120 Hz fps', '2024-12-24 08:45:51', '2024-12-24 08:45:51'),
(828, 113, 'Image Editor', 'Yes', '2024-12-24 08:45:51', '2024-12-24 08:45:51'),
(829, 113, 'Dual Camera Lens', 'Primary Camera', '2024-12-24 08:45:51', '2024-12-24 08:45:51'),
(830, 114, 'Call Wait/Hold', 'Yes', '2024-12-24 08:46:36', '2024-12-24 08:46:36'),
(831, 114, 'Conference Call', 'Yes', '2024-12-24 08:46:36', '2024-12-24 08:46:36'),
(832, 114, 'Hands Free', 'Yes', '2024-12-24 08:46:36', '2024-12-24 08:46:36'),
(833, 114, 'Call Divert', 'Yes', '2024-12-24 08:46:36', '2024-12-24 08:46:36'),
(834, 114, 'Phone Book', 'Yes', '2024-12-24 08:46:36', '2024-12-24 08:46:36'),
(835, 114, 'Call Timer', 'Yes', '2024-12-24 08:46:36', '2024-12-24 08:46:36'),
(836, 114, 'Speaker Phone', 'Yes', '2024-12-24 08:46:36', '2024-12-24 08:46:36'),
(837, 114, 'Speed Dialing', 'Yes', '2024-12-24 08:46:36', '2024-12-24 08:46:36'),
(838, 114, 'Call Records', 'Yes', '2024-12-24 08:46:36', '2024-12-24 08:46:36'),
(839, 115, 'Network Type', '5G, 4G VOLTE, 4G, 3G, 2G', '2024-12-24 08:48:56', '2024-12-24 08:48:56'),
(840, 115, 'Supported Networks', '5G, 4G VoLTE, 4G LTE, WCDMA, GSM', '2024-12-24 08:48:56', '2024-12-24 08:48:56'),
(841, 115, 'Internet Connectivity', '5G, 4G, 3G, Wi-Fi, EDGE, GPRS', '2024-12-24 08:48:56', '2024-12-24 08:48:56'),
(842, 115, '3G', 'Yes', '2024-12-24 08:48:56', '2024-12-24 08:48:56'),
(843, 115, 'GPRS', 'Yes', '2024-12-24 08:48:56', '2024-12-24 08:48:56'),
(844, 115, 'Micro USB Port', 'Yes', '2024-12-24 08:48:56', '2024-12-24 08:48:56'),
(845, 115, 'Micro USB Version', 'USB Type C', '2024-12-24 08:48:56', '2024-12-24 08:48:56'),
(846, 115, 'Bluetooth Support', 'Yes', '2024-12-24 08:48:56', '2024-12-24 08:48:56'),
(847, 115, 'Bluetooth Version', 'v5.2', '2024-12-24 08:48:56', '2024-12-24 08:48:56'),
(848, 115, 'Wi-Fi', 'Yes', '2024-12-24 08:48:56', '2024-12-24 08:48:56'),
(849, 115, 'Wi-Fi Version', 'Wi-Fi 5, Supports 2.4 GHz and 5 GHz Dual Band', '2024-12-24 08:48:56', '2024-12-24 08:48:56'),
(850, 115, 'Wi-Fi Hotspot', 'Yes', '2024-12-24 08:48:56', '2024-12-24 08:48:56'),
(851, 115, 'Mini HDMI Port', 'No', '2024-12-24 08:48:56', '2024-12-24 08:48:56'),
(852, 115, 'NFC', 'No', '2024-12-24 08:48:56', '2024-12-24 08:48:56'),
(853, 115, 'USB Tethering', 'Yes', '2024-12-24 08:48:56', '2024-12-24 08:48:56'),
(854, 115, 'Infrared', 'Yes', '2024-12-24 08:48:56', '2024-12-24 08:48:56'),
(855, 115, 'USB Connectivity', 'Yes', '2024-12-24 08:48:56', '2024-12-24 08:48:56'),
(856, 115, 'Audio Jack', 'Yes', '2024-12-24 08:48:56', '2024-12-24 08:48:56'),
(857, 115, 'Map Support', 'Google Maps', '2024-12-24 08:48:56', '2024-12-24 08:48:56'),
(858, 115, 'GPS Support', 'Yes', '2024-12-24 08:48:56', '2024-12-24 08:48:56'),
(859, 116, 'Smartphone', 'Yes', '2024-12-24 08:51:01', '2024-12-24 08:51:01'),
(860, 116, 'Touchscreen Type', 'Capacitive', '2024-12-24 08:51:01', '2024-12-24 08:51:01'),
(861, 116, 'SIM Size', 'Nano Sim', '2024-12-24 08:51:01', '2024-12-24 08:51:01'),
(862, 116, 'User Interface', 'Android 13 (Based on MIUI 14)', '2024-12-24 08:51:01', '2024-12-24 08:51:01'),
(863, 116, 'Instant Message', 'Yes', '2024-12-24 08:51:01', '2024-12-24 08:51:01'),
(864, 116, 'Removable Battery', 'No', '2024-12-24 08:51:01', '2024-12-24 08:51:01'),
(865, 116, 'MMS', 'Yes', '2024-12-24 08:51:01', '2024-12-24 08:51:01'),
(866, 116, 'SMS', 'Yes', '2024-12-24 08:51:01', '2024-12-24 08:51:01'),
(867, 116, 'Keypad', 'No', '2024-12-24 08:51:01', '2024-12-24 08:51:01'),
(868, 116, 'Voice Input', 'Yes', '2024-12-24 08:51:01', '2024-12-24 08:51:01'),
(869, 116, 'Graphics PPI', '446 PPI', '2024-12-24 08:51:01', '2024-12-24 08:51:01'),
(870, 116, 'Predictive Text Input', 'Yes', '2024-12-24 08:51:01', '2024-12-24 08:51:01'),
(871, 116, 'Sensors', 'Proximity Sensor, Ambient Light Sensor, Accelerometer, E-Compass, Gyroscope, In-Display Fingerprint Sensor', '2024-12-24 08:51:01', '2024-12-24 08:51:01'),
(872, 116, 'Series', 'Redmi Note', '2024-12-24 08:51:01', '2024-12-24 08:51:01'),
(873, 116, 'Browser', 'Google Chrome', '2024-12-24 08:51:01', '2024-12-24 08:51:01'),
(874, 116, 'Other Features', 'IP54 Splash Resistant and Dust Protection, Corning Gorilla Glass Victus, MIUI Dialer', '2024-12-24 08:51:01', '2024-12-24 08:51:01'),
(875, 116, 'GPS Type', 'GPS, AGPS, BEIDOU, GLONASS', '2024-12-24 08:51:01', '2024-12-24 08:51:01'),
(876, 117, 'FM Radio', 'No', '2024-12-24 08:51:28', '2024-12-24 08:51:28'),
(877, 117, 'FM Radio Recording', 'No', '2024-12-24 08:51:28', '2024-12-24 08:51:28'),
(878, 117, 'Music Player', 'Yes', '2024-12-24 08:51:28', '2024-12-24 08:51:28'),
(879, 118, 'Battery Capacity', '5100 mAh', '2024-12-24 08:51:48', '2024-12-24 08:51:48'),
(880, 118, 'Battery Type', 'Lithium-ion Polymer', '2024-12-24 08:51:48', '2024-12-24 08:51:48'),
(881, 119, 'Width', '74.24 mm', '2024-12-24 08:52:25', '2024-12-24 08:52:25'),
(882, 119, 'Height', '161.15 mm', '2024-12-24 08:52:25', '2024-12-24 08:52:25'),
(883, 119, 'Depth', '7.98 mm', '2024-12-24 08:52:25', '2024-12-24 08:52:25'),
(884, 119, 'Weight', '187 g', '2024-12-24 08:52:25', '2024-12-24 08:52:25'),
(885, 120, 'Warranty Summary', '1 Year Manufacturer Warranty for Phone and 6 Months Warranty for In the Box Accessories', '2024-12-24 08:52:46', '2024-12-24 08:52:46'),
(886, 120, 'Domestic Warranty', '1 Year', '2024-12-24 08:52:46', '2024-12-24 08:52:46'),
(887, 121, 'Model Number', 'VHU4252IN', '2024-12-24 09:16:49', '2024-12-24 09:16:49'),
(888, 121, 'Model Name', 'Pad', '2024-12-24 09:16:49', '2024-12-24 09:16:49'),
(889, 121, 'Ideal Usage', 'Entertainment, Gaming', '2024-12-24 09:16:49', '2024-12-24 09:16:49'),
(890, 121, 'Color', 'Mint Green', '2024-12-24 09:16:49', '2024-12-24 09:16:49'),
(891, 121, 'Connectivity', 'Wi-Fi Only', '2024-12-24 09:16:49', '2024-12-24 09:16:49'),
(892, 121, 'OS', 'Android', '2024-12-24 09:16:49', '2024-12-24 09:16:49'),
(893, 121, 'Operating System Version', '12', '2024-12-24 09:16:49', '2024-12-24 09:16:49'),
(894, 121, 'RAM', '6 GB', '2024-12-24 09:16:49', '2024-12-24 09:16:49'),
(895, 121, 'Voice Call', 'No', '2024-12-24 09:16:49', '2024-12-24 09:16:49'),
(896, 121, 'Processor Type', 'Octa Core', '2024-12-24 09:16:49', '2024-12-24 09:16:49'),
(897, 122, 'Display Size', '26.95 cm (10.61 Inch)', '2024-12-24 09:17:59', '2024-12-24 09:17:59'),
(898, 122, 'Sales Package', 'Adapter, USB C type Cable, Sim card ejector, Quick start Guide & Warranty card', '2024-12-24 09:17:59', '2024-12-24 09:17:59'),
(899, 122, 'Display Resolution', '2000 X 1200 Pixel', '2024-12-24 09:17:59', '2024-12-24 09:17:59'),
(900, 122, 'Primary Camera', '8.0 megapixels', '2024-12-24 09:17:59', '2024-12-24 09:17:59'),
(901, 122, 'Internal Storage', '128 GB', '2024-12-24 09:17:59', '2024-12-24 09:17:59'),
(902, 122, 'Processor Speed', '2.2 GHz', '2024-12-24 09:17:59', '2024-12-24 09:17:59'),
(903, 122, 'Sensors', 'G Sensor, Light Sensor, E-compass, Hall sensor', '2024-12-24 09:17:59', '2024-12-24 09:17:59'),
(904, 122, 'Sim Type', 'No Sim', '2024-12-24 09:17:59', '2024-12-24 09:17:59'),
(905, 122, 'ROM', '128 GB', '2024-12-24 09:17:59', '2024-12-24 09:17:59'),
(906, 123, 'Battery Capacity', '8000 mAh', '2024-12-24 09:18:15', '2024-12-24 09:18:15'),
(907, 124, 'Secondary Camera', '8 megapixels', '2024-12-24 09:18:51', '2024-12-24 09:18:51'),
(908, 124, 'Video Recording', 'Yes', '2024-12-24 09:18:51', '2024-12-24 09:18:51'),
(909, 124, 'Flash', 'N/A', '2024-12-24 09:18:51', '2024-12-24 09:18:51'),
(910, 125, '3G', 'Yes', '2024-12-24 09:19:28', '2024-12-24 09:19:28'),
(911, 125, 'Bluetooth Version', 'v5.1', '2024-12-24 09:19:28', '2024-12-24 09:19:28'),
(912, 125, 'Browser', 'Android', '2024-12-24 09:19:28', '2024-12-24 09:19:28'),
(913, 125, 'Wi-fi Version', '802.11ac', '2024-12-24 09:19:28', '2024-12-24 09:19:28'),
(914, 126, 'Display Type', 'LCD', '2024-12-24 09:19:42', '2024-12-24 09:19:42'),
(915, 127, 'Warranty', '1 Year', '2024-12-24 09:20:15', '2024-12-24 09:20:15'),
(916, 127, 'Warranty Summary', '1 Year Domestic Warranty', '2024-12-24 09:20:15', '2024-12-24 09:20:15'),
(917, 127, 'Warranty Period', '1 Year', '2024-12-24 09:20:15', '2024-12-24 09:20:15'),
(918, 128, 'Model Number', 'VHU4254IN', '2024-12-24 09:37:03', '2024-12-24 09:37:03'),
(919, 128, 'Model Name', 'Pad', '2024-12-24 09:37:03', '2024-12-24 09:37:03'),
(920, 128, 'Ideal Usage', 'Entertainment, Gaming', '2024-12-24 09:37:03', '2024-12-24 09:37:03'),
(921, 128, 'Color', 'Moonlight Silver', '2024-12-24 09:37:03', '2024-12-24 09:37:03'),
(922, 128, 'Connectivity', 'Wi-Fi Only', '2024-12-24 09:37:03', '2024-12-24 09:37:03'),
(923, 128, 'OS', 'Android', '2024-12-24 09:37:03', '2024-12-24 09:37:03'),
(924, 128, 'Operating System Version', '12', '2024-12-24 09:37:03', '2024-12-24 09:37:03'),
(925, 128, 'RAM', '4 GB', '2024-12-24 09:37:03', '2024-12-24 09:37:03'),
(926, 128, 'Voice Call', 'No', '2024-12-24 09:37:03', '2024-12-24 09:37:03'),
(927, 128, 'Processor Type', 'Octa Core', '2024-12-24 09:37:03', '2024-12-24 09:37:03'),
(928, 129, 'Display Size', '26.95 cm (10.61 Inch)', '2024-12-24 09:38:20', '2024-12-24 09:38:20'),
(929, 129, 'Sales Package', 'Adapter, USB C type Cable, Sim card ejector, Quick start Guide & Warranty card', '2024-12-24 09:38:20', '2024-12-24 09:38:20'),
(930, 129, 'Display Resolution', '2000 X 1200 Pixel', '2024-12-24 09:38:20', '2024-12-24 09:38:20'),
(931, 129, 'Primary Camera', '8.0 megapixels', '2024-12-24 09:38:20', '2024-12-24 09:38:20'),
(932, 129, 'Internal Storage', '128 GB', '2024-12-24 09:38:20', '2024-12-24 09:38:20'),
(933, 129, 'Processor Speed', '2.2 GHz', '2024-12-24 09:38:20', '2024-12-24 09:38:20'),
(934, 129, 'Sensors', 'G Sensor, Light Sensor, E-compass, Hall sensor', '2024-12-24 09:38:20', '2024-12-24 09:38:20'),
(935, 129, 'Sim Type', 'No Sim', '2024-12-24 09:38:20', '2024-12-24 09:38:20'),
(936, 129, 'ROM', '128 GB', '2024-12-24 09:38:20', '2024-12-24 09:38:20'),
(937, 130, 'Battery Capacity', '8000 mAh', '2024-12-24 09:38:33', '2024-12-24 09:38:33'),
(938, 131, 'Secondary Camera', '8 megapixels', '2024-12-24 09:39:08', '2024-12-24 09:39:08'),
(939, 131, 'Video Recording', 'Yes', '2024-12-24 09:39:08', '2024-12-24 09:39:08'),
(940, 131, 'Flash', 'N/A', '2024-12-24 09:39:08', '2024-12-24 09:39:08'),
(941, 132, '3G', 'Yes', '2024-12-24 09:39:50', '2024-12-24 09:39:50'),
(942, 132, 'Bluetooth Version', 'v5.1', '2024-12-24 09:39:50', '2024-12-24 09:39:50'),
(943, 132, 'Browser', 'Android', '2024-12-24 09:39:50', '2024-12-24 09:39:50'),
(944, 132, 'Wi-fi Version', '802.11ac', '2024-12-24 09:39:50', '2024-12-24 09:39:50'),
(945, 133, 'Display Type', 'LCD', '2024-12-24 09:40:09', '2024-12-24 09:40:09'),
(946, 134, 'Warranty', '1 Year', '2024-12-24 09:40:38', '2024-12-24 09:40:38'),
(947, 134, 'Warranty Summary', '1 Year Domestic Warranty', '2024-12-24 09:40:38', '2024-12-24 09:40:38'),
(948, 134, 'Warranty Period', '1 Year', '2024-12-24 09:40:38', '2024-12-24 09:40:38'),
(949, 135, 'Model Number', 'VHU4257IN', '2024-12-24 09:46:48', '2024-12-24 09:46:48'),
(950, 135, 'Model Name', 'Pad', '2024-12-24 09:46:48', '2024-12-24 09:46:48'),
(951, 135, 'Ideal Usage', 'Entertainment, Gaming', '2024-12-24 09:46:48', '2024-12-24 09:46:48'),
(952, 135, 'Color', 'Mint Green', '2024-12-24 09:46:48', '2024-12-24 09:46:48'),
(953, 135, 'Connectivity', 'Wi-Fi Only', '2024-12-24 09:46:48', '2024-12-24 09:46:48'),
(954, 135, 'OS', 'Android', '2024-12-24 09:46:48', '2024-12-24 09:46:48'),
(955, 135, 'Operating System Version', '12', '2024-12-24 09:46:48', '2024-12-24 09:46:48'),
(956, 135, 'RAM', '4 GB', '2024-12-24 09:46:48', '2024-12-24 09:46:48'),
(957, 135, 'Voice Call', 'No', '2024-12-24 09:46:48', '2024-12-24 09:46:48'),
(958, 135, 'Processor Type', 'Octa Core', '2024-12-24 09:46:48', '2024-12-24 09:46:48'),
(959, 136, 'Display Size', '26.95 cm (10.61 Inch)', '2024-12-24 09:47:52', '2024-12-24 09:47:52'),
(960, 136, 'Sales Package', 'Adapter, USB C type Cable, Sim card ejector, Quick start Guide & Warranty card', '2024-12-24 09:47:52', '2024-12-24 09:47:52'),
(961, 136, 'Display Resolution', '2000 X 1200 Pixel', '2024-12-24 09:47:52', '2024-12-24 09:47:52'),
(962, 136, 'Primary Camera', '8.0 megapixels', '2024-12-24 09:47:52', '2024-12-24 09:47:52'),
(963, 136, 'Internal Storage', '128 GB', '2024-12-24 09:47:52', '2024-12-24 09:47:52'),
(964, 136, 'Processor Speed', '2.2 GHz', '2024-12-24 09:47:52', '2024-12-24 09:47:52'),
(965, 136, 'Sensors', 'G Sensor, Light Sensor, E-compass, Hall sensor', '2024-12-24 09:47:52', '2024-12-24 09:47:52'),
(966, 136, 'Sim Type', 'No Sim', '2024-12-24 09:47:52', '2024-12-24 09:47:52'),
(967, 136, 'ROM', '128 GB', '2024-12-24 09:47:52', '2024-12-24 09:47:52'),
(968, 137, 'Battery Capacity', '8000 mAh', '2024-12-24 09:48:06', '2024-12-24 09:48:06'),
(969, 138, 'Secondary Camera', '8 megapixels', '2024-12-24 09:48:36', '2024-12-24 09:48:36'),
(970, 138, 'Video Recording', 'Yes', '2024-12-24 09:48:36', '2024-12-24 09:48:36'),
(971, 138, 'Flash', 'N/A', '2024-12-24 09:48:36', '2024-12-24 09:48:36'),
(972, 139, '3G', 'Yes', '2024-12-24 09:49:14', '2024-12-24 09:49:14'),
(973, 139, 'Bluetooth Version', 'v5.1', '2024-12-24 09:49:14', '2024-12-24 09:49:14'),
(974, 139, 'Browser', 'Android', '2024-12-24 09:49:14', '2024-12-24 09:49:14'),
(975, 139, 'Wi-fi Version', '802.11ac', '2024-12-24 09:49:14', '2024-12-24 09:49:14'),
(976, 140, 'Display Type', 'LCD', '2024-12-24 09:49:25', '2024-12-24 09:49:25'),
(977, 141, 'Warranty', '1 Year', '2024-12-24 09:49:56', '2024-12-24 09:49:56'),
(978, 141, 'Warranty Summary', '1 Year Domestic Warranty', '2024-12-24 09:49:56', '2024-12-24 09:49:56'),
(979, 141, 'Warranty Period', '1 Year', '2024-12-24 09:49:56', '2024-12-24 09:49:56');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_name` varchar(255) NOT NULL,
  `subcategory_image` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `balance` decimal(8,2) NOT NULL DEFAULT 0.00,
  `status` enum('Active','Inactive') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `supplier_name`, `phone`, `email`, `address`, `balance`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Goose Glasses', '018000000000', NULL, 'Patuatuli, Dhaka', 0.00, 'Active', '2024-02-07 02:21:22', '2024-05-02 06:17:00');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `mode` enum('cod','card','online','cash') NOT NULL DEFAULT 'cod',
  `status` enum('paid','unpaid','declined','refunded') DEFAULT 'unpaid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `customer_id`, `order_id`, `mode`, `status`, `created_at`, `updated_at`) VALUES
(108, 73, 135, 'cod', 'unpaid', '2024-06-08 07:58:05', '2024-06-08 07:58:05'),
(109, 74, 136, 'cod', 'unpaid', '2024-06-11 08:03:35', '2024-06-11 08:03:35'),
(114, 75, 141, 'cod', 'unpaid', '2024-06-12 10:17:28', '2024-06-12 10:17:28'),
(115, 76, 142, 'cod', 'paid', '2024-06-13 10:15:32', '2024-06-22 17:49:46'),
(116, 68, 143, 'cod', 'unpaid', '2024-06-24 05:26:46', '2024-06-24 05:26:46'),
(117, 68, 144, 'cod', 'unpaid', '2024-06-24 07:00:07', '2024-06-24 07:00:07'),
(118, 78, 145, 'cod', 'unpaid', '2024-06-24 17:37:55', '2024-06-24 17:37:55'),
(119, 79, 146, 'cod', 'unpaid', '2024-06-24 17:42:52', '2024-06-24 17:42:52'),
(120, 80, 147, 'cod', 'unpaid', '2024-06-25 10:33:52', '2024-06-25 10:33:52'),
(129, 103, 169, 'cod', 'unpaid', '2024-06-27 07:10:12', '2024-06-27 07:10:12'),
(130, 104, 170, 'cod', 'unpaid', '2024-07-01 21:28:59', '2024-07-01 21:28:59'),
(131, 104, 171, 'cod', 'unpaid', '2024-07-03 08:13:10', '2024-07-03 08:13:10'),
(132, 105, 172, 'cod', 'unpaid', '2024-07-03 15:43:27', '2024-07-03 15:43:27'),
(133, 68, 173, 'cod', 'unpaid', '2024-07-04 12:05:12', '2024-07-04 12:05:12'),
(134, 108, 174, 'cod', 'unpaid', '2024-07-08 10:00:59', '2024-07-08 10:00:59'),
(135, 104, 175, 'cod', 'unpaid', '2024-07-09 05:48:18', '2024-07-09 05:48:18'),
(136, 109, 176, 'cod', 'unpaid', '2024-07-10 14:41:00', '2024-07-10 14:41:00'),
(137, 110, 177, 'cod', 'unpaid', '2024-07-13 08:23:30', '2024-07-13 08:23:30'),
(138, 111, 178, 'cod', 'unpaid', '2024-07-14 06:55:31', '2024-07-14 06:55:31'),
(139, 112, 179, 'cod', 'unpaid', '2024-07-29 20:32:04', '2024-07-29 20:32:04'),
(140, 113, 180, 'cod', 'unpaid', '2024-08-10 14:20:13', '2024-08-10 14:20:13'),
(141, 114, 181, 'cod', 'unpaid', '2024-08-12 06:44:29', '2024-08-12 06:44:29'),
(142, 115, 182, 'cod', 'unpaid', '2024-08-12 08:35:22', '2024-08-12 08:35:22'),
(143, 116, 183, 'cash', 'paid', '2024-08-12 10:18:06', '2024-08-12 10:18:06'),
(144, 117, 184, 'cod', 'unpaid', '2024-08-12 15:08:23', '2024-08-12 15:08:23'),
(145, 118, 185, 'cod', 'unpaid', '2024-08-13 01:01:57', '2024-08-13 01:01:57'),
(146, 119, 186, 'cod', 'unpaid', '2024-08-14 10:35:43', '2024-08-14 10:35:43'),
(147, 120, 187, 'cod', 'unpaid', '2024-08-14 10:53:16', '2024-08-14 10:53:16'),
(148, 121, 188, 'cod', 'unpaid', '2024-08-14 11:28:00', '2024-08-14 11:28:00'),
(149, 122, 189, 'cod', 'unpaid', '2024-08-14 12:20:22', '2024-08-14 12:20:22'),
(150, 123, 190, 'cod', 'unpaid', '2024-08-14 13:10:32', '2024-08-14 13:10:32'),
(151, 124, 191, 'cod', 'unpaid', '2024-08-14 14:12:53', '2024-08-14 14:12:53'),
(152, 121, 192, 'cod', 'paid', '2024-08-15 17:08:30', '2024-08-16 08:47:51'),
(153, 125, 193, 'cod', 'unpaid', '2024-08-15 18:44:08', '2024-08-15 18:44:08'),
(154, 127, 194, 'cod', 'unpaid', '2024-08-16 23:29:46', '2024-08-16 23:29:46'),
(155, 121, 195, 'cod', 'unpaid', '2024-08-19 09:42:53', '2024-08-19 09:42:53'),
(156, 129, 196, 'cod', 'unpaid', '2024-08-21 06:54:38', '2024-08-21 06:54:38'),
(157, 131, 197, 'cod', 'unpaid', '2024-08-21 13:27:43', '2024-08-21 13:27:43'),
(158, 132, 198, 'cod', 'unpaid', '2024-08-22 03:22:51', '2024-08-22 03:22:51'),
(159, 133, 199, 'cod', 'unpaid', '2024-08-22 11:46:40', '2024-08-22 11:46:40'),
(160, 134, 200, 'cod', 'unpaid', '2024-08-28 15:48:38', '2024-08-28 15:48:38'),
(161, 135, 201, 'cod', 'unpaid', '2024-08-28 15:55:58', '2024-08-28 15:55:58'),
(162, 136, 202, 'cod', 'unpaid', '2024-08-28 16:19:42', '2024-08-28 16:19:42'),
(163, 137, 203, 'cod', 'unpaid', '2024-08-29 13:13:27', '2024-08-29 13:13:27'),
(164, 138, 204, 'cod', 'unpaid', '2024-08-31 06:54:25', '2024-08-31 06:54:25'),
(165, 139, 205, 'cod', 'unpaid', '2024-09-01 01:58:37', '2024-09-01 01:58:37'),
(166, 140, 206, 'cod', 'unpaid', '2024-09-06 12:16:53', '2024-09-06 12:16:53'),
(167, 141, 207, 'cod', 'paid', '2024-09-08 05:41:46', '2024-09-08 05:50:20'),
(168, 142, 208, 'cod', 'unpaid', '2024-09-08 09:31:13', '2024-09-08 09:31:13'),
(169, 143, 209, 'cod', 'unpaid', '2024-09-09 14:32:55', '2024-09-09 14:32:55'),
(170, 145, 210, 'cod', 'unpaid', '2024-09-11 14:50:20', '2024-09-11 14:50:20'),
(171, 146, 211, 'cod', 'unpaid', '2024-09-13 10:28:56', '2024-09-13 10:28:56'),
(172, 147, 212, 'cod', 'unpaid', '2024-09-15 10:45:08', '2024-09-15 10:45:08'),
(173, 121, 213, 'cod', 'unpaid', '2024-09-21 10:47:39', '2024-09-21 10:47:39'),
(174, 149, 214, 'cod', 'unpaid', '2024-09-21 12:17:12', '2024-09-21 12:17:12'),
(175, 150, 215, 'cod', 'unpaid', '2024-09-27 14:15:19', '2024-09-27 14:15:19'),
(176, 151, 216, 'cod', 'unpaid', '2024-09-28 14:56:01', '2024-09-28 14:56:01'),
(177, 152, 217, 'cod', 'unpaid', '2024-09-29 03:49:48', '2024-09-29 03:49:48'),
(178, 154, 218, 'cod', 'unpaid', '2024-10-03 23:59:51', '2024-10-03 23:59:51'),
(179, 155, 219, 'cod', 'unpaid', '2024-10-04 16:54:47', '2024-10-04 16:54:47'),
(180, 156, 220, 'cod', 'unpaid', '2024-10-08 06:02:36', '2024-10-08 06:02:36'),
(181, 157, 221, 'cod', 'unpaid', '2024-10-08 15:31:13', '2024-10-08 15:31:13'),
(182, 158, 222, 'cod', 'unpaid', '2024-10-10 13:19:13', '2024-10-10 13:19:13'),
(183, 159, 223, 'cod', 'unpaid', '2024-10-13 11:08:05', '2024-10-13 11:08:05'),
(184, 160, 224, 'cod', 'unpaid', '2024-10-15 01:13:57', '2024-10-15 01:13:57'),
(185, 165, 225, 'cod', 'unpaid', '2024-10-21 09:19:02', '2024-10-21 09:19:02'),
(186, 167, 226, 'cod', 'unpaid', '2024-10-26 04:14:21', '2024-10-26 04:14:21'),
(187, 168, 227, 'cod', 'unpaid', '2024-10-26 14:32:29', '2024-10-26 14:32:29'),
(188, 170, 228, 'cod', 'paid', '2024-10-31 04:20:36', '2024-11-06 14:14:50'),
(189, 172, 229, 'cod', 'paid', '2024-11-05 06:40:43', '2024-11-06 14:14:47'),
(190, 121, 230, 'cod', 'unpaid', '2024-11-05 06:51:22', '2024-11-05 06:51:22'),
(191, 174, 231, 'cod', 'unpaid', '2024-11-07 05:12:08', '2024-11-07 05:12:08'),
(192, 175, 232, 'cod', 'unpaid', '2024-11-16 18:30:31', '2024-11-16 18:30:31'),
(193, 121, 233, 'cod', 'unpaid', '2024-11-28 09:24:43', '2024-11-28 09:24:43'),
(194, 178, 234, 'cod', 'unpaid', '2024-11-28 13:45:37', '2024-11-28 13:45:37'),
(195, 179, 235, 'cod', 'unpaid', '2024-12-01 18:22:48', '2024-12-01 18:22:48'),
(196, 180, 236, 'cod', 'unpaid', '2024-12-02 05:54:48', '2024-12-02 05:54:48'),
(197, 181, 237, 'cod', 'paid', '2024-12-05 13:57:53', '2025-01-07 06:07:59'),
(198, 182, 238, 'cod', 'paid', '2024-12-11 15:11:05', '2025-01-07 06:07:20'),
(208, 192, 259, 'cod', 'paid', '2025-01-07 06:04:45', '2025-01-07 06:05:39'),
(209, 192, 260, 'cod', 'paid', '2025-01-07 06:06:49', '2025-01-07 06:09:17'),
(210, 192, 261, 'cod', 'unpaid', '2025-01-07 06:08:52', '2025-01-07 06:08:52');

-- --------------------------------------------------------

--
-- Table structure for table `upazillas`
--

CREATE TABLE `upazillas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `bn_name` varchar(255) NOT NULL,
  `zone_charge` decimal(10,0) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `upazillas`
--

INSERT INTO `upazillas` (`id`, `district_id`, `name`, `bn_name`, `zone_charge`, `created_at`, `updated_at`) VALUES
(1, 34, 'Amtali', 'আমতলী', 130, NULL, NULL),
(2, 34, 'Bamna', 'বামনা', 130, NULL, NULL),
(3, 34, 'Barguna Sadar', 'বরগুনা সদর', 130, NULL, NULL),
(4, 34, 'Betagi', 'বেতাগি', 130, NULL, NULL),
(5, 34, 'Patharghata', 'পাথরঘাটা', 130, NULL, NULL),
(6, 34, 'Taltali', 'তালতলী', 130, NULL, NULL),
(7, 35, 'Muladi', 'মুলাদি', 130, NULL, NULL),
(8, 35, 'Babuganj', 'বাবুগঞ্জ', 130, NULL, NULL),
(9, 35, 'Agailjhara', 'আগাইলঝরা', 130, NULL, NULL),
(10, 35, 'Barisal Sadar', 'বরিশাল সদর', 130, NULL, NULL),
(11, 35, 'Bakerganj', 'বাকেরগঞ্জ', 130, NULL, NULL),
(12, 35, 'Banaripara', 'বানাড়িপারা', 130, NULL, NULL),
(13, 35, 'Gaurnadi', 'গৌরনদী', 130, NULL, NULL),
(14, 35, 'Hizla', 'হিজলা', 130, NULL, NULL),
(15, 35, 'Mehendiganj', 'মেহেদিগঞ্জ ', 130, NULL, NULL),
(16, 35, 'Wazirpur', 'ওয়াজিরপুর', 130, NULL, NULL),
(17, 36, 'Bhola Sadar', 'ভোলা সদর', 130, NULL, NULL),
(18, 36, 'Burhanuddin', 'বুরহানউদ্দিন', 130, NULL, NULL),
(19, 36, 'Char Fasson', 'চর ফ্যাশন', 130, NULL, NULL),
(20, 36, 'Daulatkhan', 'দৌলতখান', 130, NULL, NULL),
(21, 36, 'Lalmohan', 'লালমোহন', 130, NULL, NULL),
(22, 36, 'Manpura', 'মনপুরা', 130, NULL, NULL),
(23, 36, 'Tazumuddin', 'তাজুমুদ্দিন', 130, NULL, NULL),
(24, 37, 'Jhalokati Sadar', 'ঝালকাঠি সদর', 130, NULL, NULL),
(25, 37, 'Kathalia', 'কাঁঠালিয়া', 130, NULL, NULL),
(26, 37, 'Nalchity', 'নালচিতি', 130, NULL, NULL),
(27, 37, 'Rajapur', 'রাজাপুর', 130, NULL, NULL),
(28, 38, 'Bauphal', 'বাউফল', 130, NULL, NULL),
(29, 38, 'Dashmina', 'দশমিনা', 130, NULL, NULL),
(30, 38, 'Galachipa', 'গলাচিপা', 130, NULL, NULL),
(31, 38, 'Kalapara', 'কালাপারা', 130, NULL, NULL),
(32, 38, 'Mirzaganj', 'মির্জাগঞ্জ ', 130, NULL, NULL),
(33, 38, 'Patuakhali Sadar', 'পটুয়াখালী সদর', 130, NULL, NULL),
(34, 38, 'Dumki', 'ডুমকি', 130, NULL, NULL),
(35, 38, 'Rangabali', 'রাঙ্গাবালি', 130, NULL, NULL),
(36, 39, 'Bhandaria', 'ভ্যান্ডারিয়া', 130, NULL, NULL),
(37, 39, 'Kaukhali', 'কাউখালি', 130, NULL, NULL),
(38, 39, 'Mathbaria', 'মাঠবাড়িয়া', 130, NULL, NULL),
(39, 39, 'Nazirpur', 'নাজিরপুর', 130, NULL, NULL),
(40, 39, 'Nesarabad', 'নেসারাবাদ', 130, NULL, NULL),
(41, 39, 'Pirojpur Sadar', 'পিরোজপুর সদর', 130, NULL, NULL),
(42, 39, 'Zianagar', 'জিয়ানগর', 130, NULL, NULL),
(43, 40, 'Bandarban Sadar', 'বান্দরবন সদর', 130, NULL, NULL),
(44, 40, 'Thanchi', 'থানচি', 130, NULL, NULL),
(45, 40, 'Lama', 'লামা', 130, NULL, NULL),
(46, 40, 'Naikhongchhari', 'নাইখংছড়ি ', 130, NULL, NULL),
(47, 40, 'Ali kadam', 'আলী কদম', 130, NULL, NULL),
(48, 40, 'Rowangchhari', 'রউয়াংছড়ি ', 130, NULL, NULL),
(49, 40, 'Ruma', 'রুমা', 130, NULL, NULL),
(50, 41, 'Brahmanbaria Sadar', 'ব্রাহ্মণবাড়িয়া সদর', 130, NULL, NULL),
(51, 41, 'Ashuganj', 'আশুগঞ্জ', 130, NULL, NULL),
(52, 41, 'Nasirnagar', 'নাসির নগর', 130, NULL, NULL),
(53, 41, 'Nabinagar', 'নবীনগর', 130, NULL, NULL),
(54, 41, 'Sarail', 'সরাইল', 130, NULL, NULL),
(55, 41, 'Shahbazpur Town', 'শাহবাজপুর টাউন', 130, NULL, NULL),
(56, 41, 'Kasba', 'কসবা', 130, NULL, NULL),
(57, 41, 'Akhaura', 'আখাউরা', 130, NULL, NULL),
(58, 41, 'Bancharampur', 'বাঞ্ছারামপুর', 130, NULL, NULL),
(59, 41, 'Bijoynagar', 'বিজয় নগর', 130, NULL, NULL),
(60, 42, 'Chandpur Sadar', 'চাঁদপুর সদর', 130, NULL, NULL),
(61, 42, 'Faridganj', 'ফরিদগঞ্জ', 130, NULL, NULL),
(62, 42, 'Haimchar', 'হাইমচর', 130, NULL, NULL),
(63, 42, 'Haziganj', 'হাজীগঞ্জ', 130, NULL, NULL),
(64, 42, 'Kachua', 'কচুয়া', 130, NULL, NULL),
(65, 42, 'Matlab Uttar', 'মতলব উত্তর', 130, NULL, NULL),
(66, 42, 'Matlab Dakkhin', 'মতলব দক্ষিণ', 130, NULL, NULL),
(67, 42, 'Shahrasti', 'শাহরাস্তি', 130, NULL, NULL),
(68, 43, 'Anwara', 'আনোয়ারা', 130, NULL, NULL),
(69, 43, 'Banshkhali', 'বাশখালি', 130, NULL, NULL),
(70, 43, 'Boalkhali', 'বোয়ালখালি', 130, NULL, NULL),
(71, 43, 'Chandanaish', 'চন্দনাইশ', 130, NULL, NULL),
(72, 43, 'Fatikchhari', 'ফটিকছড়ি', 130, NULL, NULL),
(73, 43, 'Hathazari', 'হাঠহাজারী', 130, NULL, NULL),
(74, 43, 'Lohagara', 'লোহাগারা', 130, NULL, NULL),
(75, 43, 'Mirsharai', 'মিরসরাই', 130, NULL, NULL),
(76, 43, 'Patiya', 'পটিয়া', 130, NULL, NULL),
(77, 43, 'Rangunia', 'রাঙ্গুনিয়া', 130, NULL, NULL),
(78, 43, 'Raozan', 'রাউজান', 130, NULL, NULL),
(79, 43, 'Sandwip', 'সন্দ্বীপ', 130, NULL, NULL),
(80, 43, 'Satkania', 'সাতকানিয়া', 130, NULL, NULL),
(81, 43, 'Sitakunda', 'সীতাকুণ্ড', 130, NULL, NULL),
(82, 44, 'Barura', 'বড়ুরা', 130, NULL, NULL),
(83, 44, 'Brahmanpara', 'ব্রাহ্মণপাড়া', 130, NULL, NULL),
(84, 44, 'Burichong', 'বুড়িচং', 130, NULL, NULL),
(85, 44, 'Chandina', 'চান্দিনা', 130, NULL, NULL),
(86, 44, 'Chauddagram', 'চৌদ্দগ্রাম', 130, NULL, NULL),
(87, 44, 'Daudkandi', 'দাউদকান্দি', 130, NULL, NULL),
(88, 44, 'Debidwar', 'দেবীদ্বার', 130, NULL, NULL),
(89, 44, 'Homna', 'হোমনা', 130, NULL, NULL),
(90, 44, 'Comilla Sadar', 'কুমিল্লা সদর', 130, NULL, NULL),
(91, 44, 'Laksam', 'লাকসাম', 130, NULL, NULL),
(92, 44, 'Monohorgonj', 'মনোহরগঞ্জ', 130, NULL, NULL),
(93, 44, 'Meghna', 'মেঘনা', 130, NULL, NULL),
(94, 44, 'Muradnagar', 'মুরাদনগর', 130, NULL, NULL),
(95, 44, 'Nangalkot', 'নাঙ্গালকোট', 130, NULL, NULL),
(96, 44, 'Comilla Sadar South', 'কুমিল্লা সদর দক্ষিণ', 130, NULL, NULL),
(97, 44, 'Titas', 'তিতাস', 130, NULL, NULL),
(98, 45, 'Chakaria', 'চকরিয়া', 130, NULL, NULL),
(100, 45, '{{198}}\'\'{{199}}', 'কক্স বাজার সদর', 130, NULL, NULL),
(101, 45, 'Kutubdia', 'কুতুবদিয়া', 130, NULL, NULL),
(102, 45, 'Maheshkhali', 'মহেশখালী', 130, NULL, NULL),
(103, 45, 'Ramu', 'রামু', 130, NULL, NULL),
(104, 45, 'Teknaf', 'টেকনাফ', 130, NULL, NULL),
(105, 45, 'Ukhia', 'উখিয়া', 130, NULL, NULL),
(106, 45, 'Pekua', 'পেকুয়া', 130, NULL, NULL),
(107, 46, 'Feni Sadar', 'ফেনী সদর', 130, NULL, NULL),
(108, 46, 'Chagalnaiya', 'ছাগল নাইয়া', 130, NULL, NULL),
(109, 46, 'Daganbhyan', 'দাগানভিয়া', 130, NULL, NULL),
(110, 46, 'Parshuram', 'পরশুরাম', 130, NULL, NULL),
(111, 46, 'Fhulgazi', 'ফুলগাজি', 130, NULL, NULL),
(112, 46, 'Sonagazi', 'সোনাগাজি', 130, NULL, NULL),
(113, 47, 'Dighinala', 'দিঘিনালা ', 130, NULL, NULL),
(114, 47, 'Khagrachhari', 'খাগড়াছড়ি', 130, NULL, NULL),
(115, 47, 'Lakshmichhari', 'লক্ষ্মীছড়ি', 130, NULL, NULL),
(116, 47, 'Mahalchhari', 'মহলছড়ি', 130, NULL, NULL),
(117, 47, 'Manikchhari', 'মানিকছড়ি', 130, NULL, NULL),
(118, 47, 'Matiranga', 'মাটিরাঙ্গা', 130, NULL, NULL),
(119, 47, 'Panchhari', 'পানছড়ি', 130, NULL, NULL),
(120, 47, 'Ramgarh', 'রামগড়', 130, NULL, NULL),
(121, 48, 'Lakshmipur Sadar', 'লক্ষ্মীপুর সদর', 130, NULL, NULL),
(122, 48, 'Raipur', 'রায়পুর', 130, NULL, NULL),
(123, 48, 'Ramganj', 'রামগঞ্জ', 130, NULL, NULL),
(124, 48, 'Ramgati', 'রামগতি', 130, NULL, NULL),
(125, 48, 'Komol Nagar', 'কমল নগর', 130, NULL, NULL),
(126, 49, 'Noakhali Sadar', 'নোয়াখালী সদর', 130, NULL, NULL),
(127, 49, 'Begumganj', 'বেগমগঞ্জ', 130, NULL, NULL),
(128, 49, 'Chatkhil', 'চাটখিল', 130, NULL, NULL),
(129, 49, 'Companyganj', 'কোম্পানীগঞ্জ', 130, NULL, NULL),
(130, 49, 'Shenbag', 'শেনবাগ', 130, NULL, NULL),
(131, 49, 'Hatia', 'হাতিয়া', 130, NULL, NULL),
(132, 49, 'Kobirhat', 'কবিরহাট ', 130, NULL, NULL),
(133, 49, 'Sonaimuri', 'সোনাইমুরি', 130, NULL, NULL),
(134, 49, 'Suborno Char', 'সুবর্ণ চর ', 130, NULL, NULL),
(135, 50, 'Rangamati Sadar', 'রাঙ্গামাটি সদর', 130, NULL, NULL),
(136, 50, 'Belaichhari', 'বেলাইছড়ি', 130, NULL, NULL),
(137, 50, 'Bagaichhari', 'বাঘাইছড়ি', 130, NULL, NULL),
(138, 50, 'Barkal', 'বরকল', 130, NULL, NULL),
(139, 50, 'Juraichhari', 'জুরাইছড়ি', 130, NULL, NULL),
(140, 50, 'Rajasthali', 'রাজাস্থলি', 130, NULL, NULL),
(141, 50, 'Kaptai', 'কাপ্তাই', 130, NULL, NULL),
(142, 50, 'Langadu', 'লাঙ্গাডু', 130, NULL, NULL),
(143, 50, 'Nannerchar', 'নান্নেরচর ', 130, NULL, NULL),
(144, 50, 'Kaukhali', 'কাউখালি', 130, NULL, NULL),
(145, 1, 'Dhamrai', 'ধামরাই', 80, NULL, NULL),
(146, 1, 'Dohar', 'দোহার', 80, NULL, '2024-01-29 03:04:04'),
(147, 1, 'Keraniganj', 'কেরানীগঞ্জ', 80, NULL, NULL),
(148, 1, 'Nawabganj', 'নবাবগঞ্জ', 80, NULL, NULL),
(149, 1, 'Savar', 'সাভার', 80, NULL, NULL),
(150, 2, 'Faridpur Sadar', 'ফরিদপুর সদর', 130, NULL, NULL),
(151, 2, 'Boalmari', 'বোয়ালমারী', 130, NULL, NULL),
(152, 2, 'Alfadanga', 'আলফাডাঙ্গা', 130, NULL, NULL),
(153, 2, 'Madhukhali', 'মধুখালি', 130, NULL, NULL),
(154, 2, 'Bhanga', 'ভাঙ্গা', 130, NULL, NULL),
(155, 2, 'Nagarkanda', 'নগরকান্ড', 130, NULL, NULL),
(156, 2, 'Charbhadrasan', 'চরভদ্রাসন ', 130, NULL, NULL),
(157, 2, 'Sadarpur', 'সদরপুর', 130, NULL, NULL),
(158, 2, 'Shaltha', 'শালথা', 130, NULL, NULL),
(159, 3, 'Gazipur Sadar-Joydebpur', 'গাজীপুর সদর', 130, NULL, NULL),
(160, 3, 'Kaliakior', 'কালিয়াকৈর', 130, NULL, NULL),
(161, 3, 'Kapasia', 'কাপাসিয়া', 130, NULL, NULL),
(162, 3, 'Sripur', 'শ্রীপুর', 50, NULL, '2024-01-29 03:51:16'),
(163, 3, 'Kaliganj', 'কালীগঞ্জ', 130, NULL, NULL),
(164, 3, 'Tongi', 'টঙ্গি', 130, NULL, NULL),
(165, 4, 'Gopalganj Sadar', 'গোপালগঞ্জ সদর', 130, NULL, NULL),
(166, 4, 'Kashiani', 'কাশিয়ানি', 130, NULL, NULL),
(167, 4, 'Kotalipara', 'কোটালিপাড়া', 130, NULL, NULL),
(168, 4, 'Muksudpur', 'মুকসুদপুর', 130, NULL, NULL),
(169, 4, 'Tungipara', 'টুঙ্গিপাড়া', 130, NULL, NULL),
(170, 5, 'Dewanganj', 'দেওয়ানগঞ্জ', 130, NULL, NULL),
(171, 5, 'Baksiganj', 'বকসিগঞ্জ', 130, NULL, NULL),
(172, 5, 'Islampur', 'ইসলামপুর', 130, NULL, NULL),
(173, 5, 'Jamalpur Sadar', 'জামালপুর সদর', 130, NULL, NULL),
(174, 5, 'Madarganj', 'মাদারগঞ্জ', 130, NULL, NULL),
(175, 5, 'Melandaha', 'মেলানদাহা', 130, NULL, NULL),
(176, 5, 'Sarishabari', 'সরিষাবাড়ি ', 130, NULL, NULL),
(177, 5, 'Narundi Police I.C', 'নারুন্দি', 130, NULL, NULL),
(178, 6, 'Astagram', 'অষ্টগ্রাম', 130, NULL, NULL),
(179, 6, 'Bajitpur', 'বাজিতপুর', 130, NULL, NULL),
(180, 6, 'Bhairab', 'ভৈরব', 130, NULL, NULL),
(181, 6, 'Hossainpur', 'হোসেনপুর ', 130, NULL, NULL),
(182, 6, 'Itna', 'ইটনা', 130, NULL, NULL),
(183, 6, 'Karimganj', 'করিমগঞ্জ', 130, NULL, NULL),
(184, 6, 'Katiadi', 'কতিয়াদি', 130, NULL, NULL),
(185, 6, 'Kishoreganj Sadar', 'কিশোরগঞ্জ সদর', 130, NULL, NULL),
(186, 6, 'Kuliarchar', 'কুলিয়ারচর', 130, NULL, NULL),
(187, 6, 'Mithamain', 'মিঠামাইন', 130, NULL, NULL),
(188, 6, 'Nikli', 'নিকলি', 130, NULL, NULL),
(189, 6, 'Pakundia', 'পাকুন্ডা', 130, NULL, NULL),
(190, 6, 'Tarail', 'তাড়াইল', 130, NULL, NULL),
(191, 7, 'Madaripur Sadar', 'মাদারীপুর সদর', 130, NULL, NULL),
(192, 7, 'Kalkini', 'কালকিনি', 130, NULL, NULL),
(193, 7, 'Rajoir', 'রাজইর', 130, NULL, NULL),
(194, 7, 'Shibchar', 'শিবচর', 130, NULL, NULL),
(195, 8, 'Manikganj Sadar', 'মানিকগঞ্জ সদর', 130, NULL, NULL),
(196, 8, 'Singair', 'সিঙ্গাইর', 130, NULL, NULL),
(197, 8, 'Shibalaya', 'শিবালয়', 130, NULL, NULL),
(198, 8, 'Saturia', 'সাটুরিয়া', 130, NULL, NULL),
(199, 8, 'Harirampur', 'হরিরামপুর', 130, NULL, NULL),
(200, 8, 'Ghior', 'ঘিওর', 130, NULL, NULL),
(201, 8, 'Daulatpur', 'দৌলতপুর', 130, NULL, NULL),
(202, 9, 'Lohajang', 'লোহাজং', 130, NULL, NULL),
(203, 9, 'Sreenagar', 'শ্রীনগর', 130, NULL, NULL),
(204, 9, 'Munshiganj Sadar', 'মুন্সিগঞ্জ সদর', 130, NULL, NULL),
(205, 9, 'Sirajdikhan', 'সিরাজদিখান', 130, NULL, NULL),
(206, 9, 'Tongibari', 'টঙ্গিবাড়ি', 130, NULL, NULL),
(207, 9, 'Gazaria', 'গজারিয়া', 130, NULL, NULL),
(208, 10, 'Bhaluka', 'ভালুকা', 130, NULL, NULL),
(209, 10, 'Trishal', 'ত্রিশাল', 130, NULL, NULL),
(210, 10, 'Haluaghat', 'হালুয়াঘাট', 130, NULL, NULL),
(211, 10, 'Muktagachha', 'মুক্তাগাছা', 130, NULL, NULL),
(212, 10, 'Dhobaura', 'ধবারুয়া', 130, NULL, NULL),
(213, 10, 'Fulbaria', 'ফুলবাড়িয়া', 130, NULL, NULL),
(214, 10, 'Gaffargaon', 'গফরগাঁও', 130, NULL, NULL),
(215, 10, 'Gauripur', 'গৌরিপুর', 130, NULL, NULL),
(216, 10, 'Ishwarganj', 'ঈশ্বরগঞ্জ', 130, NULL, NULL),
(217, 10, 'Mymensingh Sadar', 'ময়মনসিং সদর', 130, NULL, NULL),
(218, 10, 'Nandail', 'নন্দাইল', 130, NULL, NULL),
(219, 10, 'Phulpur', 'ফুলপুর', 130, NULL, NULL),
(220, 11, 'Araihazar', 'আড়াইহাজার', 130, NULL, NULL),
(221, 11, 'Sonargaon', 'সোনারগাঁও', 130, NULL, NULL),
(222, 11, 'Bandar', 'বান্দার', 130, NULL, NULL),
(223, 11, 'Naryanganj Sadar', 'নারায়ানগঞ্জ সদর', 130, NULL, NULL),
(224, 11, 'Rupganj', 'রূপগঞ্জ', 130, NULL, NULL),
(225, 11, 'Siddirgonj', 'সিদ্ধিরগঞ্জ', 130, NULL, NULL),
(226, 12, 'Belabo', 'বেলাবো', 130, NULL, NULL),
(227, 12, 'Monohardi', 'মনোহরদি', 130, NULL, NULL),
(228, 12, 'Narsingdi Sadar', 'নরসিংদী সদর', 130, NULL, NULL),
(229, 12, 'Palash', 'পলাশ', 130, NULL, NULL),
(230, 12, 'Raipura, Narsingdi', 'রায়পুর', 130, NULL, NULL),
(231, 12, 'Shibpur', 'শিবপুর', 130, NULL, NULL),
(232, 13, 'Kendua Upazilla', 'কেন্দুয়া', 130, NULL, NULL),
(233, 13, 'Atpara Upazilla', 'আটপাড়া', 130, NULL, NULL),
(234, 13, 'Barhatta Upazilla', 'বরহাট্টা', 130, NULL, NULL),
(235, 13, 'Durgapur Upazilla', 'দুর্গাপুর', 130, NULL, NULL),
(236, 13, 'Kalmakanda Upazilla', 'কলমাকান্দা', 130, NULL, NULL),
(237, 13, 'Madan Upazilla', 'মদন', 130, NULL, NULL),
(238, 13, 'Mohanganj Upazilla', 'মোহনগঞ্জ', 130, NULL, NULL),
(239, 13, 'Netrakona-S Upazilla', 'নেত্রকোনা সদর', 130, NULL, NULL),
(240, 13, 'Purbadhala Upazilla', 'পূর্বধলা', 130, NULL, NULL),
(241, 13, 'Khaliajuri Upazilla', 'খালিয়াজুরি', 130, NULL, NULL),
(242, 14, 'Baliakandi', 'বালিয়াকান্দি', 130, NULL, NULL),
(243, 14, 'Goalandaghat', 'গোয়ালন্দ ঘাট', 130, NULL, NULL),
(244, 14, 'Pangsha', 'পাংশা', 130, NULL, NULL),
(245, 14, 'Kalukhali', 'কালুখালি', 130, NULL, NULL),
(246, 14, 'Rajbari Sadar', 'রাজবাড়ি সদর', 130, NULL, NULL),
(247, 15, 'Shariatpur Sadar -Palong', 'শরীয়তপুর সদর ', 130, NULL, NULL),
(248, 15, 'Damudya', 'দামুদিয়া', 130, NULL, NULL),
(249, 15, 'Naria', 'নড়িয়া', 130, NULL, NULL),
(250, 15, 'Jajira', 'জাজিরা', 130, NULL, NULL),
(251, 15, 'Bhedarganj', 'ভেদারগঞ্জ', 130, NULL, NULL),
(252, 15, 'Gosairhat', 'গোসাইর হাট ', 130, NULL, NULL),
(253, 16, 'Jhenaigati', 'ঝিনাইগাতি', 130, NULL, NULL),
(254, 16, 'Nakla', 'নাকলা', 130, NULL, NULL),
(255, 16, 'Nalitabari', 'নালিতাবাড়ি', 130, NULL, NULL),
(256, 16, 'Sherpur Sadar', 'শেরপুর সদর', 130, NULL, NULL),
(257, 16, 'Sreebardi', 'শ্রীবরদি', 130, NULL, NULL),
(258, 17, 'Tangail Sadar', 'টাঙ্গাইল সদর', 130, NULL, NULL),
(259, 17, 'Sakhipur', 'সখিপুর', 130, NULL, NULL),
(260, 17, 'Basail', 'বসাইল', 130, NULL, NULL),
(261, 17, 'Madhupur', 'মধুপুর', 130, NULL, NULL),
(262, 17, 'Ghatail', 'ঘাটাইল', 130, NULL, NULL),
(263, 17, 'Kalihati', 'কালিহাতি', 130, NULL, NULL),
(264, 17, 'Nagarpur', 'নগরপুর', 130, NULL, NULL),
(265, 17, 'Mirzapur', 'মির্জাপুর', 130, NULL, NULL),
(266, 17, 'Gopalpur', 'গোপালপুর', 130, NULL, NULL),
(267, 17, 'Delduar', 'দেলদুয়ার', 130, NULL, NULL),
(268, 17, 'Bhuapur', 'ভুয়াপুর', 130, NULL, NULL),
(269, 17, 'Dhanbari', 'ধানবাড়ি', 130, NULL, NULL),
(270, 55, 'Bagerhat Sadar', 'বাগেরহাট সদর', 130, NULL, NULL),
(271, 55, 'Chitalmari', 'চিতলমাড়ি', 130, NULL, NULL),
(272, 55, 'Fakirhat', 'ফকিরহাট', 130, NULL, NULL),
(273, 55, 'Kachua', 'কচুয়া', 130, NULL, NULL),
(274, 55, 'Mollahat', 'মোল্লাহাট ', 130, NULL, NULL),
(275, 55, 'Mongla', 'মংলা', 130, NULL, NULL),
(276, 55, 'Morrelganj', 'মরেলগঞ্জ', 130, NULL, NULL),
(277, 55, 'Rampal', 'রামপাল', 130, NULL, NULL),
(278, 55, 'Sarankhola', 'স্মরণখোলা', 130, NULL, NULL),
(279, 56, 'Damurhuda', 'দামুরহুদা', 130, NULL, NULL),
(280, 56, 'Chuadanga-S', 'চুয়াডাঙ্গা সদর', 130, NULL, NULL),
(281, 56, 'Jibannagar', 'জীবন নগর ', 130, NULL, NULL),
(282, 56, 'Alamdanga', 'আলমডাঙ্গা', 130, NULL, NULL),
(283, 57, 'Abhaynagar', 'অভয়নগর', 130, NULL, NULL),
(284, 57, 'Keshabpur', 'কেশবপুর', 130, NULL, NULL),
(285, 57, 'Bagherpara', 'বাঘের পাড়া ', 130, NULL, NULL),
(286, 57, 'Jessore Sadar', 'যশোর সদর', 130, NULL, NULL),
(287, 57, 'Chaugachha', 'চৌগাছা', 130, NULL, NULL),
(288, 57, 'Manirampur', 'মনিরামপুর ', 130, NULL, NULL),
(289, 57, 'Jhikargachha', 'ঝিকরগাছা', 130, NULL, NULL),
(290, 57, 'Sharsha', 'সারশা', 130, NULL, NULL),
(291, 58, 'Jhenaidah Sadar', 'ঝিনাইদহ সদর', 130, NULL, NULL),
(292, 58, 'Maheshpur', 'মহেশপুর', 130, NULL, NULL),
(293, 58, 'Kaliganj', 'কালীগঞ্জ', 130, NULL, NULL),
(294, 58, 'Kotchandpur', 'কোট চাঁদপুর ', 130, NULL, NULL),
(295, 58, 'Shailkupa', 'শৈলকুপা', 130, NULL, NULL),
(296, 58, 'Harinakunda', 'হাড়িনাকুন্দা', 130, NULL, NULL),
(297, 59, 'Terokhada', 'তেরোখাদা', 130, NULL, NULL),
(298, 59, 'Batiaghata', 'বাটিয়াঘাটা ', 130, NULL, NULL),
(299, 59, 'Dacope', 'ডাকপে', 130, NULL, NULL),
(300, 59, 'Dumuria', 'ডুমুরিয়া', 130, NULL, NULL),
(301, 59, 'Dighalia', 'দিঘলিয়া', 130, NULL, NULL),
(302, 59, 'Koyra', 'কয়ড়া', 130, NULL, NULL),
(303, 59, 'Paikgachha', 'পাইকগাছা', 130, NULL, NULL),
(304, 59, 'Phultala', 'ফুলতলা', 130, NULL, NULL),
(305, 59, 'Rupsa', 'রূপসা', 130, NULL, NULL),
(306, 60, 'Kushtia Sadar', 'কুষ্টিয়া সদর', 130, NULL, NULL),
(307, 60, 'Kumarkhali', 'কুমারখালি', 130, NULL, NULL),
(308, 60, 'Daulatpur', 'দৌলতপুর', 130, NULL, NULL),
(309, 60, 'Mirpur', 'মিরপুর', 130, NULL, NULL),
(310, 60, 'Bheramara', 'ভেরামারা', 130, NULL, NULL),
(311, 60, 'Khoksa', 'খোকসা', 130, NULL, NULL),
(312, 61, 'Magura Sadar', 'মাগুরা সদর', 130, NULL, NULL),
(313, 61, 'Mohammadpur', 'মোহাম্মাদপুর', 130, NULL, NULL),
(314, 61, 'Shalikha', 'শালিখা', 130, NULL, NULL),
(315, 61, 'Sreepur', 'শ্রীপুর', 130, NULL, NULL),
(316, 62, 'angni', 'আংনি', 130, NULL, NULL),
(317, 62, 'Mujib Nagar', 'মুজিব নগর', 130, NULL, NULL),
(318, 62, 'Meherpur-S', 'মেহেরপুর সদর', 130, NULL, NULL),
(319, 63, 'Narail-S Upazilla', 'নড়াইল সদর', 130, NULL, NULL),
(320, 63, 'Lohagara Upazilla', 'লোহাগাড়া', 130, NULL, NULL),
(321, 63, 'Kalia Upazilla', 'কালিয়া', 130, NULL, NULL),
(322, 64, 'Satkhira Sadar', 'সাতক্ষীরা সদর', 130, NULL, NULL),
(323, 64, 'Assasuni', 'আসসাশুনি ', 130, NULL, NULL),
(324, 64, 'Debhata', 'দেভাটা', 130, NULL, NULL),
(325, 64, 'Tala', 'তালা', 130, NULL, NULL),
(326, 64, 'Kalaroa', 'কলরোয়া', 130, NULL, NULL),
(327, 64, 'Kaliganj', 'কালীগঞ্জ', 130, NULL, NULL),
(328, 64, 'Shyamnagar', 'শ্যামনগর', 130, NULL, NULL),
(329, 18, 'Adamdighi', 'আদমদিঘী', 130, NULL, NULL),
(330, 18, 'Bogra Sadar', 'বগুড়া সদর', 130, NULL, NULL),
(331, 18, 'Sherpur', 'শেরপুর', 130, NULL, NULL),
(332, 18, 'Dhunat', 'ধুনট', 130, NULL, NULL),
(333, 18, 'Dhupchanchia', 'দুপচাচিয়া', 130, NULL, NULL),
(334, 18, 'Gabtali', 'গাবতলি', 130, NULL, NULL),
(335, 18, 'Kahaloo', 'কাহালু', 130, NULL, NULL),
(336, 18, 'Nandigram', 'নন্দিগ্রাম', 130, NULL, NULL),
(337, 18, 'Sahajanpur', 'শাহজাহানপুর', 130, NULL, NULL),
(338, 18, 'Sariakandi', 'সারিয়াকান্দি', 130, NULL, NULL),
(339, 18, 'Shibganj', 'শিবগঞ্জ', 130, NULL, NULL),
(340, 18, 'Sonatala', 'সোনাতলা', 130, NULL, NULL),
(341, 19, 'Joypurhat S', 'জয়পুরহাট সদর', 130, NULL, NULL),
(342, 19, 'Akkelpur', 'আক্কেলপুর', 130, NULL, NULL),
(343, 19, 'Kalai', 'কালাই', 130, NULL, NULL),
(344, 19, 'Khetlal', 'খেতলাল', 130, NULL, NULL),
(345, 19, 'Panchbibi', 'পাঁচবিবি', 130, NULL, NULL),
(346, 20, 'Naogaon Sadar', 'নওগাঁ সদর', 130, NULL, NULL),
(347, 20, 'Mohadevpur', 'মহাদেবপুর', 130, NULL, NULL),
(348, 20, 'Manda', 'মান্দা', 130, NULL, NULL),
(349, 20, 'Niamatpur', 'নিয়ামতপুর', 130, NULL, NULL),
(350, 20, 'Atrai', 'আত্রাই', 130, NULL, NULL),
(351, 20, 'Raninagar', 'রাণীনগর', 130, NULL, NULL),
(352, 20, 'Patnitala', 'পত্নীতলা', 130, NULL, NULL),
(353, 20, 'Dhamoirhat', 'ধামইরহাট ', 130, NULL, NULL),
(354, 20, 'Sapahar', 'সাপাহার', 130, NULL, NULL),
(355, 20, 'Porsha', 'পোরশা', 130, NULL, NULL),
(356, 20, 'Badalgachhi', 'বদলগাছি', 130, NULL, NULL),
(357, 21, 'Natore Sadar', 'নাটোর সদর', 130, NULL, NULL),
(358, 21, 'Baraigram', 'বড়াইগ্রাম', 130, NULL, NULL),
(359, 21, 'Bagatipara', 'বাগাতিপাড়া', 130, NULL, NULL),
(360, 21, 'Lalpur', 'লালপুর', 130, NULL, NULL),
(361, 21, 'Natore Sadar', 'নাটোর সদর', 130, NULL, NULL),
(362, 21, 'Baraigram', 'বড়াই গ্রাম', 130, NULL, NULL),
(363, 22, 'Bholahat', 'ভোলাহাট', 130, NULL, NULL),
(364, 22, 'Gomastapur', 'গোমস্তাপুর', 130, NULL, NULL),
(365, 22, 'Nachole', 'নাচোল', 130, NULL, NULL),
(366, 22, 'Nawabganj Sadar', 'নবাবগঞ্জ সদর', 130, NULL, NULL),
(367, 22, 'Shibganj', 'শিবগঞ্জ', 130, NULL, NULL),
(368, 23, 'Atgharia', 'আটঘরিয়া', 130, NULL, NULL),
(369, 23, 'Bera', 'বেড়া', 130, NULL, NULL),
(370, 23, 'Bhangura', 'ভাঙ্গুরা', 130, NULL, NULL),
(371, 23, 'Chatmohar', 'চাটমোহর', 130, NULL, NULL),
(372, 23, 'Faridpur', 'ফরিদপুর', 130, NULL, NULL),
(373, 23, 'Ishwardi', 'ঈশ্বরদী', 130, NULL, NULL),
(374, 23, 'Pabna Sadar', 'পাবনা সদর', 130, NULL, NULL),
(375, 23, 'Santhia', 'সাথিয়া', 130, NULL, NULL),
(376, 23, 'Sujanagar', 'সুজানগর', 130, NULL, NULL),
(377, 24, 'Bagha', 'বাঘা', 130, NULL, NULL),
(378, 24, 'Bagmara', 'বাগমারা', 130, NULL, NULL),
(379, 24, 'Charghat', 'চারঘাট', 130, NULL, NULL),
(380, 24, 'Durgapur', 'দুর্গাপুর', 130, NULL, NULL),
(381, 24, 'Godagari', 'গোদাগারি', 130, NULL, NULL),
(382, 24, 'Mohanpur', 'মোহনপুর', 130, NULL, NULL),
(383, 24, 'Paba', 'পবা', 130, NULL, NULL),
(384, 24, 'Puthia', 'পুঠিয়া', 130, NULL, NULL),
(385, 24, 'Tanore', 'তানোর', 130, NULL, NULL),
(386, 25, 'Sirajganj Sadar', 'সিরাজগঞ্জ সদর', 130, NULL, NULL),
(387, 25, 'Belkuchi', 'বেলকুচি', 130, NULL, NULL),
(388, 25, 'Chauhali', 'চৌহালি', 130, NULL, NULL),
(389, 25, 'Kamarkhanda', 'কামারখান্দা', 130, NULL, NULL),
(390, 25, 'Kazipur', 'কাজীপুর', 130, NULL, NULL),
(391, 25, 'Raiganj', 'রায়গঞ্জ', 130, NULL, NULL),
(392, 25, 'Shahjadpur', 'শাহজাদপুর', 130, NULL, NULL),
(393, 25, 'Tarash', 'তারাশ', 130, NULL, NULL),
(394, 25, 'Ullahpara', 'উল্লাপাড়া', 130, NULL, NULL),
(395, 26, 'Birampur', 'বিরামপুর', 130, NULL, NULL),
(396, 26, 'Birganj', 'বীরগঞ্জ', 130, NULL, NULL),
(397, 26, 'Biral', 'বিড়াল', 130, NULL, NULL),
(398, 26, 'Bochaganj', 'বোচাগঞ্জ', 130, NULL, NULL),
(399, 26, 'Chirirbandar', 'চিরিরবন্দর', 130, NULL, NULL),
(400, 26, 'Phulbari', 'ফুলবাড়ি', 130, NULL, NULL),
(401, 26, 'Ghoraghat', 'ঘোড়াঘাট', 130, NULL, NULL),
(402, 26, 'Hakimpur', 'হাকিমপুর', 130, NULL, NULL),
(403, 26, 'Kaharole', 'কাহারোল', 130, NULL, NULL),
(404, 26, 'Khansama', 'খানসামা', 130, NULL, NULL),
(405, 26, 'Dinajpur Sadar', 'দিনাজপুর সদর', 130, NULL, NULL),
(406, 26, 'Nawabganj', 'নবাবগঞ্জ', 130, NULL, NULL),
(407, 26, 'Parbatipur', 'পার্বতীপুর', 130, NULL, NULL),
(408, 27, 'Fulchhari', 'ফুলছড়ি', 130, NULL, NULL),
(409, 27, 'Gaibandha sadar', 'গাইবান্ধা সদর', 130, NULL, NULL),
(410, 27, 'Gobindaganj', 'গোবিন্দগঞ্জ', 130, NULL, NULL),
(411, 27, 'Palashbari', 'পলাশবাড়ী', 130, NULL, NULL),
(412, 27, 'Sadullapur', 'সাদুল্যাপুর', 130, NULL, NULL),
(413, 27, 'Saghata', 'সাঘাটা', 130, NULL, NULL),
(414, 27, 'Sundarganj', 'সুন্দরগঞ্জ', 130, NULL, NULL),
(415, 28, 'Kurigram Sadar', 'কুড়িগ্রাম সদর', 130, NULL, NULL),
(416, 28, 'Nageshwari', 'নাগেশ্বরী', 130, NULL, NULL),
(417, 28, 'Bhurungamari', 'ভুরুঙ্গামারি', 130, NULL, NULL),
(418, 28, 'Phulbari', 'ফুলবাড়ি', 130, NULL, NULL),
(419, 28, 'Rajarhat', 'রাজারহাট', 130, NULL, NULL),
(420, 28, 'Ulipur', 'উলিপুর', 130, NULL, NULL),
(421, 28, 'Chilmari', 'চিলমারি', 130, NULL, NULL),
(422, 28, 'Rowmari', 'রউমারি', 130, NULL, NULL),
(423, 28, 'Char Rajibpur', 'চর রাজিবপুর', 130, NULL, NULL),
(424, 29, 'Lalmanirhat Sadar', 'লালমনিরহাট সদর', 130, NULL, NULL),
(425, 29, 'Aditmari', 'আদিতমারি', 130, NULL, NULL),
(426, 29, 'Kaliganj', 'কালীগঞ্জ', 130, NULL, NULL),
(427, 29, 'Hatibandha', 'হাতিবান্ধা', 130, NULL, NULL),
(428, 29, 'Patgram', 'পাটগ্রাম', 130, NULL, NULL),
(429, 30, 'Nilphamari Sadar', 'নীলফামারী সদর', 130, NULL, NULL),
(430, 30, 'Saidpur', 'সৈয়দপুর', 130, NULL, NULL),
(431, 30, 'Jaldhaka', 'জলঢাকা', 130, NULL, NULL),
(432, 30, 'Kishoreganj', 'কিশোরগঞ্জ', 130, NULL, NULL),
(433, 30, 'Domar', 'ডোমার', 130, NULL, NULL),
(434, 30, 'Dimla', 'ডিমলা', 130, NULL, NULL),
(435, 31, 'Panchagarh Sadar', 'পঞ্চগড় সদর', 130, NULL, NULL),
(436, 31, 'Debiganj', 'দেবীগঞ্জ', 130, NULL, NULL),
(437, 31, 'Boda', 'বোদা', 130, NULL, NULL),
(438, 31, 'Atwari', 'আটোয়ারি', 130, NULL, NULL),
(439, 31, 'Tetulia', 'তেঁতুলিয়া', 130, NULL, NULL),
(440, 32, 'Badarganj', 'বদরগঞ্জ', 130, NULL, NULL),
(441, 32, 'Mithapukur', 'মিঠাপুকুর', 130, NULL, NULL),
(442, 32, 'Gangachara', 'গঙ্গাচরা', 130, NULL, NULL),
(443, 32, 'Kaunia', 'কাউনিয়া', 130, NULL, NULL),
(444, 32, 'Rangpur Sadar', 'রংপুর সদর', 130, NULL, NULL),
(445, 32, 'Pirgachha', 'পীরগাছা', 130, NULL, NULL),
(446, 32, 'Pirganj', 'পীরগঞ্জ', 130, NULL, NULL),
(447, 32, 'Taraganj', 'তারাগঞ্জ', 130, NULL, NULL),
(448, 33, 'Thakurgaon Sadar', 'ঠাকুরগাঁও সদর', 130, NULL, NULL),
(449, 33, 'Pirganj', 'পীরগঞ্জ', 130, NULL, NULL),
(450, 33, 'Baliadangi', 'বালিয়াডাঙ্গি', 130, NULL, NULL),
(451, 33, 'Haripur', 'হরিপুর', 130, NULL, NULL),
(452, 33, 'Ranisankail', 'রাণীসংকইল', 130, NULL, NULL),
(453, 51, 'Ajmiriganj', 'আজমিরিগঞ্জ', 130, NULL, NULL),
(454, 51, 'Baniachang', 'বানিয়াচং', 130, NULL, NULL),
(455, 51, 'Bahubal', 'বাহুবল', 130, NULL, NULL),
(456, 51, 'Chunarughat', 'চুনারুঘাট', 130, NULL, NULL),
(457, 51, 'Habiganj Sadar', 'হবিগঞ্জ সদর', 130, NULL, NULL),
(458, 51, 'Lakhai', 'লাক্ষাই', 130, NULL, NULL),
(459, 51, 'Madhabpur', 'মাধবপুর', 130, NULL, NULL),
(460, 51, 'Nabiganj', 'নবীগঞ্জ', 130, NULL, NULL),
(461, 51, 'Shaistagonj', 'শায়েস্তাগঞ্জ', 130, NULL, NULL),
(462, 52, 'Moulvibazar Sadar', 'মৌলভীবাজার', 130, NULL, NULL),
(463, 52, 'Barlekha', 'বড়লেখা', 130, NULL, NULL),
(464, 52, 'Juri', 'জুড়ি', 130, NULL, NULL),
(465, 52, 'Kamalganj', 'কামালগঞ্জ', 130, NULL, NULL),
(466, 52, 'Kulaura', 'কুলাউরা', 130, NULL, NULL),
(467, 52, 'Rajnagar', 'রাজনগর', 130, NULL, NULL),
(468, 52, 'Sreemangal', 'শ্রীমঙ্গল', 130, NULL, NULL),
(469, 53, 'Bishwamvarpur', 'বিসশম্ভারপুর', 130, NULL, NULL),
(470, 53, 'Chhatak', 'ছাতক', 130, NULL, NULL),
(471, 53, 'Derai', 'দেড়াই', 130, NULL, NULL),
(472, 53, 'Dharampasha', 'ধরমপাশা', 130, NULL, NULL),
(473, 53, 'Dowarabazar', 'দোয়ারাবাজার', 130, NULL, NULL),
(474, 53, 'Jagannathpur', 'জগন্নাথপুর', 130, NULL, NULL),
(475, 53, 'Jamalganj', 'জামালগঞ্জ', 130, NULL, NULL),
(476, 53, 'Sulla', 'সুল্লা', 130, NULL, NULL),
(477, 53, 'Sunamganj Sadar', 'সুনামগঞ্জ সদর', 130, NULL, NULL),
(478, 53, 'Shanthiganj', 'শান্তিগঞ্জ', 130, NULL, NULL),
(479, 53, 'Tahirpur', 'তাহিরপুর', 130, NULL, NULL),
(480, 54, 'Sylhet Sadar', 'সিলেট সদর', 130, NULL, NULL),
(481, 54, 'Beanibazar', 'বেয়ানিবাজার', 130, NULL, NULL),
(482, 54, 'Bishwanath', 'বিশ্বনাথ', 130, NULL, NULL),
(483, 54, 'Dakshin Surma', 'দক্ষিণ সুরমা', 130, NULL, NULL),
(484, 54, 'Balaganj', 'বালাগঞ্জ', 130, NULL, NULL),
(485, 54, 'Companiganj', 'কোম্পানিগঞ্জ', 130, NULL, NULL),
(486, 54, 'Fenchuganj', 'ফেঞ্চুগঞ্জ', 130, NULL, NULL),
(487, 54, 'Golapganj', 'গোলাপগঞ্জ', 130, NULL, NULL),
(488, 54, 'Gowainghat', 'গোয়াইনঘাট', 130, NULL, NULL),
(489, 54, 'Jointapur', 'জৈন্তাপুর', 130, NULL, NULL),
(490, 54, 'Kanaighat', 'কানাইঘাট', 130, NULL, NULL),
(491, 54, 'Zakiganj', 'জাকিগঞ্জ', 130, NULL, NULL),
(492, 54, 'Nobigonj', 'নবীগঞ্জ', 130, NULL, NULL),
(493, 45, 'Eidgaon', 'ঈদগাঁও', 130, NULL, NULL),
(494, 53, 'Modhyanagar', 'মধ্যনগর', 130, NULL, NULL),
(495, 7, 'Dasar', 'দশর', 130, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'GooseGlass', 'gooseglassesbd@gmail.com', NULL, '$2y$12$58bGqrPN4SViZU8O5G3LW.wjlCyschx8yUfHoCl5RqrxwyjKFw5FG', 'pGw3vQ3aOhMHZQJxmgk8i7LNWpwwbGW6jiliKeBSy7gBi7cXhNjm6DfFVeM9', '2024-01-11 01:33:04', '2024-05-08 04:21:24'),
(5, 'User', 'user@mail.com', NULL, '$2y$12$YWS0kw.afh3igoNyExBdv.qkWG1V.KqJUvZVwwECOlVPsUDFcT55W', 'LbMZ0GAmTtymyWQiOduFQUIGccrDkzWPk2y2ldIyBYIAEl0aan28Iyf6kNq3', '2024-03-21 04:45:10', '2024-04-30 12:43:03'),
(12, 'Super Admin', 'superadmin@mail.com', NULL, '$2y$12$Z8ajQanLx9S3JyeU/sfrauCn5zo0UNqLCASqkwuVJ743W1nQJX8T2', 'Fd8T1xZQNKlQSeloIhf0ETUhkDV3j2ErF30MSdRgMWXw3udur0g78BL5uFMI', '2024-12-30 02:04:31', '2024-12-30 02:04:31');

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `appName` varchar(255) NOT NULL,
  `ownerName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `weblogo` varchar(255) DEFAULT NULL,
  `webfavicon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `appName`, `ownerName`, `email`, `phone`, `address`, `description`, `startDate`, `weblogo`, `webfavicon`, `created_at`, `updated_at`) VALUES
(1, 'Goose Glass', 'MR Goose', 'mrgoose@gmail.com', '0170000000', 'Dhaka, Bangladesh', 'This handy tool helps you create dummy text for all your layout needs. We are gradually adding new functionality and we welcome your suggestions and feedback.', '2024-03-01', '1714667765.jpg', '1714667766.jpg', '2024-04-30 19:57:22', '2024-05-02 10:36:06');

-- --------------------------------------------------------

--
-- Table structure for table `variant_attributes`
--

CREATE TABLE `variant_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `variant_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variant_attributes`
--

INSERT INTO `variant_attributes` (`id`, `variant_id`, `attribute_id`, `created_at`, `updated_at`) VALUES
(386, 263, 372, '2024-12-24 04:23:18', '2024-12-24 04:23:18'),
(387, 263, 373, '2024-12-24 04:23:18', '2024-12-24 04:23:18'),
(388, 264, 374, '2024-12-24 05:16:41', '2024-12-24 05:16:41'),
(389, 264, 375, '2024-12-24 05:16:41', '2024-12-24 05:16:41'),
(390, 265, 376, '2024-12-24 05:53:03', '2024-12-24 05:53:03'),
(391, 265, 377, '2024-12-24 05:53:03', '2024-12-24 05:53:03'),
(392, 266, 378, '2024-12-24 06:29:26', '2024-12-24 06:29:26'),
(393, 266, 379, '2024-12-24 06:29:26', '2024-12-24 06:29:26'),
(394, 267, 380, '2024-12-24 07:11:02', '2024-12-24 07:11:02'),
(395, 267, 381, '2024-12-24 07:11:02', '2024-12-24 07:11:02'),
(396, 268, 382, '2024-12-24 07:40:32', '2024-12-24 07:40:32'),
(397, 268, 383, '2024-12-24 07:40:32', '2024-12-24 07:40:32'),
(398, 269, 384, '2024-12-24 08:12:23', '2024-12-24 08:12:23'),
(399, 269, 385, '2024-12-24 08:12:23', '2024-12-24 08:12:23'),
(400, 270, 386, '2024-12-24 08:39:41', '2024-12-24 08:39:41'),
(401, 270, 387, '2024-12-24 08:39:41', '2024-12-24 08:39:41'),
(402, 271, 388, '2024-12-24 09:15:07', '2024-12-24 09:15:07'),
(403, 271, 389, '2024-12-24 09:15:07', '2024-12-24 09:15:07'),
(404, 272, 390, '2024-12-24 09:35:28', '2024-12-24 09:35:28'),
(405, 272, 391, '2024-12-24 09:35:28', '2024-12-24 09:35:28'),
(406, 273, 392, '2024-12-24 09:45:11', '2024-12-24 09:45:11'),
(407, 273, 393, '2024-12-24 09:45:11', '2024-12-24 09:45:11'),
(408, 274, 394, '2024-12-24 09:55:07', '2024-12-24 09:55:07'),
(409, 274, 395, '2024-12-24 09:55:07', '2024-12-24 09:55:07'),
(421, 282, 407, '2025-01-07 05:58:41', '2025-01-07 05:58:41'),
(422, 283, 408, '2025-01-07 05:58:41', '2025-01-07 05:58:41'),
(423, 284, 409, '2025-01-08 03:20:25', '2025-01-08 03:20:25'),
(424, 285, 410, '2025-01-08 05:02:16', '2025-01-08 05:02:16'),
(425, 286, 411, '2025-01-08 05:23:54', '2025-01-08 05:23:54');

-- --------------------------------------------------------

--
-- Table structure for table `varients`
--

CREATE TABLE `varients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webmessages`
--

CREATE TABLE `webmessages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webmessages`
--

INSERT INTO `webmessages` (`id`, `name`, `email`, `phone`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(10, 'Josephnub', 'kerstinhamlett3005@hotmail.com', '89944649743', 'Expand Your Business Reach with SellAccs.net Partnership', 'Calling all sales enthusiasts! https://SellAccs.net invites you to join our dynamic team as we revolutionize the online account marketplace. With our innovative platform and extensive customer base, you\'ll have the tools to drive sales and maximize your earning potential. Enjoy competitive commissions, personalized training, and ongoing support as you thrive in the fast-paced world of digital commerce. Take the next step in your sales career and partner with https://SellAccs.net today! \r\n \r\n \r\nCLICK THIS: https://SellAccs.net', '2024-06-06 21:05:47', '2024-06-06 21:05:47'),
(11, 'Mark Mark Ruby', 'm.ruby@salesalliance.info', '240938959', 'Your on your meta information on gooseglasses.com', 'Hi,\r\n\r\nI was doing research for a client, that how I landed on gooseglasses.com. \r\nI just noticed a mistake that I have made in the past conserning the Meta information which google reads.\r\n\r\nI now check all my website on http://websitecheckhealth.com for free\r\n\r\nHave a great day \r\nMark', '2024-06-25 11:11:11', '2024-06-25 11:11:11'),
(12, 'AmandaAccibbitb', 'amandaRetfurnea@gmail.com', '88213921137', 'Hey stud, ready for love?', 'Hey darling, want to hang out? -  https://is.gd/2xVU7z?Ownefly', '2024-06-29 16:31:22', '2024-06-29 16:31:22'),
(13, 'AmandaAccibbit3', 'amandaRetfurne3@gmail.com', '83146761489', 'Hey stud, ready for love?', 'Hey darling, want to hang out? -  https://rb.gy/7rnhss?Allexbof', '2024-07-12 11:46:17', '2024-07-12 11:46:17'),
(14, 'AmandaAccibbitc', 'amandaRetfurnec@gmail.com', '82244361398', 'Hey stud, ready for love?', 'Hey darling, want to hang out? -  http://surl.li/ulebc?Ownefly', '2024-07-18 21:54:16', '2024-07-18 21:54:16'),
(15, 'plumber_enpt', 'sleepworrectdi1976@promysjennyj-3d-skaner67.store', '83333122447', 'plumber san jose', 'Лучшие сантехники в Сан-Хосе. \r\nЛучшие решения для вашей сантехники в Сан-Хосе. \r\nНадежные сантехники в Сан-Хосе. \r\nПомощь сантехника в Сан-Хосе. \r\nВыгодные предложения сантехников в Сан-Хосе. \r\nЭкспертные сантехнические услуги в Сан-Хосе. \r\n24 часа в сутки. \r\nНадежные решения для вашей сантехники в Сан-Хосе. \r\nНадежные сантехники в вашем районе. \r\nЭкономия на ремонте сантехники в Сан-Хосе. \r\nplumbing supply san jose <a href=plumbersan-joseca4.com>plumbersan-joseca4.com</a> .', '2024-07-28 12:41:13', '2024-07-28 12:41:13'),
(16, 'AmandaAccibbit3', 'amandaRetfurnea@gmail.com', '84821999274', 'Ready for a Wild Night?)', 'I’ve been naughty, want to help me with that?) -  https://rb.gy/7rnhss?Allexbof', '2024-07-29 01:43:42', '2024-07-29 01:43:42'),
(17, 'Shoma Akter', 'tasnimshoma6969@gmail.com', '01748018082', 'Eye frame.', 'Chosmar frame order kresi yesterday. Kono message / mail asheni mobile a..confirmation er.\r\nDelivery date niyeo kishu boleni message kore.\r\nTar mane bujhbo kikre j order kora hoyese naki hoyni ba kobe pabo products', '2024-07-30 11:14:28', '2024-07-30 11:14:28'),
(18, 'AmandaAccibbita', 'amandaRetfurneb@gmail.com', '81161668618', 'Ready for a Wild Night?)', 'I’ve been naughty, want to help me with that?) -  https://rb.gy/7rnhss?Allexbof', '2024-08-02 04:42:03', '2024-08-02 04:42:03'),
(19, 'AmandaAccibbita', 'amandaRetfurne3@gmail.com', '87313539522', 'Your Dream Girl Awaits...', 'Can’t wait to show you a good time tonight. -  https://goo.su/zARWg?Ownefly', '2024-08-20 23:46:22', '2024-08-20 23:46:22'),
(20, 'AmandaAccibbit1', 'amandaRetfurneb@gmail.com', '86698633148', 'Ready for a Wild Night?)', 'I’ve been naughty, want to help me with that?) -  https://goo.su/zARWg?Ownefly', '2024-08-23 21:10:15', '2024-08-23 21:10:15'),
(21, 'AmandaAccibbit3', 'amandaRetfurne1@gmail.com', '86939648333', 'Your Dream Girl Awaits...', 'Can’t wait to show you a good time tonight. -  https://rb.gy/7rnhss?Allexbof', '2024-08-26 01:21:39', '2024-08-26 01:21:39'),
(22, 'AmandaAccibbit2', 'amandaRetfurneb@gmail.com', '84386761332', 'Can’t stop thinking about you...', 'Explore my profile, let’s make it unforgettable. -  https://rb.gy/7rnhss?Allexbof', '2024-09-04 09:25:08', '2024-09-04 09:25:08'),
(23, 'AmandaAccibbitb', 'amandaRetfurnea@gmail.com', '85386156131', 'Can’t stop thinking about you...', 'Explore my profile, let’s make it unforgettable. -  https://rb.gy/7rnhss?Allexbof', '2024-09-09 03:53:03', '2024-09-09 03:53:03'),
(24, 'AmandaAccibbita', 'amandaRetfurne1@gmail.com', '87797424332', 'Your fantasy awaits, just click....', 'Want to see more? Check my profile now. -  https://rb.gy/7rnhss?Allexbof', '2024-09-16 04:53:59', '2024-09-16 04:53:59'),
(25, 'AmandaAccibbit2', 'amandaRetfurneb@gmail.com', '81477872598', 'Can’t stop thinking about you...', 'Explore my profile, let’s make it unforgettable. -  https://rb.gy/7rnhss?Allexbof', '2024-09-19 17:25:49', '2024-09-19 17:25:49'),
(26, 'Masonesord', 'yjdisantoyjdissemin@gmail.com', '82617233965', 'Hi    write about     prices', 'Hi, roeddwn i eisiau gwybod eich pris.', '2024-09-20 09:58:21', '2024-09-20 09:58:21'),
(27, 'AmandaAccibbitb', 'amandaRetfurne2@gmail.com', '81988139268', 'Your fantasy awaits, just click....', 'Want to see more? Check my profile now. -  https://rb.gy/7rnhss?Allexbof', '2024-09-22 04:25:54', '2024-09-22 04:25:54'),
(28, 'AmandaAccibbitb', 'amandaRetfurne2@gmail.com', '84326747423', 'I’ve got a secret for you...', 'Come closer, find me waiting on my profile. -  http://girlsfunonline.online/?Allexbof', '2024-09-26 16:05:30', '2024-09-26 16:05:30'),
(29, 'AmandaAccibbitb', 'amandaRetfurne2@gmail.com', '81262738564', 'Can’t resist? See me here...', 'Curious? Dive deeper and find me here now. -  https://bit.ly/3Y2npoM?Allexbof', '2024-09-30 08:48:36', '2024-09-30 08:48:36'),
(30, 'AmandaAccibbit3', 'amandaRetfurne3@gmail.com', '89692925337', 'Can’t resist? See me here...', 'Curious? Dive deeper and find me here now. -  https://rb.gy/ycu4is?Allexbof', '2024-10-04 21:58:01', '2024-10-04 21:58:01'),
(31, 'AmandaAccibbita', 'amandaRetfurne3@gmail.com', '85574283324', 'Tonight’s the night... I can’t wait to be with you ������', 'I can\'t wait any longer... come over tonight and let\'s make it unforgettable. -  https://rb.gy/ycu4is?Allexbof', '2024-10-07 20:31:29', '2024-10-07 20:31:29'),
(32, 'AmandaAccibbit3', 'amandaRetfurneb@gmail.com', '86827846274', 'Tonight’s the night... I can’t wait to be with you ������', 'I can\'t wait any longer... come over tonight and let\'s make it unforgettable. -  https://rb.gy/ycu4is?Allexbof', '2024-10-13 03:30:18', '2024-10-13 03:30:18'),
(33, 'AmandaAccibbitb', 'amandaRetfurnec@gmail.com', '86273996781', 'Tonight’s the night... I can’t wait to be with you ������', 'I can\'t wait any longer... come over tonight and let\'s make it unforgettable. -  https://rb.gy/ycu4is?Allexbof', '2024-10-18 22:26:43', '2024-10-18 22:26:43'),
(34, 'AmandaAccibbit3', 'amandaRetfurnea@gmail.com', '82662522979', 'Let\'s turn up the heat tonight... Just you and me ������', 'I want you tonight... just the two of us, no distractions -  https://rb.gy/ycu4is?Allexbof', '2024-10-22 00:05:40', '2024-10-22 00:05:40'),
(35, 'AmandaAccibbit3', 'amandaRetfurne3@gmail.com', '89887122645', 'Tonight’s the night... I can’t wait to be with you ������', 'I can\'t wait any longer... come over tonight and let\'s make it unforgettable. -  https://rb.gy/ycu4is?Allexbof', '2024-10-25 09:30:47', '2024-10-25 09:30:47'),
(36, 'Cecilzed', 'sharonforet1900@microoremail.ru', '82537259631', 'Онлайн магазин баз для Xrumer и GSA', 'Лучшие базы для Xrumer и GSA Search Engine Ranker по самым лучшим ценам \r\nhttps://dseo24.monster \r\nОнлайн магазин баз для Xrumer и GSA     лучшие цены', '2024-10-28 08:35:11', '2024-10-28 08:35:11'),
(37, 'RaymondLit', 'raymondtwem@gmail.com', '86681529474', 'A revolutionary system of email delivery.', 'Good day! gooseglasses.com \r\n \r\nDid you know that it is possible to send message entirely legitimate way and correctly? \r\nWhen such messages are sent, no personal data is used, and messages are sent to forms specifically designed to receive messages and appeals securely. Feedback Forms make sure that messages won\'t be seen as junk, as they are considered essential. \r\nWe offer you the chance to try out our service for free. \r\nOn your behalf, we can send up to 50,000 messages. \r\n \r\nThe cost of sending one million messages is $59. \r\n \r\nThis offer is automatically generated. \r\n \r\nContact us. \r\nTelegram - https://t.me/FeedbackFormEU \r\nSkype  live:contactform_18 \r\nWhatsApp - +375259112693 \r\nWhatsApp  https://wa.me/+375259112693 \r\nWe only use chat for communication.', '2024-11-03 13:24:41', '2024-11-03 13:24:41'),
(38, 'AmandaAccibbita', 'amandaRetfurnec@gmail.com', '85234898392', 'Let\'s turn up the heat tonight... Just you and me ������', 'I want you tonight... just the two of us, no distractions -  https://rb.gy/ycu4is?Allexbof', '2024-11-03 17:36:54', '2024-11-03 17:36:54'),
(39, 'Thank you for registering - it was incredible and pleasant all the best cucumber  ladonna 258309', 'xrum010@24red.ru', '82523539392', 'Thank you for registering - it was incredible and pleasant all the best http://gooseglasses.com ladonna cucumber', 'Thank you for registering - it was incredible and pleasant all the best http://yandex.ru ladonna  cucumber', '2024-11-09 17:20:01', '2024-11-09 17:20:01'),
(40, 'AmandaAccibbitb', 'amandaRetfurnea@gmail.com', '83544434929', 'Let\'s turn up the heat tonight... Just you and me ������', 'I want you tonight... just the two of us, no distractions -  https://rb.gy/ycu4is?Allexbof', '2024-11-10 18:02:02', '2024-11-10 18:02:02'),
(41, 'AmandaAccibbita', 'amandaRetfurne1@gmail.com', '82159278447', 'Tonight feels like it should be just the two of us.', 'Been waiting to get closer to you, just us. -  https://rb.gy/ycu4is?Allexbof', '2024-11-14 19:44:42', '2024-11-14 19:44:42'),
(42, 'AmandaAccibbit1', 'amandaRetfurne1@gmail.com', '87278125961', 'Looking for a Connection That Sparks Passion', 'I’m ready to meet someone who knows how to make the night unforgettable. -  https://rb.gy/es66fc?Allexbof', '2024-11-24 22:07:57', '2024-11-24 22:07:57'),
(43, 'AmandaAccibbitb', 'amandaRetfurne1@gmail.com', '86996634588', 'Ready for a Night of Fun and Possibility?', 'I’m looking for someone who wants the same spark I do -  https://rb.gy/es66fc?Allexbof', '2024-11-27 22:12:53', '2024-11-27 22:12:53'),
(44, 'AmandaAccibbitc', 'amandaRetfurne2@gmail.com', '84759695888', 'Ready to Meet Someone Special Tonight?', 'Let’s turn the spark between us into something we can both feel. -  https://rb.gy/es66fc?Allexbof', '2024-11-30 01:40:42', '2024-11-30 01:40:42'),
(45, 'Mike MacAdam', 'mikexxxx@gmail.com', '83328641714', 'Semrush links for gooseglasses.com', 'Hi there \r\n \r\nHaving some bunch of links pointing to gooseglasses.com could have 0 value or worse for your website, It really doesn`t matter how many backlinks you have, what matters is the amount of keywords those websites rank for. That is the most important thing. Not the fake Moz DA or ahrefs DR score. That anyone can do these days. BUT the amount of ranking keywords the sites that link to you have. Thats it. \r\n \r\nHave such links point to your website and you will ROCK ! \r\n \r\nWe are offering this special service here: \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\nIn doubts, or need more information, chat with us: https://www.strictlydigital.net/whatsapp-us/ \r\n \r\nKind regards \r\nMike MacAdam\r\n \r\nstrictlydigital.net', '2024-12-04 17:17:08', '2024-12-04 17:17:08'),
(46, 'MiguelAmott', 'social.help.compagnie@gmail.com', '85243392289', 'Die Vorteile eines Privatkredits bei HSBC Credit', 'Mit HSBC Credit ist der Erhalt eines Online-Privatkredits mit entscheidenden Vorteilen moglich. Wir begleiten Sie. Organisieren Sie eine Hochzeit, machen Sie eine Reise, kaufen Sie ein Auto oder erledigen Sie eine Arbeit. Sehr oft handelt es sich dabei um teure Lebensprojekte, fur die man sich Geld leihen muss. Wir unterstutzen Sie und stellen Ihnen Kredite zu einem guten Zinssatz zur Verfugung. \r\nBitte richten Sie Ihr Anliegen an uns, damit wir es analysieren und prufen konnen, inwieweit wir Ihnen einen Kredit gewahren konnen. \r\n \r\nMail: info@prestadirecsl.es', '2024-12-06 03:02:37', '2024-12-06 03:02:37'),
(47, 'AmandaAccibbit2', 'amandaRetfurnec@gmail.com', '82193834426', 'Tonight’s perfect for something exciting, don’t you think?  ❤️', 'I’m in the mood for something sweet and spicy… you?  -  https://rb.gy/es66fc?Allexbof', '2024-12-06 07:26:13', '2024-12-06 07:26:13'),
(48, 'RaymondLit', 'raymondtwem@gmail.com', '81797975856', 'An advanced approach to email delivery.', 'Hi-ya! gooseglasses.com \r\n \r\nDid you know that it is possible to send message comСЂletely legal? \r\nWhen such messages are sent, no personal data is used, and messages are sent to forms specifically designed to receive and process messages and appeals. Because Communication Forms are seen as important, any messages sent through them are less likely to be categorised as spam. \r\nWe are now offering you the chance to use our service for free. \r\nWe can transmit up to 50,000 messages in your behalf. \r\n \r\nThe cost of sending one million messages is $59. \r\n \r\nThis message was automatically generated. \r\n \r\nContact us. \r\nTelegram - https://t.me/FeedbackFormEU \r\nSkype  live:contactform_18 \r\nWhatsApp - +375259112693 \r\nWhatsApp  https://wa.me/+375259112693 \r\nWe only use chat for communication.', '2024-12-12 07:47:17', '2024-12-12 07:47:17'),
(49, 'Mike Philippe Johnson', 'mikexxxx@gmail.com', '88382815213', 'Collaboration Request', 'Hello, \r\n \r\nThis is Mike Cook\r\nfrom Monkey Digital, \r\nI am reaching out to you like webmaster to webmaster, towards a mutual opportunity. How would you like to put our banners on your site and link back via your affiliate link towards hot selling services from our website, and earn a 35% residual income, month after month from any sales that comes in from your sites. \r\n \r\nThink about it, everyone needs SEO, this is a pretty major opportunity, We have over 12k affiliates already and our payouts are made each month, hefty payouts, last month we have reached 27280$ in payouts to our affiliates. \r\n \r\nIf interested, kindly chat with us: https://monkeydigital.co/affiliates-whatsapp/ \r\n \r\nOr sign up today: https://www.monkeydigital.co/join-our-affiliate-program/ \r\n \r\nCheers \r\nMike Philippe Johnson\r\n \r\nmonkeydigital.co', '2024-12-17 02:14:54', '2024-12-17 02:14:54');

-- --------------------------------------------------------

--
-- Table structure for table `web_infos`
--

CREATE TABLE `web_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `appName` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `weblogo` varchar(255) NOT NULL,
  `footerlogo` varchar(255) DEFAULT NULL,
  `webfavicon` varchar(255) NOT NULL,
  `marquee` varchar(255) DEFAULT NULL,
  `copyright` varchar(255) NOT NULL,
  `entitle` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_infos`
--

INSERT INTO `web_infos` (`id`, `appName`, `description`, `weblogo`, `footerlogo`, `webfavicon`, `marquee`, `copyright`, `entitle`, `created_at`, `updated_at`) VALUES
(1, 'Goose Glasses', 'GooseGlass is a trending eyewear place where you can find premium quality glasses.', '1735550432.png', 'footer_1735550441.png', '1735554516.png', NULL, '2024 © All rights reserved by Goose Glasses', NULL, '2024-05-05 05:14:15', '2024-12-30 04:44:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutuses`
--
ALTER TABLE `aboutuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applied_coupones`
--
ALTER TABLE `applied_coupones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `applied_coupones_customer_id_foreign` (`customer_id`),
  ADD KEY `applied_coupones_order_id_foreign` (`order_id`),
  ADD KEY `applied_coupones_coupone_id_foreign` (`coupone_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `camp_products`
--
ALTER TABLE `camp_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `camp_products_campaign_id_foreign` (`campaign_id`),
  ADD KEY `camp_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_categories_id_unique` (`categories_id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `category_size_headers`
--
ALTER TABLE `category_size_headers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_size_headers_category_id_foreign` (`category_id`),
  ADD KEY `category_size_headers_size_id_foreign` (`size_id`),
  ADD KEY `category_size_headers_size_header_id_foreign` (`size_header_id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactinfos`
--
ALTER TABLE `contactinfos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_zones`
--
ALTER TABLE `delivery_zones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_zones_district_id_foreign` (`district_id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feature_categories`
--
ALTER TABLE `feature_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feature_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `feature_products`
--
ALTER TABLE `feature_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feature_products_with_pivot`
--
ALTER TABLE `feature_products_with_pivot`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feature_products_with_pivot_feature_products_id_foreign` (`feature_products_id`),
  ADD KEY `feature_products_with_pivot_products_id_foreign` (`products_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offer_types`
--
ALTER TABLE `offer_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_track_id` (`order_track_id`),
  ADD UNIQUE KEY `Invoice No` (`invoice_no`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `orderstatuses`
--
ALTER TABLE `orderstatuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderstatuses_order_id_foreign` (`order_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_color_id_foreign` (`color_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `postcodes`
--
ALTER TABLE `postcodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `postcodes_division_id_foreign` (`division_id`),
  ADD KEY `postcodes_district_id_foreign` (`district_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_supplier_id_foreign` (`supplier_id`);

--
-- Indexes for table `products_colors`
--
ALTER TABLE `products_colors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_colors_product_id_foreign` (`product_id`),
  ADD KEY `products_colors_color_id_foreign` (`color_id`);

--
-- Indexes for table `products_sizes`
--
ALTER TABLE `products_sizes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_sizes_product_id_foreign` (`product_id`),
  ADD KEY `products_sizes_size_id_foreign` (`size_id`);

--
-- Indexes for table `product_additionalinfos`
--
ALTER TABLE `product_additionalinfos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_additionalinfos_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_attributes_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_color_images`
--
ALTER TABLE `product_color_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_color_images_product_id_foreign` (`product_id`),
  ADD KEY `product_color_images_color_id_foreign` (`color_id`);

--
-- Indexes for table `product_extras`
--
ALTER TABLE `product_extras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_extras_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_image_with_colors`
--
ALTER TABLE `product_image_with_colors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_image_with_colors_color_id_foreign` (`color_id`),
  ADD KEY `product_image_with_colors_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_overviews`
--
ALTER TABLE `product_overviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_overviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_prices`
--
ALTER TABLE `product_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_prices_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_stocks_product_id_foreign` (`product_id`),
  ADD KEY `product_stocks_color_id_foreign` (`color_id`) USING BTREE;

--
-- Indexes for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_tags_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_thumbnails`
--
ALTER TABLE `product_thumbnails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_thumbnails_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variants_product_id_foreign` (`product_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_supplier_id_foreign` (`supplier_id`);

--
-- Indexes for table `register_customers`
--
ALTER TABLE `register_customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `register_customers_email_unique` (`email`),
  ADD KEY `register_customers_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_customer_id_foreign` (`customer_id`),
  ADD KEY `shippings_order_id_foreign` (`order_id`),
  ADD KEY `area` (`area`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialinfos`
--
ALTER TABLE `socialinfos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specifications`
--
ALTER TABLE `specifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `specifications_product_id_foreign` (`product_id`);

--
-- Indexes for table `specification_features`
--
ALTER TABLE `specification_features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `specification_features_specification_id_foreign` (`specification_id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subcategories_slug_unique` (`slug`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_customer_id_foreign` (`customer_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

--
-- Indexes for table `upazillas`
--
ALTER TABLE `upazillas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upazillas_district_id_foreign` (`district_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variant_attributes`
--
ALTER TABLE `variant_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variant_attributes_variant_id_foreign` (`variant_id`),
  ADD KEY `variant_attributes_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `varients`
--
ALTER TABLE `varients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webmessages`
--
ALTER TABLE `webmessages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_infos`
--
ALTER TABLE `web_infos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutuses`
--
ALTER TABLE `aboutuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `applied_coupones`
--
ALTER TABLE `applied_coupones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `camp_products`
--
ALTER TABLE `camp_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `category_size_headers`
--
ALTER TABLE `category_size_headers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `contactinfos`
--
ALTER TABLE `contactinfos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `delivery_zones`
--
ALTER TABLE `delivery_zones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feature_categories`
--
ALTER TABLE `feature_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `feature_products`
--
ALTER TABLE `feature_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feature_products_with_pivot`
--
ALTER TABLE `feature_products_with_pivot`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offer_types`
--
ALTER TABLE `offer_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;

--
-- AUTO_INCREMENT for table `orderstatuses`
--
ALTER TABLE `orderstatuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `postcodes`
--
ALTER TABLE `postcodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1350;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `products_colors`
--
ALTER TABLE `products_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=358;

--
-- AUTO_INCREMENT for table `products_sizes`
--
ALTER TABLE `products_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `product_additionalinfos`
--
ALTER TABLE `product_additionalinfos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=412;

--
-- AUTO_INCREMENT for table `product_color_images`
--
ALTER TABLE `product_color_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_extras`
--
ALTER TABLE `product_extras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `product_image_with_colors`
--
ALTER TABLE `product_image_with_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=356;

--
-- AUTO_INCREMENT for table `product_overviews`
--
ALTER TABLE `product_overviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `product_prices`
--
ALTER TABLE `product_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `product_stocks`
--
ALTER TABLE `product_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=306;

--
-- AUTO_INCREMENT for table `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `product_thumbnails`
--
ALTER TABLE `product_thumbnails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=287;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `register_customers`
--
ALTER TABLE `register_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `socialinfos`
--
ALTER TABLE `socialinfos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `specifications`
--
ALTER TABLE `specifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `specification_features`
--
ALTER TABLE `specification_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=980;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `upazillas`
--
ALTER TABLE `upazillas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=496;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `variant_attributes`
--
ALTER TABLE `variant_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=426;

--
-- AUTO_INCREMENT for table `varients`
--
ALTER TABLE `varients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webmessages`
--
ALTER TABLE `webmessages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `web_infos`
--
ALTER TABLE `web_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applied_coupones`
--
ALTER TABLE `applied_coupones`
  ADD CONSTRAINT `applied_coupones_coupone_id_foreign` FOREIGN KEY (`coupone_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `applied_coupones_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `applied_coupones_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `camp_products`
--
ALTER TABLE `camp_products`
  ADD CONSTRAINT `camp_products_campaign_id_foreign` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `camp_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `delivery_zones`
--
ALTER TABLE `delivery_zones`
  ADD CONSTRAINT `delivery_zones_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `feature_categories`
--
ALTER TABLE `feature_categories`
  ADD CONSTRAINT `feature_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `feature_products_with_pivot`
--
ALTER TABLE `feature_products_with_pivot`
  ADD CONSTRAINT `feature_products_with_pivot_feature_products_id_foreign` FOREIGN KEY (`feature_products_id`) REFERENCES `feature_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `feature_products_with_pivot_products_id_foreign` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orderstatuses`
--
ALTER TABLE `orderstatuses`
  ADD CONSTRAINT `orderstatuses_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `postcodes`
--
ALTER TABLE `postcodes`
  ADD CONSTRAINT `postcodes_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `postcodes_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD CONSTRAINT `product_attributes_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_color_images`
--
ALTER TABLE `product_color_images`
  ADD CONSTRAINT `product_color_images_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_color_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_image_with_colors`
--
ALTER TABLE `product_image_with_colors`
  ADD CONSTRAINT `product_image_with_colors_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_image_with_colors_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD CONSTRAINT `product_stocks_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_stocks_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD CONSTRAINT `product_tags_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD CONSTRAINT `product_variants_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `specifications`
--
ALTER TABLE `specifications`
  ADD CONSTRAINT `specifications_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `specification_features`
--
ALTER TABLE `specification_features`
  ADD CONSTRAINT `specification_features_specification_id_foreign` FOREIGN KEY (`specification_id`) REFERENCES `specifications` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `variant_attributes`
--
ALTER TABLE `variant_attributes`
  ADD CONSTRAINT `variant_attributes_ibfk_1` FOREIGN KEY (`attribute_id`) REFERENCES `product_attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `variant_attributes_ibfk_2` FOREIGN KEY (`variant_id`) REFERENCES `product_variants` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
