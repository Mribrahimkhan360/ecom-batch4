-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2022 at 03:28 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_batch4`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sony', 'well', 'brand-images/Flag_of_Bangladesh.svg.png', 1, '2022-10-08 06:29:12', '2022-10-08 06:29:12'),
(2, 'Yellow', 'well', 'brand-images/1656476942.jpg', 1, '2022-10-08 06:29:23', '2022-10-08 06:29:23');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sports', 'well', 'category-images/images (1).jpg', 1, '2022-10-01 08:14:37', '2022-10-06 08:24:59'),
(3, 'Woman Fashion', 'Voluptatibus eum excepturi reiciendis explicabo. Architecto eligendi voluptates aut ad. Rerum tempora voluptas numquam aut non nulla. Est necessitatibus vero consequuntur nemo et necessitatibus.', 'https://via.placeholder.com/640x480.png/002244?text=quibusdam', 1, '2022-10-01 08:14:37', '2022-10-15 07:31:19'),
(5, 'Kanchan Fashion', 'Eum optio exercitationem similique aut et quas eos voluptates. Non cupiditate voluptas consectetur voluptatum vel adipisci. Illum ea nobis sunt voluptatem quas consequuntur. Ut consequatur non et.', 'https://via.placeholder.com/640x480.png/00bb00?text=corporis', 1, '2022-10-01 08:14:37', '2022-10-15 07:31:36'),
(6, 'Electronics', 'well', 'category-images/1630730037.jpg', 1, '2022-10-01 08:37:56', '2022-10-01 08:37:56'),
(7, 'Man Fashion', 'dsfgsdfgsdf', 'category-images/1658032044.jpg', 1, '2022-10-06 06:35:03', '2022-10-06 06:35:03');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_09_19_131750_create_sessions_table', 1),
(7, '2022_10_01_134630_create_categories_table', 2),
(8, '2022_10_08_121848_create_brands_table', 3),
(9, '2022_10_08_124348_create_sub_categories_table', 4),
(10, '2022_10_08_143057_create_units_table', 5),
(11, '2022_10_15_142628_create_products_table', 6),
(12, '2022_10_15_143439_create_other_images_table', 6),
(13, '2022_11_05_140851_create_customers_table', 7),
(14, '2022_11_05_140900_create_orders_table', 8),
(15, '2022_11_05_140906_create_order_details_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_total` double(10,2) NOT NULL,
  `tax_total` double(10,2) NOT NULL,
  `shipping_total` double(10,2) NOT NULL,
  `order_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_timestamp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `payment_status` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `payment_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_amount` double(10,2) NOT NULL DEFAULT 0.00,
  `payment_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_timestamp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_status` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `delivery_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_timestamp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_price` double(10,2) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `other_images`
--

CREATE TABLE `other_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `other_images`
--

INSERT INTO `other_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 2, 'product-other-images/1630730037.jpg', '2022-10-17 07:19:35', '2022-10-17 07:19:35'),
(2, 2, 'product-other-images/1656476942.jpg', '2022-10-17 07:19:35', '2022-10-17 07:19:35'),
(3, 2, 'product-other-images/1658032044.jpg', '2022-10-17 07:19:35', '2022-10-17 07:19:35'),
(4, 3, 'product-other-images/download.jpg', '2022-10-24 06:23:18', '2022-10-24 06:23:18'),
(5, 3, 'product-other-images/images (1).jpg', '2022-10-24 06:23:18', '2022-10-24 06:23:18'),
(6, 3, 'product-other-images/mockup-t-shit-vector-typhography-260nw-2116554965.webp', '2022-10-24 06:23:18', '2022-10-24 06:23:18'),
(7, 4, 'product-other-images/images-db3-500x500.jpg', '2022-10-31 05:56:53', '2022-10-31 05:56:53'),
(8, 4, 'product-other-images/20b604c209ec1a65557b96dcf51967b1.jpg', '2022-10-31 05:56:53', '2022-10-31 05:56:53'),
(9, 4, 'product-other-images/FB_IMG_1618904403223.jpg', '2022-10-31 05:56:53', '2022-10-31 05:56:53'),
(10, 5, 'product-other-images/0096082_happy-new-year-couple-t-shirt-sw3555t_550.jpeg', '2022-10-31 05:58:31', '2022-10-31 05:58:31'),
(11, 5, 'product-other-images/download (3).jpg', '2022-10-31 05:58:31', '2022-10-31 05:58:31'),
(12, 5, 'product-other-images/download (2).jpg', '2022-10-31 05:58:31', '2022-10-31 05:58:31'),
(13, 5, 'product-other-images/download (1).jpg', '2022-10-31 05:58:32', '2022-10-31 05:58:32'),
(14, 6, 'product-other-images/sony-xperia-xz-premium-02-600x600.jpg', '2022-10-31 06:52:01', '2022-10-31 06:52:01'),
(15, 6, 'product-other-images/Sony-Xperia-XZ.webp', '2022-10-31 06:52:02', '2022-10-31 06:52:02'),
(16, 6, 'product-other-images/Sony-Xperia-XZ-Premium-600x600.webp', '2022-10-31 06:52:02', '2022-10-31 06:52:02'),
(17, 7, 'product-other-images/images (2).jpg', '2022-10-31 06:53:46', '2022-10-31 06:53:46'),
(18, 7, 'product-other-images/download (5).jpg', '2022-10-31 06:53:46', '2022-10-31 06:53:46');

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
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_amount` int(11) NOT NULL,
  `regular_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `sales_count` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `unit_id`, `name`, `code`, `short_description`, `long_description`, `stock_amount`, `regular_price`, `selling_price`, `image`, `hit_count`, `sales_count`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 1, 1, 'New Football', 'NF112', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</span></p><hr><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><br></p>', 100, 3000, 2550, 'product-images/1658141768.jpg', 0, 0, 1, '2022-10-17 07:19:35', '2022-10-17 07:19:35'),
(3, 7, 2, 1, 1, 'New Fashionable T Shirt', 'NFTS101', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p><div><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p></div><div><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p></div><div><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p></div><div><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p></div><div><br></div>', 200, 2500, 2200, 'product-images/images (1).jpg', 0, 0, 1, '2022-10-24 06:23:18', '2022-10-24 06:23:18'),
(4, 3, 3, 1, 1, 'New Smart Shari', 'NSS115', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', '<div class=\"product-detail-header\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left; background-color: rgb(233, 234, 235); color: rgb(51, 51, 51); font-family: SolaimanLipi, helvetica, verdana; font-size: 14px;\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><h2 style=\"padding: 0px; margin: 4px 0px 2px; font-family: SolaimanLipi, Vrinda, Helvetica, Verdana, sans-serif; line-height: 1.1; color: inherit; font-size: 15px;\">প্রোডাক্টের বিবরণ :&nbsp;<span class=\"deal-title-new\" style=\"padding: 0px; margin: 0px;\">I Am Fine মেনজ হাফ স্লিভ কটন টি শার্ট -হোয়াইট</span></h2></div><div class=\"header-code-text\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; text-align: right; font-family: SolaimanLipi, Helvetica, Verdana; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px;\">ডিল কোড:</span>&nbsp;<span id=\"DealCodeLabel\" style=\"padding: 0px; margin: 0px;\">১১০৩২৯৮</span></div></div><div class=\"product-details-text-wrapper\" style=\"padding: 0px; margin: 10px 0px 20px; width: 907.188px; float: left; color: rgb(51, 51, 51); font-family: SolaimanLipi, helvetica, verdana; font-size: 14px;\"><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">Fabric- Cotton T-shirt</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">160-170 gsm</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">Size: M, L, XL</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">M- Length 38\" Chest 288\"</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">L- Length 40\" Chest 29\"</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">XL- Length 42\" Chest 30\"</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">N.B. The color of the actual product may vary due to the resolution and lighting of your computer.</span></div></div><h3 style=\"padding: 0px; margin: 20px 0px 18.1406px; font-family: SolaimanLipi, Vrinda, Helvetica, Verdana, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); font-size: 14px;\"><span class=\"deal-title-new\" style=\"padding: 0px; margin: 0px;\">I Am Fine মেনজ হাফ স্লিভ কটন টি শার্ট -হোয়াইট&nbsp;</span>কিনুন বাংলাদেশের সেরা দামে</h3><div class=\"product-specification-container\" style=\"padding: 0px; margin: 0px 0px 18.1406px; color: rgb(51, 51, 51); font-family: SolaimanLipi, helvetica, verdana; font-size: 14px;\"><span class=\"product-specification-head\" style=\"padding: 0px; margin: 0px 0px 10px; width: 907.188px; float: left; background-color: rgb(233, 234, 235);\"><h2 style=\"padding: 0px; margin: 10px 0px; font-family: SolaimanLipi, Vrinda, Helvetica, Verdana, sans-serif; line-height: 1.1; color: inherit; font-size: 15px;\"><span class=\"deal-title-new\" style=\"padding: 0px; margin: 0px;\">I Am Fine মেনজ হাফ স্লিভ কটন টি শার্ট -হোয়াইট&nbsp;</span>- Product Specification</h2></span><div class=\"product-detail-header-wrapper\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left;\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-weight: 700; color: rgb(0, 0, 0);\">ব্র্যান্ড :</span><span id=\"BrandNameInProuductDetails\" style=\"padding: 0px; margin: 0px;\"></span></div><div class=\"header-code-text\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; text-align: right; font-family: SolaimanLipi, Helvetica, Verdana; color: rgb(93, 90, 90);\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-size: 15px; font-weight: 700; color: rgb(0, 0, 0);\">ডিল কোড:&nbsp;</span><span id=\"DealCodeInProuductDetails\" style=\"padding: 0px; margin: 0px;\">১১০৩২৯৮</span></div></div><div class=\"product-detail-header-wrapper\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left;\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-weight: 700; color: rgb(0, 0, 0);\">বৈশিষ্ট্যসমূহ :</span><span class=\"feautures-wrapper\" style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-size: 14px;\">প্রযোজ্য নয়</span></span></div><div class=\"header-code-text\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; text-align: right; font-family: SolaimanLipi, Helvetica, Verdana; color: rgb(93, 90, 90);\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-size: 15px; font-weight: 700; color: rgb(0, 0, 0);\">মডেল :</span><span id=\"ModelNo\" style=\"padding: 0px; margin: 0px;\"></span></div></div><div class=\"product-specification-text-wrapper\" style=\"padding: 0px; margin: 9.0625px 0px 0px;\"></div><div class=\"product-detail-header-wrapper\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left;\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-weight: 700; color: rgb(0, 0, 0);\">প্যাকেটে যা থাকছে :</span></div></div><div class=\"packets-includes-product-wrapper\" style=\"padding: 0px; margin: 0px;\"><span class=\"packets-includes-product-text\" style=\"padding: 0px; margin: 0px 0px 0px 10px;\">I Am Fine মেনজ হাফ স্লিভ কটন টি শার্ট -হোয়াইট</span></div></div>', 100, 4500, 4400, 'product-images/4b2b66d4a4e1e9c028ab0b8df6ae3771.jpg', 0, 0, 1, '2022-10-31 05:56:53', '2022-10-31 07:17:56'),
(5, 7, 2, 2, 1, 'New Year Shirt', 'NYS154', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><br></p>', 150, 3500, 3300, 'product-images/45d5f34df41668b129b6b582286a6a10.jpg', 0, 0, 1, '2022-10-31 05:58:31', '2022-10-31 05:58:31'),
(6, 6, 9, 1, 1, 'Sony XPeria XZ', 'SXXZ125', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><br></p>', 50, 55000, 52000, 'product-images/download (4).jpg', 0, 0, 1, '2022-10-31 06:52:01', '2022-10-31 06:52:01'),
(7, 6, 9, 1, 1, 'sony xperia xz3', 'SXZ3456', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><br></p>', 40, 45000, 42000, 'product-images/df1011ad2b777f423211ce83366c0313.jpg', 0, 0, 1, '2022-10-31 06:53:46', '2022-10-31 06:53:46');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('AuIEjAUxFJ1AvCpMEfOlwYFJJcRVF8sA4NX1px2V', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiaGZ2ZnNObVV4aTl1WUlNMGF5T1BmMWhZZGNldXFGMG96Y0tZTUhZNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9sb2NhbGhvc3QvZWNvbS1iYXRjaDQvcHVibGljL3VuaXQvYWRkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCQ5MklYVU5wa2pPMHJPUTVieU1pLlllNG9Lb0VhM1JvOWxsQy8ub2cvYXQyLnVoZVdHL2lnaSI7czoyNjoiNHlUbFRES3Uzb0pPZnpEX2NhcnRfaXRlbXMiO086MzI6IkRhcnJ5bGRlY29kZVxDYXJ0XENhcnRDb2xsZWN0aW9uIjoyOntzOjg6IgAqAGl0ZW1zIjthOjI6e2k6NTtPOjMyOiJEYXJyeWxkZWNvZGVcQ2FydFxJdGVtQ29sbGVjdGlvbiI6Mzp7czo4OiIAKgBpdGVtcyI7YTo2OntzOjI6ImlkIjtpOjU7czo0OiJuYW1lIjtzOjE0OiJOZXcgWWVhciBTaGlydCI7czo1OiJwcmljZSI7aTozMzAwO3M6ODoicXVhbnRpdHkiO2k6MztzOjEwOiJhdHRyaWJ1dGVzIjtPOjQxOiJEYXJyeWxkZWNvZGVcQ2FydFxJdGVtQXR0cmlidXRlQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YTozOntzOjU6ImltYWdlIjtzOjUxOiJwcm9kdWN0LWltYWdlcy80NWQ1ZjM0ZGY0MTY2OGIxMjliNmI1ODIyODZhNmExMC5qcGciO3M6ODoiY2F0ZWdvcnkiO3M6MTE6Ik1hbiBGYXNoaW9uIjtzOjU6ImJyYW5kIjtzOjY6IlllbGxvdyI7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9czoxMDoiY29uZGl0aW9ucyI7YTowOnt9fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDtzOjk6IgAqAGNvbmZpZyI7YTo2OntzOjE0OiJmb3JtYXRfbnVtYmVycyI7YjowO3M6ODoiZGVjaW1hbHMiO2k6MDtzOjk6ImRlY19wb2ludCI7czoxOiIuIjtzOjEzOiJ0aG91c2FuZHNfc2VwIjtzOjE6IiwiO3M6Nzoic3RvcmFnZSI7TjtzOjY6ImV2ZW50cyI7Tjt9fWk6NDtPOjMyOiJEYXJyeWxkZWNvZGVcQ2FydFxJdGVtQ29sbGVjdGlvbiI6Mzp7czo4OiIAKgBpdGVtcyI7YTo2OntzOjI6ImlkIjtpOjQ7czo0OiJuYW1lIjtzOjE1OiJOZXcgU21hcnQgU2hhcmkiO3M6NToicHJpY2UiO2k6NDQwMDtzOjg6InF1YW50aXR5IjtzOjE6IjEiO3M6MTA6ImF0dHJpYnV0ZXMiO086NDE6IkRhcnJ5bGRlY29kZVxDYXJ0XEl0ZW1BdHRyaWJ1dGVDb2xsZWN0aW9uIjoyOntzOjg6IgAqAGl0ZW1zIjthOjM6e3M6NToiaW1hZ2UiO3M6NTE6InByb2R1Y3QtaW1hZ2VzLzRiMmI2NmQ0YTRlMWU5YzAyOGFiMGI4ZGY2YWUzNzcxLmpwZyI7czo4OiJjYXRlZ29yeSI7czoxMzoiV29tYW4gRmFzaGlvbiI7czo1OiJicmFuZCI7czo0OiJTb255Ijt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjEwOiJjb25kaXRpb25zIjthOjA6e319czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO3M6OToiACoAY29uZmlnIjthOjY6e3M6MTQ6ImZvcm1hdF9udW1iZXJzIjtiOjA7czo4OiJkZWNpbWFscyI7aTowO3M6OToiZGVjX3BvaW50IjtzOjE6Ii4iO3M6MTM6InRob3VzYW5kc19zZXAiO3M6MToiLCI7czo3OiJzdG9yYWdlIjtOO3M6NjoiZXZlbnRzIjtOO319fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9fQ==', 1667658205);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Footbal', 'well', 'sub-category-images/Flag_of_Bangladesh.svg.png', 1, '2022-10-08 07:02:09', '2022-10-08 07:02:09'),
(2, 7, 'Shirt', 'well', 'sub-category-images/1658032044.jpg', 1, '2022-10-08 07:32:22', '2022-10-08 08:20:50'),
(3, 3, 'Shari', 'Shari', 'sub-category-images/surface-Nb5Dm6cIpQU-unsplash.jpg', 1, '2022-10-15 07:32:22', '2022-10-15 07:32:22'),
(4, 3, 'Shoee', 'Shoee', 'sub-category-images/software.png', 1, '2022-10-15 07:32:36', '2022-10-15 07:32:36'),
(5, 5, 'Pant', 'Pant', 'sub-category-images/software.png', 1, '2022-10-15 07:32:49', '2022-10-15 07:32:49'),
(7, 5, 'Kanchan Shirt', 'Kanchan Shirt', 'sub-category-images/software.png', 1, '2022-10-15 07:33:39', '2022-10-15 07:33:39'),
(8, 5, 'Kanchan Shoee', 'Kanchan Shoee', 'sub-category-images/software.png', 1, '2022-10-15 07:34:00', '2022-10-15 07:34:00'),
(9, 6, 'Mobile', 'Mobile', 'sub-category-images/0096082_happy-new-year-couple-t-shirt-sw3555t_550.jpeg', 1, '2022-10-31 06:50:19', '2022-10-31 06:50:19');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `code`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pices', 'PIC', 'erewr', 1, '2022-10-15 06:50:49', '2022-10-15 06:50:49');

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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Gerardo Adams', 'patrick99@example.net', '2022-10-01 06:23:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'dKB4dAi4fQ9LxzAHXpR52iV93fq1gPtnGL4QJExo1nhmdmn2jTtKyIq0JycJ', NULL, NULL, '2022-10-01 06:23:22', '2022-10-01 06:23:22'),
(2, 'Mr. Sigurd Emard Sr.', 'pascale86@example.com', '2022-10-01 06:23:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'tbYajelKKs', NULL, NULL, '2022-10-01 06:23:22', '2022-10-01 06:23:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_name_unique` (`name`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `other_images`
--
ALTER TABLE `other_images`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_categories_name_unique` (`name`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `units_name_unique` (`name`),
  ADD UNIQUE KEY `units_code_unique` (`code`);

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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `other_images`
--
ALTER TABLE `other_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
