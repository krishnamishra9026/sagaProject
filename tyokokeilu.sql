-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 07, 2022 at 06:23 AM
-- Server version: 8.0.28-0ubuntu0.20.04.3
-- PHP Version: 7.3.33-1+ubuntu20.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tyokokeilu`
--

-- --------------------------------------------------------

--
-- Table structure for table `bravo_attrs`
--

CREATE TABLE `bravo_attrs` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint DEFAULT NULL,
  `update_user` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `display_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hide_in_single` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_attrs`
--

INSERT INTO `bravo_attrs` (`id`, `name`, `slug`, `service`, `create_user`, `update_user`, `created_at`, `updated_at`, `deleted_at`, `display_type`, `hide_in_single`) VALUES
(1, 'Travel Styles', 'travel-styles', 'tour', NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', NULL, NULL, NULL),
(2, 'Facilities', 'facilities', 'tour', NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', NULL, NULL, NULL),
(3, 'Space Type', 'space-type', 'space', NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', NULL, NULL, NULL),
(4, 'Amenities', 'amenities', 'space', NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', NULL, NULL, NULL),
(5, 'Summer Job', 'property-type', 'job', 1, 1, '2020-11-18 06:20:08', '2021-01-12 02:05:46', NULL, NULL, NULL),
(6, 'Design Job', 'facilities-1', 'job', 1, NULL, '2020-11-18 06:20:08', '2021-01-12 02:06:08', NULL, NULL, NULL),
(7, 'Hotel Service', 'hotel-service', 'job', NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', NULL, NULL, NULL),
(8, 'Room Amenities', 'room-amenities', 'hotel_room', NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', NULL, NULL, NULL),
(9, 'Car Type', 'car-type', 'car', NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', NULL, NULL, 1),
(10, 'Car Features', 'car-features', 'car', NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', NULL, NULL, NULL),
(11, 'Event Type', 'event-type', 'event', NULL, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10', NULL, NULL, NULL),
(15, 'Job Category', 'job-category-dsw4', 'job_filter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Location', 'job-location-sda2', 'job_filter', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Type', 'job-type-dfa3', 'job_filter', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_attrs_translations`
--

CREATE TABLE `bravo_attrs_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `origin_id` bigint DEFAULT NULL,
  `locale` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int DEFAULT NULL,
  `create_user` bigint DEFAULT NULL,
  `update_user` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_attrs_translations`
--

INSERT INTO `bravo_attrs_translations` (`id`, `origin_id`, `locale`, `name`, `sort_order`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 6, 'en', 'Hotel & restaurant', 1, 18, 18, '2022-01-19 10:24:54', '2022-01-19 10:26:11');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_bookings`
--

CREATE TABLE `bravo_bookings` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_id` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `payment_id` int DEFAULT NULL,
  `gateway` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_id` int DEFAULT NULL,
  `object_model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `total_guests` int DEFAULT NULL,
  `currency` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit` decimal(10,2) DEFAULT NULL,
  `deposit_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission` decimal(10,2) DEFAULT NULL,
  `commission_type` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `buyer_fees` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `total_before_fees` decimal(10,2) DEFAULT NULL,
  `paid_vendor` tinyint DEFAULT NULL,
  `object_child_id` bigint DEFAULT NULL,
  `number` smallint DEFAULT NULL,
  `paid` decimal(10,2) DEFAULT NULL,
  `pay_now` decimal(10,2) DEFAULT NULL,
  `wallet_credit_used` double DEFAULT NULL,
  `wallet_total_used` double DEFAULT NULL,
  `wallet_transaction_id` bigint DEFAULT NULL,
  `is_refund_wallet` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_booking_meta`
--

CREATE TABLE `bravo_booking_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `booking_id` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_booking_payments`
--

CREATE TABLE `bravo_booking_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `booking_id` int DEFAULT NULL,
  `payment_gateway` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `currency` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `converted_amount` decimal(10,2) DEFAULT NULL,
  `converted_currency` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exchange_rate` decimal(10,2) DEFAULT NULL,
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_id` bigint DEFAULT NULL,
  `object_model` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `wallet_transaction_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_contact`
--

CREATE TABLE `bravo_contact` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_enquiries`
--

CREATE TABLE `bravo_enquiries` (
  `id` bigint UNSIGNED NOT NULL,
  `object_id` int DEFAULT NULL,
  `object_model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vendor_id` bigint DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `create_user` bigint DEFAULT NULL,
  `update_user` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_jobs`
--

CREATE TABLE `bravo_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image_id` int DEFAULT NULL,
  `banner_image_id` int DEFAULT NULL,
  `work_exp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `skill` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `edu_exp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_announcement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lat` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lng` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int DEFAULT NULL,
  `salary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_sent` tinyint(1) NOT NULL DEFAULT '0',
  `create_user` bigint DEFAULT NULL,
  `update_user` bigint DEFAULT NULL,
  `contact_email` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `how_to_contact` text COLLATE utf8mb4_unicode_ci,
  `start_at` date DEFAULT NULL,
  `duration` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_jobs`
--

INSERT INTO `bravo_jobs` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `work_exp`, `skill`, `edu_exp`, `lang_announcement`, `job_type`, `location_id`, `category_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `salary`, `status`, `mail_sent`, `create_user`, `update_user`, `contact_email`, `contact_phone`, `how_to_contact`, `start_at`, `duration`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Hotel Stanford', 'hotel-stanford', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p>\n<h4>HIGHLIGHTS</h4>\n<ul>\n<li>Visit the Museum of Modern Art in Manhattan</li>\n<li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li>\n<li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li>\n<li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li>\n<li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li>\n</ul>', 203, NULL, NULL, NULL, NULL, NULL, 'SummerJob', 0, 0, 'Arrondissement de Paris', '19.148665', '72.839670', 12, '{\"main\":\"all\"}', 'publish', 1, 1, 1, 'contact@gamil.com', NULL, NULL, NULL, '6', '2021-07-27 08:50:08', '2020-11-18 06:20:07', '2021-07-27 08:50:08'),
(2, 'Hotel WBF Hommachi', 'hotel-wbf-homachi', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p>\r\n<h4>HIGHLIGHTS</h4>\r\n<ul>\r\n<li>Visit the Museum of Modern Art in Manhattan</li>\r\n<li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li>\r\n<li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li>\r\n<li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li>\r\n<li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li>\r\n</ul>', 68, NULL, NULL, NULL, NULL, NULL, 'Practice', 1, 5, 'Porte de Vanves', '19.110390', '72.832764', 12, '{\"hourly\":null}', 'draft', 1, 1, 1, '12421@dfa.sdfs', '12312', NULL, NULL, '6', NULL, '2020-11-18 06:20:07', '2021-02-04 16:28:03'),
(19, 'Waiter/Waitress at an Indian restaurant in Helsinki centre.', 'wdwwq', NULL, 205, NULL, 'no', NULL, NULL, NULL, 'Practice', 10, 5, '2421421412', NULL, NULL, NULL, '{\"monthly\":\"3650\"}', 'publish', 1, 1, 24, 'ssaf@sfa.dsf', '234214214', NULL, '2021-02-09', '3', NULL, '2021-01-24 15:54:04', '2021-02-05 21:50:11'),
(26, 'test job', 'test-job', ' is internship job', 181, NULL, 'y01', NULL, NULL, NULL, 'Practice', 20, 1, '21321', NULL, NULL, NULL, NULL, 'publish', 1, 1, 1, '23213@312.12312', '23112321', NULL, '2021-06-01', '1', NULL, '2021-02-24 05:16:48', '2021-05-28 16:50:16'),
(28, 'This is Summer job', 'this-is-summer-job', 'This is a summer job', NULL, NULL, 'y15', NULL, NULL, NULL, 'SummerJob', 18, 2, 'The Remedies  No.  30', NULL, NULL, NULL, '{\"main\":\"all\"}', 'publish', 1, 18, NULL, 'buruna.real.webdevgu', NULL, NULL, '2021-08-25', '1', NULL, '2021-08-11 08:14:10', '2021-08-11 08:14:10'),
(29, 'This is third job', 'this-is-third-job', 'This is third to test city searching.', NULL, NULL, 'y01', NULL, NULL, NULL, 'Internship', 1, 3, 'The Remedies  No.  30', NULL, NULL, NULL, '{\"main\":\"all\"}', 'publish', 1, 18, NULL, 'buruna.real.webdevgu', '123456789', NULL, '2021-08-16', '1', '2021-12-21 16:08:05', '2021-08-16 08:18:28', '2021-12-21 16:08:05'),
(30, 'This is test time job', 'this-is-test-time-job', 'test time job', 218, NULL, 'y15', NULL, NULL, NULL, 'Internship', 16, 6, 'The Remedies  No.  30', NULL, NULL, NULL, '{\"main\":\"all\"}', 'publish', 1, 18, NULL, 'tmp@gmail.com', '1234567890', NULL, '2021-08-19', '2', NULL, '2021-08-19 03:13:19', '2021-08-19 03:13:19'),
(31, '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54', '123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354', 'numbers', 218, NULL, 'y01', NULL, NULL, NULL, 'SummerJob', 12, 5, 'The Remedies  No.  30', NULL, NULL, NULL, '{\"main\":\"hourly\",\"hourly\":\"25\"}', 'publish', 1, 18, NULL, 'tmp@gmail.com', '1234567890', NULL, '2021-08-12', '3', '2021-08-23 09:33:27', '2021-08-19 04:42:09', '2021-08-23 09:33:27'),
(32, 'Moving to a new place is scary, but using Työkokeilu to find a job within one week of moving in has been such a blessing to me and my family!', 'moving-to-a-new-place-is-scary-but-using-tyokokeilu-to-find-a-job-within-one-week-of-moving-in-has-been-such-a-blessing-to-me-and-my-family', 'Moving to a new place is scary, but using Työkokeilu to find a job within one week of moving in has been such a blessing to me and my family!', 219, NULL, 'ym5', NULL, NULL, NULL, 'SummerJob', 20, 3, 'My address', NULL, NULL, NULL, '{\"main\":\"hourly\",\"hourly\":\"25\"}', 'publish', 1, 18, 18, 'devcom@gmail.com', NULL, NULL, '2021-08-03', '3', '2021-08-24 13:52:20', '2021-08-23 09:27:44', '2021-08-24 13:52:20'),
(33, 'Warehouse1', 'warehouse1', 'Warehouse1', NULL, NULL, 'y01', NULL, NULL, NULL, 'SummerJob', 20, 3, 'The Remedies  No.  30', NULL, NULL, NULL, '{\"main\":\"hourly\",\"hourly\":\"35\"}', 'publish', 1, 18, NULL, 'tmp@gmail.com', '1234567890', NULL, '2021-08-23', NULL, NULL, '2021-08-23 15:26:43', '2021-08-23 15:26:43'),
(34, 'Warehouse2', 'warehouse2', 'Warehouse2', NULL, NULL, 'no', NULL, NULL, NULL, 'Internship', 20, 3, 'The Remedies  No.  30', NULL, NULL, NULL, '{\"main\":\"all\"}', 'draft', 1, 18, 18, 'tmp@gmail.com', '1234567890', NULL, '2021-08-23', '3', '2021-11-22 15:11:38', '2021-08-23 15:27:43', '2021-11-22 15:11:38'),
(35, 'Warehouse3', 'warehouse3', 'Warehouse3', NULL, NULL, 'no', NULL, NULL, NULL, 'SummerJob', 20, 3, 'The Remedies  No.  30', NULL, NULL, NULL, '{\"main\":\"hourly\",\"hourly\":\"25\"}', 'draft', 1, 18, 18, 'tmp@gmail.com', '1234567890', NULL, '2021-08-23', NULL, '2021-11-22 15:11:31', '2021-08-23 15:28:24', '2021-11-22 15:11:31'),
(36, 'asd', 'asd', 'sad', NULL, NULL, 'no', NULL, NULL, NULL, 'Internship', 22, 4, 'The Remedies  No.  30', NULL, NULL, NULL, '{\"main\":\"all\"}', 'publish', 1, 18, 18, 'devcom@gmail.com', '1234567890', NULL, '2021-08-06', '6', NULL, '2021-08-24 12:07:44', '2022-01-07 00:12:31'),
(37, 'This is the practice job title', 'this-is-the-practice-job-title', 'This is the practice job content', 220, NULL, 'y15', NULL, NULL, NULL, 'Practice', 10, 3, 'The Remedies  No.  30', NULL, NULL, NULL, NULL, 'publish', 1, 18, NULL, 'tmp@gmail.com', '1234567890', NULL, '2021-08-25', '4', NULL, '2021-08-25 11:16:53', '2021-08-25 11:16:53'),
(38, 'this is my first page', 'this-is-my-first-page', 'teateasetasret', NULL, NULL, 'y01', NULL, NULL, NULL, 'Practice', 9, 1, 'The Remedies  No.  30', NULL, NULL, NULL, NULL, 'publish', 1, 18, NULL, 'tmp@gmail.com', '1234567890', NULL, '2021-08-27', '3', NULL, '2021-08-27 02:15:14', '2021-08-27 02:15:14'),
(39, 'asdf asdf asdf asdf', 'asdf-asdf-asdf-asdf', 'afsdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf', NULL, NULL, 'no', NULL, NULL, NULL, 'SummerJob', 1, 3, 'The Remedies  No.  30', NULL, NULL, NULL, '{\"main\":\"all\"}', 'publish', 1, 18, NULL, 'tmp@gmail.com', '1234567890', NULL, '2021-08-27', '3', '2021-11-25 09:29:02', '2021-08-27 08:16:21', '2021-11-25 09:29:02'),
(40, 'Hello World', 'hello-world', 'as dfa dasf asdf asdf asdf asdf asdf asdf', NULL, NULL, 'no', 'asdf ,asd asdf, asd,f asd,f asdf ,', 'asdfasdf asdf asdf asdf asdf asdf asdf asdf asdf asdf', NULL, 'Practice', 16, 2, 'The Remedies  No.  30', NULL, NULL, NULL, NULL, 'publish', 1, 18, NULL, 'tmp@gmail.com', '1234567890', NULL, '2021-08-28', '1', NULL, '2021-08-28 05:44:02', '2021-08-28 05:44:02'),
(41, 'asdasdfasdfasdff asdf asdf', 'asdasdfasdfasdff-asdf-asdf', 'asdfasdfasdf asdf asdf asdf asdf asdf asddddddddddddfasdf asdf asdf asdf', NULL, NULL, 'no', NULL, NULL, NULL, 'SummerJob', 16, 2, 'The Remedies  No.  30', NULL, NULL, NULL, '{\"main\":\"all\"}', 'publish', 1, 18, NULL, 'tmp@gmail.com', '1234567890', NULL, '2021-08-27', '1', NULL, '2021-08-28 07:33:56', '2021-08-28 07:33:56'),
(42, 'This is the salary job', 'this-is-the-salary-job', 'This is the salary job. This is the salary job. This is the salary job.', NULL, NULL, 'no', NULL, NULL, NULL, 'SummerJob', 18, 1, 'The Remedies  No.  30', NULL, NULL, NULL, '{\"main\":\"hourly\",\"hourly\":\"20\"}', 'publish', 1, 18, NULL, 'tmp@gmail.com', '1234567890', NULL, '2021-08-28', '1', NULL, '2021-08-28 08:17:19', '2021-08-28 08:17:19'),
(43, 'This is the job for the skill and experiences', 'this-is-the-job-for-the-skill-and-experiences', 'This is the test job description for the skill and experiences testing.', 221, NULL, 'y01', 'Article Writing, Virtual Assistance', 'Hight Level education, Painting', NULL, 'SummerJob', 1, 1, 'The Remedies  No.  30', NULL, NULL, NULL, '{\"main\":\"hourly\",\"hourly\":\"35\"}', 'publish', 1, 18, NULL, 'tmp@gmail.com', '1234567890', NULL, '2021-08-27', '1', NULL, '2021-08-28 11:10:42', '2021-08-28 11:10:42'),
(44, 'Zoho CRM designer needed.', 'zoho-crm-designer-needed', 'Hi, Freelancers,  I am Buruna from Finland. I need a person who can design a Zoho CRM for my shopify store.\r\nIf you have a interesting, Please let me know.\r\nThanks.', 222, NULL, 'ym5', 'Zoho CRM, Graphic Design, CMS', 'Computer science degree, Western Europe Company Working History', NULL, 'SummerJob', 1, 1, 'Western Europe', NULL, NULL, NULL, '{\"main\":\"monthly\",\"monthly\":\"3000\"}', 'publish', 1, 18, 18, 'mycompany@gmail.com', '035353234', NULL, '2021-08-28', '1', NULL, '2021-08-28 11:16:23', '2021-12-13 18:48:21'),
(45, 'Designer for my website who live in Helsinki', 'designer-for-my-website-who-live-in-helsinki', 'Hi, all. Thanks for your reading my job description. I want to you design my website frontend pages. If you want hourly basis working, please ping me.\r\nThanks.', 220, NULL, 'y15', 'Graphic design, Website design', 'Design education, Northen Europe company working history.', NULL, 'Internship', 1, 1, 'The Remedies  No.  30', NULL, NULL, NULL, '{\"main\":\"hourly\",\"hourly\":\"35\"}', 'publish', 1, 18, 18, 'devcom@gmail.com', '1234567890', NULL, '2021-08-28', '1', NULL, '2021-08-28 11:24:16', '2022-01-03 21:13:04'),
(46, 'Webdesign for my shopify store', 'webdesign-for-my-shopify-store', 'Hi, Everybody. I want to you create a shopify store for my bag business.\r\nWeb design skill is must.\r\nThanks.', 223, NULL, 'y01', 'Shopify, Web Design, Online business', 'E-Commerce industry degree, IT company working history', NULL, 'Internship', 1, 1, 'The Remedies  No.  30', NULL, NULL, NULL, '{\"main\":\"monthly\",\"monthly\":\"3000\"}', 'publish', 1, 18, 18, 'mycompany@gmail.com', '1234567890', NULL, '2021-08-28', '1', NULL, '2021-08-28 11:26:45', '2021-08-28 11:29:13'),
(47, 'this is my first page', 'this-is-my-first-page-1', 'asdfasdf asdf asdf asdf asdf asdf asdf asdf asdf asdf das asd', NULL, NULL, 'y01', NULL, NULL, NULL, 'SummerJob', 20, 1, 'The Remedies  No.  30', NULL, NULL, NULL, '{\"main\":\"all\"}', 'draft', 1, 18, NULL, 'tmp@gmail.com', '1234567890', NULL, '2021-08-28', '1-5', '2021-11-22 15:11:24', '2021-08-28 12:11:25', '2021-11-22 15:11:24'),
(48, 'Professional designer job', 'professional-designer-job', 'Tarvitsetko yrityksellesi uudet tyylikkäät kotisivut tai logon suunnittelu?<br><br>Me Dorica Concept teemme kotisivuja kaikenkokoisten yritysten tarpeisiin, erittäin kilpailukykyiseen hintaan. Edullisin pakettimme (6:n sivun kotisivut) sopii mainiosti pienyrityksille, jotka toivovat kotisivuiltaan näyttävyyttä ja käytännöllisyyttä. Nyt käynnissä olevan kesäikampanjamme aikana saat 6:n sivun kotisivut hintaan 790€ + 24% alv (norm. 950€ + 24%alv). Lisäsivut 75€/sivu.<br>Tarjoushintaan oikeuttava koodisi on: 06-3773L.<br><br>Meiltä saat myös videot ja animaatiot yrityksesi mainontaan, sekä logon ja yritysilmeen suunnittelun - kaiken tarvittavan yhdestä paikasta! <br><br>Olethan yhteydessä, mikäli kiinnostuit asiasta. Kerromme mielellämme lisää!', 224, NULL, 'ym5', '', 'Computer science degree, Western Europe Company Working History', 'finnish', 'SummerJob', 1, 1, NULL, NULL, NULL, NULL, '{\"main\":\"monthly\",\"monthly\":\"3500\"}', 'draft', 1, 18, 18, NULL, NULL, 'Olethan yhteydessä, mikäli kiinnostuit asiasta. Kerromme mielellämme lisää!\r\n\r\nYstävällisesti\r\nDorica Oy\r\nwww.dorica.fi', '2021-08-28', '2-3', NULL, '2021-08-28 12:13:33', '2022-02-06 23:47:29'),
(49, 'Graphic designer and illustrator needs', 'graphic-designer-and-illustrator-needs', 'Hi, Everyone. Thanks for reading my post. I want to you design my website and prototype.\nIf you are interested in hourly basis working, please let me know.\nThanks.', 244, 243, 'y15', '\"Presentation design\"', 'Graphic Design, Illustrator', 'swedish', 'Internship', 1, 1, NULL, NULL, NULL, NULL, '{\"main\":\"hourly\",\"hourly\":\"25\"}', 'publish', 1, 18, 18, NULL, NULL, NULL, '2021-08-28', '2-3', NULL, '2021-08-28 13:21:13', '2022-01-06 14:15:14'),
(50, 'This is the job for admin', 'this-is-the-job-for-admin', NULL, 182, NULL, 'y01', NULL, NULL, NULL, 'SummerJob', 1, 1, 'The Remedies  No.  30', NULL, NULL, NULL, NULL, 'publish', 1, 31, 31, 'admin@job.com', '1234567890', NULL, '2021-08-30', '3', '2021-08-31 14:10:03', '2021-08-31 14:09:52', '2021-08-31 14:10:03'),
(51, 'This is the job for admin', 'this-is-the-job-for-admin-1', NULL, 182, NULL, 'y01', NULL, NULL, NULL, 'SummerJob', 1, 1, 'The Remedies  No.  30', NULL, NULL, NULL, NULL, 'publish', 1, 31, 31, 'admin@job.com', '1234567890', NULL, '2021-08-30', '3', '2021-08-31 14:26:07', '2021-08-31 14:09:52', '2021-08-31 14:26:07'),
(52, 'We are looking for Graphic Designer traineers', 'we-are-looking-for-graphic-designer-traineers', 'We are looking for interns for our studio. Ideally you are an independent and creative-minded individual with passion to learn more. You have a background in graphic design, animation, illustration etc. We can offer you a creative work environment where you can learn by working with professionals on real client projects. Normally the internship lasts 1-3 months. Please send you application along with some examples of your work to info@dorica.fi', 203, NULL, 'no', 'Presentation design', 'Social Strategy & Community Management', NULL, 'Practice', 1, 1, 'Laivurinkatu 41', NULL, NULL, NULL, '{\"main\":\"all\"}', 'draft', 1, 18, 18, 'mail@dorica.fi', NULL, NULL, '2021-12-01', '3-6', '2021-11-22 15:06:12', '2021-11-22 15:01:40', '2021-11-22 15:06:12'),
(53, 'We are looking for Graphic Designer traineers', 'we-are-looking-for-graphic-designer-traineers', 'We are looking for interns for our studio. Ideally you are an independent and creative-minded individual with passion to learn more. You have a background in graphic design, animation, illustration etc. We can offer you a creative work environment where you can learn by working with professionals on real client projects. Normally the internship lasts 1-3 months. Please send you application along with some examples of your work to info@dorica.fi', NULL, NULL, 'no', NULL, NULL, NULL, 'Practice', 1, 1, 'Laivurinkatu 41', NULL, NULL, NULL, NULL, 'draft', 1, 18, NULL, 'mail@dorica.fi', NULL, NULL, '2021-12-01', '3', '2021-11-22 15:08:44', '2021-11-22 15:07:11', '2021-11-22 15:08:44'),
(54, 'WE ARE LOOKING FOR GRAPHIC DESIGNER TRAINEES', 'we-are-looking-for-graphic-designer-trainees', 'We are looking for interns for our studio. Ideally you are an independent and creative-minded individual with passion to learn more. You have a background in graphic design, animation, illustration etc. We can offer you a creative work environment where you can learn by working with professionals on real client projects. Normally the internship lasts 1-3 months. Please send you application along with some examples of your work to info@dorica.fi', NULL, NULL, 'no', NULL, NULL, NULL, 'Practice', 1, 1, 'Laivurinkatu 41', NULL, NULL, NULL, NULL, 'draft', 1, 18, NULL, 'info@dorica.fi', NULL, NULL, '2021-12-01', '3', '2022-01-07 00:12:09', '2021-11-22 15:20:07', '2022-01-07 00:12:09'),
(55, 'GRAAFISEN SUUNNITTELUN HARJOITTELIJA', 'graafisen-suunnittelun-harjoittelija', 'Etsimme graafisen suunnittelun harjoittelijoita studioomme. Olet luova ja itsenäiseen työskentelyyn kykenevä tyyppi, joka haluaa oppia uutta. Sinulla on kyvyt graafiseen suunnitteluun, animaatioon, kuvittamiseen tms. Tarjoamme sinulle luovan ympäristön, jossa voit oppia uutta työskentelemällä designin ja markkinoinnin ammattilaisten kanssa oikeissa asiakasprojekteissa. Harjoittelujakson pituus on 1-3 kuukautta. Kiinnostaako? Lähetä hakemuksesi ja työnäytteitäsi osoitteeseen info@dorica.fi', NULL, NULL, 'no', NULL, NULL, NULL, 'Practice', 1, 1, 'Helsinki', NULL, NULL, NULL, NULL, 'publish', 1, 23, 23, 'kati.rinne@hel.fi', '040000000', NULL, NULL, '6', '2021-11-24 15:11:52', '2021-11-24 14:38:51', '2021-11-24 15:11:52'),
(56, 'design jobs', 'design-job', 'loream ispum dolor sit loream ispum dolor sit loream ispum dolor sit loream ispum dolor sit loream ispum dolor sit loream ispum dolor sit loream ispum dolor sit loream ispum dolor sit loream ispum dolor sit loream ispum dolor sit loream ispum dolor sit loream ispum dolor sit', NULL, NULL, 'no', 'vue', NULL, NULL, 'SummerJob', 1, 3, 'Europe', NULL, NULL, NULL, '{\"main\":\"all\"}', 'publish', 1, 33, 33, 'miltan@pitangent.com', NULL, NULL, '2021-11-01', '3', '2021-11-26 12:48:06', '2021-11-26 11:32:25', '2021-11-26 12:48:06'),
(57, 'PHP Developer', 'php-developer', 'Needed PHP Developer urgently. Must have 3 yrs of experience and framework knowledge is plus.', NULL, NULL, 'y01', NULL, NULL, NULL, 'Practice', 20, 1, 'C-6 Sector 7', NULL, NULL, NULL, NULL, 'publish', 1, 36, 36, 'nurulhasan129@gmail.', '9968584843', NULL, '2021-12-16', '1-6', NULL, '2021-12-08 11:08:51', '2021-12-08 13:51:33'),
(59, 'Typewriter', 'typewriter', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 235, NULL, 'y15', 'quod maxime placeat facere possimus', 'Intermediate with 5 years of experience', NULL, 'SummerJob', 93, 1, 'C6, Sector 7, Noida', NULL, NULL, NULL, '{\"main\":\"monthly\",\"monthly\":\"500\"}', 'draft', 1, 46, 46, 'contact@n2rtechnolog', NULL, NULL, '2021-12-28', '4', '2022-01-03 08:50:21', '2021-12-28 10:35:41', '2022-01-03 08:50:21'),
(63, 'Accountant Required', 'accountant-required', 'Needed accountant for Tally and Busy Software', 239, NULL, 'no', 'Tally, Busy, Salary Management, Account Management', NULL, NULL, 'SummerJob', 25, 1, 'C-6 Sector 7', NULL, NULL, NULL, '{\"main\":\"all\"}', 'publish', 1, 41, NULL, 'nurulhasan129@gmail.', NULL, NULL, '2021-12-31', '3', NULL, '2021-12-29 10:31:17', '2021-12-29 10:31:39'),
(64, 'Culpa assumenda aut', 'culpa-assumenda-aut', 'Eligendi necessitati Eligendi necessitati Eligendi necessitati', 242, 241, 'ym5', 'skill', 'expirence', 'finnish', 'SummerJob', 93, 6, 'Omnis id voluptatem', NULL, NULL, NULL, '{\"main\":\"monthly\",\"monthly\":\"2300\"}', 'publish', 1, 50, NULL, 'mytemytu@mailinator.', '+1 (131) 509-9657', NULL, '2011-05-03', 'Voluptas u', NULL, '2021-12-30 18:07:22', '2021-12-30 18:07:22'),
(65, 'SEO Executive', 'seo-executive', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga', 234, 235, 'y01', 'Content Management system', 'Bootstrap, Jquery', 'finnish', 'SummerJob', 93, 17, 'www.company.com', NULL, NULL, NULL, '{\"main\":\"monthly\",\"monthly\":\"10000\"}', 'publish', 1, 46, NULL, 'hr@n2rtechnologies.com', '888545654', 'Contact at teamn2rtechnologies@gmail.com', '2022-01-30', '1', '2022-01-03 08:49:39', '2021-12-31 08:12:50', '2022-01-03 08:49:39'),
(66, 'Tarjoilija / Waiter', 'tarjoilija', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce et cursus odio. Maecenas lobortis, urna a ultricies pharetra, mi orci fringilla nulla, a ultricies elit felis vel turpis. Nulla facilisi. Duis congue imperdiet sapien. Quisque vitae quam euismod, ultricies tellus vel, interdum arcu. Nulla facilisi. Ut finibus in arcu rutrum gravida. Proin congue mollis efficitur. Pellentesque ornare scelerisque nulla a pellentesque. Donec imperdiet purus convallis neque hendrerit aliquam. Aliquam sapien leo, tincidunt a erat id, mattis bibendum ante. Donec pretium id felis ullamcorper egestas.', 244, 263, 'y01', '', 'Laadukkaat työvaatteet ja -varusteet.', 'english', 'Internship', 1, 6, NULL, NULL, NULL, NULL, '{\"main\":\"monthly\",\"monthly\":\"2900\"}', 'publish', 1, 18, 18, NULL, NULL, 'Lisätietoja saat meiltä:\r\n\r\nPekka 050 14344546 pekka.kinnari@mail.com\r\nIrma Lahtinen 050 345455 irma.lahtinen@mail.com', '2022-01-30', '9', NULL, '2021-12-31 11:35:02', '2022-01-18 21:57:57'),
(68, 'Consequat Proident1', 'consequat-proident', 'Vel enim ipsum volu Vel enim ipsum volu Vel enim ipsum volu', 242, 241, 'y15', NULL, '21', 'swedish', 'Training', 99, 4, 'Excepturi dolorem ve', NULL, NULL, NULL, '{\"main\":\"monthly\",\"monthly\":\"1300\"}', 'publish', 1, 50, NULL, 'jovojunu@mailinator.com', '+1 (862) 627-9971', 'Magna voluptatem fug', '1971-03-10', 'Aut pariat', NULL, '2022-01-03 09:37:07', '2022-01-03 09:40:10'),
(69, 'Project Manager', 'project-manager', 'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will', 234, 247, 'ym5', '70% score in typing', 'Intermediate with 5 years of experience', 'finnish', 'Training', 93, 17, 'www.n2rtechnologies.com', NULL, NULL, NULL, '{\"main\":\"hourly\",\"hourly\":\"50\"}', 'publish', 1, 46, NULL, NULL, NULL, 'contact hr@n2rtechnologies.com', '2022-01-03', '2', NULL, '2022-01-03 10:16:45', '2022-01-06 07:52:59'),
(70, 'Software Engineer', 'software-engineer', 'wteqr qwertqewo rqowert qwe weqorewqtrt weqouyr qweor qweor qweor oqwyer qweuor qwert qwe rqwer qwer wer qwer qweoyr eqwor qwetr qweoyrot weqr qewtr qwoey', 234, 235, 'no', 'Can handle guest', NULL, 'english', 'Internship', 93, 17, 'www.company.com', NULL, NULL, NULL, NULL, 'draft', 1, 46, NULL, 'msk99@gmail.com', '9876545678', 'msk99@gmail.com', '2022-01-18', '2', NULL, '2022-01-03 14:46:13', '2022-01-03 14:46:13'),
(71, 'Need a driver', 'need-a-driver', 'Heelo tewgr pewqpgwpe qwob qwefbcp wadsc', NULL, NULL, 'no', NULL, NULL, 'finnish', 'Internship', 10, 6, 'R-175/15, Street No None', NULL, NULL, NULL, NULL, 'draft', 1, 46, NULL, 'nurulhasan129@gmail.com', '+919968584843', 'owyf e8wf gw8re7 fr7woer7gf', '2022-01-19', '2', NULL, '2022-01-04 09:07:52', '2022-01-04 09:07:52'),
(72, 'Need a carpainter', 'need-a-carpainter', 'terwqor oweqyrtweq yuweqtrouwqe wqeuyrtwqeu uweqriuqweyr iuweqyrt ewqurerw', NULL, NULL, 'no', NULL, NULL, 'finnish', 'Apprentice', 12, 16, 'R-175/15, Street No None', NULL, NULL, NULL, NULL, 'draft', 1, 46, NULL, 'nurulhasan129@gmail.com', '+919968584843', 'yuwe tfwoetr weort weoryt we rwerwer', '2022-01-20', '2', NULL, '2022-01-04 09:25:53', '2022-01-04 09:25:53'),
(73, 'Need a painter', 'need-a-painter', 'Need a painter for my house', NULL, NULL, 'no', NULL, NULL, 'finnish', 'Internship', 11, 16, 'R-216/2 Street No 9 Ramesh Park Laxmi Nagar New Delhi', NULL, NULL, NULL, NULL, 'draft', 1, 46, NULL, 'info@n2rtechnologies.com', '09968584843', NULL, '2022-01-05', '2', NULL, '2022-01-04 09:31:09', '2022-01-04 09:31:09'),
(74, 'Et dolor fugiat alia', 'et-dolor-fugiat-alia', 'Eiusmod commodo odio ksdkdkdkdk ldkdkdk', 245, 246, 'y01', NULL, NULL, 'finnish', 'Practice', 107, 3, 'Laboris consectetur', NULL, NULL, NULL, '{\"monthly\":\"1200\"}', 'publish', 1, 55, NULL, 'birow@mailinator.com', '+1 (758) 789-9174', 'Qui ex iste omnis eo', '2022-01-04', 'Eiusmod qu', NULL, '2022-01-04 14:45:40', '2022-01-04 14:45:40'),
(75, 'House keeper', 'house-keeper', 'etrwe iwet rewitr wert woertoweit rwei rtwer twer weytrwoetr', NULL, NULL, 'no', 'HTML, CSS', NULL, 'finnish', 'Apprentice', 1, 9, 'R-216/2 Street No 9 Ramesh Park Laxmi Nagar New Delhi', NULL, NULL, NULL, NULL, 'publish', 1, 47, NULL, 'info@n2rtechnologies.com', '09968584843', NULL, '2022-01-05', '1', NULL, '2022-01-04 15:20:15', '2022-01-04 15:20:15'),
(76, 'Animi perferendis d', 'animi-perferendis-d', 'Excepturi ad repelle Excepturi ad repelle Excepturi ad repelle', 245, 257, 'ym5', NULL, NULL, 'finnish', 'Internship', 93, 9, 'Recusandae In conse', NULL, NULL, NULL, '{\"main\":\"monthly\",\"monthly\":\"2344\"}', 'publish', 1, 55, NULL, NULL, NULL, 'Eos ipsum delectus', '2006-09-08', 'Libero dol', NULL, '2022-01-06 10:06:38', '2022-01-06 14:38:47'),
(77, 'HR Recruiter', 'hr-recruiter', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 251, 252, 'no', NULL, NULL, 'finnish', 'SummerJob', 93, 17, 'www.n2rtechnologies.com', NULL, NULL, NULL, NULL, 'publish', 1, 66, NULL, NULL, NULL, 'hr@n2rtechnologies.com', '2022-01-31', '3', NULL, '2022-01-06 13:15:14', '2022-01-06 13:15:14'),
(78, 'Fugiat at in et susc', 'fugiat-at-in-et-susc', 'Deleniti asperiores  Deleniti asperiores  Deleniti asperiores', 245, 257, 'no', NULL, NULL, 'finnish', 'Subsidy', 88, 1, 'Elit velit et aut i', NULL, NULL, NULL, '{\"main\":\"monthly\",\"monthly\":\"1200\"}', 'draft', 1, 55, NULL, NULL, NULL, 'Doloremque commodo o', '1975-03-25', 'Excepteur ', NULL, '2022-01-06 15:46:15', '2022-01-06 15:46:15'),
(79, 'Fugiat at in et susc', 'fugiat-at-in-et-susc-1', 'Deleniti asperiores  Deleniti asperiores  Deleniti asperiores', 245, 257, 'no', NULL, NULL, 'finnish', 'Subsidy', 88, 1, 'Elit velit et aut i', NULL, NULL, NULL, '{\"main\":\"monthly\",\"monthly\":\"1200\"}', 'draft', 1, 55, NULL, NULL, NULL, 'Doloremque commodo o', '1975-03-25', 'Excepteur ', NULL, '2022-01-06 15:46:52', '2022-01-06 15:46:52'),
(80, 'Graphic designer', 'graphic-designer', 'qrwyegqf qiuew fqiuwef qliwegf erliquwefgqref', 260, 258, 'no', NULL, NULL, 'finnish', 'Internship', 93, 17, 'www.tech.ocm', NULL, NULL, NULL, NULL, 'publish', 1, 66, NULL, NULL, NULL, NULL, '2022-01-31', '1', NULL, '2022-01-06 16:12:16', '2022-01-06 16:12:16'),
(81, 'Lillllllllllllll', 'lillllllllllllll', 'Ullamco eu laboriosa Ullamco eu laboriosaUllamco eu laboriosaUllamco eu laboriosaUllamco eu laboriosa', NULL, NULL, 'ym5', NULL, NULL, 'english', 'SummerJob', 35, 2, 'Illo velit corporis', NULL, NULL, NULL, '{\"main\":\"hourly\",\"hourly\":\"33\"}', 'draft', 1, 55, NULL, NULL, NULL, 'Sunt voluptas rerum', '1989-11-04', 'Asperiores', '2022-01-07 09:13:05', '2022-01-07 09:12:39', '2022-01-07 09:13:05'),
(82, 'grocery', 'grocery', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 262, 263, 'y15', '\"hr\"', NULL, 'english', 'Training', 93, 3, 'www.n2rtechnologies.com', NULL, NULL, NULL, '{\"main\":\"hourly\",\"hourly\":\"15\"}', 'publish', 1, 68, 68, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2022-01-07', '6', NULL, '2022-01-07 09:27:27', '2022-01-07 09:28:32'),
(83, 'vodafone', 'vodafone', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,', 262, 263, 'y01', '\"hr\"', NULL, 'english', 'Subsidy', 1, 13, 'www.n2rtechnologies.com', NULL, NULL, NULL, '{\"main\":\"hourly\",\"hourly\":\"20\"}', 'publish', 1, 68, NULL, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', '2022-01-07', '6', NULL, '2022-01-07 10:01:32', '2022-01-07 10:01:32'),
(84, 'web designer', 'web-designer', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 263, 262, 'y01', '\"Web Developer\"', NULL, 'english', 'Training', 13, 17, NULL, NULL, NULL, NULL, '{\"main\":\"hourly\",\"hourly\":\"18\"}', 'publish', 1, 68, NULL, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', '2022-01-07', '6', NULL, '2022-01-07 10:08:26', '2022-01-10 13:29:21'),
(85, 'Android Developer', 'android-developer', 'Integer in quam pharetra, blandit elit feugiat, ultrices libero. Donec varius pharetra metus at elementum. Sed interdum nec enim a laoreet. Morbi eget enim id libero varius gravida', 260, 258, 'no', NULL, 'Levels juice', 'english', 'SummerJob', 93, 1, 'www.test.com', NULL, NULL, NULL, NULL, 'publish', 1, 66, NULL, NULL, NULL, 'contact me at sergio@gmail.com', '2022-01-26', '2', NULL, '2022-01-07 14:36:15', '2022-01-07 14:43:18'),
(86, 'Project Cordinator', 'project-cordinator', 'Integer in quam pharetra, blandit elit feugiat, ultrices libero. Donec varius pharetra metus at elementum. Sed interdum nec enim a laoreet. Morbi eget enim id libero varius gravida', 264, NULL, 'no', NULL, NULL, 'english', 'SummerJob', 93, 17, 'www.n2r.com', NULL, NULL, NULL, NULL, 'publish', 1, 66, NULL, NULL, NULL, 'contact at 9909878132', '2022-01-22', '2', NULL, '2022-01-07 15:01:22', '2022-01-07 15:01:22'),
(87, 'webkul', 'webkul', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 262, 263, 'y01', NULL, NULL, 'english', 'Training', 12, 17, 'www.n2rtechnologies.com', NULL, NULL, NULL, '{\"main\":\"hourly\",\"hourly\":\"20\"}', 'draft', 1, 68, NULL, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', '2022-01-07', '6', NULL, '2022-01-07 15:24:31', '2022-01-07 15:40:00'),
(88, 'webkul', 'webkul-1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', NULL, NULL, 'y01', '\"Laravel\"', NULL, 'english', 'Apprentice', 12, 17, 'www.n2rtechnologies.com', NULL, NULL, NULL, '{\"main\":\"hourly\"}', 'draft', 1, 68, NULL, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', '2022-01-07', '6', NULL, '2022-01-07 15:47:38', '2022-01-07 15:47:38'),
(89, 'webkul', 'webkul-2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 262, 263, 'y01', NULL, NULL, 'english', 'Apprentice', 12, 17, 'www.n2rtechnologies.com', NULL, NULL, NULL, '{\"main\":\"hourly\"}', 'draft', 1, 68, NULL, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', '2022-01-07', '6', NULL, '2022-01-07 15:48:09', '2022-01-07 15:48:09'),
(90, 'webkul', 'webkul-3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 262, 263, 'y01', NULL, NULL, 'english', 'Internship', 114, 18, 'www.n2rtechnologies.com', NULL, NULL, NULL, '{\"main\":\"hourly\",\"hourly\":\"20\"}', 'draft', 1, 68, NULL, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', '2022-01-07', '6', NULL, '2022-01-07 15:50:16', '2022-01-07 15:54:19'),
(91, 'Data Keeper', 'data-keeper', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.', 264, 255, 'no', '\"skill one\"', 'skill two', 'finnish', 'Training', 93, 1, 'info.com', NULL, NULL, NULL, NULL, 'draft', 1, 66, NULL, NULL, NULL, 'jenpac@gmail.com', '2022-01-31', '2', NULL, '2022-01-07 15:57:33', '2022-01-07 15:57:33'),
(92, 'test New JOB', 'test-new-job', 'Qui doloremque alias Qui doloremque aliasQui doloremque aliasQui doloremque aliasQui doloremque alias', 265, NULL, 'y01', NULL, NULL, 'finnish', 'SummerJob', 27, 20, 'Iusto dolor quis acc', NULL, NULL, NULL, '{\"main\":\"hourly\",\"hourly\":\"2222\"}', 'draft', 1, 71, NULL, NULL, NULL, 'Rerum esse excepteur', '2017-07-21', 'Dolores ni', NULL, '2022-01-07 16:07:48', '2022-01-07 16:07:48'),
(93, 'GRAAFISEN SUUNNITTELUN', 'graafisen-suunnittelun', 'oka haluaa oppia uutta. Sinulla on kyvyt graafiseen suunnitteluun, animaatioon, kuvittamiseen tms. Tarjoamme sinulle luovan ympäristön, jossa voit oppia uutta työskentelemällä designin ja markkinoinnin ammattilaisten kanssa oikeissa asiakasprojekteissa. Harjoittelujakson pituus on 1-3 kuukautta. Kiinnostaako? Lähetä hakemuksesi ja työnäytteitäsi osoitteeseen info@dorica.fi', 267, 268, 'no', NULL, NULL, 'english', 'Apprenticeship', 19, 13, NULL, NULL, NULL, NULL, '{\"main\":\"Practice\"}', 'draft', 1, 18, 18, NULL, NULL, 'mail@dorica.fi', '2022-01-26', '3', NULL, '2022-01-07 18:38:13', '2022-01-11 17:35:01'),
(94, 'Odio pariatur Volup', 'odio-pariatur-volup', 'Velit mollitia est Velit mollitia estVelit mollitia estVelit mollitia estVelit mollitia estVelit mollitia est', NULL, NULL, 'ym5', NULL, NULL, 'swedish', 'Training', 26, 1, 'Molestiae ut quia mi', NULL, NULL, NULL, '{\"main\":\"monthly\",\"monthly\":\"12,3\"}', 'publish', 1, 71, NULL, NULL, NULL, 'Quas itaque eum mole', '2019-04-18', NULL, NULL, '2022-01-10 09:27:40', '2022-01-10 09:27:40'),
(95, 'In molestiae ut labo', 'in-molestiae-ut-labo', 'Minima fuga Quod is Minima fuga Quod isMinima fuga Quod isMinima fuga Quod isMinima fuga Quod is', NULL, NULL, 'no', NULL, NULL, 'swedish', 'Apprentice', 69, 24, 'Pariatur Et irure e', NULL, NULL, NULL, '{\"main\":\"monthly\",\"monthly\":\"1344\"}', 'draft', 1, 71, NULL, NULL, NULL, 'N', '2017-05-18', NULL, NULL, '2022-01-10 11:29:34', '2022-01-10 11:29:34'),
(96, 'Officiis eveniet qu', 'officiis-eveniet-qu', 'Tenetur molestiae eo Tenetur molestiae eoTenetur molestiae eoTenetur molestiae eoTenetur molestiae eo', NULL, NULL, 'y01', NULL, NULL, 'english', 'SummerJob', 13, 6, NULL, NULL, NULL, NULL, '{\"main\":\"hourly\",\"hourly\":\"1232\"}', 'draft', 1, 71, NULL, NULL, NULL, 'Krishna Mishraa', '2004-06-09', NULL, NULL, '2022-01-10 11:31:24', '2022-01-10 11:31:24'),
(97, 'Uber driver', 'uber-driver', 'Nunc cursus nulla vel tellus vestibulum ullamcorper. Nulla quis sodales magna. Vestibulum mi lectus, scelerisque blandit bibendum sed, feugiat vitae quam. Aliquam dolor velit, finibus a elit vel, aliquet fermentum neque. Sed tempor tincidunt dapibus. Suspendisse potenti. Fusce in ornare libero, maximus malesuada enim. Aenean magna dui, gravida rutrum molestie quis, iaculis id nunc. Donec aliquam metus quis volutpat efficitur. Maecenas eget leo aliquet, vulputate augue vel, laoreet magna. Proin fermentum tincidunt risus, ut bibendum enim efficitur et.', 269, 255, 'no', 'DL is mandatory', NULL, 'english', 'SummerJob', 93, 23, NULL, NULL, NULL, NULL, '{\"main\":\"hourly\",\"hourly\":\"12,5\"}', 'publish', 1, 66, NULL, NULL, NULL, 'contact us at 9878909878', '2022-01-31', '2', NULL, '2022-01-10 13:04:05', '2022-01-10 13:04:32'),
(101, 'Tyokokeilu executive staff', 'tyokokeilu-executive-staff', 'Nunc cursus nulla vel tellus vestibulum ullamcorper. Nulla quis sodales magna. Vestibulum mi lectus, scelerisque blandit bibendum sed, feugiat vitae quam. Aliquam dolor velit, finibus a elit vel, aliquet fermentum neque. Sed tempor tincidunt dapibus. Suspendisse potenti. Fusce in ornare libero, maximus malesuada enim. Aenean magna dui, gravida rutrum molestie quis, iaculis id nunc. Donec aliquam metus quis volutpat efficitur. Maecenas eget leo aliquet, vulputate augue vel, laoreet magna. Proin fermentum tincidunt risus, ut bibendum enim efficitur et.', NULL, NULL, 'no', NULL, NULL, 'finnish', 'Apprenticeship', 93, 17, NULL, NULL, NULL, NULL, '{\"main\":\"Practice\"}', 'publish', 1, 66, NULL, NULL, NULL, 'lwf@hhh.com', '2022-01-31', '2', NULL, '2022-01-10 14:05:48', '2022-01-10 14:05:48'),
(102, 'Assistant Manager', 'assistant-manager', 'As the job position suggests, assistant managers are responsible for helping the general manager with the execution of his tasks. They are often responsible for dealing with the paperwork, handling the training programs, taking part in brainstorming activities, helping with the decision-making processes, etc. When the general manager takes a day off, it is the Assistant who fills his position.', 270, 255, 'no', NULL, NULL, 'swedish', 'Apprenticeship', 93, 6, NULL, NULL, NULL, NULL, '{\"main\":\"all\"}', 'publish', 1, 66, NULL, NULL, NULL, 'contact at 56789143', '2022-01-26', NULL, NULL, '2022-01-11 09:37:51', '2022-01-11 09:37:51'),
(103, 'Executive Chef', 'executive-chef', 'If you aim at providing the best cuisine around town, then focus on finding the best executive chef out there. A good executive chef comes up with the meals on your menu. The great one helps you improve your overall service and tailor the food concept according to your restaurant’s needs. He also takes care of all cooking processes – from the preparation to the way it is served.', 270, NULL, 'no', NULL, NULL, 'english', 'Apprenticeship', 93, 6, NULL, NULL, NULL, NULL, '{\"main\":\"hourly\",\"hourly\":\"20\"}', 'publish', 1, 66, NULL, NULL, NULL, '9898762312', '2022-01-31', NULL, NULL, '2022-01-11 09:39:56', '2022-01-11 09:39:56'),
(104, 'Voluptates sed nostr', 'voluptates-sed-nostr', 'Est ut enim voluptas Est ut enim voluptasEst ut enim voluptasEst ut enim voluptasEst ut enim voluptas', NULL, NULL, 'ym5', '[\"Dolores vel reiciend\",\"Minima mollit eu dol\",\"test skilll\"]', NULL, 'finnish', 'Apprenticeship', 89, 3, NULL, NULL, NULL, NULL, '{\"main\":\"hourly\",\"hourly\":\"1200\"}', 'publish', 1, 71, NULL, NULL, NULL, 'Officiis eveniet co', '2005-07-02', '1', NULL, '2022-01-12 08:41:43', '2022-01-12 08:42:45'),
(105, 'AMC welder', 'amc-welder', '<p><strong style=\"margin:0px;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;text-align:justify;\">Lorem Ipsum</strong><span style=\"color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;text-align:justify;\"> is simply <span style=\"background-color:rgb(255,0,0);\">dummy</span> text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span><br></p>', 275, 273, 'no', '[\"skill one\",\"skill two\",\"skill three\"]', NULL, 'english', 'SummerJob', 93, 6, NULL, NULL, NULL, NULL, '{\"main\":\"hourly\",\"hourly\":\"20,5\"}', 'publish', 1, 66, NULL, NULL, NULL, '8989776789', '2022-01-24', '2', NULL, '2022-01-12 14:03:38', '2022-01-12 14:19:26'),
(106, 'Vlokuvaaja', 'vlokuvaaja', '<p><span style=\"color:rgb(44,62,80);font-family:\'Source Sans Pro\', sans-serif;font-size:18px;font-weight:700;\">Language </span><span style=\"color:rgb(44,62,80);font-family:\'Source Sans Pro\', sans-serif;font-size:18px;font-weight:700;\">Language</span><span style=\"color:rgb(44,62,80);font-family:\'Source Sans Pro\', sans-serif;font-size:18px;font-weight:700;\"> Language</span><span style=\"color:rgb(44,62,80);font-family:\'Source Sans Pro\', sans-serif;font-size:18px;font-weight:700;\"> Language</span><span style=\"color:rgb(44,62,80);font-family:\'Source Sans Pro\', sans-serif;font-size:18px;font-weight:700;\"> Language</span><span style=\"color:rgb(44,62,80);font-family:\'Source Sans Pro\', sans-serif;font-size:18px;font-weight:700;\"> Language</span><span style=\"color:rgb(44,62,80);font-family:\'Source Sans Pro\', sans-serif;font-size:18px;font-weight:700;\"> Language</span><span style=\"color:rgb(44,62,80);font-family:\'Source Sans Pro\', sans-serif;font-size:18px;font-weight:700;\"> Language</span><span style=\"color:rgb(44,62,80);font-family:\'Source Sans Pro\', sans-serif;font-size:18px;font-weight:700;\"> Language</span><span style=\"color:rgb(44,62,80);font-family:\'Source Sans Pro\', sans-serif;font-size:18px;font-weight:700;\"> Language</span><span style=\"color:rgb(44,62,80);font-family:\'Source Sans Pro\', sans-serif;font-size:18px;font-weight:700;\"> Language</span><span style=\"color:rgb(44,62,80);font-family:\'Source Sans Pro\', sans-serif;font-size:18px;font-weight:700;\"> Language</span><span style=\"color:rgb(44,62,80);font-family:\'Source Sans Pro\', sans-serif;font-size:18px;font-weight:700;\"> Language</span><span style=\"color:rgb(44,62,80);font-family:\'Source Sans Pro\', sans-serif;font-size:18px;font-weight:700;\"> Language</span><span style=\"color:rgb(44,62,80);font-family:\'Source Sans Pro\', sans-serif;font-size:18px;font-weight:700;\"> Language</span><span style=\"color:rgb(44,62,80);font-family:\'Source Sans Pro\', sans-serif;font-size:18px;font-weight:700;\"> Language</span><span style=\"color:rgb(44,62,80);font-family:\'Source Sans Pro\', sans-serif;font-size:18px;font-weight:700;\"> Language</span><span style=\"color:rgb(44,62,80);font-family:\'Source Sans Pro\', sans-serif;font-size:18px;font-weight:700;\"> Language</span><br></p>', 277, 278, 'y01', '', NULL, 'finnish', 'Training', 1, 15, NULL, NULL, NULL, NULL, '{\"main\":\"Practice\"}', 'publish', 1, 53, NULL, NULL, NULL, 'Call me! Call me!Call me!Call me!Call me!Call me!Call me! \r\nCall me!Call me!Call me!Call me!Call me!Call me!Call me!Call me!Call me!', '2022-02-28', '4', '2022-01-14 16:56:06', '2022-01-12 17:57:35', '2022-01-14 16:56:06'),
(107, 'GRAAFISEN SUUNNITTELUN HARJOITTELIJA', 'graafisen-suunnittelun-harjoittelija', '<p>This is the same for jobs in New Job Daily, Search results and Similar jobs<br>Name of the company, city and job title must start with capital in New Job Daily, Search results and Similar jobs: Waiter needed, McDonald’s, Helsinki<br></p>', NULL, NULL, 'no', '', NULL, 'finnish', 'Training', 19, 5, NULL, NULL, NULL, NULL, '{\"main\":\"Practice\"}', 'draft', 1, 18, NULL, NULL, NULL, 'mail@dorica.fi', '2022-01-05', '3', '2022-01-19 11:13:50', '2022-01-12 17:57:50', '2022-01-19 11:13:50'),
(109, 'Kokki', 'kokki', '<p>Etsimme graafisen suunnittelun harjoittelijoita studioomme. <br></p>', 277, 279, 'no', '', NULL, 'finnish', 'Internship', 15, 15, NULL, NULL, NULL, NULL, '{\"main\":\"Practice\"}', 'publish', 1, 18, 18, NULL, NULL, 'vargha.bahagir@gmail.com', '2022-01-13', '3', NULL, '2022-01-15 09:59:18', '2022-01-28 11:16:32'),
(111, 'Company Null job', 'company-null-job', '<p>Company Null job Company Null job Company Null job Company Null job<br></p>', NULL, NULL, 'no', '', NULL, 'finnish', 'Training', 9, 16, NULL, NULL, NULL, NULL, '{\"main\":\"all\"}', 'publish', 1, 87, NULL, NULL, NULL, 'test test', '2022-01-31', NULL, NULL, '2022-01-18 08:27:41', '2022-01-18 08:27:41'),
(114, 'Eos voluptatem sint', 'eos-voluptatem-sint', 'Placeat, ut mollitia. Placeat, ut mollitia.Placeat, ut mollitia.Placeat, ut mollitia.Placeat, ut mollitia.Placeat, ut mollitia.', NULL, NULL, 'no', '', NULL, 'swedish', 'Training', 81, 16, NULL, NULL, NULL, NULL, '{\"main\":\"Practice\"}', 'draft', 1, 71, NULL, NULL, NULL, 'Officia est excepteu', '2017-12-23', NULL, NULL, '2022-01-31 15:40:18', '2022-01-31 15:40:18'),
(115, 'Eveniet nihil et si', 'eveniet-nihil-et-si', 'Sint magni et ad nis. Sint magni et ad nis.Sint magni et ad nis.Sint magni et ad nis.Sint magni et ad nis.Sint magni et ad nis.Sint magni et ad nis.', NULL, NULL, 'y01', '', NULL, 'swedish', 'Internship', 53, 23, NULL, NULL, NULL, NULL, '{\"main\":\"all\"}', 'draft', 0, 71, NULL, NULL, NULL, 'Ullamco est doloremq', '2018-11-21', NULL, NULL, '2022-01-31 15:52:02', '2022-01-31 15:52:02'),
(116, 'Provident est repre', 'provident-est-repre', 'Porro a consequatur . Porro a consequatur .Porro a consequatur .Porro a consequatur .Porro a consequatur .Porro a consequatur .', NULL, NULL, 'no', '', NULL, 'finnish', 'Subsidy', 39, 18, NULL, NULL, NULL, NULL, '{\"main\":\"Practice\"}', 'draft', 1, 71, NULL, NULL, NULL, 'Ad ipsum totam ut u', '2022-01-31', NULL, NULL, '2022-01-31 15:53:44', '2022-01-31 15:53:44'),
(117, 'A Vendor job in Helsinki', 'a-vendor-job-in-helsinki', '<p>A Vendor job in Helsinki<br></p>', 280, 281, 'no', '[\"TSO Moriri\"]', NULL, 'finnish', 'SummerJob', 93, 17, NULL, NULL, NULL, NULL, '{\"main\":\"hourly\",\"hourly\":\"22\"}', 'draft', 0, 66, NULL, NULL, NULL, '9793939298', '2022-02-16', NULL, NULL, '2022-01-31 16:57:04', '2022-01-31 16:57:04'),
(118, 'Job vendor in Salo', 'job-vendor-in-salo', '<p>Job vendor in Salo<br></p>', 280, 281, 'no', '[\"tso moriri\"]', NULL, 'english', 'SummerJob', 93, 14, NULL, NULL, NULL, NULL, '{\"main\":\"Practice\"}', 'draft', 0, 66, NULL, NULL, NULL, '09896785', '2022-02-09', '2', NULL, '2022-01-31 16:59:55', '2022-01-31 16:59:55'),
(119, 'Venom test job 123', 'venom-test-job', '<p>Venom test job Venom test job Venom test job Venom test job Venom test job Venom test job<br></p>', 280, 281, 'no', '', NULL, 'finnish', 'Internship', 93, 4, NULL, NULL, NULL, NULL, '{\"main\":\"Practice\"}', 'publish', 0, 66, NULL, NULL, NULL, '0874975634', '2022-02-23', '2', NULL, '2022-02-01 09:16:38', '2022-02-01 09:17:52'),
(120, 'we are looking for graphic designer', 'we-are-looking-for-graphic-designer', '<p>We are looking for interns for our studio. Ideally you are an independent and creative-minded individual with passion to learn more. You have a background in graphic design, animation, illustration etc. We can offer you a creative work environment where you can learn by working with professionals on real client projects. Normally the internship lasts 1-3 months.</p><ul><li>UI/UX skill</li><li>Photoshop<br></li></ul>', 244, 282, 'no', '', NULL, 'finnish', 'Training', 12, 19, NULL, NULL, NULL, NULL, '{\"main\":\"Practice\"}', 'draft', 0, 18, 18, NULL, NULL, 'Please send you application along with some examples of your work to info@dorica.fi', '2022-02-28', '9', NULL, '2022-02-01 10:44:28', '2022-02-03 21:04:10'),
(121, 'We are looking for a Mobile repair technician in Helsinki and Nairobi', 'mobile-repair', '<p>Mobile repair Mobile repair Mobile repair Mobile repair Mobile repair Mobile repair Mobile repair<br></p>', NULL, NULL, NULL, '', NULL, 'finnish', 'Internship', 93, 4, NULL, NULL, NULL, NULL, '{\"main\":\"Practice\"}', 'draft', 0, 66, 66, NULL, NULL, 'eoqyguef', '2022-02-25', '2', NULL, '2022-02-02 08:38:32', '2022-02-04 15:43:17'),
(122, 'Shuttle Bus service', 'shuttle-bus-service', '<p>Shuttle Bus service Shuttle Bus service Shuttle Bus service Shuttle Bus service Shuttle Bus service Shuttle Bus service Shuttle Bus service<br></p>', NULL, NULL, 'y01', '', NULL, 'finnish', 'Training', 93, 16, NULL, NULL, NULL, NULL, '{\"main\":\"Practice\"}', 'draft', 0, 66, NULL, NULL, NULL, '9876176423', '2022-02-25', '2', NULL, '2022-02-02 17:37:31', '2022-02-02 17:37:31'),
(123, 'Hic quidem iste sequ', 'hic-quidem-iste-sequ', 'Ab sit, distinctio. . Ab sit, distinctio. .Ab sit, distinctio. .Ab sit, distinctio. .Ab sit, distinctio. .Ab sit, distinctio. .', NULL, NULL, 'y01', '', NULL, 'swedish', 'SummerJob', 42, 19, NULL, NULL, NULL, NULL, '{\"main\":\"Practice\"}', 'publish', 0, 71, NULL, NULL, NULL, 'Et in fugiat et Nam', '1977-09-04', '2', NULL, '2022-02-04 11:52:51', '2022-02-04 11:53:20');
INSERT INTO `bravo_jobs` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `work_exp`, `skill`, `edu_exp`, `lang_announcement`, `job_type`, `location_id`, `category_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `salary`, `status`, `mail_sent`, `create_user`, `update_user`, `contact_email`, `contact_phone`, `how_to_contact`, `start_at`, `duration`, `deleted_at`, `created_at`, `updated_at`) VALUES
(124, 'GRAAFISEN SUUNNITTELUN HARJOITTELIJA', 'graafisen-suunnittelun-harjoittelija', '<p>1. The second language is English<br>2. Search engine not connected to the filter in search result page in Finnish language<br>3. Search result in English page: Search for Helsinki, then choose any job types, category or language in the left. You see other available jobs in cities also shown in the result.<br>4. We show 1 2 3 4 5 6 … 17 numbers if we have 17 page. 1 2 3 4 5 6 7 8 9 10 is wrong<br>5. Register a new account. Then log in to website. You see without email configuration you can log in to database. This is wrong! <br></p>', 283, 282, 'y01', '', NULL, 'finnish', 'Internship', 114, 16, NULL, NULL, NULL, NULL, '{\"main\":\"Practice\"}', 'draft', 0, 18, 18, NULL, NULL, 'test', '2022-02-10', '9', NULL, '2022-02-04 13:49:30', '2022-02-04 15:05:38'),
(125, 'New job for car vendor in Salo', 'new-job-for-car-vendor-in-salo', '<p>New job for car vendor in Salo New job for car vendor in Salo New job for car vendor in Salo New job for car vendor in Salo<br></p>', NULL, NULL, 'y01', '', NULL, 'finnish', 'Apprenticeship', 113, 4, NULL, NULL, NULL, NULL, '{\"main\":\"Practice\"}', 'publish', 0, 66, 66, NULL, NULL, 'New job for car vendor in Salo New job for car vendor in Salo', '2022-02-23', '2', NULL, '2022-02-04 15:10:58', '2022-02-04 17:20:40');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_job_categories`
--

CREATE TABLE `bravo_job_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` bigint NOT NULL,
  `image_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `display_homepage` tinyint NOT NULL DEFAULT '0',
  `create_user` bigint DEFAULT NULL,
  `update_user` bigint DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_job_categories`
--

INSERT INTO `bravo_job_categories` (`id`, `name`, `slug`, `sort_order`, `image_id`, `hidden`, `display_homepage`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Software development', 'programming', 7, '233', 0, 0, 1, 18, NULL, '2021-02-08 14:01:27', '2022-01-06 09:48:00'),
(2, 'Transportation & logistics', 'agriculture', 5, '231', 0, 0, 1, 18, NULL, '2021-02-08 14:01:41', '2022-01-06 09:47:21'),
(3, 'Warehouse', 'warehouse', 6, '232', 0, 0, 1, 18, NULL, '2021-02-08 14:01:59', '2022-01-06 09:47:49'),
(4, 'Construction', 'handyman', 4, '230', 0, 0, 1, 18, NULL, '2021-02-08 14:02:10', '2022-01-06 09:47:10'),
(5, 'Industrial', 'hairdresser', 3, '228', 0, 0, 1, 18, NULL, '2021-02-08 14:02:24', '2022-01-06 09:46:51'),
(6, 'Restaurants and Hotels', 'restaurant-bar', 1, '227', 0, 0, 1, 18, NULL, '2021-02-08 14:02:39', '2022-01-19 10:43:19'),
(7, 'Subsidy', 'subsidy', 8, '214', 1, 1, 1, 18, '2021-12-30 17:14:01', '2021-02-08 14:02:39', '2021-12-30 17:14:01'),
(8, 'Apprenticeship', 'apprenticeship', 9, '214', 1, 1, 1, 18, '2021-12-30 17:14:14', '2021-02-08 14:02:39', '2021-12-30 17:14:14'),
(9, 'Healthcare', 'healthcare', 2, '229', 0, 0, 1, 18, NULL, '2021-02-08 14:02:39', '2022-01-06 09:46:28'),
(10, 'Test Cat', 'test-cat', 25, '224', 0, 1, 18, 18, '2021-12-23 11:26:06', '2021-12-23 11:22:57', '2021-12-23 11:26:06'),
(11, 'Test Cate', 'test-cate', 1, '212', 0, 1, 18, NULL, '2021-12-24 14:33:12', '2021-12-24 14:30:51', '2021-12-24 14:33:12'),
(12, 'Social work', 'social-work', 8, NULL, 0, 1, 18, 18, NULL, '2021-12-30 17:07:52', '2022-01-04 09:47:55'),
(13, 'Installation and Maintenance', 'installation-and-maintenance', 9, NULL, 0, 1, 18, NULL, NULL, '2021-12-30 17:09:14', '2021-12-30 17:09:14'),
(14, 'Technology', 'technology', 10, NULL, 0, 1, 18, NULL, NULL, '2021-12-30 17:09:28', '2021-12-30 17:09:28'),
(15, 'Production', 'production', 11, NULL, 0, 1, 18, NULL, NULL, '2021-12-30 17:09:41', '2021-12-30 17:09:41'),
(16, 'Administrative & clerical work', 'administrative-clerical-work', 12, NULL, 0, 1, 18, NULL, NULL, '2021-12-30 17:10:15', '2021-12-30 17:10:15'),
(17, 'IT', 'it', 13, NULL, 0, 1, 18, NULL, NULL, '2021-12-30 17:10:34', '2021-12-30 17:10:34'),
(18, 'Customer Service', 'customer-service', 14, NULL, 0, 1, 18, NULL, NULL, '2021-12-30 17:10:48', '2021-12-30 17:10:48'),
(19, 'Management', 'management', 15, NULL, 0, 1, 18, NULL, NULL, '2021-12-30 17:11:04', '2021-12-30 17:11:04'),
(20, 'Property maintenance', 'property-maintenance', 16, NULL, 0, 1, 18, NULL, NULL, '2021-12-30 17:11:16', '2021-12-30 17:11:16'),
(21, 'Research', 'research', 17, NULL, 1, 1, 18, 18, NULL, '2021-12-30 17:11:26', '2021-12-31 08:07:49'),
(22, 'Other area of responsibility', 'other-area-of-responsibility', 17, NULL, 0, 1, 18, NULL, NULL, '2021-12-30 17:11:42', '2021-12-30 17:11:42'),
(23, 'Economy and finance', 'economy-and-finance', 18, NULL, 0, 1, 18, 18, NULL, '2021-12-30 17:11:53', '2022-01-06 09:48:25'),
(24, 'Sanitary', 'sanitary', 22, '229', 0, 1, 18, NULL, NULL, '2021-12-31 13:50:14', '2021-12-31 13:50:14'),
(25, 'Test category', 'test-category', 33, '233', 1, 1, 18, 18, NULL, '2022-01-04 09:49:45', '2022-01-05 15:02:41'),
(26, 'Hanm category', 'hanm-category', 34, '244', 1, 1, 18, 18, NULL, '2022-01-06 08:32:40', '2022-01-06 08:33:17');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_job_term`
--

CREATE TABLE `bravo_job_term` (
  `id` bigint UNSIGNED NOT NULL,
  `term_id` int DEFAULT NULL,
  `target_id` int DEFAULT NULL,
  `create_user` bigint DEFAULT NULL,
  `update_user` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_job_term`
--

INSERT INTO `bravo_job_term` (`id`, `term_id`, `target_id`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(34, 43, 7, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(35, 44, 7, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(36, 45, 7, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(37, 46, 7, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(38, 47, 7, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(39, 48, 7, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(40, 42, 8, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(41, 43, 8, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(42, 44, 8, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(43, 45, 8, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(44, 46, 8, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(45, 47, 8, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(46, 48, 8, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(47, 42, 9, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(48, 44, 9, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(49, 45, 9, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(50, 46, 9, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(51, 47, 9, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(52, 42, 10, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(53, 43, 10, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(54, 44, 10, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(55, 45, 10, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(56, 46, 10, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(57, 47, 10, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(58, 48, 10, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(59, 42, 11, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(60, 43, 11, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(61, 44, 11, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(62, 45, 11, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(63, 46, 11, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(64, 48, 11, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(93, 53, 7, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(94, 54, 7, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(95, 50, 8, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(96, 51, 8, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(97, 52, 8, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(98, 55, 8, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(99, 49, 9, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(100, 50, 9, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(101, 51, 9, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(102, 52, 9, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(103, 55, 9, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(104, 49, 10, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(105, 51, 10, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(106, 52, 10, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(107, 50, 11, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(108, 51, 11, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(109, 52, 11, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(110, 55, 11, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_job_translations`
--

CREATE TABLE `bravo_job_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `origin_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `create_user` bigint DEFAULT NULL,
  `update_user` bigint DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_job_translations`
--

INSERT INTO `bravo_job_translations` (`id`, `origin_id`, `locale`, `title`, `content`, `address`, `policy`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 11, 'fi', 'The May Fair Hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p>\r\n<h4>HIGHLIGHTS</h4>\r\n<ul>\r\n<li>Visit the Museum of Modern Art in Manhattan</li>\r\n<li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li>\r\n<li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li>\r\n<li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li>\r\n<li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li>\r\n</ul>', 'Paris Cinemas Battery', NULL, 1, NULL, NULL, '2021-01-12 01:14:50', '2021-01-12 01:14:50'),
(2, 111, 'en', 'Company Null job1', '<p>Company Null job Company Null job Company Null job Company Null job1</p>', 'test address', NULL, 18, NULL, NULL, '2022-01-19 09:21:57', '2022-01-19 09:21:57');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_locations`
--

CREATE TABLE `bravo_locations` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int DEFAULT NULL,
  `map_lat` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lng` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_lft` int UNSIGNED NOT NULL DEFAULT '0',
  `_rgt` int UNSIGNED NOT NULL DEFAULT '0',
  `parent_id` int UNSIGNED DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint DEFAULT NULL,
  `lang` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `banner_image_id` int DEFAULT NULL,
  `trip_ideas` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_locations`
--

INSERT INTO `bravo_locations` (`id`, `name`, `content`, `slug`, `image_id`, `map_lat`, `map_lng`, `map_zoom`, `status`, `_lft`, `_rgt`, `parent_id`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`, `banner_image_id`, `trip_ideas`) VALUES
(1, 'Helsinki', '<p>New York, a city that doesnt sleep, as Frank Sinatra sang. The Big Apple is one of the largest cities in the United States and one of the most popular in the whole country and the world. Millions of tourists visit it every year attracted by its various iconic symbols and its wide range of leisure and cultural offer. New York is the birth place of new trends and developments in many fields such as art, gastronomy, technology,...</p>', 'helsinki', 185, '60.1699', '24.9384', 12, 'publish', 1, 2, NULL, 1, 18, NULL, NULL, NULL, '2020-11-18 06:20:05', '2022-01-25 23:08:11', 111, '[{\"image_id\":\"112\",\"title\":\"Experiencing the best jazz in Harlem, birthplace of bebop\",\"link\":\"#\",\"content\":\"New Orleans might be the home of jazz, but New York City is where many of the genre\\u2019s greats became stars \\u2013 and Harlem was at the heart of it.The neighborhood experienced a rebirth during the...\"},{\"image_id\":\"113\",\"title\":\"Reflections from the road: transformative \\u2018Big Trip\\u2019 experiences\",\"link\":\"#\",\"content\":\"Whether it\\u2019s a gap year after finishing school, a well-earned sabbatical from work or an overseas adventure in celebration of your retirement, a big trip is a rite of passage for every traveller, with myriad life lessons to be ...\"}]'),
(2, 'Lapland', NULL, 'new-york-united-states', 190, '40.712776', '-74.005974', 12, 'publish', 3, 4, NULL, 1, 1, '2021-02-05 21:20:50', NULL, NULL, '2020-11-18 06:20:05', '2021-02-05 21:20:50', NULL, NULL),
(3, 'Espoo', NULL, 'california', 191, '36.778259', '-119.417931', 12, 'publish', 5, 6, NULL, 1, 1, '2021-02-05 21:20:50', NULL, NULL, '2020-11-18 06:20:05', '2021-02-05 21:20:50', NULL, NULL),
(4, 'Alajärvi', NULL, 'united-states', 109, '37.090240', '-95.712891', 12, 'publish', 7, 8, NULL, 1, 1, '2021-02-05 21:20:50', NULL, NULL, '2020-11-18 06:20:05', '2021-02-05 21:20:50', NULL, NULL),
(5, 'Alavus', NULL, 'los-angeles', 110, '34.052235', '-118.243683', 12, 'publish', 9, 10, NULL, 1, 1, '2021-02-05 21:20:50', NULL, NULL, '2020-11-18 06:20:05', '2021-02-05 21:20:50', NULL, NULL),
(6, 'Forssa', NULL, 'new-jersey', 106, '40.058323', '-74.405663', 12, 'publish', 11, 12, NULL, 1, 1, '2021-02-05 21:20:50', NULL, NULL, '2020-11-18 06:20:05', '2021-02-05 21:20:50', NULL, NULL),
(7, 'Haapajärvi', NULL, 'san-francisco', 107, '37.774929', '-122.419418', 12, 'publish', 13, 14, NULL, 1, 1, '2021-02-05 21:20:50', NULL, NULL, '2020-11-18 06:20:05', '2021-02-05 21:20:50', NULL, NULL),
(8, 'Haapavesi', NULL, 'virginia', 108, '37.431572', '-78.656891', 12, 'publish', 15, 16, NULL, 1, 1, '2021-02-05 21:20:50', NULL, NULL, '2020-11-18 06:20:05', '2021-02-05 21:20:50', NULL, NULL),
(9, 'Akaa', NULL, 'akaa', NULL, NULL, NULL, 8, 'publish', 17, 18, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:18:30', '2021-02-05 20:18:30', NULL, NULL),
(10, 'Alajärvi', NULL, 'alajarvi', NULL, NULL, NULL, 8, 'publish', 19, 20, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:22:50', '2021-02-05 20:22:50', NULL, NULL),
(11, 'Alavus', NULL, 'alavus', NULL, NULL, NULL, 6, 'publish', 21, 22, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:23:12', '2021-02-05 20:23:12', NULL, NULL),
(12, 'Espoo', NULL, 'espoo', NULL, NULL, NULL, 8, 'publish', 23, 24, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:23:26', '2021-02-05 20:23:26', NULL, NULL),
(13, 'Forssa', NULL, 'forssa', NULL, NULL, NULL, 8, 'publish', 25, 26, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:23:37', '2021-02-05 20:23:37', NULL, NULL),
(14, 'Haapajärvi', NULL, 'haapajarvi', NULL, NULL, NULL, 8, 'publish', 27, 28, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:23:50', '2021-02-05 20:23:50', NULL, NULL),
(15, 'Haapavesi', NULL, 'haapavesi', NULL, NULL, NULL, 8, 'publish', 29, 30, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:24:01', '2021-02-05 20:24:01', NULL, NULL),
(16, 'Hamina', NULL, 'hamina', NULL, NULL, NULL, 8, 'publish', 31, 32, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:24:14', '2021-02-05 20:24:14', NULL, NULL),
(17, 'Hanko', NULL, 'hanko', NULL, NULL, NULL, 8, 'publish', 33, 34, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:24:27', '2021-02-05 20:24:27', NULL, NULL),
(18, 'Harjavalta', NULL, 'harjavalta', NULL, NULL, NULL, 8, 'publish', 35, 36, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:24:38', '2021-02-05 20:24:38', NULL, NULL),
(19, 'Heinola', NULL, 'heinola', NULL, NULL, NULL, 8, 'publish', 37, 38, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:24:52', '2021-02-05 20:24:52', NULL, NULL),
(20, 'Huittinen', NULL, 'huittinen', NULL, NULL, NULL, 8, 'publish', 39, 40, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:25:10', '2021-02-05 20:25:10', NULL, NULL),
(21, 'Hyvinkää', NULL, 'hyvinkaa', NULL, NULL, NULL, 8, 'publish', 41, 42, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:25:21', '2021-02-05 20:25:21', NULL, NULL),
(22, 'Hämeenlinna', NULL, 'hameenlinna', NULL, NULL, NULL, 8, 'publish', 43, 44, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:25:32', '2021-02-05 20:25:32', NULL, NULL),
(23, 'Iisalmi', NULL, 'iisalmi', NULL, NULL, NULL, 8, 'publish', 45, 46, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:26:04', '2021-02-05 20:26:04', NULL, NULL),
(24, 'Ikaalinen', NULL, 'ikaalinen', NULL, NULL, NULL, 8, 'publish', 47, 48, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:26:16', '2021-02-05 20:26:16', NULL, NULL),
(25, 'Imatra', NULL, 'imatra', NULL, NULL, NULL, 8, 'publish', 49, 50, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:26:32', '2021-02-05 20:26:32', NULL, NULL),
(26, 'Joensuu', NULL, 'joensuu', NULL, NULL, NULL, 8, 'publish', 51, 52, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:26:44', '2021-02-05 20:26:44', NULL, NULL),
(27, 'Jyväskylä', NULL, 'jyvaskyla', NULL, NULL, NULL, 8, 'publish', 53, 54, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:26:56', '2021-02-05 20:26:56', NULL, NULL),
(28, 'Jämsä', NULL, 'jamsa', NULL, NULL, NULL, 8, 'publish', 55, 56, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:27:09', '2021-02-05 20:27:09', NULL, NULL),
(29, 'Järvenpää', NULL, 'jarvenpaa', NULL, NULL, NULL, 8, 'publish', 57, 58, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:27:20', '2021-02-05 20:27:20', NULL, NULL),
(30, 'Kaarina', NULL, 'kaarina', NULL, NULL, NULL, 8, 'publish', 59, 60, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:27:32', '2021-02-05 20:27:32', NULL, NULL),
(31, 'Kajaani', NULL, 'kajaani', NULL, NULL, NULL, 8, 'publish', 61, 62, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:27:43', '2021-02-05 20:27:43', NULL, NULL),
(32, 'Kalajoki', NULL, 'kalajoki', NULL, NULL, NULL, 8, 'publish', 63, 64, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:27:53', '2021-02-05 20:27:53', NULL, NULL),
(33, 'Kangasala', NULL, 'kangasala', NULL, NULL, NULL, 8, 'publish', 65, 66, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:28:04', '2021-02-05 20:28:04', NULL, NULL),
(34, 'Kankaanpää', NULL, 'kankaanpaa', NULL, NULL, NULL, 8, 'publish', 67, 68, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:28:17', '2021-02-05 20:28:17', NULL, NULL),
(35, 'Kannus', NULL, 'kannus', NULL, NULL, NULL, 8, 'publish', 69, 70, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:28:27', '2021-02-05 20:28:27', NULL, NULL),
(36, 'Karkkila', NULL, 'karkkila', NULL, NULL, NULL, 7, 'publish', 71, 72, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:28:39', '2021-02-05 20:28:39', NULL, NULL),
(37, 'Kaskinen', NULL, 'kaskinen', NULL, NULL, NULL, 7, 'publish', 73, 74, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:28:49', '2021-02-05 20:28:49', NULL, NULL),
(38, 'Kauhajoki', NULL, 'kauhajoki', NULL, NULL, NULL, 7, 'publish', 75, 76, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:29:00', '2021-02-05 20:29:00', NULL, NULL),
(39, 'Kauhava', NULL, 'kauhava', NULL, NULL, NULL, 7, 'publish', 77, 78, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:29:10', '2021-02-05 20:29:10', NULL, NULL),
(40, 'Kauniainen', NULL, 'kauniainen', NULL, NULL, NULL, 7, 'publish', 79, 80, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:29:21', '2021-02-05 20:29:21', NULL, NULL),
(41, 'Kemi', NULL, 'kemi', NULL, NULL, NULL, 7, 'publish', 81, 82, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:29:32', '2021-02-05 20:29:32', NULL, NULL),
(42, 'Kemijärvi', NULL, 'kemijarvi', NULL, NULL, NULL, 8, 'publish', 83, 84, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:29:43', '2021-02-05 20:29:43', NULL, NULL),
(43, 'Kerava', NULL, 'kerava', NULL, NULL, NULL, 8, 'publish', 85, 86, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:29:55', '2021-02-05 20:29:55', NULL, NULL),
(44, 'Keuruu', NULL, 'keuruu', NULL, NULL, NULL, 7, 'publish', 87, 88, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:30:06', '2021-02-05 20:30:06', NULL, NULL),
(45, 'Kitee', NULL, 'kitee', NULL, NULL, NULL, 7, 'publish', 89, 90, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:30:16', '2021-02-05 20:30:16', NULL, NULL),
(46, 'Kiuruvesi', NULL, 'kiuruvesi', NULL, NULL, NULL, 7, 'publish', 91, 92, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:30:27', '2021-02-05 20:30:27', NULL, NULL),
(47, 'Kokemäki', NULL, 'kokemaki', NULL, NULL, NULL, 7, 'publish', 93, 94, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:30:38', '2021-02-05 20:30:38', NULL, NULL),
(48, 'Kokkola', NULL, 'kokkola', NULL, NULL, NULL, 8, 'publish', 95, 96, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:30:49', '2021-02-05 20:30:49', NULL, NULL),
(49, 'Kotka', NULL, 'kotka', NULL, NULL, NULL, 8, 'publish', 97, 98, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:30:59', '2021-02-05 20:30:59', NULL, NULL),
(50, 'Kouvola', NULL, 'kouvola', NULL, NULL, NULL, 8, 'publish', 99, 100, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:31:10', '2021-02-05 20:31:10', NULL, NULL),
(51, 'Kristiinankaupunki', NULL, 'kristiinankaupunki', NULL, NULL, NULL, 8, 'publish', 101, 102, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:31:23', '2021-02-05 20:31:23', NULL, NULL),
(52, 'Kuhmo', NULL, 'kuhmo', NULL, NULL, NULL, 8, 'publish', 103, 104, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:31:36', '2021-02-05 20:31:36', NULL, NULL),
(53, 'Kuopio', NULL, 'kuopio', NULL, NULL, NULL, 8, 'publish', 105, 106, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:31:48', '2021-02-05 20:31:48', NULL, NULL),
(54, 'Kurikka', NULL, 'kurikka', NULL, NULL, NULL, 8, 'publish', 107, 108, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:32:01', '2021-02-05 20:32:01', NULL, NULL),
(55, 'Kuusamo', NULL, 'kuusamo', NULL, NULL, NULL, 7, 'publish', 109, 110, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:32:15', '2021-02-05 20:32:15', NULL, NULL),
(56, 'Lahti', NULL, 'lahti', NULL, NULL, NULL, 8, 'publish', 111, 112, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:32:25', '2021-02-05 20:32:25', NULL, NULL),
(57, 'Laitila', NULL, 'laitila', NULL, NULL, NULL, 7, 'publish', 113, 114, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:32:36', '2021-02-05 20:32:36', NULL, NULL),
(58, 'Lappeenranta', NULL, 'lappeenranta', NULL, NULL, NULL, 8, 'publish', 115, 116, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:32:50', '2021-02-05 20:32:50', NULL, NULL),
(59, 'Lapua', NULL, 'lapua', NULL, NULL, NULL, 8, 'publish', 117, 118, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:33:04', '2021-02-05 20:33:04', NULL, NULL),
(60, 'Lieksa', NULL, 'lieksa', NULL, NULL, NULL, 8, 'publish', 119, 120, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:33:15', '2021-02-05 20:33:15', NULL, NULL),
(61, 'Lohja', NULL, 'lohja', NULL, NULL, NULL, 8, 'publish', 121, 122, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:36:50', '2021-02-05 20:36:50', NULL, NULL),
(62, 'Loimaa', NULL, 'loimaa', NULL, NULL, NULL, 8, 'publish', 123, 124, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:37:07', '2021-02-05 20:37:07', NULL, NULL),
(63, 'Loviisa', NULL, 'loviisa', NULL, NULL, NULL, 6, 'publish', 125, 126, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:37:23', '2021-02-05 20:37:23', NULL, NULL),
(64, 'Maarianhamina', NULL, 'maarianhamina', NULL, NULL, NULL, 8, 'publish', 127, 128, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:37:41', '2021-02-05 20:37:41', NULL, NULL),
(65, 'Mikkeli', NULL, 'mikkeli', NULL, NULL, NULL, 7, 'publish', 129, 130, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:37:51', '2021-02-05 20:37:51', NULL, NULL),
(66, 'Mänttä-Vilppula', NULL, 'mantta-vilppula', NULL, NULL, NULL, 8, 'publish', 131, 132, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:38:04', '2021-02-05 20:38:04', NULL, NULL),
(67, 'Naantali', NULL, 'naantali', NULL, NULL, NULL, 7, 'publish', 133, 134, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:38:14', '2021-02-05 20:38:14', NULL, NULL),
(68, 'Nivala', NULL, 'nivala', NULL, NULL, NULL, 8, 'publish', 135, 136, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:38:26', '2021-02-05 20:38:26', NULL, NULL),
(69, 'Nokia', NULL, 'nokia', NULL, NULL, NULL, 8, 'publish', 137, 138, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:38:39', '2021-02-05 20:38:39', NULL, NULL),
(70, 'Nurmes', NULL, 'nurmes', NULL, NULL, NULL, 8, 'publish', 139, 140, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:38:50', '2021-02-05 20:38:50', NULL, NULL),
(71, 'Närpiö', NULL, 'narpio', NULL, NULL, NULL, 8, 'publish', 141, 142, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:39:03', '2021-02-05 20:39:03', NULL, NULL),
(72, 'Orimattila', NULL, 'orimattila', NULL, NULL, NULL, 8, 'publish', 143, 144, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:40:40', '2021-02-05 20:40:40', NULL, NULL),
(73, 'Orivesi', NULL, 'orivesi', NULL, NULL, NULL, 8, 'publish', 145, 146, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:40:51', '2021-02-05 20:40:51', NULL, NULL),
(74, 'Oulainen', NULL, 'oulainen', NULL, NULL, NULL, 6, 'publish', 147, 148, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:41:02', '2021-02-05 20:41:02', NULL, NULL),
(75, 'Oulu', NULL, 'oulu', NULL, NULL, NULL, 8, 'publish', 149, 150, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:41:16', '2021-02-05 20:41:16', NULL, NULL),
(76, 'Outokumpu', NULL, 'outokumpu', NULL, NULL, NULL, 8, 'publish', 151, 152, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:41:30', '2021-02-05 20:41:30', NULL, NULL),
(77, 'Paimio', NULL, 'paimio', NULL, NULL, NULL, 8, 'publish', 153, 154, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:41:41', '2021-02-05 20:41:41', NULL, NULL),
(78, 'Parainen', NULL, 'parainen', NULL, NULL, NULL, 8, 'publish', 155, 156, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:41:52', '2021-02-05 20:41:52', NULL, NULL),
(79, 'Parkano', NULL, 'parkano', NULL, NULL, NULL, 8, 'publish', 157, 158, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:42:02', '2021-02-05 20:42:02', NULL, NULL),
(80, 'Pieksämäki', NULL, 'pieksamaki', NULL, NULL, NULL, 8, 'publish', 159, 160, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:42:15', '2021-02-05 20:42:15', NULL, NULL),
(81, 'Pietarsaari', NULL, 'pietarsaari', NULL, NULL, NULL, 8, 'publish', 161, 162, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:42:29', '2021-02-05 20:42:29', NULL, NULL),
(82, 'Pori', NULL, 'pori', NULL, NULL, NULL, 8, 'publish', 163, 164, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:42:39', '2021-02-05 20:42:39', NULL, NULL),
(83, 'Porvoo', NULL, 'porvoo', NULL, NULL, NULL, 6, 'publish', 165, 166, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:42:51', '2021-02-05 20:42:51', NULL, NULL),
(84, 'Pudasjärvi', NULL, 'pudasjarvi', NULL, NULL, NULL, 8, 'publish', 167, 168, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:43:05', '2021-02-05 20:43:05', NULL, NULL),
(85, 'Pyhäjärvi', NULL, 'pyhajarvi', NULL, NULL, NULL, 8, 'publish', 169, 170, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:43:17', '2021-02-05 20:43:17', NULL, NULL),
(86, 'Raahe', NULL, 'raahe', NULL, NULL, NULL, 8, 'publish', 171, 172, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:43:28', '2021-02-05 20:43:28', NULL, NULL),
(87, 'Raasepori', NULL, 'raasepori', NULL, NULL, NULL, 8, 'publish', 173, 174, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:43:38', '2021-02-05 20:43:38', NULL, NULL),
(88, 'Raisio', NULL, 'raisio', NULL, NULL, NULL, 8, 'publish', 175, 176, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:43:50', '2021-02-05 20:43:50', NULL, NULL),
(89, 'Rauma', NULL, 'rauma', NULL, NULL, NULL, 8, 'publish', 177, 178, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:44:01', '2021-02-05 20:44:01', NULL, NULL),
(90, 'Riihimäki', NULL, 'riihimaki', NULL, NULL, NULL, 8, 'publish', 179, 180, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:44:14', '2021-02-05 20:44:14', NULL, NULL),
(91, 'Rovaniemi', NULL, 'rovaniemi', NULL, NULL, NULL, 8, 'publish', 181, 182, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:44:27', '2021-02-05 20:44:27', NULL, NULL),
(92, 'Saarijärvi', NULL, 'saarijarvi', NULL, NULL, NULL, 8, 'publish', 183, 184, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:44:39', '2021-02-05 20:44:39', NULL, NULL),
(93, 'Salo', NULL, 'salo', NULL, NULL, NULL, 8, 'publish', 185, 186, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:44:50', '2021-02-05 20:44:50', NULL, NULL),
(94, 'Sastamala', NULL, 'sastamala', NULL, NULL, NULL, 8, 'publish', 187, 188, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:45:02', '2021-02-05 20:45:02', NULL, NULL),
(95, 'Savonlinna', NULL, 'savonlinna', NULL, NULL, NULL, 8, 'publish', 189, 190, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:45:13', '2021-02-05 20:45:13', NULL, NULL),
(96, 'Seinäjoki', NULL, 'seinajoki', NULL, NULL, NULL, 8, 'publish', 191, 192, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:46:26', '2021-02-05 20:46:26', NULL, NULL),
(97, 'Somero', NULL, 'somero', NULL, NULL, NULL, 8, 'publish', 193, 194, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:46:54', '2021-02-05 20:46:54', NULL, NULL),
(98, 'Suonenjoki', NULL, 'suonenjoki', NULL, NULL, NULL, 8, 'publish', 195, 196, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:47:12', '2021-02-05 20:47:12', NULL, NULL),
(99, 'Tampere', NULL, 'tampere', NULL, NULL, NULL, 8, 'publish', 197, 198, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:47:39', '2021-02-05 20:47:39', NULL, NULL),
(100, 'Tornio', NULL, 'tornio', NULL, NULL, NULL, 8, 'publish', 199, 200, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:47:53', '2021-02-05 20:47:53', NULL, NULL),
(101, 'Turku', NULL, 'turku', NULL, NULL, NULL, 6, 'publish', 201, 202, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:48:10', '2021-02-05 20:48:10', NULL, NULL),
(102, 'Ulvila', NULL, 'ulvila', NULL, NULL, NULL, 8, 'publish', 203, 204, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:48:27', '2021-02-05 20:48:27', NULL, NULL),
(103, 'Uusikaarlepyy', NULL, 'uusikaarlepyy', NULL, NULL, NULL, 8, 'publish', 205, 206, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:48:43', '2021-02-05 20:48:43', NULL, NULL),
(104, 'Uusikaupunki', NULL, 'uusikaupunki', NULL, NULL, NULL, 8, 'publish', 207, 208, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:49:29', '2021-02-05 20:49:29', NULL, NULL),
(105, 'Vaasa', NULL, 'vaasa', NULL, NULL, NULL, 8, 'publish', 209, 210, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:49:40', '2021-02-05 20:49:40', NULL, NULL),
(106, 'Valkeakoski', NULL, 'valkeakoski', NULL, NULL, NULL, 8, 'publish', 211, 212, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:50:01', '2021-02-05 20:50:01', NULL, NULL),
(107, 'Vantaa', NULL, 'vantaa', NULL, NULL, NULL, 8, 'publish', 213, 214, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:50:14', '2021-02-05 20:50:14', NULL, NULL),
(108, 'Varkaus', NULL, 'varkaus', NULL, NULL, NULL, 8, 'publish', 215, 216, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:50:26', '2021-02-05 20:50:26', NULL, NULL),
(109, 'Viitasaari', NULL, 'viitasaari', NULL, NULL, NULL, 8, 'publish', 217, 218, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:50:36', '2021-02-05 20:50:36', NULL, NULL),
(110, 'Virrat', NULL, 'virrat', NULL, NULL, NULL, 8, 'publish', 219, 220, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:50:49', '2021-02-05 20:50:49', NULL, NULL),
(111, 'Ylivieska', NULL, 'ylivieska', NULL, NULL, NULL, 8, 'publish', 221, 222, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:50:59', '2021-02-05 20:50:59', NULL, NULL),
(112, 'Ylöjärvi', NULL, 'ylojarvi', NULL, NULL, NULL, 8, 'publish', 223, 224, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:51:10', '2021-02-05 20:51:10', NULL, NULL),
(113, 'Ähtäri', NULL, 'ahtari', NULL, NULL, NULL, 8, 'publish', 225, 226, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:51:25', '2021-02-05 20:51:25', NULL, NULL),
(114, 'Äänekoski', NULL, 'aanekoski', NULL, NULL, NULL, 8, 'publish', 227, 228, NULL, 1, NULL, NULL, NULL, NULL, '2021-02-05 20:51:37', '2021-02-05 20:51:37', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_location_translations`
--

CREATE TABLE `bravo_location_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `origin_id` bigint DEFAULT NULL,
  `locale` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `trip_ideas` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_payouts`
--

CREATE TABLE `bravo_payouts` (
  `id` bigint UNSIGNED NOT NULL,
  `vendor_id` bigint DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payout_method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `note_to_admin` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `note_to_vendor` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_process_by` int DEFAULT NULL,
  `pay_date` timestamp NULL DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_review`
--

CREATE TABLE `bravo_review` (
  `id` bigint UNSIGNED NOT NULL,
  `object_id` int DEFAULT NULL,
  `object_model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rate_number` int DEFAULT NULL,
  `author_ip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `create_user` bigint DEFAULT NULL,
  `update_user` bigint DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `lang` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vendor_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_review`
--

INSERT INTO `bravo_review` (`id`, `object_id`, `object_model`, `title`, `content`, `rate_number`, `author_ip`, `status`, `publish_date`, `create_user`, `update_user`, `deleted_at`, `lang`, `created_at`, `updated_at`, `vendor_id`) VALUES
(1, 1, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:05', 10, NULL, NULL, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05', 1),
(2, 2, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:05', 16, NULL, NULL, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05', 1),
(3, 2, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:05', 11, NULL, NULL, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05', 1),
(4, 2, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:05', 13, NULL, NULL, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05', 1),
(5, 2, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:05', 11, NULL, NULL, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05', 1),
(6, 3, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:05', 14, NULL, NULL, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05', 4),
(7, 3, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:05', 7, NULL, NULL, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05', 4),
(8, 3, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:05', 15, NULL, NULL, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05', 4),
(9, 4, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:05', 10, NULL, NULL, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05', 1),
(10, 4, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:05', 11, NULL, NULL, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05', 1),
(11, 4, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:05', 8, NULL, NULL, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05', 1),
(12, 4, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:05', 8, NULL, NULL, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05', 1),
(13, 5, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 13, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', 5),
(14, 5, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 8, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', 5),
(15, 5, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 13, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', 5),
(16, 6, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 10, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', 4),
(17, 6, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 9, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', 4),
(18, 6, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 15, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', 4),
(19, 6, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 12, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', 4),
(20, 6, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 9, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', 4),
(21, 7, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 14, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', 4),
(22, 7, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 16, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', 4),
(23, 7, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 8, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', 4),
(24, 8, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 14, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', 6),
(25, 9, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 7, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', 6),
(26, 9, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 10, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', 6),
(27, 9, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 9, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', 6),
(28, 10, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 11, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', 4),
(29, 10, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 9, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', 4),
(30, 10, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 13, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', 4),
(31, 11, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 12, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', 5),
(32, 11, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 16, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', 5),
(33, 11, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 9, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', 5),
(34, 12, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 13, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', 1),
(35, 12, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 15, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', 1),
(36, 12, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 11, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', 1),
(37, 13, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 12, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', 6),
(38, 13, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 15, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', 6),
(39, 14, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 14, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', 1),
(40, 14, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 13, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', 1),
(41, 15, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 13, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', 5),
(42, 15, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 14, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', 5),
(43, 15, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 12, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', 5),
(44, 16, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 14, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', 1),
(45, 16, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 13, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', 1),
(46, 16, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 14, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', 1),
(47, 1, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 13, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', 1),
(48, 1, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 12, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', 1),
(49, 1, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 14, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', 1),
(50, 2, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:06', 12, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', 1),
(51, 2, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 14, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 1),
(52, 2, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 14, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 1),
(53, 2, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 15, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 1),
(54, 3, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 12, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 4),
(55, 3, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 8, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 4),
(56, 3, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 8, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 4),
(57, 4, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 13, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 5),
(58, 4, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 14, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 5),
(59, 4, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 13, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 5),
(60, 5, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 7, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 4),
(61, 5, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 13, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 4),
(62, 5, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 8, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 4),
(63, 5, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 15, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 4),
(64, 6, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 7, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 4),
(65, 6, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 7, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 4),
(66, 6, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 7, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 4),
(67, 7, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 8, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 6),
(68, 7, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 11, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 6),
(69, 7, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 16, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 6),
(70, 8, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 13, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 5),
(71, 8, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 12, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 5),
(72, 8, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 9, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 5),
(73, 9, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 11, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 4),
(74, 9, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 9, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 4),
(75, 9, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 14, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 4),
(76, 10, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 12, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 1),
(77, 10, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 8, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 1),
(78, 10, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 10, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 1),
(79, 11, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 7, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 5),
(80, 11, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 16, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 5),
(81, 11, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 15, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 5),
(82, 1, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 14, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 1),
(83, 1, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 15, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 1),
(84, 1, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 10, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 1),
(85, 2, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 13, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 1),
(86, 2, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 11, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 1),
(87, 2, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 14, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 1),
(88, 2, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 7, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 1),
(89, 2, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 9, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 1),
(90, 3, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 10, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 1),
(91, 3, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 16, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 1),
(92, 4, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 12, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 1),
(93, 4, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 9, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 1),
(94, 5, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 12, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 4),
(95, 5, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 16, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 4),
(96, 5, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 11, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 4),
(97, 5, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 7, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 4),
(98, 6, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 15, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 4),
(99, 6, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 9, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 4),
(100, 6, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 12, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 4),
(101, 7, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 9, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 6),
(102, 7, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 8, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 6),
(103, 7, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:07', 9, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', 6),
(104, 7, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:08', 9, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', 6),
(105, 8, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:08', 16, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', 4),
(106, 8, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:08', 11, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', 4),
(107, 8, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:08', 16, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', 4),
(108, 8, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:08', 7, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', 4),
(109, 9, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:08', 13, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', 1),
(110, 9, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:08', 14, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', 1),
(111, 9, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:08', 12, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', 1),
(112, 9, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:08', 16, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', 1),
(113, 9, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:08', 12, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', 1),
(114, 10, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:08', 7, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', 6),
(115, 10, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:08', 9, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', 6),
(116, 10, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:08', 7, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', 6),
(117, 11, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:08', 10, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', 6),
(118, 1, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 14, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 1),
(119, 1, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 8, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 1),
(120, 1, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 16, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 1),
(121, 2, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 13, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 1);
INSERT INTO `bravo_review` (`id`, `object_id`, `object_model`, `title`, `content`, `rate_number`, `author_ip`, `status`, `publish_date`, `create_user`, `update_user`, `deleted_at`, `lang`, `created_at`, `updated_at`, `vendor_id`) VALUES
(122, 2, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 12, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 1),
(123, 3, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 16, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 1),
(124, 3, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 9, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 1),
(125, 3, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 15, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 1),
(126, 3, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 9, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 1),
(127, 4, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 11, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 1),
(128, 4, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 10, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 1),
(129, 4, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 14, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 1),
(130, 4, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 11, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 1),
(131, 4, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 15, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 1),
(132, 5, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 10, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 1),
(133, 5, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 16, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 1),
(134, 5, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 15, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 1),
(135, 6, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 10, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 4),
(136, 6, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 14, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 4),
(137, 7, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 15, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 6),
(138, 7, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 9, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 6),
(139, 8, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 8, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 5),
(140, 8, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 16, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 5),
(141, 8, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 10, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 5),
(142, 8, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 10, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 5),
(143, 9, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 9, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 4),
(144, 9, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 15, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 4),
(145, 9, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 16, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 4),
(146, 9, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 16, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 4),
(147, 10, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 12, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 6),
(148, 10, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 15, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 6),
(149, 11, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 10, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 5),
(150, 11, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 12, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 5),
(151, 11, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 14, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 5),
(152, 11, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 14, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 5),
(153, 12, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 8, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 6),
(154, 12, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 13, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 6),
(155, 12, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 11, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 6),
(156, 13, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 16, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 6),
(157, 13, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 8, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 6),
(158, 13, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:09', 11, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', 6),
(159, 1, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:10', 8, NULL, NULL, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10', 1),
(160, 1, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:10', 13, NULL, NULL, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10', 1),
(161, 1, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:10', 9, NULL, NULL, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10', 1),
(162, 1, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:10', 15, NULL, NULL, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10', 1),
(163, 2, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:10', 15, NULL, NULL, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10', 1),
(164, 2, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:10', 13, NULL, NULL, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10', 1),
(165, 2, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:10', 16, NULL, NULL, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10', 1),
(166, 3, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:10', 8, NULL, NULL, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10', 5),
(167, 3, 'event', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:10', 10, NULL, NULL, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10', 5),
(168, 3, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:10', 7, NULL, NULL, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10', 5),
(169, 3, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:10', 8, NULL, NULL, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10', 5),
(170, 4, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:10', 10, NULL, NULL, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10', 1),
(171, 4, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:10', 13, NULL, NULL, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10', 1),
(172, 4, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:10', 8, NULL, NULL, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10', 1),
(173, 5, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:10', 8, NULL, NULL, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10', 6),
(174, 5, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:10', 13, NULL, NULL, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10', 6),
(175, 5, 'event', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:10', 14, NULL, NULL, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10', 6),
(176, 5, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2020-11-18 09:20:10', 14, NULL, NULL, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10', 6),
(177, 5, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2020-11-18 09:20:10', 7, NULL, NULL, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10', 6),
(178, 6, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'trash', '2020-11-18 09:20:10', 9, 1, '2020-12-21 15:22:52', NULL, '2020-11-18 06:20:10', '2020-12-21 15:22:52', 6),
(179, 6, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'trash', '2020-11-18 09:20:10', 11, 1, '2020-12-21 15:22:52', NULL, '2020-11-18 06:20:10', '2020-12-21 15:22:52', 6),
(180, 6, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'trash', '2020-11-18 09:20:10', 8, 1, '2020-12-21 15:22:52', NULL, '2020-11-18 06:20:10', '2020-12-21 15:22:52', 6),
(181, 6, 'event', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'trash', '2020-11-18 09:20:10', 14, 1, '2020-12-21 15:22:52', NULL, '2020-11-18 06:20:10', '2020-12-21 15:22:52', 6),
(182, 7, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'trash', '2020-11-18 09:20:10', 12, 1, '2020-12-21 15:22:52', NULL, '2020-11-18 06:20:10', '2020-12-21 15:22:52', 5),
(183, 7, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'trash', '2020-11-18 09:20:10', 10, 1, '2020-12-21 15:22:52', NULL, '2020-11-18 06:20:10', '2020-12-21 15:22:52', 5),
(184, 8, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'trash', '2020-11-18 09:20:10', 13, 1, '2020-12-21 15:22:52', NULL, '2020-11-18 06:20:10', '2020-12-21 15:22:52', 5),
(185, 9, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'trash', '2020-11-18 09:20:10', 15, 1, '2020-12-21 15:22:52', NULL, '2020-11-18 06:20:10', '2020-12-21 15:22:52', 5),
(186, 9, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'trash', '2020-11-18 09:20:10', 12, 1, '2020-12-21 15:22:52', NULL, '2020-11-18 06:20:10', '2020-12-21 15:22:52', 5),
(187, 9, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'trash', '2020-11-18 09:20:10', 8, 1, '2020-12-21 15:22:52', NULL, '2020-11-18 06:20:10', '2020-12-21 15:22:52', 5),
(188, 9, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'trash', '2020-11-18 09:20:10', 16, 1, '2020-12-21 15:22:23', NULL, '2020-11-18 06:20:10', '2020-12-21 15:22:23', 5),
(189, 10, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'trash', '2020-11-18 09:20:10', 16, 1, '2020-12-21 15:22:23', NULL, '2020-11-18 06:20:10', '2020-12-21 15:22:23', 6),
(190, 10, 'event', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'trash', '2020-11-18 09:20:10', 7, 1, '2020-12-21 15:22:23', NULL, '2020-11-18 06:20:10', '2020-12-21 15:22:23', 6),
(191, 11, 'event', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'trash', '2020-11-18 09:20:10', 8, 1, '2020-12-21 15:22:23', NULL, '2020-11-18 06:20:10', '2020-12-21 15:22:23', 4),
(192, 11, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'trash', '2020-11-18 09:20:10', 7, 1, '2020-12-21 15:22:23', NULL, '2020-11-18 06:20:10', '2020-12-21 15:22:23', 4),
(193, 11, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'trash', '2020-11-18 09:20:10', 10, 1, '2020-12-21 15:22:23', NULL, '2020-11-18 06:20:10', '2020-12-21 15:22:23', 4),
(194, 11, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'trash', '2020-11-18 09:20:10', 11, 1, '2020-12-21 15:22:23', NULL, '2020-11-18 06:20:10', '2020-12-21 15:22:23', 4),
(195, 12, 'event', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'trash', '2020-11-18 09:20:10', 15, 1, '2020-12-21 15:22:23', NULL, '2020-11-18 06:20:10', '2020-12-21 15:22:23', 1),
(196, 12, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'trash', '2020-11-18 09:20:10', 8, 1, '2020-12-21 15:22:23', NULL, '2020-11-18 06:20:10', '2020-12-21 15:22:23', 1),
(197, 12, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'trash', '2020-11-18 09:20:10', 10, 1, '2020-12-21 15:22:23', NULL, '2020-11-18 06:20:10', '2020-12-21 15:22:23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_review_meta`
--

CREATE TABLE `bravo_review_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `review_id` int DEFAULT NULL,
  `object_id` int DEFAULT NULL,
  `object_model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_review_meta`
--

INSERT INTO `bravo_review_meta` (`id`, `review_id`, `object_id`, `object_model`, `name`, `val`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'tour', 'Service', '4', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(2, 1, 1, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(3, 1, 1, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(4, 1, 1, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(5, 1, 1, 'tour', 'Safety', '4', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(6, 2, 2, 'tour', 'Service', '5', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(7, 2, 2, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(8, 2, 2, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(9, 2, 2, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(10, 2, 2, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(11, 3, 2, 'tour', 'Service', '4', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(12, 3, 2, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(13, 3, 2, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(14, 3, 2, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(15, 3, 2, 'tour', 'Safety', '4', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(16, 4, 2, 'tour', 'Service', '4', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(17, 4, 2, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(18, 4, 2, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(19, 4, 2, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(20, 4, 2, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(21, 5, 2, 'tour', 'Service', '5', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(22, 5, 2, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(23, 5, 2, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(24, 5, 2, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(25, 5, 2, 'tour', 'Safety', '4', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(26, 6, 3, 'tour', 'Service', '4', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(27, 6, 3, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(28, 6, 3, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(29, 6, 3, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(30, 6, 3, 'tour', 'Safety', '4', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(31, 7, 3, 'tour', 'Service', '5', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(32, 7, 3, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(33, 7, 3, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(34, 7, 3, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(35, 7, 3, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(36, 8, 3, 'tour', 'Service', '5', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(37, 8, 3, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(38, 8, 3, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(39, 8, 3, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(40, 8, 3, 'tour', 'Safety', '4', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(41, 9, 4, 'tour', 'Service', '4', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(42, 9, 4, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(43, 9, 4, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(44, 9, 4, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(45, 9, 4, 'tour', 'Safety', '4', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(46, 10, 4, 'tour', 'Service', '4', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(47, 10, 4, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(48, 10, 4, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(49, 10, 4, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(50, 10, 4, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(51, 11, 4, 'tour', 'Service', '4', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(52, 11, 4, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(53, 11, 4, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(54, 11, 4, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(55, 11, 4, 'tour', 'Safety', '4', 1, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(56, 12, 4, 'tour', 'Service', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(57, 12, 4, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(58, 12, 4, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(59, 12, 4, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(60, 12, 4, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(61, 13, 5, 'tour', 'Service', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(62, 13, 5, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(63, 13, 5, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(64, 13, 5, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(65, 13, 5, 'tour', 'Safety', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(66, 14, 5, 'tour', 'Service', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(67, 14, 5, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(68, 14, 5, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(69, 14, 5, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(70, 14, 5, 'tour', 'Safety', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(71, 15, 5, 'tour', 'Service', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(72, 15, 5, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(73, 15, 5, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(74, 15, 5, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(75, 15, 5, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(76, 16, 6, 'tour', 'Service', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(77, 16, 6, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(78, 16, 6, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(79, 16, 6, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(80, 16, 6, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(81, 17, 6, 'tour', 'Service', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(82, 17, 6, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(83, 17, 6, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(84, 17, 6, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(85, 17, 6, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(86, 18, 6, 'tour', 'Service', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(87, 18, 6, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(88, 18, 6, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(89, 18, 6, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(90, 18, 6, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(91, 19, 6, 'tour', 'Service', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(92, 19, 6, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(93, 19, 6, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(94, 19, 6, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(95, 19, 6, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(96, 20, 6, 'tour', 'Service', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(97, 20, 6, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(98, 20, 6, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(99, 20, 6, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(100, 20, 6, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(101, 21, 7, 'tour', 'Service', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(102, 21, 7, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(103, 21, 7, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(104, 21, 7, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(105, 21, 7, 'tour', 'Safety', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(106, 22, 7, 'tour', 'Service', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(107, 22, 7, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(108, 22, 7, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(109, 22, 7, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(110, 22, 7, 'tour', 'Safety', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(111, 23, 7, 'tour', 'Service', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(112, 23, 7, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(113, 23, 7, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(114, 23, 7, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(115, 23, 7, 'tour', 'Safety', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(116, 24, 8, 'tour', 'Service', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(117, 24, 8, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(118, 24, 8, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(119, 24, 8, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(120, 24, 8, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(121, 25, 9, 'tour', 'Service', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(122, 25, 9, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(123, 25, 9, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(124, 25, 9, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(125, 25, 9, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(126, 26, 9, 'tour', 'Service', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(127, 26, 9, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(128, 26, 9, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(129, 26, 9, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(130, 26, 9, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(131, 27, 9, 'tour', 'Service', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(132, 27, 9, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(133, 27, 9, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(134, 27, 9, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(135, 27, 9, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(136, 28, 10, 'tour', 'Service', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(137, 28, 10, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(138, 28, 10, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(139, 28, 10, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(140, 28, 10, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(141, 29, 10, 'tour', 'Service', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(142, 29, 10, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(143, 29, 10, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(144, 29, 10, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(145, 29, 10, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(146, 30, 10, 'tour', 'Service', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(147, 30, 10, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(148, 30, 10, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(149, 30, 10, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(150, 30, 10, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(151, 31, 11, 'tour', 'Service', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(152, 31, 11, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(153, 31, 11, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(154, 31, 11, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(155, 31, 11, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(156, 32, 11, 'tour', 'Service', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(157, 32, 11, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(158, 32, 11, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(159, 32, 11, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(160, 32, 11, 'tour', 'Safety', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(161, 33, 11, 'tour', 'Service', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(162, 33, 11, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(163, 33, 11, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(164, 33, 11, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(165, 33, 11, 'tour', 'Safety', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(166, 34, 12, 'tour', 'Service', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(167, 34, 12, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(168, 34, 12, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(169, 34, 12, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(170, 34, 12, 'tour', 'Safety', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(171, 35, 12, 'tour', 'Service', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(172, 35, 12, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(173, 35, 12, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(174, 35, 12, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(175, 35, 12, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(176, 36, 12, 'tour', 'Service', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(177, 36, 12, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(178, 36, 12, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(179, 36, 12, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(180, 36, 12, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(181, 37, 13, 'tour', 'Service', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(182, 37, 13, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(183, 37, 13, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(184, 37, 13, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(185, 37, 13, 'tour', 'Safety', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(186, 38, 13, 'tour', 'Service', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(187, 38, 13, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(188, 38, 13, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(189, 38, 13, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(190, 38, 13, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(191, 39, 14, 'tour', 'Service', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(192, 39, 14, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(193, 39, 14, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(194, 39, 14, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(195, 39, 14, 'tour', 'Safety', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(196, 40, 14, 'tour', 'Service', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(197, 40, 14, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(198, 40, 14, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(199, 40, 14, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(200, 40, 14, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(201, 41, 15, 'tour', 'Service', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(202, 41, 15, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(203, 41, 15, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(204, 41, 15, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(205, 41, 15, 'tour', 'Safety', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(206, 42, 15, 'tour', 'Service', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(207, 42, 15, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(208, 42, 15, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(209, 42, 15, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(210, 42, 15, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(211, 43, 15, 'tour', 'Service', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(212, 43, 15, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(213, 43, 15, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(214, 43, 15, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(215, 43, 15, 'tour', 'Safety', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(216, 44, 16, 'tour', 'Service', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(217, 44, 16, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(218, 44, 16, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(219, 44, 16, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(220, 44, 16, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(221, 45, 16, 'tour', 'Service', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(222, 45, 16, 'tour', 'Organization', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(223, 45, 16, 'tour', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(224, 45, 16, 'tour', 'Area Expert', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(225, 45, 16, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(226, 46, 16, 'tour', 'Service', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(227, 46, 16, 'tour', 'Organization', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(228, 46, 16, 'tour', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(229, 46, 16, 'tour', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(230, 46, 16, 'tour', 'Safety', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(231, 47, 1, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(232, 47, 1, 'space', 'Location', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(233, 47, 1, 'space', 'Service', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(234, 47, 1, 'space', 'Clearness', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(235, 47, 1, 'space', 'Rooms', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(236, 48, 1, 'space', 'Sleep', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(237, 48, 1, 'space', 'Location', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(238, 48, 1, 'space', 'Service', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(239, 48, 1, 'space', 'Clearness', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(240, 48, 1, 'space', 'Rooms', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(241, 49, 1, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(242, 49, 1, 'space', 'Location', '5', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(243, 49, 1, 'space', 'Service', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(244, 49, 1, 'space', 'Clearness', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(245, 49, 1, 'space', 'Rooms', '4', 1, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06'),
(246, 50, 2, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(247, 50, 2, 'space', 'Location', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(248, 50, 2, 'space', 'Service', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(249, 50, 2, 'space', 'Clearness', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(250, 50, 2, 'space', 'Rooms', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(251, 51, 2, 'space', 'Sleep', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(252, 51, 2, 'space', 'Location', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(253, 51, 2, 'space', 'Service', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(254, 51, 2, 'space', 'Clearness', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(255, 51, 2, 'space', 'Rooms', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(256, 52, 2, 'space', 'Sleep', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(257, 52, 2, 'space', 'Location', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(258, 52, 2, 'space', 'Service', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(259, 52, 2, 'space', 'Clearness', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(260, 52, 2, 'space', 'Rooms', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(261, 53, 2, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(262, 53, 2, 'space', 'Location', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(263, 53, 2, 'space', 'Service', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(264, 53, 2, 'space', 'Clearness', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(265, 53, 2, 'space', 'Rooms', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(266, 54, 3, 'space', 'Sleep', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(267, 54, 3, 'space', 'Location', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(268, 54, 3, 'space', 'Service', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(269, 54, 3, 'space', 'Clearness', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(270, 54, 3, 'space', 'Rooms', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(271, 55, 3, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(272, 55, 3, 'space', 'Location', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(273, 55, 3, 'space', 'Service', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(274, 55, 3, 'space', 'Clearness', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(275, 55, 3, 'space', 'Rooms', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(276, 56, 3, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(277, 56, 3, 'space', 'Location', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(278, 56, 3, 'space', 'Service', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(279, 56, 3, 'space', 'Clearness', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(280, 56, 3, 'space', 'Rooms', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(281, 57, 4, 'space', 'Sleep', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(282, 57, 4, 'space', 'Location', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(283, 57, 4, 'space', 'Service', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(284, 57, 4, 'space', 'Clearness', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(285, 57, 4, 'space', 'Rooms', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(286, 58, 4, 'space', 'Sleep', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(287, 58, 4, 'space', 'Location', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(288, 58, 4, 'space', 'Service', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(289, 58, 4, 'space', 'Clearness', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(290, 58, 4, 'space', 'Rooms', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(291, 59, 4, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(292, 59, 4, 'space', 'Location', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(293, 59, 4, 'space', 'Service', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(294, 59, 4, 'space', 'Clearness', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(295, 59, 4, 'space', 'Rooms', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(296, 60, 5, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(297, 60, 5, 'space', 'Location', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(298, 60, 5, 'space', 'Service', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(299, 60, 5, 'space', 'Clearness', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(300, 60, 5, 'space', 'Rooms', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(301, 61, 5, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(302, 61, 5, 'space', 'Location', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(303, 61, 5, 'space', 'Service', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(304, 61, 5, 'space', 'Clearness', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(305, 61, 5, 'space', 'Rooms', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(306, 62, 5, 'space', 'Sleep', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(307, 62, 5, 'space', 'Location', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(308, 62, 5, 'space', 'Service', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(309, 62, 5, 'space', 'Clearness', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(310, 62, 5, 'space', 'Rooms', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(311, 63, 5, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(312, 63, 5, 'space', 'Location', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(313, 63, 5, 'space', 'Service', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(314, 63, 5, 'space', 'Clearness', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(315, 63, 5, 'space', 'Rooms', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(316, 64, 6, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(317, 64, 6, 'space', 'Location', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(318, 64, 6, 'space', 'Service', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(319, 64, 6, 'space', 'Clearness', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(320, 64, 6, 'space', 'Rooms', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(321, 65, 6, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(322, 65, 6, 'space', 'Location', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(323, 65, 6, 'space', 'Service', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(324, 65, 6, 'space', 'Clearness', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(325, 65, 6, 'space', 'Rooms', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(326, 66, 6, 'space', 'Sleep', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(327, 66, 6, 'space', 'Location', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(328, 66, 6, 'space', 'Service', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(329, 66, 6, 'space', 'Clearness', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(330, 66, 6, 'space', 'Rooms', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(331, 67, 7, 'space', 'Sleep', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(332, 67, 7, 'space', 'Location', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(333, 67, 7, 'space', 'Service', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(334, 67, 7, 'space', 'Clearness', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(335, 67, 7, 'space', 'Rooms', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(336, 68, 7, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(337, 68, 7, 'space', 'Location', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(338, 68, 7, 'space', 'Service', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(339, 68, 7, 'space', 'Clearness', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(340, 68, 7, 'space', 'Rooms', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(341, 69, 7, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(342, 69, 7, 'space', 'Location', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(343, 69, 7, 'space', 'Service', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(344, 69, 7, 'space', 'Clearness', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(345, 69, 7, 'space', 'Rooms', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(346, 70, 8, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(347, 70, 8, 'space', 'Location', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(348, 70, 8, 'space', 'Service', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(349, 70, 8, 'space', 'Clearness', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(350, 70, 8, 'space', 'Rooms', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(351, 71, 8, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(352, 71, 8, 'space', 'Location', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(353, 71, 8, 'space', 'Service', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(354, 71, 8, 'space', 'Clearness', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(355, 71, 8, 'space', 'Rooms', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(356, 72, 8, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(357, 72, 8, 'space', 'Location', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(358, 72, 8, 'space', 'Service', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(359, 72, 8, 'space', 'Clearness', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(360, 72, 8, 'space', 'Rooms', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(361, 73, 9, 'space', 'Sleep', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(362, 73, 9, 'space', 'Location', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(363, 73, 9, 'space', 'Service', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(364, 73, 9, 'space', 'Clearness', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(365, 73, 9, 'space', 'Rooms', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(366, 74, 9, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(367, 74, 9, 'space', 'Location', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(368, 74, 9, 'space', 'Service', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(369, 74, 9, 'space', 'Clearness', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(370, 74, 9, 'space', 'Rooms', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(371, 75, 9, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(372, 75, 9, 'space', 'Location', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(373, 75, 9, 'space', 'Service', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(374, 75, 9, 'space', 'Clearness', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(375, 75, 9, 'space', 'Rooms', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(376, 76, 10, 'space', 'Sleep', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(377, 76, 10, 'space', 'Location', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(378, 76, 10, 'space', 'Service', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(379, 76, 10, 'space', 'Clearness', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(380, 76, 10, 'space', 'Rooms', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(381, 77, 10, 'space', 'Sleep', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(382, 77, 10, 'space', 'Location', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(383, 77, 10, 'space', 'Service', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(384, 77, 10, 'space', 'Clearness', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(385, 77, 10, 'space', 'Rooms', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(386, 78, 10, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(387, 78, 10, 'space', 'Location', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(388, 78, 10, 'space', 'Service', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(389, 78, 10, 'space', 'Clearness', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(390, 78, 10, 'space', 'Rooms', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(391, 79, 11, 'space', 'Sleep', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(392, 79, 11, 'space', 'Location', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(393, 79, 11, 'space', 'Service', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(394, 79, 11, 'space', 'Clearness', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(395, 79, 11, 'space', 'Rooms', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(396, 80, 11, 'space', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(397, 80, 11, 'space', 'Location', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(398, 80, 11, 'space', 'Service', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(399, 80, 11, 'space', 'Clearness', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(400, 80, 11, 'space', 'Rooms', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(401, 81, 11, 'space', 'Sleep', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(402, 81, 11, 'space', 'Location', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(403, 81, 11, 'space', 'Service', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(404, 81, 11, 'space', 'Clearness', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(405, 81, 11, 'space', 'Rooms', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(406, 82, 1, 'hotel', 'Sleep', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(407, 82, 1, 'hotel', 'Location', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(408, 82, 1, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(409, 82, 1, 'hotel', 'Clearness', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(410, 82, 1, 'hotel', 'Rooms', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(411, 83, 1, 'hotel', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(412, 83, 1, 'hotel', 'Location', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(413, 83, 1, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(414, 83, 1, 'hotel', 'Clearness', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(415, 83, 1, 'hotel', 'Rooms', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(416, 84, 1, 'hotel', 'Sleep', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(417, 84, 1, 'hotel', 'Location', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(418, 84, 1, 'hotel', 'Service', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(419, 84, 1, 'hotel', 'Clearness', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(420, 84, 1, 'hotel', 'Rooms', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(421, 85, 2, 'hotel', 'Sleep', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(422, 85, 2, 'hotel', 'Location', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(423, 85, 2, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(424, 85, 2, 'hotel', 'Clearness', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(425, 85, 2, 'hotel', 'Rooms', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(426, 86, 2, 'hotel', 'Sleep', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(427, 86, 2, 'hotel', 'Location', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(428, 86, 2, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(429, 86, 2, 'hotel', 'Clearness', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(430, 86, 2, 'hotel', 'Rooms', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(431, 87, 2, 'hotel', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(432, 87, 2, 'hotel', 'Location', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(433, 87, 2, 'hotel', 'Service', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(434, 87, 2, 'hotel', 'Clearness', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(435, 87, 2, 'hotel', 'Rooms', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(436, 88, 2, 'hotel', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(437, 88, 2, 'hotel', 'Location', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(438, 88, 2, 'hotel', 'Service', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(439, 88, 2, 'hotel', 'Clearness', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(440, 88, 2, 'hotel', 'Rooms', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(441, 89, 2, 'hotel', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(442, 89, 2, 'hotel', 'Location', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(443, 89, 2, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(444, 89, 2, 'hotel', 'Clearness', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(445, 89, 2, 'hotel', 'Rooms', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(446, 90, 3, 'hotel', 'Sleep', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(447, 90, 3, 'hotel', 'Location', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(448, 90, 3, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(449, 90, 3, 'hotel', 'Clearness', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(450, 90, 3, 'hotel', 'Rooms', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(451, 91, 3, 'hotel', 'Sleep', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(452, 91, 3, 'hotel', 'Location', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(453, 91, 3, 'hotel', 'Service', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(454, 91, 3, 'hotel', 'Clearness', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(455, 91, 3, 'hotel', 'Rooms', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(456, 92, 4, 'hotel', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(457, 92, 4, 'hotel', 'Location', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(458, 92, 4, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(459, 92, 4, 'hotel', 'Clearness', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(460, 92, 4, 'hotel', 'Rooms', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(461, 93, 4, 'hotel', 'Sleep', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(462, 93, 4, 'hotel', 'Location', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(463, 93, 4, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(464, 93, 4, 'hotel', 'Clearness', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(465, 93, 4, 'hotel', 'Rooms', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(466, 94, 5, 'hotel', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(467, 94, 5, 'hotel', 'Location', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(468, 94, 5, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(469, 94, 5, 'hotel', 'Clearness', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(470, 94, 5, 'hotel', 'Rooms', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(471, 95, 5, 'hotel', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(472, 95, 5, 'hotel', 'Location', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(473, 95, 5, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(474, 95, 5, 'hotel', 'Clearness', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(475, 95, 5, 'hotel', 'Rooms', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(476, 96, 5, 'hotel', 'Sleep', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(477, 96, 5, 'hotel', 'Location', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(478, 96, 5, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(479, 96, 5, 'hotel', 'Clearness', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(480, 96, 5, 'hotel', 'Rooms', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(481, 97, 5, 'hotel', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(482, 97, 5, 'hotel', 'Location', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(483, 97, 5, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(484, 97, 5, 'hotel', 'Clearness', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(485, 97, 5, 'hotel', 'Rooms', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(486, 98, 6, 'hotel', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(487, 98, 6, 'hotel', 'Location', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(488, 98, 6, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(489, 98, 6, 'hotel', 'Clearness', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(490, 98, 6, 'hotel', 'Rooms', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(491, 99, 6, 'hotel', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(492, 99, 6, 'hotel', 'Location', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(493, 99, 6, 'hotel', 'Service', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(494, 99, 6, 'hotel', 'Clearness', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(495, 99, 6, 'hotel', 'Rooms', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(496, 100, 6, 'hotel', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(497, 100, 6, 'hotel', 'Location', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(498, 100, 6, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(499, 100, 6, 'hotel', 'Clearness', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(500, 100, 6, 'hotel', 'Rooms', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(501, 101, 7, 'hotel', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(502, 101, 7, 'hotel', 'Location', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(503, 101, 7, 'hotel', 'Service', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(504, 101, 7, 'hotel', 'Clearness', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(505, 101, 7, 'hotel', 'Rooms', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(506, 102, 7, 'hotel', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(507, 102, 7, 'hotel', 'Location', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(508, 102, 7, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(509, 102, 7, 'hotel', 'Clearness', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(510, 102, 7, 'hotel', 'Rooms', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(511, 103, 7, 'hotel', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(512, 103, 7, 'hotel', 'Location', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(513, 103, 7, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(514, 103, 7, 'hotel', 'Clearness', '5', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(515, 103, 7, 'hotel', 'Rooms', '4', 1, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07'),
(516, 104, 7, 'hotel', 'Sleep', '4', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(517, 104, 7, 'hotel', 'Location', '4', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(518, 104, 7, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(519, 104, 7, 'hotel', 'Clearness', '5', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(520, 104, 7, 'hotel', 'Rooms', '5', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(521, 105, 8, 'hotel', 'Sleep', '4', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(522, 105, 8, 'hotel', 'Location', '5', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(523, 105, 8, 'hotel', 'Service', '5', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(524, 105, 8, 'hotel', 'Clearness', '4', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(525, 105, 8, 'hotel', 'Rooms', '5', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(526, 106, 8, 'hotel', 'Sleep', '4', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(527, 106, 8, 'hotel', 'Location', '5', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(528, 106, 8, 'hotel', 'Service', '5', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(529, 106, 8, 'hotel', 'Clearness', '4', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(530, 106, 8, 'hotel', 'Rooms', '4', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(531, 107, 8, 'hotel', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(532, 107, 8, 'hotel', 'Location', '4', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(533, 107, 8, 'hotel', 'Service', '5', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(534, 107, 8, 'hotel', 'Clearness', '5', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(535, 107, 8, 'hotel', 'Rooms', '4', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(536, 108, 8, 'hotel', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(537, 108, 8, 'hotel', 'Location', '4', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(538, 108, 8, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08');
INSERT INTO `bravo_review_meta` (`id`, `review_id`, `object_id`, `object_model`, `name`, `val`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(539, 108, 8, 'hotel', 'Clearness', '4', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(540, 108, 8, 'hotel', 'Rooms', '4', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(541, 109, 9, 'hotel', 'Sleep', '4', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(542, 109, 9, 'hotel', 'Location', '4', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(543, 109, 9, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(544, 109, 9, 'hotel', 'Clearness', '4', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(545, 109, 9, 'hotel', 'Rooms', '4', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(546, 110, 9, 'hotel', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(547, 110, 9, 'hotel', 'Location', '5', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(548, 110, 9, 'hotel', 'Service', '5', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(549, 110, 9, 'hotel', 'Clearness', '4', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(550, 110, 9, 'hotel', 'Rooms', '4', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(551, 111, 9, 'hotel', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(552, 111, 9, 'hotel', 'Location', '4', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(553, 111, 9, 'hotel', 'Service', '5', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(554, 111, 9, 'hotel', 'Clearness', '4', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(555, 111, 9, 'hotel', 'Rooms', '4', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(556, 112, 9, 'hotel', 'Sleep', '4', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(557, 112, 9, 'hotel', 'Location', '4', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(558, 112, 9, 'hotel', 'Service', '5', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(559, 112, 9, 'hotel', 'Clearness', '5', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(560, 112, 9, 'hotel', 'Rooms', '5', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(561, 113, 9, 'hotel', 'Sleep', '4', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(562, 113, 9, 'hotel', 'Location', '4', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(563, 113, 9, 'hotel', 'Service', '5', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(564, 113, 9, 'hotel', 'Clearness', '4', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(565, 113, 9, 'hotel', 'Rooms', '4', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(566, 114, 10, 'hotel', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(567, 114, 10, 'hotel', 'Location', '5', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(568, 114, 10, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(569, 114, 10, 'hotel', 'Clearness', '5', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(570, 114, 10, 'hotel', 'Rooms', '5', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(571, 115, 10, 'hotel', 'Sleep', '5', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(572, 115, 10, 'hotel', 'Location', '5', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(573, 115, 10, 'hotel', 'Service', '4', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(574, 115, 10, 'hotel', 'Clearness', '4', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(575, 115, 10, 'hotel', 'Rooms', '4', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(576, 116, 10, 'hotel', 'Sleep', '4', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(577, 116, 10, 'hotel', 'Location', '5', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(578, 116, 10, 'hotel', 'Service', '5', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(579, 116, 10, 'hotel', 'Clearness', '5', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(580, 116, 10, 'hotel', 'Rooms', '5', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(581, 117, 11, 'hotel', 'Sleep', '4', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(582, 117, 11, 'hotel', 'Location', '4', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(583, 117, 11, 'hotel', 'Service', '5', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(584, 117, 11, 'hotel', 'Clearness', '5', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(585, 117, 11, 'hotel', 'Rooms', '4', 1, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08'),
(586, 118, 1, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(587, 118, 1, 'car', 'Comfortable', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(588, 118, 1, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(589, 118, 1, 'car', 'Facility', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(590, 118, 1, 'car', 'Aftercare', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(591, 119, 1, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(592, 119, 1, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(593, 119, 1, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(594, 119, 1, 'car', 'Facility', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(595, 119, 1, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(596, 120, 1, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(597, 120, 1, 'car', 'Comfortable', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(598, 120, 1, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(599, 120, 1, 'car', 'Facility', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(600, 120, 1, 'car', 'Aftercare', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(601, 121, 2, 'car', 'Equipment', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(602, 121, 2, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(603, 121, 2, 'car', 'Climate Control', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(604, 121, 2, 'car', 'Facility', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(605, 121, 2, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(606, 122, 2, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(607, 122, 2, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(608, 122, 2, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(609, 122, 2, 'car', 'Facility', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(610, 122, 2, 'car', 'Aftercare', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(611, 123, 3, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(612, 123, 3, 'car', 'Comfortable', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(613, 123, 3, 'car', 'Climate Control', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(614, 123, 3, 'car', 'Facility', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(615, 123, 3, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(616, 124, 3, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(617, 124, 3, 'car', 'Comfortable', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(618, 124, 3, 'car', 'Climate Control', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(619, 124, 3, 'car', 'Facility', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(620, 124, 3, 'car', 'Aftercare', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(621, 125, 3, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(622, 125, 3, 'car', 'Comfortable', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(623, 125, 3, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(624, 125, 3, 'car', 'Facility', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(625, 125, 3, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(626, 126, 3, 'car', 'Equipment', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(627, 126, 3, 'car', 'Comfortable', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(628, 126, 3, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(629, 126, 3, 'car', 'Facility', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(630, 126, 3, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(631, 127, 4, 'car', 'Equipment', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(632, 127, 4, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(633, 127, 4, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(634, 127, 4, 'car', 'Facility', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(635, 127, 4, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(636, 128, 4, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(637, 128, 4, 'car', 'Comfortable', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(638, 128, 4, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(639, 128, 4, 'car', 'Facility', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(640, 128, 4, 'car', 'Aftercare', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(641, 129, 4, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(642, 129, 4, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(643, 129, 4, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(644, 129, 4, 'car', 'Facility', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(645, 129, 4, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(646, 130, 4, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(647, 130, 4, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(648, 130, 4, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(649, 130, 4, 'car', 'Facility', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(650, 130, 4, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(651, 131, 4, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(652, 131, 4, 'car', 'Comfortable', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(653, 131, 4, 'car', 'Climate Control', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(654, 131, 4, 'car', 'Facility', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(655, 131, 4, 'car', 'Aftercare', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(656, 132, 5, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(657, 132, 5, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(658, 132, 5, 'car', 'Climate Control', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(659, 132, 5, 'car', 'Facility', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(660, 132, 5, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(661, 133, 5, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(662, 133, 5, 'car', 'Comfortable', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(663, 133, 5, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(664, 133, 5, 'car', 'Facility', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(665, 133, 5, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(666, 134, 5, 'car', 'Equipment', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(667, 134, 5, 'car', 'Comfortable', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(668, 134, 5, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(669, 134, 5, 'car', 'Facility', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(670, 134, 5, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(671, 135, 6, 'car', 'Equipment', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(672, 135, 6, 'car', 'Comfortable', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(673, 135, 6, 'car', 'Climate Control', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(674, 135, 6, 'car', 'Facility', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(675, 135, 6, 'car', 'Aftercare', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(676, 136, 6, 'car', 'Equipment', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(677, 136, 6, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(678, 136, 6, 'car', 'Climate Control', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(679, 136, 6, 'car', 'Facility', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(680, 136, 6, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(681, 137, 7, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(682, 137, 7, 'car', 'Comfortable', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(683, 137, 7, 'car', 'Climate Control', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(684, 137, 7, 'car', 'Facility', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(685, 137, 7, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(686, 138, 7, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(687, 138, 7, 'car', 'Comfortable', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(688, 138, 7, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(689, 138, 7, 'car', 'Facility', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(690, 138, 7, 'car', 'Aftercare', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(691, 139, 8, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(692, 139, 8, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(693, 139, 8, 'car', 'Climate Control', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(694, 139, 8, 'car', 'Facility', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(695, 139, 8, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(696, 140, 8, 'car', 'Equipment', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(697, 140, 8, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(698, 140, 8, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(699, 140, 8, 'car', 'Facility', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(700, 140, 8, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(701, 141, 8, 'car', 'Equipment', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(702, 141, 8, 'car', 'Comfortable', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(703, 141, 8, 'car', 'Climate Control', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(704, 141, 8, 'car', 'Facility', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(705, 141, 8, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(706, 142, 8, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(707, 142, 8, 'car', 'Comfortable', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(708, 142, 8, 'car', 'Climate Control', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(709, 142, 8, 'car', 'Facility', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(710, 142, 8, 'car', 'Aftercare', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(711, 143, 9, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(712, 143, 9, 'car', 'Comfortable', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(713, 143, 9, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(714, 143, 9, 'car', 'Facility', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(715, 143, 9, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(716, 144, 9, 'car', 'Equipment', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(717, 144, 9, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(718, 144, 9, 'car', 'Climate Control', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(719, 144, 9, 'car', 'Facility', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(720, 144, 9, 'car', 'Aftercare', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(721, 145, 9, 'car', 'Equipment', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(722, 145, 9, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(723, 145, 9, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(724, 145, 9, 'car', 'Facility', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(725, 145, 9, 'car', 'Aftercare', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(726, 146, 9, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(727, 146, 9, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(728, 146, 9, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(729, 146, 9, 'car', 'Facility', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(730, 146, 9, 'car', 'Aftercare', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(731, 147, 10, 'car', 'Equipment', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(732, 147, 10, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(733, 147, 10, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(734, 147, 10, 'car', 'Facility', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(735, 147, 10, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(736, 148, 10, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(737, 148, 10, 'car', 'Comfortable', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(738, 148, 10, 'car', 'Climate Control', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(739, 148, 10, 'car', 'Facility', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(740, 148, 10, 'car', 'Aftercare', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(741, 149, 11, 'car', 'Equipment', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(742, 149, 11, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(743, 149, 11, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(744, 149, 11, 'car', 'Facility', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(745, 149, 11, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(746, 150, 11, 'car', 'Equipment', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(747, 150, 11, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(748, 150, 11, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(749, 150, 11, 'car', 'Facility', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(750, 150, 11, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(751, 151, 11, 'car', 'Equipment', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(752, 151, 11, 'car', 'Comfortable', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(753, 151, 11, 'car', 'Climate Control', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(754, 151, 11, 'car', 'Facility', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(755, 151, 11, 'car', 'Aftercare', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(756, 152, 11, 'car', 'Equipment', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(757, 152, 11, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(758, 152, 11, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(759, 152, 11, 'car', 'Facility', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(760, 152, 11, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(761, 153, 12, 'car', 'Equipment', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(762, 153, 12, 'car', 'Comfortable', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(763, 153, 12, 'car', 'Climate Control', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(764, 153, 12, 'car', 'Facility', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(765, 153, 12, 'car', 'Aftercare', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(766, 154, 12, 'car', 'Equipment', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(767, 154, 12, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(768, 154, 12, 'car', 'Climate Control', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(769, 154, 12, 'car', 'Facility', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(770, 154, 12, 'car', 'Aftercare', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(771, 155, 12, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(772, 155, 12, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(773, 155, 12, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(774, 155, 12, 'car', 'Facility', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(775, 155, 12, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(776, 156, 13, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(777, 156, 13, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(778, 156, 13, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(779, 156, 13, 'car', 'Facility', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(780, 156, 13, 'car', 'Aftercare', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(781, 157, 13, 'car', 'Equipment', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(782, 157, 13, 'car', 'Comfortable', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(783, 157, 13, 'car', 'Climate Control', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(784, 157, 13, 'car', 'Facility', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(785, 157, 13, 'car', 'Aftercare', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(786, 158, 13, 'car', 'Equipment', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(787, 158, 13, 'car', 'Comfortable', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(788, 158, 13, 'car', 'Climate Control', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(789, 158, 13, 'car', 'Facility', '5', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(790, 158, 13, 'car', 'Aftercare', '4', 1, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09'),
(791, 159, 1, 'event', 'Service', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(792, 159, 1, 'event', 'Organization', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(793, 159, 1, 'event', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(794, 159, 1, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(795, 159, 1, 'event', 'Safety', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(796, 160, 1, 'event', 'Service', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(797, 160, 1, 'event', 'Organization', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(798, 160, 1, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(799, 160, 1, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(800, 160, 1, 'event', 'Safety', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(801, 161, 1, 'event', 'Service', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(802, 161, 1, 'event', 'Organization', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(803, 161, 1, 'event', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(804, 161, 1, 'event', 'Area Expert', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(805, 161, 1, 'event', 'Safety', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(806, 162, 1, 'event', 'Service', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(807, 162, 1, 'event', 'Organization', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(808, 162, 1, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(809, 162, 1, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(810, 162, 1, 'event', 'Safety', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(811, 163, 2, 'event', 'Service', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(812, 163, 2, 'event', 'Organization', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(813, 163, 2, 'event', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(814, 163, 2, 'event', 'Area Expert', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(815, 163, 2, 'event', 'Safety', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(816, 164, 2, 'event', 'Service', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(817, 164, 2, 'event', 'Organization', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(818, 164, 2, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(819, 164, 2, 'event', 'Area Expert', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(820, 164, 2, 'event', 'Safety', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(821, 165, 2, 'event', 'Service', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(822, 165, 2, 'event', 'Organization', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(823, 165, 2, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(824, 165, 2, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(825, 165, 2, 'event', 'Safety', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(826, 166, 3, 'event', 'Service', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(827, 166, 3, 'event', 'Organization', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(828, 166, 3, 'event', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(829, 166, 3, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(830, 166, 3, 'event', 'Safety', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(831, 167, 3, 'event', 'Service', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(832, 167, 3, 'event', 'Organization', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(833, 167, 3, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(834, 167, 3, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(835, 167, 3, 'event', 'Safety', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(836, 168, 3, 'event', 'Service', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(837, 168, 3, 'event', 'Organization', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(838, 168, 3, 'event', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(839, 168, 3, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(840, 168, 3, 'event', 'Safety', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(841, 169, 3, 'event', 'Service', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(842, 169, 3, 'event', 'Organization', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(843, 169, 3, 'event', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(844, 169, 3, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(845, 169, 3, 'event', 'Safety', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(846, 170, 4, 'event', 'Service', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(847, 170, 4, 'event', 'Organization', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(848, 170, 4, 'event', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(849, 170, 4, 'event', 'Area Expert', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(850, 170, 4, 'event', 'Safety', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(851, 171, 4, 'event', 'Service', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(852, 171, 4, 'event', 'Organization', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(853, 171, 4, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(854, 171, 4, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(855, 171, 4, 'event', 'Safety', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(856, 172, 4, 'event', 'Service', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(857, 172, 4, 'event', 'Organization', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(858, 172, 4, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(859, 172, 4, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(860, 172, 4, 'event', 'Safety', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(861, 173, 5, 'event', 'Service', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(862, 173, 5, 'event', 'Organization', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(863, 173, 5, 'event', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(864, 173, 5, 'event', 'Area Expert', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(865, 173, 5, 'event', 'Safety', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(866, 174, 5, 'event', 'Service', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(867, 174, 5, 'event', 'Organization', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(868, 174, 5, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(869, 174, 5, 'event', 'Area Expert', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(870, 174, 5, 'event', 'Safety', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(871, 175, 5, 'event', 'Service', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(872, 175, 5, 'event', 'Organization', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(873, 175, 5, 'event', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(874, 175, 5, 'event', 'Area Expert', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(875, 175, 5, 'event', 'Safety', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(876, 176, 5, 'event', 'Service', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(877, 176, 5, 'event', 'Organization', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(878, 176, 5, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(879, 176, 5, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(880, 176, 5, 'event', 'Safety', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(881, 177, 5, 'event', 'Service', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(882, 177, 5, 'event', 'Organization', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(883, 177, 5, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(884, 177, 5, 'event', 'Area Expert', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(885, 177, 5, 'event', 'Safety', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(886, 178, 6, 'event', 'Service', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(887, 178, 6, 'event', 'Organization', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(888, 178, 6, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(889, 178, 6, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(890, 178, 6, 'event', 'Safety', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(891, 179, 6, 'event', 'Service', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(892, 179, 6, 'event', 'Organization', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(893, 179, 6, 'event', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(894, 179, 6, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(895, 179, 6, 'event', 'Safety', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(896, 180, 6, 'event', 'Service', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(897, 180, 6, 'event', 'Organization', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(898, 180, 6, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(899, 180, 6, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(900, 180, 6, 'event', 'Safety', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(901, 181, 6, 'event', 'Service', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(902, 181, 6, 'event', 'Organization', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(903, 181, 6, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(904, 181, 6, 'event', 'Area Expert', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(905, 181, 6, 'event', 'Safety', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(906, 182, 7, 'event', 'Service', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(907, 182, 7, 'event', 'Organization', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(908, 182, 7, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(909, 182, 7, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(910, 182, 7, 'event', 'Safety', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(911, 183, 7, 'event', 'Service', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(912, 183, 7, 'event', 'Organization', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(913, 183, 7, 'event', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(914, 183, 7, 'event', 'Area Expert', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(915, 183, 7, 'event', 'Safety', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(916, 184, 8, 'event', 'Service', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(917, 184, 8, 'event', 'Organization', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(918, 184, 8, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(919, 184, 8, 'event', 'Area Expert', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(920, 184, 8, 'event', 'Safety', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(921, 185, 9, 'event', 'Service', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(922, 185, 9, 'event', 'Organization', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(923, 185, 9, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(924, 185, 9, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(925, 185, 9, 'event', 'Safety', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(926, 186, 9, 'event', 'Service', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(927, 186, 9, 'event', 'Organization', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(928, 186, 9, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(929, 186, 9, 'event', 'Area Expert', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(930, 186, 9, 'event', 'Safety', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(931, 187, 9, 'event', 'Service', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(932, 187, 9, 'event', 'Organization', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(933, 187, 9, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(934, 187, 9, 'event', 'Area Expert', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(935, 187, 9, 'event', 'Safety', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(936, 188, 9, 'event', 'Service', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(937, 188, 9, 'event', 'Organization', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(938, 188, 9, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(939, 188, 9, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(940, 188, 9, 'event', 'Safety', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(941, 189, 10, 'event', 'Service', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(942, 189, 10, 'event', 'Organization', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(943, 189, 10, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(944, 189, 10, 'event', 'Area Expert', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(945, 189, 10, 'event', 'Safety', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(946, 190, 10, 'event', 'Service', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(947, 190, 10, 'event', 'Organization', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(948, 190, 10, 'event', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(949, 190, 10, 'event', 'Area Expert', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(950, 190, 10, 'event', 'Safety', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(951, 191, 11, 'event', 'Service', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(952, 191, 11, 'event', 'Organization', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(953, 191, 11, 'event', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(954, 191, 11, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(955, 191, 11, 'event', 'Safety', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(956, 192, 11, 'event', 'Service', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(957, 192, 11, 'event', 'Organization', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(958, 192, 11, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(959, 192, 11, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(960, 192, 11, 'event', 'Safety', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(961, 193, 11, 'event', 'Service', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(962, 193, 11, 'event', 'Organization', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(963, 193, 11, 'event', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(964, 193, 11, 'event', 'Area Expert', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(965, 193, 11, 'event', 'Safety', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(966, 194, 11, 'event', 'Service', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(967, 194, 11, 'event', 'Organization', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(968, 194, 11, 'event', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(969, 194, 11, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(970, 194, 11, 'event', 'Safety', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(971, 195, 12, 'event', 'Service', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(972, 195, 12, 'event', 'Organization', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(973, 195, 12, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(974, 195, 12, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(975, 195, 12, 'event', 'Safety', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(976, 196, 12, 'event', 'Service', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(977, 196, 12, 'event', 'Organization', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(978, 196, 12, 'event', 'Friendliness', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(979, 196, 12, 'event', 'Area Expert', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(980, 196, 12, 'event', 'Safety', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(981, 197, 12, 'event', 'Service', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(982, 197, 12, 'event', 'Organization', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(983, 197, 12, 'event', 'Friendliness', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(984, 197, 12, 'event', 'Area Expert', '5', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10'),
(985, 197, 12, 'event', 'Safety', '4', 1, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_seo`
--

CREATE TABLE `bravo_seo` (
  `id` bigint UNSIGNED NOT NULL,
  `object_id` int DEFAULT NULL,
  `object_model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_index` tinyint DEFAULT NULL,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_image` int DEFAULT NULL,
  `seo_share` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `create_user` bigint DEFAULT NULL,
  `update_user` bigint DEFAULT NULL,
  `origin_id` bigint DEFAULT NULL,
  `lang` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_seo`
--

INSERT INTO `bravo_seo` (`id`, `object_id`, `object_model`, `seo_index`, `seo_title`, `seo_desc`, `seo_image`, `seo_share`, `create_user`, `update_user`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 17, 'tour', NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, '2020-11-18 06:45:56', '2020-11-18 06:45:56'),
(2, 1, 'sauna', NULL, NULL, NULL, NULL, NULL, 18, 18, NULL, NULL, '2020-11-18 07:15:26', '2020-11-18 07:16:00'),
(3, 1, 'location', NULL, NULL, NULL, NULL, NULL, 1, 18, NULL, NULL, '2020-11-19 11:24:44', '2022-01-19 10:47:15'),
(4, 2, 'location', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, 1, NULL, NULL, '2020-11-19 11:38:54', '2020-11-19 11:39:39'),
(5, 3, 'location', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, 1, NULL, NULL, '2020-11-19 11:40:57', '2020-11-19 11:44:33'),
(6, 18, 'tour', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-24 09:46:35', '2020-11-24 09:46:35'),
(7, 23, 'tour', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-12-12 22:26:25', '2020-12-12 22:28:00'),
(8, 11, 'space', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, NULL, NULL, NULL, '2020-12-21 20:54:16', '2020-12-21 20:54:16'),
(9, 12, 'space', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, NULL, NULL, NULL, '2020-12-21 21:00:44', '2020-12-21 21:00:44'),
(10, 2, 'sauna', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-12-21 22:20:53', '2020-12-21 22:21:16'),
(11, 12, 'hotel', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, NULL, NULL, NULL, '2021-01-09 22:56:26', '2021-01-09 22:56:26'),
(12, 1, 'hotel_translation_fi', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null},\"twitter\":{\"title\":null,\"desc\":null}}', 1, NULL, NULL, NULL, '2021-01-12 01:14:51', '2021-01-12 01:14:51'),
(13, 7, 'hotel', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, 1, NULL, NULL, '2021-01-12 01:39:13', '2021-01-12 01:39:19'),
(14, 13, 'hotel', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, 1, NULL, NULL, '2021-01-12 03:22:21', '2021-01-12 04:17:04'),
(15, 4, 'hotel', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2021-01-12 23:17:46', '2021-01-12 23:17:52'),
(16, 14, 'hotel', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2021-01-12 23:20:52', '2021-01-12 23:21:17'),
(17, 6, 'hotel', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2021-01-12 23:23:42', '2021-01-12 23:23:48'),
(18, 15, 'hotel', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-01-12 23:36:24', '2021-01-12 23:36:24'),
(19, 3, 'hotel', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-01-13 00:13:49', '2021-01-13 00:13:49'),
(20, 5, 'hotel', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2021-01-13 00:14:21', '2021-01-13 00:14:32'),
(21, 6, 'Job', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2021-01-13 06:23:09', '2021-01-13 06:23:30'),
(22, 5, 'Job', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2021-01-13 07:24:49', '2021-01-20 14:45:19'),
(23, 17, 'Job', NULL, NULL, NULL, NULL, NULL, 1, 24, NULL, NULL, '2021-01-24 15:38:03', '2021-02-05 21:19:31'),
(24, 18, 'Job', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2021-01-24 15:45:51', '2021-07-27 08:49:22'),
(25, 19, 'Job', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2021-01-24 15:54:04', '2021-02-05 21:49:32'),
(26, 20, 'Job', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-01-27 07:16:29', '2021-01-27 07:16:29'),
(27, 21, 'Job', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-01-28 18:07:31', '2021-01-28 18:07:31'),
(28, 22, 'Job', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2021-02-03 13:58:53', '2021-02-03 14:01:35'),
(29, 4, 'page', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, NULL, NULL, NULL, '2021-02-04 14:09:15', '2021-02-04 14:09:15'),
(30, 2, 'Job', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2021-02-04 16:23:44', '2021-02-04 16:24:12'),
(31, 23, 'Job', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 11:28:49', '2021-02-05 11:28:49'),
(32, 24, 'Job', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 11:29:27', '2021-02-05 11:29:27'),
(33, 25, 'Job', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2021-02-05 11:37:49', '2021-02-05 14:55:58'),
(34, 1, 'Job', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2021-02-05 14:58:57', '2021-05-22 12:45:06'),
(35, 9, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:18:30', '2021-02-05 20:18:30'),
(36, 4, 'location', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, NULL, NULL, NULL, '2021-02-05 20:19:33', '2021-02-05 20:19:33'),
(37, 5, 'location', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, NULL, NULL, NULL, '2021-02-05 20:20:38', '2021-02-05 20:20:38'),
(38, 6, 'location', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, NULL, NULL, NULL, '2021-02-05 20:21:28', '2021-02-05 20:21:28'),
(39, 7, 'location', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, NULL, NULL, NULL, '2021-02-05 20:21:47', '2021-02-05 20:21:47'),
(40, 8, 'location', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, NULL, NULL, NULL, '2021-02-05 20:22:06', '2021-02-05 20:22:06'),
(41, 10, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:22:50', '2021-02-05 20:22:50'),
(42, 11, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:23:12', '2021-02-05 20:23:12'),
(43, 12, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:23:26', '2021-02-05 20:23:26'),
(44, 13, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:23:37', '2021-02-05 20:23:37'),
(45, 14, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:23:50', '2021-02-05 20:23:50'),
(46, 15, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:24:01', '2021-02-05 20:24:01'),
(47, 16, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:24:14', '2021-02-05 20:24:14'),
(48, 17, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:24:27', '2021-02-05 20:24:27'),
(49, 18, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:24:38', '2021-02-05 20:24:38'),
(50, 19, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:24:52', '2021-02-05 20:24:52'),
(51, 20, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:25:10', '2021-02-05 20:25:10'),
(52, 21, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:25:21', '2021-02-05 20:25:21'),
(53, 22, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:25:32', '2021-02-05 20:25:32'),
(54, 23, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:26:04', '2021-02-05 20:26:04'),
(55, 24, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:26:16', '2021-02-05 20:26:16'),
(56, 25, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:26:32', '2021-02-05 20:26:32'),
(57, 26, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:26:44', '2021-02-05 20:26:44'),
(58, 27, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:26:56', '2021-02-05 20:26:56'),
(59, 28, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:27:09', '2021-02-05 20:27:09'),
(60, 29, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:27:20', '2021-02-05 20:27:20'),
(61, 30, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:27:32', '2021-02-05 20:27:32'),
(62, 31, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:27:43', '2021-02-05 20:27:43'),
(63, 32, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:27:53', '2021-02-05 20:27:53'),
(64, 33, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:28:04', '2021-02-05 20:28:04'),
(65, 34, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:28:17', '2021-02-05 20:28:17'),
(66, 35, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:28:27', '2021-02-05 20:28:27'),
(67, 36, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:28:39', '2021-02-05 20:28:39'),
(68, 37, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:28:49', '2021-02-05 20:28:49'),
(69, 38, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:29:00', '2021-02-05 20:29:00'),
(70, 39, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:29:10', '2021-02-05 20:29:10'),
(71, 40, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:29:21', '2021-02-05 20:29:21'),
(72, 41, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:29:32', '2021-02-05 20:29:32'),
(73, 42, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:29:43', '2021-02-05 20:29:43'),
(74, 43, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:29:55', '2021-02-05 20:29:55'),
(75, 44, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:30:07', '2021-02-05 20:30:07'),
(76, 45, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:30:16', '2021-02-05 20:30:16'),
(77, 46, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:30:27', '2021-02-05 20:30:27'),
(78, 47, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:30:38', '2021-02-05 20:30:38'),
(79, 48, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:30:49', '2021-02-05 20:30:49'),
(80, 49, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:30:59', '2021-02-05 20:30:59'),
(81, 50, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:31:10', '2021-02-05 20:31:10'),
(82, 51, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:31:23', '2021-02-05 20:31:23'),
(83, 52, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:31:36', '2021-02-05 20:31:36'),
(84, 53, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:31:48', '2021-02-05 20:31:48'),
(85, 54, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:32:01', '2021-02-05 20:32:01'),
(86, 55, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:32:15', '2021-02-05 20:32:15'),
(87, 56, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:32:25', '2021-02-05 20:32:25'),
(88, 57, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:32:36', '2021-02-05 20:32:36'),
(89, 58, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:32:50', '2021-02-05 20:32:50'),
(90, 59, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:33:04', '2021-02-05 20:33:04'),
(91, 60, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:33:15', '2021-02-05 20:33:15'),
(92, 61, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:36:50', '2021-02-05 20:36:50'),
(93, 62, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:37:07', '2021-02-05 20:37:07'),
(94, 63, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:37:23', '2021-02-05 20:37:23'),
(95, 64, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:37:41', '2021-02-05 20:37:41'),
(96, 65, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:37:51', '2021-02-05 20:37:51'),
(97, 66, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:38:04', '2021-02-05 20:38:04'),
(98, 67, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:38:14', '2021-02-05 20:38:14'),
(99, 68, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:38:26', '2021-02-05 20:38:26'),
(100, 69, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:38:39', '2021-02-05 20:38:39'),
(101, 70, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:38:50', '2021-02-05 20:38:50'),
(102, 71, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:39:03', '2021-02-05 20:39:03'),
(103, 72, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:40:40', '2021-02-05 20:40:40'),
(104, 73, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:40:51', '2021-02-05 20:40:51'),
(105, 74, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:41:02', '2021-02-05 20:41:02'),
(106, 75, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:41:16', '2021-02-05 20:41:16'),
(107, 76, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:41:30', '2021-02-05 20:41:30'),
(108, 77, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:41:41', '2021-02-05 20:41:41'),
(109, 78, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:41:52', '2021-02-05 20:41:52'),
(110, 79, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:42:02', '2021-02-05 20:42:02'),
(111, 80, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:42:15', '2021-02-05 20:42:15'),
(112, 81, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:42:29', '2021-02-05 20:42:29'),
(113, 82, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:42:39', '2021-02-05 20:42:39'),
(114, 83, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:42:51', '2021-02-05 20:42:51'),
(115, 84, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:43:05', '2021-02-05 20:43:05'),
(116, 85, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:43:17', '2021-02-05 20:43:17'),
(117, 86, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:43:28', '2021-02-05 20:43:28'),
(118, 87, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:43:38', '2021-02-05 20:43:38'),
(119, 88, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:43:50', '2021-02-05 20:43:50'),
(120, 89, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:44:01', '2021-02-05 20:44:01'),
(121, 90, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:44:14', '2021-02-05 20:44:14'),
(122, 91, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:44:27', '2021-02-05 20:44:27'),
(123, 92, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:44:39', '2021-02-05 20:44:39'),
(124, 93, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:44:50', '2021-02-05 20:44:50'),
(125, 94, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:45:02', '2021-02-05 20:45:02'),
(126, 95, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:45:13', '2021-02-05 20:45:13'),
(127, 96, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:46:26', '2021-02-05 20:46:26'),
(128, 97, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:46:54', '2021-02-05 20:46:54'),
(129, 98, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:47:12', '2021-02-05 20:47:12'),
(130, 99, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:47:39', '2021-02-05 20:47:39'),
(131, 100, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:47:53', '2021-02-05 20:47:53'),
(132, 101, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:48:10', '2021-02-05 20:48:10'),
(133, 102, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:48:27', '2021-02-05 20:48:27'),
(134, 103, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:48:43', '2021-02-05 20:48:43'),
(135, 104, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:49:29', '2021-02-05 20:49:29'),
(136, 105, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:49:40', '2021-02-05 20:49:40'),
(137, 106, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:50:01', '2021-02-05 20:50:01'),
(138, 107, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:50:14', '2021-02-05 20:50:14'),
(139, 108, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:50:26', '2021-02-05 20:50:26'),
(140, 109, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:50:36', '2021-02-05 20:50:36'),
(141, 110, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:50:49', '2021-02-05 20:50:49'),
(142, 111, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:50:59', '2021-02-05 20:50:59'),
(143, 112, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:51:10', '2021-02-05 20:51:10'),
(144, 113, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:51:25', '2021-02-05 20:51:25'),
(145, 114, 'location', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-05 20:51:37', '2021-02-05 20:51:37'),
(146, 26, 'Job', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2021-02-24 05:16:48', '2021-05-28 16:50:16'),
(147, 27, 'Job', NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, '2021-08-11 08:12:33', '2021-08-11 08:12:33'),
(148, 28, 'Job', NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, '2021-08-11 08:14:10', '2021-08-11 08:14:10'),
(149, 29, 'Job', NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, '2021-08-16 08:18:29', '2021-08-16 08:18:29'),
(150, 30, 'Job', NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, '2021-08-19 03:13:19', '2021-08-19 03:13:19'),
(151, 31, 'Job', NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, '2021-08-19 04:42:09', '2021-08-19 04:42:09'),
(152, 32, 'Job', NULL, NULL, NULL, NULL, NULL, 18, 18, NULL, NULL, '2021-08-23 09:27:44', '2021-08-23 09:29:42'),
(153, 33, 'Job', NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, '2021-08-23 15:26:43', '2021-08-23 15:26:43'),
(154, 34, 'Job', NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, '2021-08-23 15:27:43', '2021-08-23 15:27:43'),
(155, 35, 'Job', NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, '2021-08-23 15:28:24', '2021-08-23 15:28:24'),
(156, 36, 'Job', NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, '2021-08-24 12:07:44', '2021-08-24 12:07:44'),
(157, 37, 'Job', NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, '2021-08-25 11:16:53', '2021-08-25 11:16:53'),
(158, 38, 'Job', NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, '2021-08-27 02:15:15', '2021-08-27 02:15:15'),
(159, 39, 'Job', NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, '2021-08-27 08:16:21', '2021-08-27 08:16:21'),
(160, 40, 'Job', NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, '2021-08-28 05:44:02', '2021-08-28 05:44:02'),
(161, 41, 'Job', NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, '2021-08-28 07:33:56', '2021-08-28 07:33:56'),
(162, 42, 'Job', NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, '2021-08-28 08:17:19', '2021-08-28 08:17:19'),
(163, 43, 'Job', NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, '2021-08-28 11:10:42', '2021-08-28 11:10:42'),
(164, 44, 'Job', NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, '2021-08-28 11:16:23', '2021-08-28 11:16:23'),
(165, 45, 'Job', NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, '2021-08-28 11:24:16', '2021-08-28 11:24:16'),
(166, 46, 'Job', NULL, NULL, NULL, NULL, NULL, 18, 18, NULL, NULL, '2021-08-28 11:26:45', '2021-08-28 11:29:13'),
(167, 47, 'Job', NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, '2021-08-28 12:11:25', '2021-08-28 12:11:25'),
(168, 48, 'Job', NULL, NULL, NULL, NULL, NULL, 18, 18, NULL, NULL, '2021-08-28 12:13:33', '2022-01-29 18:13:49'),
(169, 49, 'Job', NULL, NULL, NULL, NULL, NULL, 18, 18, NULL, NULL, '2021-08-28 13:21:13', '2021-11-22 15:08:30'),
(170, 50, 'Job', NULL, NULL, NULL, NULL, NULL, 31, NULL, NULL, NULL, '2021-08-31 14:09:52', '2021-08-31 14:09:52'),
(171, 51, 'Job', NULL, NULL, NULL, NULL, NULL, 31, NULL, NULL, NULL, '2021-08-31 14:09:52', '2021-08-31 14:09:52'),
(172, 52, 'Job', NULL, NULL, NULL, NULL, NULL, 18, 18, NULL, NULL, '2021-11-22 15:01:40', '2021-11-22 15:04:00'),
(173, 53, 'Job', NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, '2021-11-22 15:07:11', '2021-11-22 15:07:11'),
(174, 54, 'Job', NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, '2021-11-22 15:20:07', '2021-11-22 15:20:07'),
(175, 55, 'Job', NULL, NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, '2021-11-24 14:38:51', '2021-11-24 14:38:51'),
(176, 56, 'Job', NULL, NULL, NULL, NULL, NULL, 33, 33, NULL, NULL, '2021-11-26 11:32:25', '2021-11-26 11:32:44'),
(177, 57, 'Job', NULL, NULL, NULL, NULL, NULL, 36, NULL, NULL, NULL, '2021-12-08 11:08:51', '2021-12-08 11:08:51'),
(178, 58, 'Job', NULL, NULL, NULL, NULL, NULL, 41, NULL, NULL, NULL, '2021-12-23 15:30:31', '2021-12-23 15:30:31'),
(179, 59, 'Job', NULL, NULL, NULL, NULL, NULL, 46, 46, NULL, NULL, '2021-12-28 10:35:42', '2021-12-28 10:43:59'),
(180, 60, 'Job', NULL, NULL, NULL, NULL, NULL, 46, NULL, NULL, NULL, '2021-12-28 15:37:00', '2021-12-28 15:37:00'),
(181, 61, 'Job', NULL, NULL, NULL, NULL, NULL, 48, NULL, NULL, NULL, '2021-12-28 16:21:44', '2021-12-28 16:21:44'),
(182, 62, 'Job', NULL, NULL, NULL, NULL, NULL, 49, NULL, NULL, NULL, '2021-12-28 16:50:55', '2021-12-28 16:50:55'),
(183, 63, 'Job', NULL, NULL, NULL, NULL, NULL, 41, 41, NULL, NULL, '2021-12-29 10:31:17', '2021-12-29 10:31:39'),
(184, 64, 'Job', NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, '2021-12-30 18:07:22', '2021-12-30 18:07:22'),
(185, 65, 'Job', NULL, NULL, NULL, NULL, NULL, 46, 46, NULL, NULL, '2021-12-31 08:12:50', '2021-12-31 08:23:28'),
(186, 66, 'Job', NULL, NULL, NULL, NULL, NULL, 18, 18, NULL, NULL, '2021-12-31 11:35:02', '2022-01-06 14:12:46'),
(187, 67, 'Job', NULL, NULL, NULL, NULL, NULL, 46, NULL, NULL, NULL, '2022-01-03 08:58:11', '2022-01-03 08:58:11'),
(188, 68, 'Job', NULL, NULL, NULL, NULL, NULL, 50, 50, NULL, NULL, '2022-01-03 09:37:07', '2022-01-03 09:39:33'),
(189, 69, 'Job', NULL, NULL, NULL, NULL, NULL, 46, 46, NULL, NULL, '2022-01-03 10:16:46', '2022-01-06 07:52:59'),
(190, 70, 'Job', NULL, NULL, NULL, NULL, NULL, 46, NULL, NULL, NULL, '2022-01-03 14:46:13', '2022-01-03 14:46:13'),
(191, 71, 'Job', NULL, NULL, NULL, NULL, NULL, 46, NULL, NULL, NULL, '2022-01-04 09:07:52', '2022-01-04 09:07:52'),
(192, 72, 'Job', NULL, NULL, NULL, NULL, NULL, 46, NULL, NULL, NULL, '2022-01-04 09:25:53', '2022-01-04 09:25:53'),
(193, 73, 'Job', NULL, NULL, NULL, NULL, NULL, 46, NULL, NULL, NULL, '2022-01-04 09:31:09', '2022-01-04 09:31:09'),
(194, 74, 'Job', NULL, NULL, NULL, NULL, NULL, 55, NULL, NULL, NULL, '2022-01-04 14:45:40', '2022-01-04 14:45:40'),
(195, 75, 'Job', NULL, NULL, NULL, NULL, NULL, 47, NULL, NULL, NULL, '2022-01-04 15:20:15', '2022-01-04 15:20:15'),
(196, 76, 'Job', NULL, NULL, NULL, NULL, NULL, 55, 55, NULL, NULL, '2022-01-06 10:06:38', '2022-01-06 14:38:47'),
(197, 77, 'Job', NULL, NULL, NULL, NULL, NULL, 66, 66, NULL, NULL, '2022-01-06 13:15:14', '2022-01-06 13:17:05'),
(198, 78, 'Job', NULL, NULL, NULL, NULL, NULL, 55, NULL, NULL, NULL, '2022-01-06 15:46:15', '2022-01-06 15:46:15'),
(199, 79, 'Job', NULL, NULL, NULL, NULL, NULL, 55, NULL, NULL, NULL, '2022-01-06 15:46:52', '2022-01-06 15:46:52'),
(200, 80, 'Job', NULL, NULL, NULL, NULL, NULL, 66, NULL, NULL, NULL, '2022-01-06 16:12:16', '2022-01-06 16:12:16'),
(201, 81, 'Job', NULL, NULL, NULL, NULL, NULL, 55, NULL, NULL, NULL, '2022-01-07 09:12:39', '2022-01-07 09:12:39'),
(202, 82, 'Job', NULL, NULL, NULL, NULL, NULL, 68, NULL, NULL, NULL, '2022-01-07 09:27:27', '2022-01-07 09:27:27'),
(203, 83, 'Job', NULL, NULL, NULL, NULL, NULL, 68, NULL, NULL, NULL, '2022-01-07 10:01:32', '2022-01-07 10:01:32'),
(204, 84, 'Job', NULL, NULL, NULL, NULL, NULL, 68, 68, NULL, NULL, '2022-01-07 10:08:26', '2022-01-10 13:29:21'),
(205, 85, 'Job', NULL, NULL, NULL, NULL, NULL, 66, 66, NULL, NULL, '2022-01-07 14:36:15', '2022-01-07 14:42:25'),
(206, 86, 'Job', NULL, NULL, NULL, NULL, NULL, 66, NULL, NULL, NULL, '2022-01-07 15:01:22', '2022-01-07 15:01:22'),
(207, 87, 'Job', NULL, NULL, NULL, NULL, NULL, 68, 68, NULL, NULL, '2022-01-07 15:24:31', '2022-01-07 15:24:51'),
(208, 88, 'Job', NULL, NULL, NULL, NULL, NULL, 68, NULL, NULL, NULL, '2022-01-07 15:47:38', '2022-01-07 15:47:38'),
(209, 89, 'Job', NULL, NULL, NULL, NULL, NULL, 68, NULL, NULL, NULL, '2022-01-07 15:48:09', '2022-01-07 15:48:09'),
(210, 90, 'Job', NULL, NULL, NULL, NULL, NULL, 68, 68, NULL, NULL, '2022-01-07 15:50:16', '2022-01-07 15:50:44'),
(211, 91, 'Job', NULL, NULL, NULL, NULL, NULL, 66, 66, NULL, NULL, '2022-01-07 15:57:33', '2022-01-07 16:33:43'),
(212, 92, 'Job', NULL, NULL, NULL, NULL, NULL, 71, NULL, NULL, NULL, '2022-01-07 16:07:48', '2022-01-07 16:07:48'),
(213, 93, 'Job', NULL, NULL, NULL, NULL, NULL, 18, 18, NULL, NULL, '2022-01-07 18:38:13', '2022-01-07 18:38:59'),
(214, 7, 'page', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 18, 18, NULL, NULL, '2022-01-09 23:33:26', '2022-01-09 23:33:52'),
(215, 94, 'Job', NULL, NULL, NULL, NULL, NULL, 71, NULL, NULL, NULL, '2022-01-10 09:27:40', '2022-01-10 09:27:40'),
(216, 95, 'Job', NULL, NULL, NULL, NULL, NULL, 71, NULL, NULL, NULL, '2022-01-10 11:29:34', '2022-01-10 11:29:34'),
(217, 96, 'Job', NULL, NULL, NULL, NULL, NULL, 71, NULL, NULL, NULL, '2022-01-10 11:31:24', '2022-01-10 11:31:24'),
(218, 97, 'Job', NULL, NULL, NULL, NULL, NULL, 66, 66, NULL, NULL, '2022-01-10 13:04:05', '2022-01-10 13:04:32'),
(219, 98, 'Job', NULL, NULL, NULL, NULL, NULL, 66, 66, NULL, NULL, '2022-01-10 13:12:39', '2022-01-10 13:13:04'),
(220, 99, 'Job', NULL, NULL, NULL, NULL, NULL, 71, 71, NULL, NULL, '2022-01-10 13:48:57', '2022-01-10 13:53:13'),
(221, 100, 'Job', NULL, NULL, NULL, NULL, NULL, 66, 66, NULL, NULL, '2022-01-10 13:58:41', '2022-01-10 13:58:57'),
(222, 101, 'Job', NULL, NULL, NULL, NULL, NULL, 66, NULL, NULL, NULL, '2022-01-10 14:05:48', '2022-01-10 14:05:48'),
(223, 102, 'Job', NULL, NULL, NULL, NULL, NULL, 66, NULL, NULL, NULL, '2022-01-11 09:37:52', '2022-01-11 09:37:52'),
(224, 103, 'Job', NULL, NULL, NULL, NULL, NULL, 66, NULL, NULL, NULL, '2022-01-11 09:39:56', '2022-01-11 09:39:56'),
(225, 104, 'Job', NULL, NULL, NULL, NULL, NULL, 71, 71, NULL, NULL, '2022-01-12 08:41:43', '2022-01-12 08:42:45'),
(226, 105, 'Job', NULL, NULL, NULL, NULL, NULL, 66, 66, NULL, NULL, '2022-01-12 14:03:38', '2022-01-12 14:19:26'),
(227, 106, 'Job', NULL, NULL, NULL, NULL, NULL, 53, NULL, NULL, NULL, '2022-01-12 17:57:35', '2022-01-12 17:57:35'),
(228, 107, 'Job', NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, '2022-01-12 17:57:50', '2022-01-12 17:57:50'),
(229, 108, 'Job', NULL, NULL, NULL, NULL, NULL, 74, NULL, NULL, NULL, '2022-01-13 09:31:10', '2022-01-13 09:31:10'),
(230, 109, 'Job', NULL, NULL, NULL, NULL, NULL, 18, 18, NULL, NULL, '2022-01-15 09:59:18', '2022-01-15 10:01:37'),
(231, 110, 'Job', NULL, NULL, NULL, NULL, NULL, 86, NULL, NULL, NULL, '2022-01-18 08:15:10', '2022-01-18 08:15:10'),
(232, 111, 'Job', NULL, NULL, NULL, NULL, NULL, 87, NULL, NULL, NULL, '2022-01-18 08:27:42', '2022-01-18 08:27:42'),
(233, 112, 'Job', NULL, NULL, NULL, NULL, NULL, 88, NULL, NULL, NULL, '2022-01-18 08:59:12', '2022-01-18 08:59:12'),
(234, 113, 'Job', NULL, NULL, NULL, NULL, NULL, 89, NULL, NULL, NULL, '2022-01-18 09:02:27', '2022-01-18 09:02:27'),
(235, 5, 'page', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 18, 18, NULL, NULL, '2022-01-19 08:18:54', '2022-01-19 08:20:24'),
(236, 1, 'page_translation_en', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null},\"twitter\":{\"title\":null,\"desc\":null}}', 18, 18, NULL, NULL, '2022-01-19 08:19:06', '2022-01-19 08:20:33'),
(237, 2, 'job_translation_en', NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, '2022-01-19 09:21:57', '2022-01-19 09:21:57'),
(238, 114, 'Job', NULL, NULL, NULL, NULL, NULL, 71, NULL, NULL, NULL, '2022-01-31 15:40:18', '2022-01-31 15:40:18'),
(239, 115, 'Job', NULL, NULL, NULL, NULL, NULL, 71, NULL, NULL, NULL, '2022-01-31 15:52:02', '2022-01-31 15:52:02'),
(240, 116, 'Job', NULL, NULL, NULL, NULL, NULL, 71, NULL, NULL, NULL, '2022-01-31 15:53:44', '2022-01-31 15:53:44'),
(241, 117, 'Job', NULL, NULL, NULL, NULL, NULL, 66, NULL, NULL, NULL, '2022-01-31 16:57:04', '2022-01-31 16:57:04'),
(242, 118, 'Job', NULL, NULL, NULL, NULL, NULL, 66, 66, NULL, NULL, '2022-01-31 16:59:55', '2022-01-31 17:00:05'),
(243, 119, 'Job', NULL, NULL, NULL, NULL, NULL, 66, 66, NULL, NULL, '2022-02-01 09:16:38', '2022-02-01 09:17:52'),
(244, 120, 'Job', NULL, NULL, NULL, NULL, NULL, 18, 18, NULL, NULL, '2022-02-01 10:44:28', '2022-02-01 10:46:39'),
(245, 121, 'Job', NULL, NULL, NULL, NULL, NULL, 66, 66, NULL, NULL, '2022-02-02 08:38:32', '2022-02-04 11:44:33'),
(246, 122, 'Job', NULL, NULL, NULL, NULL, NULL, 66, 66, NULL, NULL, '2022-02-02 17:37:31', '2022-02-02 17:40:31'),
(247, 123, 'Job', NULL, NULL, NULL, NULL, NULL, 71, 71, NULL, NULL, '2022-02-04 11:52:51', '2022-02-04 11:53:20'),
(248, 124, 'Job', NULL, NULL, NULL, NULL, NULL, 18, 18, NULL, NULL, '2022-02-04 13:49:30', '2022-02-04 13:53:19'),
(249, 125, 'Job', NULL, NULL, NULL, NULL, NULL, 66, NULL, NULL, NULL, '2022-02-04 15:10:58', '2022-02-04 15:10:58');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_terms`
--

CREATE TABLE `bravo_terms` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `attr_id` int DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint DEFAULT NULL,
  `update_user` bigint DEFAULT NULL,
  `origin_id` bigint DEFAULT NULL,
  `lang` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `image_id` int DEFAULT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_terms`
--

INSERT INTO `bravo_terms` (`id`, `name`, `content`, `attr_id`, `slug`, `create_user`, `update_user`, `origin_id`, `lang`, `created_at`, `updated_at`, `deleted_at`, `image_id`, `icon`) VALUES
(1, 'Cultural', NULL, 1, 'cultural', NULL, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', NULL, NULL, NULL),
(2, 'Nature & Adventure', NULL, 1, 'nature-adventure', NULL, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', NULL, NULL, NULL),
(3, 'Marine', NULL, 1, 'marine', NULL, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', NULL, NULL, NULL),
(4, 'Independent', NULL, 1, 'independent', NULL, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', NULL, NULL, NULL),
(5, 'Activities', NULL, 1, 'activities', NULL, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', NULL, NULL, NULL),
(6, 'Festival & Events', NULL, 1, 'festival-events', NULL, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', NULL, NULL, NULL),
(7, 'Special Interest', NULL, 1, 'special-interest', NULL, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', NULL, NULL, NULL),
(8, 'Wifi', NULL, 2, 'wifi', NULL, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', NULL, NULL, NULL),
(9, 'Gymnasium', NULL, 2, 'gymnasium', NULL, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', NULL, NULL, NULL),
(10, 'Mountain Bike', NULL, 2, 'mountain-bike', NULL, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', NULL, NULL, NULL),
(11, 'Satellite Office', NULL, 2, 'satellite-office', NULL, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', NULL, NULL, NULL),
(12, 'Staff Lounge', NULL, 2, 'staff-lounge', NULL, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', NULL, NULL, NULL),
(13, 'Golf Cages', NULL, 2, 'golf-cages', NULL, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', NULL, NULL, NULL),
(14, 'Aerobics Room', NULL, 2, 'aerobics-room', NULL, NULL, NULL, NULL, '2020-11-18 06:20:06', '2020-11-18 06:20:06', NULL, NULL, NULL),
(15, 'Auditorium', NULL, 3, 'auditorium', NULL, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', NULL, NULL, NULL),
(16, 'Bar', NULL, 3, 'bar', NULL, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', NULL, NULL, NULL),
(17, 'Cafe', NULL, 3, 'cafe', NULL, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', NULL, NULL, NULL),
(18, 'Ballroom', NULL, 3, 'ballroom', NULL, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', NULL, NULL, NULL),
(19, 'Dance Studio', NULL, 3, 'dance-studio', NULL, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', NULL, NULL, NULL),
(20, 'Office', NULL, 3, 'office', NULL, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', NULL, NULL, NULL),
(21, 'Party Hall', NULL, 3, 'party-hall', NULL, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', NULL, NULL, NULL),
(22, 'Recording Studio', NULL, 3, 'recording-studio', NULL, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', NULL, NULL, NULL),
(23, 'Yoga Studio', NULL, 3, 'yoga-studio', NULL, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', NULL, NULL, NULL),
(24, 'Villa', NULL, 3, 'villa', NULL, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', NULL, NULL, NULL),
(25, 'Warehouse', NULL, 3, 'warehouse', NULL, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', NULL, NULL, NULL),
(26, 'Air Conditioning', NULL, 4, 'air-conditioning', NULL, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', NULL, 86, NULL),
(27, 'Breakfast', NULL, 4, 'breakfast', NULL, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', NULL, 87, NULL),
(28, 'Kitchen', NULL, 4, 'kitchen', NULL, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', NULL, 88, NULL),
(29, 'Parking', NULL, 4, 'parking', NULL, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', NULL, 89, NULL),
(30, 'Pool', NULL, 4, 'pool', NULL, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', NULL, 90, NULL),
(31, 'Wi-Fi Internet', NULL, 4, 'wi-fi-internet', NULL, NULL, NULL, NULL, '2020-11-18 06:20:07', '2020-11-18 06:20:07', NULL, 91, NULL),
(32, 'Apartments', NULL, 5, 'apartments', NULL, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', NULL, NULL, NULL),
(33, 'Hotels', NULL, 5, 'hotels', NULL, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', NULL, NULL, NULL),
(34, 'Homestays', NULL, 5, 'homestays', NULL, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', NULL, NULL, NULL),
(35, 'Villas', NULL, 5, 'villas', NULL, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', NULL, NULL, NULL),
(36, 'Boats', NULL, 5, 'boats', NULL, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', NULL, NULL, NULL),
(37, 'Motels', NULL, 5, 'motels', NULL, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', NULL, NULL, NULL),
(38, 'Resorts', NULL, 5, 'resorts', NULL, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', NULL, NULL, NULL),
(39, 'Lodges', NULL, 5, 'lodges', NULL, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', NULL, NULL, NULL),
(40, 'Holiday homes', NULL, 5, 'holiday-homes', NULL, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', NULL, NULL, NULL),
(41, 'Cruises', NULL, 5, 'cruises', NULL, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', NULL, NULL, NULL),
(42, 'Wake-up call', NULL, 6, 'wake-up-call', NULL, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', NULL, NULL, 'icofont-wall-clock'),
(43, 'Car hire', NULL, 6, 'car-hire', NULL, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', NULL, NULL, 'icofont-car-alt-3'),
(44, 'Bicycle hire', NULL, 6, 'bicycle-hire', NULL, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', NULL, NULL, 'icofont-bicycle-alt-2'),
(45, 'Flat Tv', NULL, 6, 'flat-tv', NULL, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', NULL, NULL, 'icofont-imac'),
(46, 'Laundry and dry cleaning', NULL, 6, 'laundry-and-dry-cleaning', NULL, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', NULL, NULL, 'icofont-recycle-alt'),
(47, 'Internet – Wifi', NULL, 6, 'internet-wifi', NULL, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', NULL, NULL, 'icofont-wifi-alt'),
(48, 'Coffee and tea', NULL, 6, 'coffee-and-tea', NULL, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', NULL, NULL, 'icofont-tea'),
(49, 'Havana Lobby bar', NULL, 7, 'havana-lobby-bar', NULL, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', NULL, NULL, NULL),
(50, 'Fiesta Restaurant', NULL, 7, 'fiesta-restaurant', NULL, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', NULL, NULL, NULL),
(51, 'Hotel transport services', NULL, 7, 'hotel-transport-services', NULL, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', NULL, NULL, NULL),
(52, 'Free luggage deposit', NULL, 7, 'free-luggage-deposit', NULL, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', NULL, NULL, NULL),
(53, 'Laundry Services', NULL, 7, 'laundry-services', NULL, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', NULL, NULL, NULL),
(54, 'Pets welcome', NULL, 7, 'pets-welcome', NULL, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', NULL, NULL, NULL),
(55, 'Tickets', NULL, 7, 'tickets', NULL, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', NULL, NULL, NULL),
(56, 'Wake-up call', NULL, 8, 'wake-up-call-1', NULL, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', NULL, NULL, 'icofont-wall-clock'),
(57, 'Flat Tv', NULL, 8, 'flat-tv-1', NULL, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', NULL, NULL, 'icofont-imac'),
(58, 'Laundry and dry cleaning', NULL, 8, 'laundry-and-dry-cleaning-1', NULL, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', NULL, NULL, 'icofont-recycle-alt'),
(59, 'Internet – Wifi', NULL, 8, 'internet-wifi-1', NULL, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', NULL, NULL, 'icofont-wifi-alt'),
(60, 'Coffee and tea', NULL, 8, 'coffee-and-tea-1', NULL, NULL, NULL, NULL, '2020-11-18 06:20:08', '2020-11-18 06:20:08', NULL, NULL, 'icofont-tea'),
(61, 'Convertibles', NULL, 9, 'convertibles', NULL, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', NULL, 123, NULL),
(62, 'Coupes', NULL, 9, 'coupes', NULL, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', NULL, 124, NULL),
(63, 'Hatchbacks', NULL, 9, 'hatchbacks', NULL, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', NULL, 125, NULL),
(64, 'Minivans', NULL, 9, 'minivans', NULL, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', NULL, 126, NULL),
(65, 'Sedan', NULL, 9, 'sedan', NULL, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', NULL, 127, NULL),
(66, 'SUVs', NULL, 9, 'suvs', NULL, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', NULL, 128, NULL),
(67, 'Trucks', NULL, 9, 'trucks', NULL, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', NULL, 129, NULL),
(68, 'Wagons', NULL, 9, 'wagons', NULL, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', NULL, 130, NULL),
(69, 'Airbag', NULL, 10, 'airbag', NULL, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', NULL, 136, NULL),
(70, 'FM Radio', NULL, 10, 'fm-radio', NULL, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', NULL, 137, NULL),
(71, 'Power Windows', NULL, 10, 'power-windows', NULL, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', NULL, 141, NULL),
(72, 'Sensor', NULL, 10, 'sensor', NULL, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', NULL, 138, NULL),
(73, 'Speed Km', NULL, 10, 'speed-km', NULL, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', NULL, 139, NULL),
(74, 'Steering Wheel', NULL, 10, 'steering-wheel', NULL, NULL, NULL, NULL, '2020-11-18 06:20:09', '2020-11-18 06:20:09', NULL, 140, NULL),
(75, 'Field Day', NULL, 11, 'field-day', NULL, NULL, NULL, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10', NULL, NULL, NULL),
(76, 'Glastonbury', NULL, 11, 'glastonbury', NULL, NULL, NULL, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10', NULL, NULL, NULL),
(77, 'Green Man', NULL, 11, 'green-man', NULL, NULL, NULL, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10', NULL, NULL, NULL),
(78, 'Latitude', NULL, 11, 'latitude', NULL, NULL, NULL, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10', NULL, NULL, NULL),
(79, 'Boomtown', NULL, 11, 'boomtown', NULL, NULL, NULL, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10', NULL, NULL, NULL),
(80, 'Wilderness', NULL, 11, 'wilderness', NULL, NULL, NULL, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10', NULL, NULL, NULL),
(81, 'Exit Festival', NULL, 11, 'exit-festival', NULL, NULL, NULL, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10', NULL, NULL, NULL),
(82, 'Primavera Sound', NULL, 11, 'primavera-sound', NULL, NULL, NULL, NULL, '2020-11-18 06:20:10', '2020-11-18 06:20:10', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_terms_translations`
--

CREATE TABLE `bravo_terms_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `origin_id` bigint DEFAULT NULL,
  `locale` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `create_user` bigint DEFAULT NULL,
  `update_user` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_tours`
--

CREATE TABLE `bravo_tours` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image_id` int DEFAULT NULL,
  `banner_image_id` int DEFAULT NULL,
  `short_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `category_id` int DEFAULT NULL,
  `location_id` int DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lat` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lng` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int DEFAULT NULL,
  `is_featured` tinyint DEFAULT NULL,
  `gallery` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `sale_price` decimal(12,2) DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `min_people` int DEFAULT NULL,
  `max_people` int DEFAULT NULL,
  `faqs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `create_user` bigint DEFAULT NULL,
  `update_user` bigint DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint DEFAULT NULL,
  `lang` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `default_state` tinyint DEFAULT '1',
  `include` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `exclude` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `itinerary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `review_score` decimal(2,1) DEFAULT NULL,
  `ical_import_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_tours`
--

INSERT INTO `bravo_tours` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `short_desc`, `category_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `price`, `sale_price`, `duration`, `min_people`, `max_people`, `faqs`, `status`, `publish_date`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`, `default_state`, `include`, `exclude`, `itinerary`, `review_score`, `ical_import_url`) VALUES
(1, 'American Parks Trail end Rapid City', 'american-parks-trail', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 21, 44, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 1, 1, 'Arrondissement de Paris', '48.852754', '2.339155', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2000.00', '739.00', 3, 1, 14, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:06', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.0', NULL),
(2, 'New York: Museum of Modern Art', 'new-york-museum-of-modern-art', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 22, 45, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 1, 1, 'Porte de Vanves', '48.853917', '2.307199', 12, 1, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '900.00', '307.00', 7, 1, 11, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:06', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.3', NULL),
(3, 'Los Angeles to San Francisco Express ', 'los-angeles-to-san-francisco-express', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 23, 46, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 4, 1, 'Petit-Montrouge', '48.884900', '2.346377', 12, 1, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '1500.00', '380.00', 7, 1, 18, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 4, NULL, NULL, NULL, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:06', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.7', NULL),
(4, 'Paris Vacation Travel ', 'paris-vacation-travel', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 24, 47, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 2, 'New York', '40.707891', '-74.008825', 12, 1, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '850.00', '558.00', 5, 1, 12, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:06', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.3', NULL),
(5, 'Southwest States (Ex Los Angeles) ', 'southwest-states', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 25, 48, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 4, 2, 'Regal Cinemas Battery Park 11', '40.714578', '-73.983888', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '1900.00', '1585.00', 1, 1, 10, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 5, NULL, NULL, NULL, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:06', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.3', NULL),
(6, 'Eastern Discovery (Start New Orleans)', 'eastern-discovery-start-new-orleans', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 26, 49, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 2, 'Prince St Station', '40.720161', '-74.009628', 12, 1, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '472.00', 5, 1, 17, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 4, NULL, NULL, NULL, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:06', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.4', NULL),
(7, 'Eastern Discovery', 'eastern-discovery', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 27, 50, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 2, 2, 'Pier 36 New York', '40.708581', '-73.998817', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '240.00', 7, 1, 16, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 4, NULL, NULL, NULL, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:06', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.3', NULL),
(8, 'Pure Luxe in Punta Mita', 'pure-luxe-in-punta-mita', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 28, 51, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 4, 3, 'Trimmer Springs Rd, Sanger', '36.822484', '-119.365266', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '1700.00', 8, 1, 12, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 6, NULL, NULL, NULL, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:06', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '5.0', NULL),
(9, 'Tastes and Sounds of the South 2019', 'tastes-and-sounds-of-the-south-2019', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 29, 52, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 2, 4, 'United States', '37.040023', '-95.643144', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '687.00', 2, 1, 15, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 6, NULL, NULL, NULL, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:06', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.7', NULL),
(10, 'Giverny and Versailles Small Group Day Trip', 'giverny-and-versailles-small-group-day-trip', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 30, 53, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 5, 'Washington, DC, USA', '34.049345', '-118.248479', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '1140.00', 5, 1, 10, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 4, NULL, NULL, NULL, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:06', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.7', NULL),
(11, 'Trip of New York – Discover America', 'trip-of-new-york-discover-america', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 31, 54, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 6, 'New Jersey', '40.035329', '-74.417227', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '993.00', 6, 1, 19, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 5, NULL, NULL, NULL, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:06', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.3', NULL),
(12, 'Segway Tour of Washington, D.C. Highlights', 'segway-tour-of-washington-dc-highlights', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 32, 55, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 7, 'Francisco Parnassus Campus', '37.782668', '-122.425058', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '837.00', 2, 1, 18, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:06', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.7', NULL);
INSERT INTO `bravo_tours` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `short_desc`, `category_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `price`, `sale_price`, `duration`, `min_people`, `max_people`, `faqs`, `status`, `publish_date`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`, `default_state`, `include`, `exclude`, `itinerary`, `review_score`, `ical_import_url`) VALUES
(13, 'Hollywood Sign Small Group Tour in Luxury Van', 'hollywood-sign-small-group-tour-in-luxury-van', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 33, 56, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 1, 8, 'Virginia', '37.445688', '-78.673668', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '593.00', 7, 1, 11, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 6, NULL, NULL, NULL, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:06', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.5', NULL),
(14, 'San Francisco Express Never Ceases', 'san-francisco-express', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 34, 57, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 7, 'Comprehensive Cancer Center', '37.757522', '-122.447984', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '1307.00', 4, 1, 13, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:06', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.0', NULL),
(15, 'Cannes and Antibes Night Tour', 'cannes-and-antibes-night-tour', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 35, 58, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 1, 1, 'UCSF Helen Diller Family', '36.201066', '-88.112292', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '1155.00', 5, 1, 17, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 5, NULL, NULL, NULL, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:06', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.3', NULL),
(16, 'River Cruise Tour on the Seine', 'river-cruise-tour-on-the-seine', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 36, 59, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 1, 'Nevada, US', '36.401066', '-88.312292', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '655.00', 3, 1, 13, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:06', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '5.0', NULL),
(17, 'Helsinki food tour', 'helsinki-food-tour', NULL, 183, 183, NULL, 1, 1, NULL, NULL, NULL, 8, NULL, NULL, NULL, '49.00', NULL, 4, 2, 5, NULL, 'publish', NULL, 18, NULL, NULL, NULL, NULL, '2020-11-18 06:45:56', '2020-11-18 06:45:56', 0, NULL, NULL, NULL, NULL, NULL),
(18, 'test', 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'publish', NULL, 1, NULL, '2020-11-26 09:56:53', NULL, NULL, '2020-11-24 09:46:35', '2020-11-26 09:56:53', 0, NULL, NULL, NULL, NULL, NULL),
(19, 'River Cruise Tour on the Seine', 'river-cruise-tour-on-the-seine-1', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 36, 59, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 1, 'Nevada, US', '36.401066', '-88.312292', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '655.00', 3, 1, 13, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, 1, NULL, NULL, NULL, '2020-11-26 10:02:31', '2020-11-27 21:07:51', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '5.0', NULL),
(20, 'River Cruise Tour on the Seine', 'river-cruise-tour-on-the-seine-1-1', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 36, 59, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 1, 'Nevada, US', '36.401066', '-88.312292', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '655.00', 3, 1, 13, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, 1, NULL, NULL, NULL, '2020-11-27 21:07:26', '2020-11-27 21:07:48', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '5.0', NULL),
(21, 'River Cruise Tour on the Seine', 'river-cruise-tour-on-the-seine-1-1-1', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 36, 59, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 1, 'Nevada, US', '36.401066', '-88.312292', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '655.00', 3, 1, 13, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, 1, NULL, NULL, NULL, '2020-11-27 21:07:29', '2020-11-27 21:07:44', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '5.0', NULL),
(22, 'River Cruise Tour on the Seine', 'river-cruise-tour-on-the-seine-1-1-1-1', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 36, 59, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 1, 'Nevada, US', '36.401066', '-88.312292', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '655.00', 3, 1, 13, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, 1, NULL, NULL, NULL, '2020-11-27 21:07:31', '2020-11-27 21:07:40', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '5.0', NULL),
(23, 'River Cruise Tour on the Seine', 'river-cruise-tour-on-the-seine-1-1-1-1-1', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p>\n<h4>HIGHLIGHTS</h4>\n<ul>\n<li>Visit the Museum of Modern Art in Manhattan</li>\n<li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li>\n<li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li>\n<li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li>\n<li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li>\n</ul>', 188, 188, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 1, 'Nevada, US', '36.401066', '-88.312292', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '655.00', 3, 1, 13, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'draft', NULL, 1, 1, NULL, NULL, NULL, '2020-11-27 21:07:33', '2020-12-12 22:28:57', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '5.0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_inbox`
--

CREATE TABLE `core_inbox` (
  `id` bigint UNSIGNED NOT NULL,
  `from_user` bigint DEFAULT NULL,
  `to_user` bigint DEFAULT NULL,
  `object_id` bigint DEFAULT NULL,
  `object_model` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint DEFAULT '0',
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_inbox_messages`
--

CREATE TABLE `core_inbox_messages` (
  `id` bigint UNSIGNED NOT NULL,
  `inbox_id` bigint DEFAULT NULL,
  `from_user` bigint DEFAULT NULL,
  `to_user` bigint DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` tinyint DEFAULT '0',
  `is_read` tinyint DEFAULT '0',
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_languages`
--

CREATE TABLE `core_languages` (
  `id` bigint UNSIGNED NOT NULL,
  `locale` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `last_build_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_languages`
--

INSERT INTO `core_languages` (`id`, `locale`, `name`, `flag`, `status`, `create_user`, `update_user`, `last_build_at`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'en', 'English', 'gb', 'publish', 1, 18, NULL, NULL, '2020-11-18 06:20:03', '2022-01-18 21:56:20'),
(2, 'ja', 'Japanese', 'jp', 'draft', 1, NULL, NULL, '2022-01-18 10:47:16', '2020-11-18 06:20:03', '2022-01-18 10:47:16'),
(3, 'egy', 'Egyptian', 'eg', 'draft', 1, NULL, NULL, '2020-11-18 15:58:41', '2020-11-18 06:20:03', '2020-11-18 15:58:41'),
(4, 'fi', 'Suomi', 'fi', 'publish', 1, NULL, NULL, NULL, '2020-11-18 15:57:50', '2020-11-18 15:57:50');

-- --------------------------------------------------------

--
-- Table structure for table `core_menus`
--

CREATE TABLE `core_menus` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `origin_id` bigint DEFAULT NULL,
  `lang` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_menus`
--

INSERT INTO `core_menus` (`id`, `name`, `items`, `create_user`, `update_user`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Main Menu', '[{\"name\":\"Training\",\"url\":\"\\/job?job_type%5B%5D=Training\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":true,\"children\":[]},{\"name\":\"Internship\",\"url\":\"\\/job?job_type%5B%5D=Internship\",\"item_model\":\"custom\",\"_open\":true,\"model_name\":\"Custom\",\"is_removed\":true},{\"name\":\"Subsidy\",\"url\":\"\\/job?job_type%5B%5D=Subsidy\",\"item_model\":\"custom\",\"_open\":true,\"model_name\":\"Custom\",\"is_removed\":true},{\"name\":\"Apprenticeship\",\"url\":\"\\/job?job_type%5B%5D=Apprenticeship\",\"item_model\":\"custom\",\"_open\":true,\"model_name\":\"Custom\",\"is_removed\":true},{\"name\":\"Summer Job\",\"url\":\"\\/job?job_type%5B%5D=SummerJob\",\"item_model\":\"custom\",\"_open\":true,\"model_name\":\"Custom\",\"is_removed\":true}]', 1, 18, NULL, NULL, '2020-11-18 06:20:05', '2022-01-09 23:31:36');

-- --------------------------------------------------------

--
-- Table structure for table `core_menu_translations`
--

CREATE TABLE `core_menu_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `origin_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_menu_translations`
--

INSERT INTO `core_menu_translations` (`id`, `origin_id`, `locale`, `items`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 'ja', '[{\"name\":\"\\u30db\\u30fc\\u30e0\",\"url\":\"\\/ja\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"\\u30db\\u30fc\\u30e0\\u30da\\u30fc\\u30b8\",\"url\":\"\\/ja\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30db\\u30fc\\u30e0\\u30db\\u30c6\\u30eb\",\"url\":\"\\/ja\\/page\\/hotel\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"\\u30db\\u30fc\\u30e0 \\u30c4\\u30a2\\u30fc\",\"url\":\"\\/ja\\/page\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30db\\u30fc\\u30e0\\u30b9\\u30da\\u30fc\\u30b9\",\"url\":\"\\/ja\\/page\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"\\u30db\\u30c6\\u30eb\",\"url\":\"\\/ja\\/hotel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"\\u30db\\u30c6\\u30eb\\u4e00\\u89a7\",\"url\":\"\\/ja\\/hotel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30db\\u30c6\\u30eb\\u306e\\u8a73\\u7d30\",\"url\":\"\\/ja\\/hotel\\/parian-holiday-villas\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"\\u30c4\\u30a2\\u30fc\",\"url\":\"\\/ja\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"\\u30c4\\u30a2\\u30fc\\u30ea\\u30b9\\u30c8\",\"url\":\"\\/ja\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30c4\\u30a2\\u30fc\\u30de\\u30c3\\u30d7\",\"url\":\"\\/ja\\/tour?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30c4\\u30a2\\u30fc\\u8a73\\u7d30\",\"url\":\"\\/ja\\/tour\\/paris-vacation-travel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"\\u30b9\\u30da\\u30fc\\u30b9\",\"url\":\"\\/ja\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"\\u30b9\\u30da\\u30fc\\u30b9\\u30ea\\u30b9\\u30c8\",\"url\":\"\\/ja\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30b9\\u30da\\u30fc\\u30b9\\u306e\\u8a73\\u7d30\",\"url\":\"\\/ja\\/space\\/stay-greenwich-village\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"\\u30da\\u30fc\\u30b8\",\"url\":\"#\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"\\u30cb\\u30e5\\u30fc\\u30b9\\u4e00\\u89a7\",\"url\":\"\\/ja\\/news\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30cb\\u30e5\\u30fc\\u30b9\\u8a73\\u7d30\",\"url\":\"\\/ja\\/news\\/morning-in-the-northern-sea\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u5834\\u6240\\u306e\\u8a73\\u7d30\",\"url\":\"\\/ja\\/location\\/paris\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"\\u30d9\\u30f3\\u30c0\\u30fc\\u306b\\u306a\\u308b\",\"url\":\"\\/ja\\/page\\/become-a-vendor\",\"item_model\":\"custom\",\"children\":[]}]},{\"name\":\"\\u63a5\\u89e6\",\"url\":\"\\/ja\\/contact\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]', 1, NULL, '2020-11-18 06:20:05', NULL),
(2, 1, 'egy', '[{\"name\":\"Home\",\"url\":\"\\/egy\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Home Page\",\"url\":\"\\/egy\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Hotel\",\"url\":\"\\/egy\\/page\\/hotel\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Tour\",\"url\":\"\\/egy\\/page\\/tour\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Space\",\"url\":\"\\/egy\\/page\\/space\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Car\",\"url\":\"\\/egy\\/page\\/car\",\"item_model\":\"custom\",\"children\":[]}]},{\"name\":\"Hotel\",\"url\":\"\\/egy\\/hotel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Hotel List\",\"url\":\"\\/egy\\/hotel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Hotel Map\",\"url\":\"\\/egy\\/hotel?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Hotel Detail\",\"url\":\"\\/egy\\/hotel\\/parian-holiday-villas\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Tours\",\"url\":\"\\/egy\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Tour List\",\"url\":\"\\/egy\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Tour Map\",\"url\":\"\\/egy\\/tour?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Tour Detail\",\"url\":\"\\/egy\\/tour\\/paris-vacation-travel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Space\",\"url\":\"\\/egy\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Space List\",\"url\":\"\\/egy\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Space Map\",\"url\":\"\\/egy\\/space?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Space Detail\",\"url\":\"\\/egy\\/space\\/stay-greenwich-village\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Car\",\"url\":\"\\/egy\\/car\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Car List\",\"url\":\"\\/egy\\/car\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Car Map\",\"url\":\"\\/egy\\/car?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Car Detail\",\"url\":\"\\/egy\\/car\\/vinfast-lux-a20-plus\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Pages\",\"url\":\"#\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"News List\",\"url\":\"\\/egy\\/news\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"News Detail\",\"url\":\"\\/egy\\/news\\/morning-in-the-northern-sea\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Location Detail\",\"url\":\"\\/egy\\/location\\/paris\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Become a vendor\",\"url\":\"\\/egy\\/page\\/become-a-vendor\",\"item_model\":\"custom\",\"children\":[]}]},{\"name\":\"Contact\",\"url\":\"\\/egy\\/contact\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]', 1, NULL, '2020-11-18 06:20:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_model_has_permissions`
--

CREATE TABLE `core_model_has_permissions` (
  `permission_id` int UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_model_has_permissions`
--

INSERT INTO `core_model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(67, 'App\\User', 1),
(68, 'App\\User', 1),
(69, 'App\\User', 1),
(70, 'App\\User', 1),
(67, 'App\\User', 18),
(68, 'App\\User', 18),
(69, 'App\\User', 18),
(70, 'App\\User', 18),
(67, 'App\\User', 19),
(68, 'App\\User', 19),
(69, 'App\\User', 19),
(70, 'App\\User', 19),
(67, 'App\\User', 23),
(68, 'App\\User', 23),
(69, 'App\\User', 23),
(70, 'App\\User', 23),
(67, 'App\\User', 24),
(68, 'App\\User', 24),
(69, 'App\\User', 24),
(70, 'App\\User', 24),
(67, 'App\\User', 25),
(68, 'App\\User', 25),
(69, 'App\\User', 25),
(70, 'App\\User', 25),
(67, 'App\\User', 31),
(68, 'App\\User', 31),
(69, 'App\\User', 31),
(70, 'App\\User', 31),
(67, 'App\\User', 32),
(68, 'App\\User', 32),
(69, 'App\\User', 32),
(70, 'App\\User', 32),
(67, 'App\\User', 33),
(68, 'App\\User', 33),
(69, 'App\\User', 33),
(70, 'App\\User', 33),
(67, 'App\\User', 35),
(68, 'App\\User', 35),
(69, 'App\\User', 35),
(70, 'App\\User', 35),
(67, 'App\\User', 53),
(68, 'App\\User', 53),
(69, 'App\\User', 53),
(70, 'App\\User', 53),
(67, 'App\\User', 82),
(68, 'App\\User', 82),
(69, 'App\\User', 82),
(70, 'App\\User', 82);

-- --------------------------------------------------------

--
-- Table structure for table `core_model_has_roles`
--

CREATE TABLE `core_model_has_roles` (
  `role_id` int UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_model_has_roles`
--

INSERT INTO `core_model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(3, 'App\\User', 1),
(1, 'App\\User', 2),
(2, 'App\\User', 3),
(1, 'App\\User', 4),
(1, 'App\\User', 5),
(1, 'App\\User', 6),
(3, 'App\\User', 7),
(2, 'App\\User', 8),
(2, 'App\\User', 9),
(2, 'App\\User', 10),
(2, 'App\\User', 11),
(2, 'App\\User', 12),
(2, 'App\\User', 13),
(2, 'App\\User', 14),
(2, 'App\\User', 15),
(2, 'App\\User', 16),
(2, 'App\\User', 17),
(3, 'App\\User', 18),
(3, 'App\\User', 19),
(2, 'App\\User', 21),
(2, 'App\\User', 22),
(1, 'App\\User', 23),
(1, 'App\\User', 24),
(3, 'App\\User', 25),
(2, 'App\\User', 26),
(2, 'App\\User', 27),
(2, 'App\\User', 28),
(3, 'App\\User', 31),
(1, 'App\\User', 32),
(1, 'App\\User', 33),
(1, 'App\\User', 35),
(3, 'App\\User', 36),
(3, 'App\\User', 37),
(1, 'App\\User', 38),
(1, 'App\\User', 39),
(1, 'App\\User', 40),
(1, 'App\\User', 41),
(4, 'App\\User', 42),
(1, 'App\\User', 45),
(1, 'App\\User', 46),
(1, 'App\\User', 47),
(1, 'App\\User', 48),
(1, 'App\\User', 49),
(1, 'App\\User', 50),
(1, 'App\\User', 51),
(1, 'App\\User', 52),
(1, 'App\\User', 53),
(1, 'App\\User', 54),
(1, 'App\\User', 55),
(1, 'App\\User', 56),
(1, 'App\\User', 57),
(1, 'App\\User', 58),
(1, 'App\\User', 59),
(1, 'App\\User', 60),
(1, 'App\\User', 61),
(1, 'App\\User', 62),
(1, 'App\\User', 63),
(1, 'App\\User', 64),
(1, 'App\\User', 65),
(1, 'App\\User', 66),
(1, 'App\\User', 67),
(1, 'App\\User', 68),
(1, 'App\\User', 69),
(1, 'App\\User', 70),
(1, 'App\\User', 71),
(1, 'App\\User', 72),
(1, 'App\\User', 73),
(1, 'App\\User', 75),
(1, 'App\\User', 76),
(1, 'App\\User', 77),
(1, 'App\\User', 78),
(1, 'App\\User', 79),
(1, 'App\\User', 80),
(1, 'App\\User', 81),
(1, 'App\\User', 82),
(1, 'App\\User', 83),
(1, 'App\\User', 87),
(1, 'App\\User', 88),
(1, 'App\\User', 90),
(1, 'App\\User', 91),
(1, 'App\\User', 92),
(1, 'App\\User', 93),
(1, 'App\\User', 94);

-- --------------------------------------------------------

--
-- Table structure for table `core_news`
--

CREATE TABLE `core_news` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_id` int DEFAULT NULL,
  `image_id` int DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint DEFAULT NULL,
  `lang` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_news`
--

INSERT INTO `core_news` (`id`, `title`, `content`, `slug`, `status`, `cat_id`, `image_id`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'The day on Paris', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'the-day-on-paris', 'publish', 1, 114, 1, NULL, NULL, NULL, NULL, '2020-11-18 06:20:05', NULL),
(2, 'Pure Luxe in Punta Mita', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'pure-luxe-in-punta-mita', 'publish', 4, 115, 1, NULL, NULL, NULL, NULL, '2020-11-18 06:20:05', NULL),
(3, 'All Aboard the Rocky Mountaineer', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'all-aboard-the-rocky-mountaineer', 'publish', 2, 116, 1, NULL, NULL, NULL, NULL, '2020-11-18 06:20:05', NULL),
(4, 'City Spotlight: Philadelphia', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'city-spotlight-philadelphia', 'publish', 1, 117, 1, NULL, NULL, NULL, NULL, '2020-11-18 06:20:05', NULL),
(5, 'Tiptoe through the Tulips of Washington', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'tiptoe-through-the-tulips-of-washington', 'publish', 3, 118, 1, NULL, NULL, NULL, NULL, '2020-11-18 06:20:05', NULL),
(6, 'A Seaside Reset in Laguna Beach', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'a-seaside-reset-in-laguna-beach', 'publish', 4, 119, 1, NULL, NULL, NULL, NULL, '2020-11-18 06:20:05', NULL),
(7, 'America  National Parks with Denver', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'america-national-parks-with-denver', 'publish', 4, 120, 1, NULL, NULL, NULL, NULL, '2020-11-18 06:20:05', NULL),
(8, 'Morning in the Northern sea', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'morning-in-the-northern-sea', 'publish', 1, 115, 1, NULL, NULL, NULL, NULL, '2020-11-18 06:20:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_news_category`
--

CREATE TABLE `core_news_category` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_lft` int UNSIGNED NOT NULL DEFAULT '0',
  `_rgt` int UNSIGNED NOT NULL DEFAULT '0',
  `parent_id` int UNSIGNED DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint DEFAULT NULL,
  `lang` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_news_category`
--

INSERT INTO `core_news_category` (`id`, `name`, `content`, `slug`, `status`, `_lft`, `_rgt`, `parent_id`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`, `origin_id`, `lang`) VALUES
(1, 'Adventure Travel', NULL, 'adventure-travel', 'publish', 1, 2, NULL, NULL, NULL, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05', NULL, NULL),
(2, 'Ecotourism', NULL, 'ecotourism', 'publish', 3, 4, NULL, NULL, NULL, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05', NULL, NULL),
(3, 'Sea Travel ', NULL, 'sea-travel', 'publish', 5, 6, NULL, NULL, NULL, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05', NULL, NULL),
(4, 'Hosted Tour', NULL, 'hosted-tour', 'publish', 7, 8, NULL, NULL, NULL, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05', NULL, NULL),
(5, 'City trips ', NULL, 'city-trips', 'publish', 9, 10, NULL, NULL, NULL, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05', NULL, NULL),
(6, 'Escorted Tour ', NULL, 'escorted-tour', 'publish', 11, 12, NULL, NULL, NULL, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_news_category_translations`
--

CREATE TABLE `core_news_category_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `origin_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_news_tag`
--

CREATE TABLE `core_news_tag` (
  `id` bigint UNSIGNED NOT NULL,
  `news_id` int DEFAULT NULL,
  `tag_id` int DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_news_translations`
--

CREATE TABLE `core_news_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `origin_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_notifications`
--

CREATE TABLE `core_notifications` (
  `id` bigint UNSIGNED NOT NULL,
  `from_user` bigint DEFAULT NULL,
  `to_user` bigint DEFAULT NULL,
  `is_read` tinyint DEFAULT '0',
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_group` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` bigint DEFAULT NULL,
  `target_parent_id` bigint DEFAULT NULL,
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_pages`
--

CREATE TABLE `core_pages` (
  `id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `short_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `image_id` int DEFAULT NULL,
  `template_id` int DEFAULT NULL,
  `create_user` bigint DEFAULT NULL,
  `update_user` bigint DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint DEFAULT NULL,
  `lang` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_pages`
--

INSERT INTO `core_pages` (`id`, `slug`, `title`, `content`, `short_desc`, `status`, `publish_date`, `image_id`, `template_id`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'home-page', 'Home Page', NULL, NULL, 'publish', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2020-11-18 06:20:05', NULL),
(2, 'tour', 'Home Tour', NULL, NULL, 'publish', NULL, NULL, 2, 1, NULL, '2021-02-04 14:07:22', NULL, NULL, '2020-11-18 06:20:05', '2021-02-04 14:07:22'),
(3, 'space', 'Home Space', NULL, NULL, 'publish', NULL, NULL, 3, 1, NULL, '2021-02-04 14:07:22', NULL, NULL, '2020-11-18 06:20:05', '2021-02-04 14:07:22'),
(4, 'job', 'Home Job', NULL, NULL, 'publish', NULL, NULL, 1, 1, 1, '2021-02-04 14:09:42', NULL, NULL, '2020-11-18 06:20:05', '2021-02-04 14:09:42'),
(5, 'become-a-vendor', 'Become a vendor', NULL, NULL, 'publish', NULL, NULL, 5, 1, 18, NULL, NULL, NULL, '2020-11-18 06:20:05', '2022-01-19 08:20:24'),
(6, 'car', 'Home Car', NULL, NULL, 'publish', NULL, NULL, 6, 1, NULL, '2021-02-04 14:07:22', NULL, NULL, '2020-11-18 06:20:05', '2021-02-04 14:07:22'),
(7, 'privacy-policy', 'Privacy Policy of Työkokeilu', '<p style=\"margin-top:0px;margin-bottom:1rem;font-size:17px;font-weight:600;color:#2c3e50;font-family:\'Source Sans Pro\', sans-serif;line-height:24px;font-style:normal;letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:none;\"> </p>\n<p style=\"margin-top:0px;margin-bottom:1rem;font-size:17px;font-weight:600;color:#2c3e50;font-family:\'Source Sans Pro\', sans-serif;line-height:24px;font-style:normal;letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:none;\">Työkokeilu operates the www.tyokokeilu.fi, which provides the SERVICE. This page is used to inform website visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service, the www.tyokokeilu.fi website.</p>\n<p style=\"margin-top:0px;margin-bottom:1rem;font-size:17px;font-weight:600;color:#2c3e50;font-family:\'Source Sans Pro\', sans-serif;line-height:24px;font-style:normal;letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:none;\">If you choose to use our Service, then you agree to the collection and use of information in relation with this policy. The Personal Information that we collect are used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy.</p>\n<p style=\"margin-top:0px;margin-bottom:1rem;font-size:17px;font-weight:600;color:#2c3e50;font-family:\'Source Sans Pro\', sans-serif;line-height:24px;font-style:normal;letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:none;\">The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at www.tyokokeilu.fi, unless otherwise defined in this Privacy Policy.</p>\n<div class=\"info-title\" style=\"color:#0b5061;font-size:24px;font-weight:bold;line-height:24px;font-family:\'Source Sans Pro\', sans-serif;margin-bottom:20px;margin-top:20px;font-style:normal;letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:none;\">Information Collection and Use</div>\n<p style=\"margin-top:0px;margin-bottom:1rem;font-size:17px;font-weight:600;color:#2c3e50;font-family:\'Source Sans Pro\', sans-serif;line-height:24px;font-style:normal;letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:none;\">For a better experience while using our Service, we may require you to provide us with certain personally identifiable information, including but not limited to your name, phone number, and postal address. The information that we collect will be used to contact or identify you.</p>\n<div class=\"info-title\" style=\"color:#0b5061;font-size:24px;font-weight:bold;line-height:24px;font-family:\'Source Sans Pro\', sans-serif;margin-bottom:20px;margin-top:20px;font-style:normal;letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:none;\">Log Data</div>\n<p style=\"margin-top:0px;margin-bottom:1rem;font-size:17px;font-weight:600;color:#2c3e50;font-family:\'Source Sans Pro\', sans-serif;line-height:24px;font-style:normal;letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:none;\">We want to inform you that whenever you visit our Service, we collect information that your browser sends to us that is called Log Data. This Log Data may include information such as your computer’s Internet Protocol (“IP”) address, browser version, pages of our Service that you visit, the time and date of your visit, the time spent on those pages, and other statistics.</p>\n<div class=\"info-title\" style=\"color:#0b5061;font-size:24px;font-weight:bold;line-height:24px;font-family:\'Source Sans Pro\', sans-serif;margin-bottom:20px;margin-top:20px;font-style:normal;letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:none;\">Cookies</div>\n<p style=\"margin-top:0px;margin-bottom:1rem;font-size:17px;font-weight:600;color:#2c3e50;font-family:\'Source Sans Pro\', sans-serif;line-height:24px;font-style:normal;letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:none;\">Cookies are files with small amount of data that is commonly used an anonymous unique identifier. These are sent to your browser from the website that you visit and are stored on your computer’s hard drive.</p>\n<p style=\"margin-top:0px;margin-bottom:1rem;font-size:17px;font-weight:600;color:#2c3e50;font-family:\'Source Sans Pro\', sans-serif;line-height:24px;font-style:normal;letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:none;\">Our website uses these “cookies” to collection information and to improve our Service. You have the option to either accept or refuse these cookies, and know when a cookie is being sent to your computer. If you choose to refuse our cookies, you may not be able to use some portions of our Service.</p>\n<div class=\"info-title\" style=\"color:#0b5061;font-size:24px;font-weight:bold;line-height:24px;font-family:\'Source Sans Pro\', sans-serif;margin-bottom:20px;margin-top:20px;font-style:normal;letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:none;\">Service Providers</div>\n<p style=\"margin-top:0px;margin-bottom:1rem;font-size:17px;font-weight:600;color:#2c3e50;font-family:\'Source Sans Pro\', sans-serif;line-height:24px;font-style:normal;letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:none;\">We may employ third-party companies and individuals due to the following reasons:</p>\n<p style=\"margin-top:0px;margin-bottom:1rem;font-size:17px;font-weight:600;color:#2c3e50;font-family:\'Source Sans Pro\', sans-serif;line-height:24px;font-style:normal;letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:none;\">* To facilitate our Service;</p>\n<p style=\"margin-top:0px;margin-bottom:1rem;font-size:17px;font-weight:600;color:#2c3e50;font-family:\'Source Sans Pro\', sans-serif;line-height:24px;font-style:normal;letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:none;\">* To provide the Service on our behalf;</p>\n<p style=\"margin-top:0px;margin-bottom:1rem;font-size:17px;font-weight:600;color:#2c3e50;font-family:\'Source Sans Pro\', sans-serif;line-height:24px;font-style:normal;letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:none;\">* To perform Service-related services; or</p>\n<p style=\"margin-top:0px;margin-bottom:1rem;font-size:17px;font-weight:600;color:#2c3e50;font-family:\'Source Sans Pro\', sans-serif;line-height:24px;font-style:normal;letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:none;\">* To assist us in analyzing how our Service is used.</p>\n<p style=\"margin-top:0px;margin-bottom:1rem;font-size:17px;font-weight:600;color:#2c3e50;font-family:\'Source Sans Pro\', sans-serif;line-height:24px;font-style:normal;letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:none;\">We want to inform our Service users that these third parties have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.</p>\n<div class=\"info-title\" style=\"color:#0b5061;font-size:24px;font-weight:bold;line-height:24px;font-family:\'Source Sans Pro\', sans-serif;margin-bottom:20px;margin-top:20px;font-style:normal;letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:none;\">Security</div>\n<p style=\"margin-top:0px;margin-bottom:1rem;font-size:17px;font-weight:600;color:#2c3e50;font-family:\'Source Sans Pro\', sans-serif;line-height:24px;font-style:normal;letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:none;\">We value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security.</p>\n<div class=\"info-title\" style=\"color:#0b5061;font-size:24px;font-weight:bold;line-height:24px;font-family:\'Source Sans Pro\', sans-serif;margin-bottom:20px;margin-top:20px;font-style:normal;letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:none;\">Links to Other Sites</div>\n<p style=\"margin-top:0px;margin-bottom:1rem;font-size:17px;font-weight:600;color:#2c3e50;font-family:\'Source Sans Pro\', sans-serif;line-height:24px;font-style:normal;letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:none;\">Our Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by us. Therefore, we strongly advise you to review the Privacy Policy of these websites. We have no control over, and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.</p>\n<p style=\"margin-top:0px;margin-bottom:1rem;font-size:17px;font-weight:600;color:#2c3e50;font-family:\'Source Sans Pro\', sans-serif;line-height:24px;font-style:normal;letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:none;\">Children’s Privacy</p>\n<p style=\"margin-top:0px;margin-bottom:1rem;font-size:17px;font-weight:600;color:#2c3e50;font-family:\'Source Sans Pro\', sans-serif;line-height:24px;font-style:normal;letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:none;\">Our Services do not address anyone under the age of 13. We do not knowingly collect personal identifiable information from children under 13. In the case we discover that a child under 13 has provided us with personal information, we immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact us so that we will be able to do necessary actions.</p>\n<div class=\"info-title\" style=\"color:#0b5061;font-size:24px;font-weight:bold;line-height:24px;font-family:\'Source Sans Pro\', sans-serif;margin-bottom:20px;margin-top:20px;font-style:normal;letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:none;\">Changes to This Privacy Policy</div>\n<p style=\"margin-top:0px;margin-bottom:1rem;font-size:17px;font-weight:600;color:#2c3e50;font-family:\'Source Sans Pro\', sans-serif;line-height:24px;font-style:normal;letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:none;\">We may update our Privacy Policy from time to time. Thus, we advise you to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page. These changes are effective immediately, after they are posted on this page.</p>\n<div class=\"info-title\" style=\"color:#0b5061;font-size:24px;font-weight:bold;line-height:24px;font-family:\'Source Sans Pro\', sans-serif;margin-bottom:20px;margin-top:20px;font-style:normal;letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:none;\">Contact Us</div>\n<p style=\"margin-top:0px;margin-bottom:1rem;font-size:17px;font-weight:600;color:#2c3e50;font-family:\'Source Sans Pro\', sans-serif;line-height:24px;font-style:normal;letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:none;\">If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us.</p>', NULL, 'publish', NULL, NULL, NULL, 1, 18, NULL, NULL, NULL, '2020-11-18 06:20:05', '2022-01-09 23:34:26');

-- --------------------------------------------------------

--
-- Table structure for table `core_page_translations`
--

CREATE TABLE `core_page_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `origin_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `short_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `create_user` bigint DEFAULT NULL,
  `update_user` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_page_translations`
--

INSERT INTO `core_page_translations` (`id`, `origin_id`, `locale`, `title`, `content`, `short_desc`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 5, 'en', 'Become a vendor', NULL, NULL, 18, 18, '2022-01-19 08:19:06', '2022-01-19 08:20:33');

-- --------------------------------------------------------

--
-- Table structure for table `core_permissions`
--

CREATE TABLE `core_permissions` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_permissions`
--

INSERT INTO `core_permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'report_view', 'web', '2020-11-18 06:20:01', '2020-11-18 06:20:01'),
(2, 'contact_manage', 'web', '2020-11-18 06:20:01', '2020-11-18 06:20:01'),
(3, 'newsletter_manage', 'web', '2020-11-18 06:20:01', '2020-11-18 06:20:01'),
(4, 'language_manage', 'web', '2020-11-18 06:20:01', '2020-11-18 06:20:01'),
(5, 'language_translation', 'web', '2020-11-18 06:20:01', '2020-11-18 06:20:01'),
(6, 'booking_view', 'web', '2020-11-18 06:20:01', '2020-11-18 06:20:01'),
(7, 'booking_update', 'web', '2020-11-18 06:20:01', '2020-11-18 06:20:01'),
(8, 'booking_manage_others', 'web', '2020-11-18 06:20:01', '2020-11-18 06:20:01'),
(9, 'enquiry_view', 'web', '2020-11-18 06:20:01', '2020-11-18 06:20:01'),
(10, 'enquiry_update', 'web', '2020-11-18 06:20:01', '2020-11-18 06:20:01'),
(11, 'enquiry_manage_others', 'web', '2020-11-18 06:20:01', '2020-11-18 06:20:01'),
(12, 'template_view', 'web', '2020-11-18 06:20:01', '2020-11-18 06:20:01'),
(13, 'template_create', 'web', '2020-11-18 06:20:01', '2020-11-18 06:20:01'),
(14, 'template_update', 'web', '2020-11-18 06:20:01', '2020-11-18 06:20:01'),
(15, 'template_delete', 'web', '2020-11-18 06:20:01', '2020-11-18 06:20:01'),
(21, 'role_view', 'web', '2020-11-18 06:20:01', '2020-11-18 06:20:01'),
(22, 'role_create', 'web', '2020-11-18 06:20:01', '2020-11-18 06:20:01'),
(23, 'role_update', 'web', '2020-11-18 06:20:01', '2020-11-18 06:20:01'),
(24, 'role_delete', 'web', '2020-11-18 06:20:01', '2020-11-18 06:20:01'),
(25, 'permission_view', 'web', '2020-11-18 06:20:01', '2020-11-18 06:20:01'),
(26, 'permission_create', 'web', '2020-11-18 06:20:01', '2020-11-18 06:20:01'),
(27, 'permission_update', 'web', '2020-11-18 06:20:01', '2020-11-18 06:20:01'),
(28, 'permission_delete', 'web', '2020-11-18 06:20:01', '2020-11-18 06:20:01'),
(29, 'dashboard_access', 'web', '2020-11-18 06:20:01', '2020-11-18 06:20:01'),
(30, 'dashboard_vendor_access', 'web', '2020-11-18 06:20:01', '2020-11-18 06:20:01'),
(31, 'setting_update', 'web', '2020-11-18 06:20:01', '2020-11-18 06:20:01'),
(32, 'menu_view', 'web', '2020-11-18 06:20:01', '2020-11-18 06:20:01'),
(33, 'menu_create', 'web', '2020-11-18 06:20:01', '2020-11-18 06:20:01'),
(34, 'menu_update', 'web', '2020-11-18 06:20:01', '2020-11-18 06:20:01'),
(35, 'menu_delete', 'web', '2020-11-18 06:20:01', '2020-11-18 06:20:01'),
(36, 'user_view', 'web', '2020-11-18 06:20:01', '2020-11-18 06:20:01'),
(37, 'user_create', 'web', '2020-11-18 06:20:01', '2020-11-18 06:20:01'),
(38, 'user_update', 'web', '2020-11-18 06:20:01', '2020-11-18 06:20:01'),
(39, 'user_delete', 'web', '2020-11-18 06:20:01', '2020-11-18 06:20:01'),
(40, 'page_view', 'web', '2020-11-18 06:20:01', '2020-11-18 06:20:01'),
(41, 'page_create', 'web', '2020-11-18 06:20:01', '2020-11-18 06:20:01'),
(42, 'page_update', 'web', '2020-11-18 06:20:01', '2020-11-18 06:20:01'),
(43, 'page_delete', 'web', '2020-11-18 06:20:01', '2020-11-18 06:20:01'),
(44, 'page_manage_others', 'web', '2020-11-18 06:20:01', '2020-11-18 06:20:01'),
(45, 'setting_view', 'web', '2020-11-18 06:20:02', '2020-11-18 06:20:02'),
(46, 'media_upload', 'web', '2020-11-18 06:20:02', '2020-11-18 06:20:02'),
(47, 'media_manage', 'web', '2020-11-18 06:20:02', '2020-11-18 06:20:02'),
(54, 'location_view', 'web', '2020-11-18 06:20:02', '2020-11-18 06:20:02'),
(55, 'location_create', 'web', '2020-11-18 06:20:02', '2020-11-18 06:20:02'),
(56, 'location_update', 'web', '2020-11-18 06:20:02', '2020-11-18 06:20:02'),
(57, 'location_delete', 'web', '2020-11-18 06:20:02', '2020-11-18 06:20:02'),
(58, 'location_manage_others', 'web', '2020-11-18 06:20:02', '2020-11-18 06:20:02'),
(59, 'review_manage_others', 'web', '2020-11-18 06:20:02', '2020-11-18 06:20:02'),
(60, 'system_log_view', 'web', '2020-11-18 06:20:02', '2020-11-18 06:20:02'),
(67, 'job_view', 'web', '2020-11-18 06:20:02', '2020-11-18 06:20:02'),
(68, 'job_create', 'web', '2020-11-18 06:20:02', '2020-11-18 06:20:02'),
(69, 'job_update', 'web', '2020-11-18 06:20:02', '2020-11-18 06:20:02'),
(70, 'job_delete', 'web', '2020-11-18 06:20:02', '2020-11-18 06:20:02'),
(71, 'job_manage_others', 'web', '2020-11-18 06:20:02', '2020-11-18 06:20:02'),
(72, 'job_manage_categories', 'web', '2020-11-18 06:20:02', '2020-11-18 06:20:02'),
(85, 'social_manage_forum', 'web', '2020-11-18 06:20:03', '2020-11-18 06:20:03'),
(86, 'plugin_manage', 'web', '2020-11-18 06:20:03', '2020-11-18 06:20:03'),
(87, 'vendor_payout_view', 'web', '2020-11-18 06:20:03', '2020-11-18 06:20:03'),
(88, 'vendor_payout_manage', 'web', '2020-11-18 06:20:03', '2020-11-18 06:20:03');

-- --------------------------------------------------------

--
-- Table structure for table `core_roles`
--

CREATE TABLE `core_roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `origin_id` bigint DEFAULT NULL,
  `lang` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_roles`
--

INSERT INTO `core_roles` (`id`, `name`, `guard_name`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'vendor', 'web', NULL, NULL, '2020-11-18 06:20:03', '2020-11-18 06:20:03'),
(2, 'customer', 'web', NULL, NULL, '2020-11-18 06:20:03', '2020-11-18 06:20:03'),
(3, 'administrator', 'web', NULL, NULL, '2020-11-18 06:20:03', '2020-11-18 06:20:03'),
(4, 'Admin User', 'web', NULL, NULL, '2021-12-23 11:45:00', '2021-12-23 11:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `core_role_has_permissions`
--

CREATE TABLE `core_role_has_permissions` (
  `permission_id` int UNSIGNED NOT NULL,
  `role_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_role_has_permissions`
--

INSERT INTO `core_role_has_permissions` (`permission_id`, `role_id`) VALUES
(9, 1),
(10, 1),
(30, 1),
(46, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(28, 3),
(29, 3),
(30, 3),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(35, 3),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 3),
(41, 3),
(42, 3),
(43, 3),
(44, 3),
(45, 3),
(46, 3),
(47, 3),
(54, 3),
(55, 3),
(56, 3),
(57, 3),
(58, 3),
(59, 3),
(60, 3),
(67, 3),
(68, 3),
(69, 3),
(70, 3),
(71, 3),
(72, 3),
(85, 3),
(86, 3),
(87, 3),
(88, 3),
(1, 4),
(2, 4),
(3, 4),
(6, 4),
(7, 4),
(8, 4),
(9, 4),
(10, 4),
(11, 4),
(29, 4),
(30, 4),
(46, 4),
(47, 4),
(59, 4),
(60, 4),
(67, 4),
(68, 4),
(69, 4),
(71, 4),
(85, 4),
(86, 4),
(88, 4);

-- --------------------------------------------------------

--
-- Table structure for table `core_settings`
--

CREATE TABLE `core_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `autoload` tinyint DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `lang` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_settings`
--

INSERT INTO `core_settings` (`id`, `name`, `group`, `val`, `autoload`, `create_user`, `update_user`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'site_locale', 'general', 'en', NULL, 1, 18, NULL, NULL, '2022-02-04 17:16:53'),
(2, 'site_enable_multi_lang', 'general', '1', NULL, 1, 18, NULL, NULL, '2022-01-11 07:45:34'),
(3, 'enable_rtl_egy', 'general', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'menu_locations', 'general', '{\"primary\":1}', NULL, 1, 18, NULL, NULL, '2021-12-23 17:00:04'),
(5, 'admin_email', 'general', 'mail@bookme.fi', NULL, 1, 18, NULL, NULL, '2022-01-10 16:35:48'),
(6, 'email_from_name', 'general', 'Tyokokeilu', NULL, 1, 18, NULL, NULL, '2021-12-31 13:13:46'),
(7, 'email_from_address', 'general', 'mail@bookme.fi', NULL, 1, 18, NULL, NULL, '2021-12-06 21:32:20'),
(8, 'logo_id', 'general', '', NULL, 1, 18, NULL, NULL, '2022-01-06 19:28:37'),
(9, 'site_favicon', 'general', '225', NULL, 1, 18, NULL, NULL, '2022-01-07 12:33:46'),
(10, 'topbar_left_text', 'general', '', NULL, 1, 18, NULL, NULL, '2021-12-06 21:32:20'),
(11, 'footer_text_left', 'general', '<p style=\"text-align: center;\">Copyright &copy; 2022 Ty&ouml;kokeilu - All Rights Reserved</p>', NULL, 1, 18, NULL, NULL, '2022-01-07 12:33:46'),
(12, 'footer_text_right', 'general', '', NULL, 1, 18, NULL, NULL, '2021-12-06 21:32:20'),
(13, 'list_widget_footer', 'general', '[{\"title\":\"Contact US\",\"size\":\"3\",\"content\":\"<div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            BOOKME\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            + 00 222 44 5678\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n    <div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            Email for Us\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            hello@yoursite.com\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n    <div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            Follow Us\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            <a href=\\\"#\\\">\\r\\n                <i class=\\\"icofont-facebook\\\"><\\/i>\\r\\n            <\\/a>\\r\\n            <a href=\\\"#\\\">\\r\\n               <i class=\\\"icofont-twitter\\\"><\\/i>\\r\\n            <\\/a>\\r\\n            <a href=\\\"#\\\">\\r\\n                <i class=\\\"icofont-youtube-play\\\"><\\/i>\\r\\n            <\\/a>\\r\\n        <\\/div>\\r\\n    <\\/div>\"},{\"title\":\"COMPANY\",\"size\":\"3\",\"content\":\"<ul>\\r\\n    <li><a href=\\\"#\\\">About Us<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Community Blog<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Rewards<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Work with Us<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Meet the Team<\\/a><\\/li>\\r\\n<\\/ul>\"},{\"title\":\"SUPPORT\",\"size\":\"3\",\"content\":\"<ul>\\r\\n    <li><a href=\\\"#\\\">Account<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Legal<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Contact<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Affiliate Program<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Privacy Policy<\\/a><\\/li>\\r\\n<\\/ul>\"},{\"title\":\"SETTINGS\",\"size\":\"3\",\"content\":\"<ul>\\r\\n<li><a href=\\\"#\\\">Setting 1<\\/a><\\/li>\\r\\n<li><a href=\\\"#\\\">Setting 2<\\/a><\\/li>\\r\\n<\\/ul>\"}]', NULL, 1, 18, NULL, NULL, '2021-12-06 21:32:20'),
(14, 'list_widget_footer_ja', 'general', '[{\"title\":\"\\u52a9\\u3051\\u304c\\u5fc5\\u8981\\uff1f\",\"size\":\"3\",\"content\":\"<div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            \\u304a\\u96fb\\u8a71\\u304f\\u3060\\u3055\\u3044\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            + 00 222 44 5678\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n    <div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            \\u90f5\\u4fbf\\u7269\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            hello@yoursite.com\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n    <div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            \\u30d5\\u30a9\\u30ed\\u30fc\\u3059\\u308b\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            <a href=\\\"#\\\">\\r\\n                <i class=\\\"icofont-facebook\\\"><\\/i>\\r\\n            <\\/a>\\r\\n            <a href=\\\"#\\\">\\r\\n                <i class=\\\"icofont-twitter\\\"><\\/i>\\r\\n            <\\/a>\\r\\n            <a href=\\\"#\\\">\\r\\n                <i class=\\\"icofont-youtube-play\\\"><\\/i>\\r\\n            <\\/a>\\r\\n        <\\/div>\\r\\n    <\\/div>\"},{\"title\":\"\\u4f1a\\u793e\",\"size\":\"3\",\"content\":\"<ul>\\r\\n    <li><a href=\\\"#\\\">\\u7d04, \\u7565<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u30b3\\u30df\\u30e5\\u30cb\\u30c6\\u30a3\\u30d6\\u30ed\\u30b0<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u5831\\u916c<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u3068\\u9023\\u643a<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u30c1\\u30fc\\u30e0\\u306b\\u4f1a\\u3046<\\/a><\\/li>\\r\\n<\\/ul>\"},{\"title\":\"\\u30b5\\u30dd\\u30fc\\u30c8\",\"size\":\"3\",\"content\":\"<ul>\\r\\n    <li><a href=\\\"#\\\">\\u30a2\\u30ab\\u30a6\\u30f3\\u30c8<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u6cd5\\u7684<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u63a5\\u89e6<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u30a2\\u30d5\\u30a3\\u30ea\\u30a8\\u30a4\\u30c8\\u30d7\\u30ed\\u30b0\\u30e9\\u30e0<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u500b\\u4eba\\u60c5\\u5831\\u4fdd\\u8b77\\u65b9\\u91dd<\\/a><\\/li>\\r\\n<\\/ul>\"},{\"title\":\"\\u8a2d\\u5b9a\",\"size\":\"3\",\"content\":\"<ul>\\r\\n<li><a href=\\\"#\\\">\\u8a2d\\u5b9a1<\\/a><\\/li>\\r\\n<li><a href=\\\"#\\\">\\u8a2d\\u5b9a2<\\/a><\\/li>\\r\\n<\\/ul>\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'page_contact_title', 'general', 'We\'d love to hear from you', NULL, 1, 18, NULL, NULL, '2021-12-06 21:32:20'),
(16, 'page_contact_sub_title', 'general', 'Send us a message and we\'ll respond as soon as possible', NULL, 1, 18, NULL, NULL, '2021-12-06 21:32:20'),
(17, 'page_contact_desc', 'general', '<h3>Ty&ouml;kokeilu</h3>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Tell. + 00 222 444 33</p>\r\n<p>Email. hello@yoursite.com</p>\r\n<p>1355 Market St, Suite 900San, Francisco, CA 94103 United States</p>', NULL, 1, 18, NULL, NULL, '2022-01-07 12:33:46'),
(18, 'page_contact_image', 'general', '', NULL, 1, 18, NULL, NULL, '2021-12-06 21:32:20'),
(19, 'home_page_id', 'general', '1', NULL, 1, 18, NULL, NULL, '2021-12-06 21:32:20'),
(20, 'page_contact_title', 'general', 'We\'d love to hear from you', NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'page_contact_title_ja', 'general', 'あなたからの御一報をお待ち', NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'page_contact_sub_title', 'general', 'Send us a message and we\'ll respond as soon as possible', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'page_contact_sub_title_ja', 'general', '私たちにメッセージを送ってください、私たちはできるだ', NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'page_contact_desc', 'general', '<!DOCTYPE html><html><head></head><body><h3>Booking Core</h3><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>Tell. + 00 222 444 33</p><p>Email. hello@yoursite.com</p><p>1355 Market St, Suite 900San, Francisco, CA 94103 United States</p></body></html>', NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'page_contact_image', 'general', '9', NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'currency_main', 'payment', 'eur', NULL, 1, NULL, NULL, NULL, '2020-11-19 11:21:59'),
(27, 'currency_format', 'payment', 'right_space', NULL, 1, NULL, NULL, NULL, '2020-11-19 11:21:59'),
(28, 'currency_decimal', 'payment', ',', NULL, 1, NULL, NULL, NULL, '2020-11-19 11:21:59'),
(29, 'currency_thousand', 'payment', '.', NULL, 1, NULL, NULL, NULL, '2020-11-19 11:21:59'),
(30, 'currency_no_decimal', 'payment', '0', NULL, 1, NULL, NULL, NULL, '2020-11-19 11:21:59'),
(31, 'extra_currency', 'payment', '[{\"currency_main\":\"jpy\",\"currency_format\":\"right_space\",\"currency_thousand\":\".\",\"currency_decimal\":\",\",\"currency_no_decimal\":\"2\",\"rate\":\"0.902807\"}]', NULL, 1, NULL, NULL, NULL, '2020-11-19 11:21:59'),
(32, 'map_provider', 'advance', 'gmap', NULL, 1, 18, NULL, NULL, '2022-01-09 23:37:21'),
(33, 'map_gmap_key', 'advance', '', NULL, 1, 18, NULL, NULL, '2022-01-09 23:37:21'),
(34, 'g_offline_payment_enable', 'payment', '', NULL, 1, NULL, NULL, NULL, '2020-11-19 11:21:59'),
(35, 'g_offline_payment_name', 'payment', 'Offline Payment', NULL, 1, NULL, NULL, NULL, '2020-11-19 11:21:59'),
(36, 'date_format', 'general', 'd/m/Y', NULL, 1, 18, NULL, NULL, '2021-12-06 21:32:20'),
(37, 'site_title', 'general', 'Työkokeilu - Find a Job', NULL, 1, 18, NULL, NULL, '2021-12-29 15:34:24'),
(38, 'site_timezone', 'general', 'Europe/Helsinki', NULL, 1, 18, NULL, NULL, '2021-12-06 21:32:20'),
(39, 'site_title', 'general', 'Booking Core', NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'email_header', 'general', '', NULL, 18, 18, NULL, NULL, '2021-12-24 14:12:09'),
(41, 'email_footer', 'general', '', NULL, 18, 18, NULL, NULL, '2021-12-24 14:12:09'),
(42, 'enable_mail_user_registered', 'user', '1', NULL, 1, 18, NULL, NULL, '2021-12-31 12:57:23'),
(43, 'user_content_email_registered', 'user', '<h1 style=\"text-align: center;\">Welcome!</h1>\r\n<h3>Hello&nbsp;</h3>\r\n<p>Thank you for signing up with Ty&ouml;kokeilu! We hope you enjoy your time with us.</p>\r\n<p>Regards,</p>\r\n<p>Ty&ouml;kokeilu</p>', NULL, 1, 18, NULL, NULL, '2022-01-06 09:03:37'),
(44, 'admin_enable_mail_user_registered', 'user', '1', NULL, 1, 18, NULL, NULL, '2021-12-31 12:57:24'),
(45, 'admin_content_email_user_registered', 'user', '<h3>Hello Administrator</h3>\r\n<p>We have new registration</p>\r\n<p>Email: [email]</p>\r\n<p>Regards,</p>\r\n<p>Ty&ouml;kokeilu</p>', NULL, 1, 18, NULL, NULL, '2022-01-03 13:58:23'),
(46, 'user_content_email_forget_password', 'user', '<h1>Hello!</h1>\r\n<p>You are receiving this email because we received a password reset request for your account.</p>\r\n<p style=\"text-align: center;\">[button_reset_password]</p>\r\n<p>This password reset link expire in 60 minutes.</p>\r\n<p>If you did not request a password reset, no further action is required.</p>\r\n<p>Regards,</p>\r\n<p>Ty&ouml;kokeilu</p>', NULL, 1, 18, NULL, NULL, '2022-01-03 13:58:23'),
(47, 'email_driver', 'email', 'smtp', NULL, 18, 18, NULL, NULL, '2021-12-30 18:03:08'),
(48, 'email_host', 'email', 'smtp.googlemail.com', NULL, 18, 18, NULL, NULL, '2021-12-24 14:13:13'),
(49, 'email_port', 'email', '587', NULL, 18, 18, NULL, NULL, '2021-12-24 14:13:13'),
(50, 'email_encryption', 'email', 'tls', NULL, 18, 18, NULL, NULL, '2021-12-31 07:34:29'),
(51, 'email_username', 'email', 'contact@n2rtechnologies.com', NULL, 18, 18, NULL, NULL, '2021-12-30 16:45:51'),
(52, 'email_password', 'email', '7dqD46?EjX', NULL, 18, 18, NULL, NULL, '2021-12-24 14:13:13'),
(53, 'email_mailgun_domain', 'email', '', NULL, 18, 18, NULL, NULL, '2021-12-24 14:13:13'),
(54, 'email_mailgun_secret', 'email', '', NULL, 18, 18, NULL, NULL, '2021-12-24 14:13:13'),
(55, 'email_mailgun_endpoint', 'email', 'api.mailgun.net', NULL, 18, 18, NULL, NULL, '2021-12-24 14:13:13'),
(56, 'email_postmark_token', 'email', '', NULL, 18, 18, NULL, NULL, '2021-12-24 14:13:13'),
(57, 'email_ses_key', 'email', '', NULL, 18, 18, NULL, NULL, '2021-12-24 14:13:13'),
(58, 'email_ses_secret', 'email', '', NULL, 18, 18, NULL, NULL, '2021-12-24 14:13:13'),
(59, 'email_ses_region', 'email', 'us-east-1', NULL, 18, 18, NULL, NULL, '2021-12-24 14:13:13'),
(60, 'email_sparkpost_secret', 'email', '', NULL, 18, 18, NULL, NULL, '2021-12-24 14:13:13'),
(61, 'booking_enquiry_for_hotel', 'enquiry', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'booking_enquiry_for_tour', 'enquiry', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'booking_enquiry_for_space', 'enquiry', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'booking_enquiry_for_car', 'enquiry', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'booking_enquiry_for_event', 'enquiry', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'booking_enquiry_type', 'enquiry', 'booking_and_enquiry', NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'booking_enquiry_enable_mail_to_vendor', 'enquiry', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'booking_enquiry_mail_to_vendor_content', 'enquiry', '<h3>Hello [vendor_name]</h3>\n                            <p>You get new inquiry request from [email]</p>\n                            <p>Name :[name]</p>\n                            <p>Emai:[email]</p>\n                            <p>Phone:[phone]</p>\n                            <p>Content:[note]</p>\n                            <p>Service:[service_link]</p>\n                            <p>Regards,</p>\n                            <p>Booking Core</p>\n                            </div>', NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'booking_enquiry_enable_mail_to_admin', 'enquiry', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'booking_enquiry_mail_to_admin_content', 'enquiry', '<h3>Hello Administrator</h3>\n                            <p>You get new inquiry request from [email]</p>\n                            <p>Name :[name]</p>\n                            <p>Emai:[email]</p>\n                            <p>Phone:[phone]</p>\n                            <p>Content:[note]</p>\n                            <p>Service:[service_link]</p>\n                            <p>Vendor:[vendor_link]</p>\n                            <p>Regards,</p>\n                            <p>Booking Core</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'vendor_enable', 'vendor', '1', NULL, 18, NULL, NULL, NULL, '2022-01-04 11:45:34'),
(72, 'vendor_commission_type', 'vendor', 'percent', NULL, 18, NULL, NULL, NULL, '2022-01-04 11:45:34'),
(73, 'vendor_commission_amount', 'vendor', '10', NULL, 18, NULL, NULL, NULL, '2022-01-04 11:45:34'),
(74, 'vendor_role', 'vendor', '1', NULL, 18, NULL, NULL, NULL, '2022-01-04 11:45:34'),
(75, 'role_verify_fields', 'vendor', '{\"phone\":{\"name\":\"Phone\",\"type\":\"text\",\"roles\":[\"1\",\"2\",\"3\"],\"required\":null,\"order\":null,\"icon\":\"fa fa-phone\"},\"id_card\":{\"name\":\"ID Card\",\"type\":\"file\",\"roles\":[\"1\",\"2\",\"3\"],\"required\":\"1\",\"order\":\"0\",\"icon\":\"fa fa-id-card\"},\"trade_license\":{\"name\":\"Trade License\",\"type\":\"multi_files\",\"roles\":[\"1\",\"3\"],\"required\":\"1\",\"order\":\"0\",\"icon\":\"fa fa-copyright\"}}', NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'enable_mail_vendor_registered', 'vendor', '1', NULL, 18, NULL, NULL, NULL, '2022-01-04 11:45:34'),
(77, 'vendor_content_email_registered', 'vendor', '<h1 style=\"text-align: center;\">Welcome!</h1>\r\n<h3>Hello [first_name] [last_name]</h3>\r\n<p>Thank you for signing up with Booking Core! We hope you enjoy your time with us.</p>\r\n<p>Regards,</p>\r\n<p>Booking Core</p>', NULL, 18, NULL, NULL, NULL, '2022-01-04 11:45:34'),
(78, 'admin_enable_mail_vendor_registered', 'vendor', '1', NULL, 18, NULL, NULL, NULL, '2022-01-04 11:45:34'),
(79, 'admin_content_email_vendor_registered', 'vendor', '<h3>Hello Administrator</h3>\r\n<p>An user has been registered as Vendor. Please check the information bellow:</p>\r\n<p>Full name: [first_name] [last_name]</p>\r\n<p>Email: [email]</p>\r\n<p>Registration date: [created_at]</p>\r\n<p>You can approved the request here: [link_approved]</p>\r\n<p>Regards,</p>\r\n<p>Booking Core</p>', NULL, 18, NULL, NULL, NULL, '2022-01-04 11:45:34'),
(80, 'cookie_agreement_enable', 'advance', '', NULL, 1, 18, NULL, NULL, '2022-01-09 23:38:12'),
(81, 'cookie_agreement_button_text', 'advance', 'Got it', NULL, 1, 18, NULL, NULL, '2022-01-09 23:37:22'),
(82, 'cookie_agreement_content', 'advance', '<p>This website requires cookies to provide all of its features. By using our website, you agree to our use of cookies. <a href=\"#\">More info</a></p>', NULL, 1, 18, NULL, NULL, '2022-01-09 23:37:22'),
(83, 'logo_invoice_id', 'booking', '', NULL, 18, NULL, NULL, NULL, '2021-11-23 22:09:42'),
(84, 'invoice_company_info', 'booking', '', NULL, 18, NULL, NULL, NULL, '2021-11-23 22:09:42'),
(85, 'news_page_list_title', 'news', 'News', NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'news_page_list_banner', 'news', '121', NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'news_sidebar', 'news', '[{\"title\":null,\"content\":null,\"type\":\"search_form\"},{\"title\":\"About Us\",\"content\":\"Nam dapibus nisl vitae elit fringilla rutrum. Aenean sollicitudin, erat a elementum rutrum, neque sem pretium metus, quis mollis nisl nunc et massa\",\"type\":\"content_text\"},{\"title\":\"Recent News\",\"content\":null,\"type\":\"recent_news\"},{\"title\":\"Categories\",\"content\":null,\"type\":\"category\"},{\"title\":\"Tags\",\"content\":null,\"type\":\"tag\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'tour_page_search_title', 'tour', 'Search for tour', NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'tour_page_limit_item', 'tour', '9', NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'tour_page_search_banner', 'tour', '20', NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'tour_layout_search', 'tour', 'normal', NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'tour_enable_review', 'tour', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'tour_review_approved', 'tour', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'tour_review_stats', 'tour', '[{\"title\":\"Service\"},{\"title\":\"Organization\"},{\"title\":\"Friendliness\"},{\"title\":\"Area Expert\"},{\"title\":\"Safety\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'tour_booking_buyer_fees', 'tour', '[{\"name\":\"Service fee\",\"desc\":\"This helps us run our platform and offer services like 24\\/7 support on your trip.\",\"name_ja\":\"\\u30b5\\u30fc\\u30d3\\u30b9\\u6599\",\"desc_ja\":\"\\u3053\\u308c\\u306b\\u3088\\u308a\\u3001\\u5f53\\u793e\\u306e\\u30d7\\u30e9\\u30c3\\u30c8\\u30d5\\u30a9\\u30fc\\u30e0\\u3092\\u5b9f\\u884c\\u3057\\u3001\\u65c5\\u884c\\u4e2d\\u306b\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'tour_map_search_fields', 'tour', '[{\"field\":\"location\",\"attr\":null,\"position\":\"1\"},{\"field\":\"category\",\"attr\":null,\"position\":\"2\"},{\"field\":\"date\",\"attr\":null,\"position\":\"3\"},{\"field\":\"price\",\"attr\":null,\"position\":\"4\"},{\"field\":\"advance\",\"attr\":null,\"position\":\"5\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'tour_search_fields', 'tour', '[{\"title\":\"Location\",\"field\":\"location\",\"size\":\"6\",\"position\":\"1\"},{\"title\":\"From - To\",\"field\":\"date\",\"size\":\"6\",\"position\":\"2\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'space_page_search_title', 'space', 'Search for space', NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'space_page_limit_item', 'space', '9', NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'space_page_search_banner', 'space', '62', NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'space_layout_search', 'space', 'normal', NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'space_enable_review', 'space', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'space_review_approved', 'space', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'space_review_stats', 'space', '[{\"title\":\"Sleep\"},{\"title\":\"Location\"},{\"title\":\"Service\"},{\"title\":\"Clearness\"},{\"title\":\"Rooms\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'space_booking_buyer_fees', 'space', '[{\"name\":\"Cleaning fee\",\"desc\":\"One-time fee charged by host to cover the cost of cleaning their space.\",\"name_ja\":\"\\u30af\\u30ea\\u30fc\\u30cb\\u30f3\\u30b0\\u4ee3\",\"desc_ja\":\"\\u30b9\\u30da\\u30fc\\u30b9\\u3092\\u6383\\u9664\\u3059\\u308b\\u8cbb\\u7528\\u3092\\u30db\\u30b9\\u30c8\\u304c\\u8acb\\u6c42\\u3059\\u308b1\\u56de\\u9650\\u308a\\u306e\\u6599\\u91d1\\u3002\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Service fee\",\"desc\":\"This helps us run our platform and offer services like 24\\/7 support on your trip.\",\"name_ja\":\"\\u30b5\\u30fc\\u30d3\\u30b9\\u6599\",\"desc_ja\":\"\\u3053\\u308c\\u306b\\u3088\\u308a\\u3001\\u5f53\\u793e\\u306e\\u30d7\\u30e9\\u30c3\\u30c8\\u30d5\\u30a9\\u30fc\\u30e0\\u3092\\u5b9f\\u884c\\u3057\\u3001\\u65c5\\u884c\\u4e2d\\u306b\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'space_map_search_fields', 'space', '[{\"field\":\"location\",\"attr\":null,\"position\":\"1\"},{\"field\":\"attr\",\"attr\":\"3\",\"position\":\"2\"},{\"field\":\"date\",\"attr\":null,\"position\":\"3\"},{\"field\":\"price\",\"attr\":null,\"position\":\"4\"},{\"field\":\"advance\",\"attr\":null,\"position\":\"5\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'space_search_fields', 'tour', '[{\"title\":\"Location\",\"field\":\"location\",\"size\":\"4\",\"position\":\"1\"},{\"title\":\"From - To\",\"field\":\"date\",\"size\":\"4\",\"position\":\"2\"},{\"title\":\"Guests\",\"field\":\"guests\",\"size\":\"4\",\"position\":\"3\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'hotel_page_search_title', 'job', 'Search for Job', NULL, 1, NULL, NULL, NULL, '2021-01-09 20:49:26'),
(109, 'hotel_page_limit_item', 'job', '9', NULL, 1, NULL, NULL, NULL, '2021-01-09 20:49:27'),
(110, 'hotel_page_search_banner', 'job', '', NULL, 1, NULL, NULL, NULL, '2021-01-09 20:49:26'),
(111, 'hotel_layout_item_search', 'job', 'list', NULL, 1, NULL, NULL, NULL, '2021-01-09 20:49:26'),
(112, 'hotel_attribute_show_in_listing_page', 'job', '6', NULL, 1, NULL, NULL, NULL, '2021-01-09 20:49:27'),
(113, 'hotel_layout_search', 'job', 'normal', NULL, 1, NULL, NULL, NULL, '2021-01-09 20:49:26'),
(114, 'hotel_enable_review', 'job', '1', NULL, 1, NULL, NULL, NULL, '2021-01-09 20:49:27'),
(115, 'hotel_review_approved', 'job', '', NULL, 1, NULL, NULL, NULL, '2021-01-09 20:49:27'),
(116, 'hotel_review_stats', 'job', '[{\"title\":\"Service\"},{\"title\":\"Organization\"},{\"title\":\"Friendliness\"},{\"title\":\"Area Expert\"},{\"title\":\"Safety\"}]', NULL, 1, NULL, NULL, NULL, '2021-01-09 20:49:27'),
(117, 'hotel_booking_buyer_fees', 'job', '[{\"name\":\"Service fee\",\"desc\":\"This helps us run our platform and offer services like 24\\/7 support on your trip.\",\"name_fi\":null,\"desc_fi\":null,\"price\":\"100\",\"unit\":\"fixed\",\"type\":\"one_time\"}]', NULL, 1, NULL, NULL, NULL, '2021-01-09 20:49:27'),
(118, 'hotel_map_search_fields', 'job', '[{\"field\":\"location\",\"attr\":null,\"position\":\"1\"},{\"field\":\"attr\",\"attr\":\"7\",\"position\":\"2\"},{\"field\":\"date\",\"attr\":null,\"position\":\"3\"},{\"field\":\"price\",\"attr\":null,\"position\":\"4\"},{\"field\":\"advance\",\"attr\":null,\"position\":\"5\"}]', NULL, 1, NULL, NULL, NULL, '2021-01-09 20:49:27'),
(119, 'hotel_search_fields', 'job', '[{\"title\":\"Location\",\"title_fi\":null,\"field\":\"location\",\"size\":\"4\",\"position\":\"1\"},{\"title\":\"Check In - Out\",\"title_fi\":null,\"field\":\"date\",\"size\":\"4\",\"position\":\"2\"},{\"title\":\"Guests\",\"title_fi\":null,\"field\":\"guests\",\"size\":\"4\",\"position\":\"3\"}]', NULL, 1, NULL, NULL, NULL, '2021-01-09 20:49:27'),
(120, 'car_page_search_title', 'car', 'Search for car', NULL, NULL, NULL, NULL, NULL, NULL),
(121, 'car_page_limit_item', 'car', '9', NULL, NULL, NULL, NULL, NULL, NULL),
(122, 'car_page_search_banner', 'car', '62', NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'car_layout_search', 'car', 'normal', NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'car_enable_review', 'car', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(125, 'car_review_approved', 'car', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'car_review_stats', 'car', '[{\"title\":\"Equipment\"},{\"title\":\"Comfortable\"},{\"title\":\"Climate Control\"},{\"title\":\"Facility\"},{\"title\":\"Aftercare\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'car_booking_buyer_fees', 'car', '[{\"name\":\"Equipment fee\",\"desc\":\"One-time fee charged by host to cover the cost of cleaning their space.\",\"name_ja\":\"\\u30af\\u30ea\\u30fc\\u30cb\\u30f3\\u30b0\\u4ee3\",\"desc_ja\":\"\\u30b9\\u30da\\u30fc\\u30b9\\u3092\\u6383\\u9664\\u3059\\u308b\\u8cbb\\u7528\\u3092\\u30db\\u30b9\\u30c8\\u304c\\u8acb\\u6c42\\u3059\\u308b1\\u56de\\u9650\\u308a\\u306e\\u6599\\u91d1\\u3002\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Facility fee\",\"desc\":\"This helps us run our platform and offer services like 24\\/7 support on your trip.\",\"name_ja\":\"\\u30b5\\u30fc\\u30d3\\u30b9\\u6599\",\"desc_ja\":\"\\u3053\\u308c\\u306b\\u3088\\u308a\\u3001\\u5f53\\u793e\\u306e\\u30d7\\u30e9\\u30c3\\u30c8\\u30d5\\u30a9\\u30fc\\u30e0\\u3092\\u5b9f\\u884c\\u3057\\u3001\\u65c5\\u884c\\u4e2d\\u306b\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(128, 'car_map_search_fields', 'car', '[{\"field\":\"location\",\"attr\":null,\"position\":\"1\"},{\"field\":\"attr\",\"attr\":\"9\",\"position\":\"2\"},{\"field\":\"date\",\"attr\":null,\"position\":\"3\"},{\"field\":\"price\",\"attr\":null,\"position\":\"4\"},{\"field\":\"advance\",\"attr\":null,\"position\":\"5\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(129, 'car_search_fields', 'car', '[{\"title\":\"Location\",\"field\":\"location\",\"size\":\"6\",\"position\":\"1\"},{\"title\":\"From - To\",\"field\":\"date\",\"size\":\"6\",\"position\":\"2\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(130, 'event_page_search_title', 'event', 'Search for event', NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'event_page_limit_item', 'event', '9', NULL, NULL, NULL, NULL, NULL, NULL),
(132, 'event_page_search_banner', 'event', '161', NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'event_layout_search', 'event', 'normal', NULL, NULL, NULL, NULL, NULL, NULL),
(134, 'event_enable_review', 'event', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(135, 'event_review_approved', 'event', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(136, 'event_review_stats', 'event', '[{\"title\":\"Service\"},{\"title\":\"Organization\"},{\"title\":\"Friendliness\"},{\"title\":\"Area Expert\"},{\"title\":\"Safety\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'event_booking_buyer_fees', 'event', '[{\"name\":\"Service fee\",\"desc\":\"This helps us run our platform and offer services like 24\\/7 support on your trip.\",\"name_ja\":\"\\u30b5\\u30fc\\u30d3\\u30b9\\u6599\",\"desc_ja\":\"\\u3053\\u308c\\u306b\\u3088\\u308a\\u3001\\u5f53\\u793e\\u306e\\u30d7\\u30e9\\u30c3\\u30c8\\u30d5\\u30a9\\u30fc\\u30e0\\u3092\\u5b9f\\u884c\\u3057\\u3001\\u65c5\\u884c\\u4e2d\\u306b\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'event_map_search_fields', 'event', '[{\"field\":\"location\",\"attr\":null,\"position\":\"1\"},{\"field\":\"category\",\"attr\":null,\"position\":\"2\"},{\"field\":\"date\",\"attr\":null,\"position\":\"3\"},{\"field\":\"price\",\"attr\":null,\"position\":\"4\"},{\"field\":\"advance\",\"attr\":null,\"position\":\"5\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(139, 'event_search_fields', 'event', '[{\"title\":\"Location\",\"field\":\"location\",\"size\":\"6\",\"position\":\"1\"},{\"title\":\"From - To\",\"field\":\"date\",\"size\":\"6\",\"position\":\"2\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(140, 'update_to_110', NULL, '1', NULL, NULL, NULL, NULL, '2020-11-18 06:20:19', '2020-11-18 06:20:19'),
(141, 'update_to_120', NULL, '1', NULL, NULL, NULL, NULL, '2020-11-18 06:20:20', '2020-11-18 06:20:20'),
(142, 'update_to_130', NULL, '1', NULL, NULL, NULL, NULL, '2020-11-18 06:20:20', '2020-11-18 06:20:20'),
(143, 'update_to_140', NULL, '1', NULL, NULL, NULL, NULL, '2020-11-18 06:20:21', '2020-11-18 06:20:21'),
(144, 'update_to_150', NULL, '1', NULL, NULL, NULL, NULL, '2020-11-18 06:20:21', '2020-11-18 06:20:21'),
(145, 'update_to_151', NULL, '1', NULL, NULL, NULL, NULL, '2020-11-18 06:20:21', '2020-11-18 06:20:21'),
(146, 'update_to_160', NULL, '1', NULL, NULL, NULL, NULL, '2020-11-18 06:20:21', '2020-11-18 06:20:21'),
(147, 'booking_enquiry_enable_mail_to_vendor_content', 'enquiry', '<h3>Hello [vendor_name]</h3>\r\n                            <p>You get new inquiry request from [email]</p>\r\n                            <p>Name :[name]</p>\r\n                            <p>Emai:[email]</p>\r\n                            <p>Phone:[phone]</p>\r\n                            <p>Content:[note]</p>\r\n                            <p>Service:[service_link]</p>\r\n                            <p>Regards,</p>\r\n                            <p>Booking Core</p>\r\n                            </div>', NULL, NULL, NULL, NULL, NULL, NULL),
(148, 'booking_enquiry_enable_mail_to_admin_content', 'enquiry', '<h3>Hello Administrator</h3>\r\n                            <p>You get new inquiry request from [email]</p>\r\n                            <p>Name :[name]</p>\r\n                            <p>Emai:[email]</p>\r\n                            <p>Phone:[phone]</p>\r\n                            <p>Content:[note]</p>\r\n                            <p>Service:[service_link]</p>\r\n                            <p>Vendor:[vendor_link]</p>\r\n                            <p>Regards,</p>\r\n                            <p>Booking Core</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(149, 'update_to_170', NULL, '1', NULL, NULL, NULL, NULL, '2020-11-18 06:20:22', '2020-11-18 06:20:22'),
(150, 'check_db_engine', NULL, '1', NULL, NULL, NULL, NULL, '2020-11-18 06:20:22', '2020-11-18 06:20:22'),
(151, 'wallet_credit_exchange_rate', NULL, '1', NULL, NULL, NULL, NULL, '2020-11-18 06:20:23', '2020-11-18 06:20:23'),
(152, 'wallet_deposit_rate', NULL, '1', NULL, NULL, NULL, NULL, '2020-11-18 06:20:23', '2020-11-18 06:20:23'),
(153, 'wallet_deposit_type', NULL, 'list', NULL, NULL, NULL, NULL, '2020-11-18 06:20:23', '2020-11-18 06:20:23'),
(154, 'wallet_deposit_lists', NULL, '[{\"name\":\"100$\",\"amount\":100,\"credit\":100},{\"name\":\"Bonus 10%\",\"amount\":500,\"credit\":550},{\"name\":\"Bonus 15%\",\"amount\":1000,\"credit\":1150}]', NULL, NULL, NULL, NULL, '2020-11-18 06:20:23', '2020-11-18 06:20:23'),
(155, 'wallet_new_deposit_admin_subject', NULL, 'New credit purchase', NULL, NULL, NULL, NULL, '2020-11-18 06:20:23', '2020-11-18 06:20:23'),
(156, 'wallet_new_deposit_admin_content', NULL, '\n            <h1>Hello [first_name]!</h1>\n            <p>New order has been made:</p>\n            <p>User ID: [create_user]</p>\n            <p>Amount: [amount]</p>\n            <p>Credit: [credit]</p>\n            <p>Gateway: [payment_gateway]</p>\n            <p>Regards,<br>Booking Core</p>', NULL, NULL, NULL, NULL, '2020-11-18 06:20:23', '2020-11-18 06:20:23'),
(157, 'wallet_new_deposit_customer_subject', NULL, 'Thank you for your purchasing', NULL, NULL, NULL, NULL, '2020-11-18 06:20:23', '2020-11-18 06:20:23'),
(158, 'wallet_new_deposit_customer_content', NULL, '\n            <h1>Hello [first_name]!</h1>\n            <p>New order has been made:</p>\n            <p>User ID: [create_user]</p>\n            <p>Amount: [amount]</p>\n            <p>Credit: [credit]</p>\n            <p>Gateway: [payment_gateway]</p>\n            <p>Regards,<br>Booking Core</p>', NULL, NULL, NULL, NULL, '2020-11-18 06:20:23', '2020-11-18 06:20:23'),
(159, 'wallet_update_deposit_admin_subject', NULL, 'Credit purchase updated', NULL, NULL, NULL, NULL, '2020-11-18 06:20:23', '2020-11-18 06:20:23'),
(160, 'wallet_update_deposit_admin_content', NULL, '\n            <h1>Hello [first_name]!</h1>\n            <p>Order has been updated:</p>\n            <p>Order Status: <strong>[status_name]</strong></p>\n            <p>User ID: [create_user]</p>\n            <p>Amount: [amount]</p>\n            <p>Credit: [credit]</p>\n            <p>Gateway: [payment_gateway]</p>\n            <p>Regards,<br>Booking Core</p>', NULL, NULL, NULL, NULL, '2020-11-18 06:20:23', '2020-11-18 06:20:23'),
(161, 'wallet_update_deposit_customer_subject', NULL, 'Your credit purchase updated', NULL, NULL, NULL, NULL, '2020-11-18 06:20:23', '2020-11-18 06:20:23'),
(162, 'wallet_update_deposit_customer_content', NULL, '\n            <h1>Hello [first_name]!</h1>\n            <p>Order has been updated:</p>\n            <p>Order Status: <strong>[status_name]</strong></p>\n            <p>User ID: [create_user]</p>\n            <p>Amount: [amount]</p>\n            <p>Credit: [credit]</p>\n            <p>Gateway: [payment_gateway]</p>\n            <p>Regards,<br>Booking Core</p>', NULL, NULL, NULL, NULL, '2020-11-18 06:20:23', '2020-11-18 06:20:23'),
(163, 'update_to_181', NULL, '1', NULL, NULL, NULL, NULL, '2020-11-18 06:20:23', '2020-11-18 06:20:23'),
(164, 'update_to_182', NULL, '1', NULL, NULL, NULL, NULL, '2020-11-18 06:20:23', '2020-11-18 06:20:23'),
(165, 'google_client_secret', 'advance', '', NULL, 1, 18, NULL, '2020-11-18 06:57:57', '2022-01-09 23:37:21'),
(166, 'google_client_id', 'advance', '', NULL, 1, 18, NULL, '2020-11-18 06:57:57', '2022-01-09 23:37:21'),
(167, 'google_enable', 'advance', '', NULL, 1, 18, NULL, '2020-11-18 06:57:57', '2022-01-20 22:43:45'),
(168, 'facebook_client_secret', 'advance', '', NULL, 1, 18, NULL, '2020-11-18 06:57:57', '2022-01-09 23:37:21'),
(169, 'facebook_client_id', 'advance', '', NULL, 1, 18, NULL, '2020-11-18 06:57:57', '2022-01-09 23:37:21'),
(170, 'facebook_enable', 'advance', '', NULL, 1, 18, NULL, '2020-11-18 06:57:57', '2022-01-20 22:43:45'),
(171, 'twitter_enable', 'advance', '', NULL, 1, 18, NULL, '2020-11-18 06:57:57', '2022-01-09 23:37:22'),
(172, 'twitter_client_id', 'advance', '', NULL, 1, 18, NULL, '2020-11-18 06:57:57', '2022-01-09 23:37:22'),
(173, 'twitter_client_secret', 'advance', '', NULL, 1, 18, NULL, '2020-11-18 06:57:57', '2022-01-09 23:37:22'),
(174, 'recaptcha_enable', 'advance', '', NULL, 1, 18, NULL, '2020-11-18 06:57:57', '2022-01-09 23:37:22'),
(175, 'recaptcha_api_key', 'advance', '', NULL, 1, 18, NULL, '2020-11-18 06:57:57', '2022-01-09 23:37:22'),
(176, 'recaptcha_api_secret', 'advance', '', NULL, 1, 18, NULL, '2020-11-18 06:57:57', '2022-01-09 23:37:22'),
(177, 'head_scripts', 'advance', '', NULL, 1, 18, NULL, '2020-11-18 06:57:57', '2022-01-09 23:37:22'),
(178, 'body_scripts', 'advance', '', NULL, 1, 18, NULL, '2020-11-18 06:57:57', '2022-01-09 23:37:22'),
(179, 'footer_scripts', 'advance', '', NULL, 1, 18, NULL, '2020-11-18 06:57:57', '2022-01-09 23:37:22'),
(180, 'size_unit', 'advance', 'm2', NULL, 1, 18, NULL, '2020-11-18 06:57:57', '2022-01-09 23:37:22'),
(181, 'site_desc', 'general', '', NULL, 1, 18, NULL, '2020-11-18 13:51:52', '2021-12-06 21:32:20'),
(182, 'site_first_day_of_the_weekin_calendar', 'general', '1', NULL, 1, 18, NULL, '2020-11-18 13:51:52', '2021-12-06 21:32:20'),
(183, 'enable_rtl', 'general', '', NULL, 1, 18, NULL, '2020-11-18 13:51:52', '2021-12-06 21:32:20'),
(184, 'g_offline_payment_name_fi', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 11:21:59', '2020-11-19 11:21:59'),
(185, 'g_offline_payment_logo_id', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 11:21:59', '2020-11-19 11:21:59'),
(186, 'g_offline_payment_html', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 11:21:59', '2020-11-19 11:21:59'),
(187, 'g_offline_payment_html_fi', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 11:21:59', '2020-11-19 11:21:59'),
(188, 'g_paypal_enable', 'payment', '1', NULL, 1, NULL, NULL, '2020-11-19 11:21:59', '2020-11-19 11:21:59'),
(189, 'g_paypal_name', 'payment', 'Paypal', NULL, 1, NULL, NULL, '2020-11-19 11:21:59', '2020-11-19 11:21:59'),
(190, 'g_paypal_name_fi', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 11:21:59', '2020-11-19 11:21:59'),
(191, 'g_paypal_logo_id', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 11:21:59', '2020-11-19 11:21:59'),
(192, 'g_paypal_html', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 11:21:59', '2020-11-19 11:21:59'),
(193, 'g_paypal_html_fi', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 11:21:59', '2020-11-19 11:21:59'),
(194, 'g_paypal_test', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 11:21:59', '2020-11-19 11:21:59'),
(195, 'g_paypal_convert_to', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 11:21:59', '2020-11-19 11:21:59'),
(196, 'g_paypal_exchange_rate', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 11:21:59', '2020-11-19 11:21:59'),
(197, 'g_paypal_test_account', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 11:21:59', '2020-11-19 11:21:59'),
(198, 'g_paypal_test_client_id', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 11:21:59', '2020-11-19 11:21:59'),
(199, 'g_paypal_test_client_secret', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 11:21:59', '2020-11-19 11:21:59'),
(200, 'g_paypal_account', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 11:21:59', '2020-11-19 11:21:59'),
(201, 'g_paypal_client_id', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 11:21:59', '2020-11-19 11:21:59'),
(202, 'g_paypal_client_secret', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 11:21:59', '2020-11-19 11:21:59'),
(203, 'g_stripe_enable', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 11:21:59', '2020-11-19 11:21:59'),
(204, 'g_stripe_name', 'payment', 'Stripe', NULL, 1, NULL, NULL, '2020-11-19 11:21:59', '2020-11-19 11:21:59'),
(205, 'g_stripe_name_fi', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 11:21:59', '2020-11-19 11:21:59'),
(206, 'g_stripe_logo_id', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 11:21:59', '2020-11-19 11:21:59'),
(207, 'g_stripe_html', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 11:21:59', '2020-11-19 11:21:59'),
(208, 'g_stripe_html_fi', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 11:21:59', '2020-11-19 11:21:59'),
(209, 'g_stripe_stripe_secret_key', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 11:21:59', '2020-11-19 11:21:59'),
(210, 'g_stripe_stripe_publishable_key', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 11:21:59', '2020-11-19 11:21:59'),
(211, 'g_stripe_stripe_enable_sandbox', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 11:21:59', '2020-11-19 11:21:59'),
(212, 'g_stripe_stripe_test_secret_key', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 11:21:59', '2020-11-19 11:21:59'),
(213, 'g_stripe_stripe_test_publishable_key', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 11:21:59', '2020-11-19 11:21:59'),
(214, 'g_two_checkout_gateway_enable', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 11:21:59', '2020-11-19 11:21:59'),
(215, 'g_two_checkout_gateway_name', 'payment', 'Two Checkout', NULL, 1, NULL, NULL, '2020-11-19 11:21:59', '2020-11-19 11:21:59'),
(216, 'g_two_checkout_gateway_name_fi', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 11:21:59', '2020-11-19 11:21:59'),
(217, 'g_two_checkout_gateway_logo_id', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 11:21:59', '2020-11-19 11:21:59'),
(218, 'g_two_checkout_gateway_html', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 11:21:59', '2020-11-19 11:21:59'),
(219, 'g_two_checkout_gateway_html_fi', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 11:21:59', '2020-11-19 11:21:59'),
(220, 'g_two_checkout_gateway_twocheckout_account_number', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 11:21:59', '2020-11-19 11:21:59'),
(221, 'g_two_checkout_gateway_twocheckout_secret_word', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 11:21:59', '2020-11-19 11:21:59'),
(222, 'g_two_checkout_gateway_twocheckout_enable_sandbox', 'payment', '', NULL, 1, NULL, NULL, '2020-11-19 11:21:59', '2020-11-19 11:21:59'),
(223, 'style_main_color', 'style', '#2c241b', NULL, 1, 18, NULL, '2020-12-02 23:34:06', '2022-01-11 20:17:05'),
(224, 'style_custom_css', 'style', '.listbox .form-control{\r\n    height:auto;\r\n}', NULL, 1, 18, NULL, '2020-12-02 23:34:06', '2022-01-11 20:17:05'),
(225, 'style_typo', 'style', '{\"font_family\":\"Source Sans Pro\",\"color\":null,\"font_size\":null,\"line_height\":null,\"font_weight\":null}', NULL, 1, 18, NULL, '2020-12-02 23:34:06', '2022-01-18 17:15:06'),
(226, 'hotel_disable', 'job', '', NULL, 1, NULL, NULL, '2021-01-09 20:49:26', '2021-01-09 20:49:26'),
(227, 'hotel_location_search_style', 'job', 'normal', NULL, 1, NULL, NULL, '2021-01-09 20:49:27', '2021-01-09 20:49:27'),
(228, 'hotel_enable_review_after_booking', 'job', '', NULL, 1, NULL, NULL, '2021-01-09 20:49:27', '2021-01-09 20:49:27'),
(229, 'hotel_review_number_per_page', 'job', '5', NULL, 1, NULL, NULL, '2021-01-09 20:49:27', '2021-01-09 20:49:27'),
(230, 'hotel_page_list_seo_title', 'job', '', NULL, 1, NULL, NULL, '2021-01-09 20:49:27', '2021-01-09 20:49:27'),
(231, 'hotel_page_list_seo_desc', 'job', '', NULL, 1, NULL, NULL, '2021-01-09 20:49:27', '2021-01-09 20:49:27'),
(232, 'hotel_page_list_seo_image', 'job', '', NULL, 1, NULL, NULL, '2021-01-09 20:49:27', '2021-01-09 20:49:27'),
(233, 'hotel_page_list_seo_share', 'job', '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', NULL, 1, NULL, NULL, '2021-01-09 20:49:27', '2021-01-09 20:49:27'),
(234, 'hotel_vendor_create_service_must_approved_by_admin', 'job', '', NULL, 1, NULL, NULL, '2021-01-09 20:49:27', '2021-01-09 20:49:27'),
(235, 'hotel_allow_vendor_can_change_their_booking_status', 'job', '', NULL, 1, NULL, NULL, '2021-01-09 20:49:27', '2021-01-09 20:49:27'),
(236, 'hotel_allow_review_after_making_completed_booking', 'job', '', NULL, 1, NULL, NULL, '2021-01-09 20:49:27', '2021-01-09 20:49:27'),
(237, 'hotel_deposit_enable', 'job', '', NULL, 1, NULL, NULL, '2021-01-09 20:49:27', '2021-01-09 20:49:27'),
(238, 'hotel_deposit_type', 'job', 'fixed', NULL, 1, NULL, NULL, '2021-01-09 20:49:27', '2021-01-09 20:49:27'),
(239, 'hotel_deposit_amount', 'job', '', NULL, 1, NULL, NULL, '2021-01-09 20:49:27', '2021-01-09 20:49:27'),
(240, 'hotel_deposit_fomular', 'job', 'default', NULL, 1, NULL, NULL, '2021-01-09 20:49:28', '2021-01-09 20:49:28'),
(241, 'job_disable', 'job', '', NULL, 1, 1, NULL, '2021-01-12 04:14:28', '2021-01-12 04:15:17'),
(242, 'job_page_search_title', 'job', '', NULL, 1, 1, NULL, '2021-01-12 04:14:28', '2021-01-12 04:15:17'),
(243, 'job_page_search_banner', 'job', '', NULL, 1, 1, NULL, '2021-01-12 04:14:28', '2021-01-12 04:15:17'),
(244, 'job_layout_search', 'job', '', NULL, 1, 1, NULL, '2021-01-12 04:14:28', '2021-01-12 04:15:17'),
(245, 'job_layout_item_search', 'job', '', NULL, 1, 1, NULL, '2021-01-12 04:14:28', '2021-01-12 04:15:17'),
(246, 'job_attribute_show_in_listing_page', 'job', '', NULL, 1, 1, NULL, '2021-01-12 04:14:28', '2021-01-12 04:15:17'),
(247, 'job_location_search_style', 'job', '', NULL, 1, 1, NULL, '2021-01-12 04:14:28', '2021-01-12 04:15:17'),
(248, 'job_page_limit_item', 'job', '', NULL, 1, 1, NULL, '2021-01-12 04:14:28', '2021-01-12 04:15:17'),
(249, 'job_enable_review', 'job', '', NULL, 1, 1, NULL, '2021-01-12 04:14:28', '2021-01-12 04:15:18'),
(250, 'job_review_approved', 'job', '', NULL, 1, 1, NULL, '2021-01-12 04:14:28', '2021-01-12 04:15:18'),
(251, 'job_enable_review_after_booking', 'job', '', NULL, 1, 1, NULL, '2021-01-12 04:14:28', '2021-01-12 04:15:18'),
(252, 'job_review_number_per_page', 'job', '', NULL, 1, 1, NULL, '2021-01-12 04:14:28', '2021-01-12 04:15:18'),
(253, 'job_review_stats', 'job', '', NULL, 1, 1, NULL, '2021-01-12 04:14:28', '2021-01-12 04:15:18'),
(254, 'job_page_list_seo_title', 'job', '', NULL, 1, 1, NULL, '2021-01-12 04:14:28', '2021-01-12 04:15:18'),
(255, 'job_page_list_seo_desc', 'job', '', NULL, 1, 1, NULL, '2021-01-12 04:14:28', '2021-01-12 04:15:18'),
(256, 'job_page_list_seo_image', 'job', '', NULL, 1, 1, NULL, '2021-01-12 04:14:28', '2021-01-12 04:15:18'),
(257, 'job_page_list_seo_share', 'job', '', NULL, 1, 1, NULL, '2021-01-12 04:14:28', '2021-01-12 04:15:18'),
(258, 'job_booking_buyer_fees', 'job', '', NULL, 1, 1, NULL, '2021-01-12 04:14:28', '2021-01-12 04:15:18'),
(259, 'job_vendor_create_service_must_approved_by_admin', 'job', '', NULL, 1, 1, NULL, '2021-01-12 04:14:28', '2021-01-12 04:15:18'),
(260, 'job_allow_vendor_can_change_their_booking_status', 'job', '', NULL, 1, 1, NULL, '2021-01-12 04:14:28', '2021-01-12 04:15:18'),
(261, 'job_search_fields', 'job', '', NULL, 1, 1, NULL, '2021-01-12 04:14:28', '2021-01-12 04:15:18'),
(262, 'job_map_search_fields', 'job', '', NULL, 1, 1, NULL, '2021-01-12 04:14:28', '2021-01-12 04:15:18'),
(263, 'job_allow_review_after_making_completed_booking', 'job', '', NULL, 1, 1, NULL, '2021-01-12 04:14:28', '2021-01-12 04:15:18'),
(264, 'job_deposit_enable', 'job', '', NULL, 1, 1, NULL, '2021-01-12 04:14:29', '2021-01-12 04:15:18'),
(265, 'job_deposit_type', 'job', '', NULL, 1, 1, NULL, '2021-01-12 04:14:29', '2021-01-12 04:15:18'),
(266, 'job_deposit_amount', 'job', '', NULL, 1, 1, NULL, '2021-01-12 04:14:29', '2021-01-12 04:15:18'),
(267, 'job_deposit_fomular', 'job', '', NULL, 1, 1, NULL, '2021-01-12 04:14:29', '2021-01-12 04:15:18'),
(268, 'user_enable_login_recaptcha', 'user', '', NULL, 1, 18, NULL, '2021-02-06 16:52:18', '2021-12-31 12:57:23'),
(269, 'user_enable_register_recaptcha', 'user', '', NULL, 1, 18, NULL, '2021-02-06 16:52:18', '2021-12-31 12:57:23'),
(270, 'inbox_enable', 'user', '', NULL, 1, 18, NULL, '2021-02-06 16:52:18', '2021-12-31 12:57:24'),
(271, 'subject_email_verify_register_user', 'user', '', NULL, 1, 18, NULL, '2021-02-06 16:52:18', '2021-12-31 12:57:24'),
(272, 'content_email_verify_register_user', 'user', '<h3>Hello,</h3>\r\n<p>[first_name]</p>\r\n<p>Please verify your registration process from here</p>\r\n<p>[button_verify]</p>', NULL, 1, 18, NULL, '2021-02-06 16:52:18', '2021-12-31 12:57:24'),
(273, 'booking_enable_recaptcha', 'booking', '', NULL, 18, NULL, NULL, '2021-11-23 22:09:42', '2021-11-23 22:09:42'),
(274, 'booking_term_conditions', 'booking', '', NULL, 18, NULL, NULL, '2021-11-23 22:09:42', '2021-11-23 22:09:42'),
(275, 'booking_guest_checkout', 'booking', '', NULL, 18, NULL, NULL, '2021-11-23 22:09:42', '2021-11-23 22:09:42'),
(276, 'vendor_auto_approved', 'vendor', '1', NULL, 18, NULL, NULL, '2022-01-04 11:45:34', '2022-01-04 11:45:34'),
(277, 'vendor_show_email', 'vendor', '', NULL, 18, NULL, NULL, '2022-01-04 11:45:34', '2022-01-04 11:45:34'),
(278, 'vendor_show_phone', 'vendor', '', NULL, 18, NULL, NULL, '2022-01-04 11:45:34', '2022-01-04 11:45:34'),
(279, 'vendor_payout_methods', 'vendor', '', NULL, 18, NULL, NULL, '2022-01-04 11:45:34', '2022-01-04 11:45:34'),
(280, 'vendor_payout_booking_status', 'vendor', '', NULL, 18, NULL, NULL, '2022-01-04 11:45:34', '2022-01-04 11:45:34'),
(281, 'vendor_term_conditions', 'vendor', '', NULL, 18, NULL, NULL, '2022-01-04 11:45:34', '2022-01-04 11:45:34'),
(282, 'disable_payout', 'vendor', '', NULL, 18, NULL, NULL, '2022-01-04 11:45:34', '2022-01-04 11:45:34'),
(283, 'site_advertise_banner', 'general', '', NULL, 18, 18, NULL, '2022-01-06 11:36:35', '2022-01-06 19:26:48');

-- --------------------------------------------------------

--
-- Table structure for table `core_subscribers`
--

CREATE TABLE `core_subscribers` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_subscribers`
--

INSERT INTO `core_subscribers` (`id`, `email`, `first_name`, `last_name`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'fdsf2d@dfsd.dsfsd', 'sdsadsa', 'sdasdasd', 1, 1, NULL, '2021-02-24 07:55:28', '2021-02-24 08:02:54'),
(2, 'dfsd@sfas.sdfds', NULL, NULL, 1, NULL, NULL, '2021-02-24 07:56:00', '2021-02-24 07:56:00');

-- --------------------------------------------------------

--
-- Table structure for table `core_tags`
--

CREATE TABLE `core_tags` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint DEFAULT NULL,
  `lang` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_tags`
--

INSERT INTO `core_tags` (`id`, `name`, `slug`, `content`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'park', 'park', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(2, 'National park', 'national-park', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(3, 'Moutain', 'moutain', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(4, 'Travel', 'travel', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(5, 'Summer', 'summer', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05'),
(6, 'Walking', 'walking', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-18 06:20:05', '2020-11-18 06:20:05');

-- --------------------------------------------------------

--
-- Table structure for table `core_tag_translations`
--

CREATE TABLE `core_tag_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `origin_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_templates`
--

CREATE TABLE `core_templates` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type_id` int DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `origin_id` bigint DEFAULT NULL,
  `lang` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_templates`
--

INSERT INTO `core_templates` (`id`, `title`, `content`, `type_id`, `create_user`, `update_user`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Home Page', '[{\"type\":\"form_search_job\",\"name\":\"Job: Form Search\",\"model\":{\"title\":\"\",\"sub_title\":\"\",\"bg_image\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_job_category\",\"name\":\"Job: Category list\",\"model\":{\"title\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_job\",\"name\":\"Job: List Items\",\"model\":{\"title\":\"\",\"number\":6,\"ads_link\":\"www.dorica.fi\",\"ads_txt\":\"\",\"ads_css\":\"\",\"bg_image\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, 18, NULL, NULL, '2020-11-18 06:20:05', '2022-02-06 15:51:30'),
(5, 'Become a vendor', '[{\"type\":\"vendor_register_form\",\"name\":\"Vendor Register Form\",\"model\":{\"title\":\"Become a vendor\",\"desc\":\"Join our community to unlock your greatest asset and welcome paying guests into your home.\",\"youtube\":\"https://www.youtube.com/watch?v=AmZ0WrEaf34\",\"bg_image\":11},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"text\",\"name\":\"Text\",\"model\":{\"content\":\"<h3><strong>How does it work?</strong></h3>\",\"class\":\"text-center\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"Sign up\",\"sub_title\":\"Click edit button to change this text  to change this text\",\"icon_image\":null,\"order\":null},{\"_active\":false,\"title\":\" Add your services\",\"sub_title\":\" Click edit button to change this text  to change this text\",\"icon_image\":null,\"order\":null},{\"_active\":true,\"title\":\"Get bookings\",\"sub_title\":\" Click edit button to change this text  to change this text\",\"icon_image\":null,\"order\":null}],\"style\":\"style2\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"video_player\",\"name\":\"Video Player\",\"model\":{\"title\":\"Share the beauty of your city\",\"youtube\":\"https://www.youtube.com/watch?v=hHUbLv4ThOo\",\"bg_image\":12},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"text\",\"name\":\"Text\",\"model\":{\"content\":\"<h3><strong>Why be a Local Expert</strong></h3>\",\"class\":\"text-center ptb60\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"Earn an additional income\",\"sub_title\":\" Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":15,\"order\":null},{\"_active\":true,\"title\":\"Open your network\",\"sub_title\":\" Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":14,\"order\":null},{\"_active\":true,\"title\":\"Practice your language\",\"sub_title\":\" Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":13,\"order\":null}],\"style\":\"style3\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"faqs\",\"name\":\"FAQ List\",\"model\":{\"title\":\"FAQs\",\"list_item\":[{\"_active\":false,\"title\":\"How will I receive my payment?\",\"sub_title\":\" Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\"},{\"_active\":true,\"title\":\"How do I upload products?\",\"sub_title\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\"},{\"_active\":true,\"title\":\"How do I update or extend my availabilities?\",\"sub_title\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\\n\"},{\"_active\":true,\"title\":\"How do I increase conversion rate?\",\"sub_title\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\"}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, NULL, NULL, NULL, '2020-11-18 06:20:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_template_translations`
--

CREATE TABLE `core_template_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `origin_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_template_translations`
--

INSERT INTO `core_template_translations` (`id`, `origin_id`, `locale`, `title`, `content`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 'ja', 'Home Page', '[{\"type\":\"form_search_all_service\",\"name\":\"Form Search All Service\",\"model\":{\"service_types\":[\"hotel\",\"space\",\"tour\",\"car\",\"sauna\",\"event\",\"boat\",\"activity\",\"accommodation\"],\"title\":\"こんにちは！\",\"sub_title\":\"どこに行きたい？\",\"bg_image\":16,\"title_for_accommodation\":\"\",\"title_for_activity\":\"\",\"title_for_boat\":\"\",\"title_for_car\":\"\",\"title_for_event\":\"\",\"title_for_hotel\":\"\",\"title_for_sauna\":\"\",\"title_for_space\":\"\",\"title_for_tour\":\"\",\"hide_form_search\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"offer_block\",\"name\":\"Offer Block\",\"model\":{\"list_item\":[{\"_active\":true,\"title\":\"特別オファー\",\"desc\":\"最適なホテルを探す<br>\\n20,000以上の物件の価格<br>\\n上の最高の価格\",\"background_image\":17,\"link_title\":\"取引\",\"link_more\":\"#\",\"featured_text\":\"ホリデーセール\"},{\"_active\":true,\"title\":\"ニュースレター\",\"desc\":\"無料で参加して取得 <br>\\nに合わせたニュースレター<br>\\nホット旅行情報。\",\"background_image\":18,\"link_title\":\"サインアップ\",\"link_more\":\"/register\",\"featured_icon\":\"icofont-email\"},{\"_active\":true,\"title\":\"旅行のヒント\",\"desc\":\"旅行の専門家からのヒント <br>\\nあなたの次の<br>\\nより良い。\",\"background_image\":19,\"link_title\":\"サインアップ\",\"link_more\":\"/register\",\"featured_text\":null,\"featured_icon\":\"icofont-island-alt\"}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_hotel\",\"name\":\"Hotel: List Items\",\"model\":{\"title\":\"ベストセラーリスト\",\"desc\":\"思慮深いデザインで高い評価を得ているホテル\",\"number\":4,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":[\"space\",\"hotel\",\"tour\"],\"title\":\"人気の目的地\",\"desc\":\"読者が\",\"number\":6,\"layout\":\"style_4\",\"order\":\"id\",\"order_by\":\"asc\",\"to_location_detail\":\"\",\"custom_ids\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"最高のプロモーションツアー\",\"number\":6,\"style\":\"box_shadow\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\",\"desc\":\"最も人気のある目的地\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_space\",\"name\":\"Space: List Items\",\"model\":{\"title\":\"賃貸物件\",\"desc\":\"思慮深いデザインで高い評価を受けている家\",\"number\":4,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_car\",\"name\":\"Car: List Items\",\"model\":{\"title\":\"Car Trending\",\"desc\":\"Book incredible things to do around the world.\",\"number\":8,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_news\",\"name\":\"News: List Items\",\"model\":{\"title\":\"Read the latest from blog\",\"desc\":\"Contrary to popular belief\",\"number\":6,\"category_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"あなたの街を知？\",\"sub_title\":\"3000以上の都市から2000人以上の地元民と\",\"link_title\":\"ローカルエ\",\"link_more\":\"#\",\"bg_color\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"testimonial\",\"name\":\"List Testimonial\",\"model\":{\"title\":\"私たちの幸せなクライアント\",\"list_item\":[{\"_active\":false,\"name\":\"Eva Hicks\",\"desc\":\"右ずへやん間申ゃ投法けゃイ仙一もと政情ルた食的て代下ずせに丈律ルラモト聞探チト棋90績ム的社ず置攻景リフノケ内兼唱堅ゃフぼ。場ルアハ美\",\"number_star\":5,\"avatar\":1},{\"_active\":false,\"name\":\"Donald Wolf\",\"desc\":\"右ずへやん間申ゃ投法けゃイ仙一もと政情ルた食的て代下ずせに丈律ルラモト聞探チト棋90績ム的社ず置攻景リフノケ内兼唱堅ゃフぼ。場ルアハ美\",\"number_star\":6,\"avatar\":2},{\"_active\":true,\"name\":\"Charlie Harrington\",\"desc\":\"右ずへやん間申ゃ投法けゃイ仙一もと政情ルた食的て代下ずせに丈律ルラモト聞探チト棋90績ム的社ず置攻景リフノケ内兼唱堅ゃフぼ。場ルアハ美\",\"number_star\":5,\"avatar\":3}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', 1, 1, '2020-11-18 06:20:05', '2020-11-18 06:31:12'),
(2, 2, 'ja', 'Home Tour', '[{\"type\":\"form_search_tour\",\"name\":\"Tour: Form Search\",\"model\":{\"title\":\"どこへ行くのが大好き\",\"sub_title\":\"世界中で信じられないようなことを予約しましょう。\",\"bg_image\":20},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":true,\"title\":\"1,000+ ローカルガイド\",\"sub_title\":\"プロのツアーガイドとーガイドとーガイドと 験。 光の\",\"icon_image\":5},{\"_active\":true,\"title\":\"手作りの体験\",\"sub_title\":\"プロのツアーガイドとーガイドとーガイドと 験。 光の\",\"icon_image\":4},{\"_active\":true,\"title\":\"96% 幸せな旅行者\",\"sub_title\":\"プロのツアーガイドとーガイドとーガイドと 験。 光の\",\"icon_image\":6}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"トレンドツアー\",\"number\":5,\"style\":\"carousel\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"title\":\"人気の目的地\",\"number\":5,\"order\":\"id\",\"order_by\":\"desc\",\"service_type\":\"tour\",\"desc\":\"\",\"layout\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"あなたが好きになるローカル体験\",\"number\":8,\"style\":\"normal\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"っていますか？\",\"sub_title\":\"3000以上の都市から2000人以上の地元民と1200人以上の貢献者に参加する\",\"link_title\":\"ローカルエ\",\"link_more\":\"#\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"testimonial\",\"name\":\"List Testimonial\",\"model\":{\"title\":\"私たちの幸せなクライアント\",\"list_item\":[{\"_active\":false,\"name\":\"Eva Hicks\",\"desc\":\"融づ苦佐とき百配ほづあ禁安テクミ真覧チヱフ行乗ぱたば外味ナ演庭コヲ旅見ヨコ優成コネ治確はろね訪来終島抄がん。\",\"number_star\":5,\"avatar\":1},{\"_active\":false,\"name\":\"Donald Wolf\",\"desc\":\"融づ苦佐とき百配ほづあ禁安テクミ真覧チヱフ行乗ぱたば外味ナ演庭コヲ旅見ヨコ優成コネ治確はろね訪来終島抄がん。\",\"number_star\":6,\"avatar\":2},{\"_active\":true,\"name\":\"Charlie Harrington\",\"desc\":\"右ずへやん間申ゃ投法けゃイ仙一もと政情ルた食的て代下ずせに丈律ルラモト聞探チト棋90績ム的社ず置攻景リフノケ内兼唱堅ゃフぼ。場ルアハ美\",\"number_star\":5,\"avatar\":3}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', 1, NULL, '2020-11-18 06:20:05', NULL),
(3, 3, 'ja', 'Home Space', '[{\"type\":\"form_search_space\",\"name\":\"Space: Form Search\",\"model\":{\"title\":\"次のレンタルを探す\",\"sub_title\":\"世界中で信じられないようなことを予約しましょう。\",\"bg_image\":61},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_space\",\"name\":\"Space: List Items\",\"model\":{\"title\":\"おすすめの家\",\"number\":5,\"style\":\"carousel\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"desc\":\"思慮深いデザインで高い評価を受けている家\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"space_term_featured_box\",\"name\":\"Space: Term Featured Box\",\"model\":{\"title\":\"ホームタイプを見つける\",\"desc\":\"これは、読者はその長い既成の事実であります\",\"term_space\":[\"26\",\"27\",\"28\",\"29\",\"30\",\"31\"]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":\"space\",\"title\":\"人気の目的地\",\"number\":6,\"order\":\"id\",\"order_by\":\"desc\",\"layout\":\"style_2\",\"desc\":\"これは、読者はその長い既成の事実であります\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_space\",\"name\":\"Space: List Items\",\"model\":{\"title\":\"賃貸物件\",\"desc\":\"思慮深いデザインで高い評価を受けている家\",\"number\":4,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"っていますか？\",\"sub_title\":\"3000以上の都市から2000人以上の地元民と1200人以上の貢献者に参加する\",\"link_title\":\"ローカルエ\",\"link_more\":\"#\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', 1, NULL, '2020-11-18 06:20:05', NULL),
(4, 4, 'ja', 'Home Hotel', '[{\"type\":\"form_search_hotel\",\"name\":\"Hotel: Form Search\",\"model\":{\"title\":\"最適なホテルを探す\",\"sub_title\":\"20,000以上のプロパティで最高の価格を取得\",\"bg_image\":92},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"20,000以上のプロパティ\",\"sub_title\":\"これは飢饉は常にlobortis交流pede Suspendisseたです\",\"icon_image\":103,\"order\":null},{\"_active\":false,\"title\":\"信頼と安全性\",\"sub_title\":\"これは飢饉は常にlobortis交流pede Suspendisseたです\",\"icon_image\":104,\"order\":null},{\"_active\":false,\"title\":\"ベストプライス保証\",\"sub_title\":\"これは飢饉は常にlobortis交流pede Suspendisseたです\",\"icon_image\":105,\"order\":null}],\"style\":\"normal\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_hotel\",\"name\":\"Hotel: List Items\",\"model\":{\"title\":\"直前予約\",\"desc\":\"思慮深いデザインで高い評価を得ているホテル\",\"number\":5,\"style\":\"carousel\",\"location_id\":\"\",\"order\":\"\",\"order_by\":\"\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":\"hotel\",\"title\":\"人気の目的地\",\"desc\":\"それは長い間確立された事実であり、\",\"number\":6,\"layout\":\"style_3\",\"order\":\"\",\"order_by\":\"\",\"to_location_detail\":false},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"text\",\"name\":\"Text\",\"model\":{\"content\":\"<h2><span style=\\\"color: #1a2b48; font-family: Poppins, sans-serif; font-size: 28px; font-weight: 500; background-color: #ffffff;\\\">ローカルエキスパートになる理由</span></h2>\\n<div><span style=\\\"color: #5e6d77; font-family: Poppins, sans-serif; font-size: 10pt; background-color: #ffffff;\\\">様々な質量マエケナスとその格言不動産</span></div>\\n<div id=\\\"gtx-trans\\\" style=\\\"position: absolute; left: -118px; top: 55.8125px;\\\">\\n<div class=\\\"gtx-trans-icon\\\">&nbsp;</div>\\n</div>\",\"class\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"追加の収入を得る\",\"sub_title\":\"Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":15,\"order\":null},{\"_active\":false,\"title\":\"ネットワークを開く\",\"sub_title\":\"Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":14,\"order\":null},{\"_active\":false,\"title\":\"あなたの言語を練習する\",\"sub_title\":\"Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":13,\"order\":null}],\"style\":\"style3\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_hotel\",\"name\":\"Hotel: List Items\",\"model\":{\"title\":\"ベストセラーリスト\",\"desc\":\"思慮深いデザインで高い評価を得ているホテル\",\"number\":8,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', 1, NULL, '2020-11-18 06:20:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_translations`
--

CREATE TABLE `core_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `locale` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `string` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `parent_id` bigint DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `last_build_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_vendor_plans`
--

CREATE TABLE `core_vendor_plans` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_commission` int NOT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `create_user` bigint DEFAULT NULL,
  `update_user` bigint DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_vendor_plan_meta`
--

CREATE TABLE `core_vendor_plan_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `vendor_plan_id` int NOT NULL,
  `post_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable` tinyint DEFAULT NULL,
  `maximum_create` int DEFAULT NULL,
  `auto_publish` tinyint DEFAULT NULL,
  `commission` int DEFAULT NULL,
  `create_user` bigint DEFAULT NULL,
  `update_user` bigint DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` bigint UNSIGNED NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_extension` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `app_id` int DEFAULT NULL,
  `app_user_id` int DEFAULT NULL,
  `file_width` int DEFAULT NULL,
  `file_height` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `file_name`, `file_path`, `file_size`, `file_type`, `file_extension`, `create_user`, `update_user`, `deleted_at`, `app_id`, `app_user_id`, `file_width`, `file_height`, `created_at`, `updated_at`) VALUES
(1, 'avatar', 'demo/general/avatar.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'avatar-2', 'demo/general/avatar-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'avatar-3', 'demo/general/avatar-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'ico_adventurous', 'demo/general/ico_adventurous.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'ico_localguide', 'demo/general/ico_localguide.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'ico_maps', 'demo/general/ico_maps.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'ico_paymethod', 'demo/general/ico_paymethod.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'logo', 'demo/general/logo.svg', NULL, 'image/svg+xml', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'bg_contact', 'demo/general/bg-contact.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'favicon', 'demo/general/favicon.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'thumb-vendor-register', 'demo/general/thumb-vendor-register.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'bg-video-vendor-register1', 'demo/general/bg-video-vendor-register1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'ico_chat_1', 'demo/general/ico_chat_1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'ico_friendship_1', 'demo/general/ico_friendship_1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'ico_piggy-bank_1', 'demo/general/ico_piggy-bank_1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'home-mix', 'demo/general/home-mix.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'image_home_mix_1', 'demo/general/image_home_mix_1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'image_home_mix_2', 'demo/general/image_home_mix_2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'image_home_mix_3', 'demo/general/image_home_mix_3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'banner-search', 'demo/tour/banner-search.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'tour-1', 'demo/tour/tour-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'tour-2', 'demo/tour/tour-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'tour-3', 'demo/tour/tour-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'tour-4', 'demo/tour/tour-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'tour-5', 'demo/tour/tour-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'tour-6', 'demo/tour/tour-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'tour-7', 'demo/tour/tour-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'tour-8', 'demo/tour/tour-8.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'tour-9', 'demo/tour/tour-9.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'tour-10', 'demo/tour/tour-10.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'tour-11', 'demo/tour/tour-11.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'tour-12', 'demo/tour/tour-12.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'tour-13', 'demo/tour/tour-13.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'tour-14', 'demo/tour/tour-14.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'tour-15', 'demo/tour/tour-15.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'tour-16', 'demo/tour/tour-16.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'gallery-1', 'demo/tour/gallery-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'gallery-2', 'demo/tour/gallery-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'gallery-3', 'demo/tour/gallery-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'gallery-4', 'demo/tour/gallery-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'gallery-5', 'demo/tour/gallery-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'gallery-6', 'demo/tour/gallery-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'gallery-7', 'demo/tour/gallery-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'banner-tour-1', 'demo/tour/banner-detail/banner-tour-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'banner-tour-2', 'demo/tour/banner-detail/banner-tour-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'banner-tour-3', 'demo/tour/banner-detail/banner-tour-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'banner-tour-4', 'demo/tour/banner-detail/banner-tour-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'banner-tour-5', 'demo/tour/banner-detail/banner-tour-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'banner-tour-6', 'demo/tour/banner-detail/banner-tour-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'banner-tour-7', 'demo/tour/banner-detail/banner-tour-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'banner-tour-8', 'demo/tour/banner-detail/banner-tour-8.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'banner-tour-9', 'demo/tour/banner-detail/banner-tour-9.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'banner-tour-10', 'demo/tour/banner-detail/banner-tour-10.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'banner-tour-11', 'demo/tour/banner-detail/banner-tour-11.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'banner-tour-12', 'demo/tour/banner-detail/banner-tour-12.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'banner-tour-13', 'demo/tour/banner-detail/banner-tour-13.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'banner-tour-14', 'demo/tour/banner-detail/banner-tour-14.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'banner-tour-15', 'demo/tour/banner-detail/banner-tour-15.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'banner-tour-16', 'demo/tour/banner-detail/banner-tour-16.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'banner-tour-17', 'demo/tour/banner-detail/banner-tour-17.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'banner-search-space', 'demo/space/banner-search-space.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'banner-search-space-2', 'demo/space/banner-search-space-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'space-1', 'demo/space/space-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'space-2', 'demo/space/space-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'space-3', 'demo/space/space-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'space-4', 'demo/space/space-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'space-5', 'demo/space/space-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'space-6', 'demo/space/space-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'space-7', 'demo/space/space-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'space-8', 'demo/space/space-8.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'space-9', 'demo/space/space-9.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'space-10', 'demo/space/space-10.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'space-11', 'demo/space/space-11.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'space-12', 'demo/space/space-12.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'space-13', 'demo/space/space-13.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'space-gallery-1', 'demo/space/gallery/space-gallery-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'space-gallery-2', 'demo/space/gallery/space-gallery-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'space-gallery-3', 'demo/space/gallery/space-gallery-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'space-gallery-4', 'demo/space/gallery/space-gallery-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'space-gallery-5', 'demo/space/gallery/space-gallery-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'space-gallery-6', 'demo/space/gallery/space-gallery-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'space-gallery-7', 'demo/space/gallery/space-gallery-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'space-single-1', 'demo/space/space-single-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'space-single-2', 'demo/space/space-single-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'space-single-3', 'demo/space/space-single-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'icon-space-box-1', 'demo/space/featured-box/icon-space-box-1.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'icon-space-box-2', 'demo/space/featured-box/icon-space-box-2.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'icon-space-box-3', 'demo/space/featured-box/icon-space-box-3.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'icon-space-box-4', 'demo/space/featured-box/icon-space-box-4.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'icon-space-box-5', 'demo/space/featured-box/icon-space-box-5.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'icon-space-box-6', 'demo/space/featured-box/icon-space-box-6.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'banner-search-hotel', 'demo/hotel/banner-search-hotel.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'hotel-featured-1', 'demo/hotel/hotel-featured-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'hotel-featured-2', 'demo/hotel/hotel-featured-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'hotel-featured-3', 'demo/hotel/hotel-featured-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'hotel-featured-4', 'demo/hotel/hotel-featured-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'hotel-gallery-1', 'demo/hotel/gallery/hotel-gallery-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'hotel-gallery-2', 'demo/hotel/gallery/hotel-gallery-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'hotel-gallery-3', 'demo/hotel/gallery/hotel-gallery-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'hotel-gallery-4', 'demo/hotel/gallery/hotel-gallery-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'hotel-gallery-5', 'demo/hotel/gallery/hotel-gallery-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'hotel-gallery-6', 'demo/hotel/gallery/hotel-gallery-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'hotel-icon-1', 'demo/hotel/hotel-icon-1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'hotel-icon-2', 'demo/hotel/hotel-icon-2.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'hotel-icon-3', 'demo/hotel/hotel-icon-3.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'location-1', 'demo/location/location-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'location-2', 'demo/location/location-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'location-3', 'demo/location/location-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'location-4', 'demo/location/location-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'location-5', 'demo/location/location-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'banner-location-1', 'demo/location/banner-detail/banner-location-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'trip-idea-1', 'demo/location/trip-idea/trip-idea-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 'trip-idea-2', 'demo/location/trip-idea/trip-idea-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'news-1', 'demo/news/news-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'news-2', 'demo/news/news-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 'news-3', 'demo/news/news-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'news-4', 'demo/news/news-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'news-5', 'demo/news/news-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 'news-6', 'demo/news/news-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'news-7', 'demo/news/news-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 'news-banner', 'demo/news/news-banner.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 'banner-search-car', 'demo/car/banner-search-car.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'Convertibles', 'demo/car/terms/convertibles.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'Coupes', 'demo/car/terms/couple.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 'Hatchbacks', 'demo/car/terms/hatchback.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'Minivans', 'demo/car/terms/minivans.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'Sedan', 'demo/car/terms/sedan.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 'SUVs', 'demo/car/terms/suv.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, 'Trucks', 'demo/car/terms/trucks.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 'Wagons', 'demo/car/terms/wagons.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'home-car-bg-1', 'demo/car/home-car-bg-1.png', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 'number-1', 'demo/car/number-1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'number-2', 'demo/car/number-2.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, 'number-3', 'demo/car/number-3.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, 'banner-car-single', 'demo/car/banner-single.jpg', NULL, 'image/jpg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 'Airbag', 'demo/car/feature/Airbag.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'FM Radio', 'demo/car/feature/Radio.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'Sensor', 'demo/car/feature/Sensor.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, 'Speed Km', 'demo/car/feature/Speed.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 'Steering Wheel', 'demo/car/feature/Steering.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 'Power Windows', 'demo/car/feature/Windows.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, 'car-1', 'demo/car/car-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, 'car-2', 'demo/car/car-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, 'car-3', 'demo/car/car-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, 'car-4', 'demo/car/car-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, 'car-5', 'demo/car/car-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, 'car-6', 'demo/car/car-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, 'car-7', 'demo/car/car-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, 'car-8', 'demo/car/car-8.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, 'car-9', 'demo/car/car-9.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, 'car-10', 'demo/car/car-10.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, 'car-11', 'demo/car/car-11.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, 'car-12', 'demo/car/car-12.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, 'car-gallery-1', 'demo/car/gallery-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, 'car-gallery-2', 'demo/car/gallery-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, 'car-gallery-3', 'demo/car/gallery-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, 'car-gallery-4', 'demo/car/gallery-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, 'car-gallery-5', 'demo/car/gallery-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, 'car-gallery-6', 'demo/car/gallery-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, 'car-gallery-7', 'demo/car/gallery-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, 'banner-search-event', 'demo/event/banner-search.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, 'event-1', 'demo/event/event-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, 'event-2', 'demo/event/event-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, 'event-3', 'demo/event/event-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, 'event-4', 'demo/event/event-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, 'event-5', 'demo/event/event-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, 'event-6', 'demo/event/event-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, 'event-7', 'demo/event/event-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, 'event-8', 'demo/event/event-8.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, 'event-9', 'demo/event/event-9.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, 'event-10', 'demo/event/event-10.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, 'event-11', 'demo/event/event-11.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, 'event-12', 'demo/event/event-12.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, 'gallery-event-1', 'demo/event/gallery-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, 'gallery-event-2', 'demo/event/gallery-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, 'gallery-event-3', 'demo/event/gallery-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, 'gallery-event-4', 'demo/event/gallery-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, 'gallery-event-5', 'demo/event/gallery-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, 'gallery-event-6', 'demo/event/gallery-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, 'banner-event-1', 'demo/event/banner-detail/banner-event-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, 'banner-event-2', 'demo/event/banner-detail/banner-event-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, 'banner-event-3', 'demo/event/banner-detail/banner-event-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, 'red-cottage', '0000/1/2020/12/22/red-cottage.jpg', '1307455', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 1906, 1263, '2020-12-21 21:00:32', '2020-12-21 21:00:32'),
(197, 'home-mix', '0000/1/2020/12/22/home-mix.jpg', '1568330', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 1920, 1280, '2020-12-21 21:31:39', '2020-12-21 21:31:39'),
(198, 'sauna-accessories-with-birch-broom-hat-and-towels-rduwahq1-copy', '0000/1/2020/12/22/sauna-accessories-with-birch-broom-hat-and-towels-rduwahq1-copy.jpg', '270717', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 1280, 853, '2020-12-21 22:20:46', '2020-12-21 22:20:46'),
(202, 'profile-logo-nacwz-b6ab460874f75b62b290c28a908339bb', '0000/19/2021/01/21/profile-logo-nacwz-b6ab460874f75b62b290c28a908339bb.png', '6070', 'image/jpeg', 'png', 19, NULL, NULL, NULL, NULL, 280, 280, '2021-01-21 12:39:51', '2021-01-21 12:39:51'),
(203, '3', '0000/1/2021/01/27/3.png', '935341', 'image/png', 'png', 1, NULL, NULL, NULL, NULL, 727, 555, '2021-01-27 06:33:56', '2021-01-27 06:33:56'),
(204, '1', '0000/1/2021/01/27/1.png', '438061', 'image/png', 'png', 1, NULL, NULL, NULL, NULL, 525, 406, '2021-01-27 06:33:56', '2021-01-27 06:33:56'),
(205, '2', '0000/1/2021/01/27/2.png', '689509', 'image/png', 'png', 1, NULL, NULL, NULL, NULL, 724, 559, '2021-01-27 06:33:56', '2021-01-27 06:33:56'),
(206, 'screenshot-1', '0000/23/2021/02/05/screenshot-1.jpg', '557', 'image/png', 'jpg', 23, NULL, NULL, NULL, NULL, 157, 177, '2021-02-05 16:53:27', '2021-02-05 16:53:27'),
(211, 'screenshot-20210218-203748-samsung-internet-1', '0000/1/2021/02/24/screenshot-20210218-203748-samsung-internet-1.jpg', '509044', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 1080, 2400, '2021-02-24 06:38:05', '2021-02-24 06:38:05'),
(212, 'front-3', '0000/1/2021/05/18/front-3.jpg', '700051', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 640, 1148, '2021-05-18 07:48:37', '2021-05-18 07:48:37'),
(213, 'planting', '0000/1/2021/05/23/planting.png', '23693', 'image/png', 'png', 1, NULL, NULL, NULL, NULL, 512, 512, '2021-05-23 12:55:54', '2021-05-23 12:55:54'),
(214, 'planting', '0000/1/2021/05/23/planting.svg', '3578', 'image/svg+xml', 'svg', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-23 12:58:29', '2021-05-23 12:58:29'),
(215, 'warehouse', '0000/1/2021/05/23/warehouse.svg', '1550', 'image/svg', 'svg', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-23 13:01:38', '2021-05-23 13:01:38'),
(216, 'electrician', '0000/1/2021/05/23/electrician.svg', '3514', 'image/svg', 'svg', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-23 13:03:56', '2021-05-23 13:03:56'),
(217, 'screenshot-2021-05-23-at-175351', '0000/1/2021/05/23/screenshot-2021-05-23-at-175351.png', '14813', 'image/png', 'png', 1, NULL, NULL, NULL, NULL, 340, 340, '2021-05-23 13:53:03', '2021-05-23 13:53:03'),
(218, 'cat2', '0000/18/2021/08/11/cat2.png', '49259', 'image/png', 'png', 18, NULL, NULL, NULL, NULL, 170, 162, '2021-08-11 08:12:21', '2021-08-11 08:12:21'),
(219, 'conquest', '0000/18/2021/08/23/conquest.jpg', '22800', 'image/jpeg', 'jpg', 18, NULL, NULL, NULL, NULL, 318, 375, '2021-08-23 09:25:21', '2021-08-23 09:25:21'),
(220, 'maria-taranenkova', '0000/18/2021/08/25/maria-taranenkova.png', '153335', 'image/png', 'png', 18, NULL, NULL, NULL, NULL, 350, 350, '2021-08-25 11:16:35', '2021-08-25 11:16:35'),
(221, '40ac8f091236b61f9be954179517e4ba', '0000/18/2021/08/28/40ac8f091236b61f9be954179517e4ba.png', '423137', 'image/png', 'png', 18, NULL, NULL, NULL, NULL, 1280, 800, '2021-08-28 11:10:34', '2021-08-28 11:10:34'),
(222, 'bg-1', '0000/18/2021/08/28/bg-1.jpg', '25548', 'image/jpeg', 'jpg', 18, NULL, NULL, NULL, NULL, 1920, 1080, '2021-08-28 11:16:16', '2021-08-28 11:16:16'),
(223, 'river-background-hd-1920x1080-387247', '0000/18/2021/08/28/river-background-hd-1920x1080-387247.jpg', '765381', 'image/jpeg', 'jpg', 18, NULL, NULL, NULL, NULL, 1920, 1080, '2021-08-28 11:26:39', '2021-08-28 11:26:39'),
(224, 'black-car-running-1920x1080-2', '0000/18/2021/08/28/black-car-running-1920x1080-2.jpg', '328492', 'image/jpeg', 'jpg', 18, NULL, NULL, NULL, NULL, 1920, 1080, '2021-08-28 12:13:28', '2021-08-28 12:13:28'),
(225, 'nordic-ok', '0000/18/2021/12/06/nordic-ok.jpg', '45174', 'image/jpeg', 'jpg', 18, NULL, NULL, NULL, NULL, 800, 800, '2021-12-06 21:36:44', '2021-12-06 21:36:44'),
(226, '1f07ef41-4934-4ccc-beb2-52d8234b3acd', '0000/41/2021/12/23/1f07ef41-4934-4ccc-beb2-52d8234b3acd.jpeg', '40426', 'image/jpeg', 'jpeg', 41, NULL, NULL, NULL, NULL, 471, 471, '2021-12-23 15:30:23', '2021-12-23 15:30:23'),
(227, 'bar-restaurant', '0000/18/2021/12/23/bar-restaurant.png', '1637', 'image/png', 'png', 18, NULL, NULL, NULL, NULL, 55, 55, '2021-12-23 16:52:19', '2021-12-23 16:52:19'),
(228, 'hairdresser', '0000/18/2021/12/23/hairdresser.png', '2392', 'image/png', 'png', 18, NULL, NULL, NULL, NULL, 55, 55, '2021-12-23 16:53:14', '2021-12-23 16:53:14'),
(229, 'healthcare', '0000/18/2021/12/23/healthcare.png', '2645', 'image/png', 'png', 18, NULL, NULL, NULL, NULL, 55, 55, '2021-12-23 16:54:17', '2021-12-23 16:54:17'),
(230, 'handyman', '0000/18/2021/12/23/handyman.png', '1899', 'image/png', 'png', 18, NULL, NULL, NULL, NULL, 55, 55, '2021-12-23 16:54:47', '2021-12-23 16:54:47'),
(231, 'agriculture', '0000/18/2021/12/23/agriculture.png', '2284', 'image/png', 'png', 18, NULL, NULL, NULL, NULL, 55, 55, '2021-12-23 16:55:27', '2021-12-23 16:55:27'),
(232, 'warehouse', '0000/18/2021/12/23/warehouse.png', '1815', 'image/png', 'png', 18, NULL, NULL, NULL, NULL, 55, 55, '2021-12-23 16:55:51', '2021-12-23 16:55:51'),
(233, 'programming', '0000/18/2021/12/23/programming.png', '1333', 'image/png', 'png', 18, NULL, NULL, NULL, NULL, 55, 55, '2021-12-23 16:56:14', '2021-12-23 16:56:14'),
(234, 'logo', '0000/46/2021/12/28/logo.png', '10101', 'image/png', 'png', 46, NULL, NULL, NULL, NULL, 162, 162, '2021-12-28 10:33:44', '2021-12-28 10:33:44'),
(235, 'banner', '0000/46/2021/12/28/banner.jpg', '281956', 'image/jpeg', 'jpg', 46, NULL, NULL, NULL, NULL, 1440, 300, '2021-12-28 10:34:17', '2021-12-28 10:34:17'),
(236, 'svsu', '0000/46/2021/12/28/svsu.png', '581157', 'image/png', 'png', 46, NULL, NULL, NULL, NULL, 861, 436, '2021-12-28 13:20:00', '2021-12-28 13:20:00'),
(237, 'logo', '0000/48/2021/12/28/logo.png', '10101', 'image/png', 'png', 48, NULL, NULL, NULL, NULL, 162, 162, '2021-12-28 16:17:39', '2021-12-28 16:17:39'),
(238, 'full-size', '0000/41/2021/12/29/full-size.png', '22175', 'image/png', 'png', 41, NULL, NULL, NULL, NULL, 409, 228, '2021-12-29 10:29:16', '2021-12-29 10:29:16'),
(239, 'image-2021-11-01t22-02-25-067z', '0000/41/2021/12/29/image-2021-11-01t22-02-25-067z.png', '497858', 'image/png', 'png', 41, NULL, NULL, NULL, NULL, 1679, 967, '2021-12-29 10:30:35', '2021-12-29 10:30:35'),
(240, 'bolt', '0000/24/2021/12/30/bolt.png', '2814', 'image/png', 'png', 24, NULL, NULL, NULL, NULL, 293, 172, '2021-12-30 10:34:16', '2021-12-30 10:34:16'),
(241, 'screenshot-5', '0000/50/2021/12/30/screenshot-5.png', '105514', 'image/png', 'png', 50, NULL, NULL, NULL, NULL, 1571, 776, '2021-12-30 18:06:53', '2021-12-30 18:06:53'),
(242, 'rqrhvtwmlwmcmwcckahmqdey5zfdskrw', '0000/50/2021/12/30/rqrhvtwmlwmcmwcckahmqdey5zfdskrw.jpg', '19636', 'image/jpeg', 'jpg', 50, NULL, NULL, NULL, NULL, 282, 282, '2021-12-30 18:07:11', '2021-12-30 18:07:11'),
(243, '20191119000770-0', '0000/18/2021/12/30/20191119000770-0.jpg', '300627', 'image/jpeg', 'jpg', 18, NULL, NULL, NULL, NULL, 1280, 853, '2021-12-30 20:32:49', '2021-12-30 20:32:49'),
(244, 'mac', '0000/18/2021/12/30/mac.png', '4228', 'image/png', 'png', 18, NULL, NULL, NULL, NULL, 924, 520, '2021-12-30 20:33:11', '2021-12-30 20:33:11'),
(245, 'rqrhvtwmlwmcmwcckahmqdey5zfdskrw', '0000/55/2022/01/04/rqrhvtwmlwmcmwcckahmqdey5zfdskrw.jpg', '19636', 'image/jpeg', 'jpg', 55, NULL, NULL, NULL, NULL, 282, 282, '2022-01-04 14:44:29', '2022-01-04 14:44:29'),
(246, 'table-structures', '0000/55/2022/01/04/table-structures.png', '53992', 'image/png', 'png', 55, NULL, NULL, NULL, NULL, 1264, 408, '2022-01-04 14:44:43', '2022-01-04 14:44:43'),
(247, 'shared-image', '0000/46/2022/01/06/shared-image.jpg', '144881', 'image/jpeg', 'jpg', 46, NULL, NULL, NULL, NULL, 1201, 631, '2022-01-06 07:52:45', '2022-01-06 07:52:45'),
(248, 'magento', '0000/46/2022/01/06/magento.png', '31363', 'image/png', 'png', 46, NULL, NULL, NULL, NULL, 800, 400, '2022-01-06 07:59:44', '2022-01-06 07:59:44'),
(249, 'airport', '0000/55/2022/01/06/airport.jpg', '78193', 'image/jpeg', 'jpg', 55, NULL, NULL, NULL, NULL, 476, 622, '2022-01-06 10:06:09', '2022-01-06 10:06:09'),
(250, 'advertise', '0000/18/2022/01/06/advertise.png', '9700', 'image/png', 'png', 18, NULL, NULL, NULL, NULL, 492, 712, '2022-01-06 11:36:25', '2022-01-06 11:36:25'),
(255, 'shared-image', '0000/66/2022/01/06/shared-image.jpg', '144881', 'image/jpeg', 'jpg', 66, NULL, NULL, NULL, NULL, 1201, 631, '2022-01-06 14:28:42', '2022-01-06 14:28:42'),
(256, '1', '0000/65/2022/01/06/1.jpg', '736421', 'image/jpeg', 'jpg', 65, NULL, NULL, NULL, NULL, 1366, 768, '2022-01-06 14:33:57', '2022-01-06 14:33:57'),
(257, 'shared-image', '0000/55/2022/01/06/shared-image.jpg', '146365', 'image/jpeg', 'jpg', 55, NULL, NULL, NULL, NULL, 1201, 631, '2022-01-06 14:37:41', '2022-01-06 14:37:41'),
(258, 'shared-image1', '0000/66/2022/01/06/shared-image1.jpg', '144881', 'image/jpeg', 'jpg', 66, NULL, NULL, NULL, NULL, 1201, 631, '2022-01-06 15:32:40', '2022-01-06 15:32:40'),
(259, 'logo', '0000/66/2022/01/06/logo.png', '10101', 'image/png', 'png', 66, NULL, NULL, NULL, NULL, 162, 162, '2022-01-06 16:11:42', '2022-01-06 16:11:42'),
(260, 'magento', '0000/66/2022/01/06/magento.png', '31363', 'image/png', 'png', 66, NULL, NULL, NULL, NULL, 800, 400, '2022-01-06 16:11:52', '2022-01-06 16:11:52'),
(261, 'intern', '0000/18/2022/01/06/intern.png', '791', 'image/png', 'png', 18, NULL, NULL, NULL, NULL, 80, 80, '2022-01-06 19:22:38', '2022-01-06 19:22:38'),
(262, '3-150', '0000/68/2022/01/07/3-150.png', '67845', 'image/png', 'png', 68, NULL, NULL, NULL, NULL, 150, 150, '2022-01-07 09:25:59', '2022-01-07 09:25:59'),
(263, 'shared-image-1024', '0000/68/2022/01/07/shared-image-1024.jpg', '45756', 'image/jpeg', 'jpg', 68, NULL, NULL, NULL, NULL, 1024, 538, '2022-01-07 09:26:24', '2022-01-07 09:26:24'),
(264, 'logo', '0000/66/2022/01/07/logo.jpeg', '16130', 'image/jpeg', 'jpeg', 66, NULL, NULL, NULL, NULL, 400, 200, '2022-01-07 15:00:56', '2022-01-07 15:00:56'),
(265, 'shared-image', '0000/71/2022/01/07/shared-image.jpg', '146365', 'image/jpeg', 'jpg', 71, NULL, NULL, NULL, NULL, 1201, 631, '2022-01-07 16:06:55', '2022-01-07 16:06:55'),
(266, 'nordica-logo-ok', '0000/18/2022/01/07/nordica-logo-ok.png', '52500', 'image/png', 'png', 18, NULL, NULL, NULL, NULL, 1200, 1200, '2022-01-07 18:34:12', '2022-01-07 18:34:12'),
(267, 'b', '0000/18/2022/01/07/b.png', '8236', 'image/png', 'png', 18, NULL, NULL, NULL, NULL, 332, 336, '2022-01-07 18:34:37', '2022-01-07 18:34:37'),
(268, 'liaplats-background', '0000/18/2022/01/07/liaplats-background.jpg', '2065235', 'image/jpeg', 'jpg', 18, NULL, NULL, NULL, NULL, 1920, 1112, '2022-01-07 18:36:29', '2022-01-07 18:36:29'),
(269, 'logo', '0000/66/2022/01/10/logo.jpeg', '16130', 'image/jpeg', 'jpeg', 66, NULL, NULL, NULL, NULL, 400, 200, '2022-01-10 13:01:45', '2022-01-10 13:01:45'),
(270, 'bb', '0000/66/2022/01/11/bb.png', '26845', 'image/png', 'png', 66, NULL, NULL, NULL, NULL, 1103, 829, '2022-01-11 08:53:30', '2022-01-11 08:53:30'),
(271, 'coffee', '0000/66/2022/01/12/coffee.png', '6191', 'image/png', 'png', 66, NULL, NULL, NULL, NULL, 512, 512, '2022-01-12 14:00:55', '2022-01-12 14:00:55'),
(272, 'r2', '0000/66/2022/01/12/r2.jpg', '65599', 'image/jpeg', 'jpg', 66, NULL, NULL, NULL, NULL, 1280, 853, '2022-01-12 14:01:26', '2022-01-12 14:01:26'),
(273, 'r2', '0000/66/2022/01/12/r2.jpg', '65599', 'image/jpeg', 'jpg', 66, NULL, NULL, NULL, NULL, 1280, 853, '2022-01-12 14:03:09', '2022-01-12 14:03:09'),
(274, 'r2', '0000/78/2022/01/12/r2.jpg', '45071', 'image/jpeg', 'jpg', 78, NULL, NULL, NULL, NULL, 1280, 853, '2022-01-12 14:03:24', '2022-01-12 14:03:24'),
(275, 'logo', '0000/66/2022/01/12/logo.jpeg', '16130', 'image/jpeg', 'jpeg', 66, NULL, NULL, NULL, NULL, 400, 200, '2022-01-12 14:05:08', '2022-01-12 14:05:08'),
(276, 'logo', '0000/78/2022/01/12/logo.jpeg', '17762', 'image/jpeg', 'jpeg', 78, NULL, NULL, NULL, NULL, 400, 200, '2022-01-12 16:03:45', '2022-01-12 16:03:45'),
(277, 'mediafin-logo', '0000/53/2022/01/12/mediafin-logo.png', '3222', 'image/png', 'png', 53, NULL, NULL, NULL, NULL, 224, 224, '2022-01-12 17:49:18', '2022-01-12 17:49:18'),
(278, 'kotisivut-mediafinoy-mediafin-oy-animaatiovideot-yritysvideo-yritykselle-video-somevideo-ilmakuvaus-mainostoimisto-mainosanimaatio-17', '0000/53/2022/01/12/kotisivut-mediafinoy-mediafin-oy-animaatiovideot-yritysvideo-yritykselle-video-somevideo-ilmakuvaus-mainostoimisto-mainosanimaatio-17.jpg', '568419', 'image/jpeg', 'jpg', 53, NULL, NULL, NULL, NULL, 1920, 795, '2022-01-12 17:52:51', '2022-01-12 17:52:51'),
(279, 'liaplats-background', '0000/18/2022/01/15/liaplats-background.jpg', '2065235', 'image/jpeg', 'jpg', 18, NULL, NULL, NULL, NULL, 1920, 1112, '2022-01-15 10:01:27', '2022-01-15 10:01:27'),
(280, 'manufacturer', '0000/66/2022/01/31/manufacturer.jpeg', '56759', 'image/jpeg', 'jpeg', 66, NULL, NULL, NULL, NULL, 509, 339, '2022-01-31 16:55:40', '2022-01-31 16:55:40'),
(281, 'burger-king', '0000/66/2022/01/31/burger-king.jpeg', '57643', 'image/jpeg', 'jpeg', 66, NULL, NULL, NULL, NULL, 612, 464, '2022-01-31 16:56:04', '2022-01-31 16:56:04'),
(282, 'online-work-copy', '0000/18/2022/02/01/online-work-copy.jpg', '1884057', 'image/jpeg', 'jpg', 18, NULL, NULL, NULL, NULL, 1920, 1280, '2022-02-01 10:41:58', '2022-02-01 10:41:58'),
(283, 'a92dff0a-3cae-4dd0-acbf-f2458c2f2e50', '0000/92/2022/02/02/a92dff0a-3cae-4dd0-acbf-f2458c2f2e50.png', '7473', 'image/png', 'png', 92, NULL, NULL, NULL, NULL, 265, 246, '2022-02-02 22:01:49', '2022-02-02 22:01:49');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_11_06_222923_create_transactions_table', 1),
(4, '2018_11_07_192923_create_transfers_table', 1),
(5, '2018_11_07_202152_update_transfers_table', 1),
(6, '2018_11_15_124230_create_wallets_table', 1),
(7, '2018_11_19_164609_update_transactions_table', 1),
(8, '2018_11_20_133759_add_fee_transfers_table', 1),
(9, '2018_11_22_131953_add_status_transfers_table', 1),
(10, '2018_11_22_133438_drop_refund_transfers_table', 1),
(11, '2019_03_13_174533_create_permission_tables', 1),
(12, '2019_03_17_114820_create_table_core_pages', 1),
(13, '2019_03_17_140539_create_media_files_table', 1),
(14, '2019_03_20_072502_create_bravo_tours', 1),
(15, '2019_03_20_081256_create_core_news_category_table', 1),
(16, '2019_03_27_081940_create_core_setting_table', 1),
(17, '2019_03_28_101009_create_bravo_booking_table', 1),
(18, '2019_03_28_165911_create_booking_meta_table', 1),
(19, '2019_03_29_093236_update_bookings_table', 1),
(20, '2019_04_01_045229_create_user_meta_table', 1),
(21, '2019_04_01_150630_create_menu_table', 1),
(22, '2019_04_02_150630_create_core_news_table', 1),
(23, '2019_04_03_073553_bravo_tour_category', 1),
(24, '2019_04_03_080159_bravo_location', 1),
(26, '2019_04_18_152537_create_bravo_tours_meta_table', 1),
(27, '2019_05_07_085430_create_core_languages_table', 1),
(28, '2019_05_07_085442_create_core_translations_table', 1),
(29, '2019_05_13_111553_update_status_transfers_table', 1),
(30, '2019_05_17_074008_create_bravo_review', 1),
(31, '2019_05_17_074048_create_bravo_review_meta', 1),
(32, '2019_05_17_113042_create_tour_attrs_table', 1),
(33, '2019_05_21_084235_create_bravo_contact_table', 1),
(34, '2019_05_28_152845_create_core_subscribers_table', 1),
(35, '2019_06_17_142338_bravo_seo', 1),
(36, '2019_06_25_103755_add_exchange_status_transfers_table', 1),
(37, '2019_07_03_070406_update_from_1_0_to_1_1', 1),
(38, '2019_07_08_075436_create_core_vendor_plans', 1),
(39, '2019_07_08_083733_create_vendors_plan_payments', 1),
(40, '2019_07_11_083501_update_from_110_to_120', 1),
(41, '2019_07_29_184926_decimal_places_wallets_table', 1),
(42, '2019_07_30_072809_create_space_table', 1),
(43, '2019_07_30_072809_create_tour_dates_table', 1),
(44, '2019_08_05_031018_create_core_vendor_plan_meta_table', 1),
(45, '2019_08_09_163909_create_inbox_table', 1),
(46, '2019_08_16_094354_update_from_120_to_130', 1),
(47, '2019_08_20_162106_create_table_user_upgrade_requests', 1),
(48, '2019_09_13_070650_update_from_130_to_140', 1),
(49, '2019_09_20_072809_create_hotel_table', 1),
(50, '2019_10_02_193759_add_discount_transfers_table', 1),
(51, '2019_10_22_151319_create_car_table', 1),
(52, '2019_10_22_151319_create_social_table', 1),
(53, '2019_11_05_092516_update_from_140_to_150', 1),
(54, '2019_11_18_085024_update_from_150_to_151', 1),
(55, '2020_03_09_102753_update_from_151_to_160', 1),
(56, '2020_04_02_150631_create_core_tags_table', 1),
(57, '2020_04_05_101016_create_event_table', 1),
(58, '2020_05_16_073120_update_from_160_to_170', 1),
(59, '2020_11_16_191727_create_bravo_activities', 1),
(60, '2020_11_16_191827_create_bravo_activity_category', 1),
(61, '2020_11_16_191856_create_bravo_activity_meta', 1),
(62, '2020_11_16_191932_create_bravo_activity_term', 1),
(63, '2020_11_16_193347_create_bravo_activity_translations', 1),
(64, '2020_11_16_193429_create_bravo_activity_category_translations', 1),
(65, '2020_11_16_203237_create_activity_dates_table', 1),
(66, '2020_11_16_235436_add_business_id_to_users_table', 1),
(67, '2020_11_17_072809_create_accommodation_table', 1),
(68, '2020_11_17_151319_create_boat_table', 1),
(69, '2020_11_17_201016_create_sauna_table', 1),
(70, '2021_04_02_150632_create_core_tag_new_table', 1),
(72, '2021_01_19_150511_create_bravo_job_categories_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@dev.com', '$2y$10$jcjdvHS/x.WTTPiIvSc94.L4JRdSz6xEh2UP4CQHTJiqk7eFBNsra', '2021-01-21 14:32:49'),
('pancyboxi@gmail.com', '$2y$10$nkDA5BixIfthdcPbCXlKa.XHK7OjtJsPquNDNtgTll.fN7hxzMAnm', '2021-01-21 14:33:51'),
('buruna.real.webdevguy@gmail.com', '$2y$10$NqkRGZSKIeRzKJZAT1kw5umHjEGygwHPggP/nJPpnThDpFKsx/FEi', '2021-08-31 07:51:19'),
('website.design1008@gmail.com', '$2y$10$fRKhOYdnJ/0gVVWoximeiuXJDhIK3aQ1e6HdVnKjp6mXgZ.xCsVzm', '2021-12-28 16:12:03'),
('itsmsohrabkhan@gmail.com', '$2y$10$4vCDmuvAUZQGtAlZ08zIueTHEjcCYSmuOUfbIQ2h5EuPaOM3WCZe.', '2021-12-31 07:35:43'),
('mail@dorica.fi', '$2y$10$kfaekixbF0L0L5Kp7/5chOg0otPvdTSTy0sHBKqxTVS90bXRJbIPi', '2022-01-04 11:08:44'),
('mail.tyokokeilu@gmail.com', '$2y$10$6A16W1TnbuOor0V3DCyUDeuyEsObt6AIKskqRb4tZmx.crwjA0bwW', '2022-01-10 15:33:06'),
('vargha.bahagir@gmail.com', '$2y$10$jrL11PglcwRmgbuu385D/OuiBz.g5Os9Ul8fu5NmX0Ayt3IghbEgm', '2022-01-12 17:14:52'),
('info@mediafin.fi', '$2y$10$hYqzMB4Hse8d61KtydFxnuvvcYC/it2oUmlXK7WF.j.eizhcpAguK', '2022-01-12 17:24:08'),
('no-reply@tyokokeilu.fi', '$2y$10$/YQgnDJkaPqXAs5s7HWpD.1Zf1pVsS3jAwaEEvFX8o3AtPhXzqhi6', '2022-01-14 23:00:27'),
('mail@tyokokeilu.fi', '$2y$10$YugdD6vV0GDzyXTavnwSNOGrD64qtX/kmactctBo9CC/B8GDE4WWW', '2022-01-14 23:07:25');

-- --------------------------------------------------------

--
-- Table structure for table `social_forums`
--

CREATE TABLE `social_forums` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` bigint DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_forums`
--

INSERT INTO `social_forums` (`id`, `name`, `content`, `slug`, `status`, `icon`, `icon_image`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 'Solo Travel', NULL, 'solo-travel', 'publish', 'fa fa-cloud', NULL, NULL, NULL, '2020-11-18 06:20:11', '2020-11-18 06:20:11'),
(2, 'Road Trips', NULL, 'road-trips', 'publish', 'fa fa-bear', NULL, NULL, NULL, '2020-11-18 06:20:11', '2020-11-18 06:20:11'),
(3, 'Travel Gadgets and Gear', NULL, 'travel-gadgets-and-gear', 'publish', 'fa fa-gear', NULL, NULL, NULL, '2020-11-18 06:20:11', '2020-11-18 06:20:11'),
(4, 'Family Travel', NULL, 'family-travel', 'publish', 'fa fa-map-o', NULL, NULL, NULL, '2020-11-18 06:20:11', '2020-11-18 06:20:11'),
(5, 'Honeymoons and Romance', NULL, 'honeymoons-and-romance', 'publish', 'fa fa-heartbeat', NULL, NULL, NULL, '2020-11-18 06:20:11', '2020-11-18 06:20:11'),
(6, 'Outdoors', NULL, 'outdoors', 'publish', 'fa fa-paper-plane-o', NULL, NULL, NULL, '2020-11-18 06:20:11', '2020-11-18 06:20:11'),
(7, 'Traveling with Pets', NULL, 'traveling-with-pets', 'publish', 'fa fa-paw', NULL, NULL, NULL, '2020-11-18 06:20:11', '2020-11-18 06:20:11');

-- --------------------------------------------------------

--
-- Table structure for table `social_groups`
--

CREATE TABLE `social_groups` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` bigint DEFAULT NULL,
  `banner_image` bigint DEFAULT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_id` bigint DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_group_user`
--

CREATE TABLE `social_group_user` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `group_id` bigint DEFAULT NULL,
  `role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_posts`
--

CREATE TABLE `social_posts` (
  `id` bigint UNSIGNED NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forum_id` bigint DEFAULT NULL,
  `group_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `file_id` bigint DEFAULT NULL,
  `file_ids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `publish_date` datetime DEFAULT NULL,
  `comment_disabled_by` bigint DEFAULT NULL,
  `privary` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `privacy` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_post_comments`
--

CREATE TABLE `social_post_comments` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `file_id` bigint DEFAULT NULL,
  `file_ids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_user_follow`
--

CREATE TABLE `social_user_follow` (
  `id` bigint UNSIGNED NOT NULL,
  `from_user` bigint DEFAULT NULL,
  `to_user` bigint DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` int DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `avatar_id` bigint DEFAULT NULL,
  `bio` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `vendor_commission_amount` int DEFAULT NULL,
  `vendor_commission_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_gateway` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_guests` int DEFAULT NULL,
  `locale` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verify_submit_status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verified` smallint DEFAULT NULL,
  `contact_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wrong_count` int NOT NULL DEFAULT '0',
  `ban_state` int DEFAULT NULL,
  `banned_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `address`, `mobile`, `phone`, `birthday`, `city`, `state`, `country`, `zip_code`, `last_login_at`, `avatar_id`, `bio`, `website`, `status`, `create_user`, `update_user`, `vendor_commission_amount`, `vendor_commission_type`, `deleted_at`, `remember_token`, `created_at`, `updated_at`, `payment_gateway`, `total_guests`, `locale`, `business_id`, `business_name`, `verify_submit_status`, `is_verified`, `contact_email`, `wrong_count`, `ban_state`, `banned_at`) VALUES
(1, 'Dorica B', 'Dorica', 'B', 'info@dorica.fi_d', NULL, '$2y$10$.T6esUWNSTYHKI7uEIZxB.eH.X1NwkSIL.Coon4WIwwCgqs0tHrMK', 'fgfdgdfgd', '123213213', '23441124', '1970-01-01', '1', NULL, 'FI', NULL, NULL, 203, '<p>We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.</p>', NULL, 'publish', NULL, NULL, NULL, NULL, '2021-09-02 09:02:32', 'sEDoeQXpylNGGUxGnQfSL78zFNMXrkEzSwMF67MddDwYArpK8blOpq49Y6LQ', '2020-11-18 06:20:03', '2021-09-02 09:02:32', NULL, NULL, NULL, '3096971-4', 'Dorica', NULL, NULL, '21321@w.w', 8, 2, '2021-09-01 16:29:00'),
(18, 'Vargha Oy', 'Vargha', 'Oy', 'mail@dorica.fi', '2022-01-06 09:58:59', '$2y$10$qGw668J0eYIf14efC9SXUuOmnEYZcHvOHx8hxMEm7zMSCEDAVfwWu', 'Laivurinkatu 41', NULL, '0403772034', '0001-11-30', '114', NULL, 'FI', NULL, NULL, 244, '', 'www.dorica.fi', 'publish', NULL, NULL, 10, 'percent', NULL, 'wHwjPTjLfoQCHZlefyB0yJk7G5KH32QVXSdkqrgGXARckQlnYF3LyZgpaxxE', '2020-11-18 06:39:03', '2022-02-02 21:27:14', NULL, NULL, NULL, '3096974-4', 'Dorica', NULL, NULL, 'mail@dorica.fi', 13, 1, '2021-08-30 15:32:32'),
(23, 'Kati Rinne', 'Kati', 'Rinne', 'kati.rinne@hel.fi_d', NULL, '$2y$10$1tf1huzngTwHAT1SGS6A3e0fWZ4MtPn9BfVtKH8SG6SAM7m//dxVW', 'Helsinki', '2312', '040-000000', '1980-01-01', 'Helsinki', NULL, 'AL', NULL, NULL, 206, '', NULL, 'publish', NULL, NULL, NULL, NULL, '2021-12-02 21:07:23', NULL, '2021-02-05 16:52:03', '2021-12-02 21:07:23', NULL, NULL, NULL, '1234567-8', 'Helsinki Kaupunki', NULL, NULL, 'temp@gmail.com', 1, 0, NULL),
(24, 'Urakka Vertailu', 'Urakka', 'Vertailu', 'mail@urakkavertailu.fi_d', NULL, '$2y$10$MMlq6r9cRAMAA3zf3Qa9Ces0yVaFX.oOfvy/n9qtvpqAPOQCWfZRK', 'Laivurinkatu 41', '040-12345678', '0912345678', '1970-01-01', '1', NULL, 'FI', NULL, NULL, 207, '', 'www.dno.fi', 'publish', NULL, NULL, NULL, NULL, '2022-01-17 16:08:29', 'XUQiYhJ29OYG4EQ9GMQABH27c2Ab1zUxhHQdnLAs7yIAlqqkA9CgUt1ook2G', '2021-02-05 17:57:36', '2022-01-17 16:08:29', NULL, NULL, NULL, '1234567-8', 'D & O', NULL, NULL, 'mail@dorica.fi', 0, 0, NULL),
(25, 'Marko N', 'Marko', 'N', 'mn@dev.com_d', NULL, '$2y$10$2Miwan7syq7cofXpnlsAF.drMhTY3aJ9NEDvrEUvQmcPJv8wSNfOi', 'Sombor', NULL, '4444444444444', '0000-00-00', 'Sombor', 'Sombor', 'RS', 420201, NULL, 203, '', NULL, 'publish', NULL, NULL, NULL, NULL, '2022-01-14 19:46:32', '68yoQCZGfb9R6cnhjOqmdvwnHVfiS5XGgemgezaszB0jdikudbJjUpCE4HXj', '2021-02-09 13:18:48', '2022-01-14 19:46:32', NULL, NULL, NULL, 'dev-business', 'Marko N', NULL, NULL, NULL, 0, 0, NULL),
(26, ' ', NULL, NULL, 'jovan@gmail.com_d', NULL, '$2y$10$PGUtaGmee7uTgWcOZvMu6.27KFEXGM65GJTGB9VgpgZP8Sdudkspe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-02 08:53:15', NULL, '2021-05-15 06:07:48', '2021-09-02 08:53:15', NULL, NULL, NULL, 'f', 'f', NULL, NULL, NULL, 0, 0, NULL),
(27, ' ', NULL, NULL, 'taranenko.kiril@bk.ru_d', NULL, '$2y$10$Cek4n9XWWOnEQLl5H8py8uXmEh3e6deMSbqtzaf.8UlmVqVlU0HVS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-02 08:53:15', NULL, '2021-08-01 13:44:26', '2021-09-02 08:53:15', NULL, NULL, NULL, 'buruna', 'Buruna', NULL, NULL, NULL, 0, 0, NULL),
(31, 'Daniel Ramos Garcia', 'Daniel', 'Ramos Garcia', 'buruna.real.webdevguy@gmail.com_d', NULL, '$2y$10$2SSXw9vjpzVThdwjxaeTwujTxH1AV4tqRV2aJ6zqBUKtEKH2BU./i', 'The Remedies  No.  30', NULL, '123456', '0000-00-00', 'Los Realejos', 'León', 'ES', 38410, NULL, 218, '', NULL, 'publish', NULL, NULL, NULL, NULL, '2021-09-02 08:53:15', NULL, '2021-08-31 09:32:19', '2021-09-02 08:53:15', NULL, NULL, NULL, 'Passionate devers', 'Passionate devers', NULL, NULL, NULL, 0, NULL, NULL),
(32, 'User1 User', 'User1', 'User', 'spotwebyc63@gmail.com', NULL, '$2y$10$C4VL0VCXTx5AEmMVZzG4B.ZFGRHcBRGh9og8GsQ7fMJJKRu9.hA7a', NULL, NULL, '0000', NULL, NULL, NULL, 'IN', NULL, NULL, NULL, '', NULL, 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 05:50:33', '2021-11-26 08:06:28', NULL, NULL, NULL, 'asd', 'asd', NULL, NULL, NULL, 0, NULL, NULL),
(33, 'Miltan Miltan', 'Miltan', 'Miltan', 'miltan@pitangent.com_d', NULL, '$2y$10$ve428fpC/fMwJ4kuntN7Yu6b/OFj9VvPwI2xMcwehPji4xoRAuDq2', NULL, NULL, '0000000', NULL, NULL, NULL, 'AL', NULL, NULL, NULL, '', NULL, 'publish', NULL, NULL, NULL, NULL, '2021-12-02 21:06:44', NULL, '2021-11-26 07:35:23', '2021-12-02 21:06:44', NULL, NULL, NULL, 'tst123', 'Test Company', NULL, NULL, NULL, 0, NULL, NULL),
(35, 'Lavina Appic', 'Lavina', 'Appic', 'lavina.appic@gmail.com_d', NULL, '$2y$10$XkWHd2VjeDXAfcBcUoVFGOl9SvdfS33vQc0rqPL1IlBY4XhbCZN6.', NULL, NULL, '0000', NULL, NULL, NULL, 'IN', 0, NULL, NULL, '', NULL, 'publish', NULL, NULL, NULL, NULL, '2021-12-02 21:06:58', NULL, '2021-11-26 11:44:32', '2021-12-02 21:06:58', NULL, NULL, NULL, 'appicsoftwares', 'Appic Softwares', NULL, NULL, NULL, 0, NULL, NULL),
(36, ' ', NULL, NULL, 'hasan@n2rtechnologies.com', NULL, '$2y$10$1/dBPmXP7ZJ2noMC/7cV4u2D9Xm.tLyy1iVqVw/ptRmkcwya/cFcK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-08 11:05:41', '2021-12-08 11:05:41', NULL, NULL, NULL, 'n2rtech', 'N2R TECHNOLOGIES', NULL, NULL, NULL, 0, NULL, NULL),
(38, 'Nurul Hasan', 'Nurul', 'Hasan', 'nurulhasan129@gmail.com_d', NULL, '$2y$10$kAEMqHiUJ6KPag5CRX7JZO421cY8nRxEZeEG.tJGmTX55zDQaa.B2', NULL, NULL, '9968584843', NULL, 'Noida', 'Uttar Pradesh', 'IN', 110092, NULL, NULL, '', NULL, 'publish', NULL, NULL, NULL, NULL, '2022-01-04 11:46:23', NULL, '2021-12-14 15:55:02', '2022-01-04 11:46:23', NULL, NULL, NULL, 'N2R TECHNOLOGIES', 'N2R TECHNOLOGIES', NULL, NULL, NULL, 3, 1, '2021-12-23 15:22:37'),
(39, ' ', NULL, NULL, 'test@vendor.com', NULL, '$2y$10$B8GspVA49sxbqpmw/mz6u.yuW1JPMCeAVdMZAqaw5cC1M5ocOP1ou', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-21 15:00:56', '2021-12-21 15:00:56', NULL, NULL, NULL, 'Et eum officiis null', 'Bell Woodard', NULL, NULL, NULL, 0, NULL, NULL),
(40, 'Krishna Mishra', 'Krishna', 'Mishra', 'krishna@gmail.com', NULL, '$2y$10$5XV7i2h9PxwJ/5PJ7Oj9WOygjiyYbtPwclvJeG6./7YAfroZODYjK', 'test address', '9026574061', '9026574061', '1970-01-01', '13', NULL, NULL, NULL, NULL, NULL, 'jjjjsssssssssssss', 'krishna.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-23 07:37:42', '2021-12-23 12:04:11', NULL, NULL, NULL, 'LTD1234', 'Krishna Ltd', NULL, NULL, 'krishna@gmail.com', 0, NULL, NULL),
(41, 'Nurul Hasan', 'Nurul', 'Hasan', 'info@n2rtechnologies.com_d', NULL, '$2y$10$sdCVRcB.Oy1VwxJuE7SwmuC/BTQnbiY7DDhFlIPfZPFDG4BVQX8KC', 'C-6 Sector 7', '97939329109', '9968584843', '1970-01-01', '17', NULL, NULL, NULL, NULL, NULL, 'We are an expert at what we do and we do what our clients love. Our aim is to provide the finest quality and build long term relationships and so we are flexible in terms of prices we offer. We also provide additional support for six months to our clients after delivering the projects.', 'https://www.n2rtechnologies.com/', NULL, NULL, NULL, NULL, NULL, '2022-01-04 11:46:23', NULL, '2021-12-23 15:24:15', '2022-01-04 11:46:23', NULL, NULL, NULL, 'N2R TECHNOLOGIES', 'N2R TECHNOLOGIES', NULL, NULL, 'nurulhasan129@gmail.com', 0, NULL, NULL),
(42, 'Ezekiel Moody', 'Ezekiel', 'Moody', 'mezepyli@mailinator.com', NULL, '$2y$10$vEligBaHiWWuDkZYFvhVv.5qGW4ZsxS5Pyv34asxJbPKlVdUMT3y2', 'Hic est voluptatibus', NULL, '+1 (592) 856-5366', '0000-00-00', 'Laudantium vitae il', 'Enim in numquam sunt', 'RU', 28265, NULL, 203, '<p>teststts</p>', NULL, 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-23 16:10:20', '2021-12-23 16:10:20', NULL, NULL, NULL, 'Laborum fugiat quia', 'Felix Heath', NULL, NULL, NULL, 0, NULL, NULL),
(43, ' ', NULL, NULL, 'avinash.kr9811@gmail.com', NULL, '$2y$10$X5YMnEwqIfkqi.1s1dqbX.VlMIneBM3goctXDTVFnaQVpsVYagm/u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-24 15:49:52', '2021-12-24 15:49:52', NULL, NULL, NULL, 'Ak0027', 'N2RTECHNOLOGIES', NULL, NULL, NULL, 6, 2, '2022-01-06 09:12:51'),
(44, ' ', NULL, NULL, 'zikycy@mailinator.com', NULL, '$2y$10$Ho77x2wcilP0A2olJxtwPOxQjlzAzLG9YKcbBK1dK6LGb6fKGiiq.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-27 10:54:40', '2021-12-27 10:54:40', NULL, NULL, NULL, 'Adipisicing quidem e', 'Maggy Gilbert', NULL, NULL, NULL, 0, NULL, NULL),
(45, ' ', NULL, NULL, 'jewyryx@mailinator.com', NULL, '$2y$10$vgHsEqjKFDRJ7WW.zJMn8.iLGZiocvHoICKuqa7GVshoSXqlIdQKa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-27 10:56:55', '2021-12-27 10:56:55', NULL, NULL, NULL, 'Sed odio doloribus p', 'Lawrence Riddle', NULL, NULL, NULL, 0, NULL, NULL),
(46, 'Sergio Marquina', 'Sergio', 'Marquina', 'tesla@gmail.com', NULL, '$2y$10$Srt1/JPI/pteBGEzDPcKgO9qz3UNUAZnKeEnPF7XWqvbmWAerX/q6', '999 Street', '8700844557', '2738347221', '1970-01-01', '93', NULL, NULL, NULL, NULL, NULL, '', 'sergiomarquina@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-27 15:36:20', '2021-12-31 08:22:11', NULL, NULL, NULL, '8888', 'Tesla motors', NULL, NULL, 'tesla@gmail.com', 11, 2, '2021-12-28 16:06:28'),
(48, ' ', NULL, NULL, 'dunkin@gmail.com', NULL, '$2y$10$rAp9Dfo8fUKVtNU7LjdHM.b4KDoM.X7bNKR1K7Grb1kSrnj7.s47C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-28 16:15:35', '2021-12-28 16:15:35', NULL, NULL, NULL, '998', 'Dunkin donuts', NULL, NULL, NULL, 0, NULL, NULL),
(49, ' ', NULL, NULL, 'itsmsohrabkhan@gmail.com', NULL, '$2y$10$2uNSAzbXA4g7dlCnBu1DjelFmEPAAXBICnc/8HOZunW63DQQu4/Ny', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-28 16:46:20', '2021-12-28 16:48:11', NULL, NULL, NULL, '7285493', 'Zara', NULL, NULL, NULL, 3, NULL, NULL),
(50, 'Laxman Mishra', 'Laxman', 'Mishra', 'tatatest@gmail.com', '2022-01-12 19:00:53', '$2y$10$J.MNwieyQTqteDZcZ.FhwOw1YLebSgYIyhtz2FEIX1E.lZ/gb9eoW', 'test address', '9454045599', '9454045599', '1970-01-01', '20', NULL, NULL, NULL, NULL, NULL, 'dddddddddddddddddddddddddddddd', 'krishna.com', 'blocked', 50, NULL, NULL, NULL, NULL, NULL, '2021-12-30 18:05:36', '2022-01-12 15:32:03', NULL, NULL, NULL, 'Delectus corrupti', 'Fay Velasquez', NULL, 1, 'krishna.com', 1, NULL, NULL),
(51, ' ', NULL, NULL, 'tetetgwqo@gmail.com', NULL, '$2y$10$M4Ctg2uAuhoCpcxpjjy5lOizKTyiKCS/W4lkMol3avKuttYmKGpf.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-31 09:01:21', '2021-12-31 09:01:21', NULL, NULL, NULL, '213768540', 'ghhfe', NULL, NULL, NULL, 0, NULL, NULL),
(52, ' ', NULL, NULL, 'mohddanishking@gmail.com', '2021-12-31 12:59:04', '$2y$10$BgMN/QjKOIUQ6VHFxIPDYuxDoD18kc874PUeCHn7mWpe4DIyZTJwu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DSxdRc1Bkyq6tGeKMUCweTpCFerr5YD7rYlsdFUllsyzVJj93Kkk4XOsrY6X', '2021-12-31 12:57:59', '2022-01-06 14:14:52', NULL, NULL, NULL, '194732', 'Danish Company', NULL, NULL, NULL, 1, NULL, NULL),
(53, 'vargha bahagir', 'vargha', 'bahagir', 'vargha.bahagir@gmail.com_d', '2022-01-04 11:26:51', '$2y$10$lOn92/jw4nOr9VWXo2TlY.KvE8hLt.PFX49BoG6l6i2ZutDdjyKWa', 'Laivurinkatu 41', NULL, NULL, '1970-01-01', '13', NULL, 'FI', NULL, NULL, NULL, '', 'www.dorica.fi', 'publish', NULL, NULL, NULL, NULL, '2022-01-14 19:37:25', 'P5s7NJkGy58XS2eiyRhrX9CiFpyfvgBsrM7UzSk3uK2qzJTNMQQAoViiclDv', '2022-01-04 11:19:07', '2022-01-14 19:37:25', NULL, NULL, NULL, '4918292-4', 'Barana', NULL, NULL, 'mail@dorica.fi', 4, 1, '2022-01-04 12:51:09'),
(54, ' ', NULL, NULL, 'nurulhasan129@gmail.com', NULL, '$2y$10$0NZ3ZcdySu.kqxLp4bIBdeb9NX2HEteDkjpamWxvNFqi.WKn0bPWm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-04 11:47:11', '2022-01-04 11:47:11', NULL, NULL, NULL, 'N2R TECHNOLOGIES', 'N2R TECHNOLOGIES', NULL, NULL, NULL, 1, NULL, NULL),
(55, 'krishna mishra', 'krishna', 'mishra', 'er.krishna.mishra1@gmail.com', '2022-01-06 10:00:20', '$2y$10$FNLCCWlEQiKr33h4GMm/l.uTDFpMoHDoUFGgBZ6M6CvDwqu7mHgOO', 'krishna Address', '9026574061', '9026574061', '1970-01-01', '19', NULL, NULL, NULL, NULL, 245, 'Krishna Mishra', 'krishna.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-04 14:41:54', '2022-01-06 10:08:39', NULL, NULL, NULL, 'Nisi aut dolore sint', 'Kelly Armstrong', NULL, NULL, 'er.krishna.mishra@gmail.com', 0, NULL, NULL),
(56, ' ', NULL, NULL, 'websales999t9@gmail.com', '2022-01-06 08:12:02', '$2y$10$1AwqLWzztI5z.sHxHDCY2eBUEO9pR/F5LME5xon6gT2TzBXG9hjMO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-06 08:11:05', '2022-01-06 08:12:02', NULL, NULL, NULL, '12121212', 'qweqeq', NULL, NULL, NULL, 0, NULL, NULL),
(59, ' ', NULL, NULL, 'websalgs9999@gmail.com', NULL, '$2y$10$tWmJpD8PYrJeMqucofD8We2T4xHSd7W4E8kdKEUoKyRrb03A8MLFW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-06 09:26:02', '2022-01-06 09:26:02', NULL, NULL, NULL, '1234567890', 'N2R Technologies', NULL, NULL, NULL, 0, NULL, NULL),
(60, ' ', NULL, NULL, 'websaljhhes9999@gmail.com', '2022-01-06 09:38:04', '$2y$10$nJpBFPvxao9JVXIJcenYO.9Wn8q1yBXS9QN5wr9rI..d1/ujeLOpi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-06 09:37:48', '2022-01-06 09:38:04', NULL, NULL, NULL, '23243434', 'qwertyui', NULL, NULL, NULL, 0, NULL, NULL),
(61, ' ', NULL, NULL, 'websales999gh9@gmail.com', '2022-01-06 09:41:47', '$2y$10$qr2OXrYw7PhyQdadiixnq.eeGl/LMtZ59A/ZKIhztnaJTfnNzMvKK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-06 09:41:24', '2022-01-06 09:41:47', NULL, NULL, NULL, '1234567890', 'qwertyuiop', NULL, NULL, NULL, 0, NULL, NULL),
(62, ' ', NULL, NULL, 'websadfdles9999@gmail.com', NULL, '$2y$10$Tkpx44ka6I/MKPk8a8KwEOyegRez9rqPcAARTXeyzBvXDJ0gelJSG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-06 09:44:39', '2022-01-06 09:44:39', NULL, NULL, NULL, '121223343', 'police1', NULL, NULL, NULL, 0, NULL, NULL),
(63, ' ', NULL, NULL, 'websalqwes9999@gmail.com', '2022-01-06 10:01:03', '$2y$10$P1qmFmEqH/QFw7GuXJdRyu.OmdZJ.iYrRtlmjt1E3d/YJGXVDShHG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-06 10:00:36', '2022-01-06 10:01:03', NULL, NULL, NULL, '12121212', 'dedehy', NULL, NULL, NULL, 0, NULL, NULL),
(64, ' ', NULL, NULL, 'websalvhges9999@gmail.com', '2022-01-06 10:06:00', '$2y$10$vxm2YX1UFGgiuY73uh8A.e0VRv1hMK0Diwk8iQOX0xSBPLyhyPWYe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-06 10:05:49', '2022-01-06 10:06:00', NULL, NULL, NULL, '232323', 'qewrtyuio', NULL, NULL, NULL, 0, NULL, NULL),
(65, ' ', NULL, NULL, 'websales99599@gmail.com', '2022-01-06 10:07:40', '$2y$10$k4l3zIJwgICHJsc.M2q4uuIKqhLeri4sdXTq/V.7ZhclnA1YX5Oki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-06 10:07:29', '2022-01-06 10:07:40', NULL, NULL, NULL, '0987654', 'asdfghjkl', NULL, NULL, NULL, 0, NULL, NULL),
(66, 'Ratan Tata', 'Ratan', 'Tata', 'n2r.sohrab@gmail.com', '2022-01-06 13:13:26', '$2y$10$EQUb.VReBomyBAo/FZz.cuG2MDj/UjziXVM03eB/vodnfv5jzRaRi', 'Noida sector 64', '9990809898', '234556923', '1970-01-01', '93', NULL, NULL, NULL, NULL, 260, 'Info hidden', 'tataconsultancy.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-06 13:12:03', '2022-01-11 08:58:29', NULL, NULL, NULL, '0237', 'Tata Consultancy Services', NULL, NULL, 'tcs@gmail.com', 1, NULL, NULL),
(67, ' ', NULL, NULL, 'avinash.kr98@gmail.com', NULL, '$2y$10$smWmj1KPcNKfSUa3KPjL5.XIrFWBLKJq3gG45QrvLDPvWNx1ZrRXK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-06 15:07:06', '2022-01-06 15:07:06', NULL, NULL, NULL, 'N2RTECHNOLOGIES', 'N2RTECHNOLOGIES', NULL, NULL, NULL, 0, NULL, NULL),
(68, 'Avinash kumar', 'Avinash', 'kumar', 'extraenergy43@gmail.com', '2022-01-06 12:01:21', '$2y$10$oPnyKRRcRowzTOKIC6A1aOotV12A52z8VK7Bk9N9wheO/O7xmTE7C', 'A 238/1B', NULL, '09953495051', '1970-01-01', '10', NULL, NULL, NULL, NULL, 262, 'test', 'http://worksheriff.com/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-06 15:18:27', '2022-02-04 14:20:58', NULL, NULL, NULL, '355577719', 'N2RTECHNOLOGIES', NULL, NULL, 'avinash.kr9811@gmail.com', 0, NULL, NULL),
(69, ' ', NULL, NULL, 'mail.tyokokeilu@gmail.com', NULL, '$2y$10$ILDGvaYlfpKrdXXM5xHWPevlSNghuEchZxnMcbeWVQqGNw390j0Si', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-07 00:28:56', '2022-01-07 00:28:56', NULL, NULL, NULL, '123434-4', 'Työkokeilu', NULL, NULL, NULL, 0, NULL, NULL),
(70, ' ', NULL, NULL, 'gavaj@mailinator.com', NULL, '$2y$10$9RXW7DHmzPE1qMhyp5xrzuaAWqyb48Ejk/ELyEhCLZSJ432N23mpK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-07 13:49:23', '2022-01-07 13:49:23', NULL, NULL, NULL, 'Esse officia repelle', 'Amy Merrill', NULL, NULL, NULL, 0, NULL, NULL),
(71, 'Krishna Mishra Krishna', 'Krishna Mishra', 'Krishna', 'er.krishna.mishra@gmail.com', '2022-01-07 16:06:24', '$2y$10$p5kYt4AX2TOldUYVGDwwgeWBROt2Kjsxch.vauCdcIgTO0PPmZzRW', 'VIJAY NAGAR BBK', '09026574061', '09026574061', '1970-01-01', '11', NULL, NULL, NULL, NULL, NULL, 'ddd', 'ddddddddcvcc', NULL, 71, NULL, NULL, NULL, NULL, NULL, '2022-01-07 15:19:21', '2022-01-12 11:25:40', NULL, NULL, NULL, '111111111', 'krishna mishra1', NULL, NULL, 'er.krishna.mishra@gmail.com', 0, NULL, NULL),
(72, ' ', NULL, NULL, 'fatehgotra121@gmail.com_d_d', '2022-01-17 19:30:30', '$2y$10$ZgBF3nn9D4ubEonZzT2qJ.djKW7W6zOphrqieG.miI2v7OCty/Me.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'blocked', 72, NULL, NULL, NULL, '2022-01-17 16:02:36', NULL, '2022-01-07 15:38:51', '2022-01-17 16:02:36', NULL, NULL, NULL, '28946573', 'Tender Gems', NULL, NULL, NULL, 0, NULL, NULL),
(73, ' ', NULL, NULL, 'mail@tyokokeilu.fi_d', '2022-01-07 19:19:43', '$2y$10$BzNB/qDv5HK10.xWFWy3y.XtjNfN4XpB/xVAbgPgTMhv8bGQLdYCO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-07 19:24:52', NULL, '2022-01-07 19:18:10', '2022-01-07 19:24:52', NULL, NULL, NULL, '8954329-1', 'Työkokeilu', NULL, NULL, NULL, 0, NULL, NULL),
(76, ' ', NULL, NULL, 'websalesgh9999@gmail.com', '2022-01-10 14:31:38', '$2y$10$Z3yo49h2Px6TmNBxFNl9x.njBJY4B6Iq/EzYpbxkgT3g29WttARH2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-10 14:30:17', '2022-01-10 14:31:38', NULL, NULL, NULL, '09876543', 'qwertyuiop', NULL, NULL, NULL, 0, NULL, NULL),
(77, ' ', NULL, NULL, 'website.design1008@gmail.com_d', '2022-01-10 14:37:51', '$2y$10$ZtjGjHhsW.v.5SgY0VuyBOx6Pit1M1bOBws3FI47KCF1HdOPGi7Qq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-17 16:05:36', NULL, '2022-01-10 14:36:48', '2022-01-17 16:05:36', NULL, NULL, NULL, '8312541', 'My new company', NULL, NULL, NULL, 0, NULL, NULL),
(78, 'dfdfdf efdfdf', 'dfdfdf', 'efdfdf', 'websales9999@gmail.com', '2022-01-10 14:37:53', '$2y$10$Duk7RDG74tMgQm5pwlJjkOHCvlfzK5DDZhIXvJNmWXY6n3X3H.EKC', 'fxdfdfdf', NULL, NULL, '1970-01-01', '19', NULL, NULL, NULL, NULL, 276, '', 'www.gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-10 14:37:29', '2022-01-12 16:04:40', NULL, NULL, NULL, '0987654', 'Test company', NULL, NULL, 'websales9999@gmail.com', 0, NULL, NULL),
(79, ' ', NULL, NULL, 'no-reply@tyokokeilu.fi_d', NULL, '$2y$10$08oJIY5E2MLntrIKkEfHuOlEOKIg//uamUjSZN7f9qiwdmLv0JQO6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-14 23:02:10', NULL, '2022-01-10 15:32:15', '2022-01-14 23:02:10', NULL, NULL, NULL, '1234344-5', 'Työkokeili', NULL, NULL, NULL, 0, NULL, NULL),
(80, ' ', NULL, NULL, 'mediafinoy@gmail.com_d', NULL, '$2y$10$4sgER6N6a8QCpG4iiMMpVO36Dyd9a9QSi8baAlz9m5RJxXpyTJmCC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-13 09:16:51', NULL, '2022-01-12 17:11:59', '2022-01-13 09:16:51', NULL, NULL, NULL, '2572919-9', 'Mediafin Av Production Oy', NULL, NULL, NULL, 0, NULL, NULL),
(81, ' ', NULL, NULL, 'toomaj.shabani@gmail.com_d', NULL, '$2y$10$SB/.lFxVedX3bhfa.WZil.ZSXqxSd0sAMnBoULYN8qf2q9njDqqsy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-13 09:16:51', NULL, '2022-01-12 17:16:56', '2022-01-13 09:16:51', NULL, NULL, NULL, '2572919-9', 'Mediafin', NULL, NULL, NULL, 0, NULL, NULL),
(82, 'Toomaj Shabani', 'Toomaj', 'Shabani', 'info@mediafin.fi_d', NULL, '$2y$10$YXbGjs4TEJfdTMN12DX0Cusj0ZOZFEHbqdIRcnSEDMQDszoYmHBKa', NULL, NULL, '045-1108911', '0000-00-00', 'Helsinki', NULL, 'FI', NULL, NULL, NULL, '', NULL, 'publish', NULL, NULL, NULL, NULL, '2022-01-13 09:16:51', NULL, '2022-01-12 17:22:47', '2022-01-13 09:16:51', NULL, NULL, NULL, '2572919-9', 'Mediafin Oy', NULL, NULL, NULL, 2, NULL, NULL),
(83, ' ', NULL, NULL, 'innodatalabidl@gmail.com', NULL, '$2y$10$lEwnOrmFYmYE7r03so.TtuYQwrM6VBoOEvvQ4Z602WNL/4PLf2IiK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-13 09:31:55', '2022-01-13 09:31:55', NULL, NULL, NULL, '023869457', 'IDL TECH', NULL, NULL, NULL, 0, NULL, NULL),
(85, ' ', NULL, NULL, 'no-reply@tyokokeilu.fi', NULL, '$2y$10$hS/qRiUpti3UlgVDuY4ax.apI17bZNNVbuP4rOmc.sABVxck1l0ky', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-14 23:03:28', '2022-01-14 23:03:28', NULL, NULL, NULL, '12345678-9', 'Dorica', NULL, NULL, NULL, 0, NULL, NULL),
(87, ' ', NULL, NULL, 'companynull@gmail.com_d', '2022-01-18 11:56:50', '$2y$10$EBmcteUGWIEkpoAwd8hGsOFIL5lBVoehMZTsG3TcW.POqKO6UKhFO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'blocked', 87, NULL, NULL, NULL, NULL, NULL, '2022-01-18 08:26:21', '2022-01-18 08:27:54', NULL, NULL, NULL, '32814526', 'Company Null', NULL, NULL, NULL, 0, NULL, NULL),
(92, 'Dorino Niemi', 'Dorino', 'Niemi', 'vargha.bahagir@gmail.com', '2022-01-31 21:34:04', '$2y$10$yuUH8VLDqPjaoAfLmzLaAOU7zm3zEDsYl5U9bTcC8tZPYLXacYuwO', 'Jackass', NULL, NULL, '1970-01-01', '114', NULL, NULL, NULL, NULL, 283, '', 'www.dorica.fi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-31 21:33:15', '2022-02-03 20:12:38', NULL, NULL, NULL, '8912323-2', 'Dorica', NULL, NULL, 'mail@dorica.fi', 0, NULL, NULL),
(93, ' ', NULL, NULL, 'helloeldo@gmail.com', NULL, '$2y$10$vioyY.PaBdYkDqo9okV8IOPteA0iWYMQ1DHR7fQq2.zzE.pbHByIe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-04 17:02:49', '2022-02-04 17:02:49', NULL, NULL, NULL, '01723694', 'Eldorado foods', NULL, NULL, NULL, 0, NULL, NULL),
(94, ' ', NULL, NULL, 'marks@gmail.com', NULL, '$2y$10$ooywTAwyen0OmndKEv3nVe9cXLj/x48TOfroYT0MfSV4e4/OuU57O', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-04 17:08:22', '2022-02-04 17:08:22', NULL, NULL, NULL, '987765734', 'Mark spencer foods', NULL, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_transactions`
--

CREATE TABLE `user_transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `payable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payable_id` bigint UNSIGNED NOT NULL,
  `wallet_id` bigint UNSIGNED DEFAULT NULL,
  `type` enum('deposit','withdraw') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(64,0) NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `payment_id` bigint DEFAULT NULL,
  `booking_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_transactions`
--

INSERT INTO `user_transactions` (`id`, `payable_type`, `payable_id`, `wallet_id`, `type`, `amount`, `confirmed`, `meta`, `uuid`, `created_at`, `updated_at`, `create_user`, `update_user`, `payment_id`, `booking_id`) VALUES
(1, 'App\\User', 19, 19, 'deposit', '22', 1, '{\"admin_deposit\":1}', '0b3f8c8c-f53e-4e36-a567-8a8ba247c17c', '2021-02-05 17:59:16', '2021-02-05 17:59:16', 1, NULL, NULL, NULL),
(2, 'App\\User', 19, 19, 'deposit', '2000000', 1, '{\"admin_deposit\":1}', 'b4f7d73c-bc30-48de-9b79-5551633d8c89', '2021-02-05 17:59:23', '2021-02-05 17:59:23', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_transfers`
--

CREATE TABLE `user_transfers` (
  `id` bigint UNSIGNED NOT NULL,
  `from_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` bigint UNSIGNED NOT NULL,
  `to_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_id` bigint UNSIGNED NOT NULL,
  `status` enum('exchange','transfer','paid','refund','gift') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'transfer',
  `status_last` enum('exchange','transfer','paid','refund','gift') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit_id` bigint UNSIGNED NOT NULL,
  `withdraw_id` bigint UNSIGNED NOT NULL,
  `discount` decimal(64,0) NOT NULL DEFAULT '0',
  `fee` decimal(64,0) NOT NULL DEFAULT '0',
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_upgrade_request`
--

CREATE TABLE `user_upgrade_request` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `role_request` int DEFAULT NULL,
  `approved_time` datetime DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_by` int DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_wallets`
--

CREATE TABLE `user_wallets` (
  `id` bigint UNSIGNED NOT NULL,
  `holder_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `holder_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` decimal(64,0) NOT NULL DEFAULT '0',
  `decimal_places` smallint NOT NULL DEFAULT '2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_wallets`
--

INSERT INTO `user_wallets` (`id`, `holder_type`, `holder_id`, `name`, `slug`, `description`, `balance`, `decimal_places`, `created_at`, `updated_at`, `create_user`, `update_user`) VALUES
(1, 'App\\User', 1, 'Default Wallet', 'default', NULL, '0', 2, '2020-11-18 06:20:43', '2020-11-18 06:20:43', NULL, NULL),
(2, 'App\\User', 2, 'Default Wallet', 'default', NULL, '0', 2, '2020-11-18 06:21:32', '2020-11-18 06:21:32', NULL, NULL),
(3, 'App\\User', 17, 'Default Wallet', 'default', NULL, '0', 2, '2020-11-18 06:33:00', '2020-11-18 06:33:00', NULL, NULL),
(4, 'App\\User', 16, 'Default Wallet', 'default', NULL, '0', 2, '2020-11-18 06:33:00', '2020-11-18 06:33:00', NULL, NULL),
(5, 'App\\User', 15, 'Default Wallet', 'default', NULL, '0', 2, '2020-11-18 06:33:00', '2020-11-18 06:33:00', NULL, NULL),
(6, 'App\\User', 14, 'Default Wallet', 'default', NULL, '0', 2, '2020-11-18 06:33:00', '2020-11-18 06:33:00', NULL, NULL),
(7, 'App\\User', 13, 'Default Wallet', 'default', NULL, '0', 2, '2020-11-18 06:33:00', '2020-11-18 06:33:00', NULL, NULL),
(8, 'App\\User', 12, 'Default Wallet', 'default', NULL, '0', 2, '2020-11-18 06:33:00', '2020-11-18 06:33:00', NULL, NULL),
(9, 'App\\User', 11, 'Default Wallet', 'default', NULL, '0', 2, '2020-11-18 06:33:00', '2020-11-18 06:33:00', NULL, NULL),
(10, 'App\\User', 10, 'Default Wallet', 'default', NULL, '0', 2, '2020-11-18 06:33:00', '2020-11-18 06:33:00', NULL, NULL),
(11, 'App\\User', 9, 'Default Wallet', 'default', NULL, '0', 2, '2020-11-18 06:33:00', '2020-11-18 06:33:00', NULL, NULL),
(12, 'App\\User', 8, 'Default Wallet', 'default', NULL, '0', 2, '2020-11-18 06:33:00', '2020-11-18 06:33:00', NULL, NULL),
(13, 'App\\User', 7, 'Default Wallet', 'default', NULL, '0', 2, '2020-11-18 06:33:00', '2020-11-18 06:33:00', NULL, NULL),
(14, 'App\\User', 6, 'Default Wallet', 'default', NULL, '0', 2, '2020-11-18 06:33:00', '2020-11-18 06:33:00', NULL, NULL),
(15, 'App\\User', 5, 'Default Wallet', 'default', NULL, '0', 2, '2020-11-18 06:33:00', '2020-11-18 06:33:00', NULL, NULL),
(16, 'App\\User', 4, 'Default Wallet', 'default', NULL, '0', 2, '2020-11-18 06:33:00', '2020-11-18 06:33:00', NULL, NULL),
(17, 'App\\User', 3, 'Default Wallet', 'default', NULL, '0', 2, '2020-11-18 06:33:00', '2020-11-18 06:33:00', NULL, NULL),
(18, 'App\\User', 18, 'Default Wallet', 'default', NULL, '0', 2, '2020-11-18 06:39:19', '2020-11-18 06:39:19', NULL, NULL),
(19, 'App\\User', 19, 'Default Wallet', 'default', NULL, '2000022', 2, '2021-01-04 18:03:10', '2021-02-05 17:59:23', NULL, NULL),
(20, 'App\\User', 20, 'Default Wallet', 'default', NULL, '0', 2, '2021-01-27 11:53:23', '2021-01-27 11:53:23', NULL, NULL),
(21, 'App\\User', 23, 'Default Wallet', 'default', NULL, '0', 2, '2021-02-05 16:55:36', '2021-02-05 16:55:36', NULL, NULL),
(22, 'App\\User', 24, 'Default Wallet', 'default', NULL, '0', 2, '2021-02-05 17:57:41', '2021-02-05 17:57:41', NULL, NULL),
(23, 'App\\User', 25, 'Default Wallet', 'default', NULL, '0', 2, '2021-02-09 13:18:52', '2021-02-09 13:18:52', NULL, NULL),
(24, 'App\\User', 26, 'Default Wallet', 'default', NULL, '0', 2, '2021-05-18 07:47:15', '2021-05-18 07:47:15', NULL, NULL),
(25, 'App\\User', 27, 'Default Wallet', 'default', NULL, '0', 2, '2021-08-01 14:10:01', '2021-08-01 14:10:01', NULL, NULL),
(26, 'App\\User', 31, 'Default Wallet', 'default', NULL, '0', 2, '2021-08-31 09:33:45', '2021-08-31 09:33:45', NULL, NULL),
(27, 'App\\User', 33, 'Default Wallet', 'default', NULL, '0', 2, '2021-11-26 08:02:45', '2021-11-26 08:02:45', NULL, NULL),
(28, 'App\\User', 32, 'Default Wallet', 'default', NULL, '0', 2, '2021-11-26 08:02:45', '2021-11-26 08:02:45', NULL, NULL),
(29, 'App\\User', 34, 'Default Wallet', 'default', NULL, '0', 2, '2021-11-26 08:30:26', '2021-11-26 08:30:26', NULL, NULL),
(30, 'App\\User', 35, 'Default Wallet', 'default', NULL, '0', 2, '2021-11-26 12:21:11', '2021-11-26 12:21:11', NULL, NULL),
(31, 'App\\User', 36, 'Default Wallet', 'default', NULL, '0', 2, '2021-12-08 11:09:35', '2021-12-08 11:09:35', NULL, NULL),
(32, 'App\\User', 39, 'Default Wallet', 'default', NULL, '0', 2, '2021-12-21 15:37:45', '2021-12-21 15:37:45', NULL, NULL),
(33, 'App\\User', 38, 'Default Wallet', 'default', NULL, '0', 2, '2021-12-21 15:37:45', '2021-12-21 15:37:45', NULL, NULL),
(34, 'App\\User', 37, 'Default Wallet', 'default', NULL, '0', 2, '2021-12-21 15:37:45', '2021-12-21 15:37:45', NULL, NULL),
(35, 'App\\User', 40, 'Default Wallet', 'default', NULL, '0', 2, '2021-12-23 10:22:36', '2021-12-23 10:22:36', NULL, NULL),
(36, 'App\\User', 41, 'Default Wallet', 'default', NULL, '0', 2, '2021-12-23 15:26:20', '2021-12-23 15:26:20', NULL, NULL),
(37, 'App\\User', 42, 'Default Wallet', 'default', NULL, '0', 2, '2021-12-23 16:10:29', '2021-12-23 16:10:29', NULL, NULL),
(38, 'App\\User', 49, 'Default Wallet', 'default', NULL, '0', 2, '2021-12-28 19:44:18', '2021-12-28 19:44:18', NULL, NULL),
(39, 'App\\User', 48, 'Default Wallet', 'default', NULL, '0', 2, '2021-12-28 19:44:18', '2021-12-28 19:44:18', NULL, NULL),
(40, 'App\\User', 47, 'Default Wallet', 'default', NULL, '0', 2, '2021-12-28 19:44:18', '2021-12-28 19:44:18', NULL, NULL),
(41, 'App\\User', 46, 'Default Wallet', 'default', NULL, '0', 2, '2021-12-28 19:44:18', '2021-12-28 19:44:18', NULL, NULL),
(42, 'App\\User', 45, 'Default Wallet', 'default', NULL, '0', 2, '2021-12-28 19:44:18', '2021-12-28 19:44:18', NULL, NULL),
(43, 'App\\User', 50, 'Default Wallet', 'default', NULL, '0', 2, '2021-12-31 07:44:05', '2021-12-31 07:44:05', NULL, NULL),
(44, 'App\\User', 52, 'Default Wallet', 'default', NULL, '0', 2, '2021-12-31 17:52:42', '2021-12-31 17:52:42', NULL, NULL),
(45, 'App\\User', 51, 'Default Wallet', 'default', NULL, '0', 2, '2021-12-31 17:52:43', '2021-12-31 17:52:43', NULL, NULL),
(46, 'App\\User', 53, 'Default Wallet', 'default', NULL, '0', 2, '2022-01-04 11:45:46', '2022-01-04 11:45:46', NULL, NULL),
(47, 'App\\User', 54, 'Default Wallet', 'default', NULL, '0', 2, '2022-01-04 12:46:37', '2022-01-04 12:46:37', NULL, NULL),
(48, 'App\\User', 56, 'Default Wallet', 'default', NULL, '0', 2, '2022-01-06 08:11:46', '2022-01-06 08:11:46', NULL, NULL),
(49, 'App\\User', 55, 'Default Wallet', 'default', NULL, '0', 2, '2022-01-06 08:11:46', '2022-01-06 08:11:46', NULL, NULL),
(50, 'App\\User', 68, 'Default Wallet', 'default', NULL, '0', 2, '2022-01-06 19:06:18', '2022-01-06 19:06:18', NULL, NULL),
(51, 'App\\User', 67, 'Default Wallet', 'default', NULL, '0', 2, '2022-01-06 19:06:18', '2022-01-06 19:06:18', NULL, NULL),
(52, 'App\\User', 66, 'Default Wallet', 'default', NULL, '0', 2, '2022-01-06 19:06:18', '2022-01-06 19:06:18', NULL, NULL),
(53, 'App\\User', 65, 'Default Wallet', 'default', NULL, '0', 2, '2022-01-06 19:06:18', '2022-01-06 19:06:18', NULL, NULL),
(54, 'App\\User', 64, 'Default Wallet', 'default', NULL, '0', 2, '2022-01-06 19:06:18', '2022-01-06 19:06:18', NULL, NULL),
(55, 'App\\User', 63, 'Default Wallet', 'default', NULL, '0', 2, '2022-01-06 19:06:18', '2022-01-06 19:06:18', NULL, NULL),
(56, 'App\\User', 62, 'Default Wallet', 'default', NULL, '0', 2, '2022-01-06 19:06:18', '2022-01-06 19:06:18', NULL, NULL),
(57, 'App\\User', 61, 'Default Wallet', 'default', NULL, '0', 2, '2022-01-06 19:06:18', '2022-01-06 19:06:18', NULL, NULL),
(58, 'App\\User', 60, 'Default Wallet', 'default', NULL, '0', 2, '2022-01-06 19:06:18', '2022-01-06 19:06:18', NULL, NULL),
(59, 'App\\User', 59, 'Default Wallet', 'default', NULL, '0', 2, '2022-01-06 19:06:18', '2022-01-06 19:06:18', NULL, NULL),
(60, 'App\\User', 73, 'Default Wallet', 'default', NULL, '0', 2, '2022-01-07 19:24:32', '2022-01-07 19:24:32', NULL, NULL),
(61, 'App\\User', 72, 'Default Wallet', 'default', NULL, '0', 2, '2022-01-07 19:24:32', '2022-01-07 19:24:32', NULL, NULL),
(62, 'App\\User', 71, 'Default Wallet', 'default', NULL, '0', 2, '2022-01-07 19:24:32', '2022-01-07 19:24:32', NULL, NULL),
(63, 'App\\User', 70, 'Default Wallet', 'default', NULL, '0', 2, '2022-01-07 19:24:32', '2022-01-07 19:24:32', NULL, NULL),
(64, 'App\\User', 69, 'Default Wallet', 'default', NULL, '0', 2, '2022-01-07 19:24:32', '2022-01-07 19:24:32', NULL, NULL),
(65, 'App\\User', 74, 'Default Wallet', 'default', NULL, '0', 2, '2022-01-09 20:30:41', '2022-01-09 20:30:41', NULL, NULL),
(66, 'App\\User', 78, 'Default Wallet', 'default', NULL, '0', 2, '2022-01-10 15:27:18', '2022-01-10 15:27:18', NULL, NULL),
(67, 'App\\User', 77, 'Default Wallet', 'default', NULL, '0', 2, '2022-01-10 15:27:18', '2022-01-10 15:27:18', NULL, NULL),
(68, 'App\\User', 76, 'Default Wallet', 'default', NULL, '0', 2, '2022-01-10 15:27:18', '2022-01-10 15:27:18', NULL, NULL),
(69, 'App\\User', 79, 'Default Wallet', 'default', NULL, '0', 2, '2022-01-12 07:59:47', '2022-01-12 07:59:47', NULL, NULL),
(70, 'App\\User', 82, 'Default Wallet', 'default', NULL, '0', 2, '2022-01-12 17:22:53', '2022-01-12 17:22:53', NULL, NULL),
(71, 'App\\User', 81, 'Default Wallet', 'default', NULL, '0', 2, '2022-01-12 17:27:26', '2022-01-12 17:27:26', NULL, NULL),
(72, 'App\\User', 80, 'Default Wallet', 'default', NULL, '0', 2, '2022-01-12 17:27:26', '2022-01-12 17:27:26', NULL, NULL),
(73, 'App\\User', 83, 'Default Wallet', 'default', NULL, '0', 2, '2022-01-13 09:38:46', '2022-01-13 09:38:46', NULL, NULL),
(74, 'App\\User', 84, 'Default Wallet', 'default', NULL, '0', 2, '2022-01-14 19:38:45', '2022-01-14 19:38:45', NULL, NULL),
(75, 'App\\User', 86, 'Default Wallet', 'default', NULL, '0', 2, '2022-01-18 08:15:42', '2022-01-18 08:15:42', NULL, NULL),
(76, 'App\\User', 89, 'Default Wallet', 'default', NULL, '0', 2, '2022-01-18 09:02:47', '2022-01-18 09:02:47', NULL, NULL),
(77, 'App\\User', 87, 'Default Wallet', 'default', NULL, '0', 2, '2022-01-18 09:02:47', '2022-01-18 09:02:47', NULL, NULL),
(78, 'App\\User', 91, 'Default Wallet', 'default', NULL, '0', 2, '2022-01-26 22:09:23', '2022-01-26 22:09:23', NULL, NULL),
(79, 'App\\User', 92, 'Default Wallet', 'default', NULL, '0', 2, '2022-02-01 22:10:05', '2022-02-01 22:10:05', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_wishlist`
--

CREATE TABLE `user_wishlist` (
  `id` bigint UNSIGNED NOT NULL,
  `object_id` int DEFAULT NULL,
  `object_model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_wishlist`
--

INSERT INTO `user_wishlist` (`id`, `object_id`, `object_model`, `user_id`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(3, 9, 'hotel', 1, 1, NULL, '2020-12-12 12:12:51', '2020-12-12 12:12:51'),
(5, 22, 'tour', 1, 1, NULL, '2020-12-12 12:19:37', '2020-12-12 12:19:37'),
(6, 21, 'tour', 1, 1, NULL, '2020-12-12 12:19:39', '2020-12-12 12:19:39'),
(7, 20, 'tour', 1, 1, NULL, '2020-12-12 12:19:40', '2020-12-12 12:19:40'),
(8, 19, 'tour', 1, 1, NULL, '2020-12-12 12:19:42', '2020-12-12 12:19:42'),
(9, 10, 'space', 1, 1, NULL, '2020-12-12 12:19:56', '2020-12-12 12:19:56'),
(10, 2, 'space', 1, 1, NULL, '2020-12-12 12:19:57', '2020-12-12 12:19:57'),
(11, 1, 'space', 1, 1, NULL, '2020-12-12 12:19:58', '2020-12-12 12:19:58'),
(12, 5, 'car', 1, 1, NULL, '2020-12-12 12:20:04', '2020-12-12 12:20:04'),
(13, 4, 'car', 1, 1, NULL, '2020-12-12 12:20:06', '2020-12-12 12:20:06'),
(14, 3, 'car', 1, 1, NULL, '2020-12-12 12:20:07', '2020-12-12 12:20:07'),
(15, 2, 'car', 1, 1, NULL, '2020-12-12 12:20:08', '2020-12-12 12:20:08');

-- --------------------------------------------------------

--
-- Table structure for table `vendors_plan_payments`
--

CREATE TABLE `vendors_plan_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `vendor_id` int NOT NULL,
  `amount` int NOT NULL,
  `payment_gateway` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `free_trial` int NOT NULL,
  `price_per` enum('onetime','per_time') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'onetime',
  `price_unit` enum('day','month','year') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'day',
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bravo_attrs`
--
ALTER TABLE `bravo_attrs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_attrs_translations`
--
ALTER TABLE `bravo_attrs_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bravo_attrs_translations_origin_id_locale_unique` (`origin_id`,`locale`);

--
-- Indexes for table `bravo_bookings`
--
ALTER TABLE `bravo_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_booking_meta`
--
ALTER TABLE `bravo_booking_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_booking_payments`
--
ALTER TABLE `bravo_booking_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_contact`
--
ALTER TABLE `bravo_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_enquiries`
--
ALTER TABLE `bravo_enquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_jobs`
--
ALTER TABLE `bravo_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_hotels_slug_index` (`slug`);

--
-- Indexes for table `bravo_job_categories`
--
ALTER TABLE `bravo_job_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_job_term`
--
ALTER TABLE `bravo_job_term`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_job_translations`
--
ALTER TABLE `bravo_job_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_hotel_translations_locale_index` (`locale`);

--
-- Indexes for table `bravo_locations`
--
ALTER TABLE `bravo_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_locations__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`);

--
-- Indexes for table `bravo_location_translations`
--
ALTER TABLE `bravo_location_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bravo_location_translations_origin_id_locale_unique` (`origin_id`,`locale`);

--
-- Indexes for table `bravo_payouts`
--
ALTER TABLE `bravo_payouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_review`
--
ALTER TABLE `bravo_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_review_meta`
--
ALTER TABLE `bravo_review_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_seo`
--
ALTER TABLE `bravo_seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_terms`
--
ALTER TABLE `bravo_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_terms_translations`
--
ALTER TABLE `bravo_terms_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bravo_terms_translations_origin_id_locale_unique` (`origin_id`,`locale`);

--
-- Indexes for table `bravo_tours`
--
ALTER TABLE `bravo_tours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_tours_slug_index` (`slug`);

--
-- Indexes for table `core_inbox`
--
ALTER TABLE `core_inbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_inbox_messages`
--
ALTER TABLE `core_inbox_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_languages`
--
ALTER TABLE `core_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_menus`
--
ALTER TABLE `core_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_menu_translations`
--
ALTER TABLE `core_menu_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_menu_translations_locale_index` (`locale`);

--
-- Indexes for table `core_model_has_permissions`
--
ALTER TABLE `core_model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `core_model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `core_model_has_roles`
--
ALTER TABLE `core_model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `core_model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `core_news`
--
ALTER TABLE `core_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_news_category`
--
ALTER TABLE `core_news_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_news_category__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`);

--
-- Indexes for table `core_news_category_translations`
--
ALTER TABLE `core_news_category_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_news_category_translations_locale_index` (`locale`);

--
-- Indexes for table `core_news_tag`
--
ALTER TABLE `core_news_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_news_translations`
--
ALTER TABLE `core_news_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_news_translations_locale_index` (`locale`);

--
-- Indexes for table `core_notifications`
--
ALTER TABLE `core_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_pages`
--
ALTER TABLE `core_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_pages_slug_index` (`slug`);

--
-- Indexes for table `core_page_translations`
--
ALTER TABLE `core_page_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_page_translations_origin_id_locale_unique` (`origin_id`,`locale`),
  ADD KEY `core_page_translations_locale_index` (`locale`);

--
-- Indexes for table `core_permissions`
--
ALTER TABLE `core_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_roles`
--
ALTER TABLE `core_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_role_has_permissions`
--
ALTER TABLE `core_role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `core_role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `core_settings`
--
ALTER TABLE `core_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_subscribers`
--
ALTER TABLE `core_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_tags`
--
ALTER TABLE `core_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_tag_translations`
--
ALTER TABLE `core_tag_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_tag_translations_locale_index` (`locale`);

--
-- Indexes for table `core_templates`
--
ALTER TABLE `core_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_template_translations`
--
ALTER TABLE `core_template_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_template_translations_locale_index` (`locale`);

--
-- Indexes for table `core_translations`
--
ALTER TABLE `core_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_vendor_plans`
--
ALTER TABLE `core_vendor_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_vendor_plan_meta`
--
ALTER TABLE `core_vendor_plan_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
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
-- Indexes for table `social_forums`
--
ALTER TABLE `social_forums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_groups`
--
ALTER TABLE `social_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_group_user`
--
ALTER TABLE `social_group_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_posts`
--
ALTER TABLE `social_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_post_comments`
--
ALTER TABLE `social_post_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_user_follow`
--
ALTER TABLE `social_user_follow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_transactions`
--
ALTER TABLE `user_transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_transactions_uuid_unique` (`uuid`),
  ADD KEY `user_transactions_payable_type_payable_id_index` (`payable_type`,`payable_id`),
  ADD KEY `payable_type_ind` (`payable_type`,`payable_id`,`type`),
  ADD KEY `payable_confirmed_ind` (`payable_type`,`payable_id`,`confirmed`),
  ADD KEY `payable_type_confirmed_ind` (`payable_type`,`payable_id`,`type`,`confirmed`),
  ADD KEY `user_transactions_type_index` (`type`),
  ADD KEY `user_transactions_wallet_id_foreign` (`wallet_id`);

--
-- Indexes for table `user_transfers`
--
ALTER TABLE `user_transfers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_transfers_uuid_unique` (`uuid`),
  ADD KEY `user_transfers_from_type_from_id_index` (`from_type`,`from_id`),
  ADD KEY `user_transfers_to_type_to_id_index` (`to_type`,`to_id`),
  ADD KEY `user_transfers_deposit_id_foreign` (`deposit_id`),
  ADD KEY `user_transfers_withdraw_id_foreign` (`withdraw_id`);

--
-- Indexes for table `user_upgrade_request`
--
ALTER TABLE `user_upgrade_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_wallets`
--
ALTER TABLE `user_wallets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_wallets_holder_type_holder_id_slug_unique` (`holder_type`,`holder_id`,`slug`),
  ADD KEY `user_wallets_holder_type_holder_id_index` (`holder_type`,`holder_id`),
  ADD KEY `user_wallets_slug_index` (`slug`);

--
-- Indexes for table `user_wishlist`
--
ALTER TABLE `user_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors_plan_payments`
--
ALTER TABLE `vendors_plan_payments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bravo_attrs`
--
ALTER TABLE `bravo_attrs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `bravo_attrs_translations`
--
ALTER TABLE `bravo_attrs_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bravo_bookings`
--
ALTER TABLE `bravo_bookings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_booking_meta`
--
ALTER TABLE `bravo_booking_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_booking_payments`
--
ALTER TABLE `bravo_booking_payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_contact`
--
ALTER TABLE `bravo_contact`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_enquiries`
--
ALTER TABLE `bravo_enquiries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_jobs`
--
ALTER TABLE `bravo_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `bravo_job_categories`
--
ALTER TABLE `bravo_job_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `bravo_job_term`
--
ALTER TABLE `bravo_job_term`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `bravo_job_translations`
--
ALTER TABLE `bravo_job_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bravo_locations`
--
ALTER TABLE `bravo_locations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `bravo_location_translations`
--
ALTER TABLE `bravo_location_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_payouts`
--
ALTER TABLE `bravo_payouts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_review`
--
ALTER TABLE `bravo_review`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT for table `bravo_review_meta`
--
ALTER TABLE `bravo_review_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=986;

--
-- AUTO_INCREMENT for table `bravo_seo`
--
ALTER TABLE `bravo_seo`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `bravo_terms`
--
ALTER TABLE `bravo_terms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `bravo_terms_translations`
--
ALTER TABLE `bravo_terms_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_tours`
--
ALTER TABLE `bravo_tours`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `core_inbox`
--
ALTER TABLE `core_inbox`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_inbox_messages`
--
ALTER TABLE `core_inbox_messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_languages`
--
ALTER TABLE `core_languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `core_menus`
--
ALTER TABLE `core_menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core_menu_translations`
--
ALTER TABLE `core_menu_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_news`
--
ALTER TABLE `core_news`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `core_news_category`
--
ALTER TABLE `core_news_category`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `core_news_category_translations`
--
ALTER TABLE `core_news_category_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_news_tag`
--
ALTER TABLE `core_news_tag`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_news_translations`
--
ALTER TABLE `core_news_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_notifications`
--
ALTER TABLE `core_notifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_pages`
--
ALTER TABLE `core_pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `core_page_translations`
--
ALTER TABLE `core_page_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core_permissions`
--
ALTER TABLE `core_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `core_roles`
--
ALTER TABLE `core_roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `core_settings`
--
ALTER TABLE `core_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;

--
-- AUTO_INCREMENT for table `core_subscribers`
--
ALTER TABLE `core_subscribers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_tags`
--
ALTER TABLE `core_tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `core_tag_translations`
--
ALTER TABLE `core_tag_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_templates`
--
ALTER TABLE `core_templates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `core_template_translations`
--
ALTER TABLE `core_template_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `core_translations`
--
ALTER TABLE `core_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_vendor_plans`
--
ALTER TABLE `core_vendor_plans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_vendor_plan_meta`
--
ALTER TABLE `core_vendor_plan_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `social_forums`
--
ALTER TABLE `social_forums`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `social_groups`
--
ALTER TABLE `social_groups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_group_user`
--
ALTER TABLE `social_group_user`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_posts`
--
ALTER TABLE `social_posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_post_comments`
--
ALTER TABLE `social_post_comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_user_follow`
--
ALTER TABLE `social_user_follow`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_transactions`
--
ALTER TABLE `user_transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_transfers`
--
ALTER TABLE `user_transfers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_upgrade_request`
--
ALTER TABLE `user_upgrade_request`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_wallets`
--
ALTER TABLE `user_wallets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `user_wishlist`
--
ALTER TABLE `user_wishlist`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `vendors_plan_payments`
--
ALTER TABLE `vendors_plan_payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `core_model_has_permissions`
--
ALTER TABLE `core_model_has_permissions`
  ADD CONSTRAINT `core_model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `core_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `core_model_has_roles`
--
ALTER TABLE `core_model_has_roles`
  ADD CONSTRAINT `core_model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `core_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `core_role_has_permissions`
--
ALTER TABLE `core_role_has_permissions`
  ADD CONSTRAINT `core_role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `core_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `core_role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `core_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_transactions`
--
ALTER TABLE `user_transactions`
  ADD CONSTRAINT `user_transactions_wallet_id_foreign` FOREIGN KEY (`wallet_id`) REFERENCES `user_wallets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_transfers`
--
ALTER TABLE `user_transfers`
  ADD CONSTRAINT `user_transfers_deposit_id_foreign` FOREIGN KEY (`deposit_id`) REFERENCES `user_transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_transfers_withdraw_id_foreign` FOREIGN KEY (`withdraw_id`) REFERENCES `user_transactions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
