-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  lun. 12 fév. 2018 à 11:34
-- Version du serveur :  10.1.28-MariaDB
-- Version de PHP :  5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `rapport_stage`
--

-- --------------------------------------------------------

--
-- Structure de la table `stages`
--

CREATE TABLE `stages` (
  `id_stage` int(11) NOT NULL,
  `id_utilisateur` int(11) DEFAULT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `promotion` int(11) NOT NULL,
  `entreprise` varchar(255) NOT NULL,
  `ville` varchar(255) NOT NULL,
  `secteur` varchar(255) NOT NULL,
  `sujet` varchar(255) NOT NULL,
  `admission` tinyint(1) DEFAULT NULL,
  `rapport_stage` varchar(255) NOT NULL,
  `note_synthese` varchar(255) NOT NULL,
  `resume_stage` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `technologies`
--

CREATE TABLE `technologies` (
  `id_stage` int(11) NOT NULL,
  `technologie` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id_utilisateur` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `validate` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE `wp_comments` (
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

--
-- Déchargement des données de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-02-06 23:35:35', '2018-02-06 22:35:35', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE `wp_links` (
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
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'Gestion des Rapports de Stage', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'helene.clery@etu.univ-tours.fr', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";i:1;s:25:\"insert-php/insert_php.php\";i:2;s:27:\"php-code-widget/execphp.php\";i:3;s:25:\"wp-members/wp-members.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'argent', 'yes'),
(41, 'stylesheet', 'argent', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '2', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'fr_FR', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:4:{i:1518431736;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1518474949;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1518475104;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1517956682;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(120, '_site_transient_timeout_browser_b876c8fd7fc402e60530b64622320f7a', '1518561352', 'no'),
(121, '_site_transient_browser_b876c8fd7fc402e60530b64622320f7a', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"63.0.3239.132\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(122, 'can_compress_scripts', '1', 'no'),
(140, 'current_theme', 'Argent', 'yes'),
(141, 'theme_mods_argent', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:19;}', 'yes'),
(142, 'theme_switched', '', 'yes'),
(149, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:1:{i:0;i:2;}}', 'yes'),
(158, 'recently_activated', 'a:0:{}', 'yes'),
(183, 'category_children', 'a:0:{}', 'yes'),
(210, 'wpmembers_settings', 'a:19:{s:7:\"version\";s:7:\"3.1.9.3\";s:5:\"block\";a:2:{s:4:\"post\";i:1;s:4:\"page\";i:0;}s:12:\"show_excerpt\";a:2:{s:4:\"post\";i:0;s:4:\"page\";i:0;}s:8:\"show_reg\";a:2:{s:4:\"post\";i:1;s:4:\"page\";i:1;}s:10:\"show_login\";a:2:{s:4:\"post\";i:1;s:4:\"page\";i:1;}s:6:\"autoex\";a:2:{s:4:\"post\";a:2:{s:7:\"enabled\";i:0;s:6:\"length\";s:0:\"\";}s:4:\"page\";a:2:{s:7:\"enabled\";i:0;s:6:\"length\";s:0:\"\";}}s:6:\"notify\";i:0;s:7:\"mod_reg\";i:0;s:7:\"captcha\";i:0;s:7:\"use_exp\";i:0;s:9:\"use_trial\";i:0;s:8:\"warnings\";i:0;s:10:\"user_pages\";a:3:{s:7:\"profile\";s:0:\"\";s:8:\"register\";s:0:\"\";s:5:\"login\";s:0:\"\";}s:6:\"cssurl\";s:0:\"\";s:5:\"style\";s:81:\"http://localhost/wordpress/wp-content/plugins/wp-members/css/generic-no-float.css\";s:6:\"attrib\";i:0;s:10:\"post_types\";a:0:{}s:9:\"form_tags\";a:1:{s:7:\"default\";s:20:\"Registration Default\";}s:5:\"email\";a:2:{s:4:\"from\";s:0:\"\";s:9:\"from_name\";s:0:\"\";}}', 'yes'),
(211, 'wpmembers_fields', 'a:18:{i:0;a:7:{i:0;i:1;i:1;s:10:\"First Name\";i:2;s:10:\"first_name\";i:3;s:4:\"text\";i:4;s:1:\"y\";i:5;s:1:\"y\";i:6;s:1:\"y\";}i:1;a:7:{i:0;i:2;i:1;s:9:\"Last Name\";i:2;s:9:\"last_name\";i:3;s:4:\"text\";i:4;s:1:\"y\";i:5;s:1:\"y\";i:6;s:1:\"y\";}i:2;a:10:{i:0;s:2:\"17\";i:1;s:14:\"Id_utilisateur\";i:2;s:14:\"Id_utilisateur\";i:3;s:4:\"text\";i:4;s:1:\"y\";i:5;s:1:\"y\";i:6;s:1:\"n\";s:11:\"placeholder\";s:0:\"\";s:7:\"pattern\";s:0:\"\";s:5:\"title\";s:0:\"\";}i:3;a:10:{i:0;s:2:\"18\";i:1;s:9:\"promotion\";i:2;s:9:\"promotion\";i:3;s:4:\"text\";i:4;s:1:\"y\";i:5;s:1:\"y\";i:6;s:1:\"n\";s:11:\"placeholder\";s:30:\"année d\'obtention du diplôme\";s:7:\"pattern\";s:0:\"\";s:5:\"title\";s:0:\"\";}i:4;a:7:{i:0;i:3;i:1;s:9:\"Address 1\";i:2;s:5:\"addr1\";i:3;s:4:\"text\";i:4;s:1:\"y\";i:5;s:1:\"y\";i:6;s:1:\"n\";}i:5;a:7:{i:0;i:4;i:1;s:9:\"Address 2\";i:2;s:5:\"addr2\";i:3;s:4:\"text\";i:4;s:1:\"y\";i:5;s:1:\"n\";i:6;s:1:\"n\";}i:6;a:7:{i:0;i:5;i:1;s:4:\"City\";i:2;s:4:\"city\";i:3;s:4:\"text\";i:4;s:1:\"y\";i:5;s:1:\"y\";i:6;s:1:\"n\";}i:7;a:7:{i:0;i:6;i:1;s:5:\"State\";i:2;s:8:\"thestate\";i:3;s:4:\"text\";i:4;s:1:\"y\";i:5;s:1:\"y\";i:6;s:1:\"n\";}i:8;a:7:{i:0;i:7;i:1;s:3:\"Zip\";i:2;s:3:\"zip\";i:3;s:4:\"text\";i:4;s:1:\"y\";i:5;s:1:\"y\";i:6;s:1:\"n\";}i:9;a:7:{i:0;i:8;i:1;s:7:\"Country\";i:2;s:7:\"country\";i:3;s:4:\"text\";i:4;s:1:\"y\";i:5;s:1:\"y\";i:6;s:1:\"n\";}i:10;a:7:{i:0;i:9;i:1;s:9:\"Day Phone\";i:2;s:6:\"phone1\";i:3;s:4:\"text\";i:4;s:1:\"y\";i:5;s:1:\"y\";i:6;s:1:\"n\";}i:11;a:7:{i:0;i:10;i:1;s:5:\"Email\";i:2;s:10:\"user_email\";i:3;s:5:\"email\";i:4;s:1:\"y\";i:5;s:1:\"y\";i:6;s:1:\"y\";}i:12;a:7:{i:0;i:11;i:1;s:13:\"Confirm Email\";i:2;s:13:\"confirm_email\";i:3;s:5:\"email\";i:4;s:1:\"n\";i:5;s:1:\"n\";i:6;s:1:\"n\";}i:13;a:7:{i:0;i:12;i:1;s:7:\"Website\";i:2;s:8:\"user_url\";i:3;s:3:\"url\";i:4;s:1:\"n\";i:5;s:1:\"n\";i:6;s:1:\"y\";}i:14;a:7:{i:0;i:13;i:1;s:17:\"Biographical Info\";i:2;s:11:\"description\";i:3;s:8:\"textarea\";i:4;s:1:\"n\";i:5;s:1:\"n\";i:6;s:1:\"y\";}i:15;a:7:{i:0;i:14;i:1;s:8:\"Password\";i:2;s:8:\"password\";i:3;s:8:\"password\";i:4;s:1:\"n\";i:5;s:1:\"n\";i:6;s:1:\"n\";}i:16;a:7:{i:0;i:15;i:1;s:16:\"Confirm Password\";i:2;s:16:\"confirm_password\";i:3;s:8:\"password\";i:4;s:1:\"n\";i:5;s:1:\"n\";i:6;s:1:\"n\";}i:17;a:9:{i:0;i:16;i:1;s:3:\"TOS\";i:2;s:3:\"tos\";i:3;s:8:\"checkbox\";i:4;s:1:\"n\";i:5;s:1:\"n\";i:6;s:1:\"n\";i:7;s:5:\"agree\";i:8;s:1:\"n\";}}', 'yes'),
(212, 'wpmembers_tos', 'Put your TOS (Terms of Service) text here.  You can use HTML markup.', 'yes'),
(213, 'wpmembers_dialogs', 'a:9:{s:14:\"restricted_msg\";s:119:\"This content is restricted to site members.  If you are an existing user, please log in.  New users may register below.\";s:4:\"user\";s:50:\"Sorry, that username is taken, please try another.\";s:5:\"email\";s:74:\"Sorry, that email address already has an account.<br />Please try another.\";s:7:\"success\";s:124:\"Congratulations! Your registration was successful.<br /><br />You may now log in using the password that was emailed to you.\";s:11:\"editsuccess\";s:29:\"Your information was updated!\";s:11:\"pwdchangerr\";s:53:\"Passwords did not match.<br /><br />Please try again.\";s:16:\"pwdchangesuccess\";s:30:\"Password successfully changed!\";s:11:\"pwdreseterr\";s:65:\"Either the username or email address do not exist in our records.\";s:15:\"pwdresetsuccess\";s:135:\"Password successfully reset!<br /><br />An email containing a new password has been sent to the email address on file for your account.\";}', 'yes'),
(214, 'wpmembers_email_newreg', 'a:2:{s:4:\"subj\";s:37:\"Your registration info for [blogname]\";s:4:\"body\";s:269:\"Thank you for registering for [blogname]\r\n\r\nYour registration information is below.\r\nYou may wish to retain a copy for your records.\r\n\r\nusername: [username]\r\npassword: [password]\r\n\r\nYou may log in here:\r\n[reglink]\r\n\r\nYou may change your password here:\r\n[user-profile]\r\n\";}', 'no'),
(215, 'wpmembers_email_newmod', 'a:2:{s:4:\"subj\";s:40:\"Thank you for registering for [blogname]\";s:4:\"body\";s:173:\"Thank you for registering for [blogname]. \r\nYour registration has been received and is pending approval.\r\nYou will receive login instructions upon approval of your account\r\n\";}', 'no'),
(216, 'wpmembers_email_appmod', 'a:2:{s:4:\"subj\";s:50:\"Your registration for [blogname] has been approved\";s:4:\"body\";s:300:\"Your registration for [blogname] has been approved.\r\n\r\nYour registration information is below.\r\nYou may wish to retain a copy for your records.\r\n\r\nusername: [username]\r\npassword: [password]\r\n\r\nYou may log in and change your password here:\r\n[user-profile]\r\n\r\nYou originally registered at:\r\n[reglink]\r\n\";}', 'no'),
(217, 'wpmembers_email_repass', 'a:2:{s:4:\"subj\";s:34:\"Your password reset for [blogname]\";s:4:\"body\";s:157:\"Your password for [blogname] has been reset\r\n\r\nYour new password is included below. You may wish to retain a copy for your records.\r\n\r\npassword: [password]\r\n\";}', 'no'),
(218, 'wpmembers_email_notify', 'a:2:{s:4:\"subj\";s:36:\"New user registration for [blogname]\";s:4:\"body\";s:194:\"The following user registered for [blogname]:\r\n\r\nusername: [username]\r\nemail: [email]\r\n\r\n[fields]\r\nThis user registered here:\r\n[reglink]\r\n\r\nuser IP: [user-ip]\r\n\r\nactivate user: [activate-user]\r\n\";}', 'no'),
(219, 'wpmembers_email_footer', '----------------------------------\r\nThis is an automated message from [blogname]\r\nPlease do not reply to this address', 'no'),
(220, 'wpmembers_email_getuser', 'a:2:{s:4:\"subj\";s:23:\"Username for [blogname]\";s:4:\"body\";s:64:\"Your username for [blogname] is below.\r\n\r\nusername: [username]\r\n\";}', 'no'),
(221, 'wpmembers_style', 'http://localhost/wordpress/wp-content/plugins/wp-members/css/generic-no-float.css', 'yes'),
(222, 'widget_widget_wpmemwidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(242, 'wpcf7', 'a:2:{s:7:\"version\";s:3:\"5.0\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";d:1518100587;s:7:\"version\";s:3:\"5.0\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(256, 'widget_execphp', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(263, '_transient_is_multi_author', '0', 'yes'),
(266, '_site_transient_timeout_theme_roots', '1518430233', 'no'),
(267, '_site_transient_theme_roots', 'a:4:{s:6:\"argent\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(268, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.4.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.4.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.4\";s:7:\"version\";s:5:\"4.9.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1518428439;s:15:\"version_checked\";s:5:\"4.9.4\";s:12:\"translations\";a:0:{}}', 'no'),
(269, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1518428441;s:7:\"checked\";a:4:{s:6:\"argent\";s:5:\"1.1.4\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(270, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1518428447;s:7:\"checked\";a:6:{s:19:\"akismet/akismet.php\";s:5:\"4.0.2\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:3:\"5.0\";s:9:\"hello.php\";s:3:\"1.6\";s:25:\"insert-php/insert_php.php\";s:3:\"1.3\";s:27:\"php-code-widget/execphp.php\";s:3:\"2.3\";s:25:\"wp-members/wp-members.php\";s:7:\"3.1.9.3\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"contact-form-7\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:3:\"5.0\";s:7:\"updated\";s:19:\"2018-02-05 17:35:12\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/plugin/contact-form-7/5.0/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:6:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.2.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:3:\"5.0\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-7.5.0.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:7:\"default\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";s:7:\"default\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:7:\"default\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";s:7:\"default\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"insert-php/insert_php.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/insert-php\";s:4:\"slug\";s:10:\"insert-php\";s:6:\"plugin\";s:25:\"insert-php/insert_php.php\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/insert-php/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/plugin/insert-php.zip\";s:5:\"icons\";a:0:{}s:7:\"banners\";a:2:{s:2:\"1x\";s:64:\"https://ps.w.org/insert-php/assets/banner-772x250.png?rev=624116\";s:7:\"default\";s:64:\"https://ps.w.org/insert-php/assets/banner-772x250.png?rev=624116\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"php-code-widget/execphp.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/php-code-widget\";s:4:\"slug\";s:15:\"php-code-widget\";s:6:\"plugin\";s:27:\"php-code-widget/execphp.php\";s:11:\"new_version\";s:3:\"2.3\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/php-code-widget/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/php-code-widget.2.3.zip\";s:5:\"icons\";a:2:{s:3:\"svg\";s:59:\"https://ps.w.org/php-code-widget/assets/icon.svg?rev=992095\";s:7:\"default\";s:59:\"https://ps.w.org/php-code-widget/assets/icon.svg?rev=992095\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:25:\"wp-members/wp-members.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/wp-members\";s:4:\"slug\";s:10:\"wp-members\";s:6:\"plugin\";s:25:\"wp-members/wp-members.php\";s:11:\"new_version\";s:7:\"3.1.9.3\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/wp-members/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/plugin/wp-members.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/wp-members/assets/icon-128x128.png?rev=1226414\";s:2:\"2x\";s:63:\"https://ps.w.org/wp-members/assets/icon-256x256.png?rev=1226414\";s:7:\"default\";s:63:\"https://ps.w.org/wp-members/assets/icon-256x256.png?rev=1226414\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/wp-members/assets/banner-772x250.png?rev=1195657\";s:7:\"default\";s:65:\"https://ps.w.org/wp-members/assets/banner-772x250.png?rev=1195657\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 1, '_wp_trash_meta_status', 'publish'),
(3, 1, '_wp_trash_meta_time', '1517956636'),
(4, 1, '_wp_desired_post_slug', 'bonjour-tout-le-monde'),
(5, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(6, 2, '_edit_lock', '1518088610:1'),
(7, 2, '_edit_last', '1'),
(8, 6, '_edit_last', '1'),
(9, 6, '_edit_lock', '1517956595:1'),
(10, 6, '_wp_page_template', 'default'),
(11, 8, '_edit_last', '1'),
(12, 8, '_edit_lock', '1518088392:1'),
(13, 8, '_wp_page_template', 'default'),
(14, 11, '_menu_item_type', 'post_type'),
(15, 11, '_menu_item_menu_item_parent', '0'),
(16, 11, '_menu_item_object_id', '2'),
(17, 11, '_menu_item_object', 'page'),
(18, 11, '_menu_item_target', ''),
(19, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(20, 11, '_menu_item_xfn', ''),
(21, 11, '_menu_item_url', ''),
(22, 12, '_menu_item_type', 'post_type'),
(23, 12, '_menu_item_menu_item_parent', '0'),
(24, 12, '_menu_item_object_id', '8'),
(25, 12, '_menu_item_object', 'page'),
(26, 12, '_menu_item_target', ''),
(27, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(28, 12, '_menu_item_xfn', ''),
(29, 12, '_menu_item_url', ''),
(30, 13, '_menu_item_type', 'post_type'),
(31, 13, '_menu_item_menu_item_parent', '0'),
(32, 13, '_menu_item_object_id', '6'),
(33, 13, '_menu_item_object', 'page'),
(34, 13, '_menu_item_target', ''),
(35, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(36, 13, '_menu_item_xfn', ''),
(37, 13, '_menu_item_url', ''),
(38, 10, '_wp_trash_meta_status', 'publish'),
(39, 10, '_wp_trash_meta_time', '1517956832'),
(40, 16, '_menu_item_type', 'custom'),
(41, 16, '_menu_item_menu_item_parent', '0'),
(42, 16, '_menu_item_object_id', '16'),
(43, 16, '_menu_item_object', 'custom'),
(44, 16, '_menu_item_target', ''),
(45, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(46, 16, '_menu_item_xfn', ''),
(47, 16, '_menu_item_url', 'http://master-cci.sciences.univ-tours.fr/'),
(49, 18, '_wp_trash_meta_status', 'publish'),
(50, 18, '_wp_trash_meta_time', '1517957319'),
(51, 25, '_edit_lock', '1518088372:1'),
(52, 25, '_wp_trash_meta_status', 'publish'),
(53, 25, '_wp_trash_meta_time', '1518088378'),
(54, 27, '_edit_last', '1'),
(55, 27, '_edit_lock', '1518117213:1'),
(56, 27, '_wp_page_template', 'default'),
(57, 28, '_menu_item_type', 'post_type'),
(58, 28, '_menu_item_menu_item_parent', '13'),
(59, 28, '_menu_item_object_id', '27'),
(60, 28, '_menu_item_object', 'page'),
(61, 28, '_menu_item_target', ''),
(62, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(63, 28, '_menu_item_xfn', ''),
(64, 28, '_menu_item_url', ''),
(65, 30, '_edit_last', '1'),
(66, 30, '_edit_lock', '1518091655:1'),
(67, 30, '_wp_page_template', 'default'),
(68, 31, '_menu_item_type', 'post_type'),
(69, 31, '_menu_item_menu_item_parent', '13'),
(70, 31, '_menu_item_object_id', '30'),
(71, 31, '_menu_item_object', 'page'),
(72, 31, '_menu_item_target', ''),
(73, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(74, 31, '_menu_item_xfn', ''),
(75, 31, '_menu_item_url', ''),
(78, 34, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(79, 34, '_mail', 'a:8:{s:7:\"subject\";s:46:\"Gestion des Rapports de Stage \"[your-subject]\"\";s:6:\"sender\";s:44:\"[your-name] <helene.clery@etu.univ-tours.fr>\";s:4:\"body\";s:194:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Gestion des Rapports de Stage (http://localhost/wordpress)\";s:9:\"recipient\";s:30:\"helene.clery@etu.univ-tours.fr\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(80, 34, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:46:\"Gestion des Rapports de Stage \"[your-subject]\"\";s:6:\"sender\";s:62:\"Gestion des Rapports de Stage <helene.clery@etu.univ-tours.fr>\";s:4:\"body\";s:136:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Gestion des Rapports de Stage (http://localhost/wordpress)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:40:\"Reply-To: helene.clery@etu.univ-tours.fr\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(81, 34, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(82, 34, '_additional_settings', NULL),
(83, 34, '_locale', 'fr_FR');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE `wp_posts` (
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
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
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
-- Déchargement des données de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-02-06 23:35:35', '2018-02-06 22:35:35', 'Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde !', '', 'trash', 'open', 'open', '', 'bonjour-tout-le-monde__trashed', '', '', '2018-02-06 23:37:16', '2018-02-06 22:37:16', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2018-02-06 23:35:35', '2018-02-06 22:35:35', 'Bienvenue !\r\n\r\nSed quid est quod in hac causa maxime homines admirentur et reprehendant meum consilium, cum ego idem antea multa decreverim, que magis ad hominis dignitatem quam ad rei publicae necessitatem pertinerent? Supplicationem quindecim dierum decrevi sententia mea. Rei publicae satis erat tot dierum quot C. Mario ; dis immortalibus non erat exigua eadem gratulatio quae ex maximis bellis. Ergo ille cumulus dierum hominis est dignitati tributus.\r\n\r\nQuae dum ita struuntur, indicatum est apud Tyrum indumentum regale textum occulte, incertum quo locante vel cuius usibus apparatum. ideoque rector provinciae tunc pater Apollinaris eiusdem nominis ut conscius ductus est aliique congregati sunt ex diversis civitatibus multi, qui atrocium criminum ponderibus urgebantur\r\n\r\n&nbsp;\r\n\r\n[wpmem_form login]', 'Page d’accueil', '', 'publish', 'closed', 'open', '', 'accueil', '', '', '2018-02-08 12:06:23', '2018-02-08 11:06:23', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-02-06 23:35:52', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-02-06 23:35:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=3', 0, 'post', '', 0),
(4, 1, '2018-02-06 23:37:16', '2018-02-06 22:37:16', 'Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde !', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-02-06 23:37:16', '2018-02-06 22:37:16', '', 1, 'http://localhost/wordpress/2018/02/06/1-revision-v1/', 0, 'revision', '', 0),
(5, 1, '2018-02-06 23:37:47', '2018-02-06 22:37:47', 'Bienvenue !', 'Page d’accueil', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-02-06 23:37:47', '2018-02-06 22:37:47', '', 2, 'http://localhost/wordpress/2018/02/06/2-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2018-02-06 23:38:52', '2018-02-06 22:38:52', 'Critères de tri ....\r\n\r\nRapports à afficher ....', 'Rapports de stage', '', 'publish', 'closed', 'closed', '', 'rapports-de-stage', '', '', '2018-02-06 23:38:52', '2018-02-06 22:38:52', '', 0, 'http://localhost/wordpress/?page_id=6', 0, 'page', '', 0),
(7, 1, '2018-02-06 23:38:52', '2018-02-06 22:38:52', 'Critères de tri ....\r\n\r\nRapports à afficher ....', 'Rapports de stage', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-02-06 23:38:52', '2018-02-06 22:38:52', '', 6, 'http://localhost/wordpress/2018/02/06/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2018-02-06 23:39:13', '2018-02-06 22:39:13', '[wpmem_form register]\r\n\r\n&nbsp;', 'Inscription', '', 'publish', 'closed', 'closed', '', 'inscription', '', '', '2018-02-08 12:15:29', '2018-02-08 11:15:29', '', 0, 'http://localhost/wordpress/?page_id=8', 0, 'page', '', 0),
(9, 1, '2018-02-06 23:39:13', '2018-02-06 22:39:13', 'Espace de connexion..', 'Connexion', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-02-06 23:39:13', '2018-02-06 22:39:13', '', 8, 'http://localhost/wordpress/2018/02/06/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2018-02-06 23:40:30', '2018-02-06 22:40:30', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-06 22:40:30\"\n    },\n    \"argent::nav_menu_locations[primary]\": {\n        \"value\": -1898910254,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-06 22:40:30\"\n    },\n    \"nav_menu[-1898910254]\": {\n        \"value\": {\n            \"name\": \"Menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": true\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-06 22:40:30\"\n    },\n    \"nav_menu_item[-812557382]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-06 22:40:30\"\n    },\n    \"nav_menu_item[-1998827128]\": {\n        \"value\": {\n            \"object_id\": 2,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"Page d\\u2019accueil\",\n            \"url\": \"http://localhost/wordpress/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Page d\\u2019accueil\",\n            \"nav_menu_term_id\": -1898910254,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-06 22:40:30\"\n    },\n    \"nav_menu_item[-309971051]\": {\n        \"value\": {\n            \"object_id\": 8,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Connexion\",\n            \"url\": \"http://localhost/wordpress/connexion/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Connexion\",\n            \"nav_menu_term_id\": -1898910254,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-06 22:40:30\"\n    },\n    \"nav_menu_item[-52922774]\": {\n        \"value\": {\n            \"object_id\": 6,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Rapports de stage\",\n            \"url\": \"http://localhost/wordpress/rapports-de-stage/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Rapports de stage\",\n            \"nav_menu_term_id\": -1898910254,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-06 22:40:30\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0933ba91-db4a-4a1e-8308-3e586e615333', '', '', '2018-02-06 23:40:30', '2018-02-06 22:40:30', '', 0, 'http://localhost/wordpress/2018/02/06/0933ba91-db4a-4a1e-8308-3e586e615333/', 0, 'customize_changeset', '', 0),
(11, 1, '2018-02-06 23:40:31', '2018-02-06 22:40:31', ' ', '', '', 'publish', 'closed', 'closed', '', '11', '', '', '2018-02-08 13:12:39', '2018-02-08 12:12:39', '', 0, 'http://localhost/wordpress/2018/02/06/11/', 1, 'nav_menu_item', '', 0),
(12, 1, '2018-02-06 23:40:31', '2018-02-06 22:40:31', ' ', '', '', 'publish', 'closed', 'closed', '', '12', '', '', '2018-02-08 13:12:40', '2018-02-08 12:12:40', '', 0, 'http://localhost/wordpress/2018/02/06/12/', 5, 'nav_menu_item', '', 0),
(13, 1, '2018-02-06 23:40:32', '2018-02-06 22:40:32', ' ', '', '', 'publish', 'closed', 'closed', '', '13', '', '', '2018-02-08 13:12:39', '2018-02-08 12:12:39', '', 0, 'http://localhost/wordpress/2018/02/06/13/', 2, 'nav_menu_item', '', 0),
(14, 1, '2018-02-06 23:42:51', '2018-02-06 22:42:51', 'Bienvenue !\n\n&nbsp;', 'Page d’accueil', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2018-02-06 23:42:51', '2018-02-06 22:42:51', '', 2, 'http://localhost/wordpress/2018/02/06/2-autosave-v1/', 0, 'revision', '', 0),
(15, 1, '2018-02-06 23:43:22', '2018-02-06 22:43:22', 'Bienvenue !\r\n\r\nSed quid est quod in hac causa maxime homines admirentur et reprehendant meum consilium, cum ego idem antea multa decreverim, que magis ad hominis dignitatem quam ad rei publicae necessitatem pertinerent? Supplicationem quindecim dierum decrevi sententia mea. Rei publicae satis erat tot dierum quot C. Mario ; dis immortalibus non erat exigua eadem gratulatio quae ex maximis bellis. Ergo ille cumulus dierum hominis est dignitati tributus.\r\n\r\nQuae dum ita struuntur, indicatum est apud Tyrum indumentum regale textum occulte, incertum quo locante vel cuius usibus apparatum. ideoque rector provinciae tunc pater Apollinaris eiusdem nominis ut conscius ductus est aliique congregati sunt ex diversis civitatibus multi, qui atrocium criminum ponderibus urgebantur.\r\n\r\nAdolescebat autem obstinatum propositum erga haec et similia multa scrutanda, stimulos admovente regina, quae abrupte mariti fortunas trudebat in exitium praeceps, cum eum potius lenitate feminea ad veritatis humanitatisque viam reducere utilia suadendo deberet, ut in Gordianorum actibus factitasse Maximini truculenti illius imperatoris rettulimus coniugem.\r\n\r\nOrientis vero limes in longum protentus et rectum ab Euphratis fluminis ripis ad usque supercilia porrigitur Nili, laeva Saracenis conterminans gentibus, dextra pelagi fragoribus patens, quam plagam Nicator Seleucus occupatam auxit magnum in modum, cum post Alexandri Macedonis obitum successorio iure teneret regna Persidis, efficaciae inpetrabilis rex, ut indicat cognomentum.', 'Page d’accueil', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-02-06 23:43:22', '2018-02-06 22:43:22', '', 2, 'http://localhost/wordpress/2018/02/06/2-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2018-02-06 23:44:16', '2018-02-06 22:44:16', '', 'M2 CCI', '', 'publish', 'closed', 'closed', '', 'm2-cci', '', '', '2018-02-08 13:12:40', '2018-02-08 12:12:40', '', 0, 'http://localhost/wordpress/?p=16', 6, 'nav_menu_item', '', 0),
(17, 1, '2018-02-06 23:47:41', '2018-02-06 22:47:41', 'Bienvenue !\r\n\r\nSed quid est quod in hac causa maxime homines admirentur et reprehendant meum consilium, cum ego idem antea multa decreverim, que magis ad hominis dignitatem quam ad rei publicae necessitatem pertinerent? Supplicationem quindecim dierum decrevi sententia mea. Rei publicae satis erat tot dierum quot C. Mario ; dis immortalibus non erat exigua eadem gratulatio quae ex maximis bellis. Ergo ille cumulus dierum hominis est dignitati tributus.\r\n\r\nQuae dum ita struuntur, indicatum est apud Tyrum indumentum regale textum occulte, incertum quo locante vel cuius usibus apparatum. ideoque rector provinciae tunc pater Apollinaris eiusdem nominis ut conscius ductus est aliique congregati sunt ex diversis civitatibus multi, qui atrocium criminum ponderibus urgebantur', 'Page d’accueil', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-02-06 23:47:41', '2018-02-06 22:47:41', '', 2, 'http://localhost/wordpress/2018/02/06/2-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2018-02-06 23:48:38', '2018-02-06 22:48:38', '{\n    \"custom_css[argent]\": {\n        \"value\": \"p  {\\n\\ttext-align:justify;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-06 22:48:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0013f4fc-20f6-41fa-8d47-6784cafb708a', '', '', '2018-02-06 23:48:38', '2018-02-06 22:48:38', '', 0, 'http://localhost/wordpress/2018/02/06/0013f4fc-20f6-41fa-8d47-6784cafb708a/', 0, 'customize_changeset', '', 0),
(19, 1, '2018-02-06 23:48:39', '2018-02-06 22:48:39', 'p  {\n	text-align:justify;\n}', 'argent', '', 'publish', 'closed', 'closed', '', 'argent', '', '', '2018-02-06 23:48:39', '2018-02-06 22:48:39', '', 0, 'http://localhost/wordpress/2018/02/06/argent/', 0, 'custom_css', '', 0),
(20, 1, '2018-02-06 23:48:39', '2018-02-06 22:48:39', 'p  {\n	text-align:justify;\n}', 'argent', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-02-06 23:48:39', '2018-02-06 22:48:39', '', 19, 'http://localhost/wordpress/2018/02/06/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2018-02-08 11:49:45', '2018-02-08 10:49:45', '[wpmem_form login]', 'Connexion', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-02-08 11:49:45', '2018-02-08 10:49:45', '', 8, 'http://localhost/wordpress/2018/02/08/8-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2018-02-08 11:55:27', '2018-02-08 10:55:27', '[wpmem_form register]\r\n\r\n[wpmem_form login]', 'Connexion', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-02-08 11:55:27', '2018-02-08 10:55:27', '', 8, 'http://localhost/wordpress/2018/02/08/8-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2018-02-08 12:06:23', '2018-02-08 11:06:23', 'Bienvenue !\r\n\r\nSed quid est quod in hac causa maxime homines admirentur et reprehendant meum consilium, cum ego idem antea multa decreverim, que magis ad hominis dignitatem quam ad rei publicae necessitatem pertinerent? Supplicationem quindecim dierum decrevi sententia mea. Rei publicae satis erat tot dierum quot C. Mario ; dis immortalibus non erat exigua eadem gratulatio quae ex maximis bellis. Ergo ille cumulus dierum hominis est dignitati tributus.\r\n\r\nQuae dum ita struuntur, indicatum est apud Tyrum indumentum regale textum occulte, incertum quo locante vel cuius usibus apparatum. ideoque rector provinciae tunc pater Apollinaris eiusdem nominis ut conscius ductus est aliique congregati sunt ex diversis civitatibus multi, qui atrocium criminum ponderibus urgebantur\r\n\r\n&nbsp;\r\n\r\n[wpmem_form login]', 'Page d’accueil', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-02-08 12:06:23', '2018-02-08 11:06:23', '', 2, 'http://localhost/wordpress/2018/02/08/2-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2018-02-08 12:08:19', '2018-02-08 11:08:19', '[wpmem_form register]\r\n\r\n&nbsp;', 'Connexion', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-02-08 12:08:19', '2018-02-08 11:08:19', '', 8, 'http://localhost/wordpress/2018/02/08/8-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2018-02-08 12:12:58', '2018-02-08 11:12:58', '{\n    \"nav_menu_item[12]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 8,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/wordpress/connexion/\",\n            \"title\": \"Inscription\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 3,\n            \"status\": \"publish\",\n            \"original_title\": \"Connexion\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-08 11:12:51\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '844ae134-1411-4c52-af49-ba8f27a56a27', '', '', '2018-02-08 12:12:58', '2018-02-08 11:12:58', '', 0, 'http://localhost/wordpress/?p=25', 0, 'customize_changeset', '', 0),
(26, 1, '2018-02-08 12:15:08', '2018-02-08 11:15:08', '[wpmem_form register]\r\n\r\n&nbsp;', 'Inscription', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-02-08 12:15:08', '2018-02-08 11:15:08', '', 8, 'http://localhost/wordpress/2018/02/08/8-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-02-08 12:49:24', '2018-02-08 11:49:24', '<label class=\"k4-form-label element-invisible\" for=\"edit-pass\">Entreprise <span class=\"k4-required\" title=\"Ce champ est requis.\">*</span></label>\r\n<div class=\"k4-form-input \"><input id=\"edit-pass\" class=\"form-text required\" maxlength=\"128\" name=\"entreprise\" required=\"\" size=\"60\" type=\"text\" aria-required=\"true\" data-validate-required-message=\"Ce champ est requis.\" /></div>\r\n<label class=\"k4-form-label element-invisible\" for=\"edit-pass\">Ville<span class=\"k4-required\" title=\"Ce champ est requis.\">*</span></label>\r\n<div class=\"k4-form-input \"><input id=\"edit-pass\" class=\"form-text required\" maxlength=\"128\" name=\"Ville\" required=\"\" size=\"60\" type=\"text\" aria-required=\"true\" data-validate-required-message=\"Ce champ est requis.\" /></div>\r\n<label class=\"k4-form-label element-invisible\" for=\"edit-pass\">Secteur <span class=\"k4-required\" title=\"Ce champ est requis.\">*</span></label>\r\n<div class=\"k4-form-input \"><input id=\"edit-pass\" class=\"form-text required\" maxlength=\"128\" name=\"secteur\" required=\"\" size=\"60\" type=\"text\" aria-required=\"true\" data-validate-required-message=\"Ce champ est requis.\" /></div>\r\n<label class=\"k4-form-label element-invisible\" for=\"edit-pass\"> Sujet <span class=\"k4-required\" title=\"Ce champ est requis.\">*</span></label>\r\n<div class=\"k4-form-input \"><input id=\"edit-pass\" class=\"form-text required\" maxlength=\"128\" name=\"sujet\" required=\"\" size=\"60\" type=\"text\" aria-required=\"true\" data-validate-required-message=\"Ce champ est requis.\" /></div>\r\n<label class=\"k4-form-label element-invisible\" for=\"edit-pass\">Technologies <span class=\"k4-required\" title=\"Ce champ est requis.\">*</span></label>\r\n<div class=\"k4-form-input \"><input id=\"edit-pass\" class=\"form-text required\" maxlength=\"128\" name=\"technologie\" required=\"\" size=\"60\" type=\"text\" aria-required=\"true\" data-validate-required-message=\"Ce champ est requis.\" /></div>\r\n<label class=\"k4-form-label element-invisible\" for=\"edit-pass\">Admission <span class=\"k4-required\" title=\"Ce champ est requis.\">*</span></label>\r\n<div class=\"k4-form-input \"><input id=\"edit-pass\" class=\"form-text required\" maxlength=\"128\" name=\"admission\" required=\"\" size=\"60\" type=\"text\" placeholder=\"Oui ou Non\" aria-required=\"true\" data-validate-required-message=\"Ce champ est requis.\" /></div>\r\n<label for=\"icone\">Fiche de Synthèse (JPG, PNG ou GIF | max. 15 Ko) :</label>\r\n<input id=\"icone\" name=\"icone\" type=\"file\" />\r\n<label for=\"mon_fichier\">Rapport de stage (tous formats | max. 1 Mo) :</label>\r\n<input name=\"MAX_FILE_SIZE\" type=\"hidden\" value=\"1048576\" />\r\n<input id=\"mon_fichier\" name=\"mon_fichier\" type=\"file\" />\r\n<label for=\"titre\">Titre du fichier (max. 50 caractères) :</label>\r\n<input id=\"titre\" name=\"titre\" type=\"text\" value=\"Titre du fichier\" />\r\n<label for=\"description\">Résumé du stage (max. 255 caractères) :</label>\r\n<textarea id=\"description\" name=\"description\"></textarea>\r\n<input name=\"submit\" type=\"submit\" value=\"Envoyer\" />\r\n\r\n&nbsp;', 'Dépôt de rapports', '', 'publish', 'closed', 'closed', '', 'depot-de-rapports', '', '', '2018-02-08 20:15:52', '2018-02-08 19:15:52', '', 0, 'http://localhost/wordpress/?page_id=27', 0, 'page', '', 0),
(28, 1, '2018-02-08 12:49:24', '2018-02-08 11:49:24', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2018-02-08 13:12:40', '2018-02-08 12:12:40', '', 0, 'http://localhost/wordpress/2018/02/08/28/', 3, 'nav_menu_item', '', 0),
(29, 1, '2018-02-08 12:49:24', '2018-02-08 11:49:24', 'dépôt du rapport', 'Dépôt de rapports', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-02-08 12:49:24', '2018-02-08 11:49:24', '', 27, 'http://localhost/wordpress/2018/02/08/27-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-02-08 12:51:07', '2018-02-08 11:51:07', 'consultation', 'Consulter les rapports', '', 'publish', 'closed', 'closed', '', 'consulter-les-rapports', '', '', '2018-02-08 12:51:07', '2018-02-08 11:51:07', '', 0, 'http://localhost/wordpress/?page_id=30', 0, 'page', '', 0),
(31, 1, '2018-02-08 12:51:07', '2018-02-08 11:51:07', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2018-02-08 13:12:40', '2018-02-08 12:12:40', '', 0, 'http://localhost/wordpress/2018/02/08/31/', 4, 'nav_menu_item', '', 0),
(32, 1, '2018-02-08 12:51:07', '2018-02-08 11:51:07', 'consultation', 'Consulter les rapports', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-02-08 12:51:07', '2018-02-08 11:51:07', '', 30, 'http://localhost/wordpress/2018/02/08/30-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-02-08 14:36:26', '2018-02-08 13:36:26', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\nGestion des Rapports de Stage \"[your-subject]\"\n[your-name] <helene.clery@etu.univ-tours.fr>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Gestion des Rapports de Stage (http://localhost/wordpress)\nhelene.clery@etu.univ-tours.fr\nReply-To: [your-email]\n\n0\n0\n\nGestion des Rapports de Stage \"[your-subject]\"\nGestion des Rapports de Stage <helene.clery@etu.univ-tours.fr>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Gestion des Rapports de Stage (http://localhost/wordpress)\n[your-email]\nReply-To: helene.clery@etu.univ-tours.fr\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-02-08 14:36:26', '2018-02-08 13:36:26', '', 0, 'http://localhost/wordpress/?post_type=wpcf7_contact_form&p=34', 0, 'wpcf7_contact_form', '', 0),
(36, 1, '2018-02-08 19:30:32', '2018-02-08 18:30:32', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<meta charset=\"ISO-8859-1\">\r\n<title>Formulaire</title>\r\n</head>\r\n<body>\r\n\r\n\r\n<form method=\"post\" action=\"reception.php\" enctype=\"multipart/form-data\">\r\n     <label for=\"icone\">Icône du fichier (JPG, PNG ou GIF | max. 15 Ko) :</label><br />\r\n     <input type=\"file\" name=\"icone\" id=\"icone\" /><br />\r\n     <label for=\"mon_fichier\">Fichier (tous formats | max. 1 Mo) :</label><br />\r\n     <input type=\"hidden\" name=\"MAX_FILE_SIZE\" value=\"1048576\" />\r\n     <input type=\"file\" name=\"mon_fichier\" id=\"mon_fichier\" /><br />\r\n     <label for=\"titre\">Titre du fichier (max. 50 caractères) :</label><br />\r\n     <input type=\"text\" name=\"titre\" value=\"Titre du fichier\" id=\"titre\" /><br />\r\n     <label for=\"description\">Description de votre fichier (max. 255 caractères) :</label><br />\r\n     <textarea name=\"description\" id=\"description\"></textarea><br />\r\n     <input type=\"submit\" name=\"submit\" value=\"Envoyer\" />\r\n</form>\r\n\r\n</body>\r\n</html>', 'Dépôt de rapports', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-02-08 19:30:32', '2018-02-08 18:30:32', '', 27, 'http://localhost/wordpress/2018/02/08/27-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2018-02-08 19:31:32', '2018-02-08 18:31:32', '<label for=\"icone\">Icône du fichier (JPG, PNG ou GIF | max. 15 Ko) :</label>\r\n<input id=\"icone\" name=\"icone\" type=\"file\" />\r\n<label for=\"mon_fichier\">Fichier (tous formats | max. 1 Mo) :</label>\r\n<input name=\"MAX_FILE_SIZE\" type=\"hidden\" value=\"1048576\" />\r\n<input id=\"mon_fichier\" name=\"mon_fichier\" type=\"file\" />\r\n<label for=\"titre\">Titre du fichier (max. 50 caractères) :</label>\r\n<input id=\"titre\" name=\"titre\" type=\"text\" value=\"Titre du fichier\" />\r\n<label for=\"description\">Description de votre fichier (max. 255 caractères) :</label>\r\n<textarea id=\"description\" name=\"description\"></textarea>\r\n<input name=\"submit\" type=\"submit\" value=\"Envoyer\" />\r\n\r\n&nbsp;', 'Dépôt de rapports', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-02-08 19:31:32', '2018-02-08 18:31:32', '', 27, 'http://localhost/wordpress/2018/02/08/27-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-02-08 20:14:56', '2018-02-08 19:14:56', '<label class=\"k4-form-label element-invisible\" for=\"edit-pass\">Entreprise <span class=\"k4-required\" title=\"Ce champ est requis.\">*</span></label>\n<div class=\"k4-form-input \"><input id=\"edit-pass\" class=\"form-text required\" maxlength=\"128\" name=\"entreprise\" required=\"\" size=\"60\" type=\"text\" aria-required=\"true\" data-validate-required-message=\"Ce champ est requis.\" /></div>\n<label class=\"k4-form-label element-invisible\" for=\"edit-pass\">Ville<span class=\"k4-required\" title=\"Ce champ est requis.\">*</span></label>\n<div class=\"k4-form-input \"><input id=\"edit-pass\" class=\"form-text required\" maxlength=\"128\" name=\"Ville\" required=\"\" size=\"60\" type=\"text\" aria-required=\"true\" data-validate-required-message=\"Ce champ est requis.\" /></div>\n<label class=\"k4-form-label element-invisible\" for=\"edit-pass\">Secteur <span class=\"k4-required\" title=\"Ce champ est requis.\">*</span></label>\n<div class=\"k4-form-input \"><input id=\"edit-pass\" class=\"form-text required\" maxlength=\"128\" name=\"secteur\" required=\"\" size=\"60\" type=\"text\" aria-required=\"true\" data-validate-required-message=\"Ce champ est requis.\" /></div>\n<label class=\"k4-form-label element-invisible\" for=\"edit-pass\"> Sujet <span class=\"k4-required\" title=\"Ce champ est requis.\">*</span></label>\n<div class=\"k4-form-input \"><input id=\"edit-pass\" class=\"form-text required\" maxlength=\"128\" name=\"sujet\" required=\"\" size=\"60\" type=\"text\" aria-required=\"true\" data-validate-required-message=\"Ce champ est requis.\" /></div>\n<label class=\"k4-form-label element-invisible\" for=\"edit-pass\">Technologies <span class=\"k4-required\" title=\"Ce champ est requis.\">*</span></label>\n<div class=\"k4-form-input \"><input id=\"edit-pass\" class=\"form-text required\" maxlength=\"128\" name=\"technologie\" required=\"\" size=\"60\" type=\"text\" aria-required=\"true\" data-validate-required-message=\"Ce champ est requis.\" /></div>\n<label class=\"k4-form-label element-invisible\" for=\"edit-pass\">Admission <span class=\"k4-required\" title=\"Ce champ est requis.\">*</span></label>\n<div class=\"k4-form-input \"><input id=\"edit-pass\" class=\"form-text required\" maxlength=\"128\" name=\"admission\" required=\"\" size=\"60\" type=\"text\" placeholder=\"Oui ou Non\" aria-required=\"true\" data-validate-required-message=\"Ce champ est requis.\" /></div>\n<label for=\"icone\">Fiche de Synthèse (JPG, PNG ou GIF | max. 15 Ko) :</label>\n<input id=\"icone\" name=\"icone\" type=\"file\" />\n<label for=\"mon_fichier\">Rapport de stage (tous formats | max. 1 Mo) :</label>\n<input name=\"MAX_FILE_SIZE\" type=\"hidden\" value=\"1048576\" />\n<input id=\"mon_fichier\" name=\"mon_fichier\" type=\"file\" />\n<label for=\"titre\">Titre du fichier (max. 50 caractères) :</label>\n<input id=\"titre\" name=\"titre\" type=\"text\" value=\"Titre du fichier\" />\n<label for=\"description\">Résumé du stage (max. 255 caractères) :</label>\n<textarea id=\"description\" name=\"description\"></textarea>\n<input name=\"submit\" type=\"submit\" value=\"Envoyer\" />\n\n&nbsp;', 'Dépôt de rapports', '', 'inherit', 'closed', 'closed', '', '27-autosave-v1', '', '', '2018-02-08 20:14:56', '2018-02-08 19:14:56', '', 27, 'http://localhost/wordpress/2018/02/08/27-autosave-v1/', 0, 'revision', '', 0),
(39, 1, '2018-02-08 20:15:52', '2018-02-08 19:15:52', '<label class=\"k4-form-label element-invisible\" for=\"edit-pass\">Entreprise <span class=\"k4-required\" title=\"Ce champ est requis.\">*</span></label>\r\n<div class=\"k4-form-input \"><input id=\"edit-pass\" class=\"form-text required\" maxlength=\"128\" name=\"entreprise\" required=\"\" size=\"60\" type=\"text\" aria-required=\"true\" data-validate-required-message=\"Ce champ est requis.\" /></div>\r\n<label class=\"k4-form-label element-invisible\" for=\"edit-pass\">Ville<span class=\"k4-required\" title=\"Ce champ est requis.\">*</span></label>\r\n<div class=\"k4-form-input \"><input id=\"edit-pass\" class=\"form-text required\" maxlength=\"128\" name=\"Ville\" required=\"\" size=\"60\" type=\"text\" aria-required=\"true\" data-validate-required-message=\"Ce champ est requis.\" /></div>\r\n<label class=\"k4-form-label element-invisible\" for=\"edit-pass\">Secteur <span class=\"k4-required\" title=\"Ce champ est requis.\">*</span></label>\r\n<div class=\"k4-form-input \"><input id=\"edit-pass\" class=\"form-text required\" maxlength=\"128\" name=\"secteur\" required=\"\" size=\"60\" type=\"text\" aria-required=\"true\" data-validate-required-message=\"Ce champ est requis.\" /></div>\r\n<label class=\"k4-form-label element-invisible\" for=\"edit-pass\"> Sujet <span class=\"k4-required\" title=\"Ce champ est requis.\">*</span></label>\r\n<div class=\"k4-form-input \"><input id=\"edit-pass\" class=\"form-text required\" maxlength=\"128\" name=\"sujet\" required=\"\" size=\"60\" type=\"text\" aria-required=\"true\" data-validate-required-message=\"Ce champ est requis.\" /></div>\r\n<label class=\"k4-form-label element-invisible\" for=\"edit-pass\">Technologies <span class=\"k4-required\" title=\"Ce champ est requis.\">*</span></label>\r\n<div class=\"k4-form-input \"><input id=\"edit-pass\" class=\"form-text required\" maxlength=\"128\" name=\"technologie\" required=\"\" size=\"60\" type=\"text\" aria-required=\"true\" data-validate-required-message=\"Ce champ est requis.\" /></div>\r\n<label class=\"k4-form-label element-invisible\" for=\"edit-pass\">Admission <span class=\"k4-required\" title=\"Ce champ est requis.\">*</span></label>\r\n<div class=\"k4-form-input \"><input id=\"edit-pass\" class=\"form-text required\" maxlength=\"128\" name=\"admission\" required=\"\" size=\"60\" type=\"text\" placeholder=\"Oui ou Non\" aria-required=\"true\" data-validate-required-message=\"Ce champ est requis.\" /></div>\r\n<label for=\"icone\">Fiche de Synthèse (JPG, PNG ou GIF | max. 15 Ko) :</label>\r\n<input id=\"icone\" name=\"icone\" type=\"file\" />\r\n<label for=\"mon_fichier\">Rapport de stage (tous formats | max. 1 Mo) :</label>\r\n<input name=\"MAX_FILE_SIZE\" type=\"hidden\" value=\"1048576\" />\r\n<input id=\"mon_fichier\" name=\"mon_fichier\" type=\"file\" />\r\n<label for=\"titre\">Titre du fichier (max. 50 caractères) :</label>\r\n<input id=\"titre\" name=\"titre\" type=\"text\" value=\"Titre du fichier\" />\r\n<label for=\"description\">Résumé du stage (max. 255 caractères) :</label>\r\n<textarea id=\"description\" name=\"description\"></textarea>\r\n<input name=\"submit\" type=\"submit\" value=\"Envoyer\" />\r\n\r\n&nbsp;', 'Dépôt de rapports', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-02-08 20:15:52', '2018-02-08 19:15:52', '', 27, 'http://localhost/wordpress/2018/02/08/27-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Menu', 'menu', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(11, 2, 0),
(12, 2, 0),
(13, 2, 0),
(16, 2, 0),
(28, 2, 0),
(31, 2, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'M2CCI'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:4:{s:64:\"a09e3b4d3d8e46ef1ed8f23cf5eb93d6721efabe6329f1f70d2c35d4e0f4c5b2\";a:4:{s:10:\"expiration\";i:1518129349;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36\";s:5:\"login\";i:1517956549;}s:64:\"6170e98378cf16ba782f2e11327ad4116291f3fa919acec8a55e00c5984d2828\";a:4:{s:10:\"expiration\";i:1518187896;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36\";s:5:\"login\";i:1518015096;}s:64:\"0cd0fc469ed1a6c4340ad3e373581676e7f5debe95eae03b4d440abc519e6352\";a:4:{s:10:\"expiration\";i:1518261366;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36\";s:5:\"login\";i:1518088566;}s:64:\"d869e398e7746df314a3690b67aeffe3b2018cbed0c263071ca8a686a3592dc7\";a:4:{s:10:\"expiration\";i:1518289137;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36\";s:5:\"login\";i:1518116337;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(19, 1, 'nav_menu_recently_edited', '2'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(22, 1, 'wp_user-settings', 'editor=html'),
(23, 1, 'wp_user-settings-time', '1518117349');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE `wp_users` (
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
-- Déchargement des données de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'M2CCI', '$P$BzZios6sVqf721/hco.zPeNtfmbCzw1', 'm2cci', 'helene.clery@etu.univ-tours.fr', '', '2018-02-06 22:35:34', '', 0, 'M2CCI');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `stages`
--
ALTER TABLE `stages`
  ADD PRIMARY KEY (`id_stage`),
  ADD KEY `id_utilisateur` (`id_utilisateur`);

--
-- Index pour la table `technologies`
--
ALTER TABLE `technologies`
  ADD KEY `id_stage` (`id_stage`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id_utilisateur`);

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `stages`
--
ALTER TABLE `stages`
  MODIFY `id_stage` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id_utilisateur` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `stages`
--
ALTER TABLE `stages`
  ADD CONSTRAINT `stages_ibfk_1` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateurs` (`id_utilisateur`);

--
-- Contraintes pour la table `technologies`
--
ALTER TABLE `technologies`
  ADD CONSTRAINT `technologies_ibfk_1` FOREIGN KEY (`id_stage`) REFERENCES `stages` (`id_stage`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
