-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 30, 2017 at 05:37 PM
-- Server version: 10.0.29-MariaDB-0ubuntu0.16.04.1
-- PHP Version: 7.0.18-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nils_castillo`
--

-- --------------------------------------------------------

--
-- Table structure for table `nc_commentmeta`
--

CREATE TABLE `nc_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nc_comments`
--

CREATE TABLE `nc_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nc_links`
--

CREATE TABLE `nc_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nc_options`
--

CREATE TABLE `nc_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nc_options`
--

INSERT INTO `nc_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://local/nils_castillo', 'yes'),
(2, 'home', 'http://local/nils_castillo', 'yes'),
(3, 'blogname', 'Nils Castillo', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'jorgecastellano@interfell.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:229:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:39:"client-item/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"client-item/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"client-item/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"client-item/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"client-item/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"client-item/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:28:"client-item/([^/]+)/embed/?$";s:39:"index.php?client=$matches[1]&embed=true";s:32:"client-item/([^/]+)/trackback/?$";s:33:"index.php?client=$matches[1]&tb=1";s:40:"client-item/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?client=$matches[1]&paged=$matches[2]";s:47:"client-item/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?client=$matches[1]&cpage=$matches[2]";s:36:"client-item/([^/]+)(?:/([0-9]+))?/?$";s:45:"index.php?client=$matches[1]&page=$matches[2]";s:28:"client-item/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"client-item/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"client-item/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"client-item/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"client-item/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"client-item/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"client-types/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?client-types=$matches[1]&feed=$matches[2]";s:48:"client-types/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?client-types=$matches[1]&feed=$matches[2]";s:29:"client-types/([^/]+)/embed/?$";s:45:"index.php?client-types=$matches[1]&embed=true";s:41:"client-types/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?client-types=$matches[1]&paged=$matches[2]";s:23:"client-types/([^/]+)/?$";s:34:"index.php?client-types=$matches[1]";s:38:"offer-item/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:48:"offer-item/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:68:"offer-item/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"offer-item/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"offer-item/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:44:"offer-item/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:27:"offer-item/([^/]+)/embed/?$";s:38:"index.php?offer=$matches[1]&embed=true";s:31:"offer-item/([^/]+)/trackback/?$";s:32:"index.php?offer=$matches[1]&tb=1";s:39:"offer-item/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?offer=$matches[1]&paged=$matches[2]";s:46:"offer-item/([^/]+)/comment-page-([0-9]{1,})/?$";s:45:"index.php?offer=$matches[1]&cpage=$matches[2]";s:35:"offer-item/([^/]+)(?:/([0-9]+))?/?$";s:44:"index.php?offer=$matches[1]&page=$matches[2]";s:27:"offer-item/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"offer-item/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"offer-item/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"offer-item/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"offer-item/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"offer-item/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:52:"offer-types/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?offer-types=$matches[1]&feed=$matches[2]";s:47:"offer-types/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?offer-types=$matches[1]&feed=$matches[2]";s:28:"offer-types/([^/]+)/embed/?$";s:44:"index.php?offer-types=$matches[1]&embed=true";s:40:"offer-types/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?offer-types=$matches[1]&paged=$matches[2]";s:22:"offer-types/([^/]+)/?$";s:33:"index.php?offer-types=$matches[1]";s:42:"portfolio-item/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:52:"portfolio-item/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:72:"portfolio-item/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"portfolio-item/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"portfolio-item/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:48:"portfolio-item/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:31:"portfolio-item/([^/]+)/embed/?$";s:42:"index.php?portfolio=$matches[1]&embed=true";s:35:"portfolio-item/([^/]+)/trackback/?$";s:36:"index.php?portfolio=$matches[1]&tb=1";s:43:"portfolio-item/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?portfolio=$matches[1]&paged=$matches[2]";s:50:"portfolio-item/([^/]+)/comment-page-([0-9]{1,})/?$";s:49:"index.php?portfolio=$matches[1]&cpage=$matches[2]";s:39:"portfolio-item/([^/]+)(?:/([0-9]+))?/?$";s:48:"index.php?portfolio=$matches[1]&page=$matches[2]";s:31:"portfolio-item/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:"portfolio-item/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:"portfolio-item/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"portfolio-item/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"portfolio-item/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:"portfolio-item/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:56:"portfolio-types/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?portfolio-types=$matches[1]&feed=$matches[2]";s:51:"portfolio-types/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?portfolio-types=$matches[1]&feed=$matches[2]";s:32:"portfolio-types/([^/]+)/embed/?$";s:48:"index.php?portfolio-types=$matches[1]&embed=true";s:44:"portfolio-types/([^/]+)/page/?([0-9]{1,})/?$";s:55:"index.php?portfolio-types=$matches[1]&paged=$matches[2]";s:26:"portfolio-types/([^/]+)/?$";s:37:"index.php?portfolio-types=$matches[1]";s:38:"slide-item/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:48:"slide-item/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:68:"slide-item/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"slide-item/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"slide-item/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:44:"slide-item/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:27:"slide-item/([^/]+)/embed/?$";s:38:"index.php?slide=$matches[1]&embed=true";s:31:"slide-item/([^/]+)/trackback/?$";s:32:"index.php?slide=$matches[1]&tb=1";s:39:"slide-item/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?slide=$matches[1]&paged=$matches[2]";s:46:"slide-item/([^/]+)/comment-page-([0-9]{1,})/?$";s:45:"index.php?slide=$matches[1]&cpage=$matches[2]";s:35:"slide-item/([^/]+)(?:/([0-9]+))?/?$";s:44:"index.php?slide=$matches[1]&page=$matches[2]";s:27:"slide-item/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"slide-item/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"slide-item/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"slide-item/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"slide-item/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"slide-item/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:52:"slide-types/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?slide-types=$matches[1]&feed=$matches[2]";s:47:"slide-types/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?slide-types=$matches[1]&feed=$matches[2]";s:28:"slide-types/([^/]+)/embed/?$";s:44:"index.php?slide-types=$matches[1]&embed=true";s:40:"slide-types/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?slide-types=$matches[1]&paged=$matches[2]";s:22:"slide-types/([^/]+)/?$";s:33:"index.php?slide-types=$matches[1]";s:44:"testimonial-item/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:54:"testimonial-item/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:74:"testimonial-item/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"testimonial-item/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"testimonial-item/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:50:"testimonial-item/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:33:"testimonial-item/([^/]+)/embed/?$";s:44:"index.php?testimonial=$matches[1]&embed=true";s:37:"testimonial-item/([^/]+)/trackback/?$";s:38:"index.php?testimonial=$matches[1]&tb=1";s:45:"testimonial-item/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?testimonial=$matches[1]&paged=$matches[2]";s:52:"testimonial-item/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?testimonial=$matches[1]&cpage=$matches[2]";s:41:"testimonial-item/([^/]+)(?:/([0-9]+))?/?$";s:50:"index.php?testimonial=$matches[1]&page=$matches[2]";s:33:"testimonial-item/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"testimonial-item/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"testimonial-item/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"testimonial-item/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"testimonial-item/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"testimonial-item/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:58:"testimonial-types/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?testimonial-types=$matches[1]&feed=$matches[2]";s:53:"testimonial-types/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?testimonial-types=$matches[1]&feed=$matches[2]";s:34:"testimonial-types/([^/]+)/embed/?$";s:50:"index.php?testimonial-types=$matches[1]&embed=true";s:46:"testimonial-types/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?testimonial-types=$matches[1]&paged=$matches[2]";s:28:"testimonial-types/([^/]+)/?$";s:39:"index.php?testimonial-types=$matches[1]";s:39:"layout-item/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"layout-item/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"layout-item/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"layout-item/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"layout-item/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"layout-item/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:28:"layout-item/([^/]+)/embed/?$";s:39:"index.php?layout=$matches[1]&embed=true";s:32:"layout-item/([^/]+)/trackback/?$";s:33:"index.php?layout=$matches[1]&tb=1";s:40:"layout-item/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?layout=$matches[1]&paged=$matches[2]";s:47:"layout-item/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?layout=$matches[1]&cpage=$matches[2]";s:36:"layout-item/([^/]+)(?:/([0-9]+))?/?$";s:45:"index.php?layout=$matches[1]&page=$matches[2]";s:28:"layout-item/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"layout-item/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"layout-item/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"layout-item/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"layout-item/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"layout-item/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:41:"template-item/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:51:"template-item/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:71:"template-item/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:66:"template-item/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:66:"template-item/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:47:"template-item/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:30:"template-item/([^/]+)/embed/?$";s:41:"index.php?template=$matches[1]&embed=true";s:34:"template-item/([^/]+)/trackback/?$";s:35:"index.php?template=$matches[1]&tb=1";s:42:"template-item/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?template=$matches[1]&paged=$matches[2]";s:49:"template-item/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?template=$matches[1]&cpage=$matches[2]";s:38:"template-item/([^/]+)(?:/([0-9]+))?/?$";s:47:"index.php?template=$matches[1]&page=$matches[2]";s:30:"template-item/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:40:"template-item/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:60:"template-item/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"template-item/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"template-item/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:36:"template-item/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=6&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:36:"contact-form-7/wp-contact-form-7.php";i:1;s:33:"duplicate-post/duplicate-post.php";i:2;s:59:"force-regenerate-thumbnails/force-regenerate-thumbnails.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'betheme', 'yes'),
(41, 'stylesheet', 'betheme-child', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '37965', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '8', 'yes'),
(84, 'page_on_front', '6', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '37965', 'yes'),
(92, 'nc_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:10:"copy_posts";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:10:"copy_posts";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:18:{s:19:"wp_inactive_widgets";a:0:{}s:13:"footer-area-1";a:0:{}s:13:"footer-area-2";a:0:{}s:13:"footer-area-3";a:0:{}s:13:"footer-area-4";a:0:{}s:13:"footer-area-5";a:0:{}s:10:"top-area-1";a:0:{}s:10:"top-area-2";a:0:{}s:10:"top-area-3";a:0:{}s:10:"top-area-4";a:0:{}s:10:"mfn-search";a:0:{}s:5:"forum";a:0:{}s:5:"buddy";a:0:{}s:6:"events";a:0:{}s:3:"edd";a:0:{}s:4:"shop";a:0:{}s:22:"blog-cat-uncategorized";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(99, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'cron', 'a:4:{i:1498873533;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1498916742;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1498943498;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(113, '_site_transient_timeout_browser_c90934b8ca9c29e92eeb6aa028beeea8', '1499435149', 'no'),
(114, '_site_transient_browser_c90934b8ca9c29e92eeb6aa028beeea8', 'a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"54.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(115, 'can_compress_scripts', '0', 'no'),
(117, '_transient_timeout_plugin_slugs', '1498943217', 'no'),
(118, '_transient_plugin_slugs', 'a:4:{i:0;s:19:"akismet/akismet.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:33:"duplicate-post/duplicate-post.php";i:3;s:59:"force-regenerate-thumbnails/force-regenerate-thumbnails.php";}', 'no'),
(119, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1498873594', 'no'),
(120, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: cURL error 28: Operation timed out after 10001 milliseconds with 42039 bytes received</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: cURL error 28: Operation timed out after 10000 milliseconds with 9294 bytes received</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(122, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:56:"http://downloads.wordpress.org/release/wordpress-4.8.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:56:"http://downloads.wordpress.org/release/wordpress-4.8.zip";s:10:"no_content";s:67:"http://downloads.wordpress.org/release/wordpress-4.8-no-content.zip";s:11:"new_bundled";s:68:"http://downloads.wordpress.org/release/wordpress-4.8-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.8";s:7:"version";s:3:"4.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1498856455;s:15:"version_checked";s:5:"4.6.6";s:12:"translations";a:0:{}}', 'no'),
(124, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:29:"jorgecastellano@interfell.com";s:7:"version";s:5:"4.6.6";s:9:"timestamp";i:1498830424;}', 'no'),
(127, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1498834829;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(128, 'current_theme', 'Betheme Child', 'yes'),
(129, 'theme_mods_betheme-child', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:5:{s:9:"main-menu";i:2;s:14:"secondary-menu";i:0;s:9:"lang-menu";i:0;s:11:"social-menu";i:0;s:18:"social-menu-bottom";i:0;}}', 'yes'),
(130, 'theme_switched', '', 'yes');
INSERT INTO `nc_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(135, 'betheme', 'a:418:{s:8:"last_tab";s:6:"header";s:6:"layout";s:10:"full-width";s:10:"grid-width";s:4:"1240";s:5:"style";s:0:"";s:12:"button-style";s:0:"";s:17:"image-frame-style";s:0:"";s:18:"image-frame-border";s:0:"";s:19:"image-frame-caption";s:0:"";s:11:"img-page-bg";s:0:"";s:16:"position-page-bg";s:22:"no-repeat;center top;;";s:12:"size-page-bg";s:4:"auto";s:11:"transparent";a:1:{s:9:"post-meta";s:1:"1";}s:11:"favicon-img";s:0:"";s:16:"apple-touch-icon";s:0:"";s:8:"logo-img";s:71:"http://local/nils_castillo/wp-content/uploads/2017/06/logo-menu-bar.png";s:15:"retina-logo-img";s:71:"http://local/nils_castillo/wp-content/uploads/2017/06/logo-menu-bar.png";s:15:"sticky-logo-img";s:71:"http://local/nils_castillo/wp-content/uploads/2017/06/logo-menu-bar.png";s:22:"sticky-retina-logo-img";s:71:"http://local/nils_castillo/wp-content/uploads/2017/06/logo-menu-bar.png";s:9:"logo-link";a:2:{s:9:"post-meta";s:1:"1";s:4:"link";s:4:"link";}s:9:"logo-text";s:0:"";s:10:"logo-width";s:0:"";s:11:"logo-height";s:0:"";s:21:"logo-vertical-padding";s:0:"";s:19:"logo-vertical-align";s:0:"";s:13:"logo-advanced";a:1:{s:9:"post-meta";s:1:"1";}s:19:"slider-blog-timeout";s:1:"0";s:22:"slider-clients-timeout";s:1:"0";s:20:"slider-offer-timeout";s:1:"0";s:24:"slider-portfolio-timeout";s:1:"0";s:19:"slider-shop-timeout";s:1:"0";s:21:"slider-slider-timeout";s:1:"0";s:27:"slider-testimonials-timeout";s:1:"0";s:20:"layout-boxed-padding";s:0:"";s:18:"builder-visibility";s:0:"";s:13:"display-order";s:1:"0";s:22:"content-remove-padding";s:1:"0";s:19:"google-maps-api-key";s:0:"";s:11:"table-hover";s:0:"";s:23:"math-animations-disable";s:1:"0";s:14:"layout-options";a:1:{s:9:"post-meta";s:1:"1";}s:17:"post-type-disable";a:1:{s:9:"post-meta";s:1:"1";}s:13:"theme-disable";a:1:{s:9:"post-meta";s:1:"1";}s:15:"builder-storage";s:0:"";s:16:"slider-shortcode";s:0:"";s:10:"static-css";s:1:"0";s:12:"table_prefix";s:11:"base_prefix";s:8:"hook-top";s:0:"";s:19:"hook-content-before";s:0:"";s:18:"hook-content-after";s:0:"";s:11:"hook-bottom";s:0:"";s:12:"header-style";s:6:"modern";s:9:"header-fw";a:2:{s:9:"post-meta";s:1:"1";s:10:"full-width";s:10:"full-width";}s:17:"minimalist-header";s:1:"0";s:16:"img-subheader-bg";s:0:"";s:24:"img-subheader-attachment";s:22:"no-repeat;center top;;";s:17:"size-subheader-bg";s:4:"auto";s:13:"sticky-header";s:1:"0";s:19:"sticky-header-style";s:8:"tb-color";s:15:"subheader-style";s:11:"both-center";s:9:"subheader";a:4:{s:9:"post-meta";s:1:"1";s:16:"hide-breadcrumbs";s:16:"hide-breadcrumbs";s:10:"hide-title";s:10:"hide-title";s:14:"hide-subheader";s:14:"hide-subheader";}s:17:"subheader-padding";s:0:"";s:19:"subheader-title-tag";s:2:"h1";s:15:"subheader-image";s:0:"";s:18:"subheader-position";s:22:"no-repeat;center top;;";s:14:"subheader-size";s:4:"auto";s:21:"subheader-transparent";s:3:"100";s:18:"subheader-advanced";a:1:{s:9:"post-meta";s:1:"1";}s:18:"top-bar-right-hide";s:1:"0";s:19:"header-action-title";s:0:"";s:18:"header-action-link";s:0:"";s:20:"header-action-target";a:1:{s:9:"post-meta";s:1:"1";}s:13:"header-search";s:1:"0";s:11:"header-wpml";s:0:"";s:19:"header-wpml-options";a:1:{s:9:"post-meta";s:1:"1";}s:11:"sliding-top";s:1:"0";s:16:"sliding-top-icon";s:19:"icon-down-open-mini";s:13:"header-banner";s:0:"";s:10:"menu-style";s:10:"link-color";s:12:"menu-options";a:1:{s:9:"post-meta";s:1:"1";}s:21:"menu-creative-options";a:1:{s:9:"post-meta";s:1:"1";}s:15:"menu-mega-style";s:0:"";s:10:"action-bar";s:1:"0";s:13:"header-slogan";s:0:"";s:12:"header-phone";s:0:"";s:14:"header-phone-2";s:0:"";s:12:"header-email";s:0:"";s:13:"sidebar-width";s:2:"23";s:13:"sidebar-lines";s:0:"";s:18:"single-page-layout";s:0:"";s:19:"single-page-sidebar";s:0:"";s:20:"single-page-sidebar2";s:0:"";s:13:"single-layout";s:0:"";s:14:"single-sidebar";s:0:"";s:15:"single-sidebar2";s:0:"";s:23:"single-portfolio-layout";s:0:"";s:24:"single-portfolio-sidebar";s:0:"";s:25:"single-portfolio-sidebar2";s:0:"";s:13:"prev-next-nav";a:1:{s:9:"post-meta";s:1:"1";}s:15:"prev-next-style";s:7:"minimal";s:22:"prev-next-sticky-style";s:0:"";s:5:"share";s:1:"1";s:19:"pagination-show-all";s:1:"1";s:4:"love";s:1:"1";s:22:"featured-image-caption";s:0:"";s:13:"related-style";s:6:"simple";s:13:"title-heading";s:1:"1";s:10:"blog-posts";s:1:"9";s:11:"blog-layout";s:4:"grid";s:12:"blog-columns";s:1:"3";s:15:"blog-full-width";s:1:"0";s:11:"blog-images";s:0:"";s:9:"blog-page";s:1:"8";s:14:"excerpt-length";s:2:"26";s:16:"exclude-category";s:0:"";s:12:"blog-filters";s:1:"1";s:14:"blog-load-more";s:1:"0";s:9:"blog-meta";a:4:{s:9:"post-meta";s:1:"1";s:6:"author";s:6:"author";s:4:"date";s:4:"date";s:10:"categories";s:10:"categories";}s:10:"blog-title";s:1:"0";s:16:"blog-single-zoom";s:1:"1";s:11:"blog-author";s:1:"1";s:13:"blog-comments";s:1:"1";s:18:"blog-single-layout";s:0:"";s:16:"blog-single-menu";s:1:"0";s:12:"blog-related";s:1:"3";s:20:"blog-related-columns";s:1:"3";s:19:"blog-related-images";s:0:"";s:20:"single-intro-padding";s:0:"";s:15:"portfolio-posts";s:1:"9";s:16:"portfolio-layout";s:4:"grid";s:17:"portfolio-columns";s:1:"3";s:20:"portfolio-full-width";s:1:"0";s:14:"portfolio-page";s:0:"";s:17:"portfolio-orderby";s:4:"date";s:15:"portfolio-order";s:4:"DESC";s:18:"portfolio-external";s:0:"";s:21:"portfolio-hover-title";s:1:"0";s:17:"portfolio-filters";s:1:"1";s:19:"portfolio-load-more";s:1:"0";s:17:"portfolio-isotope";s:1:"1";s:22:"portfolio-single-title";s:1:"0";s:17:"portfolio-related";s:1:"3";s:25:"portfolio-related-columns";s:1:"3";s:18:"portfolio-comments";s:1:"0";s:23:"portfolio-single-layout";s:0:"";s:21:"portfolio-single-menu";s:1:"0";s:14:"portfolio-slug";s:14:"portfolio-item";s:13:"portfolio-tax";s:15:"portfolio-types";s:13:"shop-products";s:2:"12";s:11:"shop-layout";s:4:"grid";s:14:"shop-catalogue";s:1:"0";s:11:"shop-images";s:0:"";s:11:"shop-button";s:1:"0";s:12:"shop-excerpt";s:1:"0";s:12:"shop-sidebar";s:0:"";s:11:"shop-slider";s:0:"";s:12:"shop-soldout";s:8:"Sold out";s:19:"shop-product-images";s:0:"";s:18:"shop-product-style";s:0:"";s:18:"shop-product-title";s:0:"";s:12:"shop-related";s:1:"3";s:9:"shop-cart";s:13:"icon-bag-fine";s:29:"featured-blog-portfolio-width";s:3:"960";s:30:"featured-blog-portfolio-height";s:3:"720";s:28:"featured-blog-portfolio-crop";s:4:"crop";s:21:"featured-single-width";s:4:"1200";s:22:"featured-single-height";s:3:"675";s:20:"featured-single-crop";s:4:"crop";s:13:"page-comments";s:1:"0";s:13:"error404-icon";s:17:"icon-traffic-cone";s:13:"error404-page";s:0:"";s:12:"construction";s:1:"0";s:18:"construction-title";s:11:"Coming Soon";s:17:"construction-text";s:0:"";s:17:"construction-date";s:19:"12/30/2014 12:00:00";s:19:"construction-offset";s:1:"0";s:20:"construction-contact";s:0:"";s:17:"construction-page";s:0:"";s:13:"footer-layout";s:0:"";s:12:"footer-style";s:0:"";s:14:"footer-padding";s:6:"70px 0";s:13:"footer-bg-img";s:0:"";s:22:"footer-bg-img-position";s:22:"no-repeat;center top;;";s:18:"footer-bg-img-size";s:4:"auto";s:21:"footer-call-to-action";s:0:"";s:11:"footer-copy";s:0:"";s:11:"footer-hide";s:0:"";s:12:"back-top-top";s:0:"";s:18:"popup-contact-form";s:0:"";s:23:"popup-contact-form-icon";s:14:"icon-mail-line";s:10:"responsive";s:1:"1";s:17:"mobile-grid-width";s:3:"700";s:20:"font-size-responsive";s:1:"1";s:15:"responsive-zoom";s:1:"0";s:19:"responsive-boxed2fw";s:1:"0";s:8:"no-hover";s:0:"";s:13:"no-section-bg";s:0:"";s:19:"responsive-parallax";s:1:"0";s:19:"responsive-logo-img";s:0:"";s:26:"responsive-retina-logo-img";s:0:"";s:26:"responsive-sticky-logo-img";s:0:"";s:33:"responsive-sticky-retina-logo-img";s:0:"";s:24:"responsive-header-tablet";a:1:{s:9:"post-meta";s:1:"1";}s:24:"responsive-header-mobile";a:1:{s:9:"post-meta";s:1:"1";}s:25:"responsive-header-minimal";s:5:"mr-ll";s:18:"responsive-top-bar";s:6:"center";s:19:"mobile-menu-initial";s:4:"1240";s:22:"responsive-mobile-menu";s:10:"side-slide";s:21:"responsive-side-slide";a:1:{s:9:"post-meta";s:1:"1";}s:16:"header-menu-text";s:0:"";s:25:"header-menu-mobile-sticky";s:1:"0";s:16:"google-analytics";s:0:"";s:18:"google-remarketing";s:0:"";s:7:"mfn-seo";s:1:"1";s:16:"meta-description";s:27:"Just another WordPress site";s:13:"meta-keywords";s:0:"";s:19:"mfn-seo-schema-type";s:1:"1";s:13:"social-target";s:1:"0";s:12:"social-skype";s:0:"";s:15:"social-facebook";s:0:"";s:17:"social-googleplus";s:0:"";s:14:"social-twitter";s:0:"";s:12:"social-vimeo";s:0:"";s:14:"social-youtube";s:0:"";s:13:"social-flickr";s:0:"";s:15:"social-linkedin";s:0:"";s:16:"social-pinterest";s:0:"";s:15:"social-dribbble";s:0:"";s:16:"social-instagram";s:0:"";s:14:"social-behance";s:0:"";s:13:"social-tumblr";s:0:"";s:18:"social-tripadvisor";s:0:"";s:16:"social-vkontakte";s:0:"";s:13:"social-viadeo";s:0:"";s:11:"social-xing";s:0:"";s:18:"social-custom-icon";s:0:"";s:18:"social-custom-link";s:0:"";s:10:"social-rss";s:1:"0";s:9:"cf7-error";s:0:"";s:8:"parallax";s:11:"translate3d";s:11:"nice-scroll";s:6:"smooth";s:17:"nice-scroll-speed";s:2:"40";s:19:"prettyphoto-options";a:1:{s:9:"post-meta";s:1:"1";}s:18:"sc-gallery-disable";s:1:"0";s:9:"retina-js";s:0:"";s:10:"plugin-rev";s:0:"";s:12:"plugin-layer";s:0:"";s:13:"plugin-visual";s:0:"";s:4:"skin";s:6:"custom";s:9:"color-one";s:7:"#0095eb";s:15:"background-html";s:7:"#FCFCFC";s:15:"background-body";s:7:"#FCFCFC";s:17:"background-header";s:7:"#000119";s:19:"background-top-left";s:7:"#ffffff";s:21:"background-top-middle";s:7:"#e3e3e3";s:20:"background-top-right";s:7:"#f5f5f5";s:17:"color-top-right-a";s:7:"#333333";s:17:"background-search";s:7:"#0095eb";s:20:"background-subheader";s:7:"#F7F7F7";s:15:"color-subheader";s:7:"#444444";s:12:"color-menu-a";s:7:"#444444";s:19:"color-menu-a-active";s:7:"#0095eb";s:24:"background-menu-a-active";s:7:"#F2F2F2";s:18:"background-submenu";s:7:"#F2F2F2";s:15:"color-submenu-a";s:7:"#5f5f5f";s:21:"color-submenu-a-hover";s:7:"#2e2e2e";s:26:"color-menu-responsive-icon";s:7:"#0095eb";s:31:"background-menu-responsive-icon";s:0:"";s:23:"background-overlay-menu";s:7:"#0095eb";s:25:"background-overlay-menu-a";s:7:"#FFFFFF";s:32:"background-overlay-menu-a-active";s:7:"#B1DCFB";s:17:"border-menu-plain";s:7:"#F2F2F2";s:20:"background-side-menu";s:7:"#191919";s:17:"color-side-menu-a";s:7:"#A6A6A6";s:23:"color-side-menu-a-hover";s:7:"#FFFFFF";s:21:"background-action-bar";s:7:"#292b33";s:16:"color-action-bar";s:7:"#bbbbbb";s:18:"color-action-bar-a";s:7:"#0095eb";s:24:"color-action-bar-a-hover";s:7:"#007cc3";s:23:"color-action-bar-social";s:7:"#bbbbbb";s:29:"color-action-bar-social-hover";s:7:"#FFFFFF";s:28:"mobile-background-action-bar";s:7:"#FFFFFF";s:23:"mobile-color-action-bar";s:7:"#222222";s:25:"mobile-color-action-bar-a";s:7:"#0095eb";s:31:"mobile-color-action-bar-a-hover";s:7:"#007cc3";s:30:"mobile-color-action-bar-social";s:7:"#bbbbbb";s:36:"mobile-color-action-bar-social-hover";s:7:"#777777";s:11:"color-theme";s:7:"#0095eb";s:10:"color-text";s:7:"#626262";s:7:"color-a";s:7:"#0095eb";s:13:"color-a-hover";s:7:"#007cc3";s:16:"color-fancy-link";s:7:"#656B6F";s:21:"background-fancy-link";s:7:"#0095eb";s:22:"color-fancy-link-hover";s:7:"#0095eb";s:27:"background-fancy-link-hover";s:7:"#007cc3";s:17:"background-button";s:7:"#f7f7f7";s:12:"color-button";s:7:"#747474";s:17:"border-imageframe";s:7:"#f8f8f8";s:26:"background-imageframe-link";s:7:"#0095eb";s:21:"color-imageframe-link";s:7:"#ffffff";s:21:"color-imageframe-mask";s:7:"#ffffff";s:20:"background-highlight";s:7:"#0095eb";s:8:"color-hr";s:7:"#0095eb";s:10:"color-list";s:7:"#737E86";s:10:"color-note";s:7:"#a8a8a8";s:28:"background-highlight-section";s:7:"#0095eb";s:18:"color-footer-theme";s:7:"#0095eb";s:17:"background-footer";s:7:"#292b33";s:12:"color-footer";s:7:"#cccccc";s:20:"color-footer-heading";s:7:"#ffffff";s:17:"color-footer-note";s:7:"#a8a8a8";s:14:"color-footer-a";s:7:"#0095eb";s:20:"color-footer-a-hover";s:7:"#007cc3";s:19:"color-footer-social";s:7:"#65666C";s:25:"color-footer-social-hover";s:7:"#FFFFFF";s:22:"color-footer-backtotop";s:7:"#65666C";s:27:"background-footer-backtotop";s:0:"";s:23:"color-sliding-top-theme";s:7:"#0095eb";s:22:"background-sliding-top";s:7:"#545454";s:17:"color-sliding-top";s:7:"#cccccc";s:19:"color-sliding-top-a";s:7:"#0095eb";s:25:"color-sliding-top-a-hover";s:7:"#007cc3";s:25:"color-sliding-top-heading";s:7:"#ffffff";s:22:"color-sliding-top-note";s:7:"#a8a8a8";s:8:"color-h1";s:7:"#161922";s:8:"color-h2";s:7:"#161922";s:8:"color-h3";s:7:"#161922";s:8:"color-h4";s:7:"#161922";s:8:"color-h5";s:7:"#161922";s:8:"color-h6";s:7:"#161922";s:15:"color-tab-title";s:7:"#0095eb";s:16:"color-blockquote";s:7:"#444444";s:17:"color-contentlink";s:7:"#0095eb";s:13:"color-counter";s:7:"#0095eb";s:21:"background-getintouch";s:7:"#0095eb";s:13:"color-iconbar";s:7:"#0095eb";s:13:"color-iconbox";s:7:"#0095eb";s:15:"color-list-icon";s:7:"#0095eb";s:19:"color-pricing-price";s:7:"#0095eb";s:27:"background-pricing-featured";s:7:"#0095eb";s:22:"background-progressbar";s:7:"#0095eb";s:22:"color-quickfact-number";s:7:"#0095eb";s:27:"background-slidingbox-title";s:7:"#0095eb";s:27:"background-trailer-subtitle";s:7:"#0095eb";s:10:"color-form";s:7:"#626262";s:15:"background-form";s:7:"#FFFFFF";s:11:"border-form";s:7:"#EBEBEB";s:16:"color-form-focus";s:7:"#1982c2";s:21:"background-form-focus";s:7:"#e9f5fc";s:17:"border-form-focus";s:7:"#d5e5ee";s:16:"form-transparent";s:3:"100";s:12:"font-content";s:6:"Roboto";s:9:"font-menu";s:6:"Roboto";s:10:"font-title";s:4:"Lora";s:13:"font-headings";s:6:"Roboto";s:19:"font-headings-small";s:6:"Roboto";s:15:"font-blockquote";s:6:"Roboto";s:15:"font-decorative";s:6:"Roboto";s:11:"font-weight";a:7:{s:9:"post-meta";s:1:"1";i:300;s:3:"300";i:400;s:3:"400";s:9:"400italic";s:9:"400italic";i:500;s:3:"500";i:700;s:3:"700";s:9:"700italic";s:9:"700italic";}s:11:"font-subset";s:0:"";s:17:"font-size-content";a:4:{s:4:"size";s:2:"14";s:11:"line_height";s:2:"25";s:12:"weight_style";s:3:"400";s:14:"letter_spacing";s:1:"0";}s:13:"font-size-big";a:4:{s:4:"size";s:2:"16";s:11:"line_height";s:2:"28";s:12:"weight_style";s:3:"400";s:14:"letter_spacing";s:1:"0";}s:14:"font-size-menu";a:3:{s:4:"size";s:2:"15";s:12:"weight_style";s:3:"400";s:14:"letter_spacing";s:1:"0";}s:15:"font-size-title";a:4:{s:4:"size";s:2:"30";s:11:"line_height";s:2:"35";s:12:"weight_style";s:9:"400italic";s:14:"letter_spacing";s:1:"1";}s:12:"font-size-h1";a:4:{s:4:"size";s:2:"48";s:11:"line_height";s:2:"50";s:12:"weight_style";s:3:"400";s:14:"letter_spacing";s:1:"0";}s:12:"font-size-h2";a:4:{s:4:"size";s:2:"30";s:11:"line_height";s:2:"34";s:12:"weight_style";s:3:"300";s:14:"letter_spacing";s:1:"0";}s:12:"font-size-h3";a:4:{s:4:"size";s:2:"25";s:11:"line_height";s:2:"29";s:12:"weight_style";s:3:"300";s:14:"letter_spacing";s:1:"0";}s:12:"font-size-h4";a:4:{s:4:"size";s:2:"21";s:11:"line_height";s:2:"25";s:12:"weight_style";s:3:"500";s:14:"letter_spacing";s:1:"0";}s:12:"font-size-h5";a:4:{s:4:"size";s:2:"15";s:11:"line_height";s:2:"25";s:12:"weight_style";s:3:"700";s:14:"letter_spacing";s:1:"0";}s:12:"font-size-h6";a:4:{s:4:"size";s:2:"14";s:11:"line_height";s:2:"25";s:12:"weight_style";s:3:"400";s:14:"letter_spacing";s:1:"0";}s:22:"font-size-single-intro";a:4:{s:4:"size";s:2:"70";s:11:"line_height";s:2:"70";s:12:"weight_style";s:3:"400";s:14:"letter_spacing";s:1:"0";}s:11:"font-custom";s:0:"";s:16:"font-custom-woff";s:0:"";s:15:"font-custom-ttf";s:0:"";s:15:"font-custom-svg";s:0:"";s:15:"font-custom-eot";s:0:"";s:12:"font-custom2";s:0:"";s:17:"font-custom2-woff";s:0:"";s:16:"font-custom2-ttf";s:0:"";s:16:"font-custom2-svg";s:0:"";s:16:"font-custom2-eot";s:0:"";s:9:"translate";s:1:"1";s:28:"translate-search-placeholder";s:17:"Enter your search";s:24:"translate-search-results";s:18:"results found for:";s:14:"translate-home";s:4:"Home";s:14:"translate-prev";s:9:"Prev page";s:14:"translate-next";s:9:"Next page";s:19:"translate-load-more";s:9:"Load more";s:17:"translate-wpml-no";s:39:"No translations available for this page";s:16:"translate-before";s:6:"Before";s:15:"translate-after";s:5:"After";s:14:"translate-days";s:4:"days";s:15:"translate-hours";s:5:"hours";s:17:"translate-minutes";s:7:"minutes";s:17:"translate-seconds";s:7:"seconds";s:16:"translate-filter";s:9:"Filter by";s:14:"translate-tags";s:4:"Tags";s:17:"translate-authors";s:7:"Authors";s:13:"translate-all";s:8:"Show all";s:18:"translate-item-all";s:3:"All";s:19:"translate-published";s:12:"Published by";s:12:"translate-at";s:2:"at";s:20:"translate-categories";s:10:"Categories";s:18:"translate-readmore";s:9:"Read more";s:14:"translate-like";s:15:"Do you like it?";s:17:"translate-related";s:13:"Related posts";s:16:"translate-client";s:6:"Client";s:14:"translate-date";s:4:"Date";s:17:"translate-website";s:7:"Website";s:14:"translate-view";s:12:"View website";s:14:"translate-task";s:4:"Task";s:19:"translate-404-title";s:18:"Ooops... Error 404";s:22:"translate-404-subtitle";s:62:"We are sorry, but the page you are looking for does not exist.";s:18:"translate-404-text";s:46:"Please check entered address and try again or ";s:17:"translate-404-btn";s:14:"go to homepage";s:22:"translate-search-title";s:8:"Ooops...";s:25:"translate-search-subtitle";s:21:"No results found for:";s:10:"custom-css";s:0:"";s:9:"custom-js";s:0:"";}', 'yes'),
(144, 'theme_mods_betheme', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1498835691;s:4:"data";a:17:{s:19:"wp_inactive_widgets";a:0:{}s:13:"footer-area-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"footer-area-2";N;s:13:"footer-area-3";N;s:13:"footer-area-4";N;s:13:"footer-area-5";N;s:10:"top-area-1";N;s:10:"top-area-2";N;s:10:"top-area-3";N;s:10:"top-area-4";N;s:10:"mfn-search";N;s:5:"forum";N;s:5:"buddy";N;s:6:"events";N;s:3:"edd";N;s:4:"shop";N;s:22:"blog-cat-uncategorized";N;}}}', 'yes'),
(175, 'betheme_registered', '1', 'no'),
(178, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1498856458;s:7:"checked";a:5:{s:13:"betheme-child";s:4:"20.1";s:7:"betheme";s:4:"20.1";s:13:"twentyfifteen";s:3:"1.6";s:14:"twentyfourteen";s:3:"1.8";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:3:{s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"1.8";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentyfifteen.1.8.zip";}s:14:"twentyfourteen";a:4:{s:5:"theme";s:14:"twentyfourteen";s:11:"new_version";s:3:"2.0";s:3:"url";s:44:"https://wordpress.org/themes/twentyfourteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentyfourteen.2.0.zip";}s:7:"betheme";a:4:{s:5:"theme";s:7:"betheme";s:11:"new_version";s:4:"20.2";s:3:"url";s:66:"http://themes.muffingroup.com/betheme/documentation/changelog.html";s:7:"package";s:87:"http://api.muffingroup.com/theme/download.php?code=6c37f5a8-0ea2-47fe-856a-fa9daa85cc31";}}s:12:"translations";a:0:{}}', 'no'),
(179, 'betheme_purchase_code', '6c37f5a8-0ea2-47fe-856a-fa9daa85cc31', 'no'),
(372, '_site_transient_timeout_theme_roots', '1498858258', 'no'),
(373, '_site_transient_theme_roots', 'a:5:{s:13:"betheme-child";s:7:"/themes";s:7:"betheme";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(374, 'recently_activated', 'a:0:{}', 'yes'),
(375, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1498856651;s:7:"checked";a:4:{s:19:"akismet/akismet.php";s:3:"3.2";s:36:"contact-form-7/wp-contact-form-7.php";s:3:"4.8";s:33:"duplicate-post/duplicate-post.php";s:3:"3.2";s:59:"force-regenerate-thumbnails/force-regenerate-thumbnails.php";s:5:"2.0.6";}s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":8:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.3.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:55:"http://downloads.wordpress.org/plugin/akismet.3.3.2.zip";s:6:"tested";s:5:"4.7.5";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:3:{s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":6:{s:2:"id";s:28:"w.org/plugins/contact-form-7";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:3:"4.8";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:60:"http://downloads.wordpress.org/plugin/contact-form-7.4.8.zip";}s:33:"duplicate-post/duplicate-post.php";O:8:"stdClass":6:{s:2:"id";s:28:"w.org/plugins/duplicate-post";s:4:"slug";s:14:"duplicate-post";s:6:"plugin";s:33:"duplicate-post/duplicate-post.php";s:11:"new_version";s:3:"3.2";s:3:"url";s:45:"https://wordpress.org/plugins/duplicate-post/";s:7:"package";s:60:"http://downloads.wordpress.org/plugin/duplicate-post.3.2.zip";}s:59:"force-regenerate-thumbnails/force-regenerate-thumbnails.php";O:8:"stdClass":6:{s:2:"id";s:41:"w.org/plugins/force-regenerate-thumbnails";s:4:"slug";s:27:"force-regenerate-thumbnails";s:6:"plugin";s:59:"force-regenerate-thumbnails/force-regenerate-thumbnails.php";s:11:"new_version";s:5:"2.0.6";s:3:"url";s:58:"https://wordpress.org/plugins/force-regenerate-thumbnails/";s:7:"package";s:69:"http://downloads.wordpress.org/plugin/force-regenerate-thumbnails.zip";}}}', 'no'),
(376, 'wpcf7', 'a:2:{s:7:"version";s:3:"4.8";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1498856657;s:7:"version";s:3:"4.8";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(377, 'duplicate_post_copytitle', '1', 'yes'),
(378, 'duplicate_post_copydate', '0', 'yes'),
(379, 'duplicate_post_copystatus', '0', 'yes'),
(380, 'duplicate_post_copyslug', '1', 'yes'),
(381, 'duplicate_post_copyexcerpt', '1', 'yes'),
(382, 'duplicate_post_copycontent', '1', 'yes'),
(383, 'duplicate_post_copythumbnail', '1', 'yes'),
(384, 'duplicate_post_copytemplate', '1', 'yes'),
(385, 'duplicate_post_copyformat', '1', 'yes'),
(386, 'duplicate_post_copyauthor', '0', 'yes'),
(387, 'duplicate_post_copypassword', '0', 'yes'),
(388, 'duplicate_post_copyattachments', '0', 'yes'),
(389, 'duplicate_post_copychildren', '0', 'yes'),
(390, 'duplicate_post_copycomments', '0', 'yes'),
(391, 'duplicate_post_copymenuorder', '1', 'yes'),
(392, 'duplicate_post_taxonomies_blacklist', 'a:0:{}', 'yes'),
(393, 'duplicate_post_blacklist', '', 'yes'),
(394, 'duplicate_post_types_enabled', 'a:2:{i:0;s:4:"post";i:1;s:4:"page";}', 'yes'),
(395, 'duplicate_post_show_row', '1', 'yes'),
(396, 'duplicate_post_show_adminbar', '1', 'yes'),
(397, 'duplicate_post_show_submitbox', '1', 'yes'),
(398, 'duplicate_post_show_bulkactions', '1', 'yes'),
(399, 'duplicate_post_version', '3.2', 'no'),
(400, 'duplicate_post_show_notice', '1', 'no'),
(410, 'WPLANG', '', 'yes'),
(413, '_site_transient_timeout_available_translations', '1498867935', 'no');
INSERT INTO `nc_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(414, '_site_transient_available_translations', 'a:89:{s:2:"af";a:8:{s:8:"language";s:2:"af";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-12-06 11:26:31";s:12:"english_name";s:9:"Afrikaans";s:11:"native_name";s:9:"Afrikaans";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.6/af.zip";s:3:"iso";a:2:{i:1;s:2:"af";i:2;s:3:"afr";}s:7:"strings";a:1:{s:8:"continue";s:10:"Gaan voort";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-09-21 10:19:10";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.6.6/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-08-16 18:36:09";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.6/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-09-29 08:38:56";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.6/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-11 22:42:10";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:3:"bel";a:8:{s:8:"language";s:3:"bel";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2017-03-23 04:38:14";s:12:"english_name";s:10:"Belarusian";s:11:"native_name";s:29:"Беларуская мова";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.6.6/bel.zip";s:3:"iso";a:2:{i:1;s:2:"be";i:2;s:3:"bel";}s:7:"strings";a:1:{s:8:"continue";s:20:"Працягнуць";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-10-24 13:13:07";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-10-20 16:53:20";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:2:"bo";a:8:{s:8:"language";s:2:"bo";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-09-05 09:44:12";s:12:"english_name";s:7:"Tibetan";s:11:"native_name";s:21:"བོད་ཡིག";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.6/bo.zip";s:3:"iso";a:2:{i:1;s:2:"bo";i:2;s:3:"tib";}s:7:"strings";a:1:{s:8:"continue";s:24:"མུ་མཐུད།";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.5.9";s:7:"updated";s:19:"2016-04-19 23:16:37";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.9/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2017-01-05 11:04:12";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.6/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.4.7";s:7:"updated";s:19:"2016-02-16 15:34:57";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.7/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-11 18:32:36";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:12:"Čeština‎";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2017-01-29 17:21:14";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.6/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-09-29 14:03:59";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsæt";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-12-21 21:21:17";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.6.6/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-12-21 21:20:26";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-08-15 12:56:13";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-08-15 12:59:43";s:12:"english_name";s:30:"German (Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:73:"https://downloads.wordpress.org/translation/core/4.6.6/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2017-01-29 20:02:13";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.6/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-08-20 07:14:07";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-08-16 11:54:12";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-08-12 02:18:44";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-08-11 23:19:29";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-08-11 22:36:25";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-12-04 22:04:52";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.6/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-09-09 09:36:22";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-08-19 13:48:04";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/es_AR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-08-17 22:11:44";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-08-17 12:34:44";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-08-29 15:07:52";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-04 06:10:33";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.3-RC/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2017-01-29 17:21:14";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-08-17 17:56:31";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/es_GT.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2017-01-29 17:21:14";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.6/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-10-27 18:10:49";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.6/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-10-23 20:20:40";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-08-15 18:30:48";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.6/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-12-10 18:17:57";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-10-10 18:42:25";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-11-02 11:49:52";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-08-23 17:41:37";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.6/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2017-06-09 08:06:10";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"gu";a:8:{s:8:"language";s:2:"gu";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-10-08 11:09:06";s:12:"english_name";s:8:"Gujarati";s:11:"native_name";s:21:"ગુજરાતી";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.6/gu.zip";s:3:"iso";a:2:{i:1;s:2:"gu";i:2;s:3:"guj";}s:7:"strings";a:1:{s:8:"continue";s:31:"ચાલુ રાખવું";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-09-25 19:56:49";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2017-03-24 06:38:11";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-09-07 15:12:28";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.6/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2017-01-30 13:25:31";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-04 07:13:54";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-09-22 05:34:53";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2017-01-29 17:22:14";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-12-19 08:05:09";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-11-01 15:23:06";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.6/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-08-29 11:51:34";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-09-24 07:18:31";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-08-11 21:29:34";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:2:"lv";a:8:{s:8:"language";s:2:"lv";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2017-02-18 14:32:25";s:12:"english_name";s:7:"Latvian";s:11:"native_name";s:16:"Latviešu valoda";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.6/lv.zip";s:3:"iso";a:2:{i:1;s:2:"lv";i:2;s:3:"lav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Turpināt";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.5.9";s:7:"updated";s:19:"2016-05-12 13:55:28";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.9/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2017-03-26 05:47:46";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.6/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-08-14 14:18:43";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.18";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.18/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-08-16 13:09:49";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2017-02-09 12:31:50";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-10-14 13:24:10";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.6.6/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-10-28 08:58:28";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-09-23 13:45:11";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.6.6/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-09-22 09:54:16";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.18";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.18/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2017-01-29 17:22:14";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2017-06-23 10:25:06";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-12-30 10:29:38";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-08-30 19:40:04";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2017-04-20 11:47:25";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-11-04 18:38:43";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-08-14 07:00:01";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.6/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-08-12 16:41:17";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2017-03-15 16:10:12";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:3:"szl";a:8:{s:8:"language";s:3:"szl";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-09-24 19:58:14";s:12:"english_name";s:8:"Silesian";s:11:"native_name";s:17:"Ślōnskŏ gŏdka";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.6.6/szl.zip";s:3:"iso";a:1:{i:3;s:3:"szl";}s:7:"strings";a:1:{s:8:"continue";s:13:"Kōntynuować";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-10-12 07:04:13";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.6/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-11-27 15:51:36";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-08-16 10:50:15";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2017-02-10 18:03:30";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2017-01-29 17:22:14";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.6/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"ur";a:8:{s:8:"language";s:2:"ur";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2017-01-08 10:11:20";s:12:"english_name";s:4:"Urdu";s:11:"native_name";s:8:"اردو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.6/ur.zip";s:3:"iso";a:2:{i:1;s:2:"ur";i:2;s:3:"urd";}s:7:"strings";a:1:{s:8:"continue";s:19:"جاری رکھیں";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2017-06-15 11:54:02";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.6/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-08-18 13:53:15";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.5.9";s:7:"updated";s:19:"2016-04-17 03:29:01";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.9/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_HK";a:8:{s:8:"language";s:5:"zh_HK";s:7:"version";s:5:"4.6.6";s:7:"updated";s:19:"2016-12-05 11:58:02";s:12:"english_name";s:19:"Chinese (Hong Kong)";s:11:"native_name";s:16:"香港中文版	";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.6/zh_HK.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'no'),
(421, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(426, '_transient_timeout_mfn-opts-saved', '1498859423', 'no'),
(427, '_transient_mfn-opts-saved', '1', 'no'),
(448, '_site_transient_timeout_betheme_update', '1498858675', 'no'),
(449, '_site_transient_betheme_update', '20.2', 'no'),
(450, '_site_transient_timeout_betheme_plugins', '1498858676', 'no'),
(451, '_site_transient_betheme_plugins', 'a:3:{i:0;a:5:{s:4:"name";s:12:"Layer Slider";s:4:"slug";s:11:"LayerSlider";s:8:"required";b:0;s:7:"version";s:5:"6.5.1";s:6:"source";s:108:"http://api.muffingroup.com/plugins/download.php?code=6c37f5a8-0ea2-47fe-856a-fa9daa85cc31&plugin=LayerSlider";}i:1;a:5:{s:4:"name";s:17:"Slider Revolution";s:4:"slug";s:9:"revslider";s:8:"required";b:0;s:7:"version";s:7:"5.4.5.1";s:6:"source";s:106:"http://api.muffingroup.com/plugins/download.php?code=6c37f5a8-0ea2-47fe-856a-fa9daa85cc31&plugin=revslider";}i:2;a:5:{s:4:"name";s:15:"Visual Composer";s:4:"slug";s:11:"js_composer";s:8:"required";b:0;s:7:"version";s:5:"5.1.1";s:6:"source";s:108:"http://api.muffingroup.com/plugins/download.php?code=6c37f5a8-0ea2-47fe-856a-fa9daa85cc31&plugin=js_composer";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `nc_postmeta`
--

CREATE TABLE `nc_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nc_postmeta`
--

INSERT INTO `nc_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit "Send"]'),
(3, 4, '_mail', 'a:8:{s:7:"subject";s:30:"Nils Castillo "[your-subject]"";s:6:"sender";s:29:"[your-name] <wordpress@local>";s:4:"body";s:178:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Nils Castillo (http://local/nils_castillo)";s:9:"recipient";s:29:"jorgecastellano@interfell.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(4, 4, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:30:"Nils Castillo "[your-subject]"";s:6:"sender";s:31:"Nils Castillo <wordpress@local>";s:4:"body";s:120:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Nils Castillo (http://local/nils_castillo)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:39:"Reply-To: jorgecastellano@interfell.com";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(5, 4, '_messages', 'a:8:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";}'),
(6, 4, '_additional_settings', NULL),
(7, 4, '_locale', 'en_US'),
(8, 2, '_wp_trash_meta_status', 'publish'),
(9, 2, '_wp_trash_meta_time', '1498857094'),
(10, 2, '_wp_desired_post_slug', 'sample-page'),
(11, 6, '_edit_last', '1'),
(12, 6, '_edit_lock', '1498858463:1'),
(13, 6, '_wp_page_template', 'default'),
(14, 6, 'mfn-post-hide-content', '0'),
(15, 6, 'mfn-post-slider', '0'),
(16, 6, 'mfn-post-slider-layer', '0'),
(17, 6, 'mfn-post-hide-title', '0'),
(18, 6, 'mfn-post-remove-padding', '0'),
(19, 6, 'mfn-post-custom-layout', '0'),
(20, 6, 'mfn-post-one-page', '0'),
(21, 6, 'mfn-post-menu', '0'),
(22, 8, '_edit_last', '1'),
(23, 8, '_edit_lock', '1498857051:1'),
(24, 8, '_wp_page_template', 'default'),
(25, 8, 'mfn-post-hide-content', '0'),
(26, 8, 'mfn-post-slider', '0'),
(27, 8, 'mfn-post-slider-layer', '0'),
(28, 8, 'mfn-post-hide-title', '0'),
(29, 8, 'mfn-post-remove-padding', '0'),
(30, 8, 'mfn-post-custom-layout', '0'),
(31, 8, 'mfn-post-one-page', '0'),
(32, 8, 'mfn-post-menu', '0'),
(33, 10, '_menu_item_type', 'post_type'),
(34, 10, '_menu_item_menu_item_parent', '0'),
(35, 10, '_menu_item_object_id', '8'),
(36, 10, '_menu_item_object', 'page'),
(37, 10, '_menu_item_target', ''),
(38, 10, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(39, 10, '_menu_item_xfn', ''),
(40, 10, '_menu_item_url', ''),
(42, 10, 'menu-item-mfn-megamenu', ''),
(43, 10, 'menu-item-mfn-bg', ''),
(44, 11, '_menu_item_type', 'post_type'),
(45, 11, '_menu_item_menu_item_parent', '0'),
(46, 11, '_menu_item_object_id', '6'),
(47, 11, '_menu_item_object', 'page'),
(48, 11, '_menu_item_target', ''),
(49, 11, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(50, 11, '_menu_item_xfn', ''),
(51, 11, '_menu_item_url', ''),
(53, 11, 'menu-item-mfn-megamenu', ''),
(54, 11, 'menu-item-mfn-bg', ''),
(55, 12, '_wp_attached_file', '2017/06/logo-menu-bar.png'),
(56, 12, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:171;s:4:"file";s:25:"2017/06/logo-menu-bar.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"logo-menu-bar-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"logo-menu-bar-128x146.png";s:5:"width";i:128;s:6:"height";i:146;s:9:"mime-type";s:9:"image/png";}s:5:"50x50";a:4:{s:4:"file";s:23:"logo-menu-bar-44x50.png";s:5:"width";i:44;s:6:"height";i:50;s:9:"mime-type";s:9:"image/png";}s:14:"clients-slider";a:4:{s:4:"file";s:23:"logo-menu-bar-66x75.png";s:5:"width";i:66;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:12:"testimonials";a:4:{s:4:"file";s:23:"logo-menu-bar-85x85.png";s:5:"width";i:85;s:6:"height";i:85;s:9:"mime-type";s:9:"image/png";}s:9:"blog-navi";a:4:{s:4:"file";s:23:"logo-menu-bar-80x80.png";s:5:"width";i:80;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(57, 13, '_menu_item_type', 'custom'),
(58, 13, '_menu_item_menu_item_parent', '0'),
(59, 13, '_menu_item_object_id', '13'),
(60, 13, '_menu_item_object', 'custom'),
(61, 13, '_menu_item_target', ''),
(62, 13, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(63, 13, '_menu_item_xfn', ''),
(64, 13, '_menu_item_url', '/#bio'),
(66, 13, 'menu-item-mfn-megamenu', ''),
(67, 13, 'menu-item-mfn-bg', ''),
(68, 14, '_menu_item_type', 'custom'),
(69, 14, '_menu_item_menu_item_parent', '0'),
(70, 14, '_menu_item_object_id', '14'),
(71, 14, '_menu_item_object', 'custom'),
(72, 14, '_menu_item_target', ''),
(73, 14, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(74, 14, '_menu_item_xfn', ''),
(75, 14, '_menu_item_url', '/#casos'),
(77, 14, 'menu-item-mfn-megamenu', ''),
(78, 14, 'menu-item-mfn-bg', ''),
(79, 15, '_menu_item_type', 'custom'),
(80, 15, '_menu_item_menu_item_parent', '0'),
(81, 15, '_menu_item_object_id', '15'),
(82, 15, '_menu_item_object', 'custom'),
(83, 15, '_menu_item_target', ''),
(84, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(85, 15, '_menu_item_xfn', ''),
(86, 15, '_menu_item_url', '/#eventos'),
(88, 15, 'menu-item-mfn-megamenu', ''),
(89, 15, 'menu-item-mfn-bg', '');

-- --------------------------------------------------------

--
-- Table structure for table `nc_posts`
--

CREATE TABLE `nc_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nc_posts`
--

INSERT INTO `nc_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-06-30 13:45:32', '2017-06-30 13:45:32', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2017-06-30 13:45:32', '2017-06-30 13:45:32', '', 0, 'http://local/nils_castillo/?p=1', 0, 'post', '', 0),
(2, 1, '2017-06-30 13:45:32', '2017-06-30 13:45:32', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://local/nils_castillo/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2017-06-30 21:11:34', '2017-06-30 21:11:34', '', 0, 'http://local/nils_castillo/?page_id=2', 0, 'page', '', 0),
(3, 1, '2017-06-30 13:45:49', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-06-30 13:45:49', '0000-00-00 00:00:00', '', 0, 'http://local/nils_castillo/?p=3', 0, 'post', '', 0),
(4, 1, '2017-06-30 21:04:16', '2017-06-30 21:04:16', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit "Send"]\nNils Castillo "[your-subject]"\n[your-name] <wordpress@local>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Nils Castillo (http://local/nils_castillo)\njorgecastellano@interfell.com\nReply-To: [your-email]\n\n0\n0\n\nNils Castillo "[your-subject]"\nNils Castillo <wordpress@local>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Nils Castillo (http://local/nils_castillo)\n[your-email]\nReply-To: jorgecastellano@interfell.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2017-06-30 21:04:16', '2017-06-30 21:04:16', '', 0, 'http://local/nils_castillo/?post_type=wpcf7_contact_form&p=4', 0, 'wpcf7_contact_form', '', 0),
(5, 1, '2017-06-30 21:11:34', '2017-06-30 21:11:34', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://local/nils_castillo/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-06-30 21:11:34', '2017-06-30 21:11:34', '', 2, 'http://local/nils_castillo/2017/06/30/2-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2017-06-30 21:11:51', '2017-06-30 21:11:51', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-06-30 21:11:51', '2017-06-30 21:11:51', '', 0, 'http://local/nils_castillo/?page_id=6', 0, 'page', '', 0),
(7, 1, '2017-06-30 21:11:51', '2017-06-30 21:11:51', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-06-30 21:11:51', '2017-06-30 21:11:51', '', 6, 'http://local/nils_castillo/2017/06/30/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2017-06-30 21:13:10', '2017-06-30 21:13:10', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2017-06-30 21:13:10', '2017-06-30 21:13:10', '', 0, 'http://local/nils_castillo/?page_id=8', 0, 'page', '', 0),
(9, 1, '2017-06-30 21:13:10', '2017-06-30 21:13:10', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2017-06-30 21:13:10', '2017-06-30 21:13:10', '', 8, 'http://local/nils_castillo/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2017-06-30 21:13:52', '2017-06-30 21:13:52', ' ', 'BLOG', '', 'publish', 'closed', 'closed', '', '10', '', '', '2017-06-30 21:26:51', '2017-06-30 21:26:51', '', 0, 'http://local/nils_castillo/?p=10', 4, 'nav_menu_item', '', 0),
(11, 1, '2017-06-30 21:13:52', '2017-06-30 21:13:52', ' ', 'HOME', '', 'publish', 'closed', 'closed', '', '11', '', '', '2017-06-30 21:26:51', '2017-06-30 21:26:51', '', 0, 'http://local/nils_castillo/?p=11', 3, 'nav_menu_item', '', 0),
(12, 1, '2017-06-30 21:17:37', '2017-06-30 21:17:37', '', 'logo-menu-bar', '', 'inherit', 'open', 'closed', '', 'logo-menu-bar', '', '', '2017-06-30 21:17:37', '2017-06-30 21:17:37', '', 0, 'http://local/nils_castillo/wp-content/uploads/2017/06/logo-menu-bar.png', 0, 'attachment', 'image/png', 0),
(13, 1, '2017-06-30 21:26:51', '2017-06-30 21:26:51', '', 'BIO', '', 'publish', 'closed', 'closed', '', 'bio', '', '', '2017-06-30 21:26:51', '2017-06-30 21:26:51', '', 0, 'http://local/nils_castillo/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2017-06-30 21:26:51', '2017-06-30 21:26:51', '', 'CASOS DE EXITO', '', 'publish', 'closed', 'closed', '', 'casos-de-exito', '', '', '2017-06-30 21:26:51', '2017-06-30 21:26:51', '', 0, 'http://local/nils_castillo/?p=14', 2, 'nav_menu_item', '', 0),
(15, 1, '2017-06-30 21:26:51', '2017-06-30 21:26:51', '', 'EVENTOS', '', 'publish', 'closed', 'closed', '', 'eventos', '', '', '2017-06-30 21:26:51', '2017-06-30 21:26:51', '', 0, 'http://local/nils_castillo/?p=15', 5, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nc_termmeta`
--

CREATE TABLE `nc_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nc_terms`
--

CREATE TABLE `nc_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nc_terms`
--

INSERT INTO `nc_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nc_term_relationships`
--

CREATE TABLE `nc_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nc_term_relationships`
--

INSERT INTO `nc_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(10, 2, 0),
(11, 2, 0),
(13, 2, 0),
(14, 2, 0),
(15, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nc_term_taxonomy`
--

CREATE TABLE `nc_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nc_term_taxonomy`
--

INSERT INTO `nc_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `nc_usermeta`
--

CREATE TABLE `nc_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nc_usermeta`
--

INSERT INTO `nc_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'interfell'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'nc_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'nc_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:1:{s:64:"a3b7fbdd300ccc8075fd693f56544b7247803e37d8051afd83094bec3adb3395";a:4:{s:10:"expiration";i:1500039942;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:76:"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:54.0) Gecko/20100101 Firefox/54.0";s:5:"login";i:1498830342;}}'),
(15, 1, 'nc_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'closedpostboxes_dashboard', 'a:1:{i:0;s:17:"dashboard_primary";}'),
(17, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(18, 1, 'meta-box-order_dashboard', 'a:4:{s:6:"normal";s:38:"dashboard_right_now,dashboard_activity";s:4:"side";s:21:"dashboard_quick_press";s:7:"column3";s:17:"dashboard_primary";s:7:"column4";s:0:"";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:14:{i:0;s:20:"add-post-type-client";i:1;s:19:"add-post-type-offer";i:2;s:23:"add-post-type-portfolio";i:3;s:19:"add-post-type-slide";i:4;s:25:"add-post-type-testimonial";i:5;s:20:"add-post-type-layout";i:6;s:22:"add-post-type-template";i:7;s:12:"add-post_tag";i:8;s:15:"add-post_format";i:9;s:16:"add-client-types";i:10;s:15:"add-offer-types";i:11;s:19:"add-portfolio-types";i:12;s:15:"add-slide-types";i:13;s:21:"add-testimonial-types";}'),
(21, 1, 'nc_user-settings', 'libraryContent=browse'),
(22, 1, 'nc_user-settings-time', '1498857571'),
(23, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Table structure for table `nc_users`
--

CREATE TABLE `nc_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nc_users`
--

INSERT INTO `nc_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'interfell', '$P$BmqSCXj8Yqi3LFWgEKbL2.81E/dWsJ0', 'interfell', 'jorgecastellano@interfell.com', '', '2017-06-30 13:45:31', '', 0, 'interfell');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nc_commentmeta`
--
ALTER TABLE `nc_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `nc_comments`
--
ALTER TABLE `nc_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `nc_links`
--
ALTER TABLE `nc_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `nc_options`
--
ALTER TABLE `nc_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `nc_postmeta`
--
ALTER TABLE `nc_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `nc_posts`
--
ALTER TABLE `nc_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `nc_termmeta`
--
ALTER TABLE `nc_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `nc_terms`
--
ALTER TABLE `nc_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `nc_term_relationships`
--
ALTER TABLE `nc_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `nc_term_taxonomy`
--
ALTER TABLE `nc_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `nc_usermeta`
--
ALTER TABLE `nc_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `nc_users`
--
ALTER TABLE `nc_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nc_commentmeta`
--
ALTER TABLE `nc_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nc_comments`
--
ALTER TABLE `nc_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nc_links`
--
ALTER TABLE `nc_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nc_options`
--
ALTER TABLE `nc_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=460;
--
-- AUTO_INCREMENT for table `nc_postmeta`
--
ALTER TABLE `nc_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `nc_posts`
--
ALTER TABLE `nc_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `nc_termmeta`
--
ALTER TABLE `nc_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nc_terms`
--
ALTER TABLE `nc_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nc_term_taxonomy`
--
ALTER TABLE `nc_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nc_usermeta`
--
ALTER TABLE `nc_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `nc_users`
--
ALTER TABLE `nc_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
