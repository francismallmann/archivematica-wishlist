-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 09-Jul-2016 às 18:54
-- Versão do servidor: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fpr`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_assets`
--

CREATE TABLE IF NOT EXISTS `pjgca_assets` (
  `id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pjgca_assets`
--

INSERT INTO `pjgca_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 115, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 28, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 29, 30, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 31, 32, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 33, 34, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 35, 36, 1, 'com_login', 'com_login', '{}'),
(13, 1, 37, 38, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 39, 40, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 41, 42, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 43, 44, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 45, 46, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 47, 84, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 85, 88, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 89, 90, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 91, 92, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 93, 94, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 95, 96, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 97, 100, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(26, 1, 101, 102, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 19, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 86, 87, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 98, 99, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 103, 104, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 105, 106, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 107, 108, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 109, 110, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 111, 112, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 113, 114, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 48, 49, 2, 'com_modules.module.1', 'Main Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 18, 50, 51, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 52, 53, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 54, 55, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 56, 57, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 58, 59, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 60, 61, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 62, 63, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 64, 65, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 66, 67, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 68, 69, 2, 'com_modules.module.15', 'Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 70, 71, 2, 'com_modules.module.16', 'Login Form', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(51, 18, 72, 73, 2, 'com_modules.module.17', 'Breadcrumbs', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 18, 74, 75, 2, 'com_modules.module.79', 'Multilanguage status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 76, 77, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 18, 78, 79, 2, 'com_modules.module.87', 'Language Switcher', '[]'),
(55, 18, 80, 81, 2, 'com_modules.module.88', 'Main menu en-GB', '[]'),
(56, 8, 20, 23, 2, 'com_content.category.8', 'Category (en-gb)', '[]'),
(57, 56, 21, 22, 3, 'com_content.article.1', 'Format Policy Registry (FPR)', '[]'),
(58, 18, 82, 83, 2, 'com_modules.module.89', 'Main menu pt-BR', '[]'),
(59, 8, 24, 27, 2, 'com_content.category.9', 'Categoria (pt-br)', '[]'),
(60, 59, 25, 26, 3, 'com_content.article.2', 'Políticas de Formato de Registros', '[]');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_associations`
--

CREATE TABLE IF NOT EXISTS `pjgca_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_banners`
--

CREATE TABLE IF NOT EXISTS `pjgca_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_banner_clients`
--

CREATE TABLE IF NOT EXISTS `pjgca_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `pjgca_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_categories`
--

CREATE TABLE IF NOT EXISTS `pjgca_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pjgca_categories`
--

INSERT INTO `pjgca_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 15, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 56, 1, 11, 12, 1, 'category-en-gb', 'com_content', 'Category (en-gb)', 'category-en-gb', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 0, '2016-07-06 23:07:40', 0, '2016-07-06 23:07:40', 0, 'en-GB', 1),
(9, 59, 1, 13, 14, 1, 'categoria-pt-br', 'com_content', 'Categoria (pt-br)', 'categoria-pt-br', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 0, '2016-07-06 23:07:40', 0, '2016-07-06 23:07:40', 0, 'pt-BR', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_contact_details`
--

CREATE TABLE IF NOT EXISTS `pjgca_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_content`
--

CREATE TABLE IF NOT EXISTS `pjgca_content` (
  `id` int(10) unsigned NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pjgca_content`
--

INSERT INTO `pjgca_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 57, 'Format Policy Registry (FPR)', 'article-en-gb', '<p> </p>\r\n<h1 class="p1"><span class="s1">Format policies</span></h1>\r\n<p> </p>\r\n<p class="p1" style="text-align: justify;"><span class="s1">Format Policies indicate what tool to run when normalizing for a given purpose (access, preservation) when a specific File Identification Tool identifies a specific File Format. They can be thought of as analogous to Virus Definitions, which need to be updated periodically in an Archivematica installation in order to ensure the efficacy of the virus scanning micro-service. Similarly, software security updates are downloaded at the operating system level, to keep the host machine secure.</span></p>\r\n<p class="p1" style="text-align: justify;"> </p>\r\n<table class="t1" style="margin-left: auto; margin-right: auto;" border="1" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td class="td1" valign="middle">\r\n<p class="p1"><span class="s1"><b>Media type</b></span></p>\r\n</td>\r\n<td class="td2" valign="middle">\r\n<p class="p1"><span class="s1"><b>File formats</b></span></p>\r\n</td>\r\n<td class="td3" valign="middle">\r\n<p class="p1"><span class="s1"><b>Preservation format(s)</b></span></p>\r\n</td>\r\n<td class="td3" valign="middle">\r\n<p class="p1"><span class="s1"><b>Access format(s)</b></span></p>\r\n</td>\r\n<td class="td4" valign="middle">\r\n<p class="p1"><span class="s1"><b>Normalization tool</b></span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class="td5" valign="middle">\r\n<p class="p2"><span class="s1"><a href="https://wiki.archivematica.org/Audio">Audio</a></span></p>\r\n</td>\r\n<td class="td6" valign="middle">\r\n<p class="p2"><span class="s1"><a href="https://wiki.archivematica.org/AC-3_Compressed_Audio_(Dolby_Digital)">AC3</a></span><span class="s3">, <a href="https://wiki.archivematica.org/Audio_Interchange_File_Format"><span class="s2">AIFF</span></a>, <a href="https://wiki.archivematica.org/MPEG-1_Audio,_Layer_3"><span class="s2">MP3</span></a>, <a href="https://wiki.archivematica.org/Waveform_Audio"><span class="s2">WAV</span></a>, <a href="https://wiki.archivematica.org/Windows_Media_Audio"><span class="s2">WMA</span></a></span></p>\r\n</td>\r\n<td class="td7" valign="middle">\r\n<p class="p1"><span class="s1">WAVE (LPCM)</span></p>\r\n</td>\r\n<td class="td7" valign="middle">\r\n<p class="p1"><span class="s1">MP3</span></p>\r\n</td>\r\n<td class="td8" valign="middle">\r\n<p class="p1"><a href="https://ffmpeg.org/" target="_blank">FFmpeg</a></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class="td9" valign="middle">\r\n<p class="p2"><span class="s1"><a href="https://wiki.archivematica.org/Email">Email</a></span></p>\r\n</td>\r\n<td class="td10" valign="middle">\r\n<p class="p2"><span class="s1"><a href="https://wiki.archivematica.org/PST">PST</a></span></p>\r\n</td>\r\n<td class="td11" valign="middle">\r\n<p class="p1"><span class="s1">MBOX</span></p>\r\n</td>\r\n<td class="td11" valign="middle">\r\n<p class="p1"><span class="s1">MBOX</span></p>\r\n</td>\r\n<td class="td12" valign="middle">\r\n<p class="p1"><a href="http://www.five-ten-sg.com/libpst/rn01re01.html" target="_blank">readpst</a></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class="td5" valign="middle">\r\n<p class="p2"><span class="s1"><a href="https://wiki.archivematica.org/Email">Email</a></span></p>\r\n</td>\r\n<td class="td6" valign="middle">\r\n<p class="p2"><span class="s1"><a href="https://wiki.archivematica.org/Maildir">Maildir</a></span></p>\r\n</td>\r\n<td class="td7" valign="middle">\r\n<p class="p1"><span class="s1">Original format</span></p>\r\n</td>\r\n<td class="td7" valign="middle">\r\n<p class="p1"><span class="s1">MBOX</span></p>\r\n</td>\r\n<td class="td8" valign="middle">\r\n<p class="p1"><a href="https://gist.github.com/nyergler/1709069" target="_blank"><span class="s1">md2mb.py</span></a></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class="td9" valign="middle">\r\n<p class="p2"><span class="s1"><a href="https://wiki.archivematica.org/Office_Open_XML">Office Open XML</a></span></p>\r\n</td>\r\n<td class="td10" valign="middle">\r\n<p class="p1"><span class="s1">DOCX, PPTX, XLSX</span></p>\r\n</td>\r\n<td class="td11" valign="middle">\r\n<p class="p1"><span class="s1">Original format</span></p>\r\n</td>\r\n<td class="td11" valign="middle">\r\n<p class="p1"><span class="s1">Original format</span></p>\r\n</td>\r\n<td class="td12" valign="middle">\r\n<p class="p1"><span class="s1">Tool search in progress</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class="td5" valign="middle">\r\n<p class="p2"><span class="s1"><a href="https://wiki.archivematica.org/Plain_text">Plain text</a></span></p>\r\n</td>\r\n<td class="td6" valign="middle">\r\n<p class="p2"><span class="s1"><a href="https://wiki.archivematica.org/Plain_text_file">TXT</a></span></p>\r\n</td>\r\n<td class="td7" valign="middle">\r\n<p class="p1"><span class="s1">Original format</span></p>\r\n</td>\r\n<td class="td7" valign="middle">\r\n<p class="p1"><span class="s1">Original format</span></p>\r\n</td>\r\n<td class="td8" valign="middle">\r\n<p class="p1"><span class="s1">None</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class="td9" valign="middle">\r\n<p class="p2"><span class="s1"><a href="https://wiki.archivematica.org/Portable_Document_Format">Portable Document Format</a></span></p>\r\n</td>\r\n<td class="td10" valign="middle">\r\n<p class="p2"><span class="s1"><a href="https://wiki.archivematica.org/Portable_Document_Format">PDF</a></span></p>\r\n</td>\r\n<td class="td11" valign="middle">\r\n<p class="p1"><span class="s1">PDF/A</span></p>\r\n</td>\r\n<td class="td11" valign="middle">\r\n<p class="p1"><span class="s1">Original format</span></p>\r\n</td>\r\n<td class="td12" valign="middle">\r\n<p class="p1"><a href="http://www.ghostscript.com/" target="_blank">Ghostscript</a></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class="td5" valign="middle">\r\n<p class="p2"><span class="s1"><a href="https://wiki.archivematica.org/Presentation_files">Presentation files</a></span></p>\r\n</td>\r\n<td class="td6" valign="middle">\r\n<p class="p2"><span class="s1"><a href="https://wiki.archivematica.org/Microsoft_Powerpoint_Presentation">PPT</a></span></p>\r\n</td>\r\n<td class="td7" valign="middle">\r\n<p class="p1"><span class="s1">Original format</span></p>\r\n</td>\r\n<td class="td7" valign="middle">\r\n<p class="p1"><span class="s1">PDF</span></p>\r\n</td>\r\n<td class="td8" valign="middle">\r\n<p class="p1"><span class="s1">Tool search in progress</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class="td9" valign="middle">\r\n<p class="p2"><span class="s1"><a href="https://wiki.archivematica.org/Raster_images">Raster images</a></span></p>\r\n</td>\r\n<td class="td10" valign="middle">\r\n<p class="p2"><span class="s1"><a href="https://wiki.archivematica.org/Microsoft_Windows_Bitmap_Image_file">BMP</a></span><span class="s3">, <a href="https://wiki.archivematica.org/Graphics_Interchange_Format"><span class="s2">GIF</span></a>, <a href="https://wiki.archivematica.org/Joint_Photographic_Experts_Group"><span class="s2">JPG</span></a>, <a href="https://wiki.archivematica.org/JPEG2000"><span class="s2">JP2</span></a>, <a href="https://wiki.archivematica.org/Macintosh_PICT_Image"><span class="s2">PCT</span></a>, <a href="https://wiki.archivematica.org/Portable_Network_Graphics"><span class="s2">PNG</span></a>, <a href="https://wiki.archivematica.org/Adobe_Photoshop"><span class="s2">PSD</span></a>, <a href="https://wiki.archivematica.org/Tagged_Image_File_Format"><span class="s2">TIFF</span></a>, <a href="https://wiki.archivematica.org/Truevision_TARGA_file"><span class="s2">TGA</span></a></span></p>\r\n</td>\r\n<td class="td11" valign="middle">\r\n<p class="p1"><span class="s1">Uncompressed TIFF</span></p>\r\n</td>\r\n<td class="td11" valign="middle">\r\n<p class="p1"><span class="s1">JPEG</span></p>\r\n</td>\r\n<td class="td12" valign="middle">\r\n<p class="p1"><a href="http://www.imagemagick.org/script/index.php" target="_blank">ImageMagick</a></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class="td5" valign="middle">\r\n<p class="p2"><span class="s1"><a href="https://wiki.archivematica.org/Raw_camera_files">Raw camera files</a></span><span class="s3">/<a href="https://wiki.archivematica.org/Digital_Negative_format"><span class="s2">Digital Negative format</span></a></span></p>\r\n</td>\r\n<td class="td6" valign="middle">\r\n<p class="p1"><span class="s1">3FR, ARW, CR2, CRW, DCR, DNG, ERF, KDC, MRW, NEF, ORF, PEF, RAF, RAW, X3F</span></p>\r\n</td>\r\n<td class="td7" valign="middle">\r\n<p class="p1"><span class="s1">Original format</span></p>\r\n</td>\r\n<td class="td7" valign="middle">\r\n<p class="p1"><span class="s1">JPEG</span></p>\r\n</td>\r\n<td class="td8" valign="middle">\r\n<p class="p1"><span class="s1"><a href="http://www.imagemagick.org/script/index.php" target="_blank">ImageMagick</a>/UFRaw</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class="td9" valign="middle">\r\n<p class="p2"><span class="s1"><a href="https://wiki.archivematica.org/Spreadsheets">Spreadsheets</a></span></p>\r\n</td>\r\n<td class="td10" valign="middle">\r\n<p class="p2"><span class="s1"><a href="https://wiki.archivematica.org/Microsoft_Excel_Workbook">XLS</a></span></p>\r\n</td>\r\n<td class="td11" valign="middle">\r\n<p class="p1"><span class="s1">Original format</span></p>\r\n</td>\r\n<td class="td11" valign="middle">\r\n<p class="p1"><span class="s1">Original format</span></p>\r\n</td>\r\n<td class="td12" valign="middle">\r\n<p class="p1"><span class="s1">None</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class="td5" valign="middle">\r\n<p class="p2"><span class="s1"><a href="https://wiki.archivematica.org/Vector_images">Vector images</a></span></p>\r\n</td>\r\n<td class="td6" valign="middle">\r\n<p class="p2"><span class="s1"><a href="https://wiki.archivematica.org/Adobe_Illustrator_drawing">AI</a></span><span class="s3">, <a href="https://wiki.archivematica.org/Encapsulated_PostScript"><span class="s2">EPS</span></a>, <a href="https://wiki.archivematica.org/Scalable_Vector_Graphics"><span class="s2">SVG</span></a></span></p>\r\n</td>\r\n<td class="td7" valign="middle">\r\n<p class="p1"><span class="s1">SVG</span></p>\r\n</td>\r\n<td class="td7" valign="middle">\r\n<p class="p1"><span class="s1">PDF</span></p>\r\n</td>\r\n<td class="td8" valign="middle">\r\n<p class="p1"><a href="https://inkscape.org/pt/" target="_blank">Inkscape</a></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class="td9" valign="middle">\r\n<p class="p2"><span class="s1"><a href="https://wiki.archivematica.org/Video">Video</a></span></p>\r\n</td>\r\n<td class="td10" valign="middle">\r\n<p class="p2"><span class="s1"><a href="https://wiki.archivematica.org/Audio/Video_Interleaved_Format">AVI</a></span><span class="s3">, <a href="https://wiki.archivematica.org/Macromedia_FLV"><span class="s2">FLV</span></a>, <a href="https://wiki.archivematica.org/Quicktime_(video)"><span class="s2">MOV</span></a>, <a href="https://wiki.archivematica.org/MPEG-1_and_MPEG-2"><span class="s2">MPEG-1</span></a>, <a href="https://wiki.archivematica.org/MPEG-1_and_MPEG-2"><span class="s2">MPEG-2</span></a>, <a href="https://wiki.archivematica.org/MPEG-4"><span class="s2">MPEG-4</span></a>, <a href="https://wiki.archivematica.org/Shockwave_Flash_file"><span class="s2">SWF</span></a>, <a href="https://wiki.archivematica.org/Windows_Media_Player_file"><span class="s2">WMV</span></a></span></p>\r\n</td>\r\n<td class="td11" valign="middle">\r\n<p class="p1"><span class="s1">FFV1/LPCM in MKV</span></p>\r\n</td>\r\n<td class="td11" valign="middle">\r\n<p class="p1"><span class="s1">MP4</span></p>\r\n</td>\r\n<td class="td12" valign="middle">\r\n<p class="p1"><a href="https://ffmpeg.org/" target="_blank">FFmpeg</a></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class="td5" valign="middle">\r\n<p class="p2"><span class="s1"><a href="https://wiki.archivematica.org/Word_processing_files">Word processing files</a></span></p>\r\n</td>\r\n<td class="td6" valign="middle">\r\n<p class="p2"><span class="s1"><a href="https://wiki.archivematica.org/Microsoft_Word_for_Windows">DOC</a></span><span class="s3">, <a href="https://wiki.archivematica.org/Corel_WordPerfect"><span class="s2">WPD</span></a>, <a href="https://wiki.archivematica.org/Rich_Text_Format"><span class="s2">RTF</span></a></span></p>\r\n</td>\r\n<td class="td7" valign="middle">\r\n<p class="p1"><span class="s1">Original format</span></p>\r\n</td>\r\n<td class="td7" valign="middle">\r\n<p class="p1"><span class="s1">Original format</span></p>\r\n</td>\r\n<td class="td8" valign="middle">\r\n<p class="p1"><span class="s1">Tool search in progress</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class="p1" style="text-align: justify;"> </p>', '', 1, 8, '2016-07-06 23:07:40', 448, 'Joomla', '2016-07-06 23:53:44', 448, 448, '2016-07-07 12:54:43', '2016-07-06 23:07:40', '0000-00-00 00:00:00', '[]', '[]', '{}', 5, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":"","tags":null}', 1, 'en-GB', ''),
(2, 60, 'Políticas de Formato de Registros', 'artigo-pt-br', '<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">Políticas de formato indicam qual ferramenta deve ser executada quanto a normalização para um determinado propósito (acesso, preservação). Quando uma ferramenta de Identificação de arquivo identifica um formato de arquivo específico. Eles podem ser semelhantes as definições de vírus, que necessitam ser atualizadas periodicamente, de uma instalação Archivematica, a fim de assegurar a eficácia serviço de verificação de vírus. Da mesma forma, as atualizações de segurança de software são baixados no nível do sistema operacional, para manter a máquina host segura.</p>\r\n<table class="t1" style="margin-left: auto; margin-right: auto;" border="1" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td class="td1" valign="middle">\r\n<p class="p1"><span class="s1"><b>Tipo de Media</b></span></p>\r\n</td>\r\n<td class="td2" valign="middle">\r\n<p class="p1"><span class="s1"><b>Formato de Arquivo</b></span></p>\r\n</td>\r\n<td class="td3" valign="middle">\r\n<p class="p1"><span class="s1"><b>Formato de Preservação</b></span></p>\r\n</td>\r\n<td class="td3" valign="middle">\r\n<p class="p1"><span class="s1"><b>Formato de Acesso</b></span></p>\r\n</td>\r\n<td class="td4" valign="middle">\r\n<p class="p1"><span class="s1"><b>Ferramenta de Normalização</b></span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class="td5" valign="middle">\r\n<p class="p2"><span class="s1"><a href="https://wiki.archivematica.org/Audio">Audio</a></span></p>\r\n</td>\r\n<td class="td6" valign="middle">\r\n<p class="p3"><span class="s1"><a href="https://wiki.archivematica.org/AC-3_Compressed_Audio_(Dolby_Digital)">AC3</a></span><span class="s3">, <a href="https://wiki.archivematica.org/Audio_Interchange_File_Format"><span class="s2">AIFF</span></a>, <a href="https://wiki.archivematica.org/MPEG-1_Audio,_Layer_3"><span class="s2">MP3</span></a>, <a href="https://wiki.archivematica.org/Waveform_Audio"><span class="s2">WAV</span></a>, <a href="https://wiki.archivematica.org/Windows_Media_Audio"><span class="s2">WMA</span></a></span></p>\r\n</td>\r\n<td class="td7" valign="middle">\r\n<p class="p1"><span class="s1">WAVE (LPCM)</span></p>\r\n</td>\r\n<td class="td7" valign="middle">\r\n<p class="p1"><span class="s1">MP3</span></p>\r\n</td>\r\n<td class="td8" valign="middle">\r\n<p class="p1"><a href="https://ffmpeg.org/" target="_blank">FFmpeg</a></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class="td9" valign="middle">\r\n<p class="p3"><span class="s1"><a href="https://wiki.archivematica.org/Email">Email</a></span></p>\r\n</td>\r\n<td class="td10" valign="middle">\r\n<p class="p3"><span class="s1"><a href="https://wiki.archivematica.org/PST">PST</a></span></p>\r\n</td>\r\n<td class="td11" valign="middle">\r\n<p class="p1"><span class="s1">MBOX</span></p>\r\n</td>\r\n<td class="td11" valign="middle">\r\n<p class="p1"><span class="s1">MBOX</span></p>\r\n</td>\r\n<td class="td12" valign="middle">\r\n<p class="p1"><a href="http://www.five-ten-sg.com/libpst/rn01re01.html" target="_blank">readpst</a></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class="td5" valign="middle">\r\n<p class="p3"><span class="s1"><a href="https://wiki.archivematica.org/Email">Email</a></span></p>\r\n</td>\r\n<td class="td6" valign="middle">\r\n<p class="p3"><span class="s1"><a href="https://wiki.archivematica.org/Maildir">Maildir</a></span></p>\r\n</td>\r\n<td class="td7" valign="middle">\r\n<p class="p1"><span class="s1">Formato original</span></p>\r\n</td>\r\n<td class="td7" valign="middle">\r\n<p class="p1"><span class="s1">MBOX</span></p>\r\n</td>\r\n<td class="td8" valign="middle">\r\n<p class="p1"><a href="https://gist.github.com/nyergler/1709069" target="_blank"><span class="s1">md2mb.py</span></a></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class="td9" valign="middle">\r\n<p class="p3"><a href="https://gist.github.com/nyergler/1709069" target="_blank"><span class="s1">Office Open XML</span></a></p>\r\n</td>\r\n<td class="td10" valign="middle">\r\n<p class="p1"><span class="s1">DOCX, PPTX, XLSX</span></p>\r\n</td>\r\n<td class="td11" valign="middle">\r\n<p class="p1"><span class="s1">Formato original</span></p>\r\n</td>\r\n<td class="td11" valign="middle">\r\n<p class="p1"><span class="s1">Formato original</span></p>\r\n</td>\r\n<td class="td12" valign="middle">\r\n<p class="p1"><span class="s1">Buscando ferramenta</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class="td5" valign="middle">\r\n<p class="p3"><span class="s1">Texto Simples</span></p>\r\n</td>\r\n<td class="td6" valign="middle">\r\n<p class="p3"><span class="s1"><a href="https://wiki.archivematica.org/Plain_text_file">TXT</a></span></p>\r\n</td>\r\n<td class="td7" valign="middle">\r\n<p class="p1"><span class="s1">Formato original</span></p>\r\n</td>\r\n<td class="td7" valign="middle">\r\n<p class="p1"><span class="s1">Formato original</span></p>\r\n</td>\r\n<td class="td8" valign="middle">\r\n<p class="p1"><span class="s1">Nenhum</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class="td9" valign="middle">\r\n<p class="p3"><span class="s1">Formato de Documentos portaveis</span></p>\r\n</td>\r\n<td class="td10" valign="middle">\r\n<p class="p3"><span class="s1"><a href="https://wiki.archivematica.org/Portable_Document_Format">PDF</a></span></p>\r\n</td>\r\n<td class="td11" valign="middle">\r\n<p class="p1"><span class="s1">PDF/A</span></p>\r\n</td>\r\n<td class="td11" valign="middle">\r\n<p class="p1"><span class="s1">Formato original</span></p>\r\n</td>\r\n<td class="td12" valign="middle">\r\n<p class="p1"><a href="http://www.ghostscript.com/" target="_blank">Ghostscript</a></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class="td5" valign="middle">\r\n<p class="p3"><span class="s1">Arquivos de Apresentação</span></p>\r\n</td>\r\n<td class="td6" valign="middle">\r\n<p class="p3"><span class="s1"><a href="https://wiki.archivematica.org/Microsoft_Powerpoint_Presentation">PPT</a></span></p>\r\n</td>\r\n<td class="td7" valign="middle">\r\n<p class="p1"><span class="s1">Formato original</span></p>\r\n</td>\r\n<td class="td7" valign="middle">\r\n<p class="p1"><span class="s1">PDF</span></p>\r\n</td>\r\n<td class="td8" valign="middle">\r\n<p class="p1"><span class="s1">Buscando ferramenta</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class="td9" valign="middle">\r\n<p class="p3"><span class="s1">Imagens em BITMAP</span></p>\r\n</td>\r\n<td class="td10" valign="middle">\r\n<p class="p3"><span class="s1"><a href="https://wiki.archivematica.org/Microsoft_Windows_Bitmap_Image_file">BMP</a></span><span class="s3">, <a href="https://wiki.archivematica.org/Graphics_Interchange_Format"><span class="s2">GIF</span></a>, <a href="https://wiki.archivematica.org/Joint_Photographic_Experts_Group"><span class="s2">JPG</span></a>, <a href="https://wiki.archivematica.org/JPEG2000"><span class="s2">JP2</span></a>, <a href="https://wiki.archivematica.org/Macintosh_PICT_Image"><span class="s2">PCT</span></a>, <a href="https://wiki.archivematica.org/Portable_Network_Graphics"><span class="s2">PNG</span></a>, <a href="https://wiki.archivematica.org/Adobe_Photoshop"><span class="s2">PSD</span></a>, <a href="https://wiki.archivematica.org/Tagged_Image_File_Format"><span class="s2">TIFF</span></a>, <a href="https://wiki.archivematica.org/Truevision_TARGA_file"><span class="s2">TGA</span></a></span></p>\r\n</td>\r\n<td class="td11" valign="middle">\r\n<p class="p1"><span class="s1">TIFF Descomprimido</span></p>\r\n</td>\r\n<td class="td11" valign="middle">\r\n<p class="p1"><span class="s1">JPEG</span></p>\r\n</td>\r\n<td class="td12" valign="middle">\r\n<p class="p1"><a href="http://www.imagemagick.org/script/index.php" target="_blank">ImageMagick</a></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class="td5" valign="middle">\r\n<p class="p3"><span class="s1">Arquivos de camera RAW</span><span class="s3">/<span class="s2">Formato de negativos digitais</span>**</span></p>\r\n</td>\r\n<td class="td6" valign="middle">\r\n<p class="p1"><span class="s1">3FR, ARW, CR2, CRW, DCR, DNG, ERF, KDC, MRW, NEF, ORF, PEF, RAF, RAW, X3F</span></p>\r\n</td>\r\n<td class="td7" valign="middle">\r\n<p class="p1"><span class="s1">Formato original</span></p>\r\n</td>\r\n<td class="td7" valign="middle">\r\n<p class="p1"><span class="s1">JPEG</span></p>\r\n</td>\r\n<td class="td8" valign="middle">\r\n<p class="p1"><span class="s1">ImageMagick/UFRaw</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class="td9" valign="middle">\r\n<p class="p3"><span class="s1">Planilhas</span></p>\r\n</td>\r\n<td class="td10" valign="middle">\r\n<p class="p3"><span class="s1"><a href="https://wiki.archivematica.org/Microsoft_Excel_Workbook">XLS</a></span></p>\r\n</td>\r\n<td class="td11" valign="middle">\r\n<p class="p1"><span class="s1">Formato original</span></p>\r\n</td>\r\n<td class="td11" valign="middle">\r\n<p class="p1"><span class="s1">Formato original</span></p>\r\n</td>\r\n<td class="td12" valign="middle">\r\n<p class="p1"><span class="s1">Nenhum</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class="td5" valign="middle">\r\n<p class="p3"><span class="s1">Imagens Vetoriais</span></p>\r\n</td>\r\n<td class="td6" valign="middle">\r\n<p class="p3"><span class="s1"><a href="https://wiki.archivematica.org/Adobe_Illustrator_drawing">AI</a></span><span class="s3">, <a href="https://wiki.archivematica.org/Encapsulated_PostScript"><span class="s2">EPS</span></a>, <a href="https://wiki.archivematica.org/Scalable_Vector_Graphics"><span class="s2">SVG</span></a></span></p>\r\n</td>\r\n<td class="td7" valign="middle">\r\n<p class="p1"><span class="s1">SVG</span></p>\r\n</td>\r\n<td class="td7" valign="middle">\r\n<p class="p1"><span class="s1">PDF</span></p>\r\n</td>\r\n<td class="td8" valign="middle">\r\n<p class="p1"><a href="https://inkscape.org/pt/" target="_blank">Inkscape</a></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class="td9" valign="middle">\r\n<p class="p3"><span class="s1"><a href="https://wiki.archivematica.org/Video">Video</a></span></p>\r\n</td>\r\n<td class="td10" valign="middle">\r\n<p class="p3"><span class="s1"><a href="https://wiki.archivematica.org/Audio/Video_Interleaved_Format">AVI</a></span><span class="s3">, <a href="https://wiki.archivematica.org/Macromedia_FLV"><span class="s2">FLV</span></a>, <a href="https://wiki.archivematica.org/Quicktime_(video)"><span class="s2">MOV</span></a>, <a href="https://wiki.archivematica.org/MPEG-1_and_MPEG-2"><span class="s2">MPEG-1</span></a>, <a href="https://wiki.archivematica.org/MPEG-1_and_MPEG-2"><span class="s2">MPEG-2</span></a>, <a href="https://wiki.archivematica.org/MPEG-4"><span class="s2">MPEG-4</span></a>, <a href="https://wiki.archivematica.org/Shockwave_Flash_file"><span class="s2">SWF</span></a>, <a href="https://wiki.archivematica.org/Windows_Media_Player_file"><span class="s2">WMV</span></a></span></p>\r\n</td>\r\n<td class="td11" valign="middle">\r\n<p class="p1"><span class="s1">FFV1/LPCM in MKV</span></p>\r\n</td>\r\n<td class="td11" valign="middle">\r\n<p class="p1"><span class="s1">MP4</span></p>\r\n</td>\r\n<td class="td12" valign="middle">\r\n<p class="p1"><a href="https://ffmpeg.org/" target="_blank">FFmpeg</a></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class="td5" valign="middle">\r\n<p class="p3"><span class="s1">Arquivos processados no Word</span></p>\r\n</td>\r\n<td class="td6" valign="middle">\r\n<p class="p3"><span class="s1"><a href="https://wiki.archivematica.org/Microsoft_Word_for_Windows">DOC</a></span><span class="s3">, <a href="https://wiki.archivematica.org/Corel_WordPerfect"><span class="s2">WPD</span></a>, <a href="https://wiki.archivematica.org/Rich_Text_Format"><span class="s2">RTF</span></a></span></p>\r\n</td>\r\n<td class="td7" valign="middle">\r\n<p class="p1"><span class="s1">Formato original</span></p>\r\n</td>\r\n<td class="td7" valign="middle">\r\n<p class="p1"><span class="s1">Formato original</span></p>\r\n</td>\r\n<td class="td8" valign="middle">\r\n<p class="p1"><span class="s1">Buscando ferramenta</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style="text-align: justify;"> </p>', '', 1, 9, '2016-07-06 23:07:40', 448, 'Joomla', '2016-07-07 00:30:17', 448, 0, '0000-00-00 00:00:00', '2016-07-06 23:07:40', '0000-00-00 00:00:00', '[]', '[]', '{}', 5, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":"","tags":null}', 1, 'pt-BR', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `pjgca_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `pjgca_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pjgca_content_frontpage`
--

INSERT INTO `pjgca_content_frontpage` (`content_id`, `ordering`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_content_rating`
--

CREATE TABLE IF NOT EXISTS `pjgca_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_content_types`
--

CREATE TABLE IF NOT EXISTS `pjgca_content_types` (
  `type_id` int(10) unsigned NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pjgca_content_types`
--

INSERT INTO `pjgca_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(4, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(6, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(9, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(11, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(12, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(13, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `pjgca_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_extensions`
--

CREATE TABLE IF NOT EXISTS `pjgca_extensions` (
  `extension_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=10003 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pjgca_extensions`
--

INSERT INTO `pjgca_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"pt-BR","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"0","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"0","show_readmore_title":"0","readmore_limit":"100","show_tags":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_featured":"show","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"0","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":"","filename":"simplepie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"https:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"4cf7d95a01c95268e4732de5611e4846"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":"","filename":"mod_finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":"","filename":"mod_version"}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.12","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2016","author":"Ephox Corporation","copyright":"Ephox Corporation","authorEmail":"N\\/A","authorUrl":"http:\\/\\/www.tinymce.com","version":"4.3.3","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"mode":"1","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `pjgca_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 1, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '{"detect_browser":"0","automatic_change":"1","item_associations":"1","remove_default_prefix":"0","lang_cookie":"0","alternate_meta":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 1, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":"","filename":"highlight"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":"","filename":"cookie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{"name":"plg_system_updatenotification","type":"plugin","creationDate":"May 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION","group":"","filename":"updatenotification"}', '{"lastrun":1467889775}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_module","type":"plugin","creationDate":"October 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_MODULE_XML_DESCRIPTION","group":"","filename":"module"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{"name":"plg_system_stats","type":"plugin","creationDate":"November 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_STATS_XML_DESCRIPTION","group":"","filename":"stats"}', '{"mode":3,"lastrun":1467848578,"unique_id":"a115ca33b606160c28b04b0ed800b5fce2f32b53","interval":12}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"November 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"November 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"April 2016","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.1","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'PortugusdoBrasilpt-BR', 'language', 'pt-BR', '', 0, 1, 0, 0, '{"name":"Portugu\\u00eas do Brasil (pt-BR)","type":"language","creationDate":"2016-04-07","author":"Equipe de Tradu\\u00e7\\u00e3o Portugu\\u00eas Brasileiro","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.1.1","description":"pt-BR site language","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'PortugusdoBrasilpt-BR', 'language', 'pt-BR', '', 1, 1, 0, 0, '{"name":"Portugu\\u00eas do Brasil (pt-BR)","type":"language","creationDate":"2016-04-07","author":"Equipe de Tradu\\u00e7\\u00e3o Portugu\\u00eas do Brasil","copyright":"Copyright (C) 2005-2016 Open Source Matters. Todos os direitos reservados.","authorEmail":"pt-br@joomlacarioca.com.br","authorUrl":"http:\\/\\/brasil.joomla.com","version":"3.5.1.1","description":"Brazilian Portuguese Site language for Joomla 3. 5. 0","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'Pacote do Idioma Português do Brasil (pt-BR)', 'package', 'pkg_pt-BR', '', 0, 1, 1, 0, '{"name":"Pacote do Idioma Portugu\\u00eas do Brasil (pt-BR)","type":"package","creationDate":"2016-04-07","author":"Equipe de Tradu\\u00e7\\u00e3o Portugu\\u00eas do Brasil","copyright":"","authorEmail":"pt-br@joomlacarioca.com.br","authorUrl":"http:\\/\\/brasil.joomla.com","version":"3.5.1.1","description":"\\n      <div style=\\"text-align:left;\\">\\n  <h2>Pacote de Idioma Portugu\\u00eas Brasileiro (pt-BR) completo para Joomla! 3.5.1 instalado com sucesso!<\\/h2>\\n  <h3>Vers\\u00e3o 3.5.1v1 <\\/h3>\\n  <p>Por favor, informe qualquer problema ou assunto relacionado encontrado na p\\u00e1gina <a href=\\"https:\\/\\/www.facebook.com\\/groups\\/traduzjoomla\\/\\" target=\\"_blank\\">Grupo Tradu\\u00e7\\u00f5es Joomla pt-BR<\\/a> no Facebook.<\\/p>\\n  <p>Traduzido pela <a href=\\"http:\\/\\/brasil.joomla.com\\/como-participar\\/9-traducao-no-projeto\\" target=\\"_blank\\">Equipe de Tradu\\u00e7\\u00e3o Portugu\\u00eas Brasileiro<\\/a>.<\\/p>\\n  <h2>Successfully installed the Full Brazilian Portugues (pt-BR) Language Pack for Joomla! 3.5.1<\\/h2>\\n  <h3>Version 3.5.1v1<\\/h3>\\n  <p>Please report any bugs or issues at the <a href=\\"https:\\/\\/www.facebook.com\\/groups\\/traduzjoomla\\/\\" target=\\"_blank\\">pt-BR Translation Group<\\/a> Facebook page.<\\/p>\\n  <p>Translated by the <a href=\\"http:\\/\\/brasil.joomla.com\\/como-participar\\/9-traducao-no-projeto\\" target=\\"_blank\\">Brazilian Portuguese Translation Team<\\/a>.<\\/p>\\n  <\\/div>\\n      ","group":"","filename":"pkg_pt-BR"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_finder_filters`
--

CREATE TABLE IF NOT EXISTS `pjgca_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_finder_links`
--

CREATE TABLE IF NOT EXISTS `pjgca_finder_links` (
  `link_id` int(10) unsigned NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `pjgca_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `pjgca_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `pjgca_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `pjgca_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `pjgca_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `pjgca_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `pjgca_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `pjgca_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `pjgca_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `pjgca_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `pjgca_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `pjgca_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `pjgca_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `pjgca_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `pjgca_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `pjgca_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `pjgca_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pjgca_finder_taxonomy`
--

INSERT INTO `pjgca_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `pjgca_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_finder_terms`
--

CREATE TABLE IF NOT EXISTS `pjgca_finder_terms` (
  `term_id` int(10) unsigned NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `pjgca_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pjgca_finder_terms_common`
--

INSERT INTO `pjgca_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `pjgca_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `pjgca_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_finder_types`
--

CREATE TABLE IF NOT EXISTS `pjgca_finder_types` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_languages`
--

CREATE TABLE IF NOT EXISTS `pjgca_languages` (
  `lang_id` int(11) unsigned NOT NULL,
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pjgca_languages`
--

INSERT INTO `pjgca_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 2),
(2, 'pt-BR', 'Português Brasileiro (pt-BR)', 'Inglês (UK)', 'pt', 'pt_br', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_menu`
--

CREATE TABLE IF NOT EXISTS `pjgca_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pjgca_menu`
--

INSERT INTO `pjgca_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 47, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 29, 30, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 31, 32, 0, '*', 1),
(18, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 33, 34, 0, '*', 1),
(19, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 35, 36, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 37, 38, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 39, 40, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 41, 42, 1, '*', 0),
(102, 'mainmenu-en-gb', 'Home', 'home-en-gb', '', 'home-en-gb', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","orderby_pri":"","orderby_sec":"front","order_date":"","multi_column_order":"1","show_pagination":"2","show_pagination_results":"1","show_noauth":"","article-allow_ratings":"","article-allow_comments":"","show_feed_link":"1","feed_summary":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":1,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 43, 44, 1, 'en-GB', 0),
(103, 'mainmenu-pt-br', 'Início', 'home-pt-br', '', 'home-pt-br', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","orderby_pri":"","orderby_sec":"front","order_date":"","multi_column_order":"1","show_pagination":"2","show_pagination_results":"1","show_noauth":"","article-allow_ratings":"","article-allow_comments":"","show_feed_link":"1","feed_summary":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":1,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 45, 46, 1, 'pt-BR', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_menu_types`
--

CREATE TABLE IF NOT EXISTS `pjgca_menu_types` (
  `id` int(10) unsigned NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pjgca_menu_types`
--

INSERT INTO `pjgca_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 'mainmenu-en-gb', 'Main Menu (en-GB)', 'The main menu for the site in language English (en-GB)'),
(3, 'mainmenu-pt-br', 'Main Menu (pt-BR)', 'The main menu for the site in language Português Brasileiro (pt-BR)');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_messages`
--

CREATE TABLE IF NOT EXISTS `pjgca_messages` (
  `message_id` int(10) unsigned NOT NULL,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `pjgca_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_modules`
--

CREATE TABLE IF NOT EXISTS `pjgca_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pjgca_modules`
--

INSERT INTO `pjgca_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"0","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 0, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","usetext":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 54, 'Language Switcher', '', '', 0, 'position-0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_languages', 1, 0, '{"header_text":"","footer_text":"","dropdown":"0","image":"1","inline":"1","show_active":"1","full_name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(88, 55, 'Main menu en-GB', '', '', 0, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{"menutype":"mainmenu-en-gb","startLevel":"0","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, 'en-GB'),
(89, 58, 'Main menu pt-BR', '', '', 0, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{"menutype":"mainmenu-pt-br","startLevel":"0","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, 'pt-BR');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_modules_menu`
--

CREATE TABLE IF NOT EXISTS `pjgca_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pjgca_modules_menu`
--

INSERT INTO `pjgca_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `pjgca_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_overrider`
--

CREATE TABLE IF NOT EXISTS `pjgca_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_postinstall_messages`
--

CREATE TABLE IF NOT EXISTS `pjgca_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pjgca_postinstall_messages`
--

INSERT INTO `pjgca_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_redirect_links`
--

CREATE TABLE IF NOT EXISTS `pjgca_redirect_links` (
  `id` int(10) unsigned NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_schemas`
--

CREATE TABLE IF NOT EXISTS `pjgca_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pjgca_schemas`
--

INSERT INTO `pjgca_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.5.1-2016-03-29');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_session`
--

CREATE TABLE IF NOT EXISTS `pjgca_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pjgca_session`
--

INSERT INTO `pjgca_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('d036c4irtn98iel3gp0qocdqh2', 0, 1, '1467896092', 'joomla|s:1620:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTozO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTQ2Nzg5NjA5MjtzOjQ6Imxhc3QiO2k6MTQ2Nzg5NjA5MjtzOjM6Im5vdyI7aToxNDY3ODk2MDkyO31zOjU6InRva2VuIjtzOjMyOiJBTXRGeGZtdzgzbzRKZDhTUlRIYXdpY2FBOHZrS1NidyI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mjp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7Tzo1OiJKVXNlciI6MjY6e3M6OToiACoAaXNSb290IjtiOjA7czoyOiJpZCI7aTowO3M6NDoibmFtZSI7TjtzOjg6InVzZXJuYW1lIjtOO3M6NToiZW1haWwiO047czo4OiJwYXNzd29yZCI7TjtzOjE0OiJwYXNzd29yZF9jbGVhciI7czowOiIiO3M6NToiYmxvY2siO047czo5OiJzZW5kRW1haWwiO2k6MDtzOjEyOiJyZWdpc3RlckRhdGUiO047czoxMzoibGFzdHZpc2l0RGF0ZSI7TjtzOjEwOiJhY3RpdmF0aW9uIjtOO3M6NjoicGFyYW1zIjtOO3M6NjoiZ3JvdXBzIjthOjE6e2k6MDtzOjE6IjkiO31zOjU6Imd1ZXN0IjtpOjE7czoxMzoibGFzdFJlc2V0VGltZSI7TjtzOjEwOiJyZXNldENvdW50IjtOO3M6MTI6InJlcXVpcmVSZXNldCI7TjtzOjEwOiIAKgBfcGFyYW1zIjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjI6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MDp7fXM6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjE0OiIAKgBfYXV0aEdyb3VwcyI7YToyOntpOjA7aToxO2k6MTtpOjk7fXM6MTQ6IgAqAF9hdXRoTGV2ZWxzIjthOjM6e2k6MDtpOjE7aToxO2k6MTtpOjI7aTo1O31zOjE1OiIAKgBfYXV0aEFjdGlvbnMiO047czoxMjoiACoAX2Vycm9yTXNnIjtOO3M6MTM6IgAqAHVzZXJIZWxwZXIiO086MTg6IkpVc2VyV3JhcHBlckhlbHBlciI6MDp7fXM6MTA6IgAqAF9lcnJvcnMiO2E6MDp7fXM6MzoiYWlkIjtpOjA7fXM6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InF1ZXVlIjtOO319fXM6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=";', 0, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_tags`
--

CREATE TABLE IF NOT EXISTS `pjgca_tags` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pjgca_tags`
--

INSERT INTO `pjgca_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 42, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_template_styles`
--

CREATE TABLE IF NOT EXISTS `pjgca_template_styles` (
  `id` int(10) unsigned NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pjgca_template_styles`
--

INSERT INTO `pjgca_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.png","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '1', 'protostar - Default', '{"templateColor":"#ff8040","templateBackgroundColor":"#f4f6f7","logoFile":"images\\/logoarchivematica.png","sitetitle":"","sitedescription":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_ucm_base`
--

CREATE TABLE IF NOT EXISTS `pjgca_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_ucm_content`
--

CREATE TABLE IF NOT EXISTS `pjgca_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_ucm_history`
--

CREATE TABLE IF NOT EXISTS `pjgca_ucm_history` (
  `version_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pjgca_ucm_history`
--

INSERT INTO `pjgca_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 8, 5, '', '2016-07-06 23:07:40', 0, 558, '542cb6415f7e4de9cee9e5433f0dc78b684d75c8', '{"id":8,"asset_id":56,"parent_id":"1","lft":"11","rgt":12,"level":1,"path":null,"extension":"com_content","title":"Category (en-gb)","alias":"category-en-gb","note":null,"description":"","published":1,"checked_out":null,"checked_out_time":null,"access":1,"params":"{\\"target\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"page_title\\":\\"\\",\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":0,"created_time":"2016-07-06 23:07:40","modified_user_id":null,"modified_time":"2016-07-06 23:07:40","hits":null,"language":"en-GB","version":null}', 0),
(2, 1, 1, '', '2016-07-06 23:07:40', 0, 1180, '159f55d53849d72be393ef4bed08c60efaa4d0f6', '{"id":1,"asset_id":57,"title":"Article (en-gb)","alias":"article-en-gb","introtext":"<p>Lorem ipsum ad his scripta blandit partiendo, eum fastidii accumsan euripidis in, eum liber hendrerit an. Qui ut wisi vocibus suscipiantur, quo dicit ridens inciderint id. Quo mundi lobortis reformidans eu, legimus senseritdefiniebas an eos. Eu sit tincidunt incorrupte definitionem, vis mutat affert percipit cu, eirmod consectetuer signiferumque eu per. In usu latineequidem dolores. Quo no falli viris intellegam, ut fugit veritus placeratper. Ius id vidit volumus mandamus, vide veritus democritum te nec, ei eosdebet libris consulatu.<\\/p>","fulltext":"","state":1,"catid":8,"created":"2016-07-06 23:07:40","created_by":"448","created_by_alias":"Joomla","modified":"2016-07-06 23:07:40","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-07-06 23:07:40","publish_down":"0000-00-00 00:00:00","images":"[]","urls":"[]","attribs":"{}","version":1,"ordering":null,"metakey":"","metadesc":"","access":1,"hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\",\\"tags\\":null}","featured":1,"language":"en-GB","xreference":null}', 0),
(3, 9, 5, '', '2016-07-06 23:07:40', 0, 560, 'a5778e45a94bca0147a80a9477bfa1104474ead4', '{"id":9,"asset_id":59,"parent_id":"1","lft":"13","rgt":14,"level":1,"path":null,"extension":"com_content","title":"Categoria (pt-br)","alias":"categoria-pt-br","note":null,"description":"","published":1,"checked_out":null,"checked_out_time":null,"access":1,"params":"{\\"target\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"page_title\\":\\"\\",\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":0,"created_time":"2016-07-06 23:07:40","modified_user_id":null,"modified_time":"2016-07-06 23:07:40","hits":null,"language":"pt-BR","version":null}', 0),
(4, 2, 1, '', '2016-07-06 23:07:40', 0, 1178, 'e4015588047366ffc7b88e15bc7cb07e23bd6049', '{"id":2,"asset_id":60,"title":"Artigo (pt-br)","alias":"artigo-pt-br","introtext":"<p>Lorem ipsum ad his scripta blandit partiendo, eum fastidii accumsan euripidis in, eum liber hendrerit an. Qui ut wisi vocibus suscipiantur, quo dicit ridens inciderint id. Quo mundi lobortis reformidans eu, legimus senseritdefiniebas an eos. Eu sit tincidunt incorrupte definitionem, vis mutat affert percipit cu, eirmod consectetuer signiferumque eu per. In usu latineequidem dolores. Quo no falli viris intellegam, ut fugit veritus placeratper. Ius id vidit volumus mandamus, vide veritus democritum te nec, ei eosdebet libris consulatu.<\\/p>","fulltext":"","state":1,"catid":9,"created":"2016-07-06 23:07:40","created_by":"448","created_by_alias":"Joomla","modified":"2016-07-06 23:07:40","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-07-06 23:07:40","publish_down":"0000-00-00 00:00:00","images":"[]","urls":"[]","attribs":"{}","version":1,"ordering":null,"metakey":"","metadesc":"","access":1,"hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\",\\"tags\\":null}","featured":1,"language":"pt-BR","xreference":null}', 0),
(5, 1, 1, '', '2016-07-06 23:13:01', 448, 14577, 'f569e20ede7ac6c85076f8e5b2013d02e36981c2', '{"id":1,"asset_id":"57","title":"Format Policy Registry (FPR)","alias":"article-en-gb","introtext":"<p>\\u00a0<\\/p>\\r\\n<h1 class=\\"p1\\"><span class=\\"s1\\">Format policies<\\/span><\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p class=\\"p1\\" style=\\"text-align: justify;\\"><span class=\\"s1\\">Format Policies indicate what tool to run when normalizing for a given purpose (access, preservation) when a specific File Identification Tool identifies a specific File Format. They can be thought of as analogous to Virus Definitions, which need to be updated periodically in an Archivematica installation in order to ensure the efficacy of the virus scanning micro-service. Similarly, software security updates are downloaded at the operating system level, to keep the host machine secure.<\\/span><\\/p>\\r\\n<p class=\\"p1\\" style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<table class=\\"t1\\" style=\\"margin-left: auto; margin-right: auto;\\" border=\\"1\\" cellspacing=\\"0\\" cellpadding=\\"0\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td class=\\"td1\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><b>Media type<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td2\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><b>File formats<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td3\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><b>Preservation format(s)<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td3\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><b>Access format(s)<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td4\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><b>Normalization tool<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Audio\\">Audio<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/AC-3_Compressed_Audio_(Dolby_Digital)\\">AC3<\\/a><\\/span><span class=\\"s3\\">, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Audio_Interchange_File_Format\\"><span class=\\"s2\\">AIFF<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/MPEG-1_Audio,_Layer_3\\"><span class=\\"s2\\">MP3<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Waveform_Audio\\"><span class=\\"s2\\">WAV<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Windows_Media_Audio\\"><span class=\\"s2\\">WMA<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">WAVE (LPCM)<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">MP3<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">FFmpeg<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Email\\">Email<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/PST\\">PST<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">MBOX<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">MBOX<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">readpst<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Email\\">Email<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Maildir\\">Maildir<\\/a><\\/span><span class=\\"s3\\">**<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">MBOX<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">md2mb.py<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Office_Open_XML\\">Office Open XML<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">DOCX, PPTX, XLSX<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Tool search in progress<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Plain_text\\">Plain text<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Plain_text_file\\">TXT<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">None<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Portable_Document_Format\\">Portable Document Format<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Portable_Document_Format\\">PDF<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">PDF\\/A<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Ghostscript<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Presentation_files\\">Presentation files<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Microsoft_Powerpoint_Presentation\\">PPT<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">PDF<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Tool search in progress<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Raster_images\\">Raster images<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Microsoft_Windows_Bitmap_Image_file\\">BMP<\\/a><\\/span><span class=\\"s3\\">, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Graphics_Interchange_Format\\"><span class=\\"s2\\">GIF<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Joint_Photographic_Experts_Group\\"><span class=\\"s2\\">JPG<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/JPEG2000\\"><span class=\\"s2\\">JP2<\\/span><\\/a>*, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Macintosh_PICT_Image\\"><span class=\\"s2\\">PCT<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Portable_Network_Graphics\\"><span class=\\"s2\\">PNG<\\/span><\\/a>*, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Adobe_Photoshop\\"><span class=\\"s2\\">PSD<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Tagged_Image_File_Format\\"><span class=\\"s2\\">TIFF<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Truevision_TARGA_file\\"><span class=\\"s2\\">TGA<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Uncompressed TIFF<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">JPEG<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">ImageMagick<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Raw_camera_files\\">Raw camera files<\\/a><\\/span><span class=\\"s3\\">\\/<a href=\\"https:\\/\\/wiki.archivematica.org\\/Digital_Negative_format\\"><span class=\\"s2\\">Digital Negative format<\\/span><\\/a>**<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">3FR, ARW, CR2, CRW, DCR, DNG, ERF, KDC, MRW, NEF, ORF, PEF, RAF, RAW, X3F<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">JPEG<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">ImageMagick\\/UFRaw<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Spreadsheets\\">Spreadsheets<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Microsoft_Excel_Workbook\\">XLS<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">None<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Vector_images\\">Vector images<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Adobe_Illustrator_drawing\\">AI<\\/a><\\/span><span class=\\"s3\\">, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Encapsulated_PostScript\\"><span class=\\"s2\\">EPS<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Scalable_Vector_Graphics\\"><span class=\\"s2\\">SVG<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">SVG<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">PDF<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Inkscape<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Video\\">Video<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Audio\\/Video_Interleaved_Format\\">AVI<\\/a><\\/span><span class=\\"s3\\">, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Macromedia_FLV\\"><span class=\\"s2\\">FLV<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Quicktime_(video)\\"><span class=\\"s2\\">MOV<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/MPEG-1_and_MPEG-2\\"><span class=\\"s2\\">MPEG-1<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/MPEG-1_and_MPEG-2\\"><span class=\\"s2\\">MPEG-2<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/MPEG-4\\"><span class=\\"s2\\">MPEG-4<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Shockwave_Flash_file\\"><span class=\\"s2\\">SWF<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Windows_Media_Player_file\\"><span class=\\"s2\\">WMV<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">FFV1\\/LPCM in MKV<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">MP4<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">FFmpeg<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Word_processing_files\\">Word processing files<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Microsoft_Word_for_Windows\\">DOC<\\/a><\\/span><span class=\\"s3\\">, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Corel_WordPerfect\\"><span class=\\"s2\\">WPD<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Rich_Text_Format\\"><span class=\\"s2\\">RTF<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Tool search in progress***<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p class=\\"p1\\" style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<ul class=\\"ul1\\">\\r\\n<li class=\\"li1\\"><span class=\\"s1\\">(*) PNG and JPEG2000 are not normalized to a preservation format<\\/span><\\/li>\\r\\n<li class=\\"li1\\"><span class=\\"s1\\">(**) in development<\\/span><\\/li>\\r\\n<li class=\\"li1\\"><span class=\\"s1\\">(***) See Word processing formats, below<\\/span><\\/li>\\r\\n<\\/ul>","fulltext":"","state":"1","catid":"8","created":"2016-07-06 23:07:40","created_by":"448","created_by_alias":"Joomla","modified":"2016-07-06 23:13:01","modified_by":"448","checked_out":"448","checked_out_time":"2016-07-06 23:08:23","publish_up":"2016-07-06 23:07:40","publish_down":"0000-00-00 00:00:00","images":"[]","urls":"[]","attribs":"{}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\",\\"tags\\":null}","featured":"1","language":"en-GB","xreference":""}', 0),
(6, 1, 1, '', '2016-07-06 23:18:10', 448, 14994, '763cc0e62f4d6340b86d3ebcfc0a6b36ad372898', '{"id":1,"asset_id":"57","title":"Format Policy Registry (FPR)","alias":"article-en-gb","introtext":"<p>\\u00a0<\\/p>\\r\\n<h1 class=\\"p1\\"><span class=\\"s1\\">Format policies<\\/span><\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p class=\\"p1\\" style=\\"text-align: justify;\\"><span class=\\"s1\\">Format Policies indicate what tool to run when normalizing for a given purpose (access, preservation) when a specific File Identification Tool identifies a specific File Format. They can be thought of as analogous to Virus Definitions, which need to be updated periodically in an Archivematica installation in order to ensure the efficacy of the virus scanning micro-service. Similarly, software security updates are downloaded at the operating system level, to keep the host machine secure.<\\/span><\\/p>\\r\\n<p class=\\"p1\\" style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<table class=\\"t1\\" style=\\"margin-left: auto; margin-right: auto;\\" border=\\"1\\" cellspacing=\\"0\\" cellpadding=\\"0\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td class=\\"td1\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><b>Media type<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td2\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><b>File formats<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td3\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><b>Preservation format(s)<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td3\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><b>Access format(s)<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td4\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><b>Normalization tool<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Audio\\">Audio<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/AC-3_Compressed_Audio_(Dolby_Digital)\\">AC3<\\/a><\\/span><span class=\\"s3\\">, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Audio_Interchange_File_Format\\"><span class=\\"s2\\">AIFF<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/MPEG-1_Audio,_Layer_3\\"><span class=\\"s2\\">MP3<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Waveform_Audio\\"><span class=\\"s2\\">WAV<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Windows_Media_Audio\\"><span class=\\"s2\\">WMA<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">WAVE (LPCM)<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">MP3<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"https:\\/\\/ffmpeg.org\\/\\" target=\\"_blank\\">FFmpeg<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Email\\">Email<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/PST\\">PST<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">MBOX<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">MBOX<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"http:\\/\\/www.five-ten-sg.com\\/libpst\\/rn01re01.html\\" target=\\"_blank\\">readpst<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Email\\">Email<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Maildir\\">Maildir<\\/a><\\/span><span class=\\"s3\\">**<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">MBOX<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"https:\\/\\/gist.github.com\\/nyergler\\/1709069\\" target=\\"_blank\\"><span class=\\"s1\\">md2mb.py<\\/span><\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Office_Open_XML\\">Office Open XML<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">DOCX, PPTX, XLSX<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Tool search in progress<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Plain_text\\">Plain text<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Plain_text_file\\">TXT<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">None<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Portable_Document_Format\\">Portable Document Format<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Portable_Document_Format\\">PDF<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">PDF\\/A<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"http:\\/\\/www.ghostscript.com\\/\\" target=\\"_blank\\">Ghostscript<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Presentation_files\\">Presentation files<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Microsoft_Powerpoint_Presentation\\">PPT<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">PDF<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Tool search in progress<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Raster_images\\">Raster images<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Microsoft_Windows_Bitmap_Image_file\\">BMP<\\/a><\\/span><span class=\\"s3\\">, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Graphics_Interchange_Format\\"><span class=\\"s2\\">GIF<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Joint_Photographic_Experts_Group\\"><span class=\\"s2\\">JPG<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/JPEG2000\\"><span class=\\"s2\\">JP2<\\/span><\\/a>*, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Macintosh_PICT_Image\\"><span class=\\"s2\\">PCT<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Portable_Network_Graphics\\"><span class=\\"s2\\">PNG<\\/span><\\/a>*, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Adobe_Photoshop\\"><span class=\\"s2\\">PSD<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Tagged_Image_File_Format\\"><span class=\\"s2\\">TIFF<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Truevision_TARGA_file\\"><span class=\\"s2\\">TGA<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Uncompressed TIFF<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">JPEG<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"http:\\/\\/www.imagemagick.org\\/script\\/index.php\\" target=\\"_blank\\">ImageMagick<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Raw_camera_files\\">Raw camera files<\\/a><\\/span><span class=\\"s3\\">\\/<a href=\\"https:\\/\\/wiki.archivematica.org\\/Digital_Negative_format\\"><span class=\\"s2\\">Digital Negative format<\\/span><\\/a>**<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">3FR, ARW, CR2, CRW, DCR, DNG, ERF, KDC, MRW, NEF, ORF, PEF, RAF, RAW, X3F<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">JPEG<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><a href=\\"http:\\/\\/www.imagemagick.org\\/script\\/index.php\\" target=\\"_blank\\">ImageMagick<\\/a>\\/UFRaw<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Spreadsheets\\">Spreadsheets<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Microsoft_Excel_Workbook\\">XLS<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">None<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Vector_images\\">Vector images<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Adobe_Illustrator_drawing\\">AI<\\/a><\\/span><span class=\\"s3\\">, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Encapsulated_PostScript\\"><span class=\\"s2\\">EPS<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Scalable_Vector_Graphics\\"><span class=\\"s2\\">SVG<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">SVG<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">PDF<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"https:\\/\\/inkscape.org\\/pt\\/\\" target=\\"_blank\\">Inkscape<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Video\\">Video<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Audio\\/Video_Interleaved_Format\\">AVI<\\/a><\\/span><span class=\\"s3\\">, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Macromedia_FLV\\"><span class=\\"s2\\">FLV<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Quicktime_(video)\\"><span class=\\"s2\\">MOV<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/MPEG-1_and_MPEG-2\\"><span class=\\"s2\\">MPEG-1<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/MPEG-1_and_MPEG-2\\"><span class=\\"s2\\">MPEG-2<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/MPEG-4\\"><span class=\\"s2\\">MPEG-4<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Shockwave_Flash_file\\"><span class=\\"s2\\">SWF<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Windows_Media_Player_file\\"><span class=\\"s2\\">WMV<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">FFV1\\/LPCM in MKV<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">MP4<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"https:\\/\\/ffmpeg.org\\/\\" target=\\"_blank\\">FFmpeg<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Word_processing_files\\">Word processing files<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Microsoft_Word_for_Windows\\">DOC<\\/a><\\/span><span class=\\"s3\\">, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Corel_WordPerfect\\"><span class=\\"s2\\">WPD<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Rich_Text_Format\\"><span class=\\"s2\\">RTF<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Tool search in progress***<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p class=\\"p1\\" style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<ul class=\\"ul1\\">\\r\\n<li class=\\"li1\\"><span class=\\"s1\\">(*) PNG and JPEG2000 are not normalized to a preservation format<\\/span><\\/li>\\r\\n<li class=\\"li1\\"><span class=\\"s1\\">(**) in development<\\/span><\\/li>\\r\\n<li class=\\"li1\\"><span class=\\"s1\\">(***) See Word processing formats, below<\\/span><\\/li>\\r\\n<\\/ul>","fulltext":"","state":"1","catid":"8","created":"2016-07-06 23:07:40","created_by":"448","created_by_alias":"Joomla","modified":"2016-07-06 23:18:10","modified_by":"448","checked_out":"448","checked_out_time":"2016-07-06 23:13:31","publish_up":"2016-07-06 23:07:40","publish_down":"0000-00-00 00:00:00","images":"[]","urls":"[]","attribs":"{}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\",\\"tags\\":null}","featured":"1","language":"en-GB","xreference":""}', 0);
INSERT INTO `pjgca_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(7, 2, 1, '', '2016-07-06 23:40:58', 448, 14620, '53c1df943bfe62eadd86df59fc802ca2f128ef1b', '{"id":2,"asset_id":"60","title":"Pol\\u00edticas de Formato de Registros","alias":"artigo-pt-br","introtext":"<p style=\\"text-align: justify;\\">Pol\\u00edticas de formato indicam qual ferramenta deve ser executada quanto a normaliza\\u00e7\\u00e3o para um determinado prop\\u00f3sito (acesso, preserva\\u00e7\\u00e3o). Quando uma ferramenta de Identifica\\u00e7\\u00e3o de arquivo identifica um formato de arquivo espec\\u00edfico. Eles podem ser semelhantes as defini\\u00e7\\u00f5es de v\\u00edrus, que necessitam ser atualizadas periodicamente, de uma instala\\u00e7\\u00e3o Archivematica, a fim de assegurar a efic\\u00e1cia servi\\u00e7o de verifica\\u00e7\\u00e3o de v\\u00edrus. Da mesma forma, as atualiza\\u00e7\\u00f5es de seguran\\u00e7a de software s\\u00e3o baixados no n\\u00edvel do sistema operacional, para manter a m\\u00e1quina host segura.<\\/p>\\r\\n<table class=\\"t1\\" style=\\"margin-left: auto; margin-right: auto;\\" border=\\"1\\" cellspacing=\\"0\\" cellpadding=\\"0\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td class=\\"td1\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><b>Tipo de Media<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td2\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><b>Formato de Arquivo<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td3\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><b>Formato de Preserva\\u00e7\\u00e3o<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td3\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><b>Formato de Acesso<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td4\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><b>Ferramenta de Normaliza\\u00e7\\u00e3o<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Audio\\">Audio<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/AC-3_Compressed_Audio_(Dolby_Digital)\\">AC3<\\/a><\\/span><span class=\\"s3\\">, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Audio_Interchange_File_Format\\"><span class=\\"s2\\">AIFF<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/MPEG-1_Audio,_Layer_3\\"><span class=\\"s2\\">MP3<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Waveform_Audio\\"><span class=\\"s2\\">WAV<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Windows_Media_Audio\\"><span class=\\"s2\\">WMA<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">WAVE (LPCM)<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">MP3<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"https:\\/\\/ffmpeg.org\\/\\" target=\\"_blank\\">FFmpeg<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Email\\">Email<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/PST\\">PST<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">MBOX<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">MBOX<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"http:\\/\\/www.five-ten-sg.com\\/libpst\\/rn01re01.html\\" target=\\"_blank\\">readpst<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Email\\">Email<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Maildir\\">Maildir<\\/a><\\/span><span class=\\"s3\\">**<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">MBOX<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"https:\\/\\/gist.github.com\\/nyergler\\/1709069\\" target=\\"_blank\\"><span class=\\"s1\\">md2mb.py<\\/span><\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><a href=\\"https:\\/\\/gist.github.com\\/nyergler\\/1709069\\" target=\\"_blank\\"><span class=\\"s1\\">Office Open XML<\\/span><\\/a><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">DOCX, PPTX, XLSX<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Buscando ferramenta<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\">Texto Simples<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Plain_text_file\\">TXT<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Nenhum<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\">Formato de Documentos portaveis<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Portable_Document_Format\\">PDF<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">PDF\\/A<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"http:\\/\\/www.ghostscript.com\\/\\" target=\\"_blank\\">Ghostscript<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\">Arquivos de Apresenta\\u00e7\\u00e3o<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Microsoft_Powerpoint_Presentation\\">PPT<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">PDF<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Buscando ferramenta<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\">Imagens em BITMAP<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Microsoft_Windows_Bitmap_Image_file\\">BMP<\\/a><\\/span><span class=\\"s3\\">, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Graphics_Interchange_Format\\"><span class=\\"s2\\">GIF<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Joint_Photographic_Experts_Group\\"><span class=\\"s2\\">JPG<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/JPEG2000\\"><span class=\\"s2\\">JP2<\\/span><\\/a>*, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Macintosh_PICT_Image\\"><span class=\\"s2\\">PCT<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Portable_Network_Graphics\\"><span class=\\"s2\\">PNG<\\/span><\\/a>*, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Adobe_Photoshop\\"><span class=\\"s2\\">PSD<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Tagged_Image_File_Format\\"><span class=\\"s2\\">TIFF<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Truevision_TARGA_file\\"><span class=\\"s2\\">TGA<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">TIFF Descomprimido<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">JPEG<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"http:\\/\\/www.imagemagick.org\\/script\\/index.php\\" target=\\"_blank\\">ImageMagick<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\">Arquivos de camera RAW<\\/span><span class=\\"s3\\">\\/<span class=\\"s2\\">Formato de negativos digitais<\\/span>**<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">3FR, ARW, CR2, CRW, DCR, DNG, ERF, KDC, MRW, NEF, ORF, PEF, RAF, RAW, X3F<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">JPEG<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">ImageMagick\\/UFRaw<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\">Planilhas<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Microsoft_Excel_Workbook\\">XLS<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Nenhum<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\">Imagens Vetoriais<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Adobe_Illustrator_drawing\\">AI<\\/a><\\/span><span class=\\"s3\\">, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Encapsulated_PostScript\\"><span class=\\"s2\\">EPS<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Scalable_Vector_Graphics\\"><span class=\\"s2\\">SVG<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">SVG<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">PDF<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"https:\\/\\/inkscape.org\\/pt\\/\\" target=\\"_blank\\">Inkscape<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Video\\">Video<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Audio\\/Video_Interleaved_Format\\">AVI<\\/a><\\/span><span class=\\"s3\\">, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Macromedia_FLV\\"><span class=\\"s2\\">FLV<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Quicktime_(video)\\"><span class=\\"s2\\">MOV<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/MPEG-1_and_MPEG-2\\"><span class=\\"s2\\">MPEG-1<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/MPEG-1_and_MPEG-2\\"><span class=\\"s2\\">MPEG-2<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/MPEG-4\\"><span class=\\"s2\\">MPEG-4<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Shockwave_Flash_file\\"><span class=\\"s2\\">SWF<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Windows_Media_Player_file\\"><span class=\\"s2\\">WMV<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">FFV1\\/LPCM in MKV<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">MP4<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"https:\\/\\/ffmpeg.org\\/\\" target=\\"_blank\\">FFmpeg<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\">Arquivos processados no Word<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Microsoft_Word_for_Windows\\">DOC<\\/a><\\/span><span class=\\"s3\\">, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Corel_WordPerfect\\"><span class=\\"s2\\">WPD<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Rich_Text_Format\\"><span class=\\"s2\\">RTF<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Buscando ferramenta***<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<ul class=\\"ul1\\">\\r\\n<li class=\\"li1\\"><span class=\\"s1\\">(*) PNG e JPEG2000\\u00a0n\\u00e3o s\\u00e3o normalizadas para preserva\\u00e7\\u00e3o de dados<\\/span><\\/li>\\r\\n<li class=\\"li1\\"><span class=\\"s1\\">(**)\\u00a0em desenvolvimento<\\/span><\\/li>\\r\\n<li class=\\"li1\\"><span class=\\"s1\\">(***) See Word processing formats, below<\\/span><\\/li>\\r\\n<\\/ul>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<p class=\\"p3\\"><span class=\\"s3\\">[<a href=\\"https:\\/\\/wiki.archivematica.org\\/index.php?title=Format_policies&amp;action=edit&amp;section=5\\"><span class=\\"s2\\">edit<\\/span><\\/a>]<\\/span><\\/p>","fulltext":"","state":"1","catid":"9","created":"2016-07-06 23:07:40","created_by":"448","created_by_alias":"Joomla","modified":"2016-07-06 23:40:58","modified_by":"448","checked_out":"448","checked_out_time":"2016-07-06 23:19:47","publish_up":"2016-07-06 23:07:40","publish_down":"0000-00-00 00:00:00","images":"[]","urls":"[]","attribs":"{}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\",\\"tags\\":null}","featured":"1","language":"pt-BR","xreference":""}', 0),
(8, 2, 1, '', '2016-07-06 23:41:54', 448, 14422, 'e92e9d4c125a09cd7dfd1b7d80bc926303d6bfef', '{"id":2,"asset_id":"60","title":"Pol\\u00edticas de Formato de Registros","alias":"artigo-pt-br","introtext":"<p style=\\"text-align: justify;\\">Pol\\u00edticas de formato indicam qual ferramenta deve ser executada quanto a normaliza\\u00e7\\u00e3o para um determinado prop\\u00f3sito (acesso, preserva\\u00e7\\u00e3o). Quando uma ferramenta de Identifica\\u00e7\\u00e3o de arquivo identifica um formato de arquivo espec\\u00edfico. Eles podem ser semelhantes as defini\\u00e7\\u00f5es de v\\u00edrus, que necessitam ser atualizadas periodicamente, de uma instala\\u00e7\\u00e3o Archivematica, a fim de assegurar a efic\\u00e1cia servi\\u00e7o de verifica\\u00e7\\u00e3o de v\\u00edrus. Da mesma forma, as atualiza\\u00e7\\u00f5es de seguran\\u00e7a de software s\\u00e3o baixados no n\\u00edvel do sistema operacional, para manter a m\\u00e1quina host segura.<\\/p>\\r\\n<table class=\\"t1\\" style=\\"margin-left: auto; margin-right: auto;\\" border=\\"1\\" cellspacing=\\"0\\" cellpadding=\\"0\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td class=\\"td1\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><b>Tipo de Media<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td2\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><b>Formato de Arquivo<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td3\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><b>Formato de Preserva\\u00e7\\u00e3o<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td3\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><b>Formato de Acesso<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td4\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><b>Ferramenta de Normaliza\\u00e7\\u00e3o<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Audio\\">Audio<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/AC-3_Compressed_Audio_(Dolby_Digital)\\">AC3<\\/a><\\/span><span class=\\"s3\\">, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Audio_Interchange_File_Format\\"><span class=\\"s2\\">AIFF<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/MPEG-1_Audio,_Layer_3\\"><span class=\\"s2\\">MP3<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Waveform_Audio\\"><span class=\\"s2\\">WAV<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Windows_Media_Audio\\"><span class=\\"s2\\">WMA<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">WAVE (LPCM)<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">MP3<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"https:\\/\\/ffmpeg.org\\/\\" target=\\"_blank\\">FFmpeg<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Email\\">Email<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/PST\\">PST<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">MBOX<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">MBOX<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"http:\\/\\/www.five-ten-sg.com\\/libpst\\/rn01re01.html\\" target=\\"_blank\\">readpst<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Email\\">Email<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Maildir\\">Maildir<\\/a><\\/span><span class=\\"s3\\">**<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">MBOX<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"https:\\/\\/gist.github.com\\/nyergler\\/1709069\\" target=\\"_blank\\"><span class=\\"s1\\">md2mb.py<\\/span><\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><a href=\\"https:\\/\\/gist.github.com\\/nyergler\\/1709069\\" target=\\"_blank\\"><span class=\\"s1\\">Office Open XML<\\/span><\\/a><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">DOCX, PPTX, XLSX<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Buscando ferramenta<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\">Texto Simples<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Plain_text_file\\">TXT<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Nenhum<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\">Formato de Documentos portaveis<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Portable_Document_Format\\">PDF<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">PDF\\/A<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"http:\\/\\/www.ghostscript.com\\/\\" target=\\"_blank\\">Ghostscript<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\">Arquivos de Apresenta\\u00e7\\u00e3o<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Microsoft_Powerpoint_Presentation\\">PPT<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">PDF<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Buscando ferramenta<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\">Imagens em BITMAP<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Microsoft_Windows_Bitmap_Image_file\\">BMP<\\/a><\\/span><span class=\\"s3\\">, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Graphics_Interchange_Format\\"><span class=\\"s2\\">GIF<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Joint_Photographic_Experts_Group\\"><span class=\\"s2\\">JPG<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/JPEG2000\\"><span class=\\"s2\\">JP2<\\/span><\\/a>*, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Macintosh_PICT_Image\\"><span class=\\"s2\\">PCT<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Portable_Network_Graphics\\"><span class=\\"s2\\">PNG<\\/span><\\/a>*, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Adobe_Photoshop\\"><span class=\\"s2\\">PSD<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Tagged_Image_File_Format\\"><span class=\\"s2\\">TIFF<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Truevision_TARGA_file\\"><span class=\\"s2\\">TGA<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">TIFF Descomprimido<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">JPEG<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"http:\\/\\/www.imagemagick.org\\/script\\/index.php\\" target=\\"_blank\\">ImageMagick<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\">Arquivos de camera RAW<\\/span><span class=\\"s3\\">\\/<span class=\\"s2\\">Formato de negativos digitais<\\/span>**<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">3FR, ARW, CR2, CRW, DCR, DNG, ERF, KDC, MRW, NEF, ORF, PEF, RAF, RAW, X3F<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">JPEG<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">ImageMagick\\/UFRaw<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\">Planilhas<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Microsoft_Excel_Workbook\\">XLS<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Nenhum<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\">Imagens Vetoriais<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Adobe_Illustrator_drawing\\">AI<\\/a><\\/span><span class=\\"s3\\">, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Encapsulated_PostScript\\"><span class=\\"s2\\">EPS<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Scalable_Vector_Graphics\\"><span class=\\"s2\\">SVG<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">SVG<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">PDF<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"https:\\/\\/inkscape.org\\/pt\\/\\" target=\\"_blank\\">Inkscape<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Video\\">Video<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Audio\\/Video_Interleaved_Format\\">AVI<\\/a><\\/span><span class=\\"s3\\">, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Macromedia_FLV\\"><span class=\\"s2\\">FLV<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Quicktime_(video)\\"><span class=\\"s2\\">MOV<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/MPEG-1_and_MPEG-2\\"><span class=\\"s2\\">MPEG-1<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/MPEG-1_and_MPEG-2\\"><span class=\\"s2\\">MPEG-2<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/MPEG-4\\"><span class=\\"s2\\">MPEG-4<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Shockwave_Flash_file\\"><span class=\\"s2\\">SWF<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Windows_Media_Player_file\\"><span class=\\"s2\\">WMV<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">FFV1\\/LPCM in MKV<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">MP4<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"https:\\/\\/ffmpeg.org\\/\\" target=\\"_blank\\">FFmpeg<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\">Arquivos processados no Word<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Microsoft_Word_for_Windows\\">DOC<\\/a><\\/span><span class=\\"s3\\">, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Corel_WordPerfect\\"><span class=\\"s2\\">WPD<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Rich_Text_Format\\"><span class=\\"s2\\">RTF<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Buscando ferramenta***<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<ul class=\\"ul1\\">\\r\\n<li class=\\"li1\\"><span class=\\"s1\\">(*) PNG e JPEG2000\\u00a0n\\u00e3o s\\u00e3o normalizadas para preserva\\u00e7\\u00e3o de dados<\\/span><\\/li>\\r\\n<li class=\\"li1\\"><span class=\\"s1\\">(**)\\u00a0em desenvolvimento<\\/span><\\/li>\\r\\n<li class=\\"li1\\"><span class=\\"s1\\">(***) See Word processing formats, below<\\/span><\\/li>\\r\\n<\\/ul>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>","fulltext":"","state":"1","catid":"9","created":"2016-07-06 23:07:40","created_by":"448","created_by_alias":"Joomla","modified":"2016-07-06 23:41:54","modified_by":"448","checked_out":"448","checked_out_time":"2016-07-06 23:41:43","publish_up":"2016-07-06 23:07:40","publish_down":"0000-00-00 00:00:00","images":"[]","urls":"[]","attribs":"{}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\",\\"tags\\":null}","featured":"1","language":"pt-BR","xreference":""}', 0),
(9, 1, 1, '', '2016-07-06 23:53:16', 448, 14640, 'f3038693e1584ca26ac34c76bd887c7a53ed5fcc', '{"id":1,"asset_id":"57","title":"Format Policy Registry (FPR)","alias":"article-en-gb","introtext":"<p>\\u00a0<\\/p>\\r\\n<h1 class=\\"p1\\"><span class=\\"s1\\">Format policies<\\/span><\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p class=\\"p1\\" style=\\"text-align: justify;\\"><span class=\\"s1\\">Format Policies indicate what tool to run when normalizing for a given purpose (access, preservation) when a specific File Identification Tool identifies a specific File Format. They can be thought of as analogous to Virus Definitions, which need to be updated periodically in an Archivematica installation in order to ensure the efficacy of the virus scanning micro-service. Similarly, software security updates are downloaded at the operating system level, to keep the host machine secure.<\\/span><\\/p>\\r\\n<p class=\\"p1\\" style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<table class=\\"t1\\" style=\\"margin-left: auto; margin-right: auto;\\" border=\\"1\\" cellspacing=\\"0\\" cellpadding=\\"0\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td class=\\"td1\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><b>Media type<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td2\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><b>File formats<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td3\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><b>Preservation format(s)<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td3\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><b>Access format(s)<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td4\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><b>Normalization tool<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Audio\\">Audio<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/AC-3_Compressed_Audio_(Dolby_Digital)\\">AC3<\\/a><\\/span><span class=\\"s3\\">, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Audio_Interchange_File_Format\\"><span class=\\"s2\\">AIFF<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/MPEG-1_Audio,_Layer_3\\"><span class=\\"s2\\">MP3<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Waveform_Audio\\"><span class=\\"s2\\">WAV<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Windows_Media_Audio\\"><span class=\\"s2\\">WMA<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">WAVE (LPCM)<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">MP3<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"https:\\/\\/ffmpeg.org\\/\\" target=\\"_blank\\">FFmpeg<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Email\\">Email<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/PST\\">PST<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">MBOX<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">MBOX<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"http:\\/\\/www.five-ten-sg.com\\/libpst\\/rn01re01.html\\" target=\\"_blank\\">readpst<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Email\\">Email<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Maildir\\">Maildir<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">MBOX<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"https:\\/\\/gist.github.com\\/nyergler\\/1709069\\" target=\\"_blank\\"><span class=\\"s1\\">md2mb.py<\\/span><\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Office_Open_XML\\">Office Open XML<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">DOCX, PPTX, XLSX<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Tool search in progress<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Plain_text\\">Plain text<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Plain_text_file\\">TXT<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">None<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Portable_Document_Format\\">Portable Document Format<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Portable_Document_Format\\">PDF<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">PDF\\/A<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"http:\\/\\/www.ghostscript.com\\/\\" target=\\"_blank\\">Ghostscript<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Presentation_files\\">Presentation files<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Microsoft_Powerpoint_Presentation\\">PPT<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">PDF<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Tool search in progress<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Raster_images\\">Raster images<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Microsoft_Windows_Bitmap_Image_file\\">BMP<\\/a><\\/span><span class=\\"s3\\">, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Graphics_Interchange_Format\\"><span class=\\"s2\\">GIF<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Joint_Photographic_Experts_Group\\"><span class=\\"s2\\">JPG<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/JPEG2000\\"><span class=\\"s2\\">JP2<\\/span><\\/a>*, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Macintosh_PICT_Image\\"><span class=\\"s2\\">PCT<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Portable_Network_Graphics\\"><span class=\\"s2\\">PNG<\\/span><\\/a>*, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Adobe_Photoshop\\"><span class=\\"s2\\">PSD<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Tagged_Image_File_Format\\"><span class=\\"s2\\">TIFF<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Truevision_TARGA_file\\"><span class=\\"s2\\">TGA<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Uncompressed TIFF<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">JPEG<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"http:\\/\\/www.imagemagick.org\\/script\\/index.php\\" target=\\"_blank\\">ImageMagick<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Raw_camera_files\\">Raw camera files<\\/a><\\/span><span class=\\"s3\\">\\/<a href=\\"https:\\/\\/wiki.archivematica.org\\/Digital_Negative_format\\"><span class=\\"s2\\">Digital Negative format<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">3FR, ARW, CR2, CRW, DCR, DNG, ERF, KDC, MRW, NEF, ORF, PEF, RAF, RAW, X3F<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">JPEG<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><a href=\\"http:\\/\\/www.imagemagick.org\\/script\\/index.php\\" target=\\"_blank\\">ImageMagick<\\/a>\\/UFRaw<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Spreadsheets\\">Spreadsheets<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Microsoft_Excel_Workbook\\">XLS<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">None<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Vector_images\\">Vector images<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Adobe_Illustrator_drawing\\">AI<\\/a><\\/span><span class=\\"s3\\">, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Encapsulated_PostScript\\"><span class=\\"s2\\">EPS<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Scalable_Vector_Graphics\\"><span class=\\"s2\\">SVG<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">SVG<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">PDF<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"https:\\/\\/inkscape.org\\/pt\\/\\" target=\\"_blank\\">Inkscape<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Video\\">Video<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Audio\\/Video_Interleaved_Format\\">AVI<\\/a><\\/span><span class=\\"s3\\">, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Macromedia_FLV\\"><span class=\\"s2\\">FLV<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Quicktime_(video)\\"><span class=\\"s2\\">MOV<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/MPEG-1_and_MPEG-2\\"><span class=\\"s2\\">MPEG-1<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/MPEG-1_and_MPEG-2\\"><span class=\\"s2\\">MPEG-2<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/MPEG-4\\"><span class=\\"s2\\">MPEG-4<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Shockwave_Flash_file\\"><span class=\\"s2\\">SWF<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Windows_Media_Player_file\\"><span class=\\"s2\\">WMV<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">FFV1\\/LPCM in MKV<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">MP4<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"https:\\/\\/ffmpeg.org\\/\\" target=\\"_blank\\">FFmpeg<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Word_processing_files\\">Word processing files<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Microsoft_Word_for_Windows\\">DOC<\\/a><\\/span><span class=\\"s3\\">, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Corel_WordPerfect\\"><span class=\\"s2\\">WPD<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Rich_Text_Format\\"><span class=\\"s2\\">RTF<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Tool search in progress<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p class=\\"p1\\" style=\\"text-align: justify;\\">\\u00a0<\\/p>","fulltext":"","state":"1","catid":"8","created":"2016-07-06 23:07:40","created_by":"448","created_by_alias":"Joomla","modified":"2016-07-06 23:53:16","modified_by":"448","checked_out":"448","checked_out_time":"2016-07-06 23:52:41","publish_up":"2016-07-06 23:07:40","publish_down":"0000-00-00 00:00:00","images":"[]","urls":"[]","attribs":"{}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\",\\"tags\\":null}","featured":"1","language":"en-GB","xreference":""}', 0);
INSERT INTO `pjgca_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(10, 1, 1, '', '2016-07-06 23:53:44', 448, 14638, 'd6725379f6d117deeaa7703d0e80a779574f4c28', '{"id":1,"asset_id":"57","title":"Format Policy Registry (FPR)","alias":"article-en-gb","introtext":"<p>\\u00a0<\\/p>\\r\\n<h1 class=\\"p1\\"><span class=\\"s1\\">Format policies<\\/span><\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p class=\\"p1\\" style=\\"text-align: justify;\\"><span class=\\"s1\\">Format Policies indicate what tool to run when normalizing for a given purpose (access, preservation) when a specific File Identification Tool identifies a specific File Format. They can be thought of as analogous to Virus Definitions, which need to be updated periodically in an Archivematica installation in order to ensure the efficacy of the virus scanning micro-service. Similarly, software security updates are downloaded at the operating system level, to keep the host machine secure.<\\/span><\\/p>\\r\\n<p class=\\"p1\\" style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<table class=\\"t1\\" style=\\"margin-left: auto; margin-right: auto;\\" border=\\"1\\" cellspacing=\\"0\\" cellpadding=\\"0\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td class=\\"td1\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><b>Media type<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td2\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><b>File formats<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td3\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><b>Preservation format(s)<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td3\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><b>Access format(s)<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td4\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><b>Normalization tool<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Audio\\">Audio<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/AC-3_Compressed_Audio_(Dolby_Digital)\\">AC3<\\/a><\\/span><span class=\\"s3\\">, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Audio_Interchange_File_Format\\"><span class=\\"s2\\">AIFF<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/MPEG-1_Audio,_Layer_3\\"><span class=\\"s2\\">MP3<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Waveform_Audio\\"><span class=\\"s2\\">WAV<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Windows_Media_Audio\\"><span class=\\"s2\\">WMA<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">WAVE (LPCM)<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">MP3<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"https:\\/\\/ffmpeg.org\\/\\" target=\\"_blank\\">FFmpeg<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Email\\">Email<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/PST\\">PST<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">MBOX<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">MBOX<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"http:\\/\\/www.five-ten-sg.com\\/libpst\\/rn01re01.html\\" target=\\"_blank\\">readpst<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Email\\">Email<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Maildir\\">Maildir<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">MBOX<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"https:\\/\\/gist.github.com\\/nyergler\\/1709069\\" target=\\"_blank\\"><span class=\\"s1\\">md2mb.py<\\/span><\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Office_Open_XML\\">Office Open XML<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">DOCX, PPTX, XLSX<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Tool search in progress<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Plain_text\\">Plain text<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Plain_text_file\\">TXT<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">None<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Portable_Document_Format\\">Portable Document Format<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Portable_Document_Format\\">PDF<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">PDF\\/A<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"http:\\/\\/www.ghostscript.com\\/\\" target=\\"_blank\\">Ghostscript<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Presentation_files\\">Presentation files<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Microsoft_Powerpoint_Presentation\\">PPT<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">PDF<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Tool search in progress<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Raster_images\\">Raster images<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Microsoft_Windows_Bitmap_Image_file\\">BMP<\\/a><\\/span><span class=\\"s3\\">, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Graphics_Interchange_Format\\"><span class=\\"s2\\">GIF<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Joint_Photographic_Experts_Group\\"><span class=\\"s2\\">JPG<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/JPEG2000\\"><span class=\\"s2\\">JP2<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Macintosh_PICT_Image\\"><span class=\\"s2\\">PCT<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Portable_Network_Graphics\\"><span class=\\"s2\\">PNG<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Adobe_Photoshop\\"><span class=\\"s2\\">PSD<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Tagged_Image_File_Format\\"><span class=\\"s2\\">TIFF<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Truevision_TARGA_file\\"><span class=\\"s2\\">TGA<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Uncompressed TIFF<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">JPEG<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"http:\\/\\/www.imagemagick.org\\/script\\/index.php\\" target=\\"_blank\\">ImageMagick<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Raw_camera_files\\">Raw camera files<\\/a><\\/span><span class=\\"s3\\">\\/<a href=\\"https:\\/\\/wiki.archivematica.org\\/Digital_Negative_format\\"><span class=\\"s2\\">Digital Negative format<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">3FR, ARW, CR2, CRW, DCR, DNG, ERF, KDC, MRW, NEF, ORF, PEF, RAF, RAW, X3F<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">JPEG<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><a href=\\"http:\\/\\/www.imagemagick.org\\/script\\/index.php\\" target=\\"_blank\\">ImageMagick<\\/a>\\/UFRaw<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Spreadsheets\\">Spreadsheets<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Microsoft_Excel_Workbook\\">XLS<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">None<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Vector_images\\">Vector images<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Adobe_Illustrator_drawing\\">AI<\\/a><\\/span><span class=\\"s3\\">, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Encapsulated_PostScript\\"><span class=\\"s2\\">EPS<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Scalable_Vector_Graphics\\"><span class=\\"s2\\">SVG<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">SVG<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">PDF<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"https:\\/\\/inkscape.org\\/pt\\/\\" target=\\"_blank\\">Inkscape<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Video\\">Video<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Audio\\/Video_Interleaved_Format\\">AVI<\\/a><\\/span><span class=\\"s3\\">, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Macromedia_FLV\\"><span class=\\"s2\\">FLV<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Quicktime_(video)\\"><span class=\\"s2\\">MOV<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/MPEG-1_and_MPEG-2\\"><span class=\\"s2\\">MPEG-1<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/MPEG-1_and_MPEG-2\\"><span class=\\"s2\\">MPEG-2<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/MPEG-4\\"><span class=\\"s2\\">MPEG-4<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Shockwave_Flash_file\\"><span class=\\"s2\\">SWF<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Windows_Media_Player_file\\"><span class=\\"s2\\">WMV<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">FFV1\\/LPCM in MKV<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">MP4<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"https:\\/\\/ffmpeg.org\\/\\" target=\\"_blank\\">FFmpeg<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Word_processing_files\\">Word processing files<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Microsoft_Word_for_Windows\\">DOC<\\/a><\\/span><span class=\\"s3\\">, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Corel_WordPerfect\\"><span class=\\"s2\\">WPD<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Rich_Text_Format\\"><span class=\\"s2\\">RTF<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Original format<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Tool search in progress<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p class=\\"p1\\" style=\\"text-align: justify;\\">\\u00a0<\\/p>","fulltext":"","state":"1","catid":"8","created":"2016-07-06 23:07:40","created_by":"448","created_by_alias":"Joomla","modified":"2016-07-06 23:53:44","modified_by":"448","checked_out":"448","checked_out_time":"2016-07-06 23:53:26","publish_up":"2016-07-06 23:07:40","publish_down":"0000-00-00 00:00:00","images":"[]","urls":"[]","attribs":"{}","version":5,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\",\\"tags\\":null}","featured":"1","language":"en-GB","xreference":""}', 0),
(11, 2, 1, '', '2016-07-07 00:29:29', 448, 14033, '7e6a3bc61a5abd80a5ca437dd9c04a431acac408', '{"id":2,"asset_id":"60","title":"Pol\\u00edticas de Formato de Registros","alias":"artigo-pt-br","introtext":"<p style=\\"text-align: justify;\\">Pol\\u00edticas de formato indicam qual ferramenta deve ser executada quanto a normaliza\\u00e7\\u00e3o para um determinado prop\\u00f3sito (acesso, preserva\\u00e7\\u00e3o). Quando uma ferramenta de Identifica\\u00e7\\u00e3o de arquivo identifica um formato de arquivo espec\\u00edfico. Eles podem ser semelhantes as defini\\u00e7\\u00f5es de v\\u00edrus, que necessitam ser atualizadas periodicamente, de uma instala\\u00e7\\u00e3o Archivematica, a fim de assegurar a efic\\u00e1cia servi\\u00e7o de verifica\\u00e7\\u00e3o de v\\u00edrus. Da mesma forma, as atualiza\\u00e7\\u00f5es de seguran\\u00e7a de software s\\u00e3o baixados no n\\u00edvel do sistema operacional, para manter a m\\u00e1quina host segura.<\\/p>\\r\\n<table class=\\"t1\\" style=\\"margin-left: auto; margin-right: auto;\\" border=\\"1\\" cellspacing=\\"0\\" cellpadding=\\"0\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td class=\\"td1\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><b>Tipo de Media<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td2\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><b>Formato de Arquivo<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td3\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><b>Formato de Preserva\\u00e7\\u00e3o<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td3\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><b>Formato de Acesso<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td4\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><b>Ferramenta de Normaliza\\u00e7\\u00e3o<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Audio\\">Audio<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/AC-3_Compressed_Audio_(Dolby_Digital)\\">AC3<\\/a><\\/span><span class=\\"s3\\">, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Audio_Interchange_File_Format\\"><span class=\\"s2\\">AIFF<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/MPEG-1_Audio,_Layer_3\\"><span class=\\"s2\\">MP3<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Waveform_Audio\\"><span class=\\"s2\\">WAV<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Windows_Media_Audio\\"><span class=\\"s2\\">WMA<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">WAVE (LPCM)<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">MP3<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"https:\\/\\/ffmpeg.org\\/\\" target=\\"_blank\\">FFmpeg<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Email\\">Email<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/PST\\">PST<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">MBOX<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">MBOX<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"http:\\/\\/www.five-ten-sg.com\\/libpst\\/rn01re01.html\\" target=\\"_blank\\">readpst<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Email\\">Email<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Maildir\\">Maildir<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">MBOX<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"https:\\/\\/gist.github.com\\/nyergler\\/1709069\\" target=\\"_blank\\"><span class=\\"s1\\">md2mb.py<\\/span><\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><a href=\\"https:\\/\\/gist.github.com\\/nyergler\\/1709069\\" target=\\"_blank\\"><span class=\\"s1\\">Office Open XML<\\/span><\\/a><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">DOCX, PPTX, XLSX<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Buscando ferramenta<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\">Texto Simples<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Plain_text_file\\">TXT<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Nenhum<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\">Formato de Documentos portaveis<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Portable_Document_Format\\">PDF<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">PDF\\/A<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"http:\\/\\/www.ghostscript.com\\/\\" target=\\"_blank\\">Ghostscript<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\">Arquivos de Apresenta\\u00e7\\u00e3o<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Microsoft_Powerpoint_Presentation\\">PPT<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">PDF<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Buscando ferramenta<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\">Imagens em BITMAP<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Microsoft_Windows_Bitmap_Image_file\\">BMP<\\/a><\\/span><span class=\\"s3\\">, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Graphics_Interchange_Format\\"><span class=\\"s2\\">GIF<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Joint_Photographic_Experts_Group\\"><span class=\\"s2\\">JPG<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/JPEG2000\\"><span class=\\"s2\\">JP2<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Macintosh_PICT_Image\\"><span class=\\"s2\\">PCT<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Portable_Network_Graphics\\"><span class=\\"s2\\">PNG<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Adobe_Photoshop\\"><span class=\\"s2\\">PSD<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Tagged_Image_File_Format\\"><span class=\\"s2\\">TIFF<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Truevision_TARGA_file\\"><span class=\\"s2\\">TGA<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">TIFF Descomprimido<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">JPEG<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"http:\\/\\/www.imagemagick.org\\/script\\/index.php\\" target=\\"_blank\\">ImageMagick<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\">Arquivos de camera RAW<\\/span><span class=\\"s3\\">\\/<span class=\\"s2\\">Formato de negativos digitais<\\/span>**<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">3FR, ARW, CR2, CRW, DCR, DNG, ERF, KDC, MRW, NEF, ORF, PEF, RAF, RAW, X3F<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">JPEG<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">ImageMagick\\/UFRaw<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\">Planilhas<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Microsoft_Excel_Workbook\\">XLS<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Nenhum<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\">Imagens Vetoriais<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Adobe_Illustrator_drawing\\">AI<\\/a><\\/span><span class=\\"s3\\">, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Encapsulated_PostScript\\"><span class=\\"s2\\">EPS<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Scalable_Vector_Graphics\\"><span class=\\"s2\\">SVG<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">SVG<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">PDF<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"https:\\/\\/inkscape.org\\/pt\\/\\" target=\\"_blank\\">Inkscape<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Video\\">Video<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Audio\\/Video_Interleaved_Format\\">AVI<\\/a><\\/span><span class=\\"s3\\">, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Macromedia_FLV\\"><span class=\\"s2\\">FLV<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Quicktime_(video)\\"><span class=\\"s2\\">MOV<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/MPEG-1_and_MPEG-2\\"><span class=\\"s2\\">MPEG-1<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/MPEG-1_and_MPEG-2\\"><span class=\\"s2\\">MPEG-2<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/MPEG-4\\"><span class=\\"s2\\">MPEG-4<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Shockwave_Flash_file\\"><span class=\\"s2\\">SWF<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Windows_Media_Player_file\\"><span class=\\"s2\\">WMV<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">FFV1\\/LPCM in MKV<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">MP4<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"https:\\/\\/ffmpeg.org\\/\\" target=\\"_blank\\">FFmpeg<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\">Arquivos processados no Word<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Microsoft_Word_for_Windows\\">DOC<\\/a><\\/span><span class=\\"s3\\">, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Corel_WordPerfect\\"><span class=\\"s2\\">WPD<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Rich_Text_Format\\"><span class=\\"s2\\">RTF<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Buscando ferramenta<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>","fulltext":"","state":"1","catid":"9","created":"2016-07-06 23:07:40","created_by":"448","created_by_alias":"Joomla","modified":"2016-07-07 00:29:29","modified_by":"448","checked_out":"448","checked_out_time":"2016-07-07 00:28:45","publish_up":"2016-07-06 23:07:40","publish_down":"0000-00-00 00:00:00","images":"[]","urls":"[]","attribs":"{}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\",\\"tags\\":null}","featured":"1","language":"pt-BR","xreference":""}', 0),
(12, 2, 1, '', '2016-07-07 00:30:17', 448, 14082, '0ff24ee8bf78266063763ceee9ac9b7c7b021a7b', '{"id":2,"asset_id":"60","title":"Pol\\u00edticas de Formato de Registros","alias":"artigo-pt-br","introtext":"<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Pol\\u00edticas de formato indicam qual ferramenta deve ser executada quanto a normaliza\\u00e7\\u00e3o para um determinado prop\\u00f3sito (acesso, preserva\\u00e7\\u00e3o). Quando uma ferramenta de Identifica\\u00e7\\u00e3o de arquivo identifica um formato de arquivo espec\\u00edfico. Eles podem ser semelhantes as defini\\u00e7\\u00f5es de v\\u00edrus, que necessitam ser atualizadas periodicamente, de uma instala\\u00e7\\u00e3o Archivematica, a fim de assegurar a efic\\u00e1cia servi\\u00e7o de verifica\\u00e7\\u00e3o de v\\u00edrus. Da mesma forma, as atualiza\\u00e7\\u00f5es de seguran\\u00e7a de software s\\u00e3o baixados no n\\u00edvel do sistema operacional, para manter a m\\u00e1quina host segura.<\\/p>\\r\\n<table class=\\"t1\\" style=\\"margin-left: auto; margin-right: auto;\\" border=\\"1\\" cellspacing=\\"0\\" cellpadding=\\"0\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td class=\\"td1\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><b>Tipo de Media<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td2\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><b>Formato de Arquivo<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td3\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><b>Formato de Preserva\\u00e7\\u00e3o<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td3\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><b>Formato de Acesso<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td4\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\"><b>Ferramenta de Normaliza\\u00e7\\u00e3o<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p2\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Audio\\">Audio<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/AC-3_Compressed_Audio_(Dolby_Digital)\\">AC3<\\/a><\\/span><span class=\\"s3\\">, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Audio_Interchange_File_Format\\"><span class=\\"s2\\">AIFF<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/MPEG-1_Audio,_Layer_3\\"><span class=\\"s2\\">MP3<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Waveform_Audio\\"><span class=\\"s2\\">WAV<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Windows_Media_Audio\\"><span class=\\"s2\\">WMA<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">WAVE (LPCM)<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">MP3<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"https:\\/\\/ffmpeg.org\\/\\" target=\\"_blank\\">FFmpeg<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Email\\">Email<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/PST\\">PST<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">MBOX<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">MBOX<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"http:\\/\\/www.five-ten-sg.com\\/libpst\\/rn01re01.html\\" target=\\"_blank\\">readpst<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Email\\">Email<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Maildir\\">Maildir<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">MBOX<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"https:\\/\\/gist.github.com\\/nyergler\\/1709069\\" target=\\"_blank\\"><span class=\\"s1\\">md2mb.py<\\/span><\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><a href=\\"https:\\/\\/gist.github.com\\/nyergler\\/1709069\\" target=\\"_blank\\"><span class=\\"s1\\">Office Open XML<\\/span><\\/a><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">DOCX, PPTX, XLSX<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Buscando ferramenta<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\">Texto Simples<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Plain_text_file\\">TXT<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Nenhum<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\">Formato de Documentos portaveis<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Portable_Document_Format\\">PDF<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">PDF\\/A<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"http:\\/\\/www.ghostscript.com\\/\\" target=\\"_blank\\">Ghostscript<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\">Arquivos de Apresenta\\u00e7\\u00e3o<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Microsoft_Powerpoint_Presentation\\">PPT<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">PDF<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Buscando ferramenta<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\">Imagens em BITMAP<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Microsoft_Windows_Bitmap_Image_file\\">BMP<\\/a><\\/span><span class=\\"s3\\">, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Graphics_Interchange_Format\\"><span class=\\"s2\\">GIF<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Joint_Photographic_Experts_Group\\"><span class=\\"s2\\">JPG<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/JPEG2000\\"><span class=\\"s2\\">JP2<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Macintosh_PICT_Image\\"><span class=\\"s2\\">PCT<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Portable_Network_Graphics\\"><span class=\\"s2\\">PNG<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Adobe_Photoshop\\"><span class=\\"s2\\">PSD<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Tagged_Image_File_Format\\"><span class=\\"s2\\">TIFF<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Truevision_TARGA_file\\"><span class=\\"s2\\">TGA<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">TIFF Descomprimido<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">JPEG<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"http:\\/\\/www.imagemagick.org\\/script\\/index.php\\" target=\\"_blank\\">ImageMagick<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\">Arquivos de camera RAW<\\/span><span class=\\"s3\\">\\/<span class=\\"s2\\">Formato de negativos digitais<\\/span>**<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">3FR, ARW, CR2, CRW, DCR, DNG, ERF, KDC, MRW, NEF, ORF, PEF, RAF, RAW, X3F<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">JPEG<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">ImageMagick\\/UFRaw<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\">Planilhas<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Microsoft_Excel_Workbook\\">XLS<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Nenhum<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\">Imagens Vetoriais<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Adobe_Illustrator_drawing\\">AI<\\/a><\\/span><span class=\\"s3\\">, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Encapsulated_PostScript\\"><span class=\\"s2\\">EPS<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Scalable_Vector_Graphics\\"><span class=\\"s2\\">SVG<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">SVG<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">PDF<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"https:\\/\\/inkscape.org\\/pt\\/\\" target=\\"_blank\\">Inkscape<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td9\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Video\\">Video<\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td10\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Audio\\/Video_Interleaved_Format\\">AVI<\\/a><\\/span><span class=\\"s3\\">, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Macromedia_FLV\\"><span class=\\"s2\\">FLV<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Quicktime_(video)\\"><span class=\\"s2\\">MOV<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/MPEG-1_and_MPEG-2\\"><span class=\\"s2\\">MPEG-1<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/MPEG-1_and_MPEG-2\\"><span class=\\"s2\\">MPEG-2<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/MPEG-4\\"><span class=\\"s2\\">MPEG-4<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Shockwave_Flash_file\\"><span class=\\"s2\\">SWF<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Windows_Media_Player_file\\"><span class=\\"s2\\">WMV<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">FFV1\\/LPCM in MKV<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td11\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">MP4<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td12\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><a href=\\"https:\\/\\/ffmpeg.org\\/\\" target=\\"_blank\\">FFmpeg<\\/a><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td class=\\"td5\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\">Arquivos processados no Word<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td6\\" valign=\\"middle\\">\\r\\n<p class=\\"p3\\"><span class=\\"s1\\"><a href=\\"https:\\/\\/wiki.archivematica.org\\/Microsoft_Word_for_Windows\\">DOC<\\/a><\\/span><span class=\\"s3\\">, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Corel_WordPerfect\\"><span class=\\"s2\\">WPD<\\/span><\\/a>, <a href=\\"https:\\/\\/wiki.archivematica.org\\/Rich_Text_Format\\"><span class=\\"s2\\">RTF<\\/span><\\/a><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td7\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Formato original<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td class=\\"td8\\" valign=\\"middle\\">\\r\\n<p class=\\"p1\\"><span class=\\"s1\\">Buscando ferramenta<\\/span><\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>","fulltext":"","state":"1","catid":"9","created":"2016-07-06 23:07:40","created_by":"448","created_by_alias":"Joomla","modified":"2016-07-07 00:30:17","modified_by":"448","checked_out":"448","checked_out_time":"2016-07-07 00:30:10","publish_up":"2016-07-06 23:07:40","publish_down":"0000-00-00 00:00:00","images":"[]","urls":"[]","attribs":"{}","version":5,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\",\\"tags\\":null}","featured":"1","language":"pt-BR","xreference":""}', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_updates`
--

CREATE TABLE IF NOT EXISTS `pjgca_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

--
-- Extraindo dados da tabela `pjgca_updates`
--

INSERT INTO `pjgca_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 3, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/hy-AM_details.xml', '', ''),
(2, 3, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.4.1.2', '', 'https://update.joomla.org/language/details3/ms-MY_details.xml', '', ''),
(3, 3, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/ro-RO_details.xml', '', ''),
(4, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/nl-BE_details.xml', '', ''),
(5, 3, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/zh-TW_details.xml', '', ''),
(6, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/fr-FR_details.xml', '', ''),
(7, 3, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/gl-ES_details.xml', '', ''),
(8, 3, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/de-DE_details.xml', '', ''),
(9, 3, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/el-GR_details.xml', '', ''),
(10, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/ja-JP_details.xml', '', ''),
(11, 3, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.1', '', 'https://update.joomla.org/language/details3/he-IL_details.xml', '', ''),
(12, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.5.1.2', '', 'https://update.joomla.org/language/details3/hu-HU_details.xml', '', ''),
(13, 3, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.5.2.2', '', 'https://update.joomla.org/language/details3/af-ZA_details.xml', '', ''),
(14, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/ar-AA_details.xml', '', ''),
(15, 3, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.1', '', 'https://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(16, 3, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.4.4.2', '', 'https://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(17, 3, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(18, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.4.1.1', '', 'https://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(19, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(20, 3, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(21, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(22, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.5.1.2', '', 'https://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(23, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(24, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(25, 3, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/km-KH_details.xml', '', ''),
(26, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(27, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.4.3.1', '', 'https://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(28, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(29, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(30, 3, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
(31, 3, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(32, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(33, 3, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.5.1.4', '', 'https://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(34, 3, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.5.0.6', '', 'https://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(35, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.5.1.2', '', 'https://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(36, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.5.1.2', '', 'https://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(37, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(38, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(39, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(40, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.5.1.2', '', 'https://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(41, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(42, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(43, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(44, 3, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.3.0.1', '', 'https://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(45, 3, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.1', '', 'https://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(46, 3, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '3.5.1.2', '', 'https://update.joomla.org/language/details3/eu-ES_details.xml', '', ''),
(47, 3, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.1', '', 'https://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(48, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(49, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(50, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.4.8.1', '', 'https://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(51, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(52, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.1', '', 'https://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(53, 3, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.3.0.2', '', 'https://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(54, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(55, 3, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(56, 3, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.1', '', 'https://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(57, 3, 0, 'English CA', '', 'pkg_en-CA', 'package', '', 0, '3.5.1.2', '', 'https://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(58, 3, 0, 'French CA', '', 'pkg_fr-CA', 'package', '', 0, '3.5.1.2', '', 'https://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(59, 3, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.3.0.2', '', 'https://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(60, 3, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.1', '', 'https://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(61, 3, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/prs-AF_details.xml', '', ''),
(62, 3, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/tk-TM_details.xml', '', ''),
(63, 3, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/ga-IE_details.xml', '', ''),
(64, 3, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/dz-BT_details.xml', '', ''),
(65, 3, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/sl-SI_details.xml', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_update_sites`
--

CREATE TABLE IF NOT EXISTS `pjgca_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Extraindo dados da tabela `pjgca_update_sites`
--

INSERT INTO `pjgca_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1467889775, ''),
(2, 'Joomla! Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1467889775, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 1467848588, ''),
(4, 'Joomla! Update Component Update Site', 'extension', 'http://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1467848588, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `pjgca_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Extraindo dados da tabela `pjgca_update_sites_extensions`
--

INSERT INTO `pjgca_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(3, 10002),
(4, 28);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_usergroups`
--

CREATE TABLE IF NOT EXISTS `pjgca_usergroups` (
  `id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pjgca_usergroups`
--

INSERT INTO `pjgca_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_users`
--

CREATE TABLE IF NOT EXISTS `pjgca_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB AUTO_INCREMENT=449 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pjgca_users`
--

INSERT INTO `pjgca_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(448, 'Super User', 'admin', 'francismallmann@gmail.com', '$2y$10$MfVQDC2hwmnwI5vzN01DaekbuoO/om7kv2LOjPv/ZfIdZJqIAYzc6', 0, 1, '2016-07-06 23:06:47', '2016-07-07 12:54:52', '0', '', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_user_keys`
--

CREATE TABLE IF NOT EXISTS `pjgca_user_keys` (
  `id` int(10) unsigned NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_user_notes`
--

CREATE TABLE IF NOT EXISTS `pjgca_user_notes` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_user_profiles`
--

CREATE TABLE IF NOT EXISTS `pjgca_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `pjgca_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pjgca_user_usergroup_map`
--

INSERT INTO `pjgca_user_usergroup_map` (`user_id`, `group_id`) VALUES
(448, 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_utf8_conversion`
--

CREATE TABLE IF NOT EXISTS `pjgca_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pjgca_utf8_conversion`
--

INSERT INTO `pjgca_utf8_conversion` (`converted`) VALUES
(2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pjgca_viewlevels`
--

CREATE TABLE IF NOT EXISTS `pjgca_viewlevels` (
  `id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pjgca_viewlevels`
--

INSERT INTO `pjgca_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pjgca_assets`
--
ALTER TABLE `pjgca_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `pjgca_associations`
--
ALTER TABLE `pjgca_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Indexes for table `pjgca_banners`
--
ALTER TABLE `pjgca_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `pjgca_banner_clients`
--
ALTER TABLE `pjgca_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indexes for table `pjgca_banner_tracks`
--
ALTER TABLE `pjgca_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `pjgca_categories`
--
ALTER TABLE `pjgca_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `pjgca_contact_details`
--
ALTER TABLE `pjgca_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `pjgca_content`
--
ALTER TABLE `pjgca_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `pjgca_contentitem_tag_map`
--
ALTER TABLE `pjgca_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indexes for table `pjgca_content_frontpage`
--
ALTER TABLE `pjgca_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `pjgca_content_rating`
--
ALTER TABLE `pjgca_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `pjgca_content_types`
--
ALTER TABLE `pjgca_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Indexes for table `pjgca_extensions`
--
ALTER TABLE `pjgca_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `pjgca_finder_filters`
--
ALTER TABLE `pjgca_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `pjgca_finder_links`
--
ALTER TABLE `pjgca_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indexes for table `pjgca_finder_links_terms0`
--
ALTER TABLE `pjgca_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `pjgca_finder_links_terms1`
--
ALTER TABLE `pjgca_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `pjgca_finder_links_terms2`
--
ALTER TABLE `pjgca_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `pjgca_finder_links_terms3`
--
ALTER TABLE `pjgca_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `pjgca_finder_links_terms4`
--
ALTER TABLE `pjgca_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `pjgca_finder_links_terms5`
--
ALTER TABLE `pjgca_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `pjgca_finder_links_terms6`
--
ALTER TABLE `pjgca_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `pjgca_finder_links_terms7`
--
ALTER TABLE `pjgca_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `pjgca_finder_links_terms8`
--
ALTER TABLE `pjgca_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `pjgca_finder_links_terms9`
--
ALTER TABLE `pjgca_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `pjgca_finder_links_termsa`
--
ALTER TABLE `pjgca_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `pjgca_finder_links_termsb`
--
ALTER TABLE `pjgca_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `pjgca_finder_links_termsc`
--
ALTER TABLE `pjgca_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `pjgca_finder_links_termsd`
--
ALTER TABLE `pjgca_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `pjgca_finder_links_termse`
--
ALTER TABLE `pjgca_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `pjgca_finder_links_termsf`
--
ALTER TABLE `pjgca_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `pjgca_finder_taxonomy`
--
ALTER TABLE `pjgca_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indexes for table `pjgca_finder_taxonomy_map`
--
ALTER TABLE `pjgca_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `pjgca_finder_terms`
--
ALTER TABLE `pjgca_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indexes for table `pjgca_finder_terms_common`
--
ALTER TABLE `pjgca_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Indexes for table `pjgca_finder_tokens`
--
ALTER TABLE `pjgca_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Indexes for table `pjgca_finder_tokens_aggregate`
--
ALTER TABLE `pjgca_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Indexes for table `pjgca_finder_types`
--
ALTER TABLE `pjgca_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `pjgca_languages`
--
ALTER TABLE `pjgca_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_image` (`image`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Indexes for table `pjgca_menu`
--
ALTER TABLE `pjgca_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `pjgca_menu_types`
--
ALTER TABLE `pjgca_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `pjgca_messages`
--
ALTER TABLE `pjgca_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `pjgca_messages_cfg`
--
ALTER TABLE `pjgca_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `pjgca_modules`
--
ALTER TABLE `pjgca_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `pjgca_modules_menu`
--
ALTER TABLE `pjgca_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `pjgca_newsfeeds`
--
ALTER TABLE `pjgca_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `pjgca_overrider`
--
ALTER TABLE `pjgca_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pjgca_postinstall_messages`
--
ALTER TABLE `pjgca_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indexes for table `pjgca_redirect_links`
--
ALTER TABLE `pjgca_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indexes for table `pjgca_schemas`
--
ALTER TABLE `pjgca_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `pjgca_session`
--
ALTER TABLE `pjgca_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Indexes for table `pjgca_tags`
--
ALTER TABLE `pjgca_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `pjgca_template_styles`
--
ALTER TABLE `pjgca_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

--
-- Indexes for table `pjgca_ucm_base`
--
ALTER TABLE `pjgca_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indexes for table `pjgca_ucm_content`
--
ALTER TABLE `pjgca_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indexes for table `pjgca_ucm_history`
--
ALTER TABLE `pjgca_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Indexes for table `pjgca_updates`
--
ALTER TABLE `pjgca_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `pjgca_update_sites`
--
ALTER TABLE `pjgca_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `pjgca_update_sites_extensions`
--
ALTER TABLE `pjgca_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `pjgca_usergroups`
--
ALTER TABLE `pjgca_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indexes for table `pjgca_users`
--
ALTER TABLE `pjgca_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `pjgca_user_keys`
--
ALTER TABLE `pjgca_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD UNIQUE KEY `series_2` (`series`),
  ADD UNIQUE KEY `series_3` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pjgca_user_notes`
--
ALTER TABLE `pjgca_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `pjgca_user_profiles`
--
ALTER TABLE `pjgca_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `pjgca_user_usergroup_map`
--
ALTER TABLE `pjgca_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `pjgca_viewlevels`
--
ALTER TABLE `pjgca_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pjgca_assets`
--
ALTER TABLE `pjgca_assets`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `pjgca_banners`
--
ALTER TABLE `pjgca_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pjgca_banner_clients`
--
ALTER TABLE `pjgca_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pjgca_categories`
--
ALTER TABLE `pjgca_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `pjgca_contact_details`
--
ALTER TABLE `pjgca_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pjgca_content`
--
ALTER TABLE `pjgca_content`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pjgca_content_types`
--
ALTER TABLE `pjgca_content_types`
  MODIFY `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `pjgca_extensions`
--
ALTER TABLE `pjgca_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10003;
--
-- AUTO_INCREMENT for table `pjgca_finder_filters`
--
ALTER TABLE `pjgca_finder_filters`
  MODIFY `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pjgca_finder_links`
--
ALTER TABLE `pjgca_finder_links`
  MODIFY `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pjgca_finder_taxonomy`
--
ALTER TABLE `pjgca_finder_taxonomy`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pjgca_finder_terms`
--
ALTER TABLE `pjgca_finder_terms`
  MODIFY `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pjgca_finder_types`
--
ALTER TABLE `pjgca_finder_types`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pjgca_languages`
--
ALTER TABLE `pjgca_languages`
  MODIFY `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pjgca_menu`
--
ALTER TABLE `pjgca_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT for table `pjgca_menu_types`
--
ALTER TABLE `pjgca_menu_types`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pjgca_messages`
--
ALTER TABLE `pjgca_messages`
  MODIFY `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pjgca_modules`
--
ALTER TABLE `pjgca_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `pjgca_newsfeeds`
--
ALTER TABLE `pjgca_newsfeeds`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pjgca_overrider`
--
ALTER TABLE `pjgca_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT for table `pjgca_postinstall_messages`
--
ALTER TABLE `pjgca_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pjgca_redirect_links`
--
ALTER TABLE `pjgca_redirect_links`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pjgca_tags`
--
ALTER TABLE `pjgca_tags`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pjgca_template_styles`
--
ALTER TABLE `pjgca_template_styles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `pjgca_ucm_content`
--
ALTER TABLE `pjgca_ucm_content`
  MODIFY `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pjgca_ucm_history`
--
ALTER TABLE `pjgca_ucm_history`
  MODIFY `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `pjgca_updates`
--
ALTER TABLE `pjgca_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `pjgca_update_sites`
--
ALTER TABLE `pjgca_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pjgca_usergroups`
--
ALTER TABLE `pjgca_usergroups`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `pjgca_users`
--
ALTER TABLE `pjgca_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=449;
--
-- AUTO_INCREMENT for table `pjgca_user_keys`
--
ALTER TABLE `pjgca_user_keys`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pjgca_user_notes`
--
ALTER TABLE `pjgca_user_notes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pjgca_viewlevels`
--
ALTER TABLE `pjgca_viewlevels`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
