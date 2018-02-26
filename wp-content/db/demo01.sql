-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 26-02-2018 a las 20:20:34
-- Versión del servidor: 5.6.38
-- Versión de PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `demo01`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d1_commentmeta`
--

CREATE TABLE `d1_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d1_comments`
--

CREATE TABLE `d1_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `d1_comments`
--

INSERT INTO `d1_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-02-16 13:07:48', '2018-02-16 19:07:48', 'Hola, esto es un comentario. Para empezar a moderar, editar y borrar comentarios, por favor, visita la pantalla de comentarios en el escritorio. Los avatares de los comentaristas provienen de <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d1_cwa`
--

CREATE TABLE `d1_cwa` (
  `id` mediumint(9) NOT NULL,
  `cwa_name` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cwa_description` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cwa_id` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cwa_widget_class` text COLLATE utf8mb4_unicode_520_ci,
  `cwa_widget_wrapper` text COLLATE utf8mb4_unicode_520_ci,
  `cwa_widget_header_class` text COLLATE utf8mb4_unicode_520_ci,
  `cwa_widget_header_wrapper` text COLLATE utf8mb4_unicode_520_ci,
  `cwa_type` varchar(10) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `last_updated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `d1_cwa`
--

INSERT INTO `d1_cwa` (`id`, `cwa_name`, `cwa_description`, `cwa_id`, `cwa_widget_class`, `cwa_widget_wrapper`, `cwa_widget_header_class`, `cwa_widget_header_wrapper`, `cwa_type`, `last_updated`) VALUES
(1, 'Top Menu Location', '', 'topmenu', NULL, NULL, NULL, NULL, 'menu', '2018-02-16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d1_links`
--

CREATE TABLE `d1_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d1_options`
--

CREATE TABLE `d1_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `d1_options`
--

INSERT INTO `d1_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/demo01', 'yes'),
(2, 'home', 'http://localhost/demo01', 'yes'),
(3, 'blogname', 'Demo 01', 'yes'),
(4, 'blogdescription', 'Otro sitio realizado con WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'jorge.olay@kromasol.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '', 'yes'),
(11, 'comments_notify', '', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'closed', 'yes'),
(20, 'default_ping_status', 'closed', 'yes'),
(21, 'default_pingback_flag', '', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:23:\"subtitles/subtitles.php\";i:2;s:28:\"wp-example-content/magic.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '-6', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:73:\"/Applications/MAMP/htdocs/demo01/wp-content/themes/edsbootstrap/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'edsbootstrap', 'yes'),
(41, 'stylesheet', 'edsbootstrap', 'yes'),
(42, 'comment_whitelist', '', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '1', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '', 'yes'),
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
(69, 'close_comments_for_old_posts', '', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'd1_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'es_MX', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:6:\"footer\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'cron', 'a:5:{i:1519067269;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1519067279;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1519067309;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1519075489;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1518808165;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(122, '_site_transient_timeout_browser_042593a998b8e6feea418cc548b56009', '1519412879', 'no'),
(123, '_site_transient_browser_042593a998b8e6feea418cc548b56009', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"64.0.3282.167\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(127, 'can_compress_scripts', '1', 'no'),
(140, 'recently_activated', 'a:2:{s:47:\"wp-custom-widget-area/wp-custom-widget-area.php\";i:1518818653;s:62:\"foundation-top-bar-navigation-menu/foundation-top-bar-menu.php\";i:1518817787;}', 'yes'),
(142, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(144, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.4.zip\";s:6:\"locale\";s:5:\"es_MX\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.4\";s:7:\"version\";s:5:\"4.9.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1519058300;s:15:\"version_checked\";s:5:\"4.9.4\";s:12:\"translations\";a:0:{}}', 'no'),
(148, 'current_theme', 'edsbootstrap', 'yes'),
(149, 'theme_mods_edsbootstrap', 'a:8:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:8;s:6:\"topbar\";i:0;s:8:\"top-menu\";i:10;}s:18:\"custom_css_post_id\";i:-1;s:12:\"header_image\";s:13:\"remove-header\";s:30:\"edsbootstrap_show_page_sidebar\";s:0:\"\";s:26:\"edsbootstrap_theme_options\";a:3:{s:6:\"social\";a:2:{s:11:\"fa-facebook\";s:0:\"\";s:10:\"fa-twitter\";s:0:\"\";}s:4:\"info\";a:3:{s:12:\"icon_pin_alt\";s:0:\"\";s:13:\"icon_mail_alt\";s:0:\"\";s:10:\"icon_phone\";s:0:\"\";}s:4:\"blog\";a:1:{s:11:\"sub_heading\";s:0:\"\";}}s:39:\"edsbootstrap_theme_options_socialfooter\";s:0:\"\";s:11:\"custom_logo\";i:110;}', 'yes'),
(150, 'theme_switched', '', 'yes'),
(151, 'edsbootstrap_admin_notice_welcome', '1', 'yes'),
(199, 'category_children', 'a:0:{}', 'yes'),
(211, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(229, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1519058302;s:7:\"checked\";a:2:{s:23:\"subtitles/subtitles.php\";s:5:\"3.0.0\";s:28:\"wp-example-content/magic.php\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:23:\"subtitles/subtitles.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:23:\"w.org/plugins/subtitles\";s:4:\"slug\";s:9:\"subtitles\";s:6:\"plugin\";s:23:\"subtitles/subtitles.php\";s:11:\"new_version\";s:5:\"3.0.0\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/subtitles/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/subtitles.3.0.0.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:62:\"https://ps.w.org/subtitles/assets/icon-128x128.png?rev=1063614\";s:2:\"2x\";s:62:\"https://ps.w.org/subtitles/assets/icon-256x256.png?rev=1063614\";s:7:\"default\";s:62:\"https://ps.w.org/subtitles/assets/icon-256x256.png?rev=1063614\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:65:\"https://ps.w.org/subtitles/assets/banner-1544x500.png?rev=1063614\";s:2:\"1x\";s:64:\"https://ps.w.org/subtitles/assets/banner-772x250.png?rev=1063614\";s:7:\"default\";s:65:\"https://ps.w.org/subtitles/assets/banner-1544x500.png?rev=1063614\";}s:11:\"banners_rtl\";a:0:{}}s:28:\"wp-example-content/magic.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/wp-example-content\";s:4:\"slug\";s:18:\"wp-example-content\";s:6:\"plugin\";s:28:\"wp-example-content/magic.php\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wp-example-content/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/wp-example-content.1.3.zip\";s:5:\"icons\";a:0:{}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(230, 'kz_db_version', '1.2.5', 'yes'),
(239, '_site_transient_timeout_browser_82ae2a9cd68a9de7fb7691be89db315d', '1519442654', 'no'),
(240, '_site_transient_browser_82ae2a9cd68a9de7fb7691be89db315d', 'a:10:{s:4:\"name\";s:6:\"Safari\";s:7:\"version\";s:6:\"11.0.2\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.apple.com/safari/\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/safari.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/safari.png?1\";s:15:\"current_version\";s:2:\"11\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(382, '_transient_edsbootstrap_categories', '2', 'yes'),
(397, '_site_transient_timeout_theme_roots', '1519060101', 'no'),
(398, '_site_transient_theme_roots', 'a:4:{s:12:\"edsbootstrap\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(399, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1519058302;s:7:\"checked\";a:4:{s:12:\"edsbootstrap\";s:3:\"1.9\";s:13:\"twentyfifteen\";s:3:\"1.8\";s:15:\"twentyseventeen\";s:3:\"1.3\";s:13:\"twentysixteen\";s:3:\"1.3\";}s:8:\"response\";a:3:{s:13:\"twentyfifteen\";a:4:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.1.9.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.4.zip\";}s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.1.4.zip\";}}s:12:\"translations\";a:0:{}}', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d1_postmeta`
--

CREATE TABLE `d1_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `d1_postmeta`
--

INSERT INTO `d1_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(28, 4, '_edit_lock', '1518915416:1'),
(31, 4, '_edit_last', '1'),
(37, 5, '_edit_lock', '1518915397:1'),
(38, 6, '_edit_lock', '1518915381:1'),
(39, 5, '_edit_last', '1'),
(43, 6, '_edit_last', '1'),
(57, 7, '_edit_lock', '1518905832:1'),
(58, 8, '_edit_lock', '1518915296:1'),
(59, 9, '_edit_lock', '1518915279:1'),
(60, 1, '_edit_lock', '1518915347:1'),
(63, 7, '_edit_last', '1'),
(69, 8, '_edit_last', '1'),
(73, 9, '_edit_last', '1'),
(77, 1, '_edit_last', '1'),
(85, 13, '_edit_lock', '1518816564:1'),
(94, 36, '_edit_last', '1'),
(95, 36, '_edit_lock', '1518915220:1'),
(101, 39, '_edit_last', '1'),
(102, 39, '_edit_lock', '1518915186:1'),
(106, 41, '_edit_last', '1'),
(107, 41, '_edit_lock', '1518915036:1'),
(111, 42, '_edit_last', '1'),
(112, 42, '_edit_lock', '1518915003:1'),
(116, 43, '_edit_last', '1'),
(117, 43, '_edit_lock', '1518914982:1'),
(121, 13, '_edit_last', '1'),
(122, 13, '_subtitle', 'Historia de la compañía'),
(263, 64, '_wp_trash_meta_status', 'publish'),
(264, 64, '_wp_trash_meta_time', '1518817005'),
(265, 65, '_wp_trash_meta_status', 'publish'),
(266, 65, '_wp_trash_meta_time', '1518817036'),
(270, 67, '_wp_trash_meta_status', 'publish'),
(271, 67, '_wp_trash_meta_time', '1518817113'),
(288, 68, '_wp_trash_meta_status', 'publish'),
(289, 68, '_wp_trash_meta_time', '1518817192'),
(299, 72, '_edit_lock', '1518817714:1'),
(300, 72, '_wp_trash_meta_status', 'publish'),
(301, 72, '_wp_trash_meta_time', '1518817723'),
(302, 73, '_wp_trash_meta_status', 'publish'),
(303, 73, '_wp_trash_meta_time', '1518817762'),
(304, 74, '_wp_trash_meta_status', 'publish'),
(305, 74, '_wp_trash_meta_time', '1518817899'),
(306, 75, '_wp_trash_meta_status', 'publish'),
(307, 75, '_wp_trash_meta_time', '1518818817'),
(346, 87, '_wp_attached_file', '2018/02/1_poster-web.jpg'),
(347, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:848;s:6:\"height\";i:1455;s:4:\"file\";s:24:\"2018/02/1_poster-web.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"1_poster-web-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"1_poster-web-175x300.jpg\";s:5:\"width\";i:175;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"1_poster-web-768x1318.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1318;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"1_poster-web-597x1024.jpg\";s:5:\"width\";i:597;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(348, 1, '_thumbnail_id', '87'),
(353, 4, '_thumbnail_id', '87'),
(356, 5, '_thumbnail_id', '87'),
(359, 6, '_thumbnail_id', '87'),
(362, 7, '_thumbnail_id', '87'),
(365, 8, '_thumbnail_id', '87'),
(368, 9, '_thumbnail_id', '87'),
(371, 36, '_thumbnail_id', '87'),
(374, 39, '_thumbnail_id', '87'),
(377, 41, '_thumbnail_id', '87'),
(378, 42, '_thumbnail_id', '87'),
(381, 43, '_thumbnail_id', '87'),
(437, 109, '_wp_trash_meta_status', 'publish'),
(438, 109, '_wp_trash_meta_time', '1518906994'),
(439, 110, '_wp_attached_file', '2018/02/0_logotipo-kromasol.png'),
(440, 110, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:374;s:6:\"height\";i:90;s:4:\"file\";s:31:\"2018/02/0_logotipo-kromasol.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"0_logotipo-kromasol-150x90.png\";s:5:\"width\";i:150;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"0_logotipo-kromasol-300x72.png\";s:5:\"width\";i:300;s:6:\"height\";i:72;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(441, 111, '_wp_trash_meta_status', 'publish'),
(442, 111, '_wp_trash_meta_time', '1518908039'),
(443, 112, '_wp_trash_meta_status', 'publish'),
(444, 112, '_wp_trash_meta_time', '1518908122'),
(445, 11, '_edit_last', '1'),
(446, 11, '_edit_lock', '1518908454:1'),
(447, 14, '_edit_lock', '1518908470:1'),
(448, 14, '_edit_last', '1'),
(449, 12, '_edit_lock', '1518908477:1'),
(450, 115, '_menu_item_type', 'post_type'),
(451, 115, '_menu_item_menu_item_parent', '0'),
(452, 115, '_menu_item_object_id', '14'),
(453, 115, '_menu_item_object', 'page'),
(454, 115, '_menu_item_target', ''),
(455, 115, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(456, 115, '_menu_item_xfn', ''),
(457, 115, '_menu_item_url', ''),
(459, 116, '_menu_item_type', 'post_type'),
(460, 116, '_menu_item_menu_item_parent', '0'),
(461, 116, '_menu_item_object_id', '11'),
(462, 116, '_menu_item_object', 'page'),
(463, 116, '_menu_item_target', ''),
(464, 116, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(465, 116, '_menu_item_xfn', ''),
(466, 116, '_menu_item_url', ''),
(468, 117, '_menu_item_type', 'custom'),
(469, 117, '_menu_item_menu_item_parent', '0'),
(470, 117, '_menu_item_object_id', '117'),
(471, 117, '_menu_item_object', 'custom'),
(472, 117, '_menu_item_target', ''),
(473, 117, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(474, 117, '_menu_item_xfn', ''),
(475, 117, '_menu_item_url', '#'),
(477, 118, '_menu_item_type', 'custom'),
(478, 118, '_menu_item_menu_item_parent', '0'),
(479, 118, '_menu_item_object_id', '118'),
(480, 118, '_menu_item_object', 'custom'),
(481, 118, '_menu_item_target', ''),
(482, 118, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(483, 118, '_menu_item_xfn', ''),
(484, 118, '_menu_item_url', '#'),
(501, 43, '_wp_old_slug', 'bases-y-concursos-tres'),
(503, 42, '_wp_old_slug', 'bases-y-concursos-dos'),
(505, 41, '_wp_old_slug', 'bases-y-concursos-uno'),
(507, 39, '_wp_old_slug', 'politica-renovada'),
(509, 39, '_wp_old_slug', 'politicas-de-pre-registro-viaje-de-playa'),
(511, 39, '_wp_old_slug', 'politicas-pre-registro-viaje-de-playa'),
(513, 36, '_wp_old_slug', 'politica-entrada'),
(515, 9, '_wp_old_slug', 'headers-post'),
(517, 8, '_wp_old_slug', 'links-post'),
(519, 1, '_wp_old_slug', 'hola-mundo'),
(521, 6, '_wp_old_slug', 'ul-and-ol-post'),
(523, 5, '_wp_old_slug', 'image-post'),
(525, 4, '_wp_old_slug', 'multiple-paragraph-post'),
(526, 139, '_menu_item_type', 'custom'),
(527, 139, '_menu_item_menu_item_parent', '0'),
(528, 139, '_menu_item_object_id', '139'),
(529, 139, '_menu_item_object', 'custom'),
(530, 139, '_menu_item_target', ''),
(531, 139, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(532, 139, '_menu_item_xfn', ''),
(533, 139, '_menu_item_url', '#'),
(571, 144, '_menu_item_type', 'custom'),
(572, 144, '_menu_item_menu_item_parent', '0'),
(573, 144, '_menu_item_object_id', '144'),
(574, 144, '_menu_item_object', 'custom'),
(575, 144, '_menu_item_target', ''),
(576, 144, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(577, 144, '_menu_item_xfn', ''),
(578, 144, '_menu_item_url', '#'),
(580, 145, '_menu_item_type', 'custom'),
(581, 145, '_menu_item_menu_item_parent', '0'),
(582, 145, '_menu_item_object_id', '145'),
(583, 145, '_menu_item_object', 'custom'),
(584, 145, '_menu_item_target', ''),
(585, 145, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(586, 145, '_menu_item_xfn', ''),
(587, 145, '_menu_item_url', '#'),
(589, 146, '_menu_item_type', 'custom'),
(590, 146, '_menu_item_menu_item_parent', '0'),
(591, 146, '_menu_item_object_id', '146'),
(592, 146, '_menu_item_object', 'custom'),
(593, 146, '_menu_item_target', ''),
(594, 146, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(595, 146, '_menu_item_xfn', ''),
(596, 146, '_menu_item_url', '#'),
(598, 147, '_menu_item_type', 'custom'),
(599, 147, '_menu_item_menu_item_parent', '0'),
(600, 147, '_menu_item_object_id', '147'),
(601, 147, '_menu_item_object', 'custom'),
(602, 147, '_menu_item_target', ''),
(603, 147, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(604, 147, '_menu_item_xfn', ''),
(605, 147, '_menu_item_url', '#'),
(607, 148, '_menu_item_type', 'custom'),
(608, 148, '_menu_item_menu_item_parent', '0'),
(609, 148, '_menu_item_object_id', '148'),
(610, 148, '_menu_item_object', 'custom'),
(611, 148, '_menu_item_target', ''),
(612, 148, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(613, 148, '_menu_item_xfn', ''),
(614, 148, '_menu_item_url', '#'),
(616, 149, '_menu_item_type', 'custom'),
(617, 149, '_menu_item_menu_item_parent', '0'),
(618, 149, '_menu_item_object_id', '149'),
(619, 149, '_menu_item_object', 'custom'),
(620, 149, '_menu_item_target', ''),
(621, 149, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(622, 149, '_menu_item_xfn', ''),
(623, 149, '_menu_item_url', '#'),
(639, 157, '_menu_item_type', 'post_type'),
(640, 157, '_menu_item_menu_item_parent', '144'),
(641, 157, '_menu_item_object_id', '13'),
(642, 157, '_menu_item_object', 'page'),
(643, 157, '_menu_item_target', ''),
(644, 157, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(645, 157, '_menu_item_xfn', ''),
(646, 157, '_menu_item_url', ''),
(678, 173, '_wp_attached_file', '2018/02/2_icono-oficina-personal.png'),
(679, 173, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:64;s:6:\"height\";i:60;s:4:\"file\";s:36:\"2018/02/2_icono-oficina-personal.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(680, 174, '_wp_attached_file', '2018/02/2_icono-paises.png'),
(681, 174, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:64;s:6:\"height\";i:60;s:4:\"file\";s:26:\"2018/02/2_icono-paises.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(682, 175, '_wp_attached_file', '2018/02/2_icono-soluciones.png'),
(683, 175, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:64;s:6:\"height\";i:60;s:4:\"file\";s:30:\"2018/02/2_icono-soluciones.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(684, 176, '_wp_attached_file', '2018/02/2_icono-sucursales.png'),
(685, 176, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:64;s:6:\"height\";i:60;s:4:\"file\";s:30:\"2018/02/2_icono-sucursales.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(686, 177, '_wp_attached_file', '2018/02/3_icono-calendario.png'),
(687, 177, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:110;s:6:\"height\";i:68;s:4:\"file\";s:30:\"2018/02/3_icono-calendario.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(688, 178, '_wp_attached_file', '2018/02/3_icono-capacitacion.png'),
(689, 178, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:110;s:6:\"height\";i:68;s:4:\"file\";s:32:\"2018/02/3_icono-capacitacion.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(690, 179, '_wp_attached_file', '2018/02/3_icono-como-gano-dinero.png'),
(691, 179, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:110;s:6:\"height\";i:68;s:4:\"file\";s:36:\"2018/02/3_icono-como-gano-dinero.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(692, 180, '_wp_attached_file', '2018/02/3_icono-grupos-liderazgo.png'),
(693, 180, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:110;s:6:\"height\";i:68;s:4:\"file\";s:36:\"2018/02/3_icono-grupos-liderazgo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(694, 181, '_wp_attached_file', '2018/02/3_icono-herramientas.png'),
(695, 181, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:110;s:6:\"height\";i:68;s:4:\"file\";s:32:\"2018/02/3_icono-herramientas.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(696, 182, '_wp_attached_file', '2018/02/3_icono-lo-nuevo.png'),
(697, 182, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:110;s:6:\"height\";i:68;s:4:\"file\";s:28:\"2018/02/3_icono-lo-nuevo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(698, 183, '_wp_attached_file', '2018/02/3_icono-productos.png'),
(699, 183, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:110;s:6:\"height\";i:68;s:4:\"file\";s:29:\"2018/02/3_icono-productos.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d1_posts`
--

CREATE TABLE `d1_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `d1_posts`
--

INSERT INTO `d1_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-02-16 13:07:48', '2018-02-16 19:07:48', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure.', 'Depósito Reembolsos', '', 'publish', 'closed', 'closed', '', 'deposito-reembolsos', '', '', '2018-02-17 18:55:47', '2018-02-18 00:55:47', '', 0, 'http://localhost/demo01/?p=1', 0, 'post', '', 1),
(2, 1, '2018-02-16 13:07:48', '2018-02-16 19:07:48', 'Esta es una página de ejemplo, Es diferente a una entrada de un blog porque se mantiene estática y se mostrará en la barra de navegación (en la mayoría de temas). Casi todo el mundo comienza con una página \"Acerca De\" para presentarse a los potenciales visitantes. Podría ser algo así:\n\n<blockquote>¡Hola!: Soy mensajero por el día, aspirante a actor por la noche y esta es mi web. Vivo en Guadalajara, tengo un gran perro llamado Khal y me encantan las piñas coladas (y empaparme en la lluvia)</blockquote>\n\n… o algo así:\n\n<blockquote>La empresa Banpatrás XYZ se fundó en 1971, y ha estado invirtiendo el ahorro de sus clientes desde entonces. Ubicada en Ciudad Gótica, Banpatrás XYZ tiene más de 2.000 empleados e hace toda clase de cosas increíbles por la comunidad de Ciudad Gótica</blockquote>\n\nSi eres nuevo en WordPress deberías ir a <a href=\"http://localhost/demo01/wp-admin/\">tu escritorio</a> para borrar esta página y crear algunas nuevas con tu contenido. ¡Diviértete!', 'Página de ejemplo', '', 'publish', 'closed', 'open', '', 'pagina-ejemplo', '', '', '2018-02-16 13:07:48', '2018-02-16 19:07:48', '', 0, 'http://localhost/demo01/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-02-16 13:07:59', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-02-16 13:07:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/demo01/?p=3', 0, 'post', '', 0),
(4, 1, '2018-02-16 13:10:04', '2018-02-16 19:10:04', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure.', 'Importancia de tu RFC', '', 'publish', 'closed', 'closed', '', 'importancia-de-tu-rfc', '', '', '2018-02-17 18:56:56', '2018-02-18 00:56:56', '', 0, 'http://localhost/demo01/2018/02/16/multiple-paragraph-post/', 0, 'post', '', 0),
(5, 1, '2018-02-16 13:10:04', '2018-02-16 19:10:04', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure.', 'Ruta Kromavan Febrero', '', 'publish', 'closed', 'closed', '', 'ruta-kromavan-febrero', '', '', '2018-02-17 18:56:36', '2018-02-18 00:56:36', '', 0, 'http://localhost/demo01/2018/02/16/image-post/', 0, 'post', '', 0),
(6, 1, '2018-02-16 13:10:04', '2018-02-16 19:10:04', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure.', 'Nueva Ubicación Sucursal Acapulco', '', 'publish', 'closed', 'closed', '', 'nueva-ubicacion-sucursal-acapulco', '', '', '2018-02-17 18:56:21', '2018-02-18 00:56:21', '', 0, 'http://localhost/demo01/2018/02/16/ul-and-ol-post/', 0, 'post', '', 0),
(7, 1, '2018-02-16 13:10:04', '2018-02-16 19:10:04', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure.', 'Preventa Sonik Colosal', '', 'publish', 'closed', 'closed', '', 'blockquote-post', '', '', '2018-02-17 16:17:59', '2018-02-17 22:17:59', '', 0, 'http://localhost/demo01/2018/02/16/blockquote-post/', 0, 'post', '', 0),
(8, 1, '2018-02-16 13:10:04', '2018-02-16 19:10:04', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure.', 'Paquete Makro y Playera', '', 'publish', 'closed', 'closed', '', 'paquete-makro-y-playera', '', '', '2018-02-17 18:54:55', '2018-02-18 00:54:55', '', 0, 'http://localhost/demo01/2018/02/16/links-post/', 0, 'post', '', 0),
(9, 1, '2018-02-16 13:10:04', '2018-02-16 19:10:04', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure.', 'Promo Herramientas', '', 'publish', 'closed', 'closed', '', 'promo-herramientas', '', '', '2018-02-17 18:54:38', '2018-02-18 00:54:38', '', 0, 'http://localhost/demo01/2018/02/16/headers-post/', 0, 'post', '', 0),
(10, 1, '2018-02-16 13:10:04', '2018-02-16 19:10:04', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'Multiple Paragraph Page', '', 'publish', 'closed', 'closed', '', 'multiple-paragraph-page', '', '', '2018-02-16 13:10:04', '2018-02-16 19:10:04', '', 0, 'http://localhost/demo01/multiple-paragraph-page/', 0, 'page', '', 0),
(11, 1, '2018-02-16 13:10:04', '2018-02-16 19:10:04', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p><img src=\"http://hivemindlabs.com/plugin-data/hive.jpg\" width=\"100%\" /><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'Sucursales', '', 'publish', 'closed', 'closed', '', 'sucursales', '', '', '2018-02-17 17:00:54', '2018-02-17 23:00:54', '', 0, 'http://localhost/demo01/image-page/', 0, 'page', '', 0),
(12, 1, '2018-02-16 13:10:04', '2018-02-16 19:10:04', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p><ul><li>First Item</li><li>Second Item</li><li>Third Item</li><li>Fourth Item</li><li>Fifth Item</li></ul><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p><ol><li>First Item</li><li>Second Item</li><li>Third Item</li><li>Fourth Item</li><li>Fifth Item</li></ol><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'UL and OL Page', '', 'publish', 'closed', 'closed', '', 'ul-and-ol-page', '', '', '2018-02-16 13:10:04', '2018-02-16 19:10:04', '', 0, 'http://localhost/demo01/ul-and-ol-page/', 0, 'page', '', 0),
(13, 1, '2018-02-16 13:10:04', '2018-02-16 19:10:04', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<blockquote>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</blockquote>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Historia', '', 'publish', 'closed', 'closed', '', 'blockquote-page', '', '', '2018-02-16 15:31:28', '2018-02-16 21:31:28', '', 0, 'http://localhost/demo01/blockquote-page/', 0, 'page', '', 0),
(14, 1, '2018-02-16 13:10:04', '2018-02-16 19:10:04', 'Lorem ipsum dolor sit amet, <a href=\"#\">consectetur adipisicing</a> elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <a href=\"#\">Duis aute irure</a> dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia <a href=\"#\">deserunt</a> mollit anim id est laborum.', 'Soluciones al Distribuidor', '', 'publish', 'closed', 'closed', '', 'links-page', '', '', '2018-02-17 17:01:10', '2018-02-17 23:01:10', '', 0, 'http://localhost/demo01/links-page/', 0, 'page', '', 0),
(15, 1, '2018-02-16 13:10:04', '2018-02-16 19:10:04', '<h1>This Is An H1 Tag</h1><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p><h2>This Is An H2 Tag</h2><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p><h3>This Is An H3 Tag</h3><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p><h4>This Is An H4 Tag</h4><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p><h5>This Is An H5 Tag</h5><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'Headers Page', '', 'publish', 'closed', 'closed', '', 'headers-page', '', '', '2018-02-16 13:10:04', '2018-02-16 19:10:04', '', 0, 'http://localhost/demo01/headers-page/', 0, 'page', '', 0),
(16, 1, '2018-02-16 13:10:04', '2018-02-16 19:10:04', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'Child Page', '', 'publish', 'closed', 'closed', '', 'child-page', '', '', '2018-02-16 13:10:04', '2018-02-16 19:10:04', '', 11, 'http://localhost/demo01/image-page/child-page/', 0, 'page', '', 0),
(17, 1, '2018-02-16 13:10:04', '2018-02-16 19:10:04', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'Grandchild Page', '', 'publish', 'closed', 'closed', '', 'grandchild-page', '', '', '2018-02-16 13:10:04', '2018-02-16 19:10:04', '', 16, 'http://localhost/demo01/image-page/child-page/grandchild-page/', 0, 'page', '', 0),
(18, 1, '2018-02-16 13:10:53', '2018-02-16 19:10:53', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'Multiple Paragraph Post', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-02-16 13:10:53', '2018-02-16 19:10:53', '', 4, 'http://localhost/demo01/2018/02/16/4-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-02-16 13:10:53', '2018-02-16 19:10:53', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p><img src=\"http://hivemindlabs.com/plugin-data/hive.jpg\" width=\"100%\" /><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'Image Post', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-02-16 13:10:53', '2018-02-16 19:10:53', '', 5, 'http://localhost/demo01/2018/02/16/5-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-02-16 13:10:53', '2018-02-16 19:10:53', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p><ul><li>First Item</li><li>Second Item</li><li>Third Item</li><li>Fourth Item</li><li>Fifth Item</li></ul><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p><ol><li>First Item</li><li>Second Item</li><li>Third Item</li><li>Fourth Item</li><li>Fifth Item</li></ol><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'UL and OL Post', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-02-16 13:10:53', '2018-02-16 19:10:53', '', 6, 'http://localhost/demo01/2018/02/16/6-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2018-02-16 13:10:53', '2018-02-16 19:10:53', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p><blockquote>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</blockquote><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'Blockquote Post', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-02-16 13:10:53', '2018-02-16 19:10:53', '', 7, 'http://localhost/demo01/2018/02/16/7-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2018-02-16 13:10:53', '2018-02-16 19:10:53', '<p>Lorem ipsum dolor sit amet, <a href=\"#\">consectetur adipisicing</a> elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <a href=\"#\">Duis aute irure</a> dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia <a href=\"#\">deserunt</a> mollit anim id est laborum.</p>', 'Links Post', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-02-16 13:10:53', '2018-02-16 19:10:53', '', 8, 'http://localhost/demo01/2018/02/16/8-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2018-02-16 13:10:53', '2018-02-16 19:10:53', '<h1>This Is An H1 Tag</h1><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p><h2>This Is An H2 Tag</h2><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p><h3>This Is An H3 Tag</h3><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p><h4>This Is An H4 Tag</h4><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p><h5>This Is An H5 Tag</h5><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'Headers Post', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-02-16 13:10:53', '2018-02-16 19:10:53', '', 9, 'http://localhost/demo01/2018/02/16/9-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2018-02-16 13:10:53', '2018-02-16 19:10:53', 'Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡y comienza a publicar!.', '¡Hola mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-02-16 13:10:53', '2018-02-16 19:10:53', '', 1, 'http://localhost/demo01/2018/02/16/1-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2018-02-16 13:11:55', '2018-02-16 19:11:55', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Multiple Paragraph Post', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-02-16 13:11:55', '2018-02-16 19:11:55', '', 4, 'http://localhost/demo01/2018/02/16/4-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-02-16 13:51:22', '2018-02-16 19:51:22', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Image Post', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-02-16 13:51:22', '2018-02-16 19:51:22', '', 5, 'http://localhost/demo01/2018/02/16/5-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2018-02-16 13:51:35', '2018-02-16 19:51:35', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<ul>\r\n 	<li>First Item</li>\r\n 	<li>Second Item</li>\r\n 	<li>Third Item</li>\r\n 	<li>Fourth Item</li>\r\n 	<li>Fifth Item</li>\r\n</ul>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<ol>\r\n 	<li>First Item</li>\r\n 	<li>Second Item</li>\r\n 	<li>Third Item</li>\r\n 	<li>Fourth Item</li>\r\n 	<li>Fifth Item</li>\r\n</ol>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'UL and OL Post', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-02-16 13:51:35', '2018-02-16 19:51:35', '', 6, 'http://localhost/demo01/2018/02/16/6-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-02-16 14:12:03', '2018-02-16 20:12:03', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<!--more-->\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Multiple Paragraph Post', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-02-16 14:12:03', '2018-02-16 20:12:03', '', 4, 'http://localhost/demo01/2018/02/16/4-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-02-16 14:21:19', '2018-02-16 20:21:19', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<!--more-->\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Multiple Paragraph Post', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-02-16 14:21:19', '2018-02-16 20:21:19', '', 4, 'http://localhost/demo01/2018/02/16/4-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2018-02-16 14:21:23', '2018-02-16 20:21:23', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<!--more-->\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Multiple Paragraph Post', '', 'inherit', 'closed', 'closed', '', '4-autosave-v1', '', '', '2018-02-16 14:21:23', '2018-02-16 20:21:23', '', 4, 'http://localhost/demo01/2018/02/16/4-autosave-v1/', 0, 'revision', '', 0),
(32, 1, '2018-02-16 14:31:32', '2018-02-16 20:31:32', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<blockquote>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</blockquote>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Blockquote Post', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-02-16 14:31:32', '2018-02-16 20:31:32', '', 7, 'http://localhost/demo01/2018/02/16/7-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-02-16 14:31:54', '2018-02-16 20:31:54', 'Lorem ipsum dolor sit amet, <a href=\"#\">consectetur adipisicing</a> elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <a href=\"#\">Duis aute irure</a> dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia <a href=\"#\">deserunt</a> mollit anim id est laborum.', 'Links Post', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-02-16 14:31:54', '2018-02-16 20:31:54', '', 8, 'http://localhost/demo01/2018/02/16/8-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-02-16 14:32:07', '2018-02-16 20:32:07', '<h1>This Is An H1 Tag</h1>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h2>This Is An H2 Tag</h2>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h3>This Is An H3 Tag</h3>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h4>This Is An H4 Tag</h4>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<h5>This Is An H5 Tag</h5>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Headers Post', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-02-16 14:32:07', '2018-02-16 20:32:07', '', 9, 'http://localhost/demo01/2018/02/16/9-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-02-16 15:24:49', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-02-16 15:24:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/demo01/?p=35', 0, 'post', '', 0),
(36, 1, '2018-02-16 15:27:20', '2018-02-16 21:27:20', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure.', 'Reembolso de Bienvenida Especial', '', 'publish', 'closed', 'closed', '', 'reembolso-de-bienvenida-especial', '', '', '2018-02-17 18:53:40', '2018-02-18 00:53:40', '', 0, 'http://localhost/demo01/?p=36', 0, 'post', '', 0),
(37, 1, '2018-02-16 15:27:20', '2018-02-16 21:27:20', '', 'Política entrada', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-02-16 15:27:20', '2018-02-16 21:27:20', '', 36, 'http://localhost/demo01/2018/02/16/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-02-16 15:27:43', '2018-02-16 21:27:43', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Política entrada', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-02-16 15:27:43', '2018-02-16 21:27:43', '', 36, 'http://localhost/demo01/2018/02/16/36-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2018-02-16 15:28:08', '2018-02-16 21:28:08', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure.', 'Reembolsos Especiales Royal', '', 'publish', 'closed', 'closed', '', 'reembolsos-especiales-royal', '', '', '2018-02-17 18:53:05', '2018-02-18 00:53:05', '', 0, 'http://localhost/demo01/?p=39', 0, 'post', '', 0),
(40, 1, '2018-02-16 15:28:08', '2018-02-16 21:28:08', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Política renovada', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2018-02-16 15:28:08', '2018-02-16 21:28:08', '', 39, 'http://localhost/demo01/2018/02/16/39-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2018-02-16 15:29:06', '2018-02-16 21:29:06', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure.', 'Bekas', '', 'publish', 'closed', 'closed', '', 'bekas', '', '', '2018-02-17 18:50:36', '2018-02-18 00:50:36', '', 0, 'http://localhost/demo01/?p=41', 0, 'post', '', 0),
(42, 1, '2018-02-16 15:29:20', '2018-02-16 21:29:20', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure.', 'Junta Premium 20 Marzo', '', 'publish', 'closed', 'closed', '', 'junta-premium-20-marzo', '', '', '2018-02-17 18:50:03', '2018-02-18 00:50:03', '', 0, 'http://localhost/demo01/?p=42', 0, 'post', '', 0),
(43, 1, '2018-02-16 15:29:31', '2018-02-16 21:29:31', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure.', 'Viaje Salvaje 2018', '', 'publish', 'closed', 'closed', '', 'viaje-salvaje-2018', '', '', '2018-02-17 18:49:42', '2018-02-18 00:49:42', '', 0, 'http://localhost/demo01/?p=43', 0, 'post', '', 0),
(44, 1, '2018-02-16 15:29:06', '2018-02-16 21:29:06', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Bases y Concursos Uno', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-02-16 15:29:06', '2018-02-16 21:29:06', '', 41, 'http://localhost/demo01/2018/02/16/41-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-02-16 15:29:20', '2018-02-16 21:29:20', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Bases y Concursos Dos', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-02-16 15:29:20', '2018-02-16 21:29:20', '', 42, 'http://localhost/demo01/2018/02/16/42-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2018-02-16 15:29:31', '2018-02-16 21:29:31', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Bases y Concursos Tres', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2018-02-16 15:29:31', '2018-02-16 21:29:31', '', 43, 'http://localhost/demo01/2018/02/16/43-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2018-02-16 15:31:28', '2018-02-16 21:31:28', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n<blockquote>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</blockquote>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Historia', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-02-16 15:31:28', '2018-02-16 21:31:28', '', 13, 'http://localhost/demo01/2018/02/16/13-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2018-02-16 15:36:45', '2018-02-16 21:36:45', '{\n    \"edsbootstrap::header_image\": {\n        \"value\": \"http://localhost/demo01/wp-content/uploads/2018/02/cropped-1_poster-web.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-16 21:36:45\"\n    },\n    \"edsbootstrap::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/demo01/wp-content/uploads/2018/02/cropped-1_poster-web.jpg\",\n            \"thumbnail_url\": \"http://localhost/demo01/wp-content/uploads/2018/02/cropped-1_poster-web.jpg\",\n            \"timestamp\": 1518816994552,\n            \"attachment_id\": 63,\n            \"width\": 1000,\n            \"height\": 279\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-16 21:36:45\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '18c2811b-1096-406d-81bd-eb0be51125bc', '', '', '2018-02-16 15:36:45', '2018-02-16 21:36:45', '', 0, 'http://localhost/demo01/2018/02/16/18c2811b-1096-406d-81bd-eb0be51125bc/', 0, 'customize_changeset', '', 0),
(65, 1, '2018-02-16 15:37:16', '2018-02-16 21:37:16', '{\n    \"edsbootstrap::header_image\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-16 21:37:16\"\n    },\n    \"edsbootstrap::header_image_data\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-16 21:37:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0c8bfd73-7d9e-43f9-bcd7-4ec90ff5dfa7', '', '', '2018-02-16 15:37:16', '2018-02-16 21:37:16', '', 0, 'http://localhost/demo01/2018/02/16/0c8bfd73-7d9e-43f9-bcd7-4ec90ff5dfa7/', 0, 'customize_changeset', '', 0),
(67, 1, '2018-02-16 15:38:33', '2018-02-16 21:38:33', '{\n    \"edsbootstrap::custom_logo\": {\n        \"value\": 66,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-16 21:38:33\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b4751557-b1c1-44ef-96d6-3088431c98b4', '', '', '2018-02-16 15:38:33', '2018-02-16 21:38:33', '', 0, 'http://localhost/demo01/2018/02/16/b4751557-b1c1-44ef-96d6-3088431c98b4/', 0, 'customize_changeset', '', 0),
(68, 1, '2018-02-16 15:39:52', '2018-02-16 21:39:52', '{\n    \"edsbootstrap::nav_menu_locations[primary]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-16 21:39:52\"\n    },\n    \"nav_menu[-3939863150647935000]\": {\n        \"value\": {\n            \"name\": \"Top Menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-16 21:39:52\"\n    },\n    \"nav_menu_item[-8320729685548851000]\": {\n        \"value\": {\n            \"object_id\": 17,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"Grandchild Page\",\n            \"url\": \"http://localhost/demo01/image-page/child-page/grandchild-page/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Grandchild Page\",\n            \"nav_menu_term_id\": -3939863150647935000,\n            \"_invalid\": false,\n            \"type_label\": \"P\\u00e1gina\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-16 21:39:52\"\n    },\n    \"nav_menu_item[-7016327570443213000]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-16 21:39:52\"\n    },\n    \"nav_menu_item[-7270853842173549000]\": {\n        \"value\": {\n            \"object_id\": 16,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Child Page\",\n            \"url\": \"http://localhost/demo01/image-page/child-page/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Child Page\",\n            \"nav_menu_term_id\": -3939863150647935000,\n            \"_invalid\": false,\n            \"type_label\": \"P\\u00e1gina\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-16 21:39:52\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '92cd0e3b-16c3-4f84-9e8b-7d6a762eba76', '', '', '2018-02-16 15:39:52', '2018-02-16 21:39:52', '', 0, 'http://localhost/demo01/2018/02/16/92cd0e3b-16c3-4f84-9e8b-7d6a762eba76/', 0, 'customize_changeset', '', 0),
(72, 1, '2018-02-16 15:48:43', '2018-02-16 21:48:43', '{\n    \"edsbootstrap::edsbootstrap_show_page_sidebar\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-16 21:46:54\"\n    },\n    \"edsbootstrap::edsbootstrap_theme_options[social][fa-facebook]\": {\n        \"value\": \"https://www.facebook.com/KromasolbyMexico/\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-16 21:48:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '67e00935-4f6c-48ce-bfde-08bb24fe7728', '', '', '2018-02-16 15:48:43', '2018-02-16 21:48:43', '', 0, 'http://localhost/demo01/?p=72', 0, 'customize_changeset', '', 0),
(73, 1, '2018-02-16 15:49:22', '2018-02-16 21:49:22', '{\n    \"edsbootstrap::edsbootstrap_theme_options_socialfooter\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-16 21:49:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c7a5eab1-f56f-40ce-8935-d7b7cd904765', '', '', '2018-02-16 15:49:22', '2018-02-16 21:49:22', '', 0, 'http://localhost/demo01/2018/02/16/c7a5eab1-f56f-40ce-8935-d7b7cd904765/', 0, 'customize_changeset', '', 0),
(74, 1, '2018-02-16 15:51:39', '2018-02-16 21:51:39', '{\n    \"edsbootstrap::edsbootstrap_theme_options[social][fa-twitter]\": {\n        \"value\": \"https://www.twitter.com/jolaymx\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-16 21:51:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'eaaf4145-9385-4d90-881d-3529394c37e5', '', '', '2018-02-16 15:51:39', '2018-02-16 21:51:39', '', 0, 'http://localhost/demo01/2018/02/16/eaaf4145-9385-4d90-881d-3529394c37e5/', 0, 'customize_changeset', '', 0),
(75, 1, '2018-02-16 16:06:57', '2018-02-16 22:06:57', '{\n    \"edsbootstrap::edsbootstrap_theme_options[info][icon_pin_alt]\": {\n        \"value\": \"Tamaulipas 234, Col. Condesa, CDMX\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-16 22:06:57\"\n    },\n    \"edsbootstrap::edsbootstrap_theme_options[info][icon_mail_alt]\": {\n        \"value\": \"olay.jorge@gmail.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-16 22:06:57\"\n    },\n    \"edsbootstrap::edsbootstrap_theme_options[info][icon_phone]\": {\n        \"value\": \"55775838930\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-16 22:06:57\"\n    },\n    \"nav_menu[9]\": {\n        \"value\": false,\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-16 22:06:57\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b16ce3f3-e4dd-4259-86fa-a729dd828aca', '', '', '2018-02-16 16:06:57', '2018-02-16 22:06:57', '', 0, 'http://localhost/demo01/2018/02/16/b16ce3f3-e4dd-4259-86fa-a729dd828aca/', 0, 'customize_changeset', '', 0),
(77, 1, '2018-02-17 13:58:47', '2018-02-17 19:58:47', 'Solo Kromasol te da más producto,', 'Preventa Sonik Colosal', '', 'inherit', 'closed', 'closed', '', '7-autosave-v1', '', '', '2018-02-17 13:58:47', '2018-02-17 19:58:47', '', 7, 'http://localhost/demo01/2018/02/17/7-autosave-v1/', 0, 'revision', '', 0),
(78, 1, '2018-02-17 14:00:36', '2018-02-17 20:00:36', 'Solo Kromasol te da más producto, ahora a partir del 12 de febrero podrás adquirir en tu sucursal más cercana la nueva caja colosal de Sonik con 110 sobres con el <strong>mismo sabor y misma fórmula.</strong>', 'Preventa Sonik Colosal', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-02-17 14:00:36', '2018-02-17 20:00:36', '', 7, 'http://localhost/demo01/2018/02/17/7-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2018-02-17 14:19:53', '2018-02-17 20:19:53', 'Solo Kromasol te da más producto, ahora a partir del 12 de febrero podrás adquirir en tu sucursal más cercana la nueva caja colosal de Sonik con 110 sobres.', 'Preventa Sonik Colosal', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-02-17 14:19:53', '2018-02-17 20:19:53', '', 7, 'http://localhost/demo01/2018/02/17/7-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2018-02-17 14:20:30', '2018-02-17 20:20:30', 'Solo Kromasol te da más producto, ahora a partir del 12 de febrero podrás adquirir en tu sucursal más cercana la nueva caja colosal de Sonik con 110 sobres con el mismo sabor y misma fórmula.', 'Preventa Sonik Colosal', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-02-17 14:20:30', '2018-02-17 20:20:30', '', 7, 'http://localhost/demo01/2018/02/17/7-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `d1_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(83, 1, '2018-02-17 14:28:35', '2018-02-17 20:28:35', 'Solo Kromasol te da más producto, ahora a partir del 12 de febrero podrás adquirir en tu sucursal más cercana la nueva caja colosal de Sonik con 110 sobres.', 'Preventa Sonik Colosal', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-02-17 14:28:35', '2018-02-17 20:28:35', '', 7, 'http://localhost/demo01/2018/02/17/7-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2018-02-17 14:30:37', '2018-02-17 20:30:37', 'Solo Kromasol te da más producto, ahora a partir del 12 de febrero podrás adquirir en tu sucursal más cercana la nueva caja colosal de Sonik con 110 sobres con el mismo sabor y misma fórmula.', 'Preventa Sonik Colosal', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-02-17 14:30:37', '2018-02-17 20:30:37', '', 7, 'http://localhost/demo01/2018/02/17/7-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2018-02-17 14:56:18', '2018-02-17 20:56:18', '', '1_poster-web', '', 'inherit', 'open', 'closed', '', '1_poster-web', '', '', '2018-02-17 14:56:18', '2018-02-17 20:56:18', '', 0, 'http://localhost/demo01/wp-content/uploads/2018/02/1_poster-web.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2018-02-17 15:09:17', '2018-02-17 21:09:17', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;', 'Bases y Concursos Tres', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2018-02-17 15:09:17', '2018-02-17 21:09:17', '', 43, 'http://localhost/demo01/2018/02/17/43-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2018-02-17 15:11:46', '2018-02-17 21:11:46', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<!--more--> Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;', 'Bases y Concursos Tres', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2018-02-17 15:11:46', '2018-02-17 21:11:46', '', 43, 'http://localhost/demo01/2018/02/17/43-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2018-02-17 15:12:17', '2018-02-17 21:12:17', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit<!--more--> in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;', 'Bases y Concursos Tres', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2018-02-17 15:12:17', '2018-02-17 21:12:17', '', 43, 'http://localhost/demo01/2018/02/17/43-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2018-02-17 15:12:31', '2018-02-17 21:12:31', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;', 'Bases y Concursos Tres', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2018-02-17 15:12:31', '2018-02-17 21:12:31', '', 43, 'http://localhost/demo01/2018/02/17/43-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2018-02-17 15:12:43', '2018-02-17 21:12:43', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure<!--more--> dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;', 'Bases y Concursos Tres', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2018-02-17 15:12:43', '2018-02-17 21:12:43', '', 43, 'http://localhost/demo01/2018/02/17/43-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2018-02-17 15:14:05', '2018-02-17 21:14:05', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxo', 'Bases y Concursos Tres', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2018-02-17 15:14:05', '2018-02-17 21:14:05', '', 43, 'http://localhost/demo01/2018/02/17/43-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2018-02-17 15:14:59', '2018-02-17 21:14:59', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure.', 'Bases y Concursos Tres', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2018-02-17 15:14:59', '2018-02-17 21:14:59', '', 43, 'http://localhost/demo01/2018/02/17/43-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2018-02-17 15:30:01', '2018-02-17 21:30:01', 'Lorem ipsum dolor sit amet, <a href=\"#\">consectetur adipisicing</a> elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <a href=\"#\">Duis aute irure</a> dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia <a href=\"#\">deserunt</a> mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, <a href=\"#\">consectetur adipisicing</a> elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <a href=\"#\">Duis aute irure</a> dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia <a href=\"#\">deserunt</a> mollit anim id est laborum.', 'Links Post', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-02-17 15:30:01', '2018-02-17 21:30:01', '', 8, 'http://localhost/demo01/2018/02/17/8-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2018-02-17 15:44:21', '2018-02-17 21:44:21', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure.', '¡Hola mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-02-17 15:44:21', '2018-02-17 21:44:21', '', 1, 'http://localhost/demo01/2018/02/17/1-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2018-02-17 15:44:24', '2018-02-17 21:44:24', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure.', 'Multiple Paragraph Post', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-02-17 15:44:24', '2018-02-17 21:44:24', '', 4, 'http://localhost/demo01/2018/02/17/4-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2018-02-17 15:44:27', '2018-02-17 21:44:27', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure.', 'Image Post', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-02-17 15:44:27', '2018-02-17 21:44:27', '', 5, 'http://localhost/demo01/2018/02/17/5-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2018-02-17 15:44:30', '2018-02-17 21:44:30', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure.', 'UL and OL Post', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-02-17 15:44:30', '2018-02-17 21:44:30', '', 6, 'http://localhost/demo01/2018/02/17/6-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2018-02-17 15:44:33', '2018-02-17 21:44:33', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure.', 'Preventa Sonik Colosal', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-02-17 15:44:33', '2018-02-17 21:44:33', '', 7, 'http://localhost/demo01/2018/02/17/7-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2018-02-17 15:44:37', '2018-02-17 21:44:37', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure.', 'Links Post', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-02-17 15:44:37', '2018-02-17 21:44:37', '', 8, 'http://localhost/demo01/2018/02/17/8-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2018-02-17 15:55:37', '2018-02-17 21:55:37', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure.', 'Headers Post', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-02-17 15:55:37', '2018-02-17 21:55:37', '', 9, 'http://localhost/demo01/2018/02/17/9-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2018-02-17 15:55:40', '2018-02-17 21:55:40', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure.', 'Política entrada', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-02-17 15:55:40', '2018-02-17 21:55:40', '', 36, 'http://localhost/demo01/2018/02/17/36-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2018-02-17 15:57:40', '2018-02-17 21:57:40', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure.', 'Política renovada', '', 'inherit', 'closed', 'closed', '', '39-autosave-v1', '', '', '2018-02-17 15:57:40', '2018-02-17 21:57:40', '', 39, 'http://localhost/demo01/2018/02/17/39-autosave-v1/', 0, 'revision', '', 0),
(105, 1, '2018-02-17 15:57:42', '2018-02-17 21:57:42', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure.', 'Política renovada', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2018-02-17 15:57:42', '2018-02-17 21:57:42', '', 39, 'http://localhost/demo01/2018/02/17/39-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2018-02-17 15:57:45', '2018-02-17 21:57:45', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure.', 'Bases y Concursos Uno', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-02-17 15:57:45', '2018-02-17 21:57:45', '', 41, 'http://localhost/demo01/2018/02/17/41-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2018-02-17 15:57:49', '2018-02-17 21:57:49', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure.', 'Bases y Concursos Dos', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-02-17 15:57:49', '2018-02-17 21:57:49', '', 42, 'http://localhost/demo01/2018/02/17/42-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2018-02-17 16:36:34', '2018-02-17 22:36:34', '{\n    \"edsbootstrap::custom_logo\": {\n        \"value\": 108,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-17 22:36:34\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3df3f673-a205-4ba8-9d41-a84d2ad05586', '', '', '2018-02-17 16:36:34', '2018-02-17 22:36:34', '', 0, 'http://localhost/demo01/2018/02/17/3df3f673-a205-4ba8-9d41-a84d2ad05586/', 0, 'customize_changeset', '', 0),
(110, 1, '2018-02-17 16:53:41', '2018-02-17 22:53:41', '', '0_logotipo-kromasol', '', 'inherit', 'closed', 'closed', '', '0_logotipo-kromasol', '', '', '2018-02-17 16:53:41', '2018-02-17 22:53:41', '', 0, 'http://localhost/demo01/wp-content/uploads/2018/02/0_logotipo-kromasol.png', 0, 'attachment', 'image/png', 0),
(111, 1, '2018-02-17 16:53:59', '2018-02-17 22:53:59', '{\n    \"edsbootstrap::custom_logo\": {\n        \"value\": 110,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-17 22:53:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '87f5f9c6-4b51-46ea-a53c-efcc8b5d0725', '', '', '2018-02-17 16:53:59', '2018-02-17 22:53:59', '', 0, 'http://localhost/demo01/2018/02/17/87f5f9c6-4b51-46ea-a53c-efcc8b5d0725/', 0, 'customize_changeset', '', 0),
(112, 1, '2018-02-17 16:55:22', '2018-02-17 22:55:22', '{\n    \"edsbootstrap::edsbootstrap_theme_options[blog][sub_heading]\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-17 22:55:22\"\n    },\n    \"edsbootstrap::edsbootstrap_theme_options[info][icon_pin_alt]\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-17 22:55:22\"\n    },\n    \"edsbootstrap::edsbootstrap_theme_options[info][icon_mail_alt]\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-17 22:55:22\"\n    },\n    \"edsbootstrap::edsbootstrap_theme_options[info][icon_phone]\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-17 22:55:22\"\n    },\n    \"edsbootstrap::edsbootstrap_theme_options[social][fa-facebook]\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-17 22:55:22\"\n    },\n    \"edsbootstrap::edsbootstrap_theme_options[social][fa-twitter]\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-17 22:55:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4b162dc9-c09d-452f-8e4a-ae3f9a9370a0', '', '', '2018-02-17 16:55:22', '2018-02-17 22:55:22', '', 0, 'http://localhost/demo01/2018/02/17/4b162dc9-c09d-452f-8e4a-ae3f9a9370a0/', 0, 'customize_changeset', '', 0),
(113, 1, '2018-02-17 17:00:54', '2018-02-17 23:00:54', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p><img src=\"http://hivemindlabs.com/plugin-data/hive.jpg\" width=\"100%\" /><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'Sucursales', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-02-17 17:00:54', '2018-02-17 23:00:54', '', 11, 'http://localhost/demo01/2018/02/17/11-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2018-02-17 17:01:10', '2018-02-17 23:01:10', 'Lorem ipsum dolor sit amet, <a href=\"#\">consectetur adipisicing</a> elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <a href=\"#\">Duis aute irure</a> dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia <a href=\"#\">deserunt</a> mollit anim id est laborum.', 'Soluciones al Distribuidor', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-02-17 17:01:10', '2018-02-17 23:01:10', '', 14, 'http://localhost/demo01/2018/02/17/14-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2018-02-17 17:02:44', '2018-02-17 23:02:44', '', 'Soluciones', '', 'publish', 'closed', 'closed', '', 'soluciones', '', '', '2018-02-17 17:03:12', '2018-02-17 23:03:12', '', 0, 'http://localhost/demo01/?p=115', 2, 'nav_menu_item', '', 0),
(116, 1, '2018-02-17 17:02:44', '2018-02-17 23:02:44', ' ', '', '', 'publish', 'closed', 'closed', '', '116', '', '', '2018-02-17 17:03:12', '2018-02-17 23:03:12', '', 0, 'http://localhost/demo01/?p=116', 1, 'nav_menu_item', '', 0),
(117, 1, '2018-02-17 17:02:44', '2018-02-17 23:02:44', '', 'Oficina Personal', '', 'publish', 'closed', 'closed', '', 'oficina-personal', '', '', '2018-02-17 17:03:12', '2018-02-17 23:03:12', '', 0, 'http://localhost/demo01/?p=117', 3, 'nav_menu_item', '', 0),
(118, 1, '2018-02-17 17:03:12', '2018-02-17 23:03:12', '', 'País', '', 'publish', 'closed', 'closed', '', 'pais', '', '', '2018-02-17 17:03:12', '2018-02-17 23:03:12', '', 0, 'http://localhost/demo01/?p=118', 4, 'nav_menu_item', '', 0),
(126, 1, '2018-02-17 18:49:42', '2018-02-18 00:49:42', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure.', 'Viaje Salvaje 2018', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2018-02-17 18:49:42', '2018-02-18 00:49:42', '', 43, 'http://localhost/demo01/2018/02/17/43-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2018-02-17 18:50:03', '2018-02-18 00:50:03', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure.', 'Junta Premium 20 Marzo', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-02-17 18:50:03', '2018-02-18 00:50:03', '', 42, 'http://localhost/demo01/2018/02/17/42-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2018-02-17 18:50:36', '2018-02-18 00:50:36', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure.', 'Bekas', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-02-17 18:50:36', '2018-02-18 00:50:36', '', 41, 'http://localhost/demo01/2018/02/17/41-revision-v1/', 0, 'revision', '', 0),
(129, 1, '2018-02-17 18:51:17', '2018-02-18 00:51:17', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure.', 'Políticas de Pre-Registro Viaje de Playa', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2018-02-17 18:51:17', '2018-02-18 00:51:17', '', 39, 'http://localhost/demo01/2018/02/17/39-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2018-02-17 18:51:30', '2018-02-18 00:51:30', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure.', 'Políticas Pre-Registro Viaje de Playa', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2018-02-17 18:51:30', '2018-02-18 00:51:30', '', 39, 'http://localhost/demo01/2018/02/17/39-revision-v1/', 0, 'revision', '', 0),
(131, 1, '2018-02-17 18:53:05', '2018-02-18 00:53:05', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure.', 'Reembolsos Especiales Royal', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2018-02-17 18:53:05', '2018-02-18 00:53:05', '', 39, 'http://localhost/demo01/2018/02/17/39-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2018-02-17 18:53:40', '2018-02-18 00:53:40', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure.', 'Reembolso de Bienvenida Especial', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-02-17 18:53:40', '2018-02-18 00:53:40', '', 36, 'http://localhost/demo01/2018/02/17/36-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2018-02-17 18:54:38', '2018-02-18 00:54:38', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure.', 'Promo Herramientas', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-02-17 18:54:38', '2018-02-18 00:54:38', '', 9, 'http://localhost/demo01/2018/02/17/9-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2018-02-17 18:54:55', '2018-02-18 00:54:55', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure.', 'Paquete Makro y Playera', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-02-17 18:54:55', '2018-02-18 00:54:55', '', 8, 'http://localhost/demo01/2018/02/17/8-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2018-02-17 18:55:47', '2018-02-18 00:55:47', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure.', 'Depósito Reembolsos', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-02-17 18:55:47', '2018-02-18 00:55:47', '', 1, 'http://localhost/demo01/2018/02/17/1-revision-v1/', 0, 'revision', '', 0),
(136, 1, '2018-02-17 18:56:21', '2018-02-18 00:56:21', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure.', 'Nueva Ubicación Sucursal Acapulco', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-02-17 18:56:21', '2018-02-18 00:56:21', '', 6, 'http://localhost/demo01/2018/02/17/6-revision-v1/', 0, 'revision', '', 0),
(137, 1, '2018-02-17 18:56:36', '2018-02-18 00:56:36', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure.', 'Ruta Kromavan Febrero', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-02-17 18:56:36', '2018-02-18 00:56:36', '', 5, 'http://localhost/demo01/2018/02/17/5-revision-v1/', 0, 'revision', '', 0),
(138, 1, '2018-02-17 18:56:56', '2018-02-18 00:56:56', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure.', 'Importancia de tu RFC', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-02-17 18:56:56', '2018-02-18 00:56:56', '', 4, 'http://localhost/demo01/2018/02/17/4-revision-v1/', 0, 'revision', '', 0),
(139, 1, '2018-02-17 18:58:00', '2018-02-18 00:58:00', '', 'Lo Nuevo', '', 'publish', 'closed', 'closed', '', 'lo-nuevo', '', '', '2018-02-17 19:49:07', '2018-02-18 01:49:07', '', 0, 'http://localhost/demo01/?p=139', 3, 'nav_menu_item', '', 0),
(144, 1, '2018-02-17 19:00:22', '2018-02-18 01:00:22', '', 'Empresa', '', 'publish', 'closed', 'closed', '', 'empresa', '', '', '2018-02-17 19:49:07', '2018-02-18 01:49:07', '', 0, 'http://localhost/demo01/?p=144', 1, 'nav_menu_item', '', 0),
(145, 1, '2018-02-17 19:00:22', '2018-02-18 01:00:22', '', 'Grupos de Liderazgo', '', 'publish', 'closed', 'closed', '', 'grupos-de-liderazgo', '', '', '2018-02-17 19:49:07', '2018-02-18 01:49:07', '', 0, 'http://localhost/demo01/?p=145', 4, 'nav_menu_item', '', 0),
(146, 1, '2018-02-17 19:00:23', '2018-02-18 01:00:23', '', '¿Cómo Gano Dinero?', '', 'publish', 'closed', 'closed', '', 'como-gano-dinero', '', '', '2018-02-17 19:49:07', '2018-02-18 01:49:07', '', 0, 'http://localhost/demo01/?p=146', 5, 'nav_menu_item', '', 0),
(147, 1, '2018-02-17 19:00:23', '2018-02-18 01:00:23', '', 'Productos', '', 'publish', 'closed', 'closed', '', 'productos', '', '', '2018-02-17 19:49:07', '2018-02-18 01:49:07', '', 0, 'http://localhost/demo01/?p=147', 6, 'nav_menu_item', '', 0),
(148, 1, '2018-02-17 19:00:23', '2018-02-18 01:00:23', '', 'Herramientas', '', 'publish', 'closed', 'closed', '', 'herramientas', '', '', '2018-02-17 19:49:07', '2018-02-18 01:49:07', '', 0, 'http://localhost/demo01/?p=148', 7, 'nav_menu_item', '', 0),
(149, 1, '2018-02-17 19:00:23', '2018-02-18 01:00:23', '', 'Capacitación', '', 'publish', 'closed', 'closed', '', 'capacitacion', '', '', '2018-02-17 19:49:07', '2018-02-18 01:49:07', '', 0, 'http://localhost/demo01/?p=149', 8, 'nav_menu_item', '', 0),
(157, 1, '2018-02-17 19:49:07', '2018-02-18 01:49:07', ' ', '', '', 'publish', 'closed', 'closed', '', '157', '', '', '2018-02-17 19:49:07', '2018-02-18 01:49:07', '', 0, 'http://localhost/demo01/?p=157', 2, 'nav_menu_item', '', 0),
(173, 1, '2018-02-18 12:14:40', '2018-02-18 18:14:40', '', '2_icono-oficina-personal', '', 'inherit', 'closed', 'closed', '', '2_icono-oficina-personal', '', '', '2018-02-18 12:14:40', '2018-02-18 18:14:40', '', 0, 'http://localhost/demo01/wp-content/uploads/2018/02/2_icono-oficina-personal.png', 0, 'attachment', 'image/png', 0),
(174, 1, '2018-02-18 12:14:40', '2018-02-18 18:14:40', '', '2_icono-paises', '', 'inherit', 'closed', 'closed', '', '2_icono-paises', '', '', '2018-02-18 12:14:40', '2018-02-18 18:14:40', '', 0, 'http://localhost/demo01/wp-content/uploads/2018/02/2_icono-paises.png', 0, 'attachment', 'image/png', 0),
(175, 1, '2018-02-18 12:14:41', '2018-02-18 18:14:41', '', '2_icono-soluciones', '', 'inherit', 'closed', 'closed', '', '2_icono-soluciones', '', '', '2018-02-18 12:14:41', '2018-02-18 18:14:41', '', 0, 'http://localhost/demo01/wp-content/uploads/2018/02/2_icono-soluciones.png', 0, 'attachment', 'image/png', 0),
(176, 1, '2018-02-18 12:14:41', '2018-02-18 18:14:41', '', '2_icono-sucursales', '', 'inherit', 'closed', 'closed', '', '2_icono-sucursales', '', '', '2018-02-18 12:14:41', '2018-02-18 18:14:41', '', 0, 'http://localhost/demo01/wp-content/uploads/2018/02/2_icono-sucursales.png', 0, 'attachment', 'image/png', 0),
(177, 1, '2018-02-18 16:08:32', '2018-02-18 22:08:32', '', '3_icono-calendario', '', 'inherit', 'closed', 'closed', '', '3_icono-calendario', '', '', '2018-02-18 16:08:32', '2018-02-18 22:08:32', '', 0, 'http://localhost/demo01/wp-content/uploads/2018/02/3_icono-calendario.png', 0, 'attachment', 'image/png', 0),
(178, 1, '2018-02-18 16:08:33', '2018-02-18 22:08:33', '', '3_icono-capacitacion', '', 'inherit', 'closed', 'closed', '', '3_icono-capacitacion', '', '', '2018-02-18 16:08:33', '2018-02-18 22:08:33', '', 0, 'http://localhost/demo01/wp-content/uploads/2018/02/3_icono-capacitacion.png', 0, 'attachment', 'image/png', 0),
(179, 1, '2018-02-18 16:08:33', '2018-02-18 22:08:33', '', '3_icono-como-gano-dinero', '', 'inherit', 'closed', 'closed', '', '3_icono-como-gano-dinero', '', '', '2018-02-18 16:08:33', '2018-02-18 22:08:33', '', 0, 'http://localhost/demo01/wp-content/uploads/2018/02/3_icono-como-gano-dinero.png', 0, 'attachment', 'image/png', 0),
(180, 1, '2018-02-18 16:08:34', '2018-02-18 22:08:34', '', '3_icono-grupos-liderazgo', '', 'inherit', 'closed', 'closed', '', '3_icono-grupos-liderazgo', '', '', '2018-02-18 16:08:34', '2018-02-18 22:08:34', '', 0, 'http://localhost/demo01/wp-content/uploads/2018/02/3_icono-grupos-liderazgo.png', 0, 'attachment', 'image/png', 0),
(181, 1, '2018-02-18 16:08:34', '2018-02-18 22:08:34', '', '3_icono-herramientas', '', 'inherit', 'closed', 'closed', '', '3_icono-herramientas', '', '', '2018-02-18 16:08:34', '2018-02-18 22:08:34', '', 0, 'http://localhost/demo01/wp-content/uploads/2018/02/3_icono-herramientas.png', 0, 'attachment', 'image/png', 0),
(182, 1, '2018-02-18 16:08:35', '2018-02-18 22:08:35', '', '3_icono-lo-nuevo', '', 'inherit', 'closed', 'closed', '', '3_icono-lo-nuevo', '', '', '2018-02-18 16:08:35', '2018-02-18 22:08:35', '', 0, 'http://localhost/demo01/wp-content/uploads/2018/02/3_icono-lo-nuevo.png', 0, 'attachment', 'image/png', 0),
(183, 1, '2018-02-18 16:08:36', '2018-02-18 22:08:36', '', '3_icono-productos', '', 'inherit', 'closed', 'closed', '', '3_icono-productos', '', '', '2018-02-18 16:08:36', '2018-02-18 22:08:36', '', 0, 'http://localhost/demo01/wp-content/uploads/2018/02/3_icono-productos.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d1_termmeta`
--

CREATE TABLE `d1_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d1_terms`
--

CREATE TABLE `d1_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `d1_terms`
--

INSERT INTO `d1_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Default', 'default', 0),
(2, 'post-format-gallery', 'post-format-gallery', 0),
(3, 'Avisos', 'avisos', 0),
(4, 'Promociones', 'promociones', 0),
(5, 'Políticas', 'politicas', 0),
(6, 'Noticias', 'noticias', 0),
(7, 'Bases y concursos', 'bases-y-concursos', 0),
(8, 'Main Menu', 'main-menu', 0),
(10, 'Top Menu', 'top-menu', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d1_term_relationships`
--

CREATE TABLE `d1_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `d1_term_relationships`
--

INSERT INTO `d1_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 2, 0),
(1, 5, 0),
(4, 2, 0),
(4, 3, 0),
(5, 2, 0),
(5, 3, 0),
(6, 2, 0),
(6, 3, 0),
(7, 2, 0),
(7, 4, 0),
(8, 2, 0),
(8, 4, 0),
(9, 2, 0),
(9, 4, 0),
(36, 5, 0),
(39, 5, 0),
(41, 7, 0),
(42, 7, 0),
(43, 7, 0),
(115, 10, 0),
(116, 10, 0),
(117, 10, 0),
(118, 10, 0),
(139, 8, 0),
(144, 8, 0),
(145, 8, 0),
(146, 8, 0),
(147, 8, 0),
(148, 8, 0),
(149, 8, 0),
(157, 8, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d1_term_taxonomy`
--

CREATE TABLE `d1_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `d1_term_taxonomy`
--

INSERT INTO `d1_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'post_format', '', 0, 7),
(3, 3, 'category', '', 0, 3),
(4, 4, 'category', '', 0, 3),
(5, 5, 'category', '', 0, 3),
(6, 6, 'category', '', 0, 0),
(7, 7, 'category', '', 0, 3),
(8, 8, 'nav_menu', '', 0, 8),
(10, 10, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d1_usermeta`
--

CREATE TABLE `d1_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `d1_usermeta`
--

INSERT INTO `d1_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Staff'),
(2, 1, 'first_name', 'Staff'),
(3, 1, 'last_name', 'Kromasol'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'd1_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(12, 1, 'd1_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(16, 1, 'd1_user-settings', 'libraryContent=browse&imgsize=thumbnail&editor=tinymce&posts_list_mode=list&editor_expand=on'),
(17, 1, 'd1_user-settings-time', '1518905773'),
(18, 1, 'd1_dashboard_quick_press_last_post_id', '3'),
(19, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(20, 1, 'session_tokens', 'a:11:{s:64:\"2c3797715b4482ea4893d95834de8a278f9110e001ea31929c682f3bb62d588c\";a:4:{s:10:\"expiration\";i:1518983442;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.167 Safari/537.36\";s:5:\"login\";i:1518810642;}s:64:\"124ad1482f290d06846937308c2ea8d9609d27dbe3d143f14ffa8db70eafe1f1\";a:4:{s:10:\"expiration\";i:1518985257;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.167 Safari/537.36\";s:5:\"login\";i:1518812457;}s:64:\"c58ecbcfd0d55f76a8ec09f0e2285c02e14917b8f5a4a150cfc2ecb8680018e5\";a:4:{s:10:\"expiration\";i:1519010652;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.4.7 (KHTML, like Gecko) Version/11.0.2 Safari/604.4.7\";s:5:\"login\";i:1518837852;}s:64:\"f091d59fce60503232ac743fba90097e714ec6b840c183171dbb2f59a1ffbd9f\";a:4:{s:10:\"expiration\";i:1519070237;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.4.7 (KHTML, like Gecko) Version/11.0.2 Safari/604.4.7\";s:5:\"login\";i:1518897437;}s:64:\"7d0a315629ea9c29fbbc9ad97573ad825c673a85906469fbcc7b47a274df77b5\";a:4:{s:10:\"expiration\";i:1519071180;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.167 Safari/537.36\";s:5:\"login\";i:1518898380;}s:64:\"46f3063860e6f74e1d36ec15bd53532a900b9bc417557e8c362b59819f03d747\";a:4:{s:10:\"expiration\";i:1519073511;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.167 Safari/537.36\";s:5:\"login\";i:1518900711;}s:64:\"e358fe8dc748b1fe4c43ff79d2fd075117c531dc01624336f92aba34b40bde36\";a:4:{s:10:\"expiration\";i:1519073523;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.167 Safari/537.36\";s:5:\"login\";i:1518900723;}s:64:\"39286014753387ebab868ad08446ef00eaa67c4a4b90237c5f48a40d5a0a3317\";a:4:{s:10:\"expiration\";i:1519076558;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.167 Safari/537.36\";s:5:\"login\";i:1518903758;}s:64:\"c66d4ee0d07da260307d8426eb6727b10495c9beed9e61a93c413b0cd067ce7c\";a:4:{s:10:\"expiration\";i:1519079120;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.167 Safari/537.36\";s:5:\"login\";i:1518906320;}s:64:\"bba191fb98e5ce3033345a61d4f0bb1068d1a10ce9e60b51e64cae5e18f24df7\";a:4:{s:10:\"expiration\";i:1519080320;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.4.7 (KHTML, like Gecko) Version/11.0.2 Safari/604.4.7\";s:5:\"login\";i:1518907520;}s:64:\"637ddcdcd7b3b3382dd8f5a805d767d43a023b5a67b64271abfbf392625ba0ad\";a:4:{s:10:\"expiration\";i:1519149275;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/604.4.7 (KHTML, like Gecko) Version/11.0.2 Safari/604.4.7\";s:5:\"login\";i:1518976475;}}'),
(21, 1, 'closedpostboxes_post', 'a:1:{i:0;s:16:\"tagsdiv-post_tag\";}'),
(22, 1, 'metaboxhidden_post', 'a:5:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:10:\"postcustom\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(25, 1, 'nav_menu_recently_edited', '8'),
(26, 1, 'manageedit-pagecolumnshidden', 'a:1:{i:0;s:8:\"comments\";}'),
(27, 1, 'edit_page_per_page', '20'),
(28, 1, 'manageedit-postcolumnshidden', 'a:1:{i:0;s:8:\"comments\";}'),
(29, 1, 'edit_post_per_page', '20'),
(30, 1, 'syntax_highlighting', 'true');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d1_users`
--

CREATE TABLE `d1_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `d1_users`
--

INSERT INTO `d1_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'staff', '$P$B.B/MqzMcDa5ROO5M.6ynHm0PPwpZc0', 'staff', 'jorge.olay@kromasol.com', '', '2018-02-16 19:07:48', '', 0, 'Staff');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `d1_commentmeta`
--
ALTER TABLE `d1_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `d1_comments`
--
ALTER TABLE `d1_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `d1_cwa`
--
ALTER TABLE `d1_cwa`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `d1_links`
--
ALTER TABLE `d1_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `d1_options`
--
ALTER TABLE `d1_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indices de la tabla `d1_postmeta`
--
ALTER TABLE `d1_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `d1_posts`
--
ALTER TABLE `d1_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `d1_termmeta`
--
ALTER TABLE `d1_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `d1_terms`
--
ALTER TABLE `d1_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `d1_term_relationships`
--
ALTER TABLE `d1_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `d1_term_taxonomy`
--
ALTER TABLE `d1_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `d1_usermeta`
--
ALTER TABLE `d1_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `d1_users`
--
ALTER TABLE `d1_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `d1_commentmeta`
--
ALTER TABLE `d1_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d1_comments`
--
ALTER TABLE `d1_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `d1_cwa`
--
ALTER TABLE `d1_cwa`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `d1_links`
--
ALTER TABLE `d1_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d1_options`
--
ALTER TABLE `d1_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=400;

--
-- AUTO_INCREMENT de la tabla `d1_postmeta`
--
ALTER TABLE `d1_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=700;

--
-- AUTO_INCREMENT de la tabla `d1_posts`
--
ALTER TABLE `d1_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT de la tabla `d1_termmeta`
--
ALTER TABLE `d1_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d1_terms`
--
ALTER TABLE `d1_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `d1_term_taxonomy`
--
ALTER TABLE `d1_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `d1_usermeta`
--
ALTER TABLE `d1_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `d1_users`
--
ALTER TABLE `d1_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
