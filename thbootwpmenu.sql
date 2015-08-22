-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 22, 2015 at 11:51 AM
-- Server version: 5.5.44-0ubuntu0.14.04.1
-- PHP Version: 5.5.27-1+deb.sury.org~trusty+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `thbootwpmenu`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-08-07 14:36:41', '2015-08-07 14:36:41', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf_objectmeta`
--

CREATE TABLE IF NOT EXISTS `wp_nf_objectmeta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `object_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=76 ;

--
-- Dumping data for table `wp_nf_objectmeta`
--

INSERT INTO `wp_nf_objectmeta` (`id`, `object_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'date_updated', '2015-08-11'),
(2, 1, 'form_title', 'Contact Form'),
(3, 1, 'show_title', '0'),
(4, 1, 'save_subs', '1'),
(5, 1, 'logged_in', '0'),
(6, 1, 'append_page', ''),
(7, 1, 'ajax', '0'),
(8, 1, 'clear_complete', '1'),
(9, 1, 'hide_complete', '1'),
(10, 1, 'success_msg', 'Your form has been successfully submitted.'),
(11, 1, 'email_from', ''),
(12, 1, 'email_type', 'html'),
(13, 1, 'user_email_msg', 'Thank you so much for contacting us. We will get back to you shortly.'),
(14, 1, 'user_email_fields', '0'),
(15, 1, 'admin_email_msg', ''),
(16, 1, 'admin_email_fields', '1'),
(17, 1, 'admin_attach_csv', '0'),
(18, 1, 'email_from_name', ''),
(19, 2, 'date_updated', '2014-09-09'),
(20, 2, 'active', '1'),
(21, 2, 'name', 'Email User'),
(22, 2, 'type', 'email'),
(23, 2, 'email_format', 'html'),
(24, 2, 'attach_csv', '1'),
(25, 2, 'from_name', ''),
(26, 2, 'from_address', ''),
(27, 2, 'reply_to', ''),
(28, 2, 'to', 'field_2'),
(29, 2, 'cc', ''),
(30, 2, 'bcc', ''),
(31, 2, 'email_subject', 'Thank you for contacting us!'),
(32, 2, 'email_message', 'Thank you so much for contacting us. We will get back to you shortly.'),
(33, 2, 'redirect_url', ''),
(34, 2, 'success_message_loc', 'ninja_forms_display_before_fields'),
(35, 2, 'success_msg', ''),
(36, 3, 'date_updated', '2014-09-09'),
(37, 3, 'active', '1'),
(38, 3, 'name', 'Success Message'),
(39, 3, 'type', 'success_message'),
(40, 3, 'email_format', 'html'),
(41, 3, 'attach_csv', '0'),
(42, 3, 'from_name', ''),
(43, 3, 'from_address', ''),
(44, 3, 'reply_to', ''),
(45, 3, 'to', ''),
(46, 3, 'cc', ''),
(47, 3, 'bcc', ''),
(48, 3, 'email_subject', ''),
(49, 3, 'email_message', ''),
(50, 3, 'redirect_url', ''),
(51, 3, 'success_message_loc', 'ninja_forms_display_after_fields'),
(52, 3, 'success_msg', 'Your form has been successfully submitted.'),
(53, 3, 'text_message_number', ''),
(54, 3, 'text_message_carrier', '0'),
(55, 3, 'text_message_message', ''),
(56, 4, 'date_updated', '2014-09-09'),
(57, 4, 'active', '1'),
(58, 4, 'name', 'Email Admin'),
(59, 4, 'type', 'email'),
(60, 4, 'email_format', 'html'),
(61, 4, 'attach_csv', '1'),
(62, 4, 'from_name', ''),
(63, 4, 'from_address', ''),
(64, 4, 'reply_to', 'field_2'),
(65, 4, 'to', ''),
(66, 4, 'cc', ''),
(67, 4, 'bcc', ''),
(68, 4, 'email_subject', 'Ninja Form Submission'),
(69, 4, 'email_message', '[ninja_forms_all_fields]'),
(70, 4, 'redirect_url', ''),
(71, 4, 'success_message_loc', 'ninja_forms_display_before_fields'),
(72, 4, 'success_msg', ''),
(73, 4, 'text_message_number', ''),
(74, 4, 'text_message_carrier', '0'),
(75, 4, 'text_message_message', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf_objects`
--

CREATE TABLE IF NOT EXISTS `wp_nf_objects` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `wp_nf_objects`
--

INSERT INTO `wp_nf_objects` (`id`, `type`) VALUES
(1, 'form'),
(2, 'notification'),
(3, 'notification'),
(4, 'notification');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_nf_relationships` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `child_id` bigint(20) NOT NULL,
  `parent_id` bigint(20) NOT NULL,
  `child_type` varchar(255) NOT NULL,
  `parent_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `wp_nf_relationships`
--

INSERT INTO `wp_nf_relationships` (`id`, `child_id`, `parent_id`, `child_type`, `parent_type`) VALUES
(1, 2, 1, 'notification', 'form'),
(2, 3, 1, 'notification', 'form'),
(3, 4, 1, 'notification', 'form');

-- --------------------------------------------------------

--
-- Table structure for table `wp_ninja_forms_fav_fields`
--

CREATE TABLE IF NOT EXISTS `wp_ninja_forms_fav_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `row_type` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `data` longtext NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=93 ;

--
-- Dumping data for table `wp_ninja_forms_fav_fields`
--

INSERT INTO `wp_ninja_forms_fav_fields` (`id`, `row_type`, `type`, `order`, `data`, `name`) VALUES
(2, 0, '_list', 0, 'a:10:{s:5:"label";s:14:"State Dropdown";s:9:"label_pos";s:4:"left";s:9:"list_type";s:8:"dropdown";s:10:"multi_size";s:1:"5";s:15:"list_show_value";s:1:"1";s:4:"list";a:1:{s:7:"options";a:51:{i:0;a:3:{s:5:"label";s:7:"Alabama";s:5:"value";s:2:"AL";s:8:"selected";s:1:"0";}i:1;a:3:{s:5:"label";s:6:"Alaska";s:5:"value";s:2:"AK";s:8:"selected";s:1:"0";}i:2;a:3:{s:5:"label";s:7:"Arizona";s:5:"value";s:2:"AZ";s:8:"selected";s:1:"0";}i:3;a:3:{s:5:"label";s:8:"Arkansas";s:5:"value";s:2:"AR";s:8:"selected";s:1:"0";}i:4;a:3:{s:5:"label";s:10:"California";s:5:"value";s:2:"CA";s:8:"selected";s:1:"0";}i:5;a:3:{s:5:"label";s:8:"Colorado";s:5:"value";s:2:"CO";s:8:"selected";s:1:"0";}i:6;a:3:{s:5:"label";s:11:"Connecticut";s:5:"value";s:2:"CT";s:8:"selected";s:1:"0";}i:7;a:3:{s:5:"label";s:8:"Delaware";s:5:"value";s:2:"DE";s:8:"selected";s:1:"0";}i:8;a:3:{s:5:"label";s:20:"District of Columbia";s:5:"value";s:2:"DC";s:8:"selected";s:1:"0";}i:9;a:3:{s:5:"label";s:7:"Florida";s:5:"value";s:2:"FL";s:8:"selected";s:1:"0";}i:10;a:3:{s:5:"label";s:7:"Georgia";s:5:"value";s:2:"GA";s:8:"selected";s:1:"0";}i:11;a:3:{s:5:"label";s:6:"Hawaii";s:5:"value";s:2:"HI";s:8:"selected";s:1:"0";}i:12;a:3:{s:5:"label";s:5:"Idaho";s:5:"value";s:2:"ID";s:8:"selected";s:1:"0";}i:13;a:3:{s:5:"label";s:8:"Illinois";s:5:"value";s:2:"IL";s:8:"selected";s:1:"0";}i:14;a:3:{s:5:"label";s:7:"Indiana";s:5:"value";s:2:"IN";s:8:"selected";s:1:"0";}i:15;a:3:{s:5:"label";s:4:"Iowa";s:5:"value";s:2:"IA";s:8:"selected";s:1:"0";}i:16;a:3:{s:5:"label";s:6:"Kansas";s:5:"value";s:2:"KS";s:8:"selected";s:1:"0";}i:17;a:3:{s:5:"label";s:8:"Kentucky";s:5:"value";s:2:"KY";s:8:"selected";s:1:"0";}i:18;a:3:{s:5:"label";s:9:"Louisiana";s:5:"value";s:2:"LA";s:8:"selected";s:1:"0";}i:19;a:3:{s:5:"label";s:5:"Maine";s:5:"value";s:2:"ME";s:8:"selected";s:1:"0";}i:20;a:3:{s:5:"label";s:8:"Maryland";s:5:"value";s:2:"MD";s:8:"selected";s:1:"0";}i:21;a:3:{s:5:"label";s:13:"Massachusetts";s:5:"value";s:2:"MA";s:8:"selected";s:1:"0";}i:22;a:3:{s:5:"label";s:8:"Michigan";s:5:"value";s:2:"MI";s:8:"selected";s:1:"0";}i:23;a:3:{s:5:"label";s:9:"Minnesota";s:5:"value";s:2:"MN";s:8:"selected";s:1:"0";}i:24;a:3:{s:5:"label";s:11:"Mississippi";s:5:"value";s:2:"MS";s:8:"selected";s:1:"0";}i:25;a:3:{s:5:"label";s:8:"Missouri";s:5:"value";s:2:"MO";s:8:"selected";s:1:"0";}i:26;a:3:{s:5:"label";s:7:"Montana";s:5:"value";s:2:"MT";s:8:"selected";s:1:"0";}i:27;a:3:{s:5:"label";s:8:"Nebraska";s:5:"value";s:2:"NE";s:8:"selected";s:1:"0";}i:28;a:3:{s:5:"label";s:6:"Nevada";s:5:"value";s:2:"NV";s:8:"selected";s:1:"0";}i:29;a:3:{s:5:"label"3s:13:"New Hampshire";s:5:"value";s:2:"NH";s:8:"selected";s:1:"0";}i:30;a:3:{s:5:"label";s:10:"New Jersey";s:5:"value";s:2:"NJ";s:8:"selected";s:1:"0";}i:31;a:3:{s:5:"label";s:10:"New Mexico";s:5:"value";s:2:"NM";s:8:"selected";s:1:"0";}i:32;a:3:{s:5:"label";s:8:"New York";s:5:"value";s:2:"NY";s:8:"selected";s:1:"0";}i:33;a:3:{s:5:"label";s:14:"North Carolina";s:5:"value";s:2:"NC";s:8:"selected";s:1:"0";}i:34;a:3:{s:5:"label";s:12:"North Dakota";s:5:"value";s:2:"ND";s:8:"selected";s:1:"0";}i:35;a:3:{s:5:"label";s:4:"Ohio";s:5:"value";s:2:"OH";s:8:"selected";s:1:"0";}i:36;a:3:{s:5:"label";s:8:"Oklahoma";s:5:"value";s:2:"OK";s:8:"selected";s:1:"0";}i:37;a:3:{s:5:"label";s:6:"Oregon";s:5:"value";s:2:"OR";s:8:"selected";s:1:"0";}i:38;a:3:{s:5:"label";s:12:"Pennsylvania";s:5:"value";s:2:"PA";s:8:"selected";s:1:"0";}i:39;a:3:{s:5:"label";s:12:"Rhode Island";s:5:"value";s:2:"RI";s:8:"selected";s:1:"0";}i:40;a:3:{s:5:"label";s:14:"South Carolina";s:5:"value";s:2:"SC";s:8:"selected";s:1:"0";}i:41;a:3:{s:5:"label";s:12:"South Dakota";s:5:"value";s:2:"SD";s:8:"selected";s:1:"0";}i:42;a:3:{s:5:"label";s:9:"Tennessee";s:5:"value";s:2:"TN";s:8:"selected";s:1:"0";}i:43;a:3:{s:5:"label";s:5:"Texas";s:5:"value";s:2:"TX";s:8:"selected";s:1:"0";}i:44;a:3:{s:5:"label";s:4:"Utah";s:5:"value";s:2:"UT";s:8:"selected";s:1:"0";}i:45;a:3:{s:5:"label";s:7:"Vermont";s:5:"value";s:2:"VT";s:8:"selected";s:1:"0";}i:46;a:3:{s:5:"label";s:8:"Virginia";s:5:"value";s:2:"VA";s:8:"selected";s:1:"0";}i:47;a:3:{s:5:"label";s:10:"Washington";s:5:"value";s:2:"WA";s:8:"selected";s:1:"0";}i:48;a:3:{s:5:"label";s:13:"West Virginia";s:5:"value";s:2:"WV";s:8:"selected";s:1:"0";}i:49;a:3:{s:5:"label";s:9:"Wisconsin";s:5:"value";s:2:"WI";s:8:"selected";s:1:"0";}i:50;a:3:{s:5:"label";s:7:"Wyoming";s:5:"value";s:2:"WY";s:8:"selected";s:1:"0";}}}s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";}', 'State Dropdown'),
(3, 0, '_spam', 0, 'a:6:{s:9:"label_pos";s:4:"left";s:5:"label";s:18:"Anti-Spam Question";s:6:"answer";s:16:"Anti-Spam Answer";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";}', 'Anti-Spam'),
(4, 0, '_submit', 0, 'a:4:{s:5:"label";s:6:"Submit";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";}', 'Submit'),
(5, 0, '_tax', 0, 'a:11:{s:5:"label";s:3:"Tax";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:19:"payment_field_group";s:1:"1";s:11:"payment_tax";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:11:"conditional";s:0:"";s:11:"calc_option";s:1:"0";s:4:"calc";s:0:"";}', 'Tax'),
(6, 0, '_text', 0, 'a:19:{s:5:"label";s:10:"First Name";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"1";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'First Name'),
(7, 0, '_text', 0, 'a:19:{s:5:"label";s:9:"Last Name";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"1";s:9:"from_name";s:1:"0";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Last Name'),
(8, 0, '_text', 0, 'a:23:{s:5:"label";s:9:"Address 1";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"1";s:14:"user_address_2";s:1:"0";s:9:"user_city";s:1:"0";s:8:"user_zip";s:1:"0";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Address 1'),
(9, 0, '_text', 0, 'a:23:{s:5:"label";s:9:"Address 2";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"0";s:14:"user_address_2";s:1:"1";s:9:"user_city";s:1:"0";s:8:"user_zip";s:1:"0";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Address 2'),
(10, 0, '_text', 0, 'a:23:{s:5:"label";s:4:"City";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"0";s:14:"user_address_2";s:1:"0";s:9:"user_city";s:1:"1";s:8:"user_zip";s:1:"0";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'City'),
(11, 0, '_list', 0, 'a:16:{s:5:"label";s:5:"State";s:9:"label_pos";s:5:"above";s:10:"multi_size";s:1:"5";s:15:"list_show_value";s:1:"1";s:4:"list";a:1:{s:7:"options";a:51:{i:0;a:4:{s:5:"label";s:7:"Alabama";s:5:"value";s:2:"AL";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:1;a:4:{s:5:"label";s:6:"Alaska";s:5:"value";s:2:"AK";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:2;a:4:{s:5:"label";s:7:"Arizona";s:5:"value";s:2:"AZ";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:3;a:4:{s:5:"label";s:8:"Arkansas";s:5:"value";s:2:"AR";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:4;a:4:{s:5:"label";s:10:"California";s:5:"value";s:2:"CA";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:5;a:4:{s:5:"label";s:8:"Colorado";s:5:"value";s:2:"CO";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:6;a:4:{s:5:"label";s:11:"Connecticut";s:5:"value";s:2:"CT";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:7;a:4:{s:5:"label";s:8:"Delaware";s:5:"value";s:2:"DE";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:8;a:4:{s:5:"label";s:20:"District of Columbia";s:5:"value";s:2:"DC";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:9;a:4:{s:5:"label";s:7:"Florida";s:5:"value";s:2:"FL";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:10;a:4:{s:5:"label";s:7:"Georgia";s:5:"value";s:2:"GA";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:11;a:4:{s:5:"label";s:6:"Hawaii";s:5:"value";s:2:"HI";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:12;a:4:{s:5:"label";s:5:"Idaho";s:5:"value";s:2:"ID";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:13;a:4:{s:5:"label";s:8:"Illinois";s:5:"value";s:2:"IL";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:14;a:4:{s:5:"label";s:7:"Indiana";s:5:"value";s:2:"IN";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:15;a:4:{s:5:"label";s:4:"Iowa";s:5:"value";s:2:"IA";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:16;a:4:{s:5:"label";s:6:"Kansas";s:5:"value";s:2:"KS";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:17;a:4:{s:5:"label";s:8:"Kentucky";s:5:"value";s:2:"KY";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:18;a:4:{s:5:"label";s:9:"Louisiana";s:5:"value";s:2:"LA";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:19;a:4:{s:5:"label";s:5:"Maine";s:5:"value";s:2:"ME";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:20;a:4:{s:5:"label";s:8:"Maryland";s:5:"value";s:2:"MD";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:21;a:4:{s:5:"label";s:13:"Massachusetts";s:5:"value";s:2:"MA";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:22;a:4:{s:5:"label";s:8:"Michigan";s:5:"value";s:2:"MI";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:23;a:4:{s:5:"label";s:9:"Minnesota";s:5:"value";s:2:"MN";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:24;a:4:{s:5:"label";s:11:"Mississippi";s:5:"value";s:2:"MS";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:25;a:4:{s:5:"label";s:8:"Missouri";s:5:"value";s:2:"MO";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:26;a:4:{s:5:"label";s:7:"Montana";s:5:"value";s:2:"MT";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:27;a:4:{s:5:"label";s:8:"Nebraska";s:5:"value";s:2:"NE";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:28;a:4:{s:5:"label";s:6:"Nevada";s:5:"value";s:2:"NV";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:29;a:4:{s:5:"label";s:13:"New Hampshire";s:5:"value";s:2:"NH";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:30;a:4:{s:5:"label";s:10:"New Jersey";s:5:"value";s:2:"NJ";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:31;a:4:{s:5:"label";s:10:"New Mexico";s:5:"value";s:2:"NM";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:32;a:4:{s:5:"label";s:8:"New York";s:5:"value";s:2:"NY";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:33;a:4:{s:5:"label";s:14:"North Carolina";s:5:"value";s:2:"NC";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:34;a:4:{s:5:"label";s:12:"North Dakota";s:5:"value";s:2:"ND";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:35;a:4:{s:5:"label";s:4:"Ohio";s:5:"value";s:2:"OH";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:36;a:4:{s:5:"label";s:8:"Oklahoma";s:5:"value";s:2:"OK";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:37;a:4:{s:5:"label";s:6:"Oregon";s:5:"value";s:2:"OR";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:38;a:4:{s:5:"label";s:12:"Pennsylvania";s:5:"value";s:2:"PA";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:39;a:4:{s:5:"label";s:12:"Rhode Island";s:5:"value";s:2:"RI";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:40;a:4:{s:5:"label";s:14:"South Carolina";s:5:"value";s:2:"SC";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:41;a:4:{s:5:"label";s:12:"South Dakota";s:5:"value";s:2:"SD";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:42;a:4:{s:5:"label";s:9:"Tennessee";s:5:"value";s:2:"TN";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:43;a:4:{s:5:"label";s:5:"Texas";s:5:"value";s:2:"TX";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:44;a:4:{s:5:"label";s:4:"Utah";s:5:"value";s:2:"UT";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:45;a:4:{s:5:"label";s:7:"Vermont";s:5:"value";s:2:"VT";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:46;a:4:{s:5:"label";s:8:"Virginia";s:5:"value";s:2:"VA";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:47;a:4:{s:5:"label";s:10:"Washington";s:5:"value";s:2:"WA";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:48;a:4:{s:5:"label";s:13:"West Virginia";s:5:"value";s:2:"WV";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:49;a:4:{s:5:"label";s:9:"Wisconsin";s:5:"value";s:2:"WI";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:50;a:4:{s:5:"label";s:7:"Wyoming";s:5:"value";s:2:"WY";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}}}s:9:"list_type";s:8:"dropdown";s:10:"user_state";s:1:"1";s:21:"user_info_field_group";s:1:"1";s:13:"populate_term";s:0:"";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'State'),
(12, 0, '_text', 0, 'a:23:{s:5:"label";s:15:"Zip / Post Code";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"0";s:14:"user_address_2";s:1:"0";s:9:"user_city";s:1:"0";s:8:"user_zip";s:1:"1";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Zip / Post Code'),
(13, 0, '_country', 0, 'a:10:{s:5:"label";s:7:"Country";s:9:"label_pos";s:5:"above";s:13:"default_value";s:2:"US";s:21:"user_info_field_group";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Country'),
(14, 0, '_text', 0, 'a:25:{s:5:"label";s:5:"Email";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"1";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"0";s:14:"user_address_2";s:1:"0";s:9:"user_city";s:1:"0";s:8:"user_zip";s:1:"0";s:10:"user_phone";s:1:"0";s:10:"user_email";s:1:"1";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Email'),
(15, 0, '_text', 0, 'a:25:{s:5:"label";s:5:"Phone";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:14:"(999) 999-9999";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"0";s:14:"user_address_2";s:1:"0";s:9:"user_city";s:1:"0";s:8:"user_zip";s:1:"0";s:10:"user_phone";s:1:"1";s:10:"user_email";s:1:"0";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Phone'),
(16, 0, '_calc', 0, 'a:20:{s:9:"calc_name";s:9:"sub_total";s:13:"default_value";s:0:"";s:17:"calc_display_type";s:4:"text";s:5:"label";s:9:"Sub Total";s:9:"label_pos";s:5:"above";s:26:"calc_display_text_disabled";s:1:"1";s:17:"calc_display_html";s:26:"<p>[ninja_forms_calc]</p>\n";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:11:"calc_method";s:4:"auto";s:4:"calc";s:0:"";s:7:"calc_eq";s:0:"";s:19:"payment_field_group";s:1:"1";s:13:"payment_total";s:1:"0";s:17:"payment_sub_total";s:1:"1";s:11:"calc_places";s:1:"2";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Sub Total'),
(17, 0, '_calc', 0, 'a:20:{s:9:"calc_name";s:5:"total";s:13:"default_value";s:0:"";s:17:"calc_display_type";s:4:"text";s:5:"label";s:5:"Total";s:9:"label_pos";s:5:"above";s:26:"calc_display_text_disabled";s:1:"1";s:17:"calc_display_html";s:26:"<p>[ninja_forms_calc]</p>\n";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:11:"calc_method";s:4:"auto";s:4:"calc";a:5:{i:0;a:2:{s:2:"op";s:3:"add";s:5:"field";s:2:"70";}i:1;a:2:{s:2:"op";s:3:"add";s:5:"field";s:2:"69";}i:2;a:2:{s:2:"op";s:3:"add";s:5:"field";s:2:"15";}i:3;a:2:{s:2:"op";s:3:"add";s:5:"field";s:2:"61";}i:4;a:2:{s:2:"op";s:3:"add";s:5:"field";s:2:"70";}}s:7:"calc_eq";s:5:"5 + 5";s:19:"payment_field_group";s:1:"1";s:13:"payment_total";s:1:"1";s:17:"payment_sub_total";s:1:"0";s:11:"calc_places";s:1:"2";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Total'),
(92, 0, '_credit_card', 0, 'a:6:{s:5:"label";s:11:"Credit Card";s:19:"payment_field_group";s:1:"1";s:3:"req";s:1:"0";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:11:"conditional";s:0:"";}', 'Credit Card');

-- --------------------------------------------------------

--
-- Table structure for table `wp_ninja_forms_fields`
--

CREATE TABLE IF NOT EXISTS `wp_ninja_forms_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `data` longtext NOT NULL,
  `fav_id` int(11) DEFAULT NULL,
  `def_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `wp_ninja_forms_fields`
--

INSERT INTO `wp_ninja_forms_fields` (`id`, `form_id`, `type`, `order`, `data`, `fav_id`, `def_id`) VALUES
(1, 1, '_text', 0, 'a:24:{s:5:"label";s:4:"Name";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:0:"";s:14:"user_address_2";s:0:"";s:9:"user_city";s:0:"";s:8:"user_zip";s:0:"";s:10:"user_phone";s:0:"";s:10:"user_email";s:0:"";s:21:"user_info_field_group";s:0:"";s:3:"req";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";s:17:"calc_auto_include";s:1:"0";}', 0, 0),
(2, 1, '_text', 1, 'a:28:{s:5:"label";s:5:"Email";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"1";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"0";s:14:"user_address_2";s:1:"0";s:9:"user_city";s:1:"0";s:8:"user_zip";s:1:"0";s:10:"user_phone";s:1:"0";s:10:"user_email";s:1:"1";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";s:26:"user_info_field_group_name";s:0:"";s:28:"user_info_field_group_custom";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}', 0, 14),
(3, 1, '_textarea', 2, 'a:14:{s:5:"label";s:7:"Message";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:12:"textarea_rte";s:1:"0";s:14:"textarea_media";s:1:"0";s:18:"disable_rte_mobile";s:1:"0";s:3:"req";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";s:17:"calc_auto_include";s:1:"0";}', 0, 0),
(4, 1, '_spam', 3, 'a:10:{s:5:"label";s:25:"What is thirteen minus 6?";s:9:"label_pos";s:4:"left";s:11:"spam_answer";s:1:"7";s:3:"req";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}', 0, 0),
(5, 1, '_submit', 4, 'a:7:{s:5:"label";s:4:"Send";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=281 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/thbootwpmenu', 'yes'),
(2, 'home', 'http://localhost/thbootwpmenu', 'yes'),
(3, 'blogname', 'th bootstrap wp menu', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'thekirankumardash@gmail.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:59:"black-studio-tinymce-widget/black-studio-tinymce-widget.php";i:2;s:45:"bootstrap-shortcodes/bootstrap-shortcodes.php";i:3;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:4;s:27:"ninja-forms/ninja-forms.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'biji-bootstrap-to-wp', 'yes'),
(42, 'stylesheet', 'biji-bootstrap-to-wp', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '33055', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'page', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '260', 'yes'),
(63, 'medium_size_h', '260', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', '', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:3:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}i:3;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:3:{i:2;a:3:{s:5:"title";s:13:"Sidebar Kiran";s:4:"text";s:291:"Lorem sidebar goes here.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor ";s:6:"filter";b:0;}i:4;a:3:{s:5:"title";s:10:"Contact us";s:4:"text";s:127:"<button type="button" class="btn btn-primary btn-md" data-toggle="modal" data-target="#contactForm">\r\n  Contact us\r\n</button>\r\n";s:6:"filter";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '11', 'yes'),
(85, 'page_on_front', '7', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '31536', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:3:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}i:3;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:8:{s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:19:"wp_inactive_widgets";a:0:{}s:10:"front-left";a:1:{i:0;s:22:"black-studio-tinymce-2";}s:12:"front-center";a:1:{i:0;s:22:"black-studio-tinymce-3";}s:11:"front-right";a:1:{i:0;s:22:"black-studio-tinymce-4";}s:4:"page";a:2:{i:0;s:6:"text-2";i:1;s:6:"text-4";}s:4:"blog";a:2:{i:0;s:12:"categories-3";i:1;s:10:"archives-3";}s:13:"array_version";i:3;}', 'yes'),
(97, 'cron', 'a:8:{i:1440185040;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1440211002;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1440216749;a:1:{s:29:"wp_session_garbage_collection";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1440254722;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1440259138;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1440259728;a:1:{s:24:"ninja_forms_daily_action";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:20:"wp_batch_split_terms";a:2:{i:1440152932;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}i:1440152939;a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}s:7:"version";i:2;}', 'yes'),
(106, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1440168032;s:7:"checked";a:4:{s:20:"biji-bootstrap-to-wp";s:3:"1.0";s:13:"twentyfifteen";s:3:"1.3";s:14:"twentyfourteen";s:3:"1.5";s:14:"twentythirteen";s:3:"1.6";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(107, '_transient_random_seed', 'cf982a0b5cde3f3907953b0df6274afc', 'yes'),
(121, '_transient_twentyfifteen_categories', '1', 'yes'),
(123, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1438958729;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(124, 'current_theme', 'Biji bootstrap to wp', 'yes'),
(125, 'theme_mods_biji-bootstrap-to-wp', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:11:"header-menu";i:2;}}', 'yes'),
(126, 'theme_switched', '', 'yes'),
(130, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(137, 'recently_activated', 'a:0:{}', 'yes'),
(140, 'bs_options', 'a:12:{s:23:"chk_default_options_css";s:1:"1";s:22:"chk_default_options_js";s:1:"1";s:24:"chk_default_options_grid";s:1:"1";s:24:"chk_default_options_tabs";s:1:"1";s:28:"chk_default_options_collapse";s:1:"1";s:26:"chk_default_options_alerts";s:1:"1";s:25:"chk_default_options_wells";s:1:"1";s:27:"chk_default_options_buttons";s:1:"1";s:26:"chk_default_options_labels";s:1:"1";s:25:"chk_default_options_icons";s:1:"1";s:24:"chk_default_options_lead";s:1:"1";s:27:"chk_default_options_tooltip";s:1:"1";}', 'yes'),
(143, 'ftp_credentials', 'a:3:{s:8:"hostname";s:9:"localhost";s:8:"username";s:5:"kiran";s:15:"connection_type";s:3:"ftp";}', 'yes'),
(145, 'widget_black-studio-tinymce', 'a:4:{i:2;a:4:{s:5:"title";s:7:"Heading";s:4:"text";s:297:"Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.\r\n\r\n[bs_button size="md" type="info" value="View Details" href=""]";s:4:"type";s:6:"visual";s:6:"filter";s:1:"1";}i:3;a:4:{s:5:"title";s:7:"Heading";s:4:"text";s:297:"Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.\r\n\r\n[bs_button size="md" type="info" value="View Details" href=""]";s:4:"type";s:6:"visual";s:6:"filter";s:1:"1";}i:4;a:4:{s:5:"title";s:7:"Heading";s:4:"text";s:297:"Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.\r\n\r\n[bs_button size="md" type="info" value="View Details" href=""]";s:4:"type";s:6:"visual";s:6:"filter";s:1:"1";}s:12:"_multiwidget";i:1;}', 'yes'),
(155, 'category_children', 'a:0:{}', 'yes'),
(168, 'acf_version', '4.4.2', 'yes'),
(169, 'cptui_post_types', 'a:1:{s:9:"portfolio";a:23:{s:4:"name";s:9:"portfolio";s:5:"label";s:9:"Portfolio";s:14:"singular_label";s:15:"Portfolio piece";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:7:"show_ui";s:4:"true";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:0:{}s:10:"taxonomies";a:0:{}s:6:"labels";a:13:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:4:"edit";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:4:"view";s:0:"";s:9:"view_item";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:6:"parent";s:0:"";}s:15:"custom_supports";s:0:"";}}', 'yes'),
(214, 'nf_convert_notifications_complete', '1', 'yes'),
(215, 'nf_convert_subs_step', 'complete', 'yes'),
(216, 'nf_upgrade_notice', 'closed', 'yes'),
(217, 'nf_update_email_settings_complete', '1', 'yes'),
(218, 'nf_email_fav_updated', '1', 'yes'),
(219, 'nf_convert_forms_complete', '1', 'yes'),
(220, 'nf_database_migrations', '1', 'yes'),
(221, 'ninja_forms_settings', 'a:18:{s:11:"date_format";s:5:"d/m/Y";s:15:"currency_symbol";s:1:"$";s:14:"recaptcha_lang";s:2:"en";s:13:"req_div_label";s:80:"Fields marked with an <span class="ninja-forms-req-symbol">*</span> are required";s:16:"req_field_symbol";s:18:"<strong>*</strong>";s:15:"req_error_label";s:48:"Please ensure all required fields are completed.";s:15:"req_field_error";s:24:"This is a required field";s:10:"spam_error";s:47:"Please answer the anti-spam question correctly.";s:14:"honeypot_error";s:34:"Please leave the spam field blank.";s:18:"timed_submit_error";s:31:"Please wait to submit the form.";s:16:"javascript_error";s:54:"You cannot submit the form without Javascript enabled.";s:13:"invalid_email";s:35:"Please enter a valid email address.";s:13:"process_label";s:10:"Processing";s:17:"password_mismatch";s:36:"The passwords provided do not match.";s:10:"preview_id";i:69;s:7:"version";s:6:"2.9.26";s:18:"fix_field_reply_to";i:1;s:19:"fix_form_email_from";i:1;}', 'yes'),
(233, 'nf_admin_notice', 'a:2:{s:16:"one_week_support";a:2:{s:5:"start";s:9:"8/18/2015";s:3:"int";i:7;}s:15:"two_week_review";a:2:{s:5:"start";s:9:"8/25/2015";s:3:"int";i:14;}}', 'yes'),
(241, '_site_transient_timeout_browser_790b3b1b8d47fdb88ed095784ab300aa', '1440268194', 'yes'),
(242, '_site_transient_browser_790b3b1b8d47fdb88ed095784ab300aa', 'a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"39.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(247, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(248, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(249, 'widget_ninja_forms_widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(250, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(252, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(262, 'finished_splitting_shared_terms', '1', 'yes'),
(263, 'db_upgraded', '', 'yes'),
(264, 'rewrite_rules', 'a:82:{s:37:"portfolio/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"portfolio/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"portfolio/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"portfolio/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"portfolio/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"portfolio/([^/]+)/trackback/?$";s:36:"index.php?portfolio=$matches[1]&tb=1";s:38:"portfolio/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?portfolio=$matches[1]&paged=$matches[2]";s:45:"portfolio/([^/]+)/comment-page-([0-9]{1,})/?$";s:49:"index.php?portfolio=$matches[1]&cpage=$matches[2]";s:30:"portfolio/([^/]+)(/[0-9]+)?/?$";s:48:"index.php?portfolio=$matches[1]&page=$matches[2]";s:26:"portfolio/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:36:"portfolio/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:56:"portfolio/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"portfolio/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"portfolio/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=7&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes'),
(265, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:56:"http://downloads.wordpress.org/release/wordpress-4.3.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:56:"http://downloads.wordpress.org/release/wordpress-4.3.zip";s:10:"no_content";s:67:"http://downloads.wordpress.org/release/wordpress-4.3-no-content.zip";s:11:"new_bundled";s:68:"http://downloads.wordpress.org/release/wordpress-4.3-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.3";s:7:"version";s:3:"4.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1440168030;s:15:"version_checked";s:3:"4.3";s:12:"translations";a:0:{}}', 'yes'),
(266, 'can_compress_scripts', '0', 'yes'),
(269, '_transient_timeout_plugin_slugs', '1440239561', 'no'),
(270, '_transient_plugin_slugs', 'a:7:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:59:"black-studio-tinymce-widget/black-studio-tinymce-widget.php";i:3;s:45:"bootstrap-shortcodes/bootstrap-shortcodes.php";i:4;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:5;s:9:"hello.php";i:6;s:27:"ninja-forms/ninja-forms.php";}', 'no'),
(271, '_transient_timeout_nf_form_1', '1440239576', 'no'),
(272, '_transient_nf_form_1', 'O:7:"NF_Form":5:{s:7:"form_id";s:1:"1";s:8:"settings";a:18:{s:12:"date_updated";s:10:"2015-08-11";s:10:"form_title";s:12:"Contact Form";s:10:"show_title";s:1:"0";s:9:"save_subs";s:1:"1";s:9:"logged_in";s:1:"0";s:11:"append_page";s:0:"";s:4:"ajax";s:1:"0";s:14:"clear_complete";s:1:"1";s:13:"hide_complete";s:1:"1";s:11:"success_msg";s:42:"Your form has been successfully submitted.";s:10:"email_from";s:0:"";s:10:"email_type";s:4:"html";s:14:"user_email_msg";s:69:"Thank you so much for contacting us. We will get back to you shortly.";s:17:"user_email_fields";s:1:"0";s:15:"admin_email_msg";s:0:"";s:18:"admin_email_fields";s:1:"1";s:16:"admin_attach_csv";s:1:"0";s:15:"email_from_name";s:0:"";}s:6:"fields";a:5:{i:1;a:7:{s:2:"id";s:1:"1";s:7:"form_id";s:1:"1";s:4:"type";s:5:"_text";s:5:"order";s:1:"0";s:4:"data";a:24:{s:5:"label";s:4:"Name";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:0:"";s:14:"user_address_2";s:0:"";s:9:"user_city";s:0:"";s:8:"user_zip";s:0:"";s:10:"user_phone";s:0:"";s:10:"user_email";s:0:"";s:21:"user_info_field_group";s:0:"";s:3:"req";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";s:17:"calc_auto_include";s:1:"0";}s:6:"fav_id";s:1:"0";s:6:"def_id";s:1:"0";}i:2;a:7:{s:2:"id";s:1:"2";s:7:"form_id";s:1:"1";s:4:"type";s:5:"_text";s:5:"order";s:1:"1";s:4:"data";a:28:{s:5:"label";s:5:"Email";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"1";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"0";s:14:"user_address_2";s:1:"0";s:9:"user_city";s:1:"0";s:8:"user_zip";s:1:"0";s:10:"user_phone";s:1:"0";s:10:"user_email";s:1:"1";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";s:26:"user_info_field_group_name";s:0:"";s:28:"user_info_field_group_custom";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}s:6:"fav_id";s:1:"0";s:6:"def_id";s:2:"14";}i:3;a:7:{s:2:"id";s:1:"3";s:7:"form_id";s:1:"1";s:4:"type";s:9:"_textarea";s:5:"order";s:1:"2";s:4:"data";a:14:{s:5:"label";s:7:"Message";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:12:"textarea_rte";s:1:"0";s:14:"textarea_media";s:1:"0";s:18:"disable_rte_mobile";s:1:"0";s:3:"req";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";s:17:"calc_auto_include";s:1:"0";}s:6:"fav_id";s:1:"0";s:6:"def_id";s:1:"0";}i:4;a:7:{s:2:"id";s:1:"4";s:7:"form_id";s:1:"1";s:4:"type";s:5:"_spam";s:5:"order";s:1:"3";s:4:"data";a:10:{s:5:"label";s:25:"What is thirteen minus 6?";s:9:"label_pos";s:4:"left";s:11:"spam_answer";s:1:"7";s:3:"req";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}s:6:"fav_id";s:1:"0";s:6:"def_id";s:1:"0";}i:5;a:7:{s:2:"id";s:1:"5";s:7:"form_id";s:1:"1";s:4:"type";s:7:"_submit";s:5:"order";s:1:"4";s:4:"data";a:7:{s:5:"label";s:4:"Send";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}s:6:"fav_id";s:1:"0";s:6:"def_id";s:1:"0";}}s:10:"field_keys";a:0:{}s:6:"errors";a:0:{}}', 'no'),
(278, '_site_transient_timeout_theme_roots', '1440169733', 'yes'),
(279, '_site_transient_theme_roots', 'a:4:{s:20:"biji-bootstrap-to-wp";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";}', 'yes'),
(280, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1440168032;s:8:"response";a:3:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":6:{s:2:"id";s:5:"21367";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:5:"4.4.3";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/advanced-custom-fields.zip";}s:43:"custom-post-type-ui/custom-post-type-ui.php";O:8:"stdClass":7:{s:2:"id";s:5:"13183";s:4:"slug";s:19:"custom-post-type-ui";s:6:"plugin";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:11:"new_version";s:5:"1.1.2";s:3:"url";s:50:"https://wordpress.org/plugins/custom-post-type-ui/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.1.2.zip";s:14:"upgrade_notice";s:284:"Change export value to plural label for taxonomies.\nProperly select a post type or taxonomy after deleting an existing value.\nUpdated screenshots\nAdded target=&quot;_blank&quot; attribute to one of the inline help links for Menu position. Thanks @JulieKuehl\nFixed potential XSS issue.";}s:27:"ninja-forms/ninja-forms.php";O:8:"stdClass":6:{s:2:"id";s:5:"27901";s:4:"slug";s:11:"ninja-forms";s:6:"plugin";s:27:"ninja-forms/ninja-forms.php";s:11:"new_version";s:6:"2.9.27";s:3:"url";s:42:"https://wordpress.org/plugins/ninja-forms/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/ninja-forms.2.9.27.zip";}}s:12:"translations";a:0:{}s:9:"no_update";a:4:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.1.3.zip";}s:59:"black-studio-tinymce-widget/black-studio-tinymce-widget.php";O:8:"stdClass":7:{s:2:"id";s:5:"27008";s:4:"slug";s:27:"black-studio-tinymce-widget";s:6:"plugin";s:59:"black-studio-tinymce-widget/black-studio-tinymce-widget.php";s:11:"new_version";s:5:"2.2.5";s:3:"url";s:58:"https://wordpress.org/plugins/black-studio-tinymce-widget/";s:7:"package";s:76:"https://downloads.wordpress.org/plugin/black-studio-tinymce-widget.2.2.5.zip";s:14:"upgrade_notice";s:124:"Version 2.x is a major update. If you are upgrading from version 1.x please ensure to backup your database before upgrading.";}s:45:"bootstrap-shortcodes/bootstrap-shortcodes.php";O:8:"stdClass":6:{s:2:"id";s:5:"43955";s:4:"slug";s:20:"bootstrap-shortcodes";s:6:"plugin";s:45:"bootstrap-shortcodes/bootstrap-shortcodes.php";s:11:"new_version";s:5:"3.3.5";s:3:"url";s:51:"https://wordpress.org/plugins/bootstrap-shortcodes/";s:7:"package";s:69:"https://downloads.wordpress.org/plugin/bootstrap-shortcodes.3.3.5.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=223 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_menu_item_type', 'custom'),
(3, 4, '_menu_item_menu_item_parent', '0'),
(4, 4, '_menu_item_object_id', '4'),
(5, 4, '_menu_item_object', 'custom'),
(6, 4, '_menu_item_target', ''),
(7, 4, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(8, 4, '_menu_item_xfn', ''),
(9, 4, '_menu_item_url', 'http://localhost/biji-bootstrap-to-wp/'),
(10, 4, '_menu_item_orphaned', '1438963112'),
(11, 5, '_menu_item_type', 'post_type'),
(12, 5, '_menu_item_menu_item_parent', '0'),
(13, 5, '_menu_item_object_id', '2'),
(14, 5, '_menu_item_object', 'page'),
(15, 5, '_menu_item_target', ''),
(16, 5, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(17, 5, '_menu_item_xfn', ''),
(18, 5, '_menu_item_url', ''),
(19, 5, '_menu_item_orphaned', '1438963112'),
(20, 2, '_wp_trash_meta_status', 'publish'),
(21, 2, '_wp_trash_meta_time', '1438963136'),
(22, 7, '_edit_last', '1'),
(23, 7, '_edit_lock', '1440159286:1'),
(24, 9, '_edit_last', '1'),
(25, 9, '_edit_lock', '1438963028:1'),
(26, 11, '_edit_last', '1'),
(27, 11, '_edit_lock', '1438963039:1'),
(37, 14, '_menu_item_type', 'post_type'),
(38, 14, '_menu_item_menu_item_parent', '0'),
(39, 14, '_menu_item_object_id', '11'),
(40, 14, '_menu_item_object', 'page'),
(41, 14, '_menu_item_target', ''),
(42, 14, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(43, 14, '_menu_item_xfn', ''),
(44, 14, '_menu_item_url', ''),
(46, 15, '_menu_item_type', 'post_type'),
(47, 15, '_menu_item_menu_item_parent', '0'),
(48, 15, '_menu_item_object_id', '9'),
(49, 15, '_menu_item_object', 'page'),
(50, 15, '_menu_item_target', ''),
(51, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(52, 15, '_menu_item_xfn', ''),
(53, 15, '_menu_item_url', ''),
(55, 16, '_menu_item_type', 'post_type'),
(56, 16, '_menu_item_menu_item_parent', '0'),
(57, 16, '_menu_item_object_id', '7'),
(58, 16, '_menu_item_object', 'page'),
(59, 16, '_menu_item_target', ''),
(60, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(61, 16, '_menu_item_xfn', ''),
(62, 16, '_menu_item_url', ''),
(63, 17, '_edit_last', '1'),
(64, 17, '_edit_lock', '1439000355:1'),
(65, 19, '_edit_last', '1'),
(66, 19, '_edit_lock', '1439001638:1'),
(67, 21, '_menu_item_type', 'post_type'),
(68, 21, '_menu_item_menu_item_parent', '15'),
(69, 21, '_menu_item_object_id', '19'),
(70, 21, '_menu_item_object', 'page'),
(71, 21, '_menu_item_target', ''),
(72, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(73, 21, '_menu_item_xfn', ''),
(74, 21, '_menu_item_url', ''),
(76, 22, '_menu_item_type', 'post_type'),
(77, 22, '_menu_item_menu_item_parent', '15'),
(78, 22, '_menu_item_object_id', '17'),
(79, 22, '_menu_item_object', 'page'),
(80, 22, '_menu_item_target', ''),
(81, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(82, 22, '_menu_item_xfn', ''),
(83, 22, '_menu_item_url', ''),
(85, 19, '_wp_page_template', 'page-full-width.php'),
(86, 27, '_edit_last', '1'),
(87, 27, '_edit_lock', '1439001925:1'),
(88, 27, '_wp_page_template', 'page-full-width.php'),
(89, 32, '_menu_item_type', 'post_type'),
(90, 32, '_menu_item_menu_item_parent', '15'),
(91, 32, '_menu_item_object_id', '27'),
(92, 32, '_menu_item_object', 'page'),
(93, 32, '_menu_item_target', ''),
(94, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(95, 32, '_menu_item_xfn', ''),
(96, 32, '_menu_item_url', ''),
(98, 33, '_edit_last', '1'),
(99, 33, '_edit_lock', '1439003413:1'),
(102, 35, '_edit_last', '1'),
(103, 35, '_edit_lock', '1439306331:1'),
(106, 37, '_edit_last', '1'),
(107, 37, '_edit_lock', '1439306490:1'),
(108, 39, '_edit_last', '1'),
(109, 39, 'field_55c625798809b', 'a:14:{s:3:"key";s:19:"field_55c625798809b";s:5:"label";s:4:"Link";s:4:"name";s:4:"link";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(110, 39, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:9:"portfolio";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(111, 39, 'position', 'normal'),
(112, 39, 'layout', 'no_box'),
(113, 39, 'hide_on_screen', 'a:11:{i:0;s:7:"excerpt";i:1;s:13:"custom_fields";i:2;s:10:"discussion";i:3;s:8:"comments";i:4;s:9:"revisions";i:5;s:4:"slug";i:6;s:6:"author";i:7;s:6:"format";i:8;s:10:"categories";i:9;s:4:"tags";i:10;s:15:"send-trackbacks";}'),
(114, 39, '_edit_lock', '1439049018:1'),
(115, 42, '_edit_last', '1'),
(116, 42, '_edit_lock', '1439220126:1'),
(117, 43, '_wp_attached_file', '2015/08/art-rainbow-painting-contemporary-art-colour-wonderland-color-creativity-Abstract-acrylic-fine-art.jpg'),
(118, 43, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:1280;s:4:"file";s:110:"2015/08/art-rainbow-painting-contemporary-art-colour-wonderland-color-creativity-Abstract-acrylic-fine-art.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:110:"art-rainbow-painting-contemporary-art-colour-wonderland-color-creativity-Abstract-acrylic-fine-art-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:110:"art-rainbow-painting-contemporary-art-colour-wonderland-color-creativity-Abstract-acrylic-fine-art-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:112:"art-rainbow-painting-contemporary-art-colour-wonderland-color-creativity-Abstract-acrylic-fine-art-1024x1024.jpg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:2.3999999999999999;s:6:"credit";s:0:"";s:6:"camera";s:8:"iPhone 5";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1391330727;s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"4.12";s:3:"iso";s:2:"50";s:13:"shutter_speed";s:17:"0.041666666666667";s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(119, 44, '_wp_attached_file', '2015/08/InAfghanistan.jpg'),
(120, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:1280;s:4:"file";s:25:"2015/08/InAfghanistan.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"InAfghanistan-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"InAfghanistan-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:27:"InAfghanistan-1024x1024.jpg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(121, 45, '_wp_attached_file', '2015/08/Japanese-Style-Painting-1280x1280.jpg'),
(122, 45, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:1280;s:4:"file";s:45:"2015/08/Japanese-Style-Painting-1280x1280.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:45:"Japanese-Style-Painting-1280x1280-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:45:"Japanese-Style-Painting-1280x1280-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:47:"Japanese-Style-Painting-1280x1280-1024x1024.jpg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(123, 46, '_wp_attached_file', '2015/08/rachelaustin_1.jpg'),
(124, 46, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:1280;s:4:"file";s:26:"2015/08/rachelaustin_1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"rachelaustin_1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"rachelaustin_1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:28:"rachelaustin_1-1024x1024.jpg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:4;s:6:"credit";s:0:"";s:6:"camera";s:19:"Canon EOS REBEL T2i";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1328164766;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"18";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:4:"0.02";s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(125, 47, '_wp_attached_file', '2015/08/Seated_Ballerina_by_davinci3835.jpg'),
(126, 47, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:1280;s:4:"file";s:43:"2015/08/Seated_Ballerina_by_davinci3835.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:43:"Seated_Ballerina_by_davinci3835-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:43:"Seated_Ballerina_by_davinci3835-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:45:"Seated_Ballerina_by_davinci3835-1024x1024.jpg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(127, 48, '_wp_attached_file', '2015/08/tumblr_l04qvbDBxF1qzc7z8o1_1280.jpg'),
(128, 48, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:1280;s:4:"file";s:43:"2015/08/tumblr_l04qvbDBxF1qzc7z8o1_1280.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:43:"tumblr_l04qvbDBxF1qzc7z8o1_1280-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:43:"tumblr_l04qvbDBxF1qzc7z8o1_1280-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:45:"tumblr_l04qvbDBxF1qzc7z8o1_1280-1024x1024.jpg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(129, 49, '_wp_attached_file', '2015/08/tumblr_m8ehhtMpkJ1qhttpto1_1280.jpg'),
(130, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:1280;s:4:"file";s:43:"2015/08/tumblr_m8ehhtMpkJ1qhttpto1_1280.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:43:"tumblr_m8ehhtMpkJ1qhttpto1_1280-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:43:"tumblr_m8ehhtMpkJ1qhttpto1_1280-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:45:"tumblr_m8ehhtMpkJ1qhttpto1_1280-1024x1024.jpg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(131, 50, '_wp_attached_file', '2015/08/240623112IM05_l.jpeg'),
(132, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:1280;s:4:"file";s:28:"2015/08/240623112IM05_l.jpeg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"240623112IM05_l-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"240623112IM05_l-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:30:"240623112IM05_l-1024x1024.jpeg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(133, 42, '_thumbnail_id', '50'),
(134, 42, 'link', 'http://softhawk.com/kiran/'),
(135, 42, '_link', 'field_55c625798809b'),
(136, 51, '_edit_last', '1'),
(137, 51, '_edit_lock', '1439219726:1'),
(138, 51, '_thumbnail_id', '49'),
(139, 51, 'link', 'http://softhawk.com/kiran/'),
(140, 51, '_link', 'field_55c625798809b'),
(141, 52, '_edit_last', '1'),
(142, 52, '_edit_lock', '1439219716:1'),
(143, 52, '_thumbnail_id', '48'),
(144, 52, 'link', 'http://softhawk.com/kiran/'),
(145, 52, '_link', 'field_55c625798809b'),
(146, 53, '_edit_last', '1'),
(147, 53, '_edit_lock', '1439219703:1'),
(148, 53, '_thumbnail_id', '47'),
(149, 53, 'link', 'http://softhawk.com/kiran/'),
(150, 53, '_link', 'field_55c625798809b'),
(151, 54, '_edit_last', '1'),
(152, 54, '_edit_lock', '1439219691:1'),
(153, 54, '_thumbnail_id', '46'),
(154, 54, 'link', 'http://softhawk.com/kiran/'),
(155, 54, '_link', 'field_55c625798809b'),
(156, 55, '_edit_last', '1'),
(157, 55, '_edit_lock', '1439219678:1'),
(158, 56, '_edit_last', '1'),
(159, 56, '_edit_lock', '1439219672:1'),
(160, 56, '_thumbnail_id', '45'),
(161, 56, 'link', 'www.softhawk.com/kiran'),
(162, 56, '_link', 'field_55c625798809b'),
(163, 57, '_edit_last', '1'),
(164, 57, '_edit_lock', '1439219664:1'),
(165, 57, '_thumbnail_id', '44'),
(166, 57, 'link', 'http://softhawk.com/kiran/'),
(167, 57, '_link', 'field_55c625798809b'),
(168, 58, '_edit_last', '1'),
(169, 58, '_edit_lock', '1439304394:1'),
(170, 58, '_thumbnail_id', '43'),
(171, 58, 'link', 'http://softhawk.com/kiran/'),
(172, 58, '_link', 'field_55c625798809b'),
(173, 59, '_edit_last', '1'),
(174, 59, '_edit_lock', '1439050357:1'),
(175, 60, '_edit_last', '1'),
(176, 60, '_wp_page_template', 'page-portfolio.php'),
(177, 60, '_edit_lock', '1439227523:1'),
(178, 59, '_wp_trash_meta_status', 'draft'),
(179, 59, '_wp_trash_meta_time', '1439050768'),
(180, 63, '_menu_item_type', 'post_type'),
(181, 63, '_menu_item_menu_item_parent', '15'),
(182, 63, '_menu_item_object_id', '60'),
(183, 63, '_menu_item_object', 'page'),
(184, 63, '_menu_item_target', ''),
(185, 63, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(186, 63, '_menu_item_xfn', ''),
(187, 63, '_menu_item_url', ''),
(188, 55, '_wp_trash_meta_status', 'draft'),
(189, 55, '_wp_trash_meta_time', '1439219825'),
(190, 64, '_wp_attached_file', '2015/08/girl-drawing.jpg'),
(191, 64, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:330;s:4:"file";s:24:"2015/08/girl-drawing.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"girl-drawing-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"girl-drawing-260x95.jpg";s:5:"width";i:260;s:6:"height";i:95;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(192, 64, '_wp_attachment_image_alt', 'girl drawing'),
(193, 35, '_thumbnail_id', '64'),
(196, 1, '_edit_lock', '1439308960:1'),
(201, 1, '_edit_last', '1'),
(206, 67, '_wp_attached_file', '2014/05/DSCF5589_crop.jpg'),
(207, 67, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:330;s:4:"file";s:25:"2014/05/DSCF5589_crop.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"DSCF5589_crop-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"DSCF5589_crop-260x95.jpg";s:5:"width";i:260;s:6:"height";i:95;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(208, 67, '_wp_attachment_image_alt', 'Hello you'),
(209, 37, '_thumbnail_id', '67'),
(212, 68, '_wp_attached_file', '2015/08/2-brown-iris-entangled-gary-bodnar.jpg'),
(213, 68, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:330;s:4:"file";s:46:"2015/08/2-brown-iris-entangled-gary-bodnar.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:46:"2-brown-iris-entangled-gary-bodnar-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:45:"2-brown-iris-entangled-gary-bodnar-260x95.jpg";s:5:"width";i:260;s:6:"height";i:95;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(214, 68, '_wp_attachment_image_alt', 'world'),
(215, 1, '_thumbnail_id', '68'),
(218, 7, '_wp_page_template', 'default'),
(221, 16, '_menu_item_field_description', 'emne admin'),
(222, 7, 'Description new', 'i am not at all jeere');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=70 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-08-07 14:36:41', '2015-08-07 14:36:41', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-08-11 15:24:23', '2015-08-11 15:24:23', '', 0, 'http://localhost/biji-bootstrap-to-wp/?p=1', 0, 'post', '', 1),
(2, 1, '2015-08-07 14:36:41', '2015-08-07 14:36:41', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/biji-bootstrap-to-wp/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'open', 'open', '', 'sample-page', '', '', '2015-08-07 15:58:56', '2015-08-07 15:58:56', '', 0, 'http://localhost/biji-bootstrap-to-wp/?page_id=2', 0, 'page', '', 0),
(4, 1, '2015-08-07 15:58:31', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'open', 'open', '', '', '', '', '2015-08-07 15:58:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/biji-bootstrap-to-wp/?p=4', 1, 'nav_menu_item', '', 0),
(5, 1, '2015-08-07 15:58:32', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-08-07 15:58:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/biji-bootstrap-to-wp/?p=5', 1, 'nav_menu_item', '', 0),
(6, 1, '2015-08-07 15:58:56', '2015-08-07 15:58:56', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/biji-bootstrap-to-wp/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-08-07 15:58:56', '2015-08-07 15:58:56', '', 2, 'http://localhost/biji-bootstrap-to-wp/2015/08/07/2-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2015-08-07 15:59:07', '2015-08-07 15:59:07', '<h1>Hello, world!</h1>\r\nThis is a template for a simple marketing or informational website. It includes a large callout called a jumbotron and three supporting pieces of content. Use it as a starting point to create something more unique.\r\n\r\n[bs_button size="lg" type="primary" value="Read More" href=""]', 'Home', '', 'publish', 'open', 'open', '', 'home', '', '', '2015-08-21 11:29:09', '2015-08-21 11:29:09', '', 0, 'http://localhost/biji-bootstrap-to-wp/?page_id=7', 0, 'page', '', 0),
(8, 1, '2015-08-07 15:59:07', '2015-08-07 15:59:07', '', 'Home', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2015-08-07 15:59:07', '2015-08-07 15:59:07', '', 7, 'http://localhost/biji-bootstrap-to-wp/2015/08/07/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2015-08-07 15:59:30', '2015-08-07 15:59:30', '', 'Example pages', '', 'publish', 'open', 'open', '', 'example-pages', '', '', '2015-08-07 15:59:30', '2015-08-07 15:59:30', '', 0, 'http://localhost/biji-bootstrap-to-wp/?page_id=9', 0, 'page', '', 0),
(10, 1, '2015-08-07 15:59:30', '2015-08-07 15:59:30', '', 'Example pages', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2015-08-07 15:59:30', '2015-08-07 15:59:30', '', 9, 'http://localhost/biji-bootstrap-to-wp/2015/08/07/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2015-08-07 15:59:40', '2015-08-07 15:59:40', '', 'Blog', '', 'publish', 'open', 'open', '', 'blog', '', '', '2015-08-07 15:59:40', '2015-08-07 15:59:40', '', 0, 'http://localhost/biji-bootstrap-to-wp/?page_id=11', 0, 'page', '', 0),
(12, 1, '2015-08-07 15:59:40', '2015-08-07 15:59:40', '', 'Blog', '', 'inherit', 'open', 'open', '', '11-revision-v1', '', '', '2015-08-07 15:59:40', '2015-08-07 15:59:40', '', 11, 'http://localhost/biji-bootstrap-to-wp/2015/08/07/11-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2015-08-07 15:59:57', '2015-08-07 15:59:57', ' ', '', '', 'publish', 'open', 'closed', '', '14', '', '', '2015-08-21 11:24:21', '2015-08-21 11:24:21', '', 0, 'http://localhost/biji-bootstrap-to-wp/?p=14', 7, 'nav_menu_item', '', 0),
(15, 1, '2015-08-07 15:59:57', '2015-08-07 15:59:57', ' ', '', '', 'publish', 'open', 'closed', '', '15', '', '', '2015-08-21 11:24:21', '2015-08-21 11:24:21', '', 0, 'http://localhost/biji-bootstrap-to-wp/?p=15', 2, 'nav_menu_item', '', 0),
(16, 1, '2015-08-07 15:59:57', '2015-08-07 15:59:57', ' ', '', 'Home page', 'publish', 'open', 'closed', '', '16', '', '', '2015-08-21 11:24:21', '2015-08-21 11:24:21', '', 0, 'http://localhost/biji-bootstrap-to-wp/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2015-08-07 23:50:01', '2015-08-07 23:50:01', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Suspendisse potenti.\r\n\r\nMauris faucibus magna odio, ac posuere ex lobortis sed. Phasellus sollicitudin metus in purus interdum, vel ultrices odio convallis. Pellentesque sit amet risus maximus, tempus sem quis, commodo eros. Phasellus vitae felis in orci bibendum pellentesque ac sit amet nulla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce tempor accumsan dictum. Ut convallis placerat sodales. Mauris et augue velit. Vivamus vehicula tincidunt enim, quis tempor lectus suscipit quis. Phasellus ac pulvinar nisl. Aenean bibendum orci et tempor pharetra. Cras aliquet sagittis neque, in tincidunt nisl varius non. Suspendisse et magna vitae lorem vestibulum ultrices at at eros. Nullam pharetra commodo aliquam.', 'Page with sidebar', '', 'publish', 'open', 'open', '', 'page-with-sidebar', '', '', '2015-08-08 02:15:07', '2015-08-08 02:15:07', '', 9, 'http://localhost/biji-bootstrap-to-wp/?page_id=17', 0, 'page', '', 0),
(18, 1, '2015-08-07 23:50:01', '2015-08-07 23:50:01', '', 'Page with sidebar', '', 'inherit', 'open', 'open', '', '17-revision-v1', '', '', '2015-08-07 23:50:01', '2015-08-07 23:50:01', '', 17, 'http://localhost/biji-bootstrap-to-wp/2015/08/07/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2015-08-07 23:50:14', '2015-08-07 23:50:14', 'Aliquam finibus quam sed massa aliquam tincidunt. Vestibulum volutpat, ipsum in pulvinar pellentesque, augue tortor suscipit risus, euismod tempor magna nunc elementum elit. Vivamus non turpis at purus rutrum euismod. Donec pellentesque sem vel ligula pharetra, vitae pulvinar velit tempus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque venenatis aliquet rhoncus. Donec dignissim auctor congue. Mauris vel scelerisque dolor. Curabitur venenatis lorem mauris, ut bibendum tortor facilisis ac.\r\n\r\nDonec non purus eget mauris imperdiet porta et ut neque. Pellentesqu', 'Full width page', '', 'publish', 'open', 'open', '', 'full-width-page', '', '', '2015-08-08 02:36:55', '2015-08-08 02:36:55', '', 9, 'http://localhost/biji-bootstrap-to-wp/?page_id=19', 0, 'page', '', 0),
(20, 1, '2015-08-07 23:50:14', '2015-08-07 23:50:14', '', 'Full width page', '', 'inherit', 'open', 'open', '', '19-revision-v1', '', '', '2015-08-07 23:50:14', '2015-08-07 23:50:14', '', 19, 'http://localhost/biji-bootstrap-to-wp/2015/08/07/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2015-08-07 23:55:01', '2015-08-07 23:55:01', ' ', '', '', 'publish', 'open', 'closed', '', '21', '', '', '2015-08-21 11:24:21', '2015-08-21 11:24:21', '', 9, 'http://localhost/biji-bootstrap-to-wp/?p=21', 3, 'nav_menu_item', '', 0),
(22, 1, '2015-08-07 23:55:01', '2015-08-07 23:55:01', ' ', '', '', 'publish', 'open', 'closed', '', '22', '', '', '2015-08-21 11:24:21', '2015-08-21 11:24:21', '', 9, 'http://localhost/biji-bootstrap-to-wp/?p=22', 4, 'nav_menu_item', '', 0),
(23, 1, '2015-08-08 00:42:55', '2015-08-08 00:42:55', '<h1>Hello, world!</h1>\nThis is a template for a simple marketing or informational website. It includes a large callout called a jumbotron and three supporting pieces of content. Use it as a starting point to create something more unique.\n\n[bs_button size="lg" type="primary" value="Read M" href=""]', 'Home', '', 'inherit', 'open', 'open', '', '7-autosave-v1', '', '', '2015-08-08 00:42:55', '2015-08-08 00:42:55', '', 7, 'http://localhost/biji-bootstrap-to-wp/2015/08/08/7-autosave-v1/', 0, 'revision', '', 0),
(24, 1, '2015-08-08 00:43:21', '2015-08-08 00:43:21', '<h1>Hello, world!</h1>\r\nThis is a template for a simple marketing or informational website. It includes a large callout called a jumbotron and three supporting pieces of content. Use it as a starting point to create something more unique.\r\n\r\n[bs_button size="lg" type="primary" value="Read More" href=""]', 'Home', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2015-08-08 00:43:21', '2015-08-08 00:43:21', '', 7, 'http://localhost/biji-bootstrap-to-wp/2015/08/08/7-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2015-08-08 02:15:07', '2015-08-08 02:15:07', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Suspendisse potenti.\r\n\r\nMauris faucibus magna odio, ac posuere ex lobortis sed. Phasellus sollicitudin metus in purus interdum, vel ultrices odio convallis. Pellentesque sit amet risus maximus, tempus sem quis, commodo eros. Phasellus vitae felis in orci bibendum pellentesque ac sit amet nulla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce tempor accumsan dictum. Ut convallis placerat sodales. Mauris et augue velit. Vivamus vehicula tincidunt enim, quis tempor lectus suscipit quis. Phasellus ac pulvinar nisl. Aenean bibendum orci et tempor pharetra. Cras aliquet sagittis neque, in tincidunt nisl varius non. Suspendisse et magna vitae lorem vestibulum ultrices at at eros. Nullam pharetra commodo aliquam.', 'Page with sidebar', '', 'inherit', 'open', 'open', '', '17-revision-v1', '', '', '2015-08-08 02:15:07', '2015-08-08 02:15:07', '', 17, 'http://localhost/biji-bootstrap-to-wp/2015/08/08/17-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2015-08-08 02:36:55', '2015-08-08 02:36:55', 'Aliquam finibus quam sed massa aliquam tincidunt. Vestibulum volutpat, ipsum in pulvinar pellentesque, augue tortor suscipit risus, euismod tempor magna nunc elementum elit. Vivamus non turpis at purus rutrum euismod. Donec pellentesque sem vel ligula pharetra, vitae pulvinar velit tempus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque venenatis aliquet rhoncus. Donec dignissim auctor congue. Mauris vel scelerisque dolor. Curabitur venenatis lorem mauris, ut bibendum tortor facilisis ac.\r\n\r\nDonec non purus eget mauris imperdiet porta et ut neque. Pellentesqu', 'Full width page', '', 'inherit', 'open', 'open', '', '19-revision-v1', '', '', '2015-08-08 02:36:55', '2015-08-08 02:36:55', '', 19, 'http://localhost/biji-bootstrap-to-wp/2015/08/08/19-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2015-08-08 02:45:05', '2015-08-08 02:45:05', '[bs_row class="row"]<br class="nc" />[bs_col class="col-sm-3"]\r\n<h3>Title</h3>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.\r\n\r\n[/bs_col]<br class="nc" />[bs_col class="col-sm-3"]\r\n<h3>Title</h3>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.\r\n\r\n[/bs_col]<br class="nc" />[bs_col class="col-sm-3"]\r\n<h3>Title</h3>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.\r\n\r\n[/bs_col]<br class="nc" />[bs_col class="col-sm-3"]\r\n<h3>Title</h3>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.\r\n\r\n[/bs_col]<br class="nc" />[/bs_row]\r\n\r\n[bs_row class="row"]<br class="nc" />[bs_col class="col-sm-3"]\r\n<h3>Title</h3>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.\r\n\r\n[/bs_col]<br class="nc" />[bs_col class="col-sm-6"]\r\n<h3>Title</h3>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.\r\n\r\n[/bs_col]<br class="nc" />[bs_col class="col-sm-3"]\r\n<h3>Title</h3>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.\r\n<p class="nc">[/bs_col]<br class="nc" />[/bs_row]</p>\r\n<p class="nc">[bs_row class="row"]<br class="nc" />[bs_col class="col-sm-6"]</p>\r\n\r\n<h3>Title</h3>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.\r\n<p class="nc">[/bs_col]<br class="nc" />[bs_col class="col-sm-6"]</p>\r\n\r\n<h3>Title</h3>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.\r\n<p class="nc">[/bs_col]<br class="nc" />[/bs_row]</p>', 'Full width grid w shortcodes', '', 'publish', 'open', 'open', '', 'full-width-grid-w-shortcodes', '', '', '2015-08-08 02:47:46', '2015-08-08 02:47:46', '', 9, 'http://localhost/biji-bootstrap-to-wp/?page_id=27', 0, 'page', '', 0),
(28, 1, '2015-08-08 02:45:05', '2015-08-08 02:45:05', '[bs_row class="row"]<br class="nc" />[bs_col class="col-sm-3"]\r\n<h3>Title</h3>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.\r\n\r\n[/bs_col]<br class="nc" />[bs_col class="col-sm-3"]\r\n<h3>Title</h3>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.\r\n\r\n[/bs_col]<br class="nc" />[bs_col class="col-sm-3"]\r\n<h3>Title</h3>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.\r\n\r\n[/bs_col]<br class="nc" />[bs_col class="col-sm-3"]\r\n<h3>Title</h3>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.\r\n\r\n[/bs_col]<br class="nc" />[/bs_row]', 'Full width grid w shortcodes', '', 'inherit', 'open', 'open', '', '27-revision-v1', '', '', '2015-08-08 02:45:05', '2015-08-08 02:45:05', '', 27, 'http://localhost/biji-bootstrap-to-wp/2015/08/08/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2015-08-08 02:46:07', '2015-08-08 02:46:07', '[bs_row class="row"]<br class="nc" />[bs_col class="col-sm-3"]\n<h3>Title</h3>\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.\n\n[/bs_col]<br class="nc" />[bs_col class="col-sm-3"]\n<h3>Title</h3>\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.\n\n[/bs_col]<br class="nc" />[bs_col class="col-sm-3"]\n<h3>Title</h3>\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.\n\n[/bs_col]<br class="nc" />[bs_col class="col-sm-3"]\n<h3>Title</h3>\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.\n\n[/bs_col]<br class="nc" />[/bs_row]\n\n[bs_row class="row"]<br class="nc" />[bs_col class="col-sm-3"]\n<h3>Title</h3>\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.\n\n[/bs_col]<br class="nc" />[bs_col class="col-sm-3"]\n<h3>Title</h3>\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.\n\n[/bs_col]<br class="nc" />[bs_col class="col-sm-3"]\n<h3>Title</h3>\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.\n\n[/bs_col]<br class="nc" />[bs_col class="col-sm-3"]\n<h3>Title</h3>\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.\n\n[/bs_col]<br class="nc" />[/bs_row]', 'Full width grid w shortcodes', '', 'inherit', 'open', 'open', '', '27-autosave-v1', '', '', '2015-08-08 02:46:07', '2015-08-08 02:46:07', '', 27, 'http://localhost/biji-bootstrap-to-wp/2015/08/08/27-autosave-v1/', 0, 'revision', '', 0),
(30, 1, '2015-08-08 02:47:17', '2015-08-08 02:47:17', '[bs_row class="row"]<br class="nc" />[bs_col class="col-sm-3"]\r\n<h3>Title</h3>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.\r\n\r\n[/bs_col]<br class="nc" />[bs_col class="col-sm-3"]\r\n<h3>Title</h3>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.\r\n\r\n[/bs_col]<br class="nc" />[bs_col class="col-sm-3"]\r\n<h3>Title</h3>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.\r\n\r\n[/bs_col]<br class="nc" />[bs_col class="col-sm-3"]\r\n<h3>Title</h3>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.\r\n\r\n[/bs_col]<br class="nc" />[/bs_row]\r\n\r\n[bs_row class="row"]<br class="nc" />[bs_col class="col-sm-3"]\r\n<h3>Title</h3>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.\r\n\r\n[/bs_col]<br class="nc" />[bs_col class="col-sm-6"]\r\n<h3>Title</h3>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.\r\n\r\n[/bs_col]<br class="nc" />[bs_col class="col-sm-3"]\r\n<h3>Title</h3>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.\r\n<p class="nc">[/bs_col]<br class="nc" />[/bs_row]</p>', 'Full width grid w shortcodes', '', 'inherit', 'open', 'open', '', '27-revision-v1', '', '', '2015-08-08 02:47:17', '2015-08-08 02:47:17', '', 27, 'http://localhost/biji-bootstrap-to-wp/2015/08/08/27-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2015-08-08 02:47:46', '2015-08-08 02:47:46', '[bs_row class="row"]<br class="nc" />[bs_col class="col-sm-3"]\r\n<h3>Title</h3>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.\r\n\r\n[/bs_col]<br class="nc" />[bs_col class="col-sm-3"]\r\n<h3>Title</h3>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.\r\n\r\n[/bs_col]<br class="nc" />[bs_col class="col-sm-3"]\r\n<h3>Title</h3>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.\r\n\r\n[/bs_col]<br class="nc" />[bs_col class="col-sm-3"]\r\n<h3>Title</h3>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.\r\n\r\n[/bs_col]<br class="nc" />[/bs_row]\r\n\r\n[bs_row class="row"]<br class="nc" />[bs_col class="col-sm-3"]\r\n<h3>Title</h3>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.\r\n\r\n[/bs_col]<br class="nc" />[bs_col class="col-sm-6"]\r\n<h3>Title</h3>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.\r\n\r\n[/bs_col]<br class="nc" />[bs_col class="col-sm-3"]\r\n<h3>Title</h3>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.\r\n<p class="nc">[/bs_col]<br class="nc" />[/bs_row]</p>\r\n<p class="nc">[bs_row class="row"]<br class="nc" />[bs_col class="col-sm-6"]</p>\r\n\r\n<h3>Title</h3>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.\r\n<p class="nc">[/bs_col]<br class="nc" />[bs_col class="col-sm-6"]</p>\r\n\r\n<h3>Title</h3>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.\r\n<p class="nc">[/bs_col]<br class="nc" />[/bs_row]</p>', 'Full width grid w shortcodes', '', 'inherit', 'open', 'open', '', '27-revision-v1', '', '', '2015-08-08 02:47:46', '2015-08-08 02:47:46', '', 27, 'http://localhost/biji-bootstrap-to-wp/2015/08/08/27-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2015-08-08 02:48:01', '2015-08-08 02:48:01', ' ', '', '', 'publish', 'open', 'closed', '', '32', '', '', '2015-08-21 11:24:21', '2015-08-21 11:24:21', '', 9, 'http://localhost/biji-bootstrap-to-wp/?p=32', 5, 'nav_menu_item', '', 0),
(33, 1, '2015-08-08 03:12:35', '2015-08-08 03:12:35', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.', 'Hello Kiran', '', 'publish', 'open', 'open', '', 'hello-kiran', '', '', '2015-08-08 03:12:35', '2015-08-08 03:12:35', '', 0, 'http://localhost/biji-bootstrap-to-wp/?p=33', 0, 'post', '', 0),
(34, 1, '2015-08-08 03:12:35', '2015-08-08 03:12:35', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.', 'Hello Kiran', '', 'inherit', 'open', 'open', '', '33-revision-v1', '', '', '2015-08-08 03:12:35', '2015-08-08 03:12:35', '', 33, 'http://localhost/biji-bootstrap-to-wp/2015/08/08/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2015-08-08 03:12:54', '2015-08-08 03:12:54', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.', 'Hello biji', '', 'publish', 'open', 'open', '', 'hello-biji', '', '', '2015-08-11 15:20:20', '2015-08-11 15:20:20', '', 0, 'http://localhost/biji-bootstrap-to-wp/?p=35', 0, 'post', '', 0),
(36, 1, '2015-08-08 03:12:54', '2015-08-08 03:12:54', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.', 'Hello biji', '', 'inherit', 'open', 'open', '', '35-revision-v1', '', '', '2015-08-08 03:12:54', '2015-08-08 03:12:54', '', 35, 'http://localhost/biji-bootstrap-to-wp/2015/08/08/35-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2014-05-08 03:13:23', '2014-05-08 03:13:23', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.', 'Hello You', '', 'publish', 'open', 'open', '', 'hello-you', '', '', '2015-08-11 15:23:10', '2015-08-11 15:23:10', '', 0, 'http://localhost/biji-bootstrap-to-wp/?p=37', 0, 'post', '', 0),
(38, 1, '2015-08-08 03:13:23', '2015-08-08 03:13:23', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In a vestibulum nisi. Cras feugiat felis sit amet sapien dictum consectetur. Nam dolor magna, scelerisque eget cursus sed, bibendum ut justo. Mauris sodales consequat molestie. Vestibulum laoreet porttitor blandit.', 'Hello You', '', 'inherit', 'open', 'open', '', '37-revision-v1', '', '', '2015-08-08 03:13:23', '2015-08-08 03:13:23', '', 37, 'http://localhost/biji-bootstrap-to-wp/2015/08/08/37-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2015-08-08 15:52:25', '2015-08-08 15:52:25', '', 'portfolio', '', 'publish', 'closed', 'closed', '', 'acf_portfolio', '', '', '2015-08-08 15:52:25', '2015-08-08 15:52:25', '', 0, 'http://localhost/biji-bootstrap-to-wp/?post_type=acf&#038;p=39', 0, 'acf', '', 0),
(42, 1, '2015-08-08 16:09:05', '2015-08-08 16:09:05', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc maximus fermentum nisi, ut bibendum nibh ultrices at. Vestibulum ornare non ipsum quis condimentum. Aenean faucibus felis at augue convallis, vel ornare nisl consectetur. Pellentesque dictum mauris sit amet mi ultrices elementum. Curabitur sed magna vel urna venenatis imperdiet at id lorem. In gravida faucibus sollicitudin. Vestibulum consequat interdum lectus, at mattis mi vehicula tempor. In ut ultricies lorem.', 'Portfolio 1', '', 'publish', 'open', 'open', '', 'portfolio-1', '', '', '2015-08-10 15:17:59', '2015-08-10 15:17:59', '', 0, 'http://localhost/biji-bootstrap-to-wp/?post_type=portfolio&#038;p=42', 0, 'portfolio', '', 0),
(43, 1, '2015-08-08 16:07:46', '2015-08-08 16:07:46', '', 'art-rainbow-painting-contemporary-art-colour-wonderland-color-creativity-Abstract-acrylic-fine-art', '', 'inherit', 'open', 'open', '', 'art-rainbow-painting-contemporary-art-colour-wonderland-color-creativity-abstract-acrylic-fine-art', '', '', '2015-08-08 16:07:46', '2015-08-08 16:07:46', '', 42, 'http://localhost/biji-bootstrap-to-wp/wp-content/uploads/2015/08/art-rainbow-painting-contemporary-art-colour-wonderland-color-creativity-Abstract-acrylic-fine-art.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2015-08-08 16:07:48', '2015-08-08 16:07:48', '', 'InAfghanistan', '', 'inherit', 'open', 'open', '', 'inafghanistan', '', '', '2015-08-08 16:07:48', '2015-08-08 16:07:48', '', 42, 'http://localhost/biji-bootstrap-to-wp/wp-content/uploads/2015/08/InAfghanistan.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2015-08-08 16:07:49', '2015-08-08 16:07:49', '', 'Japanese-Style-Painting-1280x1280', '', 'inherit', 'open', 'open', '', 'japanese-style-painting-1280x1280', '', '', '2015-08-08 16:07:49', '2015-08-08 16:07:49', '', 42, 'http://localhost/biji-bootstrap-to-wp/wp-content/uploads/2015/08/Japanese-Style-Painting-1280x1280.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2015-08-08 16:07:50', '2015-08-08 16:07:50', '', 'rachelaustin_1', '', 'inherit', 'open', 'open', '', 'rachelaustin_1', '', '', '2015-08-08 16:07:50', '2015-08-08 16:07:50', '', 42, 'http://localhost/biji-bootstrap-to-wp/wp-content/uploads/2015/08/rachelaustin_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2015-08-08 16:07:50', '2015-08-08 16:07:50', '', 'Seated_Ballerina_by_davinci3835', '', 'inherit', 'open', 'open', '', 'seated_ballerina_by_davinci3835', '', '', '2015-08-08 16:07:50', '2015-08-08 16:07:50', '', 42, 'http://localhost/biji-bootstrap-to-wp/wp-content/uploads/2015/08/Seated_Ballerina_by_davinci3835.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2015-08-08 16:07:51', '2015-08-08 16:07:51', '', 'tumblr_l04qvbDBxF1qzc7z8o1_1280', '', 'inherit', 'open', 'open', '', 'tumblr_l04qvbdbxf1qzc7z8o1_1280', '', '', '2015-08-08 16:07:51', '2015-08-08 16:07:51', '', 42, 'http://localhost/biji-bootstrap-to-wp/wp-content/uploads/2015/08/tumblr_l04qvbDBxF1qzc7z8o1_1280.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2015-08-08 16:07:52', '2015-08-08 16:07:52', '', 'tumblr_m8ehhtMpkJ1qhttpto1_1280', '', 'inherit', 'open', 'open', '', 'tumblr_m8ehhtmpkj1qhttpto1_1280', '', '', '2015-08-08 16:07:52', '2015-08-08 16:07:52', '', 42, 'http://localhost/biji-bootstrap-to-wp/wp-content/uploads/2015/08/tumblr_m8ehhtMpkJ1qhttpto1_1280.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2015-08-08 16:08:11', '2015-08-08 16:08:11', '', '240623112IM05_l', '', 'inherit', 'open', 'open', '', '240623112im05_l', '', '', '2015-08-08 16:08:11', '2015-08-08 16:08:11', '', 42, 'http://localhost/biji-bootstrap-to-wp/wp-content/uploads/2015/08/240623112IM05_l.jpeg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2015-08-08 16:09:24', '2015-08-08 16:09:24', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc maximus fermentum nisi, ut bibendum nibh ultrices at. Vestibulum ornare non ipsum quis condimentum. Aenean faucibus felis at augue convallis, vel ornare nisl consectetur. Pellentesque dictum mauris sit amet mi ultrices elementum. Curabitur sed magna vel urna venenatis imperdiet at id lorem. In gravida faucibus sollicitudin. Vestibulum consequat interdum lectus, at mattis mi vehicula tempor. In ut ultricies lorem.', 'Portfolio 2', '', 'publish', 'open', 'open', '', 'portfolio-2', '', '', '2015-08-10 15:17:49', '2015-08-10 15:17:49', '', 0, 'http://localhost/biji-bootstrap-to-wp/?post_type=portfolio&#038;p=51', 0, 'portfolio', '', 0),
(52, 1, '2015-08-08 16:09:43', '2015-08-08 16:09:43', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc maximus fermentum nisi, ut bibendum nibh ultrices at. Vestibulum ornare non ipsum quis condimentum. Aenean faucibus felis at augue convallis, vel ornare nisl consectetur. Pellentesque dictum mauris sit amet mi ultrices elementum. Curabitur sed magna vel urna venenatis imperdiet at id lorem. In gravida faucibus sollicitudin. Vestibulum consequat interdum lectus, at mattis mi vehicula tempor. In ut ultricies lorem.', 'Portfolio 3', '', 'publish', 'open', 'open', '', 'portfolio-3', '', '', '2015-08-10 15:17:37', '2015-08-10 15:17:37', '', 0, 'http://localhost/biji-bootstrap-to-wp/?post_type=portfolio&#038;p=52', 0, 'portfolio', '', 0),
(53, 1, '2015-08-08 16:10:00', '2015-08-08 16:10:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc maximus fermentum nisi, ut bibendum nibh ultrices at. Vestibulum ornare non ipsum quis condimentum. Aenean faucibus felis at augue convallis, vel ornare nisl consectetur. Pellentesque dictum mauris sit amet mi ultrices elementum. Curabitur sed magna vel urna venenatis imperdiet at id lorem. In gravida faucibus sollicitudin. Vestibulum consequat interdum lectus, at mattis mi vehicula tempor. In ut ultricies lorem.', 'Portfolio 4', '', 'publish', 'open', 'open', '', 'portfolio-4', '', '', '2015-08-10 15:17:26', '2015-08-10 15:17:26', '', 0, 'http://localhost/biji-bootstrap-to-wp/?post_type=portfolio&#038;p=53', 0, 'portfolio', '', 0),
(54, 1, '2015-08-08 16:10:23', '2015-08-08 16:10:23', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc maximus fermentum nisi, ut bibendum nibh ultrices at. Vestibulum ornare non ipsum quis condimentum. Aenean faucibus felis at augue convallis, vel ornare nisl consectetur. Pellentesque dictum mauris sit amet mi ultrices elementum. Curabitur sed magna vel urna venenatis imperdiet at id lorem. In gravida faucibus sollicitudin. Vestibulum consequat interdum lectus, at mattis mi vehicula tempor. In ut ultricies lorem.', 'Portfolio 5', '', 'publish', 'open', 'open', '', 'portfolio-5', '', '', '2015-08-10 15:17:13', '2015-08-10 15:17:13', '', 0, 'http://localhost/biji-bootstrap-to-wp/?post_type=portfolio&#038;p=54', 0, 'portfolio', '', 0),
(55, 1, '2015-08-08 16:10:37', '2015-08-08 16:10:37', '', 'P', '', 'trash', 'open', 'open', '', 'p', '', '', '2015-08-10 15:17:05', '2015-08-10 15:17:05', '', 0, 'http://localhost/biji-bootstrap-to-wp/?post_type=portfolio&#038;p=55', 0, 'portfolio', '', 0),
(56, 1, '2015-08-08 16:11:23', '2015-08-08 16:11:23', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc maximus fermentum nisi, ut bibendum nibh ultrices at. Vestibulum ornare non ipsum quis condimentum. Aenean faucibus felis at augue convallis, vel ornare nisl consectetur. Pellentesque dictum mauris sit amet mi ultrices elementum. Curabitur sed magna vel urna venenatis imperdiet at id lorem. In gravida faucibus sollicitudin. Vestibulum consequat interdum lectus, at mattis mi vehicula tempor. In ut ultricies lorem.', 'Portfolio 6', '', 'publish', 'open', 'open', '', 'portfolio-6', '', '', '2015-08-08 16:11:23', '2015-08-08 16:11:23', '', 0, 'http://localhost/biji-bootstrap-to-wp/?post_type=portfolio&#038;p=56', 0, 'portfolio', '', 0),
(57, 1, '2015-08-08 16:11:41', '2015-08-08 16:11:41', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc maximus fermentum nisi, ut bibendum nibh ultrices at. Vestibulum ornare non ipsum quis condimentum. Aenean faucibus felis at augue convallis, vel ornare nisl consectetur. Pellentesque dictum mauris sit amet mi ultrices elementum. Curabitur sed magna vel urna venenatis imperdiet at id lorem. In gravida faucibus sollicitudin. Vestibulum consequat interdum lectus, at mattis mi vehicula tempor. In ut ultricies lorem.', 'Portfolio 7', '', 'publish', 'open', 'open', '', 'portfolio-7', '', '', '2015-08-10 15:16:46', '2015-08-10 15:16:46', '', 0, 'http://localhost/biji-bootstrap-to-wp/?post_type=portfolio&#038;p=57', 0, 'portfolio', '', 0),
(58, 1, '2015-08-08 16:12:05', '2015-08-08 16:12:05', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc maximus fermentum nisi, ut bibendum nibh ultrices at. Vestibulum ornare non ipsum quis condimentum. Aenean faucibus felis at augue convallis, vel ornare nisl consectetur. Pellentesque dictum mauris sit amet mi ultrices elementum. Curabitur sed magna vel urna venenatis imperdiet at id lorem. In gravida faucibus sollicitudin. Vestibulum consequat interdum lectus, at mattis mi vehicula tempor. In ut ultricies lorem.', 'Portfolio 8', '', 'publish', 'open', 'open', '', 'portfolio-8', '', '', '2015-08-10 15:16:35', '2015-08-10 15:16:35', '', 0, 'http://localhost/biji-bootstrap-to-wp/?post_type=portfolio&#038;p=58', 0, 'portfolio', '', 0),
(59, 1, '2015-08-08 16:12:37', '2015-08-08 16:12:37', '', 'Portfolio Grid w Custom Posts', '', 'trash', 'open', 'open', '', 'portfolio-grid-w-custom-posts-2', '', '', '2015-08-08 16:19:28', '2015-08-08 16:19:28', '', 0, 'http://localhost/biji-bootstrap-to-wp/?page_id=59', 0, 'page', '', 0),
(60, 1, '2015-08-08 16:13:52', '2015-08-08 16:13:52', '', 'Portfolio Grid w Custom Posts', '', 'publish', 'open', 'open', '', 'portfolio-grid-w-custom-posts', '', '', '2015-08-08 16:19:36', '2015-08-08 16:19:36', '', 9, 'http://localhost/biji-bootstrap-to-wp/?page_id=60', 0, 'page', '', 0),
(61, 1, '2015-08-08 16:13:52', '2015-08-08 16:13:52', '', 'Portfolio Grid w Custom Posts', '', 'inherit', 'open', 'open', '', '60-revision-v1', '', '', '2015-08-08 16:13:52', '2015-08-08 16:13:52', '', 60, 'http://localhost/biji-bootstrap-to-wp/2015/08/08/60-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2015-08-08 16:19:28', '2015-08-08 16:19:28', '', 'Portfolio Grid w Custom Posts', '', 'inherit', 'open', 'open', '', '59-revision-v1', '', '', '2015-08-08 16:19:28', '2015-08-08 16:19:28', '', 59, 'http://localhost/biji-bootstrap-to-wp/2015/08/08/59-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2015-08-08 16:20:08', '2015-08-08 16:20:08', ' ', '', '', 'publish', 'open', 'closed', '', '63', '', '', '2015-08-21 11:24:21', '2015-08-21 11:24:21', '', 9, 'http://localhost/biji-bootstrap-to-wp/?p=63', 6, 'nav_menu_item', '', 0),
(64, 1, '2015-08-11 15:20:05', '2015-08-11 15:20:05', '', 'girl-drawing', '', 'inherit', 'open', 'open', '', 'girl-drawing', '', '', '2015-08-11 15:20:17', '2015-08-11 15:20:17', '', 35, 'http://localhost/biji-bootstrap-to-wp/wp-content/uploads/2015/08/girl-drawing.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2015-08-11 15:21:45', '2015-08-11 15:21:45', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2015-08-11 15:21:45', '2015-08-11 15:21:45', '', 1, 'http://localhost/biji-bootstrap-to-wp/1-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2015-08-11 15:23:00', '2015-08-11 15:23:00', '', 'Hello you', '', 'inherit', 'open', 'open', '', 'dscf5589_crop', '', '', '2015-08-11 15:23:08', '2015-08-11 15:23:08', '', 37, 'http://localhost/biji-bootstrap-to-wp/wp-content/uploads/2014/05/DSCF5589_crop.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2015-08-11 15:24:11', '2015-08-11 15:24:11', '', 'world', '', 'inherit', 'open', 'open', '', '2-brown-iris-entangled-gary-bodnar', '', '', '2015-08-11 15:24:20', '2015-08-11 15:24:20', '', 1, 'http://localhost/biji-bootstrap-to-wp/wp-content/uploads/2015/08/2-brown-iris-entangled-gary-bodnar.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2015-08-11 16:08:50', '0000-00-00 00:00:00', 'This is a preview of how this form will appear on your website', 'ninja_forms_preview_page', '', 'draft', 'open', 'open', '', '', '', '', '2015-08-11 16:08:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/biji-bootstrap-to-wp/?page_id=69', 0, 'page', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0),
(3, 'Specials', 'specials', 0),
(4, 'News', 'news', 0),
(5, 'Sports', 'sports', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 4, 0),
(14, 2, 0),
(15, 2, 0),
(16, 2, 0),
(21, 2, 0),
(22, 2, 0),
(32, 2, 0),
(33, 3, 0),
(35, 3, 0),
(35, 4, 0),
(37, 3, 0),
(37, 4, 0),
(37, 5, 0),
(63, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 7),
(3, 3, 'category', '', 0, 3),
(4, 4, 'category', '', 0, 3),
(5, 5, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=23 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'kiran'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw,black_studio_tinymce_widget'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:1:{s:64:"be4bf3e033bb0e06a4e792a3b2da469cdfd07c4c05ffb677f67e728561238cf1";a:4:{s:10:"expiration";i:1440325662;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:76:"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:39.0) Gecko/20100101 Firefox/39.0";s:5:"login";i:1440152862;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";}'),
(18, 1, 'nav_menu_recently_edited', '2'),
(19, 1, 'wp_user-settings', 'hidetb=1&editor=tinymce&libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1439050140'),
(21, 1, 'closedpostboxes_page', 'a:0:{}'),
(22, 1, 'metaboxhidden_page', 'a:6:{i:0;s:6:"acf_39";i:1;s:12:"revisionsdiv";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'kiran', '$P$B9klDGI0ublDE.PNqVqIj3M.31fLXN0', 'kiran', 'thekirankumardash@gmail.com', '', '2015-08-07 14:36:41', '', 0, 'kiran');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
