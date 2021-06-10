-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 10, 2021 at 02:16 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `soft`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblactivity_log`
--

CREATE TABLE `tblactivity_log` (
  `id` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `date` datetime NOT NULL,
  `staffid` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblactivity_log`
--

INSERT INTO `tblactivity_log` (`id`, `description`, `date`, `staffid`) VALUES
(1, 'New Client Created [ID: 1, From Staff: 1]', '2021-06-06 02:08:56', 'Admin ERPSUR'),
(2, 'Contact Created [ID: 1]', '2021-06-06 02:09:27', 'Admin ERPSUR'),
(3, 'New Department Added [Sector 01, ID: 1]', '2021-06-06 02:10:31', 'Admin ERPSUR'),
(4, 'New Ticket Created [ID: 1]', '2021-06-06 02:10:53', 'Admin ERPSUR'),
(5, 'New Project Created [ID: 1]', '2021-06-06 02:19:07', 'Admin ERPSUR'),
(6, 'Event Deleted [1]', '2021-06-06 02:32:02', 'Admin ERPSUR'),
(7, 'Vault Entry Created [Customer ID: 1]', '2021-06-06 02:41:25', 'Admin ERPSUR'),
(8, 'Vault Entry Deleted [Customer ID: 1]', '2021-06-06 02:41:40', 'Admin ERPSUR'),
(9, 'Project Milestone Created [ID:1]', '2021-06-06 04:02:33', 'Admin ERPSUR'),
(10, 'New Feedback Added [ID: 1, Subject: Feedback]', '2021-06-06 04:21:32', 'Admin ERPSUR'),
(11, 'Failed Login Attempt [Email: admin@soft.com, Is Staff Member: Yes, IP: 192.168.1.104]', '2021-06-08 17:28:44', NULL),
(12, 'New Staff Member Added [ID: 2, empleado 01]', '2021-06-08 17:47:07', 'Admin ERPSUR'),
(13, 'Non Existing User Tried to Login [Email: empleado@soft.com, Is Staff Member: Yes, IP: 192.168.1.104]', '2021-06-08 17:47:26', NULL),
(14, 'Non Existing User Tried to Login [Email: empleado@soft.com, Is Staff Member: Yes, IP: 192.168.1.104]', '2021-06-08 17:47:35', NULL),
(15, 'Staff Member Updated [ID: 2, empleado 01]', '2021-06-08 17:48:12', 'Admin ERPSUR'),
(16, 'Cron Invoked Manually', '2021-06-09 16:34:40', 'Admin ERPSUR'),
(17, 'Cron Invoked Manually', '2021-06-09 16:34:47', 'Admin ERPSUR'),
(18, 'Cron Invoked Manually', '2021-06-09 16:35:23', 'Admin ERPSUR'),
(19, 'Role Updated [ID: 1, Name: Empleado]', '2021-06-09 17:08:06', 'Admin ERPSUR'),
(20, 'Leads Status Updated [StatusID: 1, Name: INACTIVOS]', '2021-06-09 17:53:58', 'Admin ERPSUR'),
(21, 'New Leads Status Added [StatusID: 2, Name: CON FALLAS]', '2021-06-09 17:54:16', 'Admin ERPSUR'),
(22, 'New Leads Status Added [StatusID: 3, Name: ACTIVOS]', '2021-06-09 17:54:32', 'Admin ERPSUR');

-- --------------------------------------------------------

--
-- Table structure for table `tblallowance_type`
--

CREATE TABLE `tblallowance_type` (
  `type_id` int(11) UNSIGNED NOT NULL,
  `type_name` varchar(200) NOT NULL,
  `allowance_val` decimal(15,2) NOT NULL,
  `taxable` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblannouncements`
--

CREATE TABLE `tblannouncements` (
  `announcementid` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `message` text,
  `showtousers` int(11) NOT NULL,
  `showtostaff` int(11) NOT NULL,
  `showname` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `userid` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblappointly_appointments`
--

CREATE TABLE `tblappointly_appointments` (
  `id` int(11) UNSIGNED NOT NULL,
  `google_event_id` varchar(191) DEFAULT NULL,
  `google_calendar_link` varchar(191) DEFAULT NULL,
  `google_added_by_id` int(11) DEFAULT NULL,
  `subject` varchar(191) NOT NULL,
  `description` text,
  `email` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `notes` longtext,
  `contact_id` int(11) DEFAULT NULL,
  `by_sms` tinyint(1) DEFAULT NULL,
  `by_email` tinyint(1) DEFAULT NULL,
  `hash` varchar(191) DEFAULT NULL,
  `notification_date` datetime DEFAULT NULL,
  `external_notification_date` datetime DEFAULT NULL,
  `date` date NOT NULL,
  `start_hour` varchar(191) NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `reminder_before` int(11) DEFAULT NULL,
  `reminder_before_type` varchar(10) DEFAULT NULL,
  `finished` tinyint(1) NOT NULL DEFAULT '0',
  `cancelled` tinyint(1) NOT NULL DEFAULT '0',
  `cancel_notes` text,
  `source` varchar(191) DEFAULT NULL,
  `type_id` int(11) NOT NULL DEFAULT '0',
  `feedback` smallint(6) DEFAULT NULL,
  `feedback_comment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblappointly_appointments`
--

INSERT INTO `tblappointly_appointments` (`id`, `google_event_id`, `google_calendar_link`, `google_added_by_id`, `subject`, `description`, `email`, `name`, `phone`, `address`, `notes`, `contact_id`, `by_sms`, `by_email`, `hash`, `notification_date`, `external_notification_date`, `date`, `start_hour`, `approved`, `created_by`, `reminder_before`, `reminder_before_type`, `finished`, `cancelled`, `cancel_notes`, `source`, `type_id`, `feedback`, `feedback_comment`) VALUES
(1, NULL, NULL, NULL, 'Tareas programadas', 'http://192.168.1.104/admin/appointly/appointments\r\n\r\n', 'admin@soft.com', 'asd', '', '', '<a href=\"http://www.writephponline.com/\">http://www.writephponline.com/</a>', NULL, NULL, NULL, '8e819055e6d14f44efea8ea3abbdd672', NULL, NULL, '2021-06-06', '09:00', 1, 1, NULL, NULL, 1, 0, NULL, 'external', 0, NULL, NULL),
(3, NULL, NULL, NULL, '02', '02', 'alaniz.fabian@gmail.com', 'Gustavo Fabian Alaniz', '', '', '01', 1, NULL, NULL, 'a54c153334d0ca52aac1c85b1c5672cd', NULL, NULL, '2021-06-17', '09:00', 1, 1, NULL, NULL, 0, 0, NULL, 'internal', 0, NULL, NULL),
(6, NULL, NULL, NULL, 'Tema programado 22', 'qwe', NULL, NULL, NULL, '', '', NULL, NULL, NULL, 'f284aa4c1cc8ae5675f956b21243434b', NULL, NULL, '2021-06-10', '10:30', 1, 2, NULL, NULL, 0, 0, NULL, 'external', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblappointly_appointment_types`
--

CREATE TABLE `tblappointly_appointment_types` (
  `id` int(11) NOT NULL,
  `type` varchar(191) NOT NULL,
  `color` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblappointly_appointment_types`
--

INSERT INTO `tblappointly_appointment_types` (`id`, `type`, `color`) VALUES
(1, 'Programación diaria ', '#b81f56');

-- --------------------------------------------------------

--
-- Table structure for table `tblappointly_attendees`
--

CREATE TABLE `tblappointly_attendees` (
  `staff_id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblappointly_attendees`
--

INSERT INTO `tblappointly_attendees` (`staff_id`, `appointment_id`) VALUES
(1, 1),
(1, 3),
(2, 0),
(1, 0),
(2, 0),
(2, 0),
(2, 0),
(2, 0),
(2, 0),
(2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tblappointly_callbacks`
--

CREATE TABLE `tblappointly_callbacks` (
  `id` int(11) NOT NULL,
  `call_type` varchar(191) NOT NULL,
  `phone_number` varchar(191) NOT NULL,
  `timezone` varchar(191) NOT NULL,
  `firstname` varchar(191) NOT NULL,
  `lastname` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL DEFAULT '1',
  `message` text NOT NULL,
  `email` varchar(191) NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblappointly_callbacks_assignees`
--

CREATE TABLE `tblappointly_callbacks_assignees` (
  `id` int(11) NOT NULL,
  `callbackid` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblappointly_google`
--

CREATE TABLE `tblappointly_google` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `access_token` varchar(191) NOT NULL,
  `refresh_token` varchar(191) NOT NULL,
  `expires_in` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblassets`
--

CREATE TABLE `tblassets` (
  `id` int(11) NOT NULL,
  `assets_code` varchar(20) NOT NULL,
  `assets_name` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `unit` int(11) NOT NULL,
  `series` varchar(200) DEFAULT NULL,
  `asset_group` int(11) DEFAULT NULL,
  `asset_location` int(11) DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  `date_buy` date NOT NULL,
  `warranty_period` int(11) NOT NULL,
  `unit_price` decimal(15,2) NOT NULL,
  `depreciation` int(11) NOT NULL,
  `supplier_name` varchar(255) DEFAULT NULL,
  `supplier_address` varchar(255) DEFAULT NULL,
  `supplier_phone` int(11) DEFAULT NULL,
  `description` text,
  `status` int(11) NOT NULL DEFAULT '1',
  `total_allocation` int(11) DEFAULT '0',
  `total_lost` int(11) DEFAULT '0',
  `total_liquidation` int(11) DEFAULT '0',
  `total_damages` int(11) DEFAULT '0',
  `total_warranty` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblassets`
--

INSERT INTO `tblassets` (`id`, `assets_code`, `assets_name`, `amount`, `unit`, `series`, `asset_group`, `asset_location`, `department`, `date_buy`, `warranty_period`, `unit_price`, `depreciation`, `supplier_name`, `supplier_address`, `supplier_phone`, `description`, `status`, `total_allocation`, `total_lost`, `total_liquidation`, `total_damages`, `total_warranty`) VALUES
(1, '5489', 'PC', 1, 1, '', 1, 1, 1, '2021-06-06', 1, '50.00', 4, '', '', 0, '', 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblassets_acction_1`
--

CREATE TABLE `tblassets_acction_1` (
  `id` int(11) NOT NULL,
  `acction_code` varchar(100) NOT NULL,
  `assets` int(11) NOT NULL,
  `acction_from` int(11) NOT NULL,
  `acction_to` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `time_acction` datetime NOT NULL,
  `asset_location` varchar(255) DEFAULT NULL,
  `acction_location` varchar(255) NOT NULL,
  `acction_reason` text,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblassets_acction_2`
--

CREATE TABLE `tblassets_acction_2` (
  `id` int(11) NOT NULL,
  `acction_code` varchar(100) NOT NULL,
  `assets` int(11) NOT NULL,
  `acction_from` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `cost` decimal(15,0) DEFAULT NULL,
  `time_acction` datetime NOT NULL,
  `description` text,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblassets_group`
--

CREATE TABLE `tblassets_group` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblassets_group`
--

INSERT INTO `tblassets_group` (`group_id`, `group_name`) VALUES
(1, 'herramientas');

-- --------------------------------------------------------

--
-- Table structure for table `tblasset_location`
--

CREATE TABLE `tblasset_location` (
  `location_id` int(11) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblasset_location`
--

INSERT INTO `tblasset_location` (`location_id`, `location`) VALUES
(1, 'Empresa');

-- --------------------------------------------------------

--
-- Table structure for table `tblasset_unit`
--

CREATE TABLE `tblasset_unit` (
  `unit_id` int(11) NOT NULL,
  `unit_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblasset_unit`
--

INSERT INTO `tblasset_unit` (`unit_id`, `unit_name`) VALUES
(1, 'Unidades');

-- --------------------------------------------------------

--
-- Table structure for table `tblcart`
--

CREATE TABLE `tblcart` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_contact` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `address` varchar(250) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `voucher` varchar(100) NOT NULL,
  `status` int(11) DEFAULT '0',
  `complete` int(11) DEFAULT '0',
  `datecreator` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `order_number` varchar(100) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `channel` varchar(150) DEFAULT NULL,
  `first_name` varchar(60) DEFAULT NULL,
  `last_name` varchar(60) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `company` varchar(150) DEFAULT NULL,
  `phonenumber` varchar(15) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `billing_street` varchar(150) DEFAULT NULL,
  `billing_city` varchar(50) DEFAULT NULL,
  `billing_state` varchar(50) DEFAULT NULL,
  `billing_country` varchar(50) DEFAULT NULL,
  `billing_zip` varchar(50) DEFAULT NULL,
  `shipping_street` varchar(150) DEFAULT NULL,
  `shipping_city` varchar(50) DEFAULT NULL,
  `shipping_state` varchar(50) DEFAULT NULL,
  `shipping_country` varchar(50) DEFAULT NULL,
  `shipping_zip` varchar(50) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `notes` text,
  `reason` varchar(250) DEFAULT NULL,
  `admin_action` int(11) DEFAULT '0',
  `discount` varchar(250) DEFAULT NULL,
  `discount_type` int(11) DEFAULT '0',
  `total` varchar(250) DEFAULT NULL,
  `sub_total` varchar(250) DEFAULT NULL,
  `discount_total` varchar(250) NOT NULL DEFAULT '',
  `invoice` varchar(250) NOT NULL DEFAULT '',
  `number_invoice` varchar(250) NOT NULL DEFAULT '',
  `stock_export_number` varchar(250) NOT NULL DEFAULT '',
  `create_invoice` varchar(5) NOT NULL DEFAULT 'off',
  `stock_export` varchar(5) NOT NULL DEFAULT 'off',
  `customers_pay` decimal(15,2) NOT NULL DEFAULT '0.00',
  `amount_returned` decimal(15,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(15,2) NOT NULL DEFAULT '0.00',
  `seller` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcart_detailt`
--

CREATE TABLE `tblcart_detailt` (
  `id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `classify` varchar(30) DEFAULT NULL,
  `cart_id` int(11) NOT NULL,
  `product_name` varchar(150) DEFAULT NULL,
  `prices` decimal(15,2) DEFAULT NULL,
  `long_description` text,
  `sku` text NOT NULL,
  `percent_discount` decimal(15,0) NOT NULL,
  `prices_discount` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblclients`
--

CREATE TABLE `tblclients` (
  `userid` int(11) NOT NULL,
  `company` varchar(191) DEFAULT NULL,
  `vat` varchar(50) DEFAULT NULL,
  `phonenumber` varchar(30) DEFAULT NULL,
  `country` int(11) NOT NULL DEFAULT '0',
  `city` varchar(100) DEFAULT NULL,
  `zip` varchar(15) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `website` varchar(150) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `leadid` int(11) DEFAULT NULL,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT '0',
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT '0',
  `longitude` varchar(191) DEFAULT NULL,
  `latitude` varchar(191) DEFAULT NULL,
  `default_language` varchar(40) DEFAULT NULL,
  `default_currency` int(11) NOT NULL DEFAULT '0',
  `show_primary_contact` int(11) NOT NULL DEFAULT '0',
  `stripe_id` varchar(40) DEFAULT NULL,
  `registration_confirmed` int(11) NOT NULL DEFAULT '1',
  `addedfrom` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblclients`
--

INSERT INTO `tblclients` (`userid`, `company`, `vat`, `phonenumber`, `country`, `city`, `zip`, `state`, `address`, `website`, `datecreated`, `active`, `leadid`, `billing_street`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `shipping_street`, `shipping_city`, `shipping_state`, `shipping_zip`, `shipping_country`, `longitude`, `latitude`, `default_language`, `default_currency`, `show_primary_contact`, `stripe_id`, `registration_confirmed`, `addedfrom`) VALUES
(1, 'ERPSUR', '', '', 0, '', '', '', '', '', '2021-06-06 02:08:56', 1, NULL, '', '', '', '', 0, '', '', '', '', 0, '65.0365697', '42.764729', '', 0, 0, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblconsents`
--

CREATE TABLE `tblconsents` (
  `id` int(11) NOT NULL,
  `action` varchar(10) NOT NULL,
  `date` datetime NOT NULL,
  `ip` varchar(40) NOT NULL,
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `lead_id` int(11) NOT NULL DEFAULT '0',
  `description` text,
  `opt_in_purpose_description` text,
  `purpose_id` int(11) NOT NULL,
  `staff_name` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblconsent_purposes`
--

CREATE TABLE `tblconsent_purposes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text,
  `date_created` datetime NOT NULL,
  `last_updated` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcontacts`
--

CREATE TABLE `tblcontacts` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `is_primary` int(11) NOT NULL DEFAULT '1',
  `firstname` varchar(191) NOT NULL,
  `lastname` varchar(191) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phonenumber` varchar(100) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `new_pass_key` varchar(32) DEFAULT NULL,
  `new_pass_key_requested` datetime DEFAULT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `email_verification_key` varchar(32) DEFAULT NULL,
  `email_verification_sent_at` datetime DEFAULT NULL,
  `last_ip` varchar(40) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_password_change` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `profile_image` varchar(191) DEFAULT NULL,
  `direction` varchar(3) DEFAULT NULL,
  `invoice_emails` tinyint(1) NOT NULL DEFAULT '1',
  `estimate_emails` tinyint(1) NOT NULL DEFAULT '1',
  `credit_note_emails` tinyint(1) NOT NULL DEFAULT '1',
  `contract_emails` tinyint(1) NOT NULL DEFAULT '1',
  `task_emails` tinyint(1) NOT NULL DEFAULT '1',
  `project_emails` tinyint(1) NOT NULL DEFAULT '1',
  `ticket_emails` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcontacts`
--

INSERT INTO `tblcontacts` (`id`, `userid`, `is_primary`, `firstname`, `lastname`, `email`, `phonenumber`, `title`, `datecreated`, `password`, `new_pass_key`, `new_pass_key_requested`, `email_verified_at`, `email_verification_key`, `email_verification_sent_at`, `last_ip`, `last_login`, `last_password_change`, `active`, `profile_image`, `direction`, `invoice_emails`, `estimate_emails`, `credit_note_emails`, `contract_emails`, `task_emails`, `project_emails`, `ticket_emails`) VALUES
(1, 1, 1, 'Gustavo Fabian', 'Alaniz', 'alaniz.fabian@gmail.com', '', '', '2021-06-06 02:09:25', '$2a$08$NnZRpxu0nXdGuBWfa7t87evIlvyaHruna8.b7nOQwOScRgVWDdzrO', NULL, NULL, '2021-06-06 02:09:25', NULL, NULL, NULL, NULL, NULL, 1, NULL, '', 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact_permissions`
--

CREATE TABLE `tblcontact_permissions` (
  `id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcontact_permissions`
--

INSERT INTO `tblcontact_permissions` (`id`, `permission_id`, `userid`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontracts`
--

CREATE TABLE `tblcontracts` (
  `id` int(11) NOT NULL,
  `content` longtext,
  `description` text,
  `subject` varchar(191) DEFAULT NULL,
  `client` int(11) NOT NULL,
  `datestart` date DEFAULT NULL,
  `dateend` date DEFAULT NULL,
  `contract_type` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `isexpirynotified` int(11) NOT NULL DEFAULT '0',
  `contract_value` decimal(15,2) DEFAULT NULL,
  `trash` tinyint(1) DEFAULT '0',
  `not_visible_to_client` tinyint(1) NOT NULL DEFAULT '0',
  `hash` varchar(32) DEFAULT NULL,
  `signed` tinyint(1) NOT NULL DEFAULT '0',
  `signature` varchar(40) DEFAULT NULL,
  `marked_as_signed` tinyint(1) NOT NULL DEFAULT '0',
  `acceptance_firstname` varchar(50) DEFAULT NULL,
  `acceptance_lastname` varchar(50) DEFAULT NULL,
  `acceptance_email` varchar(100) DEFAULT NULL,
  `acceptance_date` datetime DEFAULT NULL,
  `acceptance_ip` varchar(40) DEFAULT NULL,
  `short_link` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcontracts_types`
--

CREATE TABLE `tblcontracts_types` (
  `id` int(11) NOT NULL,
  `name` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcontract_comments`
--

CREATE TABLE `tblcontract_comments` (
  `id` int(11) NOT NULL,
  `content` mediumtext,
  `contract_id` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcontract_renewals`
--

CREATE TABLE `tblcontract_renewals` (
  `id` int(11) NOT NULL,
  `contractid` int(11) NOT NULL,
  `old_start_date` date NOT NULL,
  `new_start_date` date NOT NULL,
  `old_end_date` date DEFAULT NULL,
  `new_end_date` date DEFAULT NULL,
  `old_value` decimal(15,2) DEFAULT NULL,
  `new_value` decimal(15,2) DEFAULT NULL,
  `date_renewed` datetime NOT NULL,
  `renewed_by` varchar(100) NOT NULL,
  `renewed_by_staff_id` int(11) NOT NULL DEFAULT '0',
  `is_on_old_expiry_notified` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcountries`
--

CREATE TABLE `tblcountries` (
  `country_id` int(5) NOT NULL,
  `iso2` char(2) DEFAULT NULL,
  `short_name` varchar(80) NOT NULL DEFAULT '',
  `long_name` varchar(80) NOT NULL DEFAULT '',
  `iso3` char(3) DEFAULT NULL,
  `numcode` varchar(6) DEFAULT NULL,
  `un_member` varchar(12) DEFAULT NULL,
  `calling_code` varchar(8) DEFAULT NULL,
  `cctld` varchar(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcountries`
--

INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES
(1, '', '', '', 'AFG', '004', 'yes', '93', '.af'),
(2, '', '', '', 'ALA', '248', 'no', '358', '.ax'),
(3, '', '', '', 'ALB', '008', 'yes', '355', '.al'),
(4, '', '', '', 'DZA', '012', 'yes', '213', '.dz'),
(5, '', '', '', 'ASM', '016', 'no', '1+684', '.as'),
(6, '', '', '', 'AND', '020', 'yes', '376', '.ad'),
(7, '', '', '', 'AGO', '024', 'yes', '244', '.ao'),
(8, '', '', '', 'AIA', '660', 'no', '1+264', '.ai'),
(9, '', '', '', 'ATA', '010', 'no', '672', '.aq'),
(10, '', '', '', 'ATG', '028', 'yes', '1+268', '.ag'),
(11, 'AR', 'Argentina', 'Argentine Republic', 'ARG', '032', 'yes', '54', '.ar'),
(12, '', '', '', 'ARM', '051', 'yes', '374', '.am'),
(13, '', '', '', 'ABW', '533', 'no', '297', '.aw'),
(14, '', '', '', 'AUS', '036', 'yes', '61', '.au'),
(15, '', '', '', 'AUT', '040', 'yes', '43', '.at'),
(16, '', '', '', 'AZE', '031', 'yes', '994', '.az'),
(17, '', '', '', 'BHS', '044', 'yes', '1+242', '.bs'),
(18, '', '', '', 'BHR', '048', 'yes', '973', '.bh'),
(19, '', '', '', 'BGD', '050', 'yes', '880', '.bd'),
(20, '', '', '', 'BRB', '052', 'yes', '1+246', '.bb'),
(21, '', '', '', 'BLR', '112', 'yes', '375', '.by'),
(22, '', '', '', 'BEL', '056', 'yes', '32', '.be'),
(23, '', '', '', 'BLZ', '084', 'yes', '501', '.bz'),
(24, '', '', '', 'BEN', '204', 'yes', '229', '.bj'),
(25, '', '', '', 'BMU', '060', 'no', '1+441', '.bm'),
(26, '', '', '', 'BTN', '064', 'yes', '975', '.bt'),
(27, '', '', '', 'BOL', '068', 'yes', '591', '.bo'),
(28, '', '', '', 'BES', '535', 'no', '599', '.bq'),
(29, '', '', '', 'BIH', '070', 'yes', '387', '.ba'),
(30, '', '', '', 'BWA', '072', 'yes', '267', '.bw'),
(31, '', '', '', 'BVT', '074', 'no', 'NONE', '.bv'),
(32, '', '', '', 'BRA', '076', 'yes', '55', '.br'),
(33, '', '', '', 'IOT', '086', 'no', '246', '.io'),
(34, '', '', '', 'BRN', '096', 'yes', '673', '.bn'),
(35, '', '', '', 'BGR', '100', 'yes', '359', '.bg'),
(36, '', '', '', 'BFA', '854', 'yes', '226', '.bf'),
(37, '', '', '', 'BDI', '108', 'yes', '257', '.bi'),
(38, '', '', '', 'KHM', '116', 'yes', '855', '.kh'),
(39, '', '', '', 'CMR', '120', 'yes', '237', '.cm'),
(40, '', '', '', 'CAN', '124', 'yes', '1', '.ca'),
(41, '', '', '', 'CPV', '132', 'yes', '238', '.cv'),
(42, '', '', '', 'CYM', '136', 'no', '1+345', '.ky'),
(43, '', '', '', 'CAF', '140', 'yes', '236', '.cf'),
(44, '', '', '', 'TCD', '148', 'yes', '235', '.td'),
(45, '', '', '', 'CHL', '152', 'yes', '56', '.cl'),
(46, '', '', '', 'CHN', '156', 'yes', '86', '.cn'),
(47, '', '', '', 'CXR', '162', 'no', '61', '.cx'),
(48, '', '', '', 'CCK', '166', 'no', '61', '.cc'),
(49, '', '', '', 'COL', '170', 'yes', '57', '.co'),
(50, '', '', '', 'COM', '174', 'yes', '269', '.km'),
(51, '', '', '', 'COG', '178', 'yes', '242', '.cg'),
(52, '', '', '', 'COK', '184', 'some', '682', '.ck'),
(53, '', '', '', 'CRI', '188', 'yes', '506', '.cr'),
(54, '', '', '', 'CIV', '384', 'yes', '225', '.ci'),
(55, '', '', '', 'HRV', '191', 'yes', '385', '.hr'),
(56, '', '', '', 'CUB', '192', 'yes', '53', '.cu'),
(57, '', '', '', 'CUW', '531', 'no', '599', '.cw'),
(58, '', '', '', 'CYP', '196', 'yes', '357', '.cy'),
(59, '', '', '', 'CZE', '203', 'yes', '420', '.cz'),
(60, '', '', '', 'COD', '180', 'yes', '243', '.cd'),
(61, '', '', '', 'DNK', '208', 'yes', '45', '.dk'),
(62, '', '', '', 'DJI', '262', 'yes', '253', '.dj'),
(63, '', '', '', 'DMA', '212', 'yes', '1+767', '.dm'),
(64, '', '', '', 'DOM', '214', 'yes', '1+809, 8', '.do'),
(65, '', '', '', 'ECU', '218', 'yes', '593', '.ec'),
(66, '', '', '', 'EGY', '818', 'yes', '20', '.eg'),
(67, '', '', '', 'SLV', '222', 'yes', '503', '.sv'),
(68, '', '', '', 'GNQ', '226', 'yes', '240', '.gq'),
(69, '', '', '', 'ERI', '232', 'yes', '291', '.er'),
(70, '', '', '', 'EST', '233', 'yes', '372', '.ee'),
(71, '', '', '', 'ETH', '231', 'yes', '251', '.et'),
(72, '', '', '', 'FLK', '238', 'no', '500', '.fk'),
(73, '', '', '', 'FRO', '234', 'no', '298', '.fo'),
(74, '', '', '', 'FJI', '242', 'yes', '679', '.fj'),
(75, '', '', '', 'FIN', '246', 'yes', '358', '.fi'),
(76, '', '', '', 'FRA', '250', 'yes', '33', '.fr'),
(77, '', '', '', 'GUF', '254', 'no', '594', '.gf'),
(78, '', '', '', 'PYF', '258', 'no', '689', '.pf'),
(79, '', '', '', 'ATF', '260', 'no', NULL, '.tf'),
(80, '', '', '', 'GAB', '266', 'yes', '241', '.ga'),
(81, '', '', '', 'GMB', '270', 'yes', '220', '.gm'),
(82, '', '', '', 'GEO', '268', 'yes', '995', '.ge'),
(83, '', '', '', 'DEU', '276', 'yes', '49', '.de'),
(84, '', '', '', 'GHA', '288', 'yes', '233', '.gh'),
(85, '', '', '', 'GIB', '292', 'no', '350', '.gi'),
(86, '', '', '', 'GRC', '300', 'yes', '30', '.gr'),
(87, '', '', '', 'GRL', '304', 'no', '299', '.gl'),
(88, '', '', '', 'GRD', '308', 'yes', '1+473', '.gd'),
(89, '', '', '', 'GLP', '312', 'no', '590', '.gp'),
(90, '', '', '', 'GUM', '316', 'no', '1+671', '.gu'),
(91, '', '', '', 'GTM', '320', 'yes', '502', '.gt'),
(92, '', '', '', 'GGY', '831', 'no', '44', '.gg'),
(93, '', '', '', 'GIN', '324', 'yes', '224', '.gn'),
(94, '', '', '', 'GNB', '624', 'yes', '245', '.gw'),
(95, '', '', '', 'GUY', '328', 'yes', '592', '.gy'),
(96, '', '', '', 'HTI', '332', 'yes', '509', '.ht'),
(97, '', '', '', 'HMD', '334', 'no', 'NONE', '.hm'),
(98, '', '', '', 'HND', '340', 'yes', '504', '.hn'),
(99, '', '', '', 'HKG', '344', 'no', '852', '.hk'),
(100, '', '', '', 'HUN', '348', 'yes', '36', '.hu'),
(101, '', '', '', 'ISL', '352', 'yes', '354', '.is'),
(102, '', '', '', 'IND', '356', 'yes', '91', '.in'),
(103, '', '', '', 'IDN', '360', 'yes', '62', '.id'),
(104, '', '', '', 'IRN', '364', 'yes', '98', '.ir'),
(105, '', '', '', 'IRQ', '368', 'yes', '964', '.iq'),
(106, '', '', '', 'IRL', '372', 'yes', '353', '.ie'),
(107, '', '', '', 'IMN', '833', 'no', '44', '.im'),
(108, '', '', '', 'ISR', '376', 'yes', '972', '.il'),
(109, '', '', '', 'ITA', '380', 'yes', '39', '.jm'),
(110, '', '', '', 'JAM', '388', 'yes', '1+876', '.jm'),
(111, '', '', '', 'JPN', '392', 'yes', '81', '.jp'),
(112, '', '', '', 'JEY', '832', 'no', '44', '.je'),
(113, '', '', '', 'JOR', '400', 'yes', '962', '.jo'),
(114, '', '', '', 'KAZ', '398', 'yes', '7', '.kz'),
(115, '', '', '', 'KEN', '404', 'yes', '254', '.ke'),
(116, '', '', '', 'KIR', '296', 'yes', '686', '.ki'),
(117, '', '', '', '---', '---', 'some', '381', ''),
(118, '', '', '', 'KWT', '414', 'yes', '965', '.kw'),
(119, '', '', '', 'KGZ', '417', 'yes', '996', '.kg'),
(120, '', '', '', 'LAO', '418', 'yes', '856', '.la'),
(121, '', '', '', 'LVA', '428', 'yes', '371', '.lv'),
(122, '', '', '', 'LBN', '422', 'yes', '961', '.lb'),
(123, '', '', '', 'LSO', '426', 'yes', '266', '.ls'),
(124, '', '', '', 'LBR', '430', 'yes', '231', '.lr'),
(125, '', '', '', 'LBY', '434', 'yes', '218', '.ly'),
(126, '', '', '', 'LIE', '438', 'yes', '423', '.li'),
(127, '', '', '', 'LTU', '440', 'yes', '370', '.lt'),
(128, '', '', '', 'LUX', '442', 'yes', '352', '.lu'),
(129, '', '', '', 'MAC', '446', 'no', '853', '.mo'),
(130, '', '', '', 'MKD', '807', 'yes', '389', '.mk'),
(131, '', '', '', 'MDG', '450', 'yes', '261', '.mg'),
(132, '', '', '', 'MWI', '454', 'yes', '265', '.mw'),
(133, '', '', '', 'MYS', '458', 'yes', '60', '.my'),
(134, '', '', '', 'MDV', '462', 'yes', '960', '.mv'),
(135, '', '', '', 'MLI', '466', 'yes', '223', '.ml'),
(136, '', '', '', 'MLT', '470', 'yes', '356', '.mt'),
(137, '', '', '', 'MHL', '584', 'yes', '692', '.mh'),
(138, '', '', '', 'MTQ', '474', 'no', '596', '.mq'),
(139, '', '', '', 'MRT', '478', 'yes', '222', '.mr'),
(140, '', '', '', 'MUS', '480', 'yes', '230', '.mu'),
(141, '', '', '', 'MYT', '175', 'no', '262', '.yt'),
(142, '', '', '', 'MEX', '484', 'yes', '52', '.mx'),
(143, '', '', '', 'FSM', '583', 'yes', '691', '.fm'),
(144, '', '', '', 'MDA', '498', 'yes', '373', '.md'),
(145, '', '', '', 'MCO', '492', 'yes', '377', '.mc'),
(146, '', '', '', 'MNG', '496', 'yes', '976', '.mn'),
(147, '', '', '', 'MNE', '499', 'yes', '382', '.me'),
(148, '', '', '', 'MSR', '500', 'no', '1+664', '.ms'),
(149, '', '', '', 'MAR', '504', 'yes', '212', '.ma'),
(150, '', '', '', 'MOZ', '508', 'yes', '258', '.mz'),
(151, '', '', '', 'MMR', '104', 'yes', '95', '.mm'),
(152, '', '', '', 'NAM', '516', 'yes', '264', '.na'),
(153, '', '', '', 'NRU', '520', 'yes', '674', '.nr'),
(154, '', '', '', 'NPL', '524', 'yes', '977', '.np'),
(155, '', '', '', 'NLD', '528', 'yes', '31', '.nl'),
(156, '', '', '', 'NCL', '540', 'no', '687', '.nc'),
(157, '', '', '', 'NZL', '554', 'yes', '64', '.nz'),
(158, '', '', '', 'NIC', '558', 'yes', '505', '.ni'),
(159, '', '', '', 'NER', '562', 'yes', '227', '.ne'),
(160, '', '', '', 'NGA', '566', 'yes', '234', '.ng'),
(161, '', '', '', 'NIU', '570', 'some', '683', '.nu'),
(162, '', '', '', 'NFK', '574', 'no', '672', '.nf'),
(163, '', '', '', 'PRK', '408', 'yes', '850', '.kp'),
(164, '', '', '', 'MNP', '580', 'no', '1+670', '.mp'),
(165, '', '', '', 'NOR', '578', 'yes', '47', '.no'),
(166, '', '', '', 'OMN', '512', 'yes', '968', '.om'),
(167, '', '', '', 'PAK', '586', 'yes', '92', '.pk'),
(168, '', '', '', 'PLW', '585', 'yes', '680', '.pw'),
(169, '', '', '', 'PSE', '275', 'some', '970', '.ps'),
(170, '', '', '', 'PAN', '591', 'yes', '507', '.pa'),
(171, '', '', '', 'PNG', '598', 'yes', '675', '.pg'),
(172, '', '', '', 'PRY', '600', 'yes', '595', '.py'),
(173, '', '', '', 'PER', '604', 'yes', '51', '.pe'),
(174, '', '', '', 'PHL', '608', 'yes', '63', '.ph'),
(175, '', '', '', 'PCN', '612', 'no', 'NONE', '.pn'),
(176, '', '', '', 'POL', '616', 'yes', '48', '.pl'),
(177, '', '', '', 'PRT', '620', 'yes', '351', '.pt'),
(178, '', '', '', 'PRI', '630', 'no', '1+939', '.pr'),
(179, '', '', '', 'QAT', '634', 'yes', '974', '.qa'),
(180, '', '', '', 'REU', '638', 'no', '262', '.re'),
(181, '', '', '', 'ROU', '642', 'yes', '40', '.ro'),
(182, '', '', '', 'RUS', '643', 'yes', '7', '.ru'),
(183, '', '', '', 'RWA', '646', 'yes', '250', '.rw'),
(184, '', '', '', 'BLM', '652', 'no', '590', '.bl'),
(185, '', '', '', 'SHN', '654', 'no', '290', '.sh'),
(186, '', '', '', 'KNA', '659', 'yes', '1+869', '.kn'),
(187, '', '', '', 'LCA', '662', 'yes', '1+758', '.lc'),
(188, '', '', '', 'MAF', '663', 'no', '590', '.mf'),
(189, '', '', '', 'SPM', '666', 'no', '508', '.pm'),
(190, '', '', '', 'VCT', '670', 'yes', '1+784', '.vc'),
(191, '', '', '', 'WSM', '882', 'yes', '685', '.ws'),
(192, '', '', '', 'SMR', '674', 'yes', '378', '.sm'),
(193, '', '', '', 'STP', '678', 'yes', '239', '.st'),
(194, '', '', '', 'SAU', '682', 'yes', '966', '.sa'),
(195, '', '', '', 'SEN', '686', 'yes', '221', '.sn'),
(196, '', '', '', 'SRB', '688', 'yes', '381', '.rs'),
(197, '', '', '', 'SYC', '690', 'yes', '248', '.sc'),
(198, '', '', '', 'SLE', '694', 'yes', '232', '.sl'),
(199, '', '', '', 'SGP', '702', 'yes', '65', '.sg'),
(200, '', '', '', 'SXM', '534', 'no', '1+721', '.sx'),
(201, '', '', '', 'SVK', '703', 'yes', '421', '.sk'),
(202, '', '', '', 'SVN', '705', 'yes', '386', '.si'),
(203, '', '', '', 'SLB', '090', 'yes', '677', '.sb'),
(204, '', '', '', 'SOM', '706', 'yes', '252', '.so'),
(205, '', '', '', 'ZAF', '710', 'yes', '27', '.za'),
(206, '', '', '', 'SGS', '239', 'no', '500', '.gs'),
(207, '', '', '', 'KOR', '410', 'yes', '82', '.kr'),
(208, '', '', '', 'SSD', '728', 'yes', '211', '.ss'),
(209, '', '', '', 'ESP', '724', 'yes', '34', '.es'),
(210, '', '', '', 'LKA', '144', 'yes', '94', '.lk'),
(211, '', '', '', 'SDN', '729', 'yes', '249', '.sd'),
(212, '', '', '', 'SUR', '740', 'yes', '597', '.sr'),
(213, '', '', '', 'SJM', '744', 'no', '47', '.sj'),
(214, '', '', '', 'SWZ', '748', 'yes', '268', '.sz'),
(215, '', '', '', 'SWE', '752', 'yes', '46', '.se'),
(216, '', '', '', 'CHE', '756', 'yes', '41', '.ch'),
(217, '', '', '', 'SYR', '760', 'yes', '963', '.sy'),
(218, '', '', '', 'TWN', '158', 'former', '886', '.tw'),
(219, '', '', '', 'TJK', '762', 'yes', '992', '.tj'),
(220, '', '', '', 'TZA', '834', 'yes', '255', '.tz'),
(221, '', '', '', 'THA', '764', 'yes', '66', '.th'),
(222, '', '', '', 'TLS', '626', 'yes', '670', '.tl'),
(223, '', '', '', 'TGO', '768', 'yes', '228', '.tg'),
(224, '', '', '', 'TKL', '772', 'no', '690', '.tk'),
(225, '', '', '', 'TON', '776', 'yes', '676', '.to'),
(226, '', '', '', 'TTO', '780', 'yes', '1+868', '.tt'),
(227, '', '', '', 'TUN', '788', 'yes', '216', '.tn'),
(228, '', '', '', 'TUR', '792', 'yes', '90', '.tr'),
(229, '', '', '', 'TKM', '795', 'yes', '993', '.tm'),
(230, '', '', '', 'TCA', '796', 'no', '1+649', '.tc'),
(231, '', '', '', 'TUV', '798', 'yes', '688', '.tv'),
(232, '', '', '', 'UGA', '800', 'yes', '256', '.ug'),
(233, '', '', '', 'UKR', '804', 'yes', '380', '.ua'),
(234, '', '', '', 'ARE', '784', 'yes', '971', '.ae'),
(235, '', '', '', 'GBR', '826', 'yes', '44', '.uk'),
(236, '', '', '', 'USA', '840', 'yes', '1', '.us'),
(237, '', '', '', 'UMI', '581', 'no', 'NONE', 'NONE'),
(238, '', '', '', 'URY', '858', 'yes', '598', '.uy'),
(239, '', '', '', 'UZB', '860', 'yes', '998', '.uz'),
(240, '', '', '', 'VUT', '548', 'yes', '678', '.vu'),
(241, '', '', '', 'VAT', '336', 'no', '39', '.va'),
(242, '', '', '', 'VEN', '862', 'yes', '58', '.ve'),
(243, '', '', '', 'VNM', '704', 'yes', '84', '.vn'),
(244, '', '', '', 'VGB', '092', 'no', '1+284', '.vg'),
(245, '', '', '', 'VIR', '850', 'no', '1+340', '.vi'),
(246, '', '', '', 'WLF', '876', 'no', '681', '.wf'),
(247, '', '', '', 'ESH', '732', 'no', '212', '.eh'),
(248, '', '', '', 'YEM', '887', 'yes', '967', '.ye'),
(249, '', '', '', 'ZMB', '894', 'yes', '260', '.zm'),
(250, '', '', '', 'ZWE', '716', 'yes', '263', '.zw');

-- --------------------------------------------------------

--
-- Table structure for table `tblcreditnotes`
--

CREATE TABLE `tblcreditnotes` (
  `id` int(11) NOT NULL,
  `clientid` int(11) NOT NULL,
  `deleted_customer_name` varchar(100) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `number_format` int(11) NOT NULL DEFAULT '1',
  `datecreated` datetime NOT NULL,
  `date` date NOT NULL,
  `adminnote` text,
  `terms` text,
  `clientnote` text,
  `currency` int(11) NOT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total` decimal(15,2) NOT NULL,
  `adjustment` decimal(15,2) DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `discount_percent` decimal(15,2) DEFAULT '0.00',
  `discount_total` decimal(15,2) DEFAULT '0.00',
  `discount_type` varchar(30) NOT NULL,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `include_shipping` tinyint(1) NOT NULL,
  `show_shipping_on_credit_note` tinyint(1) NOT NULL DEFAULT '1',
  `show_quantity_as` int(11) NOT NULL DEFAULT '1',
  `reference_no` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcreditnote_refunds`
--

CREATE TABLE `tblcreditnote_refunds` (
  `id` int(11) NOT NULL,
  `credit_note_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `refunded_on` date NOT NULL,
  `payment_mode` varchar(40) NOT NULL,
  `note` text,
  `amount` decimal(15,2) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcredits`
--

CREATE TABLE `tblcredits` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `credit_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `date_applied` datetime NOT NULL,
  `amount` decimal(15,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcurrencies`
--

CREATE TABLE `tblcurrencies` (
  `id` int(11) NOT NULL,
  `symbol` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `decimal_separator` varchar(5) DEFAULT NULL,
  `thousand_separator` varchar(5) DEFAULT NULL,
  `placement` varchar(10) DEFAULT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcurrencies`
--

INSERT INTO `tblcurrencies` (`id`, `symbol`, `name`, `decimal_separator`, `thousand_separator`, `placement`, `isdefault`) VALUES
(1, '$', 'ARS', '.', ',', 'before', 1),
(2, '€', 'EUR', ',', '.', 'before', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomers_groups`
--

CREATE TABLE `tblcustomers_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer_admins`
--

CREATE TABLE `tblcustomer_admins` (
  `staff_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date_assigned` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer_groups`
--

CREATE TABLE `tblcustomer_groups` (
  `id` int(11) NOT NULL,
  `groupid` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomfields`
--

CREATE TABLE `tblcustomfields` (
  `id` int(11) NOT NULL,
  `fieldto` varchar(30) DEFAULT NULL,
  `name` varchar(150) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL,
  `options` mediumtext,
  `display_inline` tinyint(1) NOT NULL DEFAULT '0',
  `field_order` int(11) DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '1',
  `show_on_pdf` int(11) NOT NULL DEFAULT '0',
  `show_on_ticket_form` tinyint(1) NOT NULL DEFAULT '0',
  `only_admin` tinyint(1) NOT NULL DEFAULT '0',
  `show_on_table` tinyint(1) NOT NULL DEFAULT '0',
  `show_on_client_portal` int(11) NOT NULL DEFAULT '0',
  `disalow_client_to_edit` int(11) NOT NULL DEFAULT '0',
  `bs_column` int(11) NOT NULL DEFAULT '12',
  `default_value` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomfieldsvalues`
--

CREATE TABLE `tblcustomfieldsvalues` (
  `id` int(11) NOT NULL,
  `relid` int(11) NOT NULL,
  `fieldid` int(11) NOT NULL,
  `fieldto` varchar(15) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcustom_templates`
--

CREATE TABLE `tblcustom_templates` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `template_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `template_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcustom_templates`
--

INSERT INTO `tblcustom_templates` (`id`, `staff_id`, `template_name`, `template_content`) VALUES
(1, 1, '50', '1204'),
(2, 1, '50', '1204');

-- --------------------------------------------------------

--
-- Table structure for table `tblday_off`
--

CREATE TABLE `tblday_off` (
  `id` int(11) NOT NULL,
  `off_reason` varchar(255) NOT NULL,
  `off_type` varchar(100) NOT NULL,
  `break_date` date NOT NULL,
  `timekeeping` varchar(45) DEFAULT NULL,
  `department` int(11) DEFAULT '0',
  `position` int(11) DEFAULT '0',
  `add_from` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `departmentid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `imap_username` varchar(191) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `email_from_header` tinyint(1) NOT NULL DEFAULT '0',
  `host` varchar(150) DEFAULT NULL,
  `password` mediumtext,
  `encryption` varchar(3) DEFAULT NULL,
  `folder` varchar(191) NOT NULL DEFAULT 'INBOX',
  `delete_after_import` int(11) NOT NULL DEFAULT '0',
  `calendar_id` mediumtext,
  `hidefromclient` tinyint(1) NOT NULL DEFAULT '0',
  `manager_id` int(11) DEFAULT '0',
  `parent_id` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`departmentid`, `name`, `imap_username`, `email`, `email_from_header`, `host`, `password`, `encryption`, `folder`, `delete_after_import`, `calendar_id`, `hidefromclient`, `manager_id`, `parent_id`) VALUES
(1, 'Sector 01', '', '', 0, '', '', '', 'INBOX', 0, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbldismissed_announcements`
--

CREATE TABLE `tbldismissed_announcements` (
  `dismissedannouncementid` int(11) NOT NULL,
  `announcementid` int(11) NOT NULL,
  `staff` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblemaillists`
--

CREATE TABLE `tblemaillists` (
  `listid` int(11) NOT NULL,
  `name` mediumtext NOT NULL,
  `creator` varchar(100) NOT NULL,
  `datecreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblemailtemplates`
--

CREATE TABLE `tblemailtemplates` (
  `emailtemplateid` int(11) NOT NULL,
  `type` mediumtext NOT NULL,
  `slug` varchar(100) NOT NULL,
  `language` varchar(40) DEFAULT NULL,
  `name` mediumtext NOT NULL,
  `subject` mediumtext NOT NULL,
  `message` text NOT NULL,
  `fromname` mediumtext NOT NULL,
  `fromemail` varchar(100) DEFAULT NULL,
  `plaintext` int(11) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblemailtemplates`
--

INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES
(1, 'client', 'new-client-created', 'english', 'New Contact Added/Registered (Welcome Email)', 'Welcome aboard', 'Dear {contact_firstname} {contact_lastname}<br /><br />Thank you for registering on the <strong>{companyname}</strong> CRM System.<br /><br />We just wanted to say welcome.<br /><br />Please contact us if you need any help.<br /><br />Click here to view your profile: <a href=\"{crm_url}\">{crm_url}</a><br /><br />Kind Regards, <br />{email_signature}<br /><br />(This is an automated email, so please don\'t reply to this email address)', '{companyname} | CRM', '', 0, 1, 0),
(2, 'invoice', 'invoice-send-to-client', 'english', 'Send Invoice to Customer', 'Invoice with number {invoice_number} created', '<span style=\"font-size: 12pt;\">Dear {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">We have prepared the following invoice for you: <strong># {invoice_number}</strong></span><br /><br /><span style=\"font-size: 12pt;\"><strong>Invoice status</strong>: {invoice_status}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span><br /><br /><span style=\"font-size: 12pt;\">Please contact us for more information.</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(3, 'ticket', 'new-ticket-opened-admin', 'english', 'New Ticket Opened (Opened by Staff, Sent to Customer)', 'New Support Ticket Opened', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">New support ticket has been opened.</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject:</strong> {ticket_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Department:</strong> {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority:</strong> {ticket_priority}<br /></span><br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_public_url}\">#{ticket_id}</a><br /><br />Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(4, 'ticket', 'ticket-reply', 'english', 'Ticket Reply (Sent to Customer)', 'New Ticket Reply', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">You have a new ticket reply to ticket <a href=\"{ticket_public_url}\">#{ticket_id}</a></span><br /><br /><span style=\"font-size: 12pt;\"><strong>Ticket Subject:</strong> {ticket_subject}<br /></span><br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_public_url}\">#{ticket_id}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(5, 'ticket', 'ticket-autoresponse', 'english', 'New Ticket Opened - Autoresponse', 'New Support Ticket Opened', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">Thank you for contacting our support team. A support ticket has now been opened for your request. You will be notified when a response is made by email.</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject:</strong> {ticket_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Department</strong>: {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority:</strong> {ticket_priority}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_public_url}\">#{ticket_id}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(6, 'invoice', 'invoice-payment-recorded', 'english', 'Invoice Payment Recorded (Sent to Customer)', 'Invoice Payment Recorded', '<span style=\"font-size: 12pt;\">Hello {contact_firstname}&nbsp;{contact_lastname}<br /><br /></span>Thank you for the payment. Find the payment details below:<br /><br />-------------------------------------------------<br /><br />Amount:&nbsp;<strong>{payment_total}<br /></strong>Date:&nbsp;<strong>{payment_date}</strong><br />Invoice number:&nbsp;<span style=\"font-size: 12pt;\"><strong># {invoice_number}<br /><br /></strong></span>-------------------------------------------------<br /><br />You can always view the invoice for this payment at the following link:&nbsp;<a href=\"{invoice_link}\"><span style=\"font-size: 12pt;\">{invoice_number}</span></a><br /><br />We are looking forward working with you.<br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(7, 'invoice', 'invoice-overdue-notice', 'english', 'Invoice Overdue Notice', 'Invoice Overdue Notice - {invoice_number}', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">This is an overdue notice for invoice <strong># {invoice_number}</strong></span><br /><br /><span style=\"font-size: 12pt;\">This invoice was due: {invoice_duedate}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(8, 'invoice', 'invoice-already-send', 'english', 'Invoice Already Sent to Customer', 'Invoice # {invoice_number} ', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">At your request, here is the invoice with number <strong># {invoice_number}</strong></span><br /><br /><span style=\"font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span><br /><br /><span style=\"font-size: 12pt;\">Please contact us for more information.</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(9, 'ticket', 'new-ticket-created-staff', 'english', 'New Ticket Created (Opened by Customer, Sent to Staff Members)', 'New Ticket Created', '<span style=\"font-size: 12pt;\">A new support ticket has been opened.</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject</strong>: {ticket_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Department</strong>: {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority</strong>: {ticket_priority}<br /></span><br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_url}\">#{ticket_id}</a></span><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(10, 'estimate', 'estimate-send-to-client', 'english', 'Send Estimate to Customer', 'Estimate # {estimate_number} created', '<span style=\"font-size: 12pt;\">Dear {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">Please find the attached estimate <strong># {estimate_number}</strong></span><br /><br /><span style=\"font-size: 12pt;\"><strong>Estimate status:</strong> {estimate_status}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></span><br /><br /><span style=\"font-size: 12pt;\">We look forward to your communication.</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}<br /></span>', '{companyname} | CRM', '', 0, 1, 0),
(11, 'ticket', 'ticket-reply-to-admin', 'english', 'Ticket Reply (Sent to Staff)', 'New Support Ticket Reply', '<span style=\"font-size: 12pt;\">A new support ticket reply from {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject</strong>: {ticket_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Department</strong>: {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority</strong>: {ticket_priority}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_url}\">#{ticket_id}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(12, 'estimate', 'estimate-already-send', 'english', 'Estimate Already Sent to Customer', 'Estimate # {estimate_number} ', '<span style=\"font-size: 12pt;\">Dear {contact_firstname} {contact_lastname}</span><br /> <br /><span style=\"font-size: 12pt;\">Thank you for your estimate request.</span><br /> <br /><span style=\"font-size: 12pt;\">You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">Please contact us for more information.</span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(13, 'contract', 'contract-expiration', 'english', 'Contract Expiration Reminder (Sent to Customer Contacts)', 'Contract Expiration Reminder', '<span style=\"font-size: 12pt;\">Dear {client_company}</span><br /><br /><span style=\"font-size: 12pt;\">This is a reminder that the following contract will expire soon:</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject:</strong> {contract_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Description:</strong> {contract_description}</span><br /><span style=\"font-size: 12pt;\"><strong>Date Start:</strong> {contract_datestart}</span><br /><span style=\"font-size: 12pt;\"><strong>Date End:</strong> {contract_dateend}</span><br /><br /><span style=\"font-size: 12pt;\">Please contact us for more information.</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(14, 'tasks', 'task-assigned', 'english', 'New Task Assigned (Sent to Staff)', 'New Task Assigned to You - {task_name}', '<span style=\"font-size: 12pt;\">Dear {staff_firstname}</span><br /><br /><span style=\"font-size: 12pt;\">You have been assigned to a new task:</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Name:</strong> {task_name}<br /></span><strong>Start Date:</strong> {task_startdate}<br /><span style=\"font-size: 12pt;\"><strong>Due date:</strong> {task_duedate}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority:</strong> {task_priority}<br /><br /></span><span style=\"font-size: 12pt;\"><span>You can view the task on the following link</span>: <a href=\"{task_link}\">{task_name}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(15, 'tasks', 'task-added-as-follower', 'english', 'Staff Member Added as Follower on Task (Sent to Staff)', 'You are added as follower on task - {task_name}', '<span style=\"font-size: 12pt;\">Hi {staff_firstname}<br /></span><br /><span style=\"font-size: 12pt;\">You have been added as follower on the following task:</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Name:</strong> {task_name}</span><br /><span style=\"font-size: 12pt;\"><strong>Start date:</strong> {task_startdate}</span><br /><br /><span>You can view the task on the following link</span><span>: </span><a href=\"{task_link}\">{task_name}</a><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(16, 'tasks', 'task-commented', 'english', 'New Comment on Task (Sent to Staff)', 'New Comment on Task - {task_name}', 'Dear {staff_firstname}<br /><br />A comment has been made on the following task:<br /><br /><strong>Name:</strong> {task_name}<br /><strong>Comment:</strong> {task_comment}<br /><br />You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a><br /><br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(17, 'tasks', 'task-added-attachment', 'english', 'New Attachment(s) on Task (Sent to Staff)', 'New Attachment on Task - {task_name}', 'Hi {staff_firstname}<br /><br /><strong>{task_user_take_action}</strong> added an attachment on the following task:<br /><br /><strong>Name:</strong> {task_name}<br /><br />You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a><br /><br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(18, 'estimate', 'estimate-declined-to-staff', 'english', 'Estimate Declined (Sent to Staff)', 'Customer Declined Estimate', '<span style=\"font-size: 12pt;\">Hi</span><br /> <br /><span style=\"font-size: 12pt;\">Customer ({client_company}) declined estimate with number <strong># {estimate_number}</strong></span><br /> <br /><span style=\"font-size: 12pt;\">You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(19, 'estimate', 'estimate-accepted-to-staff', 'english', 'Estimate Accepted (Sent to Staff)', 'Customer Accepted Estimate', '<span style=\"font-size: 12pt;\">Hi</span><br /> <br /><span style=\"font-size: 12pt;\">Customer ({client_company}) accepted estimate with number <strong># {estimate_number}</strong></span><br /> <br /><span style=\"font-size: 12pt;\">You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(20, 'proposals', 'proposal-client-accepted', 'english', 'Customer Action - Accepted (Sent to Staff)', 'Customer Accepted Proposal', '<div>Hi<br /> <br />Client <strong>{proposal_proposal_to}</strong> accepted the following proposal:<br /> <br /><strong>Number:</strong> {proposal_number}<br /><strong>Subject</strong>: {proposal_subject}<br /><strong>Total</strong>: {proposal_total}<br /> <br />View the proposal on the following link: <a href=\"{proposal_link}\">{proposal_number}</a><br /> <br />Kind Regards,<br />{email_signature}</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>', '{companyname} | CRM', '', 0, 1, 0),
(21, 'proposals', 'proposal-send-to-customer', 'english', 'Send Proposal to Customer', 'Proposal With Number {proposal_number} Created', 'Dear {proposal_proposal_to}<br /><br />Please find our attached proposal.<br /><br />This proposal is valid until: {proposal_open_till}<br />You can view the proposal on the following link: <a href=\"{proposal_link}\">{proposal_number}</a><br /><br />Please don\'t hesitate to comment online if you have any questions.<br /><br />We look forward to your communication.<br /><br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(22, 'proposals', 'proposal-client-declined', 'english', 'Customer Action - Declined (Sent to Staff)', 'Client Declined Proposal', 'Hi<br /> <br />Customer <strong>{proposal_proposal_to}</strong> declined the proposal <strong>{proposal_subject}</strong><br /> <br />View the proposal on the following link <a href=\"{proposal_link}\">{proposal_number}</a>&nbsp;or from the admin area.<br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(23, 'proposals', 'proposal-client-thank-you', 'english', 'Thank You Email (Sent to Customer After Accept)', 'Thank for you accepting proposal', 'Dear {proposal_proposal_to}<br /> <br />Thank for for accepting the proposal.<br /> <br />We look forward to doing business with you.<br /> <br />We will contact you as soon as possible<br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(24, 'proposals', 'proposal-comment-to-client', 'english', 'New Comment  (Sent to Customer/Lead)', 'New Proposal Comment', 'Dear {proposal_proposal_to}<br /> <br />A new comment has been made on the following proposal: <strong>{proposal_number}</strong><br /> <br />You can view and reply to the comment on the following link: <a href=\"{proposal_link}\">{proposal_number}</a><br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(25, 'proposals', 'proposal-comment-to-admin', 'english', 'New Comment (Sent to Staff) ', 'New Proposal Comment', 'Hi<br /> <br />A new comment has been made to the proposal <strong>{proposal_subject}</strong><br /> <br />You can view and reply to the comment on the following link: <a href=\"{proposal_link}\">{proposal_number}</a>&nbsp;or from the admin area.<br /> <br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(26, 'estimate', 'estimate-thank-you-to-customer', 'english', 'Thank You Email (Sent to Customer After Accept)', 'Thank for you accepting estimate', '<span style=\"font-size: 12pt;\">Dear {contact_firstname} {contact_lastname}</span><br /> <br /><span style=\"font-size: 12pt;\">Thank for for accepting the estimate.</span><br /> <br /><span style=\"font-size: 12pt;\">We look forward to doing business with you.</span><br /> <br /><span style=\"font-size: 12pt;\">We will contact you as soon as possible.</span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(27, 'tasks', 'task-deadline-notification', 'english', 'Task Deadline Reminder - Sent to Assigned Members', 'Task Deadline Reminder', 'Hi {staff_firstname}&nbsp;{staff_lastname}<br /><br />This is an automated email from {companyname}.<br /><br />The task <strong>{task_name}</strong> deadline is on <strong>{task_duedate}</strong>. <br />This task is still not finished.<br /><br />You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a><br /><br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(28, 'contract', 'send-contract', 'english', 'Send Contract to Customer', 'Contract - {contract_subject}', '<p><span style=\"font-size: 12pt;\">Hi&nbsp;{contact_firstname}&nbsp;{contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">Please find the <a href=\"{contract_link}\">{contract_subject}</a> attached.<br /><br />Description: {contract_description}<br /><br /></span><span style=\"font-size: 12pt;\">Looking forward to hear from you.</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(29, 'invoice', 'invoice-payment-recorded-to-staff', 'english', 'Invoice Payment Recorded (Sent to Staff)', 'New Invoice Payment', '<span style=\"font-size: 12pt;\">Hi</span><br /><br /><span style=\"font-size: 12pt;\">Customer recorded payment for invoice <strong># {invoice_number}</strong></span><br /> <br /><span style=\"font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(30, 'ticket', 'auto-close-ticket', 'english', 'Auto Close Ticket', 'Ticket Auto Closed', '<p><span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">Ticket {ticket_subject} has been auto close due to inactivity.</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Ticket #</strong>: <a href=\"{ticket_public_url}\">{ticket_id}</a></span><br /><span style=\"font-size: 12pt;\"><strong>Department</strong>: {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority:</strong> {ticket_priority}</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(31, 'project', 'new-project-discussion-created-to-staff', 'english', 'New Project Discussion (Sent to Project Members)', 'New Project Discussion Created - {project_name}', '<p>Hi {staff_firstname}<br /><br />New project discussion created from <strong>{discussion_creator}</strong><br /><br /><strong>Subject:</strong> {discussion_subject}<br /><strong>Description:</strong> {discussion_description}<br /><br />You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(32, 'project', 'new-project-discussion-created-to-customer', 'english', 'New Project Discussion (Sent to Customer Contacts)', 'New Project Discussion Created - {project_name}', '<p>Hello {contact_firstname} {contact_lastname}<br /><br />New project discussion created from <strong>{discussion_creator}</strong><br /><br /><strong>Subject:</strong> {discussion_subject}<br /><strong>Description:</strong> {discussion_description}<br /><br />You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(33, 'project', 'new-project-file-uploaded-to-customer', 'english', 'New Project File(s) Uploaded (Sent to Customer Contacts)', 'New Project File(s) Uploaded - {project_name}', '<p>Hello {contact_firstname} {contact_lastname}<br /><br />New project file is uploaded on <strong>{project_name}</strong> from <strong>{file_creator}</strong><br /><br />You can view the project on the following link: <a href=\"{project_link}\">{project_name}</a><br /><br />To view the file in our CRM you can click on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(34, 'project', 'new-project-file-uploaded-to-staff', 'english', 'New Project File(s) Uploaded (Sent to Project Members)', 'New Project File(s) Uploaded - {project_name}', '<p>Hello&nbsp;{staff_firstname}</p>\r\n<p>New project&nbsp;file is uploaded on&nbsp;<strong>{project_name}</strong> from&nbsp;<strong>{file_creator}</strong></p>\r\n<p>You can view the project on the following link: <a href=\"{project_link}\">{project_name}<br /></a><br />To view&nbsp;the file you can click on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a></p>\r\n<p>Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(35, 'project', 'new-project-discussion-comment-to-customer', 'english', 'New Discussion Comment  (Sent to Customer Contacts)', 'New Discussion Comment', '<p><span style=\"font-size: 12pt;\">Hello {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">New discussion comment has been made on <strong>{discussion_subject}</strong> from <strong>{comment_creator}</strong></span><br /><br /><span style=\"font-size: 12pt;\"><strong>Discussion subject:</strong> {discussion_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Comment</strong>: {discussion_comment}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(36, 'project', 'new-project-discussion-comment-to-staff', 'english', 'New Discussion Comment (Sent to Project Members)', 'New Discussion Comment', '<p>Hi {staff_firstname}<br /><br />New discussion comment has been made on <strong>{discussion_subject}</strong> from <strong>{comment_creator}</strong><br /><br /><strong>Discussion subject:</strong> {discussion_subject}<br /><strong>Comment:</strong> {discussion_comment}<br /><br />You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(37, 'project', 'staff-added-as-project-member', 'english', 'Staff Added as Project Member', 'New project assigned to you', '<p>Hi {staff_firstname}<br /><br />New project has been assigned to you.<br /><br />You can view the project on the following link <a href=\"{project_link}\">{project_name}</a><br /><br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(38, 'estimate', 'estimate-expiry-reminder', 'english', 'Estimate Expiration Reminder', 'Estimate Expiration Reminder', '<p><span style=\"font-size: 12pt;\">Hello {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">The estimate with <strong># {estimate_number}</strong> will expire on <strong>{estimate_expirydate}</strong></span><br /><br /><span style=\"font-size: 12pt;\">You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(39, 'proposals', 'proposal-expiry-reminder', 'english', 'Proposal Expiration Reminder', 'Proposal Expiration Reminder', '<p>Hello {proposal_proposal_to}<br /><br />The proposal {proposal_number}&nbsp;will expire on <strong>{proposal_open_till}</strong><br /><br />You can view the proposal on the following link: <a href=\"{proposal_link}\">{proposal_number}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(40, 'staff', 'new-staff-created', 'english', 'New Staff Created (Welcome Email)', 'You are added as staff member', 'Hi {staff_firstname}<br /><br />You are added as member on our CRM.<br /><br />Please use the following logic credentials:<br /><br /><strong>Email:</strong> {staff_email}<br /><strong>Password:</strong> {password}<br /><br />Click <a href=\"{admin_url}\">here </a>to login in the dashboard.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(41, 'client', 'contact-forgot-password', 'english', 'Forgot Password', 'Create New Password', '<h2>Create a new password</h2>\r\nForgot your password?<br /> To create a new password, just follow this link:<br /> <br /><a href=\"{reset_password_url}\">Reset Password</a><br /> <br /> You received this email, because it was requested by a {companyname}&nbsp;user. This is part of the procedure to create a new password on the system. If you DID NOT request a new password then please ignore this email and your password will remain the same. <br /><br /> {email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(42, 'client', 'contact-password-reseted', 'english', 'Password Reset - Confirmation', 'Your password has been changed', '<strong><span style=\"font-size: 14pt;\">You have changed your password.</span><br /></strong><br /> Please, keep it in your records so you don\'t forget it.<br /> <br /> Your email address for login is: {contact_email}<br /><br />If this wasnt you, please contact us.<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(43, 'client', 'contact-set-password', 'english', 'Set New Password', 'Set new password on {companyname} ', '<h2><span style=\"font-size: 14pt;\">Setup your new password on {companyname}</span></h2>\r\nPlease use the following link to set up your new password:<br /><br /><a href=\"{set_password_url}\">Set new password</a><br /><br />Keep it in your records so you don\'t forget it.<br /><br />Please set your new password in <strong>48 hours</strong>. After that, you won\'t be able to set your password because this link will expire.<br /><br />You can login at: <a href=\"{crm_url}\">{crm_url}</a><br />Your email address for login: {contact_email}<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(44, 'staff', 'staff-forgot-password', 'english', 'Forgot Password', 'Create New Password', '<h2><span style=\"font-size: 14pt;\">Create a new password</span></h2>\r\nForgot your password?<br /> To create a new password, just follow this link:<br /> <br /><a href=\"{reset_password_url}\">Reset Password</a><br /> <br /> You received this email, because it was requested by a <strong>{companyname}</strong>&nbsp;user. This is part of the procedure to create a new password on the system. If you DID NOT request a new password then please ignore this email and your password will remain the same. <br /><br /> {email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(45, 'staff', 'staff-password-reseted', 'english', 'Password Reset - Confirmation', 'Your password has been changed', '<span style=\"font-size: 14pt;\"><strong>You have changed your password.<br /></strong></span><br /> Please, keep it in your records so you don\'t forget it.<br /> <br /> Your email address for login is: {staff_email}<br /><br /> If this wasnt you, please contact us.<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(46, 'project', 'assigned-to-project', 'english', 'New Project Created (Sent to Customer Contacts)', 'New Project Created', '<p>Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}</p>\r\n<p>New project is assigned to your company.<br /><br /><strong>Project Name:</strong>&nbsp;{project_name}<br /><strong>Project Start Date:</strong>&nbsp;{project_start_date}</p>\r\n<p>You can view the project on the following link:&nbsp;<a href=\"{project_link}\">{project_name}</a></p>\r\n<p>We are looking forward hearing from you.<br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(47, 'tasks', 'task-added-attachment-to-contacts', 'english', 'New Attachment(s) on Task (Sent to Customer Contacts)', 'New Attachment on Task - {task_name}', '<span>Hi {contact_firstname} {contact_lastname}</span><br /><br /><strong>{task_user_take_action}</strong><span> added an attachment on the following task:</span><br /><br /><strong>Name:</strong><span> {task_name}</span><br /><br /><span>You can view the task on the following link: </span><a href=\"{task_link}\">{task_name}</a><br /><br /><span>Kind Regards,</span><br /><span>{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(48, 'tasks', 'task-commented-to-contacts', 'english', 'New Comment on Task (Sent to Customer Contacts)', 'New Comment on Task - {task_name}', '<span>Dear {contact_firstname} {contact_lastname}</span><br /><br /><span>A comment has been made on the following task:</span><br /><br /><strong>Name:</strong><span> {task_name}</span><br /><strong>Comment:</strong><span> {task_comment}</span><br /><br /><span>You can view the task on the following link: </span><a href=\"{task_link}\">{task_name}</a><br /><br /><span>Kind Regards,</span><br /><span>{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(49, 'leads', 'new-lead-assigned', 'english', 'New Lead Assigned to Staff Member', 'New lead assigned to you', '<p>Hello {lead_assigned}<br /><br />New lead is assigned to you.<br /><br /><strong>Lead Name:</strong>&nbsp;{lead_name}<br /><strong>Lead Email:</strong>&nbsp;{lead_email}<br /><br />You can view the lead on the following link: <a href=\"{lead_link}\">{lead_name}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(50, 'client', 'client-statement', 'english', 'Statement - Account Summary', 'Account Statement from {statement_from} to {statement_to}', 'Dear {contact_firstname} {contact_lastname}, <br /><br />Its been a great experience working with you.<br /><br />Attached with this email is a list of all transactions for the period between {statement_from} to {statement_to}<br /><br />For your information your account balance due is total:&nbsp;{statement_balance_due}<br /><br />Please contact us if you need more information.<br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(51, 'ticket', 'ticket-assigned-to-admin', 'english', 'New Ticket Assigned (Sent to Staff)', 'New support ticket has been assigned to you', '<p><span style=\"font-size: 12pt;\">Hi</span></p>\r\n<p><span style=\"font-size: 12pt;\">A new support ticket&nbsp;has been assigned to you.</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject</strong>: {ticket_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Department</strong>: {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority</strong>: {ticket_priority}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_url}\">#{ticket_id}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(52, 'client', 'new-client-registered-to-admin', 'english', 'New Customer Registration (Sent to admins)', 'New Customer Registration', 'Hello.<br /><br />New customer registration on your customer portal:<br /><br /><strong>Firstname:</strong>&nbsp;{contact_firstname}<br /><strong>Lastname:</strong>&nbsp;{contact_lastname}<br /><strong>Company:</strong>&nbsp;{client_company}<br /><strong>Email:</strong>&nbsp;{contact_email}<br /><br />Best Regards', '{companyname} | CRM', '', 0, 1, 0),
(53, 'leads', 'new-web-to-lead-form-submitted', 'english', 'Web to lead form submitted - Sent to lead', '{lead_name} - We Received Your Request', 'Hello {lead_name}.<br /><br /><strong>Your request has been received.</strong><br /><br />This email is to let you know that we received your request and we will get back to you as soon as possible with more information.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 0, 0),
(54, 'staff', 'two-factor-authentication', 'english', 'Two Factor Authentication', 'Confirm Your Login', '<p>Hi {staff_firstname}</p>\r\n<p style=\"text-align: left;\">You received this email because you have enabled two factor authentication in your account.<br />Use the following code to confirm your login:</p>\r\n<p style=\"text-align: left;\"><span style=\"font-size: 18pt;\"><strong>{two_factor_auth_code}<br /><br /></strong><span style=\"font-size: 12pt;\">{email_signature}</span><strong><br /><br /><br /><br /></strong></span></p>', '{companyname} | CRM', '', 0, 1, 0),
(55, 'project', 'project-finished-to-customer', 'english', 'Project Marked as Finished (Sent to Customer Contacts)', 'Project Marked as Finished', '<p>Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}</p>\r\n<p>You are receiving this email because project&nbsp;<strong>{project_name}</strong> has been marked as finished. This project is assigned under your company and we just wanted to keep you up to date.<br /><br />You can view the project on the following link:&nbsp;<a href=\"{project_link}\">{project_name}</a></p>\r\n<p>If you have any questions don\'t hesitate to contact us.<br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(56, 'credit_note', 'credit-note-send-to-client', 'english', 'Send Credit Note To Email', 'Credit Note With Number #{credit_note_number} Created', 'Dear&nbsp;{contact_firstname}&nbsp;{contact_lastname}<br /><br />We have attached the credit note with number <strong>#{credit_note_number} </strong>for your reference.<br /><br /><strong>Date:</strong>&nbsp;{credit_note_date}<br /><strong>Total Amount:</strong>&nbsp;{credit_note_total}<br /><br /><span style=\"font-size: 12pt;\">Please contact us for more information.</span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(57, 'tasks', 'task-status-change-to-staff', 'english', 'Task Status Changed (Sent to Staff)', 'Task Status Changed', '<span style=\"font-size: 12pt;\">Hi {staff_firstname}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>{task_user_take_action}</strong> marked task as <strong>{task_status}</strong></span><br /><br /><span style=\"font-size: 12pt;\"><strong>Name:</strong> {task_name}</span><br /><span style=\"font-size: 12pt;\"><strong>Due date:</strong> {task_duedate}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(58, 'tasks', 'task-status-change-to-contacts', 'english', 'Task Status Changed (Sent to Customer Contacts)', 'Task Status Changed', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>{task_user_take_action}</strong> marked task as <strong>{task_status}</strong></span><br /><br /><span style=\"font-size: 12pt;\"><strong>Name:</strong> {task_name}</span><br /><span style=\"font-size: 12pt;\"><strong>Due date:</strong> {task_duedate}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(59, 'staff', 'reminder-email-staff', 'english', 'Staff Reminder Email', 'You Have a New Reminder!', '<p>Hello&nbsp;{staff_firstname}<br /><br /><strong>You have a new reminder&nbsp;linked to&nbsp;{staff_reminder_relation_name}!<br /><br />Reminder description:</strong><br />{staff_reminder_description}<br /><br />Click <a href=\"{staff_reminder_relation_link}\">here</a> to view&nbsp;<a href=\"{staff_reminder_relation_link}\">{staff_reminder_relation_name}</a><br /><br />Best Regards<br /><br /></p>', '{companyname} | CRM', '', 0, 1, 0),
(60, 'contract', 'contract-comment-to-client', 'english', 'New Comment  (Sent to Customer Contacts)', 'New Contract Comment', 'Dear {contact_firstname} {contact_lastname}<br /> <br />A new comment has been made on the following contract: <strong>{contract_subject}</strong><br /> <br />You can view and reply to the comment on the following link: <a href=\"{contract_link}\">{contract_subject}</a><br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(61, 'contract', 'contract-comment-to-admin', 'english', 'New Comment (Sent to Staff) ', 'New Contract Comment', 'Hi {staff_firstname}<br /><br />A new comment has been made to the contract&nbsp;<strong>{contract_subject}</strong><br /><br />You can view and reply to the comment on the following link: <a href=\"{contract_link}\">{contract_subject}</a>&nbsp;or from the admin area.<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(62, 'subscriptions', 'send-subscription', 'english', 'Send Subscription to Customer', 'Subscription Created', 'Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}<br /><br />We have prepared the subscription&nbsp;<strong>{subscription_name}</strong> for your company.<br /><br />Click <a href=\"{subscription_link}\">here</a> to review the subscription and subscribe.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(63, 'subscriptions', 'subscription-payment-failed', 'english', 'Subscription Payment Failed', 'Your most recent invoice payment failed', 'Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}<br /><br br=\"\" />Unfortunately, your most recent invoice payment for&nbsp;<strong>{subscription_name}</strong> was declined.<br /><br />This could be due to a change in your card number, your card expiring,<br />cancellation of your credit card, or the card issuer not recognizing the<br />payment and therefore taking action to prevent it.<br /><br />Please update your payment information as soon as possible by logging in here:<br /><a href=\"{crm_url}/login\">{crm_url}/login</a><br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(64, 'subscriptions', 'subscription-canceled', 'english', 'Subscription Canceled (Sent to customer primary contact)', 'Your subscription has been canceled', 'Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}<br /><br />Your subscription&nbsp;<strong>{subscription_name} </strong>has been canceled, if you have any questions don\'t hesitate to contact us.<br /><br />It was a pleasure doing business with you.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(65, 'subscriptions', 'subscription-payment-succeeded', 'english', 'Subscription Payment Succeeded (Sent to customer primary contact)', 'Subscription  Payment Receipt - {subscription_name}', 'Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}<br /><br />This email is to let you know that we received your payment for subscription&nbsp;<strong>{subscription_name}&nbsp;</strong>of&nbsp;<strong><span>{payment_total}<br /><br /></span></strong>The invoice associated with it is now with status&nbsp;<strong>{invoice_status}<br /></strong><br />Thank you for your confidence.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(66, 'contract', 'contract-expiration-to-staff', 'english', 'Contract Expiration Reminder (Sent to Staff)', 'Contract Expiration Reminder', 'Hi {staff_firstname}<br /><br /><span style=\"font-size: 12pt;\">This is a reminder that the following contract will expire soon:</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject:</strong> {contract_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Description:</strong> {contract_description}</span><br /><span style=\"font-size: 12pt;\"><strong>Date Start:</strong> {contract_datestart}</span><br /><span style=\"font-size: 12pt;\"><strong>Date End:</strong> {contract_dateend}</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(67, 'gdpr', 'gdpr-removal-request', 'english', 'Removal Request From Contact (Sent to administrators)', 'Data Removal Request Received', 'Hello&nbsp;{staff_firstname}&nbsp;{staff_lastname}<br /><br />Data removal has been requested by&nbsp;{contact_firstname} {contact_lastname}<br /><br />You can review this request and take proper actions directly from the admin area.', '{companyname} | CRM', '', 0, 1, 0),
(68, 'gdpr', 'gdpr-removal-request-lead', 'english', 'Removal Request From Lead (Sent to administrators)', 'Data Removal Request Received', 'Hello&nbsp;{staff_firstname}&nbsp;{staff_lastname}<br /><br />Data removal has been requested by {lead_name}<br /><br />You can review this request and take proper actions directly from the admin area.<br /><br />To view the lead inside the admin area click here:&nbsp;<a href=\"{lead_link}\">{lead_link}</a>', '{companyname} | CRM', '', 0, 1, 0),
(69, 'client', 'client-registration-confirmed', 'english', 'Customer Registration Confirmed', 'Your registration is confirmed', '<p>Dear {contact_firstname} {contact_lastname}<br /><br />We just wanted to let you know that your registration at&nbsp;{companyname} is successfully confirmed and your account is now active.<br /><br />You can login at&nbsp;<a href=\"{crm_url}\">{crm_url}</a> with the email and password you provided during registration.<br /><br />Please contact us if you need any help.<br /><br />Kind Regards, <br />{email_signature}</p>\r\n<p><br />(This is an automated email, so please don\'t reply to this email address)</p>', '{companyname} | CRM', '', 0, 1, 0),
(70, 'contract', 'contract-signed-to-staff', 'english', 'Contract Signed (Sent to Staff)', 'Customer Signed a Contract', 'Hi {staff_firstname}<br /><br />A contract with subject&nbsp;<strong>{contract_subject} </strong>has been successfully signed by the customer.<br /><br />You can view the contract at the following link: <a href=\"{contract_link}\">{contract_subject}</a>&nbsp;or from the admin area.<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(71, 'subscriptions', 'customer-subscribed-to-staff', 'english', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator)', 'Customer Subscribed to a Subscription', 'The customer <strong>{client_company}</strong> subscribed to a subscription with name&nbsp;<strong>{subscription_name}</strong><br /><br /><strong>ID</strong>:&nbsp;{subscription_id}<br /><strong>Subscription name</strong>:&nbsp;{subscription_name}<br /><strong>Subscription description</strong>:&nbsp;{subscription_description}<br /><br />You can view the subscription by clicking <a href=\"{subscription_link}\">here</a><br />\r\n<div style=\"text-align: center;\"><span style=\"font-size: 10pt;\">&nbsp;</span></div>\r\nBest Regards,<br />{email_signature}<br /><br /><span style=\"font-size: 10pt;\"><span style=\"color: #999999;\">You are receiving this email because you are either administrator or you are creator of the subscription.</span></span>', '{companyname} | CRM', '', 0, 1, 0),
(72, 'client', 'contact-verification-email', 'english', 'Email Verification (Sent to Contact After Registration)', 'Verify Email Address', '<p>Hello&nbsp;{contact_firstname}<br /><br />Please click the button below to verify your email address.<br /><br /><a href=\"{email_verification_url}\">Verify Email Address</a><br /><br />If you did not create an account, no further action is required</p>\r\n<p><br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(73, 'client', 'new-customer-profile-file-uploaded-to-staff', 'english', 'New Customer Profile File(s) Uploaded (Sent to Staff)', 'Customer Uploaded New File(s) in Profile', 'Hi!<br /><br />New file(s) is uploaded into the customer ({client_company}) profile by&nbsp;{contact_firstname}<br /><br />You can check the uploaded files into the admin area by clicking <a href=\"{customer_profile_files_admin_link}\">here</a> or at the following link:&nbsp;{customer_profile_files_admin_link}<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(74, 'staff', 'event-notification-to-staff', 'english', 'Event Notification (Calendar)', 'Upcoming Event - {event_title}', 'Hi {staff_firstname}! <br /><br />This is a reminder for event <a href=\\\"{event_link}\\\">{event_title}</a> scheduled at {event_start_date}. <br /><br />Regards.', '', '', 0, 1, 0),
(75, 'subscriptions', 'subscription-payment-requires-action', 'english', 'Credit Card Authorization Required - SCA', 'Important: Confirm your subscription {subscription_name} payment', '<p>Hello {contact_firstname}</p>\r\n<p><strong>Your bank sometimes requires an additional step to make sure an online transaction was authorized.</strong><br /><br />Because of European regulation to protect consumers, many online payments now require two-factor authentication. Your bank ultimately decides when authentication is required to confirm a payment, but you may notice this step when you start paying for a service or when the cost changes.<br /><br />In order to pay the subscription <strong>{subscription_name}</strong>, you will need to&nbsp;confirm your payment by clicking on the follow link: <strong><a href=\"{subscription_authorize_payment_link}\">{subscription_authorize_payment_link}</a></strong><br /><br />To view the subscription, please click at the following link: <a href=\"{subscription_link}\"><span>{subscription_link}</span></a><br />or you can login in our dedicated area here: <a href=\"{crm_url}/login\">{crm_url}/login</a> in case you want to update your credit card or view the subscriptions you are subscribed.<br /><br />Best Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0);
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES
(76, 'invoice', 'invoice-due-notice', 'english', 'Invoice Due Notice', 'Your {invoice_number} will be due soon', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}<br /><br /></span>You invoice <span style=\"font-size: 12pt;\"><strong># {invoice_number} </strong>will be due on <strong>{invoice_duedate}</strong></span><br /><br /><span style=\"font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(77, 'estimate_request', 'estimate-request-submitted-to-staff', 'english', 'Estimate Request Submitted (Sent to Staff)', 'New Estimate Request Submitted', '<span> Hello,&nbsp;</span><br /><br />{estimate_request_email} submitted an estimate request via the {estimate_request_form_name} form.<br /><br />You can view the request at the following link: <a href=\"{estimate_request_link}\">{estimate_request_link}</a><br /><br />==<br /><br />{estimate_request_submitted_data}<br /><br />Kind Regards,<br /><span>{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(78, 'estimate_request', 'estimate-request-assigned', 'english', 'Estimate Request Assigned (Sent to Staff)', 'New Estimate Request Assigned', '<span> Hello {estimate_request_assigned},&nbsp;</span><br /><br />Estimate request #{estimate_request_id} has been assigned to you.<br /><br />You can view the request at the following link: <a href=\"{estimate_request_link}\">{estimate_request_link}</a><br /><br />Kind Regards,<br /><span>{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(79, 'estimate_request', 'estimate-request-received-to-user', 'english', 'Estimate Request Received (Sent to User)', 'Estimate Request Received', 'Hello,<br /><br /><strong>Your request has been received.</strong><br /><br />This email is to let you know that we received your request and we will get back to you as soon as possible with more information.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 0, 0),
(80, 'appointly', 'appointment-cron-reminder-to-staff', 'english', 'Appointment reminder (Sent to Staff and Attendees)', 'You have an upcoming appointment !', '<span style=\\\"font-size: 12pt;\\\"> Hello {staff_firstname} {staff_lastname} </span><br /><br /><span style=\\\"font-size: 12pt;\\\"> You have an upcoming appointment that is need to be held date {appointment_date} and location {appointment_location}</span><br /><br /><span style=\\\"font-size: 12pt;\\\"><strong>Additional info for your appointment:</strong></span><br /><span style=\\\"font-size: 12pt;\\\"><strong>Appointment Subject:</strong> {appointment_subject}</span><br /><span style=\\\"font-size: 12pt;\\\"><strong>Appointment Description:</strong> {appointment_description}</span><br /><span style=\\\"font-size: 12pt;\\\"><strong>Appointment scheduled date to start:</strong> {appointment_date}</span><br /><span style=\\\"font-size: 12pt;\\\"><strong>You can view this appointment at the following link:</strong> <a href=\"{appointment_admin_url}\">Your appointment URL</a></span><br /><span style=\\\"font-size: 12pt;\\\"><br />Kind Regards</span><br /><br /><span style=\\\"font-size: 12pt;\\\">{email_signature}</span>', '{companyname} | CRM', NULL, 0, 1, 0),
(81, 'appointly', 'appointment-cancelled-to-staff', 'english', 'Appointment cancelled (Sent to Staff and Attendees)', 'Appointment has been cancelled !', '<span style=\\\"font-size: 12pt;\\\"> Hello {staff_firstname} {staff_lastname}. </span><br /><br /><span style=\\\"font-size: 12pt;\\\"> The appointment that needed to be held on date {appointment_date} and location {appointment_location} with contact {appointment_client_name} is cancelled.</span><br /><br /><span style=\\\"font-size: 12pt;\\\"><br />Kind Regards</span><br /><br /><span style=\\\"font-size: 12pt;\\\">{email_signature}</span>', '{companyname} | CRM', NULL, 0, 1, 0),
(82, 'appointly', 'appointment-cancelled-to-contact', 'english', 'Appointment cancelled (Sent to Contact)', 'Your appointment has been cancelled !', '<span style=\\\"font-size: 12pt;\\\"> Hello {appointment_client_name}. </span><br /><br /><span style=\\\"font-size: 12pt;\\\"> The appointment that needed to be held on date {appointment_date} and location {appointment_location} is now cancelled.</span><br /><br /><span style=\\\"font-size:12pt;\\\"><br />Kind Regards</span><br /><br /><span style=\\\"font-size: 12pt;\\\">{email_signature}</span>', '{companyname} | CRM', NULL, 0, 1, 0),
(83, 'appointly', 'appointment-cron-reminder-to-contact', 'english', 'Appointment reminder (Sent to Contact)', 'You have an upcoming appointment !', '<span style=\\\"font-size: 12pt;\\\"> Hello {appointment_client_name}. </span><br /><br /><span style=\\\"font-size: 12pt;\\\"> You have an upcoming appointment that is need to be held date {appointment_date} and location {appointment_location}.</span><br /><br /><span style=\\\"font-size: 12pt;\\\"><strong>Additional info for your appointment</strong></span><br /><span style=\\\"font-size: 12pt;\\\"><strong>Appointment Subject:</strong> {appointment_subject}</span><br /><span style=\\\"font-size: 12pt;\\\"><strong>Appointment Description:</strong> {appointment_description}</span><br /><span style=\\\"font-size: 12pt;\\\"><strong>Appointment scheduled date to start:</strong> {appointment_date}</span><br /><span style=\\\"font-size: 12pt;\\\"><strong>You can view this appointment at the following link:</strong> <a href=\"{appointment_public_url}\">Your appointment URL</a></span><br /><span style=\\\"font-size: 12pt;\\\"><br />Kind Regards</span><br /><br /><span style=\\\"font-size: 12pt;\\\">{email_signature}</span>', '{companyname} | CRM', NULL, 0, 1, 0),
(84, 'appointly', 'appointment-approved-to-staff', 'english', 'Appointment approved (Sent to Staff and Atendees)', 'You are added as a appointment attendee', '<span style=\\\"font-size: 12pt;\\\"> Hello {staff_firstname} {staff_lastname}.</span><br /><br /><span style=\\\"font-size: 12pt;\\\"> You are added as a appointment attendee.</span><br /><br /><span style=\\\"font-size: 12pt;\\\"><strong>Appointment Subject:</strong> {appointment_subject}</span><br /><span style=\\\"font-size: 12pt;\\\"><strong>Appointment Description:</strong> {appointment_description}</span><br /><span style=\\\"font-size: 12pt;\\\"><strong>Appointment scheduled date to start:</strong> {appointment_date}</span><br /><span style=\\\"font-size: 12pt;\\\"><strong>You can view this appointment at the following link:</strong> <a href=\"{appointment_admin_url}\">Your appointment URL</a></span><br /><span style=\\\"font-size: 12pt;\\\"><br />Kind Regards</span><br /><br /><span style=\\\"font-size: 12pt;\\\">{email_signature}</span>', '{companyname} | CRM', NULL, 0, 1, 0),
(85, 'appointly', 'appointment-approved-to-contact', 'english', 'Appointment approved (Sent to Contact)', 'Your appointment has been approved', '<span style=\\\"font-size: 12pt;\\\"> Hello {appointment_client_name}.</span><br /><br /><span style=\\\"font-size: 12pt;\\\"> You appointment has been approved!</span><br /><br /><span style=\\\"font-size: 12pt;\\\"><strong>Appointment Subject:</strong> {appointment_subject}</span><br /><span style=\\\"font-size: 12pt;\\\"><strong>Appointment Description:</strong> {appointment_description}</span><br /><span style=\\\"font-size: 12pt;\\\"><strong>Appointment scheduled date to start:</strong> {appointment_date}</span><br /><span style=\\\"font-size: 12pt;\\\"><strong>You can keep track of your appointment at the following link:</strong> <a href=\"{appointment_public_url}\">Your appointment URL</a></span><br /><span style=\\\"font-size: 12pt;\\\"><br/>If you have any questions Please contact us for more information.</span><br /><br /><span style=\\\"font-size: 12pt;\\\"><br />Kind Regards</span><br /><br /><span style=\\\"font-size: 12pt;\\\">{email_signature}</span>', '{companyname} | CRM', NULL, 0, 1, 0),
(86, 'appointly', 'appointment-submitted-to-staff', 'english', 'New appointment request (Sent to Responsible Person)', 'New appointment request via external form', '<span 12pt=\"\"><span 12pt=\"\">Hello {staff_firstname} {staff_lastname}<br /><br />New appointment request submitted via external form</span>.<br /><br /><span 12pt=\"\"><strong>Appointment Subject:</strong> {appointment_subject}</span><br /><br /><span 12pt=\"\"><strong>Appointment Description:</strong> {appointment_description}</span><br /><br /><span 12pt=\"\"><strong>Appointment requested scheduled start date:</strong> {appointment_date}</span><br /><br /><span 12pt=\"\"><strong>You can view this appointment request at the following link:</strong> <a href=\"{appointment_admin_url}\">{appointment_admin_url}</a></span><br /><br /><br />{companyname}<br />{crm_url}<br /><span 12pt=\"\"></span></span>', '{companyname} | CRM', NULL, 0, 1, 0),
(87, 'appointly', 'callback-assigned-to-staff', 'english', 'Assigned to callback (Sent to Staff)', 'You have been assigned to handle a new callback', '<span 12pt=\"\"><span 12pt=\"\">Hello {staff_firstname} {staff_lastname}<br /><br />An admin assigned a callback to you, you can view this callback request at the following link:</strong> <a href=\"{admin_url}/appointly/callbacks\">{admin_url}/appointly/callbacks</a></span><br /><br /><br />{companyname}<br />{crm_url}<br /><span 12pt=\"\"></span></span>', '{companyname} | CRM', NULL, 0, 1, 0),
(88, 'appointly', 'newcallback-requested-to-staff', 'english', 'New callback request (Sent to Callbacks Responsible Person)', 'You have a new callback request', '<span 12pt=\"\"><span 12pt=\"\">Hello {staff_firstname} {staff_lastname}<br /><br />A new callback request has just been submitted, fast navigate to callbacks to view latest callback submitted:</strong> <a href=\"{admin_url}/appointly/callbacks\">{admin_url}/appointly/callbacks</a></span><br /><br /><br />{companyname}<br />{crm_url}<br /><span 12pt=\"\"></span></span>', '{companyname} | CRM', NULL, 0, 1, 0),
(89, 'appointly', 'appointly-appointment-request-feedback', 'english', 'Request Appointment Feedback (Sent to Client)', 'Feedback request for Appointment', '<span 12pt=\"\"><span 12pt=\"\">Hello {appointment_client_name} <br /><br />A new feedback request has just been submitted, please leave your comments and thoughts about this past appointment, fast navigate to the appointment to add a feedback:</strong> <a href=\"{appointment_public_url}\">{appointment_public_url}</a></span><br /><br /><br />{companyname}<br />{crm_url}<br /><span 12pt=\"\"></span></span>', '{companyname} | CRM', NULL, 0, 1, 0),
(90, 'appointly', 'appointly-appointment-feedback-received', 'english', 'New Feedback Received (Sent to Responsible Person)', 'New appointment feedback rating received', '<span 12pt=\"\"><span 12pt=\"\">Hello {staff_firstname} {staff_lastname} <br /><br />A new feedback rating has been received from client {appointment_client_name}. View the new feedback rating submitted at the following link:</strong> <a href=\"{appointment_admin_url}\">{appointment_admin_url}</a></span><br /><br /><br />{companyname}<br />{crm_url}<br /><span 12pt=\"\"></span></span>', '{companyname} | CRM', NULL, 0, 1, 0),
(91, 'appointly', 'appointly-appointment-feedback-updated', 'english', 'Feedback Updated (Sent to Responsible Person)', 'Appointment feedback rating updated', '<span 12pt=\"\"><span 12pt=\"\">Hello {staff_firstname} {staff_lastname} <br /><br />An existing feedback was just updated from client {appointment_client_name}. View the new rating submitted at the following link:</strong> <a href=\"{appointment_admin_url}\">{appointment_admin_url}</a></span><br /><br /><br />{companyname}<br />{crm_url}<br /><span 12pt=\"\"></span></span>', '{companyname} | CRM', NULL, 0, 1, 0),
(92, 'approve', 'send-request-approve', 'english', 'Send Approval Request', 'Require Approval', '<p>Hi {staff_firstname}<br /><br />You have received a request to approve the {object_type}.<br /><br />You can view the {object_type} on the following link <a href=\"{object_link}\">{object_name}</a><br /><br />{email_signature}</p>', '{companyname} | CRM', NULL, 0, 1, 0),
(93, 'approve', 'send-request-approve', 'vietnamese', 'Gửi yêu cầu phê duyệt', 'Yêu cầu phê duyệt', 'Xin ch&agrave;o {staff_firstname} {staff_lastname}<br /><br />Bạn đã nhận được yêu cầu phê duyệt {object_type} mới.<br /><br />Bạn c&oacute; thể xem hóa đơn tại đ&acirc;y&nbsp;<a href=\"{object_link}\">{object_name}</a><br /><br />{email_signature}', '{companyname} | CRM', NULL, 0, 1, 0),
(94, 'approve', 'send_rejected', 'english', 'Send Rejected', 'The {object_type} has been rejected', '<p>Hi {staff_firstname}<br /><br />Your {object_type} has been rejected.<br /><br />You can view the {object_type} on the following link <a href=\"{object_link}\">{object_name}</a><br /><br />{email_signature}</p>', '{companyname} | CRM', NULL, 0, 1, 0),
(95, 'approve', 'send_rejected', 'vietnamese', 'Gửi từ chối', '{object_type} đã bị từ chối', 'Xin ch&agrave;o {staff_firstname} {staff_lastname}<br /><br />{object_type} của bạn đã bị từ chối.<br /><br />Bạn c&oacute; thể xem {object_type} tại đ&acirc;y&nbsp;<a href=\"{object_link}\">{object_name}</a><br /><br />{email_signature}', '{companyname} | CRM', NULL, 0, 1, 0),
(96, 'approve', 'send_approve', 'english', 'Send Approve', 'The {object_type} has been approved', '<p>Hi {staff_firstname}<br /><br />Your {object_type} has been approved.<br /><br />You can view the {object_type} on the following link <a href=\"{object_link}\">{object_name}</a><br /><br />{email_signature}</p>', '{companyname} | CRM', NULL, 0, 1, 0),
(97, 'approve', 'send_approve', 'vietnamese', 'Gửi phê duyệt', '{object_type} đã được phê duyệt', 'Xin ch&agrave;o {staff_firstname} {staff_lastname}<br /><br />{object_type} của bạn đã được phê duyệt.<br /><br />Bạn c&oacute; thể xem {object_type} tại đ&acirc;y&nbsp;<a href=\"{object_link}\">{object_name}</a><br /><br />{email_signature}', '{companyname} | CRM', NULL, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblestimates`
--

CREATE TABLE `tblestimates` (
  `id` int(11) NOT NULL,
  `sent` tinyint(1) NOT NULL DEFAULT '0',
  `datesend` datetime DEFAULT NULL,
  `clientid` int(11) NOT NULL,
  `deleted_customer_name` varchar(100) DEFAULT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `number` int(11) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `number_format` int(11) NOT NULL DEFAULT '0',
  `hash` varchar(32) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `date` date NOT NULL,
  `expirydate` date DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total` decimal(15,2) NOT NULL,
  `adjustment` decimal(15,2) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `clientnote` text,
  `adminnote` text,
  `discount_percent` decimal(15,2) DEFAULT '0.00',
  `discount_total` decimal(15,2) DEFAULT '0.00',
  `discount_type` varchar(30) DEFAULT NULL,
  `invoiceid` int(11) DEFAULT NULL,
  `invoiced_date` datetime DEFAULT NULL,
  `terms` text,
  `reference_no` varchar(100) DEFAULT NULL,
  `sale_agent` int(11) NOT NULL DEFAULT '0',
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `include_shipping` tinyint(1) NOT NULL,
  `show_shipping_on_estimate` tinyint(1) NOT NULL DEFAULT '1',
  `show_quantity_as` int(11) NOT NULL DEFAULT '1',
  `pipeline_order` int(11) NOT NULL DEFAULT '0',
  `is_expiry_notified` int(11) NOT NULL DEFAULT '0',
  `acceptance_firstname` varchar(50) DEFAULT NULL,
  `acceptance_lastname` varchar(50) DEFAULT NULL,
  `acceptance_email` varchar(100) DEFAULT NULL,
  `acceptance_date` datetime DEFAULT NULL,
  `acceptance_ip` varchar(40) DEFAULT NULL,
  `signature` varchar(40) DEFAULT NULL,
  `short_link` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblestimate_requests`
--

CREATE TABLE `tblestimate_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) NOT NULL,
  `submission` longtext NOT NULL,
  `last_status_change` datetime DEFAULT NULL,
  `date_estimated` datetime DEFAULT NULL,
  `from_form_id` int(11) DEFAULT NULL,
  `assigned` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `default_language` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblestimate_request_forms`
--

CREATE TABLE `tblestimate_request_forms` (
  `id` int(10) UNSIGNED NOT NULL,
  `form_key` varchar(32) NOT NULL,
  `type` varchar(100) NOT NULL,
  `name` varchar(191) NOT NULL,
  `form_data` mediumtext,
  `recaptcha` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `submit_btn_name` varchar(100) DEFAULT NULL,
  `success_submit_msg` text,
  `language` varchar(100) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `notify_type` varchar(100) DEFAULT NULL,
  `notify_ids` mediumtext,
  `responsible` int(11) DEFAULT NULL,
  `notify_request_submitted` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblestimate_request_status`
--

CREATE TABLE `tblestimate_request_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `statusorder` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `flag` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblestimate_request_status`
--

INSERT INTO `tblestimate_request_status` (`id`, `name`, `statusorder`, `color`, `flag`) VALUES
(1, 'Cancelled', 1, '#808080', 'cancelled'),
(2, 'Processing', 2, '#007bff', 'processing'),
(3, 'Completed', 3, '#28a745', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `tblevents`
--

CREATE TABLE `tblevents` (
  `eventid` int(11) NOT NULL,
  `title` mediumtext NOT NULL,
  `description` text,
  `userid` int(11) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `public` int(11) NOT NULL DEFAULT '0',
  `color` varchar(10) DEFAULT NULL,
  `isstartnotified` tinyint(1) NOT NULL DEFAULT '0',
  `reminder_before` int(11) NOT NULL DEFAULT '0',
  `reminder_before_type` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblexpenses`
--

CREATE TABLE `tblexpenses` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `currency` int(11) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `tax` int(11) DEFAULT NULL,
  `tax2` int(11) NOT NULL DEFAULT '0',
  `reference_no` varchar(100) DEFAULT NULL,
  `note` text,
  `expense_name` varchar(191) DEFAULT NULL,
  `clientid` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `billable` int(11) DEFAULT '0',
  `invoiceid` int(11) DEFAULT NULL,
  `paymentmode` varchar(50) DEFAULT NULL,
  `date` date NOT NULL,
  `recurring_type` varchar(10) DEFAULT NULL,
  `repeat_every` int(11) DEFAULT NULL,
  `recurring` int(11) NOT NULL DEFAULT '0',
  `cycles` int(11) NOT NULL DEFAULT '0',
  `total_cycles` int(11) NOT NULL DEFAULT '0',
  `custom_recurring` int(11) NOT NULL DEFAULT '0',
  `last_recurring_date` date DEFAULT NULL,
  `create_invoice_billable` tinyint(1) DEFAULT NULL,
  `send_invoice_to_customer` tinyint(1) NOT NULL,
  `recurring_from` int(11) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `addedfrom` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblexpenses_categories`
--

CREATE TABLE `tblexpenses_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblfeedback`
--

CREATE TABLE `tblfeedback` (
  `id` int(11) NOT NULL,
  `customerid` int(11) NOT NULL,
  `projectid` varchar(40) NOT NULL,
  `coding` varchar(10) DEFAULT NULL,
  `communication` varchar(10) DEFAULT NULL,
  `services` varchar(10) DEFAULT NULL,
  `recommendation` varchar(10) DEFAULT NULL,
  `message` varchar(50) DEFAULT NULL,
  `feedback_submitted` int(11) DEFAULT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblfeedback`
--

INSERT INTO `tblfeedback` (`id`, `customerid`, `projectid`, `coding`, `communication`, `services`, `recommendation`, `message`, `feedback_submitted`, `date`) VALUES
(1, 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-06 04:21:32');

-- --------------------------------------------------------

--
-- Table structure for table `tblfiles`
--

CREATE TABLE `tblfiles` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `file_name` varchar(191) NOT NULL,
  `filetype` varchar(40) DEFAULT NULL,
  `visible_to_customer` int(11) NOT NULL DEFAULT '0',
  `attachment_key` varchar(32) DEFAULT NULL,
  `external` varchar(40) DEFAULT NULL,
  `external_link` text,
  `thumbnail_link` text COMMENT 'For external usage',
  `staffid` int(11) NOT NULL,
  `contact_id` int(11) DEFAULT '0',
  `task_comment_id` int(11) NOT NULL DEFAULT '0',
  `dateadded` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblform_questions`
--

CREATE TABLE `tblform_questions` (
  `questionid` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) DEFAULT NULL,
  `question` mediumtext NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `question_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblform_question_box`
--

CREATE TABLE `tblform_question_box` (
  `boxid` int(11) NOT NULL,
  `boxtype` varchar(10) NOT NULL,
  `questionid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblform_question_box_description`
--

CREATE TABLE `tblform_question_box_description` (
  `questionboxdescriptionid` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `boxid` mediumtext NOT NULL,
  `questionid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblform_results`
--

CREATE TABLE `tblform_results` (
  `resultid` int(11) NOT NULL,
  `boxid` int(11) NOT NULL,
  `boxdescriptionid` int(11) DEFAULT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) DEFAULT NULL,
  `questionid` int(11) NOT NULL,
  `answer` text,
  `resultsetid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblgdpr_requests`
--

CREATE TABLE `tblgdpr_requests` (
  `id` int(11) NOT NULL,
  `clientid` int(11) NOT NULL DEFAULT '0',
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `lead_id` int(11) NOT NULL DEFAULT '0',
  `request_type` varchar(191) DEFAULT NULL,
  `status` varchar(40) DEFAULT NULL,
  `request_date` datetime NOT NULL,
  `request_from` varchar(150) DEFAULT NULL,
  `description` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblgoods_delivery`
--

CREATE TABLE `tblgoods_delivery` (
  `id` int(11) UNSIGNED NOT NULL,
  `rel_type` int(11) DEFAULT NULL COMMENT 'type goods delivery',
  `rel_document` int(11) DEFAULT NULL COMMENT 'document id of goods delivery',
  `customer_code` text,
  `customer_name` varchar(100) DEFAULT NULL,
  `to_` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `description` text COMMENT 'the reason delivery',
  `staff_id` int(11) DEFAULT NULL COMMENT 'salesman',
  `date_c` date DEFAULT NULL,
  `date_add` date DEFAULT NULL,
  `goods_delivery_code` varchar(100) DEFAULT NULL COMMENT 'số chứng từ xuất kho',
  `warehouse_id` int(11) DEFAULT NULL,
  `total_money` varchar(200) DEFAULT NULL,
  `approval` int(11) DEFAULT '0' COMMENT 'status approval ',
  `addedfrom` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblgoods_delivery_detail`
--

CREATE TABLE `tblgoods_delivery_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `goods_delivery_id` int(11) NOT NULL,
  `commodity_code` varchar(100) DEFAULT NULL,
  `commodity_name` text,
  `warehouse_id` text,
  `unit_id` text,
  `quantities` text,
  `unit_price` varchar(100) DEFAULT NULL,
  `total_money` varchar(200) DEFAULT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblgoods_receipt`
--

CREATE TABLE `tblgoods_receipt` (
  `id` int(11) UNSIGNED NOT NULL,
  `supplier_code` varchar(100) DEFAULT NULL,
  `supplier_name` text,
  `deliver_name` text,
  `buyer_id` int(11) DEFAULT NULL,
  `description` text,
  `pr_order_id` int(11) DEFAULT NULL COMMENT 'code puchase request agree',
  `date_c` date DEFAULT NULL,
  `date_add` date DEFAULT NULL,
  `goods_receipt_code` varchar(100) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `total_tax_money` varchar(100) DEFAULT NULL,
  `total_goods_money` varchar(100) DEFAULT NULL,
  `value_of_inventory` varchar(100) DEFAULT NULL,
  `total_money` varchar(100) DEFAULT NULL COMMENT 'total_money = total_tax_money +total_goods_money ',
  `addedfrom` int(11) DEFAULT NULL,
  `approval` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblgoods_receipt`
--

INSERT INTO `tblgoods_receipt` (`id`, `supplier_code`, `supplier_name`, `deliver_name`, `buyer_id`, `description`, `pr_order_id`, `date_c`, `date_add`, `goods_receipt_code`, `warehouse_id`, `total_tax_money`, `total_goods_money`, `value_of_inventory`, `total_money`, `addedfrom`, `approval`) VALUES
(1, NULL, '', '', 0, '', 0, '0000-00-00', '0000-00-00', 'NK01', 1, '0', '0', '0', '0', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblgoods_receipt_detail`
--

CREATE TABLE `tblgoods_receipt_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `goods_receipt_id` int(11) NOT NULL,
  `commodity_code` varchar(100) DEFAULT NULL,
  `commodity_name` text,
  `warehouse_id` text,
  `unit_id` text,
  `quantities` text,
  `unit_price` varchar(100) DEFAULT NULL,
  `tax` varchar(100) DEFAULT NULL,
  `tax_money` varchar(100) DEFAULT NULL,
  `goods_money` varchar(100) DEFAULT NULL,
  `date_manufacture` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblgoods_receipt_detail`
--

INSERT INTO `tblgoods_receipt_detail` (`id`, `goods_receipt_id`, `commodity_code`, `commodity_name`, `warehouse_id`, `unit_id`, `quantities`, `unit_price`, `tax`, `tax_money`, `goods_money`, `date_manufacture`, `expiry_date`, `note`) VALUES
(1, 1, '1', NULL, '1', '0', '13', '0', '0', '0', '0', NULL, NULL, '0');

-- --------------------------------------------------------

--
-- Table structure for table `tblgoods_transaction_detail`
--

CREATE TABLE `tblgoods_transaction_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `goods_receipt_id` int(11) DEFAULT NULL COMMENT 'id_goods_receipt_id or goods_delivery_id',
  `goods_id` int(11) NOT NULL COMMENT ' is id commodity',
  `old_quantity` varchar(100) DEFAULT NULL,
  `quantity` varchar(100) DEFAULT NULL,
  `date_add` datetime DEFAULT NULL,
  `commodity_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `note` text,
  `status` int(2) DEFAULT NULL COMMENT '1:Goods receipt note 2:Goods delivery note'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblgoods_transaction_detail`
--

INSERT INTO `tblgoods_transaction_detail` (`id`, `goods_receipt_id`, `goods_id`, `old_quantity`, `quantity`, `date_add`, `commodity_id`, `warehouse_id`, `note`, `status`) VALUES
(1, 1, 1, NULL, '13', '2021-06-06 04:16:51', 1, 1, '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblhrm_option`
--

CREATE TABLE `tblhrm_option` (
  `option_id` int(11) UNSIGNED NOT NULL,
  `option_name` varchar(200) NOT NULL,
  `option_val` longtext,
  `auto` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblhrm_option`
--

INSERT INTO `tblhrm_option` (`option_id`, `option_name`, `option_val`, `auto`) VALUES
(1, 'hrm_contract_form', '[]', 1),
(2, 'hrm_leave_position', '[]', 1),
(3, 'hrm_leave_contract_type', '[]', 1),
(4, 'hrm_leave_start_date', NULL, 1),
(5, 'hrm_max_leave_in_year', NULL, 1),
(6, 'hrm_start_leave_from_month', NULL, 1),
(7, 'hrm_start_leave_to_month', NULL, 1),
(8, 'hrm_add_new_leave_month_from_date', NULL, 1),
(9, 'hrm_accumulated_leave_to_month', NULL, 1),
(10, 'hrm_leave_contract_sign_day', NULL, 1),
(11, 'hrm_start_date_seniority', NULL, 1),
(12, 'hrm_seniority_year', NULL, 1),
(13, 'hrm_seniority_year_leave', NULL, 1),
(14, 'hrm_next_year', NULL, 1),
(15, 'hrm_next_year_leave', NULL, 1),
(16, 'alow_borrow_leave', NULL, 1),
(17, 'contract_type_borrow', '[]', 1),
(18, 'max_leave_borrow', NULL, 1),
(19, 'day_increases_monthly', '15', 1),
(20, 'sign_a_labor_contract', '1', 1),
(21, 'maternity_leave_to_return_to_work', '1', 1),
(22, 'unpaid_leave_to_return_to_work', '1', 1),
(23, 'increase_the_premium', '1', 1),
(24, 'day_decreases_monthly', '5', 1),
(25, 'contract_paid_for_unemployment', '1', 1),
(26, 'maternity_leave_regime', '1', 1),
(27, 'unpaid_leave_of_more_than', '10', 1),
(28, 'reduced_premiums', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblhrm_timesheet`
--

CREATE TABLE `tblhrm_timesheet` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `date_work` date NOT NULL,
  `value` text,
  `type` varchar(45) DEFAULT NULL,
  `add_from` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblinsurance_type`
--

CREATE TABLE `tblinsurance_type` (
  `id` int(11) NOT NULL,
  `from_month` date NOT NULL,
  `social_company` varchar(15) DEFAULT NULL,
  `social_staff` varchar(15) DEFAULT NULL,
  `labor_accident_company` varchar(15) DEFAULT NULL,
  `labor_accident_staff` varchar(15) DEFAULT NULL,
  `health_company` varchar(15) DEFAULT NULL,
  `health_staff` varchar(15) DEFAULT NULL,
  `unemployment_company` varchar(15) DEFAULT NULL,
  `unemployment_staff` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblinventory_commodity_min`
--

CREATE TABLE `tblinventory_commodity_min` (
  `id` int(11) UNSIGNED NOT NULL,
  `commodity_id` int(11) NOT NULL,
  `commodity_code` varchar(100) DEFAULT NULL,
  `commodity_name` varchar(100) DEFAULT NULL,
  `inventory_number_min` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblinventory_commodity_min`
--

INSERT INTO `tblinventory_commodity_min` (`id`, `commodity_id`, `commodity_code`, `commodity_name`, `inventory_number_min`) VALUES
(1, 1, '* Commodity Code', 'Commodity Name', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tblinventory_history`
--

CREATE TABLE `tblinventory_history` (
  `id` int(11) NOT NULL,
  `assets` int(11) NOT NULL,
  `date_time` datetime NOT NULL,
  `acction` varchar(50) NOT NULL,
  `inventory_begin` int(11) DEFAULT NULL,
  `inventory_end` int(11) NOT NULL,
  `cost` decimal(15,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblinventory_history`
--

INSERT INTO `tblinventory_history` (`id`, `assets`, `date_time`, `acction`, `inventory_begin`, `inventory_end`, `cost`) VALUES
(1, 1, '2021-06-06 00:00:00', 'add_new', 0, 1, '50'),
(2, 2, '2021-06-06 00:00:00', 'add_new', 0, 1, '50');

-- --------------------------------------------------------

--
-- Table structure for table `tblinventory_manage`
--

CREATE TABLE `tblinventory_manage` (
  `id` int(11) UNSIGNED NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `commodity_id` int(11) NOT NULL,
  `inventory_number` varchar(100) DEFAULT NULL,
  `date_manufacture` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblinventory_manage`
--

INSERT INTO `tblinventory_manage` (`id`, `warehouse_id`, `commodity_id`, `inventory_number`, `date_manufacture`, `expiry_date`) VALUES
(1, 1, 1, '13', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoicepaymentrecords`
--

CREATE TABLE `tblinvoicepaymentrecords` (
  `id` int(11) NOT NULL,
  `invoiceid` int(11) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `paymentmode` varchar(40) DEFAULT NULL,
  `paymentmethod` varchar(191) DEFAULT NULL,
  `date` date NOT NULL,
  `daterecorded` datetime NOT NULL,
  `note` text NOT NULL,
  `transactionid` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoices`
--

CREATE TABLE `tblinvoices` (
  `id` int(11) NOT NULL,
  `sent` tinyint(1) NOT NULL DEFAULT '0',
  `datesend` datetime DEFAULT NULL,
  `clientid` int(11) NOT NULL,
  `deleted_customer_name` varchar(100) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `number_format` int(11) NOT NULL DEFAULT '0',
  `datecreated` datetime NOT NULL,
  `date` date NOT NULL,
  `duedate` date DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total` decimal(15,2) NOT NULL,
  `adjustment` decimal(15,2) DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL,
  `hash` varchar(32) NOT NULL,
  `status` int(11) DEFAULT '1',
  `clientnote` text,
  `adminnote` text,
  `last_overdue_reminder` date DEFAULT NULL,
  `last_due_reminder` date DEFAULT NULL,
  `cancel_overdue_reminders` int(11) NOT NULL DEFAULT '0',
  `allowed_payment_modes` mediumtext,
  `token` mediumtext,
  `discount_percent` decimal(15,2) DEFAULT '0.00',
  `discount_total` decimal(15,2) DEFAULT '0.00',
  `discount_type` varchar(30) NOT NULL,
  `recurring` int(11) NOT NULL DEFAULT '0',
  `recurring_type` varchar(10) DEFAULT NULL,
  `custom_recurring` tinyint(1) NOT NULL DEFAULT '0',
  `cycles` int(11) NOT NULL DEFAULT '0',
  `total_cycles` int(11) NOT NULL DEFAULT '0',
  `is_recurring_from` int(11) DEFAULT NULL,
  `last_recurring_date` date DEFAULT NULL,
  `terms` text,
  `sale_agent` int(11) NOT NULL DEFAULT '0',
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `include_shipping` tinyint(1) NOT NULL,
  `show_shipping_on_invoice` tinyint(1) NOT NULL DEFAULT '1',
  `show_quantity_as` int(11) NOT NULL DEFAULT '1',
  `project_id` int(11) DEFAULT '0',
  `subscription_id` int(11) NOT NULL DEFAULT '0',
  `short_link` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblitemable`
--

CREATE TABLE `tblitemable` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(15) NOT NULL,
  `description` mediumtext NOT NULL,
  `long_description` mediumtext,
  `qty` decimal(15,2) NOT NULL,
  `rate` decimal(15,2) NOT NULL,
  `unit` varchar(40) DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblitems`
--

CREATE TABLE `tblitems` (
  `id` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `long_description` text,
  `rate` decimal(15,2) NOT NULL,
  `tax` int(11) DEFAULT NULL,
  `tax2` int(11) DEFAULT NULL,
  `unit` varchar(40) DEFAULT NULL,
  `group_id` int(11) NOT NULL DEFAULT '0',
  `commodity_code` varchar(100) NOT NULL,
  `commodity_barcode` text,
  `commodity_type` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `origin` varchar(100) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  `style_id` int(11) DEFAULT NULL,
  `model_id` int(11) DEFAULT NULL,
  `size_id` int(11) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `sku_code` varchar(200) DEFAULT NULL,
  `sku_name` varchar(200) DEFAULT NULL,
  `purchase_price` decimal(15,2) DEFAULT NULL,
  `sub_group` varchar(200) DEFAULT NULL,
  `commodity_name` varchar(200) NOT NULL,
  `color` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblitems`
--

INSERT INTO `tblitems` (`id`, `description`, `long_description`, `rate`, `tax`, `tax2`, `unit`, `group_id`, `commodity_code`, `commodity_barcode`, `commodity_type`, `warehouse_id`, `origin`, `color_id`, `style_id`, `model_id`, `size_id`, `unit_id`, `sku_code`, `sku_name`, `purchase_price`, `sub_group`, `commodity_name`, `color`) VALUES
(1, 'Commodity Name', 'Commodity NameCommodity NameCommodity NameCommodity Name', '10.00', 0, NULL, NULL, 1, '* Commodity Code', '99031300464', 1, NULL, '', NULL, 0, 0, 0, 1, '1-0001', 'Commodity Name', '0.00', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblitems_groups`
--

CREATE TABLE `tblitems_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `commodity_group_code` varchar(100) DEFAULT NULL,
  `order` int(10) DEFAULT NULL,
  `display` int(1) DEFAULT NULL,
  `note` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblitems_groups`
--

INSERT INTO `tblitems_groups` (`id`, `name`, `commodity_group_code`, `order`, `display`, `note`) VALUES
(1, 'Local', '10', 0, 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `tblitem_tax`
--

CREATE TABLE `tblitem_tax` (
  `id` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `taxrate` decimal(15,2) NOT NULL,
  `taxname` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbljob_position`
--

CREATE TABLE `tbljob_position` (
  `position_id` int(11) UNSIGNED NOT NULL,
  `position_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblknowedge_base_article_feedback`
--

CREATE TABLE `tblknowedge_base_article_feedback` (
  `articleanswerid` int(11) NOT NULL,
  `articleid` int(11) NOT NULL,
  `answer` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblknowledge_base`
--

CREATE TABLE `tblknowledge_base` (
  `articleid` int(11) NOT NULL,
  `articlegroup` int(11) NOT NULL,
  `subject` mediumtext NOT NULL,
  `description` text NOT NULL,
  `slug` mediumtext NOT NULL,
  `active` tinyint(4) NOT NULL,
  `datecreated` datetime NOT NULL,
  `article_order` int(11) NOT NULL DEFAULT '0',
  `staff_article` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblknowledge_base_groups`
--

CREATE TABLE `tblknowledge_base_groups` (
  `groupid` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `group_slug` text,
  `description` mediumtext,
  `active` tinyint(4) NOT NULL,
  `color` varchar(10) DEFAULT '#28B8DA',
  `group_order` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblleads`
--

CREATE TABLE `tblleads` (
  `id` int(11) NOT NULL,
  `hash` varchar(65) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `company` varchar(191) DEFAULT NULL,
  `description` text,
  `country` int(11) NOT NULL DEFAULT '0',
  `zip` varchar(15) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `assigned` int(11) NOT NULL DEFAULT '0',
  `dateadded` datetime NOT NULL,
  `from_form_id` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL,
  `source` int(11) NOT NULL,
  `lastcontact` datetime DEFAULT NULL,
  `dateassigned` date DEFAULT NULL,
  `last_status_change` datetime DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(150) DEFAULT NULL,
  `leadorder` int(11) DEFAULT '1',
  `phonenumber` varchar(50) DEFAULT NULL,
  `date_converted` datetime DEFAULT NULL,
  `lost` tinyint(1) NOT NULL DEFAULT '0',
  `junk` int(11) NOT NULL DEFAULT '0',
  `last_lead_status` int(11) NOT NULL DEFAULT '0',
  `is_imported_from_email_integration` tinyint(1) NOT NULL DEFAULT '0',
  `email_integration_uid` varchar(30) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `default_language` varchar(40) DEFAULT NULL,
  `client_id` int(11) NOT NULL DEFAULT '0',
  `lead_value` decimal(15,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblleads_email_integration`
--

CREATE TABLE `tblleads_email_integration` (
  `id` int(11) NOT NULL COMMENT 'the ID always must be 1',
  `active` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `imap_server` varchar(100) NOT NULL,
  `password` mediumtext NOT NULL,
  `check_every` int(11) NOT NULL DEFAULT '5',
  `responsible` int(11) NOT NULL,
  `lead_source` int(11) NOT NULL,
  `lead_status` int(11) NOT NULL,
  `encryption` varchar(3) DEFAULT NULL,
  `folder` varchar(100) NOT NULL,
  `last_run` varchar(50) DEFAULT NULL,
  `notify_lead_imported` tinyint(1) NOT NULL DEFAULT '1',
  `notify_lead_contact_more_times` tinyint(1) NOT NULL DEFAULT '1',
  `notify_type` varchar(20) DEFAULT NULL,
  `notify_ids` mediumtext,
  `mark_public` int(11) NOT NULL DEFAULT '0',
  `only_loop_on_unseen_emails` tinyint(1) NOT NULL DEFAULT '1',
  `delete_after_import` int(11) NOT NULL DEFAULT '0',
  `create_task_if_customer` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblleads_email_integration`
--

INSERT INTO `tblleads_email_integration` (`id`, `active`, `email`, `imap_server`, `password`, `check_every`, `responsible`, `lead_source`, `lead_status`, `encryption`, `folder`, `last_run`, `notify_lead_imported`, `notify_lead_contact_more_times`, `notify_type`, `notify_ids`, `mark_public`, `only_loop_on_unseen_emails`, `delete_after_import`, `create_task_if_customer`) VALUES
(1, 0, '', '', '', 10, 0, 0, 0, 'tls', 'INBOX', '', 1, 1, 'assigned', '', 0, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblleads_sources`
--

CREATE TABLE `tblleads_sources` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblleads_sources`
--

INSERT INTO `tblleads_sources` (`id`, `name`) VALUES
(2, 'Facebook'),
(1, 'Google');

-- --------------------------------------------------------

--
-- Table structure for table `tblleads_status`
--

CREATE TABLE `tblleads_status` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `statusorder` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT '#28B8DA',
  `isdefault` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblleads_status`
--

INSERT INTO `tblleads_status` (`id`, `name`, `statusorder`, `color`, `isdefault`) VALUES
(1, 'INACTIVOS', 1000, '#ff8c5a', 1),
(2, 'CON FALLAS', 3, '#ffd935', 0),
(3, 'ACTIVOS', 1, '#79c9a1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbllead_activity_log`
--

CREATE TABLE `tbllead_activity_log` (
  `id` int(11) NOT NULL,
  `leadid` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `additional_data` text,
  `date` datetime NOT NULL,
  `staffid` int(11) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `custom_activity` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbllead_integration_emails`
--

CREATE TABLE `tbllead_integration_emails` (
  `id` int(11) NOT NULL,
  `subject` mediumtext,
  `body` mediumtext,
  `dateadded` datetime NOT NULL,
  `leadid` int(11) NOT NULL,
  `emailid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbllistemails`
--

CREATE TABLE `tbllistemails` (
  `emailid` int(11) NOT NULL,
  `listid` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblmaillistscustomfields`
--

CREATE TABLE `tblmaillistscustomfields` (
  `customfieldid` int(11) NOT NULL,
  `listid` int(11) NOT NULL,
  `fieldname` varchar(150) NOT NULL,
  `fieldslug` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblmaillistscustomfieldvalues`
--

CREATE TABLE `tblmaillistscustomfieldvalues` (
  `customfieldvalueid` int(11) NOT NULL,
  `listid` int(11) NOT NULL,
  `customfieldid` int(11) NOT NULL,
  `emailid` int(11) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblmail_queue`
--

CREATE TABLE `tblmail_queue` (
  `id` int(11) NOT NULL,
  `engine` varchar(40) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `cc` text,
  `bcc` text,
  `message` mediumtext NOT NULL,
  `alt_message` mediumtext,
  `status` enum('pending','sending','sent','failed') DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `headers` text,
  `attachments` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblmanage_leave`
--

CREATE TABLE `tblmanage_leave` (
  `leave_id` int(11) UNSIGNED NOT NULL,
  `id_staff` int(11) NOT NULL,
  `leave_date` int(11) DEFAULT NULL,
  `leave_year` int(11) DEFAULT NULL,
  `accumulated_leave` int(11) DEFAULT NULL,
  `seniority_leave` int(11) DEFAULT NULL,
  `borrow_leave` int(11) DEFAULT NULL,
  `actual_leave` int(11) DEFAULT NULL,
  `expected_leave` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblmigrations`
--

CREATE TABLE `tblmigrations` (
  `version` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblmigrations`
--

INSERT INTO `tblmigrations` (`version`) VALUES
(284);

-- --------------------------------------------------------

--
-- Table structure for table `tblmilestones`
--

CREATE TABLE `tblmilestones` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text,
  `description_visible_to_customer` tinyint(1) DEFAULT '0',
  `due_date` date NOT NULL,
  `project_id` int(11) NOT NULL,
  `color` varchar(10) DEFAULT NULL,
  `milestone_order` int(11) NOT NULL DEFAULT '0',
  `datecreated` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblmilestones`
--

INSERT INTO `tblmilestones` (`id`, `name`, `description`, `description_visible_to_customer`, `due_date`, `project_id`, `color`, `milestone_order`, `datecreated`) VALUES
(1, 'hito', 'asd', 0, '2021-06-06', 1, NULL, 1, '2021-06-06');

-- --------------------------------------------------------

--
-- Table structure for table `tblmodules`
--

CREATE TABLE `tblmodules` (
  `id` int(11) NOT NULL,
  `module_name` varchar(55) NOT NULL,
  `installed_version` varchar(11) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblmodules`
--

INSERT INTO `tblmodules` (`id`, `module_name`, `installed_version`, `active`) VALUES
(1, 'theme_style', '2.3.0', 1),
(2, 'menu_setup', '2.3.0', 1),
(17, 'whatsapp_chat', '1.0', 0),
(4, 'surveys', '2.3.0', 0),
(6, 'appointly', '1.1.4', 1),
(13, 'okr', '1.0.1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblnewsfeed_comment_likes`
--

CREATE TABLE `tblnewsfeed_comment_likes` (
  `id` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `commentid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `dateliked` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblnewsfeed_posts`
--

CREATE TABLE `tblnewsfeed_posts` (
  `postid` int(11) NOT NULL,
  `creator` int(11) NOT NULL,
  `datecreated` datetime NOT NULL,
  `visibility` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `pinned` int(11) NOT NULL,
  `datepinned` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblnewsfeed_post_comments`
--

CREATE TABLE `tblnewsfeed_post_comments` (
  `id` int(11) NOT NULL,
  `content` text,
  `userid` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblnewsfeed_post_likes`
--

CREATE TABLE `tblnewsfeed_post_likes` (
  `id` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `dateliked` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblnotes`
--

CREATE TABLE `tblnotes` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `description` text,
  `date_contacted` datetime DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblnotifications`
--

CREATE TABLE `tblnotifications` (
  `id` int(11) NOT NULL,
  `isread` int(11) NOT NULL DEFAULT '0',
  `isread_inline` tinyint(1) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `description` text NOT NULL,
  `fromuserid` int(11) NOT NULL,
  `fromclientid` int(11) NOT NULL DEFAULT '0',
  `from_fullname` varchar(100) NOT NULL,
  `touserid` int(11) NOT NULL,
  `fromcompany` int(11) DEFAULT NULL,
  `link` mediumtext,
  `additional_data` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblnotifications`
--

INSERT INTO `tblnotifications` (`id`, `isread`, `isread_inline`, `date`, `description`, `fromuserid`, `fromclientid`, `from_fullname`, `touserid`, `fromcompany`, `link`, `additional_data`) VALUES
(1, 1, 0, '2021-06-06 03:59:37', 'designates you as the OKR manager', 1, 0, 'Admin ERPSUR', 1, NULL, 'okr/show_detail_node/1', 'a:1:{i:0;s:33:\"designates you as the OKR manager\";}'),
(2, 1, 0, '2021-06-06 04:43:28', 'appointment_new_appointment_submitted', 0, 0, '', 1, 1, 'appointly/appointments/view?appointment_id=2', NULL),
(3, 1, 0, '2021-06-07 19:02:31', 'designates you as the OKR manager', 1, 0, 'Admin ERPSUR', 1, NULL, 'okr/show_detail_node/2', 'a:1:{i:0;s:33:\"designates you as the OKR manager\";}'),
(4, 1, 0, '2021-06-07 20:12:14', 'appointment_new_appointment_submitted', 0, 0, '', 1, 1, 'appointly/appointments/view?appointment_id=3', NULL),
(5, 1, 0, '2021-06-07 21:53:55', 'appointment_new_appointment_submitted', 0, 0, '', 1, 1, 'appointly/appointments/view?appointment_id=4', NULL),
(6, 1, 0, '2021-06-08 23:32:04', 'appointment_is_approved', 0, 0, '', 1, 1, 'appointly/appointments/view?appointment_id=', NULL),
(7, 1, 0, '2021-06-08 23:32:07', 'appointment_new_appointment_submitted', 0, 0, '', 1, 1, 'appointly/appointments/view?appointment_id=0', NULL),
(8, 1, 0, '2021-06-08 23:33:09', 'appointment_is_approved', 0, 0, '', 1, 1, 'appointly/appointments/view?appointment_id=', NULL),
(9, 1, 0, '2021-06-08 23:33:12', 'appointment_new_appointment_submitted', 0, 0, '', 1, 1, 'appointly/appointments/view?appointment_id=0', NULL),
(10, 1, 0, '2021-06-08 23:36:48', 'appointment_new_appointment_submitted', 0, 0, '', 1, 1, 'appointly/appointments/view?appointment_id=5', NULL),
(11, 1, 0, '2021-06-08 23:42:42', 'appointment_is_approved', 0, 0, '', 1, 1, 'appointly/appointments/view?appointment_id=', NULL),
(12, 1, 0, '2021-06-08 23:42:45', 'appointment_new_appointment_submitted', 0, 0, '', 1, 1, 'appointly/appointments/view?appointment_id=0', NULL),
(13, 1, 0, '2021-06-09 00:01:54', 'appointment_new_appointment_submitted', 0, 0, '', 1, 1, 'appointly/appointments/view?appointment_id=6', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblokrs`
--

CREATE TABLE `tblokrs` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `circulation` int(11) NOT NULL,
  `okr_superior` text,
  `your_target` varchar(250) NOT NULL,
  `okr_cross` text,
  `display` int(11) DEFAULT NULL,
  `creator` int(11) NOT NULL,
  `datecreator` datetime NOT NULL,
  `change` int(11) NOT NULL DEFAULT '0',
  `person_assigned` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `progress` decimal(5,2) DEFAULT NULL,
  `recently_checkin` date DEFAULT NULL,
  `upcoming_checkin` date DEFAULT NULL,
  `confidence_level` int(11) NOT NULL DEFAULT '1',
  `type` int(11) NOT NULL DEFAULT '1',
  `category` int(11) NOT NULL,
  `department` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblokrs`
--

INSERT INTO `tblokrs` (`id`, `name`, `circulation`, `okr_superior`, `your_target`, `okr_cross`, `display`, `creator`, `datecreator`, `change`, `person_assigned`, `status`, `progress`, `recently_checkin`, `upcoming_checkin`, `confidence_level`, `type`, `category`, `department`) VALUES
(2, '', 1, '', '* Mi objetivo 010101', NULL, 1, 1, '2021-06-07 19:07:58', 1, 1, 0, '0.00', '2021-06-07', '2021-06-07', 2, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblokrs_checkin`
--

CREATE TABLE `tblokrs_checkin` (
  `id` int(11) UNSIGNED NOT NULL,
  `okrs_id` int(11) NOT NULL,
  `main_results` text NOT NULL,
  `target` text NOT NULL,
  `achieved` text NOT NULL,
  `progress` decimal(5,2) DEFAULT NULL,
  `confidence_level` int(11) NOT NULL DEFAULT '1',
  `unit` text NOT NULL,
  `answer` text NOT NULL,
  `evaluation_criteria` int(11) DEFAULT NULL,
  `comment` text,
  `type` int(11) DEFAULT NULL,
  `recently_checkin` date DEFAULT NULL,
  `upcoming_checkin` date DEFAULT NULL,
  `editor` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `key_results_id` int(11) NOT NULL,
  `complete_okrs` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblokrs_checkin`
--

INSERT INTO `tblokrs_checkin` (`id`, `okrs_id`, `main_results`, `target`, `achieved`, `progress`, `confidence_level`, `unit`, `answer`, `evaluation_criteria`, `comment`, `type`, `recently_checkin`, `upcoming_checkin`, `editor`, `created_date`, `key_results_id`, `complete_okrs`) VALUES
(8, 2, '* Resultados principales', '2', '2.00', '0.00', 2, '', '[\"\"]', 1, '', 1, '2021-06-07', '2021-06-07', 1, '0000-00-00 00:00:00', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblokrs_checkin_log`
--

CREATE TABLE `tblokrs_checkin_log` (
  `id` int(11) UNSIGNED NOT NULL,
  `okrs_id` int(11) NOT NULL,
  `main_results` text NOT NULL,
  `key_results_id` int(11) NOT NULL,
  `target` text NOT NULL,
  `achieved` text NOT NULL,
  `progress` decimal(5,2) DEFAULT NULL,
  `confidence_level` int(11) NOT NULL DEFAULT '1',
  `unit` text NOT NULL,
  `answer` text NOT NULL,
  `evaluation_criteria` int(11) DEFAULT NULL,
  `comment` text,
  `type` int(11) DEFAULT NULL,
  `recently_checkin` date DEFAULT NULL,
  `upcoming_checkin` date DEFAULT NULL,
  `editor` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `progress_total` decimal(5,2) DEFAULT NULL,
  `complete_okrs` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblokrs_checkin_log`
--

INSERT INTO `tblokrs_checkin_log` (`id`, `okrs_id`, `main_results`, `key_results_id`, `target`, `achieved`, `progress`, `confidence_level`, `unit`, `answer`, `evaluation_criteria`, `comment`, `type`, `recently_checkin`, `upcoming_checkin`, `editor`, `created_date`, `progress_total`, `complete_okrs`) VALUES
(1, 1, '4', 1, '8', '6', '75.00', 3, '1', '[\"si\"]', 1, '', 1, '2021-06-06', '2021-06-06', 1, '2021-06-06 04:01:39', '75.00', 0),
(2, 1, '4', 1, '8', '8', '75.00', 3, '1', '[\"si\"]', 1, '', 1, '2021-06-06', '2021-06-06', 1, '2021-06-07 18:32:21', '75.00', 0),
(3, 1, '4', 1, '8', '10', '75.00', 3, '1', '[\"si\"]', 1, '', 1, '2021-06-06', '2021-06-06', 1, '2021-06-07 18:32:54', '75.00', 0),
(4, 1, '4', 1, '8', '1', '75.00', 3, '1', '[\"si\"]', 1, '', 1, '2021-06-06', '2021-06-06', 1, '2021-06-07 18:33:03', '75.00', 0),
(5, 1, '4', 1, '8', '1', '75.00', 3, '1', '[\"si\"]', 1, '', 1, '2021-06-06', '2021-06-06', 1, '2021-06-07 18:33:10', '75.00', 1),
(6, 2, '* Resultados principales', 2, '2', '2.00', '0.00', 2, '', '[\"\"]', 0, '', 1, '2021-06-07', '2021-06-07', 1, '2021-06-07 19:05:44', '0.00', 0),
(7, 2, '* Resultados principales', 2, '2', '2.00', '0.00', 2, '', '[\"\"]', 1, '', 1, '2021-06-07', '2021-06-07', 1, '2021-06-07 19:06:07', '0.00', 0),
(8, 2, '* Resultados principales', 2, '2', '2.00', '0.00', 2, '', '[\"\"]', 1, '', 1, '2021-06-07', '2021-06-07', 1, '2021-06-07 19:06:21', '0.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblokrs_key_result`
--

CREATE TABLE `tblokrs_key_result` (
  `id` int(11) UNSIGNED NOT NULL,
  `okrs_id` int(11) NOT NULL,
  `main_results` text NOT NULL,
  `target` text NOT NULL,
  `plan` text NOT NULL,
  `results` text NOT NULL,
  `unit` text NOT NULL,
  `datecreator` datetime NOT NULL,
  `progress` decimal(5,2) DEFAULT NULL,
  `achieved` text,
  `confidence_level` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblokrs_key_result`
--

INSERT INTO `tblokrs_key_result` (`id`, `okrs_id`, `main_results`, `target`, `plan`, `results`, `unit`, `datecreator`, `progress`, `achieved`, `confidence_level`) VALUES
(3, 2, '* Resultados principales', '2', 'Plan', 'Resultados actuales', '1', '0000-00-00 00:00:00', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblokrs_key_result_log`
--

CREATE TABLE `tblokrs_key_result_log` (
  `id` int(11) UNSIGNED NOT NULL,
  `okrs_id` int(11) NOT NULL,
  `main_results` text NOT NULL,
  `target` text NOT NULL,
  `plan` text NOT NULL,
  `results` text NOT NULL,
  `unit` text NOT NULL,
  `editor` int(11) NOT NULL,
  `date_edit` datetime NOT NULL,
  `status` varchar(20) NOT NULL,
  `progress` decimal(5,2) DEFAULT NULL,
  `achieved` decimal(5,2) DEFAULT NULL,
  `confidence_level` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblokrs_key_result_log`
--

INSERT INTO `tblokrs_key_result_log` (`id`, `okrs_id`, `main_results`, `target`, `plan`, `results`, `unit`, `editor`, `date_edit`, `status`, `progress`, `achieved`, `confidence_level`) VALUES
(1, 2, '* Resultados principales', '2', 'Plan', 'Resultados actuales', '', 1, '0000-00-00 00:00:00', 'old', '0.00', '2.00', '2.00'),
(2, 2, '* Resultados principales', '2', 'Plan', 'Resultados actuales', '1', 1, '0000-00-00 00:00:00', 'new', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblokrs_log`
--

CREATE TABLE `tblokrs_log` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `circulation` int(11) NOT NULL,
  `okr_superior` text,
  `your_target` varchar(250) NOT NULL,
  `okr_cross` text,
  `display` int(11) DEFAULT NULL,
  `editor` int(11) NOT NULL,
  `date_edit` datetime NOT NULL,
  `change` int(11) NOT NULL DEFAULT '0',
  `person_assigned` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '1',
  `category` int(11) NOT NULL,
  `department` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblokrs_log`
--

INSERT INTO `tblokrs_log` (`id`, `name`, `circulation`, `okr_superior`, `your_target`, `okr_cross`, `display`, `editor`, `date_edit`, `change`, `person_assigned`, `type`, `category`, `department`) VALUES
(1, '', 1, '', '* Mi objetivo 010101', NULL, 1, 1, '0000-00-00 00:00:00', 1, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblokr_setting_category`
--

CREATE TABLE `tblokr_setting_category` (
  `id` int(11) UNSIGNED NOT NULL,
  `category` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblokr_setting_category`
--

INSERT INTO `tblokr_setting_category` (`id`, `category`) VALUES
(1, 'Ordenes de Trabajo');

-- --------------------------------------------------------

--
-- Table structure for table `tblokr_setting_circulation`
--

CREATE TABLE `tblokr_setting_circulation` (
  `id` int(11) UNSIGNED NOT NULL,
  `name_circulation` varchar(150) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblokr_setting_circulation`
--

INSERT INTO `tblokr_setting_circulation` (`id`, `name_circulation`, `from_date`, `to_date`) VALUES
(1, 'Proyecto 01', '2021-06-06', '2021-06-08');

-- --------------------------------------------------------

--
-- Table structure for table `tblokr_setting_evaluation_criteria`
--

CREATE TABLE `tblokr_setting_evaluation_criteria` (
  `id` int(11) UNSIGNED NOT NULL,
  `group_criteria` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `scores` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblokr_setting_evaluation_criteria`
--

INSERT INTO `tblokr_setting_evaluation_criteria` (`id`, `group_criteria`, `name`, `scores`) VALUES
(1, 1, 'realizar tareas ', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tblokr_setting_question`
--

CREATE TABLE `tblokr_setting_question` (
  `id` int(11) UNSIGNED NOT NULL,
  `question` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblokr_setting_question`
--

INSERT INTO `tblokr_setting_question` (`id`, `question`) VALUES
(1, 'realizar las tareas a tiempo\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tblokr_setting_unit`
--

CREATE TABLE `tblokr_setting_unit` (
  `id` int(11) UNSIGNED NOT NULL,
  `unit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblokr_setting_unit`
--

INSERT INTO `tblokr_setting_unit` (`id`, `unit`) VALUES
(1, 'Horas');

-- --------------------------------------------------------

--
-- Table structure for table `tblomni_log_discount`
--

CREATE TABLE `tblomni_log_discount` (
  `id` int(11) UNSIGNED NOT NULL,
  `name_discount` varchar(250) NOT NULL,
  `client` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_quality` int(11) NOT NULL,
  `total_product` int(11) NOT NULL,
  `date_apply` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `voucher_coupon` varchar(250) DEFAULT NULL,
  `order_number` varchar(100) DEFAULT NULL,
  `total_order` varchar(100) DEFAULT NULL,
  `discount` varchar(100) DEFAULT NULL,
  `tax` varchar(100) DEFAULT NULL,
  `total_after` varchar(100) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblomni_log_sync_woo`
--

CREATE TABLE `tblomni_log_sync_woo` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `regular_price` int(11) NOT NULL,
  `sale_price` int(11) NOT NULL,
  `date_on_sale_from` date DEFAULT NULL,
  `date_on_sale_to` date DEFAULT NULL,
  `short_description` text,
  `stock_quantity` int(11) DEFAULT NULL,
  `sku` text NOT NULL,
  `type` varchar(225) NOT NULL,
  `date_sync` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stock_quantity_history` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL,
  `chanel` varchar(250) NOT NULL DEFAULT '',
  `company` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblomni_master_channel_woocommere`
--

CREATE TABLE `tblomni_master_channel_woocommere` (
  `id` int(11) UNSIGNED NOT NULL,
  `name_channel` text NOT NULL,
  `consumer_key` text NOT NULL,
  `consumer_secret` text NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblomni_trade_discount`
--

CREATE TABLE `tblomni_trade_discount` (
  `id` int(11) UNSIGNED NOT NULL,
  `name_trade_discount` varchar(250) NOT NULL,
  `start_time` date NOT NULL,
  `end_time` date NOT NULL,
  `group_clients` text NOT NULL,
  `clients` text NOT NULL,
  `group_items` text NOT NULL,
  `items` text NOT NULL,
  `formal` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `voucher` text,
  `channel` int(11) NOT NULL DEFAULT '0',
  `store` varchar(11) NOT NULL DEFAULT '',
  `minimum_order_value` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbloptions`
--

CREATE TABLE `tbloptions` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `value` longtext NOT NULL,
  `autoload` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbloptions`
--

INSERT INTO `tbloptions` (`id`, `name`, `value`, `autoload`) VALUES
(1, 'dateformat', 'd-m-Y|%d-%m-%Y', 1),
(2, 'companyname', 'ERPSUR', 1),
(3, 'services', '1', 1),
(4, 'maximum_allowed_ticket_attachments', '10', 1),
(5, 'ticket_attachments_file_extensions', '.png,.jpg,.pdf,.doc,.docx,.xls,.xlsx,.zip,.rar,.txt,.mp4,.JPEG,.jpeg,.gif,.GIF,.pdf,.doc', 1),
(6, 'staff_access_only_assigned_departments', '1', 1),
(7, 'use_knowledge_base', '1', 1),
(8, 'smtp_email', '', 1),
(9, 'smtp_password', '', 1),
(10, 'company_info_format', '{company_name}<br />\r\n{address}<br />\r\n{city} {state}<br />\r\n{country_code} {zip_code}<br />\r\n{vat_number_with_label}', 0),
(11, 'smtp_port', '', 1),
(12, 'smtp_host', '', 1),
(13, 'smtp_email_charset', 'utf-8', 1),
(14, 'default_timezone', 'America/Argentina/Buenos_Aires', 1),
(15, 'clients_default_theme', 'soft', 1),
(16, 'company_logo', '3369e1fd0de4c7c1009bc5fa1c00292a.png', 1),
(17, 'tables_pagination_limit', '30', 1),
(18, 'main_domain', '', 1),
(19, 'allow_registration', '0', 1),
(20, 'knowledge_base_without_registration', '1', 1),
(21, 'email_signature', '', 1),
(22, 'default_staff_role', '', 1),
(23, 'newsfeed_maximum_files_upload', '10', 1),
(24, 'contract_expiration_before', '4', 1),
(25, 'invoice_prefix', 'FAC-', 1),
(26, 'decimal_separator', '.', 1),
(27, 'thousand_separator', ',', 1),
(28, 'invoice_company_name', '', 1),
(29, 'invoice_company_address', '', 1),
(30, 'invoice_company_city', '', 1),
(31, 'invoice_company_country_code', '', 1),
(32, 'invoice_company_postal_code', '', 1),
(33, 'invoice_company_phonenumber', '', 1),
(34, 'view_invoice_only_logged_in', '0', 1),
(35, 'invoice_number_format', '1', 1),
(36, 'next_invoice_number', '1', 0),
(37, 'active_language', 'spanish', 1),
(38, 'invoice_number_decrement_on_delete', '1', 1),
(39, 'automatically_send_invoice_overdue_reminder_after', '1', 1),
(40, 'automatically_resend_invoice_overdue_reminder_after', '3', 1),
(41, 'expenses_auto_operations_hour', '21', 1),
(42, 'delete_only_on_last_invoice', '1', 1),
(43, 'delete_only_on_last_estimate', '1', 1),
(44, 'create_invoice_from_recurring_only_on_paid_invoices', '0', 1),
(45, 'allow_payment_amount_to_be_modified', '1', 1),
(46, 'rtl_support_client', '0', 1),
(47, 'limit_top_search_bar_results_to', '10', 1),
(48, 'estimate_prefix', 'OC-', 1),
(49, 'next_estimate_number', '1', 0),
(50, 'estimate_number_decrement_on_delete', '1', 1),
(51, 'estimate_number_format', '1', 1),
(52, 'estimate_auto_convert_to_invoice_on_client_accept', '1', 1),
(53, 'exclude_estimate_from_client_area_with_draft_status', '1', 1),
(54, 'rtl_support_admin', '0', 1),
(55, 'last_cron_run', '1623267323', 1),
(56, 'show_sale_agent_on_estimates', '1', 1),
(57, 'show_sale_agent_on_invoices', '1', 1),
(58, 'predefined_terms_invoice', '', 1),
(59, 'predefined_terms_estimate', '', 1),
(60, 'default_task_priority', '2', 1),
(61, 'dropbox_app_key', '', 1),
(62, 'show_expense_reminders_on_calendar', '1', 1),
(63, 'only_show_contact_tickets', '1', 1),
(64, 'predefined_clientnote_invoice', '', 1),
(65, 'predefined_clientnote_estimate', '', 1),
(66, 'custom_pdf_logo_image_url', '', 1),
(67, 'favicon', 'favicon.png', 1),
(68, 'invoice_due_after', '30', 1),
(69, 'google_api_key', '', 1),
(70, 'google_calendar_main_calendar', '', 1),
(71, 'default_tax', 'a:0:{}', 1),
(72, 'show_invoices_on_calendar', '1', 1),
(73, 'show_estimates_on_calendar', '1', 1),
(74, 'show_contracts_on_calendar', '1', 1),
(75, 'show_tasks_on_calendar', '1', 1),
(76, 'show_customer_reminders_on_calendar', '1', 1),
(77, 'output_client_pdfs_from_admin_area_in_client_language', '0', 1),
(78, 'show_lead_reminders_on_calendar', '1', 1),
(79, 'send_estimate_expiry_reminder_before', '4', 1),
(80, 'leads_default_source', '', 1),
(81, 'leads_default_status', '', 1),
(82, 'proposal_expiry_reminder_enabled', '1', 1),
(83, 'send_proposal_expiry_reminder_before', '4', 1),
(84, 'default_contact_permissions', 'a:6:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"5\";i:5;s:1:\"6\";}', 1),
(85, 'pdf_logo_width', '150', 1),
(86, 'access_tickets_to_none_staff_members', '0', 1),
(87, 'customer_default_country', '', 1),
(88, 'view_estimate_only_logged_in', '0', 1),
(89, 'show_status_on_pdf_ei', '0', 1),
(90, 'email_piping_only_replies', '0', 1),
(91, 'email_piping_only_registered', '0', 1),
(92, 'default_view_calendar', 'dayGridMonth', 1),
(93, 'email_piping_default_priority', '2', 1),
(94, 'total_to_words_lowercase', '0', 1),
(95, 'show_tax_per_item', '1', 1),
(96, 'total_to_words_enabled', '0', 1),
(97, 'receive_notification_on_new_ticket', '1', 0),
(98, 'autoclose_tickets_after', '0', 1),
(99, 'media_max_file_size_upload', '100', 1),
(100, 'client_staff_add_edit_delete_task_comments_first_hour', '0', 1),
(101, 'show_projects_on_calendar', '1', 1),
(102, 'leads_kanban_limit', '50', 1),
(103, 'tasks_reminder_notification_before', '2', 1),
(104, 'pdf_font', 'freesans', 1),
(105, 'pdf_table_heading_color', '#323a45', 1),
(106, 'pdf_table_heading_text_color', '#ffffff', 1),
(107, 'pdf_font_size', '10', 1),
(108, 'default_leads_kanban_sort', 'dateadded', 1),
(109, 'default_leads_kanban_sort_type', 'asc', 1),
(110, 'allowed_files', '.png,.jpg,.pdf,.doc,.docx,.xls,.xlsx,.zip,.rar,.txt,.mp4,.JPEG,.jpeg,.gif,.GIF,.pdf,.doc', 1),
(111, 'show_all_tasks_for_project_member', '1', 1),
(112, 'email_protocol', 'smtp', 1),
(113, 'calendar_first_day', '0', 1),
(114, 'recaptcha_secret_key', '', 1),
(115, 'show_help_on_setup_menu', '0', 1),
(116, 'show_proposals_on_calendar', '1', 1),
(117, 'smtp_encryption', '', 1),
(118, 'recaptcha_site_key', '', 1),
(119, 'smtp_username', '', 1),
(120, 'auto_stop_tasks_timers_on_new_timer', '1', 1),
(121, 'notification_when_customer_pay_invoice', '1', 1),
(122, 'calendar_invoice_color', '#ff6f00', 1),
(123, 'calendar_estimate_color', '#ff6f00', 1),
(124, 'calendar_proposal_color', '#84c529', 1),
(125, 'new_task_auto_assign_current_member', '1', 1),
(126, 'calendar_reminder_color', '#03a9f4', 1),
(127, 'calendar_contract_color', '#b72974', 1),
(128, 'calendar_project_color', '#b72974', 1),
(129, 'update_info_message', '', 1),
(130, 'show_estimate_reminders_on_calendar', '1', 1),
(131, 'show_invoice_reminders_on_calendar', '1', 1),
(132, 'show_proposal_reminders_on_calendar', '1', 1),
(133, 'proposal_due_after', '7', 1),
(134, 'allow_customer_to_change_ticket_status', '0', 1),
(135, 'lead_lock_after_convert_to_customer', '0', 1),
(136, 'default_proposals_pipeline_sort', 'pipeline_order', 1),
(137, 'default_proposals_pipeline_sort_type', 'asc', 1),
(138, 'default_estimates_pipeline_sort', 'pipeline_order', 1),
(139, 'default_estimates_pipeline_sort_type', 'asc', 1),
(140, 'use_recaptcha_customers_area', '0', 1),
(141, 'remove_decimals_on_zero', '0', 1),
(142, 'remove_tax_name_from_item_table', '0', 1),
(143, 'pdf_format_invoice', 'A4-PORTRAIT', 1),
(144, 'pdf_format_estimate', 'A4-PORTRAIT', 1),
(145, 'pdf_format_proposal', 'A4-PORTRAIT', 1),
(146, 'pdf_format_payment', 'A4-PORTRAIT', 1),
(147, 'pdf_format_contract', 'A4-PORTRAIT', 1),
(148, 'swap_pdf_info', '0', 1),
(149, 'exclude_invoice_from_client_area_with_draft_status', '1', 1),
(150, 'cron_has_run_from_cli', '1', 1),
(151, 'hide_cron_is_required_message', '1', 0),
(152, 'auto_assign_customer_admin_after_lead_convert', '1', 1),
(153, 'show_transactions_on_invoice_pdf', '1', 1),
(154, 'show_pay_link_to_invoice_pdf', '0', 1),
(155, 'tasks_kanban_limit', '50', 1),
(156, 'purchase_key', '', 1),
(157, 'estimates_pipeline_limit', '50', 1),
(158, 'proposals_pipeline_limit', '50', 1),
(159, 'proposal_number_prefix', 'REMITO -', 1),
(160, 'number_padding_prefixes', '6', 1),
(161, 'show_page_number_on_pdf', '0', 1),
(162, 'calendar_events_limit', '4', 1),
(163, 'show_setup_menu_item_only_on_hover', '0', 1),
(164, 'company_requires_vat_number_field', '1', 1),
(165, 'company_is_required', '1', 1),
(166, 'allow_contact_to_delete_files', '0', 1),
(167, 'company_vat', '', 1),
(168, 'di', '1622954193', 1),
(169, 'invoice_auto_operations_hour', '21', 1),
(170, 'use_minified_files', '1', 1),
(171, 'only_own_files_contacts', '0', 1),
(172, 'allow_primary_contact_to_view_edit_billing_and_shipping', '0', 1),
(173, 'estimate_due_after', '7', 1),
(174, 'staff_members_open_tickets_to_all_contacts', '1', 1),
(175, 'time_format', '24', 1),
(176, 'delete_activity_log_older_then', '1', 1),
(177, 'disable_language', '1', 1),
(178, 'company_state', '', 1),
(179, 'email_header', '<!doctype html>\r\n                            <html>\r\n                            <head>\r\n                              <meta name=\"viewport\" content=\"width=device-width\" />\r\n                              <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\r\n                              <style>\r\n                                body {\r\n                                 background-color: #f6f6f6;\r\n                                 font-family: sans-serif;\r\n                                 -webkit-font-smoothing: antialiased;\r\n                                 font-size: 14px;\r\n                                 line-height: 1.4;\r\n                                 margin: 0;\r\n                                 padding: 0;\r\n                                 -ms-text-size-adjust: 100%;\r\n                                 -webkit-text-size-adjust: 100%;\r\n                               }\r\n                               table {\r\n                                 border-collapse: separate;\r\n                                 mso-table-lspace: 0pt;\r\n                                 mso-table-rspace: 0pt;\r\n                                 width: 100%;\r\n                               }\r\n                               table td {\r\n                                 font-family: sans-serif;\r\n                                 font-size: 14px;\r\n                                 vertical-align: top;\r\n                               }\r\n                                   /* -------------------------------------\r\n                                     BODY & CONTAINER\r\n                                     ------------------------------------- */\r\n                                     .body {\r\n                                       background-color: #f6f6f6;\r\n                                       width: 100%;\r\n                                     }\r\n                                     /* Set a max-width, and make it display as block so it will automatically stretch to that width, but will also shrink down on a phone or something */\r\n\r\n                                     .container {\r\n                                       display: block;\r\n                                       margin: 0 auto !important;\r\n                                       /* makes it centered */\r\n                                       max-width: 680px;\r\n                                       padding: 10px;\r\n                                       width: 680px;\r\n                                     }\r\n                                     /* This should also be a block element, so that it will fill 100% of the .container */\r\n\r\n                                     .content {\r\n                                       box-sizing: border-box;\r\n                                       display: block;\r\n                                       margin: 0 auto;\r\n                                       max-width: 680px;\r\n                                       padding: 10px;\r\n                                     }\r\n                                   /* -------------------------------------\r\n                                     HEADER, FOOTER, MAIN\r\n                                     ------------------------------------- */\r\n\r\n                                     .main {\r\n                                       background: #fff;\r\n                                       border-radius: 3px;\r\n                                       width: 100%;\r\n                                     }\r\n                                     .wrapper {\r\n                                       box-sizing: border-box;\r\n                                       padding: 20px;\r\n                                     }\r\n                                     .footer {\r\n                                       clear: both;\r\n                                       padding-top: 10px;\r\n                                       text-align: center;\r\n                                       width: 100%;\r\n                                     }\r\n                                     .footer td,\r\n                                     .footer p,\r\n                                     .footer span,\r\n                                     .footer a {\r\n                                       color: #999999;\r\n                                       font-size: 12px;\r\n                                       text-align: center;\r\n                                     }\r\n                                     hr {\r\n                                       border: 0;\r\n                                       border-bottom: 1px solid #f6f6f6;\r\n                                       margin: 20px 0;\r\n                                     }\r\n                                   /* -------------------------------------\r\n                                     RESPONSIVE AND MOBILE FRIENDLY STYLES\r\n                                     ------------------------------------- */\r\n\r\n                                     @media only screen and (max-width: 620px) {\r\n                                       table[class=body] .content {\r\n                                         padding: 0 !important;\r\n                                       }\r\n                                       table[class=body] .container {\r\n                                         padding: 0 !important;\r\n                                         width: 100% !important;\r\n                                       }\r\n                                       table[class=body] .main {\r\n                                         border-left-width: 0 !important;\r\n                                         border-radius: 0 !important;\r\n                                         border-right-width: 0 !important;\r\n                                       }\r\n                                     }\r\n                                   </style>\r\n                                 </head>\r\n                                 <body class=\"\">\r\n                                  <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"body\">\r\n                                    <tr>\r\n                                     <td>&nbsp;</td>\r\n                                     <td class=\"container\">\r\n                                      <div class=\"content\">\r\n                                        <!-- START CENTERED WHITE CONTAINER -->\r\n                                        <table class=\"main\">\r\n                                          <!-- START MAIN CONTENT AREA -->\r\n                                          <tr>\r\n                                           <td class=\"wrapper\">\r\n                                            <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                                              <tr>\r\n                                               <td>', 1),
(180, 'show_pdf_signature_invoice', '1', 0),
(181, 'show_pdf_signature_estimate', '1', 0),
(182, 'signature_image', '', 0),
(183, 'email_footer', '</td>\r\n                             </tr>\r\n                           </table>\r\n                         </td>\r\n                       </tr>\r\n                       <!-- END MAIN CONTENT AREA -->\r\n                     </table>\r\n                     <!-- START FOOTER -->\r\n                     <div class=\"footer\">\r\n                      <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                        <tr>\r\n                          <td class=\"content-block\">\r\n                            <span>{companyname}</span>\r\n                          </td>\r\n                        </tr>\r\n                      </table>\r\n                    </div>\r\n                    <!-- END FOOTER -->\r\n                    <!-- END CENTERED WHITE CONTAINER -->\r\n                  </div>\r\n                </td>\r\n                <td>&nbsp;</td>\r\n              </tr>\r\n            </table>\r\n            </body>\r\n            </html>', 1),
(184, 'exclude_proposal_from_client_area_with_draft_status', '1', 1),
(185, 'pusher_app_key', '', 1),
(186, 'pusher_app_secret', '', 1),
(187, 'pusher_app_id', '', 1),
(188, 'pusher_realtime_notifications', '0', 1),
(189, 'pdf_format_statement', 'A4-PORTRAIT', 1),
(190, 'pusher_cluster', '', 1),
(191, 'show_table_export_button', 'to_all', 1),
(192, 'allow_staff_view_proposals_assigned', '1', 1),
(193, 'show_cloudflare_notice', '1', 0),
(194, 'task_modal_class', 'modal-lg', 1),
(195, 'lead_modal_class', 'modal-lg', 1),
(196, 'show_timesheets_overview_all_members_notice_admins', '0', 0),
(197, 'desktop_notifications', '0', 1),
(198, 'hide_notified_reminders_from_calendar', '1', 0),
(199, 'customer_info_format', '{company_name}<br />\r\n{street}<br />\r\n{city} {state}<br />\r\n{country_code} {zip_code}<br />\r\n{vat_number_with_label}', 0),
(200, 'timer_started_change_status_in_progress', '1', 0),
(201, 'default_ticket_reply_status', '3', 1),
(202, 'default_task_status', 'auto', 1),
(203, 'email_queue_skip_with_attachments', '1', 1),
(204, 'email_queue_enabled', '0', 1),
(205, 'last_email_queue_retry', '1623267266', 1),
(206, 'auto_dismiss_desktop_notifications_after', '0', 1),
(207, 'proposal_info_format', '{proposal_to}<br />\r\n{address}<br />\r\n{city} {state}<br />\r\n{country_code} {zip_code}<br />\r\n{phone}<br />\r\n{email}', 0),
(208, 'ticket_replies_order', 'asc', 1),
(209, 'new_recurring_invoice_action', 'generate_and_send', 0),
(210, 'bcc_emails', '', 0),
(211, 'email_templates_language_checks', '', 0),
(212, 'proposal_accept_identity_confirmation', '1', 0),
(213, 'estimate_accept_identity_confirmation', '1', 0),
(214, 'new_task_auto_follower_current_member', '0', 1),
(215, 'task_biillable_checked_on_creation', '1', 1),
(216, 'predefined_clientnote_credit_note', '', 1),
(217, 'predefined_terms_credit_note', '', 1),
(218, 'next_credit_note_number', '1', 1),
(219, 'credit_note_prefix', 'PRE-', 1),
(220, 'credit_note_number_decrement_on_delete', '1', 1),
(221, 'pdf_format_credit_note', 'A4-PORTRAIT', 1),
(222, 'show_pdf_signature_credit_note', '1', 0),
(223, 'show_credit_note_reminders_on_calendar', '1', 1),
(224, 'show_amount_due_on_invoice', '1', 1),
(225, 'show_total_paid_on_invoice', '1', 1),
(226, 'show_credits_applied_on_invoice', '1', 1),
(227, 'staff_members_create_inline_lead_status', '1', 1),
(228, 'staff_members_create_inline_customer_groups', '1', 1),
(229, 'staff_members_create_inline_ticket_services', '1', 1),
(230, 'staff_members_save_tickets_predefined_replies', '1', 1),
(231, 'staff_members_create_inline_contract_types', '1', 1),
(232, 'staff_members_create_inline_expense_categories', '1', 1),
(233, 'show_project_on_credit_note', '1', 1),
(234, 'proposals_auto_operations_hour', '21', 1),
(235, 'estimates_auto_operations_hour', '21', 1),
(236, 'contracts_auto_operations_hour', '21', 1),
(237, 'credit_note_number_format', '1', 1),
(238, 'allow_non_admin_members_to_import_leads', '0', 1),
(239, 'e_sign_legal_text', 'By clicking on \"Sign\", I consent to be legally bound by this electronic representation of my signature.', 1),
(240, 'show_pdf_signature_contract', '1', 1),
(241, 'view_contract_only_logged_in', '0', 1),
(242, 'show_subscriptions_in_customers_area', '1', 1),
(243, 'calendar_only_assigned_tasks', '1', 1),
(244, 'after_subscription_payment_captured', 'send_invoice_and_receipt', 1),
(245, 'mail_engine', 'phpmailer', 1),
(246, 'gdpr_enable_terms_and_conditions', '0', 1),
(247, 'privacy_policy', '', 1),
(248, 'terms_and_conditions', '', 1),
(249, 'gdpr_enable_terms_and_conditions_lead_form', '0', 1),
(250, 'gdpr_enable_terms_and_conditions_ticket_form', '0', 1),
(251, 'gdpr_contact_enable_right_to_be_forgotten', '0', 1),
(252, 'show_gdpr_in_customers_menu', '1', 1),
(253, 'show_gdpr_link_in_footer', '1', 1),
(254, 'enable_gdpr', '0', 1),
(255, 'gdpr_on_forgotten_remove_invoices_credit_notes', '0', 1),
(256, 'gdpr_on_forgotten_remove_estimates', '0', 1),
(257, 'gdpr_enable_consent_for_contacts', '0', 1),
(258, 'gdpr_consent_public_page_top_block', '', 1),
(259, 'gdpr_page_top_information_block', '', 1),
(260, 'gdpr_enable_lead_public_form', '0', 1),
(261, 'gdpr_show_lead_custom_fields_on_public_form', '0', 1),
(262, 'gdpr_lead_attachments_on_public_form', '0', 1),
(263, 'gdpr_enable_consent_for_leads', '0', 1),
(264, 'gdpr_lead_enable_right_to_be_forgotten', '0', 1),
(265, 'allow_staff_view_invoices_assigned', '1', 1),
(266, 'gdpr_data_portability_leads', '0', 1),
(267, 'gdpr_lead_data_portability_allowed', '', 1),
(268, 'gdpr_contact_data_portability_allowed', '', 1),
(269, 'gdpr_data_portability_contacts', '0', 1),
(270, 'allow_staff_view_estimates_assigned', '1', 1),
(271, 'gdpr_after_lead_converted_delete', '0', 1),
(272, 'gdpr_show_terms_and_conditions_in_footer', '0', 1),
(273, 'save_last_order_for_tables', '1', 1),
(274, 'company_logo_dark', '', 1),
(275, 'customers_register_require_confirmation', '0', 1),
(276, 'allow_non_admin_staff_to_delete_ticket_attachments', '0', 1),
(277, 'receive_notification_on_new_ticket_replies', '1', 0),
(278, 'google_client_id', '', 1),
(279, 'enable_google_picker', '1', 1),
(280, 'show_ticket_reminders_on_calendar', '1', 1),
(281, 'ticket_import_reply_only', '0', 1),
(282, 'visible_customer_profile_tabs', 'all', 0),
(283, 'show_project_on_invoice', '1', 1),
(284, 'show_project_on_estimate', '1', 1),
(285, 'staff_members_create_inline_lead_source', '1', 1),
(286, 'lead_unique_validation', '[\"email\"]', 1),
(287, 'last_upgrade_copy_data', '', 1),
(288, 'custom_js_admin_scripts', '', 1),
(289, 'custom_js_customer_scripts', '0', 1),
(290, 'stripe_webhook_id', '', 1),
(291, 'stripe_webhook_signing_secret', '', 1),
(292, 'stripe_ideal_webhook_id', '', 1),
(293, 'stripe_ideal_webhook_signing_secret', '', 1),
(294, 'show_php_version_notice', '1', 0),
(295, 'recaptcha_ignore_ips', '', 1),
(296, 'show_task_reminders_on_calendar', '1', 1),
(297, 'customer_settings', 'true', 1),
(298, 'tasks_reminder_notification_hour', '21', 1),
(299, 'allow_primary_contact_to_manage_other_contacts', '0', 1),
(300, 'items_table_amounts_exclude_currency_symbol', '1', 1),
(301, 'round_off_task_timer_option', '0', 1),
(302, 'round_off_task_timer_time', '5', 1),
(303, 'bitly_access_token', '', 1),
(304, 'enable_support_menu_badges', '0', 1),
(305, 'attach_invoice_to_payment_receipt_email', '0', 1),
(306, 'invoice_due_notice_before', '2', 1),
(307, 'invoice_due_notice_resend_after', '0', 1),
(308, '_leads_settings', 'true', 1),
(309, 'show_estimate_request_in_customers_area', '0', 1),
(310, 'gdpr_enable_terms_and_conditions_estimate_request_form', '0', 1),
(311, 'upgraded_from_version', '', 0),
(312, 'sms_clickatell_api_key', '', 1),
(313, 'sms_clickatell_active', '0', 1),
(314, 'sms_clickatell_initialized', '1', 1),
(315, 'sms_msg91_sender_id', '', 1),
(316, 'sms_msg91_api_type', 'api', 1),
(317, 'sms_msg91_auth_key', '', 1),
(318, 'sms_msg91_dlt_te_id', '', 1),
(319, 'sms_msg91_active', '0', 1),
(320, 'sms_msg91_initialized', '1', 1),
(321, 'sms_twilio_account_sid', '', 1),
(322, 'sms_twilio_auth_token', '', 1),
(323, 'sms_twilio_phone_number', '', 1),
(324, 'sms_twilio_active', '0', 1),
(325, 'sms_twilio_initialized', '1', 1),
(326, 'theme_style', '[{\"id\":\"admin-menu\",\"color\":\"#f1f5f7\"},{\"id\":\"admin-menu-submenu-open\",\"color\":\"#e6e9eb\"},{\"id\":\"admin-menu-links\",\"color\":\"#6a6d73\"},{\"id\":\"user-welcome-text-color\",\"color\":\"#6a6d73\"},{\"id\":\"admin-menu-active-item\",\"color\":\"#e9ebef\"},{\"id\":\"admin-menu-active-item-color\",\"color\":\"#6a6d73\"},{\"id\":\"admin-menu-active-subitem\",\"color\":\"#3b3b3b\"},{\"id\":\"admin-menu-submenu-links\",\"color\":\"#868d99\"},{\"id\":\"top-header\",\"color\":\"#fcfcfc\"},{\"id\":\"top-header-links\",\"color\":\"#606060\"},{\"id\":\"customers-navigation\",\"color\":\"#fcfcfc\"},{\"id\":\"customers-navigation-links\",\"color\":\"#333333\"},{\"id\":\"customers-footer-background\",\"color\":\"#fcfcfc\"},{\"id\":\"customers-footer-text\",\"color\":\"#333333\"},{\"id\":\"btn-info\",\"color\":\"#008ece\"},{\"id\":\"btn-success\",\"color\":\"#34a853\"},{\"id\":\"btn-danger\",\"color\":\"#ea4335\"},{\"id\":\"tabs-links\",\"color\":\"#777777\"},{\"id\":\"tabs-links-active-hover\",\"color\":\"#008ece\"},{\"id\":\"links-color\",\"color\":\"#008ece\"},{\"id\":\"links-hover-focus\",\"color\":\"#008ece\"},{\"id\":\"text-danger\",\"color\":\"#ea4335\"},{\"id\":\"text-info\",\"color\":\"#008ece\"},{\"id\":\"text-success\",\"color\":\"#34a853\"}]', 1),
(327, 'theme_style_custom_admin_area', '', 1),
(328, 'theme_style_custom_clients_area', '', 1),
(329, 'theme_style_custom_clients_and_admin_area', '', 1),
(330, 'paymentmethod_authorize_acceptjs_active', '0', 1),
(331, 'paymentmethod_authorize_acceptjs_label', 'Authorize.net Accept.js', 1),
(332, 'paymentmethod_authorize_acceptjs_public_key', '', 0),
(333, 'paymentmethod_authorize_acceptjs_api_login_id', '', 0),
(334, 'paymentmethod_authorize_acceptjs_api_transaction_key', '', 0),
(335, 'paymentmethod_authorize_acceptjs_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(336, 'paymentmethod_authorize_acceptjs_currencies', 'USD', 0),
(337, 'paymentmethod_authorize_acceptjs_test_mode_enabled', '0', 0),
(338, 'paymentmethod_authorize_acceptjs_default_selected', '1', 1),
(339, 'paymentmethod_authorize_acceptjs_initialized', '1', 1),
(340, 'paymentmethod_instamojo_active', '0', 1),
(341, 'paymentmethod_instamojo_label', 'Instamojo', 1),
(342, 'paymentmethod_instamojo_api_key', '', 0),
(343, 'paymentmethod_instamojo_auth_token', '', 0),
(344, 'paymentmethod_instamojo_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(345, 'paymentmethod_instamojo_currencies', 'INR', 0),
(346, 'paymentmethod_instamojo_test_mode_enabled', '1', 0),
(347, 'paymentmethod_instamojo_default_selected', '1', 1),
(348, 'paymentmethod_instamojo_initialized', '1', 1),
(349, 'paymentmethod_mollie_active', '0', 1),
(350, 'paymentmethod_mollie_label', 'Mollie', 1),
(351, 'paymentmethod_mollie_api_key', '', 0),
(352, 'paymentmethod_mollie_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(353, 'paymentmethod_mollie_currencies', 'ARS', 0),
(354, 'paymentmethod_mollie_test_mode_enabled', '1', 0),
(355, 'paymentmethod_mollie_default_selected', '1', 1),
(356, 'paymentmethod_mollie_initialized', '1', 1),
(357, 'paymentmethod_paypal_braintree_active', '0', 1),
(358, 'paymentmethod_paypal_braintree_label', 'Braintree', 1),
(359, 'paymentmethod_paypal_braintree_merchant_id', '', 0),
(360, 'paymentmethod_paypal_braintree_api_public_key', '', 0),
(361, 'paymentmethod_paypal_braintree_api_private_key', '', 0),
(362, 'paymentmethod_paypal_braintree_currencies', 'ARS', 0),
(363, 'paymentmethod_paypal_braintree_paypal_enabled', '1', 0),
(364, 'paymentmethod_paypal_braintree_test_mode_enabled', '1', 0),
(365, 'paymentmethod_paypal_braintree_default_selected', '1', 1),
(366, 'paymentmethod_paypal_braintree_initialized', '1', 1),
(367, 'paymentmethod_paypal_checkout_active', '0', 1),
(368, 'paymentmethod_paypal_checkout_label', 'Paypal Smart Checkout', 1),
(369, 'paymentmethod_paypal_checkout_client_id', '', 0),
(370, 'paymentmethod_paypal_checkout_secret', '', 0),
(371, 'paymentmethod_paypal_checkout_payment_description', 'Payment for Invoice {invoice_number}', 0),
(372, 'paymentmethod_paypal_checkout_currencies', 'ARS', 0),
(373, 'paymentmethod_paypal_checkout_test_mode_enabled', '1', 0),
(374, 'paymentmethod_paypal_checkout_default_selected', '1', 1),
(375, 'paymentmethod_paypal_checkout_initialized', '1', 1),
(376, 'paymentmethod_paypal_active', '0', 1),
(377, 'paymentmethod_paypal_label', 'Paypal', 1),
(378, 'paymentmethod_paypal_username', '', 0),
(379, 'paymentmethod_paypal_password', '', 0),
(380, 'paymentmethod_paypal_signature', '', 0),
(381, 'paymentmethod_paypal_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(382, 'paymentmethod_paypal_currencies', 'ARS', 0),
(383, 'paymentmethod_paypal_test_mode_enabled', '1', 0),
(384, 'paymentmethod_paypal_default_selected', '1', 1),
(385, 'paymentmethod_paypal_initialized', '1', 1),
(386, 'paymentmethod_payu_money_active', '0', 1),
(387, 'paymentmethod_payu_money_label', 'PayU Money', 1),
(388, 'paymentmethod_payu_money_key', '', 0),
(389, 'paymentmethod_payu_money_salt', '', 0),
(390, 'paymentmethod_payu_money_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(391, 'paymentmethod_payu_money_currencies', 'ARS', 0),
(392, 'paymentmethod_payu_money_test_mode_enabled', '1', 0),
(393, 'paymentmethod_payu_money_default_selected', '1', 1),
(394, 'paymentmethod_payu_money_initialized', '1', 1),
(395, 'paymentmethod_stripe_active', '0', 1),
(396, 'paymentmethod_stripe_label', 'Stripe Checkout', 1),
(397, 'paymentmethod_stripe_api_secret_key', '', 0),
(398, 'paymentmethod_stripe_api_publishable_key', '', 0),
(399, 'paymentmethod_stripe_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(400, 'paymentmethod_stripe_currencies', 'ARS', 0),
(401, 'paymentmethod_stripe_allow_primary_contact_to_update_credit_card', '1', 0),
(402, 'paymentmethod_stripe_default_selected', '1', 1),
(403, 'paymentmethod_stripe_initialized', '1', 1),
(404, 'paymentmethod_stripe_ideal_active', '0', 1),
(405, 'paymentmethod_stripe_ideal_label', 'Stripe iDEAL', 1),
(406, 'paymentmethod_stripe_ideal_api_secret_key', '', 0),
(407, 'paymentmethod_stripe_ideal_api_publishable_key', '', 0),
(408, 'paymentmethod_stripe_ideal_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(409, 'paymentmethod_stripe_ideal_statement_descriptor', 'Payment for Invoice {invoice_number}', 0),
(410, 'paymentmethod_stripe_ideal_currencies', 'EUR', 0),
(411, 'paymentmethod_stripe_ideal_default_selected', '1', 1),
(412, 'paymentmethod_stripe_ideal_initialized', '1', 1),
(413, 'paymentmethod_two_checkout_active', '0', 1),
(414, 'paymentmethod_two_checkout_label', '2Checkout', 1),
(415, 'paymentmethod_two_checkout_merchant_code', '', 0),
(416, 'paymentmethod_two_checkout_secret_key', '', 0),
(417, 'paymentmethod_two_checkout_description', 'Payment for Invoice {invoice_number}', 0),
(418, 'paymentmethod_two_checkout_currencies', 'ARS', 0),
(419, 'paymentmethod_two_checkout_test_mode_enabled', '1', 0),
(420, 'paymentmethod_two_checkout_default_selected', '1', 1),
(421, 'paymentmethod_two_checkout_initialized', '1', 1),
(422, 'aside_menu_active', '{\"dashboard\":{\"id\":\"dashboard\",\"icon\":\"\",\"disabled\":\"false\",\"position\":1},\"customers\":{\"id\":\"customers\",\"icon\":\"fa fa-address-book\",\"disabled\":\"false\",\"position\":\"10\"},\"appointly\":{\"id\":\"appointly\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"15\",\"children\":{\"appointly_sidemenu appointly-user-dashboard\":{\"disabled\":\"false\",\"id\":\"appointly_sidemenu appointly-user-dashboard\",\"position\":\"5\",\"icon\":false},\"appointly_sidemenu appointly-callbacks\":{\"disabled\":\"true\",\"id\":\"appointly_sidemenu appointly-callbacks\",\"position\":\"10\",\"icon\":false},\"appointly_sidemenu appointly-user-settings\":{\"disabled\":\"false\",\"id\":\"appointly_sidemenu appointly-user-settings\",\"position\":\"15\",\"icon\":false}}},\"tasks\":{\"id\":\"tasks\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"20\"},\"projects\":{\"id\":\"projects\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"25\"},\"sales\":{\"id\":\"sales\",\"icon\":\"fa fa-shopping-cart\",\"disabled\":\"false\",\"position\":\"30\",\"children\":{\"proposals\":{\"disabled\":\"false\",\"id\":\"proposals\",\"icon\":\"\",\"position\":\"5\"},\"estimates\":{\"disabled\":\"false\",\"id\":\"estimates\",\"icon\":\"\",\"position\":\"10\"},\"invoices\":{\"disabled\":\"false\",\"id\":\"invoices\",\"icon\":\"\",\"position\":\"15\"},\"payments\":{\"disabled\":\"false\",\"id\":\"payments\",\"icon\":\"\",\"position\":\"20\"},\"credit_notes\":{\"disabled\":\"false\",\"id\":\"credit_notes\",\"icon\":\"\",\"position\":\"25\"},\"items\":{\"disabled\":\"false\",\"id\":\"items\",\"icon\":\"\",\"position\":\"30\"},\"subscriptions\":{\"disabled\":\"true\",\"id\":\"subscriptions\",\"icon\":false,\"position\":\"35\"},\"estimate_request\":{\"disabled\":\"true\",\"id\":\"estimate_request\",\"icon\":false,\"position\":\"40\"}}},\"expenses\":{\"id\":\"expenses\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"35\"},\"contracts\":{\"id\":\"contracts\",\"icon\":\"fa fa-truck\",\"disabled\":\"false\",\"position\":\"40\"},\"support\":{\"id\":\"support\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"45\"},\"leads\":{\"id\":\"leads\",\"icon\":\"fa fa-gears \",\"disabled\":\"false\",\"position\":\"50\"},\"knowledge-base\":{\"id\":\"knowledge-base\",\"icon\":\"fa fa-book\",\"disabled\":\"false\",\"position\":\"55\"},\"utilities\":{\"id\":\"utilities\",\"icon\":\"fa fa-briefcase\",\"disabled\":\"false\",\"position\":\"60\",\"children\":{\"media\":{\"disabled\":\"false\",\"id\":\"media\",\"icon\":\"\",\"position\":\"5\"},\"bulk-pdf-exporter\":{\"disabled\":\"false\",\"id\":\"bulk-pdf-exporter\",\"icon\":\"\",\"position\":\"10\"},\"calendar\":{\"disabled\":\"false\",\"id\":\"calendar\",\"icon\":\"\",\"position\":\"15\"},\"announcements\":{\"disabled\":\"false\",\"id\":\"announcements\",\"icon\":\"\",\"position\":\"20\"},\"activity-log\":{\"disabled\":\"false\",\"id\":\"activity-log\",\"icon\":\"\",\"position\":\"25\"},\"ticket-pipe-log\":{\"disabled\":\"false\",\"id\":\"ticket-pipe-log\",\"icon\":\"\",\"position\":\"30\"}}},\"reports\":{\"id\":\"reports\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"65\",\"children\":{\"sales-reports\":{\"disabled\":\"false\",\"id\":\"sales-reports\",\"icon\":\"\",\"position\":\"5\"},\"expenses-reports\":{\"disabled\":\"false\",\"id\":\"expenses-reports\",\"icon\":\"\",\"position\":\"10\"},\"expenses-vs-income-reports\":{\"disabled\":\"false\",\"id\":\"expenses-vs-income-reports\",\"icon\":\"\",\"position\":\"15\"},\"leads-reports\":{\"disabled\":\"false\",\"id\":\"leads-reports\",\"icon\":\"\",\"position\":\"20\"},\"timesheets-reports\":{\"disabled\":\"false\",\"id\":\"timesheets-reports\",\"icon\":\"\",\"position\":\"25\"},\"knowledge-base-reports\":{\"disabled\":\"false\",\"id\":\"knowledge-base-reports\",\"icon\":\"\",\"position\":\"30\"}}}}', 1),
(423, 'setup_menu_active', '{\"staff\":{\"id\":\"staff\",\"icon\":\"\",\"disabled\":\"true\",\"position\":\"5\"},\"customers\":{\"id\":\"customers\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"10\",\"children\":{\"customer-groups\":{\"disabled\":\"false\",\"id\":\"customer-groups\",\"icon\":\"\",\"position\":\"5\"}}},\"support\":{\"id\":\"support\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"15\",\"children\":{\"departments\":{\"disabled\":\"false\",\"id\":\"departments\",\"icon\":\"\",\"position\":\"5\"},\"tickets-predefined-replies\":{\"disabled\":\"false\",\"id\":\"tickets-predefined-replies\",\"icon\":\"\",\"position\":\"10\"},\"tickets-priorities\":{\"disabled\":\"false\",\"id\":\"tickets-priorities\",\"icon\":\"\",\"position\":\"15\"},\"tickets-statuses\":{\"disabled\":\"false\",\"id\":\"tickets-statuses\",\"icon\":\"\",\"position\":\"20\"},\"tickets-services\":{\"disabled\":\"false\",\"id\":\"tickets-services\",\"icon\":\"\",\"position\":\"25\"},\"tickets-spam-filters\":{\"disabled\":\"true\",\"id\":\"tickets-spam-filters\",\"icon\":\"\",\"position\":\"30\"}}},\"leads\":{\"id\":\"leads\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"20\",\"children\":{\"leads-sources\":{\"disabled\":\"false\",\"id\":\"leads-sources\",\"icon\":\"\",\"position\":\"5\"},\"leads-statuses\":{\"disabled\":\"false\",\"id\":\"leads-statuses\",\"icon\":\"\",\"position\":\"10\"},\"leads-email-integration\":{\"disabled\":\"true\",\"id\":\"leads-email-integration\",\"icon\":\"\",\"position\":\"15\"},\"web-to-lead\":{\"disabled\":\"true\",\"id\":\"web-to-lead\",\"icon\":\"\",\"position\":\"20\"}}},\"finance\":{\"id\":\"finance\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"25\",\"children\":{\"taxes\":{\"disabled\":\"false\",\"id\":\"taxes\",\"icon\":\"\",\"position\":\"5\"},\"currencies\":{\"disabled\":\"false\",\"id\":\"currencies\",\"icon\":\"\",\"position\":\"10\"},\"payment-modes\":{\"disabled\":\"false\",\"id\":\"payment-modes\",\"icon\":\"\",\"position\":\"15\"},\"expenses-categories\":{\"disabled\":\"false\",\"id\":\"expenses-categories\",\"icon\":\"\",\"position\":\"20\"}}},\"contracts\":{\"id\":\"contracts\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"30\",\"children\":{\"contracts-types\":{\"disabled\":\"false\",\"id\":\"contracts-types\",\"icon\":\"\",\"position\":\"5\"}}},\"estimate_request\":{\"id\":\"estimate_request\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"35\",\"children\":{\"estimate-request-forms\":{\"disabled\":\"true\",\"id\":\"estimate-request-forms\",\"icon\":\"\",\"position\":\"5\"},\"estimate-request-statuses\":{\"disabled\":\"true\",\"id\":\"estimate-request-statuses\",\"icon\":\"\",\"position\":\"10\"}}},\"modules\":{\"id\":\"modules\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"40\"},\"email-templates\":{\"id\":\"email-templates\",\"icon\":\"\",\"disabled\":\"true\",\"position\":\"45\"},\"custom-fields\":{\"id\":\"custom-fields\",\"icon\":\"\",\"disabled\":\"true\",\"position\":\"50\"},\"menu-options\":{\"id\":\"menu-options\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"55\",\"children\":{\"main-menu-options\":{\"disabled\":\"false\",\"id\":\"main-menu-options\",\"icon\":\"\",\"position\":\"5\"},\"setup-menu-options\":{\"disabled\":\"false\",\"id\":\"setup-menu-options\",\"icon\":\"\",\"position\":\"10\"}}},\"gdpr\":{\"id\":\"gdpr\",\"icon\":\"\",\"disabled\":\"true\",\"position\":\"60\"},\"roles\":{\"id\":\"roles\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"65\"},\"theme-style\":{\"id\":\"theme-style\",\"icon\":\"\",\"disabled\":\"true\",\"position\":\"70\"},\"settings\":{\"id\":\"settings\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"75\"}}', 1),
(424, 'survey_send_emails_per_cron_run', '100', 1),
(425, 'last_survey_send_cron', '', 1),
(426, 'support_contact', 'enable', 1),
(427, 'support_contact_viber', '', 1),
(428, 'support_contact_whatsapp', '+5492804603916', 1),
(429, 'support_contact_messenger_username', '', 1),
(430, 'support_contact_email_address', 'erpsur.srl@gmail.com', 1),
(431, 'aio_support_backend', '0', 1),
(432, 'aio_support_frontend', '0', 1),
(433, 'appointly_responsible_person', '1', 1),
(434, 'callbacks_responsible_person', '1', 1),
(435, 'appointly_show_clients_schedule_button', '0', 1),
(436, 'appointly_tab_on_clients_page', '0', 1),
(437, 'appointly_also_delete_in_google_calendar', '1', 1),
(438, 'appointments_show_past_times', '1', 1),
(439, 'appointments_disable_weekends', '1', 1),
(440, 'appointly_client_meeting_approved_default', '0', 1),
(441, 'appointly_google_client_secret', '', 1),
(442, 'appointly_available_hours', '[\"08:00\",\"08:30\",\"09:00\",\"09:30\",\"10:00\",\"10:30\",\"11:00\",\"11:30\",\"12:00\",\"12:30\",\"13:00\",\"13:30\",\"14:00\",\"14:30\",\"15:00\",\"15:30\",\"16:00\",\"16:30\",\"17:00\"]', 1),
(443, 'appointly_default_feedbacks', '[\"0\",\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"]', 1),
(444, 'appointly_busy_times_enabled', '1', 1),
(445, 'callbacks_mode_enabled', '0', 1),
(446, 'appointly_appointments_recaptcha', '0', 1),
(447, 'custom_email_and_sms_notifications', '1', 1),
(448, 'aside_custom_email_and_sms_notifications_active', '[]', 1),
(449, 'setup_custom_email_and_sms_notifications_active', '[]', 1),
(450, 'old_email_header', '<!doctype html>\r\n                            <html>\r\n                            <head>\r\n                              <meta name=\"viewport\" content=\"width=device-width\" />\r\n                              <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\r\n                              <style>\r\n                                body {\r\n                                 background-color: #f6f6f6;\r\n                                 font-family: sans-serif;\r\n                                 -webkit-font-smoothing: antialiased;\r\n                                 font-size: 14px;\r\n                                 line-height: 1.4;\r\n                                 margin: 0;\r\n                                 padding: 0;\r\n                                 -ms-text-size-adjust: 100%;\r\n                                 -webkit-text-size-adjust: 100%;\r\n                               }\r\n                               table {\r\n                                 border-collapse: separate;\r\n                                 mso-table-lspace: 0pt;\r\n                                 mso-table-rspace: 0pt;\r\n                                 width: 100%;\r\n                               }\r\n                               table td {\r\n                                 font-family: sans-serif;\r\n                                 font-size: 14px;\r\n                                 vertical-align: top;\r\n                               }\r\n                                   /* -------------------------------------\r\n                                     BODY & CONTAINER\r\n                                     ------------------------------------- */\r\n                                     .body {\r\n                                       background-color: #f6f6f6;\r\n                                       width: 100%;\r\n                                     }\r\n                                     /* Set a max-width, and make it display as block so it will automatically stretch to that width, but will also shrink down on a phone or something */\r\n\r\n                                     .container {\r\n                                       display: block;\r\n                                       margin: 0 auto !important;\r\n                                       /* makes it centered */\r\n                                       max-width: 680px;\r\n                                       padding: 10px;\r\n                                       width: 680px;\r\n                                     }\r\n                                     /* This should also be a block element, so that it will fill 100% of the .container */\r\n\r\n                                     .content {\r\n                                       box-sizing: border-box;\r\n                                       display: block;\r\n                                       margin: 0 auto;\r\n                                       max-width: 680px;\r\n                                       padding: 10px;\r\n                                     }\r\n                                   /* -------------------------------------\r\n                                     HEADER, FOOTER, MAIN\r\n                                     ------------------------------------- */\r\n\r\n                                     .main {\r\n                                       background: #fff;\r\n                                       border-radius: 3px;\r\n                                       width: 100%;\r\n                                     }\r\n                                     .wrapper {\r\n                                       box-sizing: border-box;\r\n                                       padding: 20px;\r\n                                     }\r\n                                     .footer {\r\n                                       clear: both;\r\n                                       padding-top: 10px;\r\n                                       text-align: center;\r\n                                       width: 100%;\r\n                                     }\r\n                                     .footer td,\r\n                                     .footer p,\r\n                                     .footer span,\r\n                                     .footer a {\r\n                                       color: #999999;\r\n                                       font-size: 12px;\r\n                                       text-align: center;\r\n                                     }\r\n                                     hr {\r\n                                       border: 0;\r\n                                       border-bottom: 1px solid #f6f6f6;\r\n                                       margin: 20px 0;\r\n                                     }\r\n                                   /* -------------------------------------\r\n                                     RESPONSIVE AND MOBILE FRIENDLY STYLES\r\n                                     ------------------------------------- */\r\n\r\n                                     @media only screen and (max-width: 620px) {\r\n                                       table[class=body] .content {\r\n                                         padding: 0 !important;\r\n                                       }\r\n                                       table[class=body] .container {\r\n                                         padding: 0 !important;\r\n                                         width: 100% !important;\r\n                                       }\r\n                                       table[class=body] .main {\r\n                                         border-left-width: 0 !important;\r\n                                         border-radius: 0 !important;\r\n                                         border-right-width: 0 !important;\r\n                                       }\r\n                                     }\r\n                                   </style>\r\n                                 </head>\r\n                                 <body class=\"\">\r\n                                  <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"body\">\r\n                                    <tr>\r\n                                     <td>&nbsp;</td>\r\n                                     <td class=\"container\">\r\n                                      <div class=\"content\">\r\n                                        <!-- START CENTERED WHITE CONTAINER -->\r\n                                        <table class=\"main\">\r\n                                          <!-- START MAIN CONTENT AREA -->\r\n                                          <tr>\r\n                                           <td class=\"wrapper\">\r\n                                            <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                                              <tr>\r\n                                               <td>', 1),
(451, 'old_email_footer', '</td>\r\n                             </tr>\r\n                           </table>\r\n                         </td>\r\n                       </tr>\r\n                       <!-- END MAIN CONTENT AREA -->\r\n                     </table>\r\n                     <!-- START FOOTER -->\r\n                     <div class=\"footer\">\r\n                      <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                        <tr>\r\n                          <td class=\"content-block\">\r\n                            <span>{companyname}</span>\r\n                          </td>\r\n                        </tr>\r\n                      </table>\r\n                    </div>\r\n                    <!-- END FOOTER -->\r\n                    <!-- END CENTERED WHITE CONTAINER -->\r\n                  </div>\r\n                </td>\r\n                <td>&nbsp;</td>\r\n              </tr>\r\n            </table>\r\n            </body>\r\n            </html>', 1),
(452, 'perfex_email_builder_default_media_folder', 'perfex_email_builder', 1),
(453, 'current_perfex_version', '284', 1),
(454, 'excluded_uri_for_facebook_leads_integration_once', '1', 1),
(455, 'maximum_allowed_okrs_attachments', '20', 1),
(456, 'staff_sync_orders', '', 1),
(457, 'minute_sync_orders', '', 1),
(458, 'time_cron_woo', '', 1),
(459, 'minute_sync', '', 1),
(460, 'sync_omni_sales_products', '1', 1),
(461, 'sync_omni_sales_orders', '1', 1),
(462, 'sync_omni_sales_inventorys', '1', 1),
(463, 'sync_omni_sales_description', '0', 1),
(464, 'sync_omni_sales_images', '0', 1),
(465, 'price_crm_woo', '0', 1),
(466, 'product_info_enable_disable', '0', 1),
(467, 'product_info_image_enable_disable', '0', 1),
(468, 'minute_sync_product_info_time1', '', 1),
(469, 'minute_sync_inventory_info_time2', '', 1),
(470, 'minute_sync_price_time3', '', 1),
(471, 'minute_sync_decriptions_time4', '', 1),
(472, 'minute_sync_images_time5', '', 1),
(473, 'minute_sync_product_info_time7', '', 1),
(474, 'minute_sync_product_info_images_time8', '', 1),
(475, 'records_time1', '04:06:34', 1),
(476, 'records_time2', '04:06:34', 1),
(477, 'records_time3', '04:06:34', 1),
(478, 'records_time4', '04:06:34', 1),
(479, 'records_time5', '04:06:34', 1),
(480, 'records_time6', '04:06:34', 1),
(481, 'records_time7', '04:06:34', 1),
(482, 'records_time8', '04:06:34', 1),
(483, 'whatsapp_chat', 'enable', 1),
(484, 'whatsapp_chat_admin_area', '+5492804603916', 1),
(485, 'whatsapp_chat_clients_area', '', 1),
(486, 'whatsapp_chat_clients_and_admin_area', '', 1),
(487, 'sms_trigger_invoice_overdue_notice', '', 0),
(488, 'sms_trigger_invoice_due_notice', '', 0),
(489, 'sms_trigger_invoice_payment_recorded', '', 0),
(490, 'sms_trigger_estimate_expiration_reminder', '', 0),
(491, 'sms_trigger_proposal_expiration_reminder', '', 0),
(492, 'sms_trigger_proposal_new_comment_to_customer', '', 0),
(493, 'sms_trigger_proposal_new_comment_to_staff', '', 0),
(494, 'sms_trigger_contract_new_comment_to_customer', '', 0),
(495, 'sms_trigger_contract_new_comment_to_staff', '', 0),
(496, 'sms_trigger_contract_expiration_reminder', '', 0),
(497, 'sms_trigger_staff_reminder', '', 0),
(498, 'sms_trigger_appointly_appointment_approved_send_to_client', '', 0),
(499, 'sms_trigger_appointly_appointment_cancelled_to_client', '', 0),
(500, 'sms_trigger_appointly_appointment_reminder_to_client', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblpayment_modes`
--

CREATE TABLE `tblpayment_modes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text,
  `show_on_pdf` int(11) NOT NULL DEFAULT '0',
  `invoices_only` int(11) NOT NULL DEFAULT '0',
  `expenses_only` int(11) NOT NULL DEFAULT '0',
  `selected_by_default` int(11) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblpayment_modes`
--

INSERT INTO `tblpayment_modes` (`id`, `name`, `description`, `show_on_pdf`, `invoices_only`, `expenses_only`, `selected_by_default`, `active`) VALUES
(1, 'Bank', NULL, 0, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpayroll_table`
--

CREATE TABLE `tblpayroll_table` (
  `id` int(11) UNSIGNED NOT NULL,
  `payroll_month` date NOT NULL,
  `payroll_type` int(11) UNSIGNED DEFAULT NULL,
  `template_data` longtext,
  `status` int(11) UNSIGNED DEFAULT '0' COMMENT '1:đã chốt 0:chưa chốt'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblpayroll_type`
--

CREATE TABLE `tblpayroll_type` (
  `id` int(11) UNSIGNED NOT NULL,
  `payroll_type_name` varchar(100) NOT NULL,
  `department_id` longtext,
  `role_id` longtext,
  `position_id` longtext,
  `salary_form_id` int(11) UNSIGNED DEFAULT NULL COMMENT '1:Chính 2:Phụ cấp',
  `manager_id` int(11) UNSIGNED DEFAULT NULL,
  `follower_id` int(11) UNSIGNED DEFAULT NULL,
  `template` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblpinned_projects`
--

CREATE TABLE `tblpinned_projects` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblprojectdiscussioncomments`
--

CREATE TABLE `tblprojectdiscussioncomments` (
  `id` int(11) NOT NULL,
  `discussion_id` int(11) NOT NULL,
  `discussion_type` varchar(10) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `content` text NOT NULL,
  `staff_id` int(11) NOT NULL,
  `contact_id` int(11) DEFAULT '0',
  `fullname` varchar(191) DEFAULT NULL,
  `file_name` varchar(191) DEFAULT NULL,
  `file_mime_type` varchar(70) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblprojectdiscussions`
--

CREATE TABLE `tblprojectdiscussions` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `show_to_customer` tinyint(1) NOT NULL DEFAULT '0',
  `datecreated` datetime NOT NULL,
  `last_activity` datetime DEFAULT NULL,
  `staff_id` int(11) NOT NULL DEFAULT '0',
  `contact_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblprojects`
--

CREATE TABLE `tblprojects` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text,
  `status` int(11) NOT NULL DEFAULT '0',
  `clientid` int(11) NOT NULL,
  `billing_type` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `deadline` date DEFAULT NULL,
  `project_created` date NOT NULL,
  `date_finished` datetime DEFAULT NULL,
  `progress` int(11) DEFAULT '0',
  `progress_from_tasks` int(11) NOT NULL DEFAULT '1',
  `project_cost` decimal(15,2) DEFAULT NULL,
  `project_rate_per_hour` decimal(15,2) DEFAULT NULL,
  `estimated_hours` decimal(15,2) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `contact_notification` int(11) DEFAULT '1',
  `notify_contacts` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblprojects`
--

INSERT INTO `tblprojects` (`id`, `name`, `description`, `status`, `clientid`, `billing_type`, `start_date`, `deadline`, `project_created`, `date_finished`, `progress`, `progress_from_tasks`, `project_cost`, `project_rate_per_hour`, `estimated_hours`, `addedfrom`, `contact_notification`, `notify_contacts`) VALUES
(1, '01', '', 3, 1, 1, '2021-06-06', NULL, '2021-06-06', NULL, 0, 1, NULL, '0.00', NULL, 1, 1, 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_activity`
--

CREATE TABLE `tblproject_activity` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL DEFAULT '0',
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `fullname` varchar(100) DEFAULT NULL,
  `visible_to_customer` int(11) NOT NULL DEFAULT '0',
  `description_key` varchar(191) NOT NULL COMMENT 'Language file key',
  `additional_data` text,
  `dateadded` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblproject_activity`
--

INSERT INTO `tblproject_activity` (`id`, `project_id`, `staff_id`, `contact_id`, `fullname`, `visible_to_customer`, `description_key`, `additional_data`, `dateadded`) VALUES
(1, 1, 1, 0, 'Admin ERPSUR', 1, 'project_activity_added_team_member', 'Admin ERPSUR', '2021-06-06 02:19:07'),
(2, 1, 1, 0, 'Admin ERPSUR', 1, 'project_activity_created', '', '2021-06-06 02:19:07'),
(3, 1, 1, 0, 'Admin ERPSUR', 1, 'project_activity_created_milestone', 'hito', '2021-06-06 04:02:33'),
(4, 1, 1, 0, 'Admin ERPSUR', 1, 'project_status_updated', '<b><lang>project_status_3</lang></b>', '2021-06-08 02:25:33');

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_files`
--

CREATE TABLE `tblproject_files` (
  `id` int(11) NOT NULL,
  `file_name` varchar(191) NOT NULL,
  `subject` varchar(191) DEFAULT NULL,
  `description` text,
  `filetype` varchar(50) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `last_activity` datetime DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `visible_to_customer` tinyint(1) DEFAULT '0',
  `staffid` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `external` varchar(40) DEFAULT NULL,
  `external_link` text,
  `thumbnail_link` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_members`
--

CREATE TABLE `tblproject_members` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblproject_members`
--

INSERT INTO `tblproject_members` (`id`, `project_id`, `staff_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_notes`
--

CREATE TABLE `tblproject_notes` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_settings`
--

CREATE TABLE `tblproject_settings` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblproject_settings`
--

INSERT INTO `tblproject_settings` (`id`, `project_id`, `name`, `value`) VALUES
(1, 1, 'available_features', 'a:16:{s:16:\"project_overview\";i:1;s:13:\"project_tasks\";i:1;s:18:\"project_timesheets\";i:1;s:18:\"project_milestones\";i:1;s:13:\"project_files\";i:1;s:19:\"project_discussions\";i:1;s:13:\"project_gantt\";i:1;s:15:\"project_tickets\";i:1;s:17:\"project_contracts\";i:1;s:16:\"project_invoices\";i:1;s:17:\"project_estimates\";i:1;s:16:\"project_expenses\";i:1;s:20:\"project_credit_notes\";i:1;s:21:\"project_subscriptions\";i:1;s:13:\"project_notes\";i:1;s:16:\"project_activity\";i:1;}'),
(2, 1, 'view_tasks', '1'),
(3, 1, 'create_tasks', '1'),
(4, 1, 'edit_tasks', '1'),
(5, 1, 'comment_on_tasks', '1'),
(6, 1, 'view_task_comments', '1'),
(7, 1, 'view_task_attachments', '1'),
(8, 1, 'view_task_checklist_items', '1'),
(9, 1, 'upload_on_tasks', '1'),
(10, 1, 'view_task_total_logged_time', '1'),
(11, 1, 'view_finance_overview', '1'),
(12, 1, 'upload_files', '1'),
(13, 1, 'open_discussions', '1'),
(14, 1, 'view_milestones', '1'),
(15, 1, 'view_gantt', '1'),
(16, 1, 'view_timesheets', '1'),
(17, 1, 'view_activity_log', '1'),
(18, 1, 'view_team_members', '1'),
(19, 1, 'hide_tasks_on_main_tasks_table', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tblproposals`
--

CREATE TABLE `tblproposals` (
  `id` int(11) NOT NULL,
  `subject` varchar(191) DEFAULT NULL,
  `content` longtext,
  `addedfrom` int(11) NOT NULL,
  `datecreated` datetime NOT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL DEFAULT '0.00',
  `adjustment` decimal(15,2) DEFAULT NULL,
  `discount_percent` decimal(15,2) NOT NULL,
  `discount_total` decimal(15,2) NOT NULL,
  `discount_type` varchar(30) DEFAULT NULL,
  `show_quantity_as` int(11) NOT NULL DEFAULT '1',
  `currency` int(11) NOT NULL,
  `open_till` date DEFAULT NULL,
  `date` date NOT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `rel_type` varchar(40) DEFAULT NULL,
  `assigned` int(11) DEFAULT NULL,
  `hash` varchar(32) NOT NULL,
  `proposal_to` varchar(191) DEFAULT NULL,
  `country` int(11) NOT NULL DEFAULT '0',
  `zip` varchar(50) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `allow_comments` tinyint(1) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL,
  `estimate_id` int(11) DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `date_converted` datetime DEFAULT NULL,
  `pipeline_order` int(11) NOT NULL DEFAULT '0',
  `is_expiry_notified` int(11) NOT NULL DEFAULT '0',
  `acceptance_firstname` varchar(50) DEFAULT NULL,
  `acceptance_lastname` varchar(50) DEFAULT NULL,
  `acceptance_email` varchar(100) DEFAULT NULL,
  `acceptance_date` datetime DEFAULT NULL,
  `acceptance_ip` varchar(40) DEFAULT NULL,
  `signature` varchar(40) DEFAULT NULL,
  `short_link` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblproposal_comments`
--

CREATE TABLE `tblproposal_comments` (
  `id` int(11) NOT NULL,
  `content` mediumtext,
  `proposalid` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblprovince_city`
--

CREATE TABLE `tblprovince_city` (
  `id` int(11) NOT NULL,
  `province_code` varchar(45) NOT NULL,
  `province_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblpurchase_option`
--

CREATE TABLE `tblpurchase_option` (
  `option_id` int(11) UNSIGNED NOT NULL,
  `option_name` varchar(200) NOT NULL,
  `option_val` longtext,
  `auto` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblpurchase_option`
--

INSERT INTO `tblpurchase_option` (`option_id`, `option_name`, `option_val`, `auto`) VALUES
(1, 'purchase_order_setting', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_approval_details`
--

CREATE TABLE `tblpur_approval_details` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(45) NOT NULL,
  `staffid` varchar(45) DEFAULT NULL,
  `approve` varchar(45) DEFAULT NULL,
  `note` text,
  `date` datetime DEFAULT NULL,
  `approve_action` varchar(255) DEFAULT NULL,
  `reject_action` varchar(255) DEFAULT NULL,
  `approve_value` varchar(255) DEFAULT NULL,
  `reject_value` varchar(255) DEFAULT NULL,
  `staff_approve` int(11) DEFAULT NULL,
  `action` varchar(45) DEFAULT NULL,
  `sender` int(11) DEFAULT NULL,
  `date_send` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_approval_setting`
--

CREATE TABLE `tblpur_approval_setting` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `related` varchar(255) NOT NULL,
  `setting` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_contacts`
--

CREATE TABLE `tblpur_contacts` (
  `id` int(11) UNSIGNED NOT NULL,
  `userid` int(11) NOT NULL,
  `is_primary` int(11) NOT NULL DEFAULT '1',
  `firstname` varchar(191) NOT NULL,
  `lastname` varchar(191) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phonenumber` varchar(100) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `new_pass_key` varchar(32) DEFAULT NULL,
  `new_pass_key_requested` datetime DEFAULT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `email_verification_key` varchar(32) DEFAULT NULL,
  `email_verification_sent_at` datetime DEFAULT NULL,
  `last_ip` varchar(40) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_password_change` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `profile_image` varchar(191) DEFAULT NULL,
  `direction` varchar(3) DEFAULT NULL,
  `invoice_emails` tinyint(1) NOT NULL DEFAULT '1',
  `estimate_emails` tinyint(1) NOT NULL DEFAULT '1',
  `credit_note_emails` tinyint(1) NOT NULL DEFAULT '1',
  `contract_emails` tinyint(1) NOT NULL DEFAULT '1',
  `task_emails` tinyint(1) NOT NULL DEFAULT '1',
  `project_emails` tinyint(1) NOT NULL DEFAULT '1',
  `ticket_emails` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_contracts`
--

CREATE TABLE `tblpur_contracts` (
  `id` int(11) UNSIGNED NOT NULL,
  `contract_number` varchar(200) NOT NULL,
  `contract_name` varchar(200) NOT NULL,
  `content` longtext,
  `vendor` int(11) NOT NULL,
  `pur_order` int(11) NOT NULL,
  `contract_value` decimal(15,0) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `buyer` int(11) DEFAULT NULL,
  `time_payment` date DEFAULT NULL,
  `add_from` int(11) NOT NULL,
  `signed` int(32) NOT NULL DEFAULT '0',
  `note` longtext,
  `signer` int(11) DEFAULT NULL,
  `signed_date` date DEFAULT NULL,
  `signed_status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_estimates`
--

CREATE TABLE `tblpur_estimates` (
  `id` int(11) UNSIGNED NOT NULL,
  `sent` tinyint(1) NOT NULL DEFAULT '0',
  `datesend` datetime DEFAULT NULL,
  `vendor` int(11) NOT NULL,
  `deleted_vendor_name` varchar(100) DEFAULT NULL,
  `pur_request` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `number_format` int(11) NOT NULL DEFAULT '0',
  `hash` varchar(32) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `date` date NOT NULL,
  `expirydate` date DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL,
  `total` decimal(15,2) NOT NULL,
  `adjustment` decimal(15,2) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `vendornote` text,
  `adminnote` text,
  `discount_percent` decimal(15,2) DEFAULT '0.00',
  `discount_total` decimal(15,2) DEFAULT '0.00',
  `discount_type` varchar(30) DEFAULT NULL,
  `invoiceid` int(11) DEFAULT NULL,
  `invoiced_date` datetime DEFAULT NULL,
  `terms` text,
  `reference_no` varchar(100) DEFAULT NULL,
  `buyer` int(11) NOT NULL DEFAULT '0',
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `include_shipping` tinyint(1) NOT NULL,
  `show_shipping_on_estimate` tinyint(1) NOT NULL DEFAULT '1',
  `show_quantity_as` int(11) NOT NULL DEFAULT '1',
  `pipeline_order` int(11) NOT NULL DEFAULT '0',
  `is_expiry_notified` int(11) NOT NULL DEFAULT '0',
  `acceptance_firstname` varchar(50) DEFAULT NULL,
  `acceptance_lastname` varchar(50) DEFAULT NULL,
  `acceptance_email` varchar(100) DEFAULT NULL,
  `acceptance_date` datetime DEFAULT NULL,
  `acceptance_ip` varchar(40) DEFAULT NULL,
  `signature` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_estimate_detail`
--

CREATE TABLE `tblpur_estimate_detail` (
  `id` int(11) NOT NULL,
  `pur_estimate` int(11) NOT NULL,
  `item_code` varchar(100) NOT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `unit_price` decimal(15,0) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `into_money` decimal(15,0) DEFAULT NULL,
  `tax` text,
  `total` decimal(15,0) DEFAULT NULL,
  `total_money` decimal(15,0) DEFAULT NULL,
  `discount_money` decimal(15,0) DEFAULT NULL,
  `discount_%` decimal(15,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_orders`
--

CREATE TABLE `tblpur_orders` (
  `id` int(11) UNSIGNED NOT NULL,
  `pur_order_name` varchar(100) NOT NULL,
  `vendor` int(11) NOT NULL,
  `estimate` int(11) NOT NULL,
  `pur_order_number` varchar(30) NOT NULL,
  `order_date` date NOT NULL,
  `status` int(32) NOT NULL DEFAULT '1',
  `approve_status` int(32) NOT NULL DEFAULT '1',
  `datecreated` datetime NOT NULL,
  `days_owed` int(11) NOT NULL,
  `delivery_date` date DEFAULT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL,
  `total` decimal(15,2) NOT NULL,
  `addedfrom` int(11) NOT NULL,
  `vendornote` text,
  `terms` text,
  `discount_percent` decimal(15,2) DEFAULT '0.00',
  `discount_total` decimal(15,2) DEFAULT '0.00',
  `discount_type` varchar(30) DEFAULT NULL,
  `buyer` int(11) NOT NULL DEFAULT '0',
  `status_goods` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_order_detail`
--

CREATE TABLE `tblpur_order_detail` (
  `id` int(11) NOT NULL,
  `pur_order` int(11) NOT NULL,
  `item_code` varchar(100) NOT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `unit_price` decimal(15,0) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `into_money` decimal(15,0) DEFAULT NULL,
  `tax` text,
  `total` decimal(15,0) DEFAULT NULL,
  `discount_%` decimal(15,0) DEFAULT NULL,
  `discount_money` decimal(15,0) DEFAULT NULL,
  `total_money` decimal(15,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_order_payment`
--

CREATE TABLE `tblpur_order_payment` (
  `id` int(11) UNSIGNED NOT NULL,
  `pur_order` int(11) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `paymentmode` longtext,
  `date` date NOT NULL,
  `daterecorded` datetime NOT NULL,
  `note` text NOT NULL,
  `transactionid` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_request`
--

CREATE TABLE `tblpur_request` (
  `id` int(11) NOT NULL,
  `pur_rq_code` varchar(45) NOT NULL,
  `pur_rq_name` varchar(100) NOT NULL,
  `rq_description` text,
  `requester` int(11) NOT NULL,
  `department` int(11) NOT NULL,
  `request_date` datetime NOT NULL,
  `status` int(11) DEFAULT NULL,
  `status_goods` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_request_detail`
--

CREATE TABLE `tblpur_request_detail` (
  `prd_id` int(11) NOT NULL,
  `pur_request` int(11) NOT NULL,
  `item_code` varchar(100) NOT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `unit_price` decimal(15,0) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `into_money` decimal(15,0) DEFAULT NULL,
  `inventory_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_unit`
--

CREATE TABLE `tblpur_unit` (
  `unit_id` int(11) NOT NULL,
  `unit_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_vendor`
--

CREATE TABLE `tblpur_vendor` (
  `userid` int(11) UNSIGNED NOT NULL,
  `company` varchar(200) DEFAULT NULL,
  `vat` varchar(200) DEFAULT NULL,
  `phonenumber` varchar(30) DEFAULT NULL,
  `country` int(11) NOT NULL DEFAULT '0',
  `city` varchar(100) DEFAULT NULL,
  `zip` varchar(15) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `website` varchar(150) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `leadid` int(11) DEFAULT NULL,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT '0',
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT '0',
  `longitude` varchar(191) DEFAULT NULL,
  `latitude` varchar(191) DEFAULT NULL,
  `default_language` varchar(40) DEFAULT NULL,
  `default_currency` int(11) NOT NULL DEFAULT '0',
  `show_primary_contact` int(11) NOT NULL DEFAULT '0',
  `stripe_id` varchar(40) DEFAULT NULL,
  `registration_confirmed` int(11) NOT NULL DEFAULT '1',
  `addedfrom` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblpur_vendor_admin`
--

CREATE TABLE `tblpur_vendor_admin` (
  `staff_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `date_assigned` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblrelated_items`
--

CREATE TABLE `tblrelated_items` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(30) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblreminders`
--

CREATE TABLE `tblreminders` (
  `id` int(11) NOT NULL,
  `description` text,
  `date` datetime NOT NULL,
  `isnotified` int(11) NOT NULL DEFAULT '0',
  `rel_id` int(11) NOT NULL,
  `staff` int(11) NOT NULL,
  `rel_type` varchar(40) NOT NULL,
  `notify_by_email` int(11) NOT NULL DEFAULT '1',
  `creator` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblrequest`
--

CREATE TABLE `tblrequest` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `request_type_id` varchar(45) DEFAULT NULL,
  `date_create` datetime NOT NULL,
  `approval_deadline` datetime DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `code` varchar(255) DEFAULT '',
  `description` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblrequest_approval_details`
--

CREATE TABLE `tblrequest_approval_details` (
  `id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `staffid` varchar(255) NOT NULL,
  `approve` varchar(45) NOT NULL,
  `note` text,
  `date` datetime DEFAULT NULL,
  `approve_action` varchar(255) DEFAULT NULL,
  `reject_action` varchar(255) DEFAULT NULL,
  `approve_value` varchar(255) DEFAULT NULL,
  `reject_value` varchar(255) DEFAULT NULL,
  `staff_approve` int(11) DEFAULT '0',
  `action` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblrequest_files`
--

CREATE TABLE `tblrequest_files` (
  `id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `filetype` varchar(255) NOT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblrequest_follow`
--

CREATE TABLE `tblrequest_follow` (
  `id` int(11) NOT NULL,
  `request_id` varchar(45) DEFAULT NULL,
  `staffid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblrequest_form`
--

CREATE TABLE `tblrequest_form` (
  `id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `value` varchar(255) NOT NULL,
  `slug` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblrequest_log`
--

CREATE TABLE `tblrequest_log` (
  `id` int(11) NOT NULL,
  `request_id` varchar(45) DEFAULT NULL,
  `staffid` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblrequest_related`
--

CREATE TABLE `tblrequest_related` (
  `id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `rel_type` varchar(45) NOT NULL,
  `rel_id` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblrequest_type`
--

CREATE TABLE `tblrequest_type` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `maximum_number_day` varchar(45) DEFAULT NULL,
  `description` mediumtext,
  `content` longtext,
  `data_chart` longtext NOT NULL,
  `active` varchar(45) NOT NULL DEFAULT '1',
  `related_to` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblrequest_type_form`
--

CREATE TABLE `tblrequest_type_form` (
  `id` int(11) NOT NULL,
  `request_type_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblrequest_type_workflow`
--

CREATE TABLE `tblrequest_type_workflow` (
  `id` int(11) NOT NULL,
  `request_type_id` varchar(45) NOT NULL,
  `staffid` varchar(255) NOT NULL,
  `approve_action` varchar(255) DEFAULT NULL,
  `reject_action` varchar(255) DEFAULT NULL,
  `approve_value` varchar(255) DEFAULT NULL,
  `reject_value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblroles`
--

CREATE TABLE `tblroles` (
  `roleid` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `permissions` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblroles`
--

INSERT INTO `tblroles` (`roleid`, `name`, `permissions`) VALUES
(1, 'Empleado', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `tblsalary_form`
--

CREATE TABLE `tblsalary_form` (
  `form_id` int(11) UNSIGNED NOT NULL,
  `form_name` varchar(200) NOT NULL,
  `salary_val` decimal(15,2) NOT NULL,
  `tax` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblsales_activity`
--

CREATE TABLE `tblsales_activity` (
  `id` int(11) NOT NULL,
  `rel_type` varchar(20) DEFAULT NULL,
  `rel_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `additional_data` text,
  `staffid` varchar(11) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblsales_channel`
--

CREATE TABLE `tblsales_channel` (
  `id` int(11) UNSIGNED NOT NULL,
  `channel` varchar(150) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblsales_channel`
--

INSERT INTO `tblsales_channel` (`id`, `channel`, `status`) VALUES
(1, 'pos', 'active'),
(2, 'portal', 'active'),
(3, 'woocommerce', 'deactive');

-- --------------------------------------------------------

--
-- Table structure for table `tblsales_channel_detailt`
--

CREATE TABLE `tblsales_channel_detailt` (
  `id` int(11) UNSIGNED NOT NULL,
  `group_product_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sales_channel_id` int(11) NOT NULL,
  `prices` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblscheduled_emails`
--

CREATE TABLE `tblscheduled_emails` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(15) NOT NULL,
  `scheduled_at` datetime NOT NULL,
  `contacts` varchar(197) NOT NULL,
  `cc` text,
  `attach_pdf` tinyint(1) NOT NULL DEFAULT '1',
  `template` varchar(197) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `serviceid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblsessions`
--

CREATE TABLE `tblsessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblsessions`
--

INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('49493ecd2bacca8cbb1e35de7ce50e99a341d6bb', '192.168.1.101', 1622966160, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323936363136303b69735f6d6f62696c657c623a313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('07c617e9f979e861c6d88dbd98635b3764c3297c', '192.168.1.104', 1622954797, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323935343739373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('123e08f7b6061bb3ca28862b531ff48cc6a9c164', '192.168.1.104', 1622955119, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323935353131393b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('df4e0e9d2d008493a2fcb4f0be05293101653987', '192.168.1.104', 1622955423, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323935353432333b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('4d5bb2aa89aac2a6adfd5deb97e301651bb60558', '192.168.1.104', 1622955782, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323935353738323b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('387fde6a2cd780efedcd3bde350d9a6c5a12f484', '192.168.1.104', 1622956117, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323935363131373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('b9721757ed9e1b24cee1216e9393122fab1fb1bc', '192.168.1.104', 1622956626, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323935363632363b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('ab671845e3a18867ef86be3f0008b2f22dd51984', '192.168.1.104', 1622957005, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323935373030353b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('1add1121db41cdd2bae6377192a964c2db07f5fe', '192.168.1.104', 1622957318, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323935373331383b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('93fa617a29d7a413d6b25e8fd63204760f519160', '192.168.1.104', 1622957647, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323935373634373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('bc88dd27c9b109cc81d343512f7a1ed87556d303', '192.168.1.104', 1622958047, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323935383034373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a363a7b733a383a225f6f7074734d4435223b733a33323a223765346232346466386132323663323731326537373638636433376238626539223b733a333a226c315f223b613a323a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223234306630316337316562336165333263616363366662326161336338636664223b613a31323a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313632323935373739303b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f5841223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32323a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a303a22223b733a363a22746d6255726c223b733a303a22223b733a383a2264697361626c6564223b613a303a7b7d733a393a22736570617261746f72223b733a313a225c223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a3131303a225e283f3a283f3a766964656f7c617564696f297c696d6167652f283f212e2b5c2b786d6c297c6170706c69636174696f6e2f283f3a6f67677c782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a313a7b693a303b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a313a7b693a303b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a313a7b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31363a22746d62526571437573746f6d44617461223b623a303b733a31333a2273756273746974757465496d67223b623a313b733a31303a226f6e6574696d6555726c223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b7d7d733a373a2273756264697273223b613a313a7b733a32303a22433a5c4d414d505c6874646f63735c6d65646961223b623a303b7d7d733a393a22617263686976657273223b613a323a7b733a363a22637265617465223b613a313a7b733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a313a7b733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31353a227a697041726368697665556e7a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a323a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223831653363333465353634646362633436363133643632313336613434363766223b613a31333a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313632323935373739303b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f5841223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32323a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a303a22223b733a363a22746d6255726c223b733a303a22223b733a383a2264697361626c6564223b613a303a7b7d733a393a22736570617261746f72223b733a313a225c223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a3131303a225e283f3a283f3a766964656f7c617564696f297c696d6167652f283f212e2b5c2b786d6c297c6170706c69636174696f6e2f283f3a6f67677c782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a313a7b693a303b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a313a7b693a303b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a313a7b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31363a22746d62526571437573746f6d44617461223b623a303b733a31333a2273756273746974757465496d67223b623a313b733a31303a226f6e6574696d6555726c223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a343a2264697273223b693a313b7d7d733a373a2273756264697273223b613a313a7b733a32373a22433a5c4d414d505c6874646f63735c6d656469615c7075626c6963223b623a313b7d7d733a31343a223a4c4153545f4143544956495459223b693a313632323935373739343b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('c256b401a54097ace4817464947e1a5a9ad9d7a1', '192.168.1.104', 1622958471, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323935383437313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a363a7b733a383a225f6f7074734d4435223b733a33323a223765346232346466386132323663323731326537373638636433376238626539223b733a333a226c315f223b613a323a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223234306630316337316562336165333263616363366662326161336338636664223b613a31323a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313632323935373739303b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f5841223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32323a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a303a22223b733a363a22746d6255726c223b733a303a22223b733a383a2264697361626c6564223b613a303a7b7d733a393a22736570617261746f72223b733a313a225c223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a3131303a225e283f3a283f3a766964656f7c617564696f297c696d6167652f283f212e2b5c2b786d6c297c6170706c69636174696f6e2f283f3a6f67677c782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a313a7b693a303b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a313a7b693a303b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a313a7b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31363a22746d62526571437573746f6d44617461223b623a303b733a31333a2273756273746974757465496d67223b623a313b733a31303a226f6e6574696d6555726c223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b7d7d733a373a2273756264697273223b613a313a7b733a32303a22433a5c4d414d505c6874646f63735c6d65646961223b623a303b7d7d733a393a22617263686976657273223b613a323a7b733a363a22637265617465223b613a313a7b733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a313a7b733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31353a227a697041726368697665556e7a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a323a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223831653363333465353634646362633436363133643632313336613434363766223b613a31333a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313632323935373739303b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f5841223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32323a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a303a22223b733a363a22746d6255726c223b733a303a22223b733a383a2264697361626c6564223b613a303a7b7d733a393a22736570617261746f72223b733a313a225c223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a3131303a225e283f3a283f3a766964656f7c617564696f297c696d6167652f283f212e2b5c2b786d6c297c6170706c69636174696f6e2f283f3a6f67677c782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a313a7b693a303b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a313a7b693a303b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a313a7b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31363a22746d62526571437573746f6d44617461223b623a303b733a31333a2273756273746974757465496d67223b623a313b733a31303a226f6e6574696d6555726c223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a343a2264697273223b693a313b7d7d733a373a2273756264697273223b613a313a7b733a32373a22433a5c4d414d505c6874646f63735c6d656469615c7075626c6963223b623a313b7d7d733a31343a223a4c4153545f4143544956495459223b693a313632323935373739343b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('d2d53efac0735e318f5370b4775f32b42d45b355', '192.168.1.101', 1622958889, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323935383838393b69735f6d6f62696c657c623a313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('eb3774414b602b86ecf9df69061bb4e29f42f195', '192.168.1.104', 1622958774, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323935383737343b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b656c46696e6465724361636865737c613a363a7b733a383a225f6f7074734d4435223b733a33323a223765346232346466386132323663323731326537373638636433376238626539223b733a333a226c315f223b613a323a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223234306630316337316562336165333263616363366662326161336338636664223b613a31323a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313632323935373739303b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f5841223b733a343a226e616d65223b733a353a226d65646961223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32323a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a303a22223b733a363a22746d6255726c223b733a303a22223b733a383a2264697361626c6564223b613a303a7b7d733a393a22736570617261746f72223b733a313a225c223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a3131303a225e283f3a283f3a766964656f7c617564696f297c696d6167652f283f212e2b5c2b786d6c297c6170706c69636174696f6e2f283f3a6f67677c782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a313a7b693a303b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a313a7b693a303b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a313a7b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31363a22746d62526571437573746f6d44617461223b623a303b733a31333a2273756273746974757465496d67223b623a313b733a31303a226f6e6574696d6555726c223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b7d7d733a373a2273756264697273223b613a313a7b733a32303a22433a5c4d414d505c6874646f63735c6d65646961223b623a303b7d7d733a393a22617263686976657273223b613a323a7b733a363a22637265617465223b613a313a7b733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a313a7b733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31353a227a697041726368697665556e7a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d7d733a383a22766964656f4c6962223b733a303a22223b733a333a226c325f223b613a323a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223831653363333465353634646362633436363133643632313336613434363766223b613a31333a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313632323935373739303b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c325f5841223b733a343a226e616d65223b733a363a227075626c6963223b733a373a22726f6f74526576223b733a303a22223b733a373a226f7074696f6e73223b613a32323a7b733a343a2270617468223b733a303a22223b733a333a2275726c223b733a303a22223b733a363a22746d6255726c223b733a303a22223b733a383a2264697361626c6564223b613a303a7b7d733a393a22736570617261746f72223b733a313a225c223b733a31333a22636f70794f7665727772697465223b693a313b733a31353a2275706c6f61644f7665727772697465223b693a313b733a31333a2275706c6f61644d617853697a65223b693a31303438353736303b733a31333a2275706c6f61644d6178436f6e6e223b693a333b733a31303a2275706c6f61644d696d65223b613a333a7b733a31303a2266697273744f72646572223b733a343a2264656e79223b733a353a22616c6c6f77223b613a303a7b7d733a343a2264656e79223b613a31343a7b693a303b733a32333a226170706c69636174696f6e2f782d68747470642d706870223b693a313b733a31353a226170706c69636174696f6e2f706870223b693a323b733a31373a226170706c69636174696f6e2f782d706870223b693a333b733a383a22746578742f706870223b693a343b733a31303a22746578742f782d706870223b693a353b733a33303a226170706c69636174696f6e2f782d68747470642d7068702d736f75726365223b693a363b733a31363a226170706c69636174696f6e2f7065726c223b693a373b733a31383a226170706c69636174696f6e2f782d7065726c223b693a383b733a32303a226170706c69636174696f6e2f782d707974686f6e223b693a393b733a31383a226170706c69636174696f6e2f707974686f6e223b693a31303b733a32393a226170706c69636174696f6e2f782d62797465636f64652e707974686f6e223b693a31313b733a32393a226170706c69636174696f6e2f782d707974686f6e2d62797465636f6465223b693a31323b733a32353a226170706c69636174696f6e2f782d707974686f6e2d636f6465223b693a31333b733a31383a227777777365727665722f7368656c6c636769223b7d7d733a31353a2264697370496e6c696e655265676578223b733a3131303a225e283f3a283f3a766964656f7c617564696f297c696d6167652f283f212e2b5c2b786d6c297c6170706c69636174696f6e2f283f3a6f67677c782d6d70656755524c7c646173685c2b786d6c297c283f3a746578742f706c61696e7c6170706c69636174696f6e2f706466292429223b733a31303a226a70675175616c697479223b693a3130303b733a393a22617263686976657273223b613a333a7b733a363a22637265617465223b613a313a7b693a303b733a31353a226170706c69636174696f6e2f7a6970223b7d733a373a2265787472616374223b613a313a7b693a303b733a31353a226170706c69636174696f6e2f7a6970223b7d733a393a22637265617465657874223b613a313a7b733a31353a226170706c69636174696f6e2f7a6970223b733a333a227a6970223b7d7d733a383a227569436d644d6170223b613a303a7b7d733a31313a2273796e6343686b41735473223b693a313b733a393a2273796e634d696e4d73223b693a303b733a31343a226931386e466f6c6465724e616d65223b693a303b733a373a22746d6243726f70223b693a313b733a31363a22746d62526571437573746f6d44617461223b623a303b733a31333a2273756273746974757465496d67223b623a313b733a31303a226f6e6574696d6555726c223b623a313b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b7d733a383a22766f6c756d656964223b733a333a226c325f223b733a363a226c6f636b6564223b693a313b733a343a2264697273223b693a313b7d7d733a373a2273756264697273223b613a313a7b733a32373a22433a5c4d414d505c6874646f63735c6d656469615c7075626c6963223b623a313b7d7d733a31343a223a4c4153545f4143544956495459223b693a313632323935373739343b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('bd521472de1e30b1097cccf73f287287f3710d6e', '192.168.1.104', 1622959466, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323935393436363b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('1ae00d6c4c818cf20e2d886601eedea12066a580', '192.168.1.101', 1622960371, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323936303337313b69735f6d6f62696c657c623a313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('945648693e8f74c45427ac6311e252ed6889c764', '192.168.1.104', 1622959781, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323935393738313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('ec513121e3719a918b7e9803957d4957ce221815', '192.168.1.104', 1622960121, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323936303132313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('1e57ab1924755eec7abb3fefc1f6543572bd3bce', '192.168.1.104', 1622960462, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323936303436323b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('59a1cdcb7faa3493e362dd8d5ce4b1d527042225', '192.168.1.101', 1622964541, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323936343534313b69735f6d6f62696c657c623a313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('1ba2fd5ad0a5d1efc88a9ce4865bec1418f5a09a', '192.168.1.104', 1622960797, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323936303739373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('68ab2c5ab729dae4785c5045cc15536e84357b32', '192.168.1.104', 1622961106, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323936313130363b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('c652dfb9eeeec2fbdf66d56077a253b5a0be1284', '192.168.1.104', 1622961510, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323936313531303b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('539f522abc314ea799a47342d9c3cf966a950cc9', '192.168.1.104', 1622961824, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323936313832343b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('969f7ad10b0a361fbc0b9a00cf5dac2994ba253e', '192.168.1.104', 1622962131, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323936323133313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('26de953523c405e7fa31ef8f653a4d050ba45511', '192.168.1.104', 1622962443, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323936323434333b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('429bb32dda57daa7670be48ab46a9f11581252bc', '192.168.1.104', 1622962776, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323936323737363b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('87f6b4c208d339f0c3a3b35d87afae2491ec17d1', '192.168.1.104', 1622963101, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323936333130313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('7126f561686e8b2a8caa666d479fd925167987cc', '192.168.1.104', 1622963424, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323936333432343b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('edd4b1b88fafce779ceb4c2ffbfcce23845c484e', '192.168.1.104', 1622963725, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323936333732353b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b6d6573736167652d737563636573737c733a31383a224164646564207375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167652d73756363657373223b733a333a226e6577223b7d),
('c04e6b6b71d06298124b5fceb7d13aeab2c13950', '192.168.1.104', 1622964027, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323936343032373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('a159121dc3e89242e78632b55a180ecd07e75d0a', '192.168.1.104', 1622964338, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323936343333383b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('5786151e11682c7377da5a4e490d5bfa3957d1b0', '192.168.1.104', 1622964935, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323936343933353b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('557108801f2530e8a4543f22bb8b82e9f8111d40', '192.168.1.101', 1622965509, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323936353530393b69735f6d6f62696c657c623a313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('d3a9a615cc57e61ceb42f416576303fbfa8f0397', '192.168.1.104', 1622965247, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323936353234373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('e0e3d5528331e9628fcb75222e70b25ef7af85b6', '192.168.1.104', 1622965498, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323936353234373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('ae2e1c796798deb6814cdd023f77fbb53ca36af7', '192.168.1.101', 1622965854, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323936353835343b69735f6d6f62696c657c623a313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('535461c1e06624f60dbd01b7afca35897fba3b0c', '192.168.1.101', 1622966664, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323936363636343b69735f6d6f62696c657c623a313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('7d66a9dea242bcb7173c4d1569c1e21d971c63ad', '192.168.1.101', 1622966668, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323936363636343b69735f6d6f62696c657c623a313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('208781acdf9b8df094fb972c1fad2ffbad1c0f2e', '192.168.1.104', 1623000908, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333030303837303b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('93d766316988bb69be124d488274d99161649b2c', '192.168.1.101', 1623005388, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333030353239353b69735f6d6f62696c657c623a313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('9909e5a71f515d4ae85a2f62d5668629aabf5828', '127.0.0.1', 1623079266, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333037393236333b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('b87457fd7f057eccb7bdebbab646aa749d9d4db4', '192.168.1.104', 1623079601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333037393630313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('adeb6c344f2a8565b45befe79d79bf6b26eaeaa4', '192.168.1.104', 1623098104, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333039383130343b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('8d328296232e57cedf286f4a0006120ddfce017d', '192.168.1.101', 1623092670, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333039323637303b69735f6d6f62696c657c623a313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('4fd78296c2fcbe233f428ebd4d1fb9758d0d9e6f', '192.168.1.101', 1623093086, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333039333038363b69735f6d6f62696c657c623a313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('5d3b8c0e34dbccae0f08d1dbd621b0802154b89c', '192.168.1.101', 1623113517, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333131333531373b69735f6d6f62696c657c623a313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('1cc8faf7e20694271f273c6ff91be874c12e04b0', '192.168.1.104', 1623098410, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333039383431303b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('acea8134334de58ee11abb181d09b2d64b9ad52d', '192.168.1.104', 1623098797, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333039383739373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('5ca793f7871f6e2bf4992ca7180d8532e4d38067', '192.168.1.104', 1623099177, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333039393137373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('55f5593d0a4ae73fa34ea1979db90d5eaf998a26', '192.168.1.104', 1623099509, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333039393530393b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('e891e31c0bbb42c9146b04a3e038beb6214865ce', '192.168.1.104', 1623099862, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333039393836323b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('57727f44627c0abcb59d99009458b620f06a3efe', '192.168.1.104', 1623100629, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333130303632393b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('c909aba61470b005793eaf1f290a62ef4381a1c1', '192.168.1.104', 1623100934, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333130303933343b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('4bac37036a0b8c426f294d6f390e9a9bbb907674', '192.168.1.104', 1623101240, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333130313234303b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('95ad0c3f300910921457847fda52eb1e743164b2', '192.168.1.104', 1623101541, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333130313534313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('74c35e179f40f29a664e0e90aae7e38f9a405720', '192.168.1.104', 1623101887, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333130313838373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('43ae4fecbccad662c8892dcbc60c749debd6afb4', '192.168.1.104', 1623102191, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333130323139313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b6d6573736167652d737563636573737c733a31393a224f626a657469766f7320656c696d696e61646f223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167652d73756363657373223b733a333a226f6c64223b7d),
('b1ead8c3879ae25c60bf1ee6f7d5fc01dc4fe20a', '192.168.1.104', 1623103306, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333130333330363b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('1921f9f21b05a8856ac2e8536068996274641f36', '192.168.1.104', 1623103608, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333130333630383b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('c53e00060f726921576a892d6e30bcacd451b471', '192.168.1.104', 1623103945, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333130333934353b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('1f743f80df38478588399a8639fb461cb3e7bed7', '192.168.1.104', 1623104363, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333130343336333b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('a88f3a883f92139b10567af2ca98e6d8f31dd4ef', '192.168.1.104', 1623104727, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333130343732373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('95d7a8f0af028f17205818d53ddad126074e18cd', '192.168.1.104', 1623105039, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333130353033393b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('9c7fcde99842b6607d7ad1fd7677ce9ab2c3381a', '192.168.1.104', 1623105351, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333130353335313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('46d61938de8154d2a62ce63b60e257a77cada912', '192.168.1.104', 1623107411, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333130373431313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('05872dcb049d753d65b51f69faf5ca6d4131dd63', '192.168.1.104', 1623107748, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333130373734383b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('1ca63eafd05c17e75700b26aea4e249891e0ba86', '192.168.1.104', 1623108057, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333130383035373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('ca3ed9845ca26026dcd7caa053e9efc2b3300f49', '192.168.1.104', 1623108382, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333130383338323b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('a8063db38253fd5db4d54ae912a3b5ba5a5c5b9c', '192.168.1.104', 1623108700, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333130383730303b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('e47ba85a75bed86b54d9aa95aaa7ed02b580d25f', '192.168.1.104', 1623109038, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333130393033383b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('006d95ec31601195b32420a119c0338a8a9ca524', '192.168.1.104', 1623109427, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333130393432373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('f8b368fedce2dd51b856d487984c216bb24ef85b', '192.168.1.104', 1623109484, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333130393432373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('aaa9c5aa237c8e7758c84e515226945dc7c12d48', '192.168.1.101', 1623115251, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333131353235313b69735f6d6f62696c657c623a313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('782e8d29e3cd0e23bc5c3cb74fd1644844aa870f', '192.168.1.101', 1623121378, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333132313337383b69735f6d6f62696c657c623a313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('ef197e1ec0ac38f22f66bd820383e07918a61666', '192.168.1.101', 1623129598, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333132393539383b69735f6d6f62696c657c623a313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('218cfc1a93eebfe09a5899e78172c13db724a5d8', '192.168.1.101', 1623129942, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333132393738383b69735f6d6f62696c657c623a313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('4a3bda501ab9f45ede163788204ae425678a9b4b', '192.168.1.101', 1623187560, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333138373536303b69735f6d6f62696c657c623a313b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('f4e1e5fd7c5a53cd93ac6b1973027b343e1fe088', '192.168.1.104', 1623184110, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333138343131303b7265645f75726c7c733a34393a22687474703a2f2f3139322e3136382e312e3130342f61646d696e2f6170706f696e746c792f6170706f696e746d656e7473223b),
('8c1b4abb5fb3cacbf24d5a631351a73f96f2b1b9', '192.168.1.104', 1623184477, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333138343437373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('7e76eb108f81580f529ee1efc0cd8ae5bd0a1a52', '192.168.1.104', 1623184854, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333138343835343b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('bf59eccd8e55606d9a6ed13f81ff3a9554fdc172', '192.168.1.104', 1623185160, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333138353136303b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('b558af825c4f2253cae45f86301a8d712924d8f3', '192.168.1.104', 1623186639, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333138363633393b73746166665f757365725f69647c733a313a2232223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('d1622ab54da2e318e5af633302d194c4339ec5ce', '192.168.1.104', 1623185936, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333138353933363b73746166665f757365725f69647c733a313a2232223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('2128814470d4d021388dee04ebfc39afb700d1ee', '192.168.1.104', 1623186244, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333138363234343b73746166665f757365725f69647c733a313a2232223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('39293206e6fd1e4aa83de101872d1dffa5fc8def', '192.168.1.104', 1623187656, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333138373635363b73746166665f757365725f69647c733a313a2232223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b);
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('f5590d498fff1eff8b89857375d1f20337d4c44c', '192.168.1.101', 1623189815, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333138393831353b69735f6d6f62696c657c623a313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b73657475702d6d656e752d6f70656e7c733a303a22223b),
('c61bd198929f748d35a5a874a4514065f7eed050', '192.168.1.104', 1623187969, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333138373936393b73746166665f757365725f69647c733a313a2232223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('37f363acf9aba993d3751f9b01fe873bf759ec07', '192.168.1.104', 1623188326, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333138383332363b73746166665f757365725f69647c733a313a2232223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('041f49bc88b87b2583dbd43d661cbef0a6cf09e6', '192.168.1.104', 1623188654, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333138383635343b73746166665f757365725f69647c733a313a2232223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('56851bba91a6c23ac40f9329ad707c499fbd54a5', '192.168.1.104', 1623189027, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333138393032373b73746166665f757365725f69647c733a313a2232223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('2feb5c4d5d93e23239eff625be4481be97ae2843', '192.168.1.104', 1623189338, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333138393333383b73746166665f757365725f69647c733a313a2232223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('764d833c787816e7f7534d085bacd6031361d54e', '192.168.1.104', 1623189646, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333138393634363b73746166665f757365725f69647c733a313a2232223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('578b6538fca24cf2f8b1b277829d709cb531c749', '192.168.1.104', 1623189993, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333138393939333b73746166665f757365725f69647c733a313a2232223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('32bdf1dfd553ea261022041dcb53bfba5ff1eb09', '192.168.1.101', 1623191159, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333139313135393b69735f6d6f62696c657c623a313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b73657475702d6d656e752d6f70656e7c733a303a22223b),
('424c2576459be84e2d77c6525add1c2ce8671353', '192.168.1.104', 1623190485, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333139303438353b73746166665f757365725f69647c733a313a2232223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('9c9db5f2dd925fa7017c1feca6f1fedea240e5f1', '192.168.1.104', 1623190922, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333139303932323b73746166665f757365725f69647c733a313a2232223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('3166f93be93736c3c036b572d0eedd1baddd0995', '192.168.1.104', 1623191279, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333139313237393b73746166665f757365725f69647c733a313a2232223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('e435f93be3334edbdefc77ac79cb9c082fe25ea2', '192.168.1.101', 1623215056, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333231353035363b69735f6d6f62696c657c623a313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b73657475702d6d656e752d6f70656e7c733a303a22223b),
('e84eb0f8bad31b006e3e5517ed0432d3969a6326', '192.168.1.104', 1623191760, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333139313736303b73746166665f757365725f69647c733a313a2232223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('276d926be56334e0f05e189500cb5c0ab18114ce', '192.168.1.104', 1623192078, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333139323037383b73746166665f757365725f69647c733a313a2232223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('4aa7b65d6f74829984a70a4f20c97e9ee18f19cd', '192.168.1.104', 1623192433, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333139323433333b73746166665f757365725f69647c733a313a2232223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('b4f9a72f2656ed54ce7797f0cf14921571d5668e', '192.168.1.104', 1623192742, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333139323734323b73746166665f757365725f69647c733a313a2232223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('4df7efee50d4f18bdc1b2f70a148386c1b536819', '192.168.1.104', 1623193077, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333139333037373b73746166665f757365725f69647c733a313a2232223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('fc3140faad7bdf9d5f280be56b9001bb09e8cf66', '192.168.1.104', 1623193383, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333139333338333b73746166665f757365725f69647c733a313a2232223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('9f8bd0412bbe68101b23af20c6bb59aa8f558ed7', '192.168.1.104', 1623193787, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333139333738373b73746166665f757365725f69647c733a313a2232223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('a12ed49d7eac15ecac55ced5eb1cf0b5b6c4791b', '192.168.1.104', 1623203705, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333230333730353b73746166665f757365725f69647c733a313a2232223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('4dec4ca05a7085e4810de87c9ec7f93b7e2c93c5', '192.168.1.104', 1623204148, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333230343134383b73746166665f757365725f69647c733a313a2232223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('8218416bca1dcee2dbde20be6afe37dc6b821cea', '192.168.1.104', 1623204478, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333230343437383b73746166665f757365725f69647c733a313a2232223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('c5b2a740302c1a05e05264d9f6b2839f7bcf764c', '192.168.1.104', 1623204885, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333230343838353b73746166665f757365725f69647c733a313a2232223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('1005cc5e8739d2b3547761f2d5b1c3a404836082', '192.168.1.104', 1623205232, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333230353233323b73746166665f757365725f69647c733a313a2232223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('448a2fc47773c30d455edf0623c764ae36d6936d', '192.168.1.104', 1623205643, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333230353634333b73746166665f757365725f69647c733a313a2232223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('93dc619717542db21397ead91a64bddc52275e04', '192.168.1.104', 1623205989, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333230353938393b73746166665f757365725f69647c733a313a2232223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('20c5eb50dc12c30c40ff5a7198bad3ebc5e26303', '192.168.1.104', 1623206525, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333230363532353b73746166665f757365725f69647c733a313a2232223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('2e645df80d9623fb0ca941f3a52ab2dbb66e67da', '192.168.1.104', 1623206853, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333230363835333b73746166665f757365725f69647c733a313a2232223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('dd800d9c922808ade0f1651f525c2ef4d5c4bac9', '192.168.1.104', 1623207266, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333230373236363b73746166665f757365725f69647c733a313a2232223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('b5080b04cfa35fceaffff72ec7e6e505ca39118c', '192.168.1.104', 1623207575, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333230373537353b73746166665f757365725f69647c733a313a2232223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('5c42a2bcba3115125733183239a5b7db991cfd96', '192.168.1.104', 1623207909, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333230373930393b73746166665f757365725f69647c733a313a2232223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('24057dd45dda48e8ee41996f23009adbca0b6ecb', '192.168.1.104', 1623208619, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333230383631393b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('067c798de3fae467404848f9c5a4bde21b7d8254', '192.168.1.104', 1623208310, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333230383331303b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('60ad83cdaa826989202a746fe56735c54f276773', '192.168.1.104', 1623208922, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333230383932323b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('0ff51a741661ae704bad2b33fd25762900eb6392', '192.168.1.104', 1623209761, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333230393736313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('c8d4c939f4571ad29e004bcb5f0152a77d37a5a2', '192.168.1.104', 1623210483, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333231303438333b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('d243e4ebe0e7ae1f203e6a6c2005a61eda95a990', '192.168.1.104', 1623212002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333231323030323b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('72225f23b3b03e8abea48872acb402b26a90bc68', '192.168.1.104', 1623212349, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333231323334393b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('e45d70317f8bbb15f650ff57d19d9cd05750504f', '192.168.1.104', 1623212657, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333231323635373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('d1836243d0deb2adb9d12058e1eca8a3270d6054', '192.168.1.104', 1623213080, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333231333038303b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('98efff8bb4e3c5edf80ca1b3800bb3d2ca481475', '192.168.1.104', 1623213084, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333231333038303b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('6e988bae624ca0b243bbbefd9d7ff12853a69f53', '192.168.1.101', 1623215068, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333231353035363b69735f6d6f62696c657c623a313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b73657475702d6d656e752d6f70656e7c733a303a22223b),
('884bb2b7e46e1c68a7b630f28c1d01e745229a4a', '127.0.0.1', 1623266562, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333236363536313b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('c447209305d9232cfd620fe95cb64a701aaba31c', '192.168.1.104', 1623261326, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333236313332363b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('a27395912cb1c22ed8bfbe7330a6e80a2badf1f6', '192.168.1.104', 1623261659, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333236313635393b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('0d686e781068f5f58f1a0f7f5119241ddc71e2c2', '192.168.1.104', 1623261991, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333236313939313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('9827fe6cc88f317a3e28517681538b40d5ecc8cd', '192.168.1.104', 1623263153, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333236333135333b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('d97848d4eaa8b67a8961f241b3e748e7fb8640c9', '192.168.1.104', 1623263660, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333236333636303b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('39c7f10ce05185c1ec77d53b14a22d61eb76b0bf', '192.168.1.104', 1623264025, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333236343032353b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('274d17fdee5b792545c42b452c7fc9c91786c013', '192.168.1.104', 1623264334, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333236343333343b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('b74648f253a5a09df839407d96fb8e1641c4f3a7', '192.168.1.104', 1623264684, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333236343638343b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('96ef0060d3d40e3c62a93d63218b98a941cd0bd7', '192.168.1.104', 1623265038, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333236353033383b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('03799cb010cff84baff8fab64cc620977fe9b267', '192.168.1.104', 1623265870, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333236353837303b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('4dd10f0a87646b4f69ef583c25b0fffbc17f10e6', '192.168.1.104', 1623266205, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333236363230353b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('caf4d6fe924ab0467066fbaa7a5d6d34c01a8c56', '192.168.1.104', 1623266507, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333236363530373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b6d6573736167652d737563636573737c733a32303a22416a75737465732061637475616c697a61646f73223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167652d73756363657373223b733a333a226f6c64223b7d),
('4915de8dd80319a52e36e490eedb554c8dd52896', '192.168.1.104', 1623266884, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333236363838343b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('e7b772f09fe8bafbd3f9b1a35340bf92bd1f6e4b', '127.0.0.1', 1623270618, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333237303631383b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('97c65752edae2de9b7a792ba223170ac6954694c', '192.168.1.104', 1623267200, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333236373230303b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('5f2f2b3c854fcb9c3233dfd3fd1cf6074f4a0086', '192.168.1.104', 1623267639, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333236373633393b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('f108c012afa4c1e8534c71c7de345d3ec3607aa8', '192.168.1.104', 1623267957, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333236373935373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('e29e23211e3aa662af8ed5191e91bc770f0a4930', '192.168.1.104', 1623268465, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333236383436353b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('9acc28491c086a576c4567f2c7217e1dbc2246c7', '192.168.1.104', 1623268801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333236383830313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('a030128879a87ee5b69b925ed562295b934366e9', '192.168.1.104', 1623269146, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333236393134363b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('fd0fcfc1b368dc22ba7ef3c56b70738be7c22f09', '192.168.1.104', 1623269460, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333236393436303b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('42dd66ff8f232c9c2231577106a4dbdbfaa8dce7', '192.168.1.104', 1623270619, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333237303631393b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('4af09f71c8decdf51a309c9fcc051bd74eb9224a', '127.0.0.1', 1623270618, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333237303631383b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('25911153b7b4486efc5b6772b817b702285c3269', '192.168.1.104', 1623271520, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333237313532303b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('85228a8da5f7ef53be39232f1611b7dabdedb5c2', '192.168.1.104', 1623271831, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333237313833313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('99138375c155def0055bed7d6d08fd6009b7a39a', '192.168.1.104', 1623277916, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333237373931363b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('3054c844c7ef5a429768412198710d5188e9485d', '192.168.1.104', 1623279137, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333237393133373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('8e8698d75cf5c8bb9f2d44c994a58537fbaf740b', '192.168.1.104', 1623279647, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333237393634373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('08adc8003313d05fc494470386322a8b70332694', '192.168.1.104', 1623279823, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333237393634373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a32313a22687474703a2f2f3139322e3136382e312e3130342f223b),
('8572527b30d3cc5a79d1b054ae15a5607b9b96f1', '192.168.1.104', 1623281686, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333238313638363b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b),
('fc06c85b9206a49c4fcd8e55b58599d7803d91be', '192.168.1.104', 1623291297, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333239313239373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b),
('1729df233ac24aa02e50e19104d8777245ed4aca', '192.168.1.104', 1623291343, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333239313239373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b);

-- --------------------------------------------------------

--
-- Table structure for table `tblshared_customer_files`
--

CREATE TABLE `tblshared_customer_files` (
  `file_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblsi_task_filter`
--

CREATE TABLE `tblsi_task_filter` (
  `id` int(11) NOT NULL,
  `filter_name` varchar(200) NOT NULL,
  `filter_parameters` text NOT NULL,
  `staff_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblspam_filters`
--

CREATE TABLE `tblspam_filters` (
  `id` int(11) NOT NULL,
  `type` varchar(40) NOT NULL,
  `rel_type` varchar(10) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff`
--

CREATE TABLE `tblstaff` (
  `staffid` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `facebook` mediumtext,
  `linkedin` mediumtext,
  `phonenumber` varchar(30) DEFAULT NULL,
  `skype` varchar(50) DEFAULT NULL,
  `password` varchar(250) NOT NULL,
  `datecreated` datetime NOT NULL,
  `profile_image` varchar(191) DEFAULT NULL,
  `last_ip` varchar(40) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_activity` datetime DEFAULT NULL,
  `last_password_change` datetime DEFAULT NULL,
  `new_pass_key` varchar(32) DEFAULT NULL,
  `new_pass_key_requested` datetime DEFAULT NULL,
  `admin` int(11) NOT NULL DEFAULT '0',
  `role` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `default_language` varchar(40) DEFAULT NULL,
  `direction` varchar(3) DEFAULT NULL,
  `media_path_slug` varchar(191) DEFAULT NULL,
  `is_not_staff` int(11) NOT NULL DEFAULT '0',
  `hourly_rate` decimal(15,2) NOT NULL DEFAULT '0.00',
  `two_factor_auth_enabled` tinyint(1) DEFAULT '0',
  `two_factor_auth_code` varchar(100) DEFAULT NULL,
  `two_factor_auth_code_requested` datetime DEFAULT NULL,
  `email_signature` text,
  `birthday` date DEFAULT NULL,
  `birthplace` varchar(200) DEFAULT NULL,
  `sex` varchar(15) DEFAULT NULL,
  `marital_status` varchar(25) DEFAULT NULL,
  `nation` varchar(25) DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL,
  `identification` varchar(100) DEFAULT NULL,
  `days_for_identity` date DEFAULT NULL,
  `home_town` varchar(200) DEFAULT NULL,
  `resident` varchar(200) DEFAULT NULL,
  `current_address` varchar(200) DEFAULT NULL,
  `literacy` varchar(50) DEFAULT NULL,
  `orther_infor` text,
  `job_position` int(11) DEFAULT NULL,
  `workplace` int(11) DEFAULT NULL,
  `place_of_issue` varchar(50) DEFAULT NULL,
  `account_number` varchar(50) DEFAULT NULL,
  `name_account` varchar(50) DEFAULT NULL,
  `issue_bank` varchar(200) DEFAULT NULL,
  `records_received` longtext,
  `Personal_tax_code` varchar(50) DEFAULT NULL,
  `google_auth_secret` text,
  `team_manage` int(11) DEFAULT '0',
  `staff_identifi` varchar(25) DEFAULT NULL,
  `status_work` varchar(100) DEFAULT NULL,
  `date_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblstaff`
--

INSERT INTO `tblstaff` (`staffid`, `email`, `firstname`, `lastname`, `facebook`, `linkedin`, `phonenumber`, `skype`, `password`, `datecreated`, `profile_image`, `last_ip`, `last_login`, `last_activity`, `last_password_change`, `new_pass_key`, `new_pass_key_requested`, `admin`, `role`, `active`, `default_language`, `direction`, `media_path_slug`, `is_not_staff`, `hourly_rate`, `two_factor_auth_enabled`, `two_factor_auth_code`, `two_factor_auth_code_requested`, `email_signature`, `birthday`, `birthplace`, `sex`, `marital_status`, `nation`, `religion`, `identification`, `days_for_identity`, `home_town`, `resident`, `current_address`, `literacy`, `orther_infor`, `job_position`, `workplace`, `place_of_issue`, `account_number`, `name_account`, `issue_bank`, `records_received`, `Personal_tax_code`, `google_auth_secret`, `team_manage`, `staff_identifi`, `status_work`, `date_update`) VALUES
(1, 'admin@soft.com', 'Admin', 'ERPSUR', NULL, NULL, NULL, NULL, '$2a$08$iTuiOwi23bIHcb1oby0zMOZbmSIJNfvYW54OWBSxrmSvipusgJg6S', '2021-06-06 00:36:33', NULL, '192.168.1.104', '2021-06-09 20:30:42', '2021-06-09 23:15:42', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, 0, '0.00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(2, 'empleado@soft.com', 'empleado', '01', '', '', '', '', '$2a$08$mTtCKafnwaTeDvX0cq2n1Ob2PJ6IU0RbC.w7FoZJy0qBIx3mNXfyy', '2021-06-08 17:47:04', NULL, '192.168.1.104', '2021-06-08 17:48:25', '2021-06-09 00:06:30', NULL, NULL, NULL, 1, 1, 1, 'spanish', '', 'empleado-01', 0, '0.00', 0, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff_contract`
--

CREATE TABLE `tblstaff_contract` (
  `id_contract` int(11) UNSIGNED NOT NULL,
  `contract_code` varchar(15) NOT NULL,
  `name_contract` int(11) NOT NULL,
  `staff` int(11) NOT NULL,
  `contract_form` varchar(191) DEFAULT NULL,
  `start_valid` date DEFAULT NULL,
  `end_valid` date DEFAULT NULL,
  `contract_status` varchar(100) DEFAULT NULL,
  `salary_form` int(11) DEFAULT NULL,
  `allowance_type` varchar(11) DEFAULT NULL,
  `sign_day` date DEFAULT NULL,
  `staff_delegate` int(11) DEFAULT NULL,
  `staff_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff_contracttype`
--

CREATE TABLE `tblstaff_contracttype` (
  `id_contracttype` int(11) UNSIGNED NOT NULL,
  `name_contracttype` varchar(200) NOT NULL,
  `contracttype` varchar(200) NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `unit` varchar(20) DEFAULT NULL,
  `insurance` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff_contract_detail`
--

CREATE TABLE `tblstaff_contract_detail` (
  `contract_detail_id` int(11) UNSIGNED NOT NULL,
  `staff_contract_id` int(11) UNSIGNED NOT NULL,
  `since_date` date DEFAULT NULL,
  `contract_note` varchar(100) DEFAULT NULL,
  `contract_salary_expense` longtext,
  `contract_allowance_expense` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff_departments`
--

CREATE TABLE `tblstaff_departments` (
  `staffdepartmentid` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `departmentid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff_insurance`
--

CREATE TABLE `tblstaff_insurance` (
  `insurance_id` int(11) UNSIGNED NOT NULL,
  `staff_id` int(11) UNSIGNED NOT NULL,
  `insurance_book_num` varchar(100) DEFAULT NULL,
  `health_insurance_num` varchar(100) DEFAULT NULL,
  `city_code` varchar(100) DEFAULT NULL,
  `registration_medical` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff_insurance_history`
--

CREATE TABLE `tblstaff_insurance_history` (
  `id` int(11) UNSIGNED NOT NULL,
  `insurance_id` int(11) UNSIGNED NOT NULL,
  `staff_id` int(11) UNSIGNED DEFAULT NULL,
  `from_month` date DEFAULT NULL,
  `formality` varchar(50) DEFAULT NULL,
  `reason` varchar(50) DEFAULT NULL,
  `premium_rates` varchar(100) DEFAULT NULL,
  `payment_company` varchar(100) DEFAULT NULL,
  `payment_worker` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff_permissions`
--

CREATE TABLE `tblstaff_permissions` (
  `staff_id` int(11) NOT NULL,
  `feature` varchar(40) NOT NULL,
  `capability` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblstock_take`
--

CREATE TABLE `tblstock_take` (
  `id` int(11) UNSIGNED NOT NULL,
  `description` text COMMENT 'the reason stock take',
  `warehouse_id` int(11) DEFAULT NULL,
  `date_stock_take` date DEFAULT NULL,
  `stock_take_code` varchar(100) DEFAULT NULL COMMENT 'số kiểm kê kho',
  `date_add` date DEFAULT NULL,
  `hour_add` date DEFAULT NULL,
  `staff_id` varchar(100) DEFAULT NULL,
  `approval` int(11) DEFAULT '0' COMMENT 'status approval ',
  `addedfrom` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblstock_take_detail`
--

CREATE TABLE `tblstock_take_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `stock_take_id` int(11) NOT NULL,
  `commodity_code` varchar(100) DEFAULT NULL,
  `commodity_name` text,
  `unit_id` text,
  `unit_price` varchar(100) DEFAULT NULL,
  `quantity_stock_take` varchar(100) DEFAULT NULL,
  `quantity_accounting_book` varchar(100) DEFAULT NULL,
  `quantity_change` varchar(100) DEFAULT NULL,
  `handling` text,
  `reason` text,
  `approval` int(11) DEFAULT '0' COMMENT 'status approval '
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscriptions`
--

CREATE TABLE `tblsubscriptions` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text,
  `description_in_item` tinyint(1) NOT NULL DEFAULT '0',
  `clientid` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `terms` text,
  `currency` int(11) NOT NULL,
  `tax_id` int(11) NOT NULL DEFAULT '0',
  `stripe_tax_id` varchar(50) DEFAULT NULL,
  `tax_id_2` int(11) NOT NULL DEFAULT '0',
  `stripe_tax_id_2` varchar(50) DEFAULT NULL,
  `stripe_plan_id` text,
  `stripe_subscription_id` text NOT NULL,
  `next_billing_cycle` bigint(20) DEFAULT NULL,
  `ends_at` bigint(20) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `hash` varchar(32) NOT NULL,
  `created` datetime NOT NULL,
  `created_from` int(11) NOT NULL,
  `date_subscribed` datetime DEFAULT NULL,
  `in_test_environment` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblsurveyresultsets`
--

CREATE TABLE `tblsurveyresultsets` (
  `resultsetid` int(11) NOT NULL,
  `surveyid` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `useragent` varchar(150) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblsurveys`
--

CREATE TABLE `tblsurveys` (
  `surveyid` int(11) NOT NULL,
  `subject` mediumtext NOT NULL,
  `slug` mediumtext NOT NULL,
  `description` text NOT NULL,
  `viewdescription` text,
  `datecreated` datetime NOT NULL,
  `redirect_url` varchar(100) DEFAULT NULL,
  `send` tinyint(1) NOT NULL DEFAULT '0',
  `onlyforloggedin` int(11) DEFAULT '0',
  `fromname` varchar(100) DEFAULT NULL,
  `iprestrict` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `hash` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblsurveysemailsendcron`
--

CREATE TABLE `tblsurveysemailsendcron` (
  `id` int(11) NOT NULL,
  `surveyid` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `emailid` int(11) DEFAULT NULL,
  `listid` varchar(11) DEFAULT NULL,
  `log_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblsurveysendlog`
--

CREATE TABLE `tblsurveysendlog` (
  `id` int(11) NOT NULL,
  `surveyid` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `iscronfinished` int(11) NOT NULL DEFAULT '0',
  `send_to_mail_lists` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltaggables`
--

CREATE TABLE `tbltaggables` (
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `tag_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltags`
--

CREATE TABLE `tbltags` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltasks`
--

CREATE TABLE `tbltasks` (
  `id` int(11) NOT NULL,
  `name` mediumtext,
  `description` text,
  `priority` int(11) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `startdate` date NOT NULL,
  `duedate` date DEFAULT NULL,
  `datefinished` datetime DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `is_added_from_contact` tinyint(1) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `recurring_type` varchar(10) DEFAULT NULL,
  `repeat_every` int(11) DEFAULT NULL,
  `recurring` int(11) NOT NULL DEFAULT '0',
  `is_recurring_from` int(11) DEFAULT NULL,
  `cycles` int(11) NOT NULL DEFAULT '0',
  `total_cycles` int(11) NOT NULL DEFAULT '0',
  `custom_recurring` tinyint(1) NOT NULL DEFAULT '0',
  `last_recurring_date` date DEFAULT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `rel_type` varchar(30) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `billable` tinyint(1) NOT NULL DEFAULT '0',
  `billed` tinyint(1) NOT NULL DEFAULT '0',
  `invoice_id` int(11) NOT NULL DEFAULT '0',
  `hourly_rate` decimal(15,2) NOT NULL DEFAULT '0.00',
  `milestone` int(11) DEFAULT '0',
  `kanban_order` int(11) NOT NULL DEFAULT '0',
  `milestone_order` int(11) NOT NULL DEFAULT '0',
  `visible_to_client` tinyint(1) NOT NULL DEFAULT '0',
  `deadline_notified` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltaskstimers`
--

CREATE TABLE `tbltaskstimers` (
  `id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `start_time` varchar(64) NOT NULL,
  `end_time` varchar(64) DEFAULT NULL,
  `staff_id` int(11) NOT NULL,
  `hourly_rate` decimal(15,2) NOT NULL DEFAULT '0.00',
  `note` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltasks_checklist_templates`
--

CREATE TABLE `tbltasks_checklist_templates` (
  `id` int(11) NOT NULL,
  `description` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltask_assigned`
--

CREATE TABLE `tbltask_assigned` (
  `id` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `taskid` int(11) NOT NULL,
  `assigned_from` int(11) NOT NULL DEFAULT '0',
  `is_assigned_from_contact` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltask_checklist_items`
--

CREATE TABLE `tbltask_checklist_items` (
  `id` int(11) NOT NULL,
  `taskid` int(11) NOT NULL,
  `description` text NOT NULL,
  `finished` int(11) NOT NULL DEFAULT '0',
  `dateadded` datetime NOT NULL,
  `addedfrom` int(11) NOT NULL,
  `finished_from` int(11) DEFAULT '0',
  `list_order` int(11) NOT NULL DEFAULT '0',
  `assigned` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltask_comments`
--

CREATE TABLE `tbltask_comments` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `taskid` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `file_id` int(11) NOT NULL DEFAULT '0',
  `dateadded` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltask_followers`
--

CREATE TABLE `tbltask_followers` (
  `id` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `taskid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltaxes`
--

CREATE TABLE `tbltaxes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `taxrate` decimal(15,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltemplates`
--

CREATE TABLE `tbltemplates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL,
  `addedfrom` int(11) NOT NULL,
  `content` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltickets`
--

CREATE TABLE `tbltickets` (
  `ticketid` int(11) NOT NULL,
  `adminreplying` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL,
  `contactid` int(11) NOT NULL DEFAULT '0',
  `email` text,
  `name` text,
  `department` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `service` int(11) DEFAULT NULL,
  `ticketkey` varchar(32) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `message` text,
  `admin` int(11) DEFAULT NULL,
  `date` datetime NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `lastreply` datetime DEFAULT NULL,
  `clientread` int(11) NOT NULL DEFAULT '0',
  `adminread` int(11) NOT NULL DEFAULT '0',
  `assigned` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbltickets`
--

INSERT INTO `tbltickets` (`ticketid`, `adminreplying`, `userid`, `contactid`, `email`, `name`, `department`, `priority`, `status`, `service`, `ticketkey`, `subject`, `message`, `admin`, `date`, `project_id`, `lastreply`, `clientread`, `adminread`, `assigned`) VALUES
(1, 0, 1, 1, NULL, NULL, 1, 2, 1, 0, 'b1eeddce537bd8efde7c3d2024918cc6', '01', '', 1, '2021-06-06 02:10:51', 0, NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbltickets_pipe_log`
--

CREATE TABLE `tbltickets_pipe_log` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `email_to` varchar(100) NOT NULL,
  `name` varchar(191) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `message` mediumtext NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltickets_predefined_replies`
--

CREATE TABLE `tbltickets_predefined_replies` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltickets_priorities`
--

CREATE TABLE `tbltickets_priorities` (
  `priorityid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbltickets_priorities`
--

INSERT INTO `tbltickets_priorities` (`priorityid`, `name`) VALUES
(1, 'Low'),
(2, 'Medium'),
(3, 'High');

-- --------------------------------------------------------

--
-- Table structure for table `tbltickets_status`
--

CREATE TABLE `tbltickets_status` (
  `ticketstatusid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `isdefault` int(11) NOT NULL DEFAULT '0',
  `statuscolor` varchar(7) DEFAULT NULL,
  `statusorder` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbltickets_status`
--

INSERT INTO `tbltickets_status` (`ticketstatusid`, `name`, `isdefault`, `statuscolor`, `statusorder`) VALUES
(1, 'Open', 1, '#ff2d42', 1),
(2, 'In progress', 1, '#84c529', 2),
(3, 'Answered', 1, '#0000ff', 3),
(4, 'On Hold', 1, '#c0c0c0', 4),
(5, 'Closed', 1, '#03a9f4', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tblticket_attachments`
--

CREATE TABLE `tblticket_attachments` (
  `id` int(11) NOT NULL,
  `ticketid` int(11) NOT NULL,
  `replyid` int(11) DEFAULT NULL,
  `file_name` varchar(191) NOT NULL,
  `filetype` varchar(50) DEFAULT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblticket_replies`
--

CREATE TABLE `tblticket_replies` (
  `id` int(11) NOT NULL,
  `ticketid` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `contactid` int(11) NOT NULL DEFAULT '0',
  `name` text,
  `email` text,
  `date` datetime NOT NULL,
  `message` text,
  `attachment` int(11) DEFAULT NULL,
  `admin` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltodos`
--

CREATE TABLE `tbltodos` (
  `todoid` int(11) NOT NULL,
  `description` text NOT NULL,
  `staffid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `finished` tinyint(1) NOT NULL,
  `datefinished` datetime DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltracked_mails`
--

CREATE TABLE `tbltracked_mails` (
  `id` int(11) NOT NULL,
  `uid` varchar(32) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(40) NOT NULL,
  `date` datetime NOT NULL,
  `email` varchar(100) NOT NULL,
  `opened` tinyint(1) NOT NULL DEFAULT '0',
  `date_opened` datetime DEFAULT NULL,
  `subject` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltwocheckout_log`
--

CREATE TABLE `tbltwocheckout_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference` varchar(64) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `amount` varchar(25) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbluser_auto_login`
--

CREATE TABLE `tbluser_auto_login` (
  `key_id` char(32) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_agent` varchar(150) NOT NULL,
  `last_ip` varchar(40) NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `staff` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbluser_meta`
--

CREATE TABLE `tbluser_meta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `staff_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `client_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `contact_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(191) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbluser_meta`
--

INSERT INTO `tbluser_meta` (`umeta_id`, `staff_id`, `client_id`, `contact_id`, `meta_key`, `meta_value`) VALUES
(1, 0, 0, 1, 'consent_key', '4ce2093080ddd6a75e5abe3f4884fe6c-f79d25d46ec5484c05004fa9b57c2009'),
(2, 1, 0, 0, 'appointly_show_summary', '1'),
(3, 1, 0, 0, 'appointly_default_table_filter', ''),
(4, 1, 0, 0, 'dashboard_widgets_order', 'a:8:{s:6:\"top-12\";a:1:{i:0;s:16:\"widget-top_stats\";}s:13:\"middle-left-6\";a:0:{}s:14:\"middle-right-6\";a:0:{}s:6:\"left-8\";a:5:{i:0;s:25:\"widget-today_appointments\";i:1;s:16:\"widget-user_data\";i:2;s:22:\"widget-upcoming_events\";i:3;s:15:\"widget-calendar\";i:4;s:28:\"widget-weekly_payments_chart\";}s:7:\"right-4\";a:4:{i:0;s:12:\"widget-todos\";i:1;s:18:\"widget-leads_chart\";i:2;s:21:\"widget-projects_chart\";i:3;s:20:\"widget-tickets_chart\";}s:13:\"bottom-left-4\";a:0:{}s:15:\"bottom-middle-4\";a:0:{}s:14:\"bottom-right-4\";a:0:{}}'),
(5, 1, 0, 0, 'recent_searches', '[\"Erp\"]'),
(6, 1, 0, 0, 'dashboard_widgets_visibility', 'a:8:{i:0;a:2:{s:2:\"id\";s:9:\"top_stats\";s:7:\"visible\";s:1:\"1\";}i:1;a:2:{s:2:\"id\";s:18:\"today_appointments\";s:7:\"visible\";s:1:\"1\";}i:2;a:2:{s:2:\"id\";s:9:\"user_data\";s:7:\"visible\";s:1:\"1\";}i:3;a:2:{s:2:\"id\";s:8:\"calendar\";s:7:\"visible\";s:1:\"1\";}i:4;a:2:{s:2:\"id\";s:21:\"weekly_payments_chart\";s:7:\"visible\";s:1:\"1\";}i:5;a:2:{s:2:\"id\";s:5:\"todos\";s:7:\"visible\";s:1:\"1\";}i:6;a:2:{s:2:\"id\";s:11:\"leads_chart\";s:7:\"visible\";s:1:\"1\";}i:7;a:2:{s:2:\"id\";s:13:\"tickets_chart\";s:7:\"visible\";s:1:\"1\";}}'),
(7, 1, 0, 0, 'tasks-table-last-order', '[[5,\"asc\"]]'),
(8, 1, 0, 0, 'customers-table-last-order', '[[2,\"asc\"]]'),
(9, 1, 0, 0, 'projects-table-last-order', '[[5,\"asc\"]]'),
(10, 1, 0, 0, 'expenses-table-last-order', '[[5,\"desc\"]]'),
(11, 1, 0, 0, 'contracts-table-last-order', '[[6,\"asc\"]]'),
(12, 1, 0, 0, 'tickets-table-last-order', '[[10,\"desc\"]]'),
(13, 1, 0, 0, 'leads-table-last-order', '[[12,\"desc\"]]'),
(14, 1, 0, 0, 'kb-articles-table-last-order', '[[2,\"desc\"]]');

-- --------------------------------------------------------

--
-- Table structure for table `tblvault`
--

CREATE TABLE `tblvault` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `server_address` varchar(191) NOT NULL,
  `port` int(11) DEFAULT NULL,
  `username` varchar(191) NOT NULL,
  `password` text NOT NULL,
  `description` text,
  `creator` int(11) NOT NULL,
  `creator_name` varchar(100) DEFAULT NULL,
  `visibility` tinyint(1) NOT NULL DEFAULT '1',
  `share_in_projects` tinyint(1) NOT NULL DEFAULT '0',
  `last_updated` datetime DEFAULT NULL,
  `last_updated_from` varchar(100) DEFAULT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblviews_tracking`
--

CREATE TABLE `tblviews_tracking` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(40) NOT NULL,
  `date` datetime NOT NULL,
  `view_ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblwarehouse`
--

CREATE TABLE `tblwarehouse` (
  `warehouse_id` int(11) UNSIGNED NOT NULL,
  `warehouse_code` varchar(100) DEFAULT NULL,
  `warehouse_name` text,
  `warehouse_address` text,
  `order` int(10) DEFAULT NULL,
  `display` int(1) DEFAULT NULL COMMENT 'display 1: display (yes)  0: not displayed (no)',
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblwarehouse`
--

INSERT INTO `tblwarehouse` (`warehouse_id`, `warehouse_code`, `warehouse_name`, `warehouse_address`, `order`, `display`, `note`) VALUES
(1, '1', 'Pañol', 'Puerto Madryn', 5, 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `tblware_body_type`
--

CREATE TABLE `tblware_body_type` (
  `body_type_id` int(11) UNSIGNED NOT NULL,
  `body_code` varchar(100) DEFAULT NULL,
  `body_name` text,
  `order` int(10) DEFAULT NULL,
  `display` int(1) DEFAULT NULL COMMENT 'display 1: display (yes)  0: not displayed (no)',
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblware_color`
--

CREATE TABLE `tblware_color` (
  `color_id` int(11) UNSIGNED NOT NULL,
  `color_code` varchar(100) DEFAULT NULL,
  `color_name` varchar(100) DEFAULT NULL,
  `color_hex` text,
  `order` int(10) DEFAULT NULL,
  `display` int(1) DEFAULT NULL COMMENT 'display 1: display (yes)  0: not displayed (no)',
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblware_commodity_type`
--

CREATE TABLE `tblware_commodity_type` (
  `commodity_type_id` int(11) UNSIGNED NOT NULL,
  `commondity_code` varchar(100) DEFAULT NULL,
  `commondity_name` text,
  `order` int(10) DEFAULT NULL,
  `display` int(1) DEFAULT NULL COMMENT 'display 1: display (yes)  0: not displayed (no)',
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblware_commodity_type`
--

INSERT INTO `tblware_commodity_type` (`commodity_type_id`, `commondity_code`, `commondity_name`, `order`, `display`, `note`) VALUES
(1, '50', 'Herramientas', 1, 1, 'Nota de las herramientas');

-- --------------------------------------------------------

--
-- Table structure for table `tblware_size_type`
--

CREATE TABLE `tblware_size_type` (
  `size_type_id` int(11) UNSIGNED NOT NULL,
  `size_code` varchar(100) DEFAULT NULL,
  `size_name` text,
  `size_symbol` text,
  `order` int(10) DEFAULT NULL,
  `display` int(1) DEFAULT NULL COMMENT 'display 1: display (yes)  0: not displayed (no)',
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblware_style_type`
--

CREATE TABLE `tblware_style_type` (
  `style_type_id` int(11) UNSIGNED NOT NULL,
  `style_code` varchar(100) DEFAULT NULL,
  `style_barcode` text,
  `style_name` text,
  `order` int(10) DEFAULT NULL,
  `display` int(1) DEFAULT NULL COMMENT 'display 1: display (yes)  0: not displayed (no)',
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblware_unit_type`
--

CREATE TABLE `tblware_unit_type` (
  `unit_type_id` int(11) UNSIGNED NOT NULL,
  `unit_code` varchar(100) DEFAULT NULL,
  `unit_name` text,
  `unit_symbol` text,
  `order` int(10) DEFAULT NULL,
  `display` int(1) DEFAULT NULL COMMENT 'display 1: display (yes)  0: not displayed (no)',
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblware_unit_type`
--

INSERT INTO `tblware_unit_type` (`unit_type_id`, `unit_code`, `unit_name`, `unit_symbol`, `order`, `display`, `note`) VALUES
(1, '1', 'Unidades', 'Un.', 1, 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `tblweb_to_lead`
--

CREATE TABLE `tblweb_to_lead` (
  `id` int(11) NOT NULL,
  `form_key` varchar(32) NOT NULL,
  `lead_source` int(11) NOT NULL,
  `lead_status` int(11) NOT NULL,
  `notify_lead_imported` int(11) NOT NULL DEFAULT '1',
  `notify_type` varchar(20) DEFAULT NULL,
  `notify_ids` mediumtext,
  `responsible` int(11) NOT NULL DEFAULT '0',
  `name` varchar(191) NOT NULL,
  `form_data` mediumtext,
  `recaptcha` int(11) NOT NULL DEFAULT '0',
  `submit_btn_name` varchar(40) DEFAULT NULL,
  `success_submit_msg` text,
  `language` varchar(40) DEFAULT NULL,
  `allow_duplicate` int(11) NOT NULL DEFAULT '1',
  `mark_public` int(11) NOT NULL DEFAULT '0',
  `track_duplicate_field` varchar(20) DEFAULT NULL,
  `track_duplicate_field_and` varchar(20) DEFAULT NULL,
  `create_task_on_duplicate` int(11) NOT NULL DEFAULT '0',
  `dateadded` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblwh_activity_log`
--

CREATE TABLE `tblwh_activity_log` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(45) NOT NULL,
  `staffid` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblwh_activity_log`
--

INSERT INTO `tblwh_activity_log` (`id`, `rel_id`, `rel_type`, `staffid`, `date`, `note`) VALUES
(1, 1, 'stock_import', 1, '2021-06-06 04:16:51', 'stock_import');

-- --------------------------------------------------------

--
-- Table structure for table `tblwh_approval_details`
--

CREATE TABLE `tblwh_approval_details` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(45) NOT NULL,
  `staffid` varchar(45) DEFAULT NULL,
  `approve` varchar(45) DEFAULT NULL,
  `note` text,
  `date` datetime DEFAULT NULL,
  `approve_action` varchar(255) DEFAULT NULL,
  `reject_action` varchar(255) DEFAULT NULL,
  `approve_value` varchar(255) DEFAULT NULL,
  `reject_value` varchar(255) DEFAULT NULL,
  `staff_approve` int(11) DEFAULT NULL,
  `action` varchar(45) DEFAULT NULL,
  `sender` int(11) DEFAULT NULL,
  `date_send` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblwh_approval_setting`
--

CREATE TABLE `tblwh_approval_setting` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `related` varchar(255) NOT NULL,
  `setting` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblwh_loss_adjustment`
--

CREATE TABLE `tblwh_loss_adjustment` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` varchar(15) DEFAULT NULL,
  `addfrom` int(11) DEFAULT NULL,
  `reason` longtext,
  `time` datetime DEFAULT NULL,
  `date_create` date NOT NULL,
  `status` int(11) NOT NULL,
  `warehouses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblwh_loss_adjustment_detail`
--

CREATE TABLE `tblwh_loss_adjustment_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `items` int(11) DEFAULT NULL,
  `unit` int(11) DEFAULT NULL,
  `current_number` int(15) DEFAULT NULL,
  `updates_number` int(15) DEFAULT NULL,
  `loss_adjustment` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblwh_sub_group`
--

CREATE TABLE `tblwh_sub_group` (
  `id` int(11) UNSIGNED NOT NULL,
  `sub_group_code` varchar(100) DEFAULT NULL,
  `sub_group_name` text,
  `order` int(10) DEFAULT NULL,
  `display` int(1) DEFAULT NULL COMMENT 'display 1: display (yes)  0: not displayed (no)',
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblwoocommere_store`
--

CREATE TABLE `tblwoocommere_store` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `url` varchar(350) DEFAULT NULL,
  `port` varchar(10) DEFAULT NULL,
  `token` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblwoocommere_store_detailt`
--

CREATE TABLE `tblwoocommere_store_detailt` (
  `id` int(11) UNSIGNED NOT NULL,
  `group_product_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `woocommere_store_id` int(11) NOT NULL,
  `prices` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblworkplace`
--

CREATE TABLE `tblworkplace` (
  `workplace_id` int(11) UNSIGNED NOT NULL,
  `workplace_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblwork_shift`
--

CREATE TABLE `tblwork_shift` (
  `id` int(11) NOT NULL,
  `shift_code` varchar(45) NOT NULL,
  `shift_name` varchar(200) NOT NULL,
  `shift_type` varchar(200) NOT NULL,
  `department` int(11) DEFAULT '0',
  `position` int(11) DEFAULT '0',
  `add_from` int(11) NOT NULL,
  `date_create` date DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `shifts_detail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_perfex_email_builder`
--

CREATE TABLE `tbl_perfex_email_builder` (
  `id` int(11) NOT NULL,
  `emailtemplateid` varchar(4) NOT NULL,
  `emailObject` text NOT NULL,
  `template` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblactivity_log`
--
ALTER TABLE `tblactivity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staffid` (`staffid`);

--
-- Indexes for table `tblallowance_type`
--
ALTER TABLE `tblallowance_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `tblannouncements`
--
ALTER TABLE `tblannouncements`
  ADD PRIMARY KEY (`announcementid`);

--
-- Indexes for table `tblappointly_appointments`
--
ALTER TABLE `tblappointly_appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblappointly_appointment_types`
--
ALTER TABLE `tblappointly_appointment_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblappointly_callbacks`
--
ALTER TABLE `tblappointly_callbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblappointly_callbacks_assignees`
--
ALTER TABLE `tblappointly_callbacks_assignees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblappointly_google`
--
ALTER TABLE `tblappointly_google`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblassets`
--
ALTER TABLE `tblassets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblassets_acction_1`
--
ALTER TABLE `tblassets_acction_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblassets_acction_2`
--
ALTER TABLE `tblassets_acction_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblassets_group`
--
ALTER TABLE `tblassets_group`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `tblasset_location`
--
ALTER TABLE `tblasset_location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `tblasset_unit`
--
ALTER TABLE `tblasset_unit`
  ADD PRIMARY KEY (`unit_id`);

--
-- Indexes for table `tblcart`
--
ALTER TABLE `tblcart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcart_detailt`
--
ALTER TABLE `tblcart_detailt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclients`
--
ALTER TABLE `tblclients`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `country` (`country`),
  ADD KEY `leadid` (`leadid`),
  ADD KEY `company` (`company`),
  ADD KEY `active` (`active`);

--
-- Indexes for table `tblconsents`
--
ALTER TABLE `tblconsents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purpose_id` (`purpose_id`),
  ADD KEY `contact_id` (`contact_id`),
  ADD KEY `lead_id` (`lead_id`);

--
-- Indexes for table `tblconsent_purposes`
--
ALTER TABLE `tblconsent_purposes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontacts`
--
ALTER TABLE `tblcontacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `firstname` (`firstname`),
  ADD KEY `lastname` (`lastname`),
  ADD KEY `email` (`email`),
  ADD KEY `is_primary` (`is_primary`);

--
-- Indexes for table `tblcontact_permissions`
--
ALTER TABLE `tblcontact_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontracts`
--
ALTER TABLE `tblcontracts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client` (`client`),
  ADD KEY `contract_type` (`contract_type`);

--
-- Indexes for table `tblcontracts_types`
--
ALTER TABLE `tblcontracts_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontract_comments`
--
ALTER TABLE `tblcontract_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontract_renewals`
--
ALTER TABLE `tblcontract_renewals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcountries`
--
ALTER TABLE `tblcountries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `tblcreditnotes`
--
ALTER TABLE `tblcreditnotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currency` (`currency`),
  ADD KEY `clientid` (`clientid`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `tblcreditnote_refunds`
--
ALTER TABLE `tblcreditnote_refunds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcredits`
--
ALTER TABLE `tblcredits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcurrencies`
--
ALTER TABLE `tblcurrencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcustomers_groups`
--
ALTER TABLE `tblcustomers_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tblcustomer_admins`
--
ALTER TABLE `tblcustomer_admins`
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `tblcustomer_groups`
--
ALTER TABLE `tblcustomer_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupid` (`groupid`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `tblcustomfields`
--
ALTER TABLE `tblcustomfields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcustomfieldsvalues`
--
ALTER TABLE `tblcustomfieldsvalues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `relid` (`relid`),
  ADD KEY `fieldto` (`fieldto`),
  ADD KEY `fieldid` (`fieldid`);

--
-- Indexes for table `tblcustom_templates`
--
ALTER TABLE `tblcustom_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblday_off`
--
ALTER TABLE `tblday_off`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`departmentid`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tbldismissed_announcements`
--
ALTER TABLE `tbldismissed_announcements`
  ADD PRIMARY KEY (`dismissedannouncementid`),
  ADD KEY `announcementid` (`announcementid`),
  ADD KEY `staff` (`staff`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `tblemaillists`
--
ALTER TABLE `tblemaillists`
  ADD PRIMARY KEY (`listid`);

--
-- Indexes for table `tblemailtemplates`
--
ALTER TABLE `tblemailtemplates`
  ADD PRIMARY KEY (`emailtemplateid`);

--
-- Indexes for table `tblestimates`
--
ALTER TABLE `tblestimates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientid` (`clientid`),
  ADD KEY `currency` (`currency`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `sale_agent` (`sale_agent`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tblestimate_requests`
--
ALTER TABLE `tblestimate_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblestimate_request_forms`
--
ALTER TABLE `tblestimate_request_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblestimate_request_status`
--
ALTER TABLE `tblestimate_request_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblevents`
--
ALTER TABLE `tblevents`
  ADD PRIMARY KEY (`eventid`);

--
-- Indexes for table `tblexpenses`
--
ALTER TABLE `tblexpenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientid` (`clientid`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `category` (`category`),
  ADD KEY `currency` (`currency`);

--
-- Indexes for table `tblexpenses_categories`
--
ALTER TABLE `tblexpenses_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblfeedback`
--
ALTER TABLE `tblfeedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblfiles`
--
ALTER TABLE `tblfiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`);

--
-- Indexes for table `tblform_questions`
--
ALTER TABLE `tblform_questions`
  ADD PRIMARY KEY (`questionid`);

--
-- Indexes for table `tblform_question_box`
--
ALTER TABLE `tblform_question_box`
  ADD PRIMARY KEY (`boxid`);

--
-- Indexes for table `tblform_question_box_description`
--
ALTER TABLE `tblform_question_box_description`
  ADD PRIMARY KEY (`questionboxdescriptionid`);

--
-- Indexes for table `tblform_results`
--
ALTER TABLE `tblform_results`
  ADD PRIMARY KEY (`resultid`);

--
-- Indexes for table `tblgdpr_requests`
--
ALTER TABLE `tblgdpr_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblgoods_delivery`
--
ALTER TABLE `tblgoods_delivery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblgoods_delivery_detail`
--
ALTER TABLE `tblgoods_delivery_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblgoods_receipt`
--
ALTER TABLE `tblgoods_receipt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblgoods_receipt_detail`
--
ALTER TABLE `tblgoods_receipt_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblgoods_transaction_detail`
--
ALTER TABLE `tblgoods_transaction_detail`
  ADD PRIMARY KEY (`id`,`commodity_id`,`warehouse_id`);

--
-- Indexes for table `tblhrm_option`
--
ALTER TABLE `tblhrm_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `tblhrm_timesheet`
--
ALTER TABLE `tblhrm_timesheet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblinsurance_type`
--
ALTER TABLE `tblinsurance_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblinventory_commodity_min`
--
ALTER TABLE `tblinventory_commodity_min`
  ADD PRIMARY KEY (`id`,`commodity_id`);

--
-- Indexes for table `tblinventory_history`
--
ALTER TABLE `tblinventory_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblinventory_manage`
--
ALTER TABLE `tblinventory_manage`
  ADD PRIMARY KEY (`id`,`commodity_id`,`warehouse_id`);

--
-- Indexes for table `tblinvoicepaymentrecords`
--
ALTER TABLE `tblinvoicepaymentrecords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoiceid` (`invoiceid`),
  ADD KEY `paymentmethod` (`paymentmethod`);

--
-- Indexes for table `tblinvoices`
--
ALTER TABLE `tblinvoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currency` (`currency`),
  ADD KEY `clientid` (`clientid`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `sale_agent` (`sale_agent`),
  ADD KEY `total` (`total`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tblitemable`
--
ALTER TABLE `tblitemable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`),
  ADD KEY `qty` (`qty`),
  ADD KEY `rate` (`rate`);

--
-- Indexes for table `tblitems`
--
ALTER TABLE `tblitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tax` (`tax`),
  ADD KEY `tax2` (`tax2`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `tblitems_groups`
--
ALTER TABLE `tblitems_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblitem_tax`
--
ALTER TABLE `tblitem_tax`
  ADD PRIMARY KEY (`id`),
  ADD KEY `itemid` (`itemid`),
  ADD KEY `rel_id` (`rel_id`);

--
-- Indexes for table `tbljob_position`
--
ALTER TABLE `tbljob_position`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `tblknowedge_base_article_feedback`
--
ALTER TABLE `tblknowedge_base_article_feedback`
  ADD PRIMARY KEY (`articleanswerid`);

--
-- Indexes for table `tblknowledge_base`
--
ALTER TABLE `tblknowledge_base`
  ADD PRIMARY KEY (`articleid`);

--
-- Indexes for table `tblknowledge_base_groups`
--
ALTER TABLE `tblknowledge_base_groups`
  ADD PRIMARY KEY (`groupid`);

--
-- Indexes for table `tblleads`
--
ALTER TABLE `tblleads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `company` (`company`),
  ADD KEY `email` (`email`),
  ADD KEY `assigned` (`assigned`),
  ADD KEY `status` (`status`),
  ADD KEY `source` (`source`),
  ADD KEY `lastcontact` (`lastcontact`),
  ADD KEY `dateadded` (`dateadded`),
  ADD KEY `leadorder` (`leadorder`),
  ADD KEY `from_form_id` (`from_form_id`);

--
-- Indexes for table `tblleads_email_integration`
--
ALTER TABLE `tblleads_email_integration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblleads_sources`
--
ALTER TABLE `tblleads_sources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tblleads_status`
--
ALTER TABLE `tblleads_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tbllead_activity_log`
--
ALTER TABLE `tbllead_activity_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbllead_integration_emails`
--
ALTER TABLE `tbllead_integration_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbllistemails`
--
ALTER TABLE `tbllistemails`
  ADD PRIMARY KEY (`emailid`);

--
-- Indexes for table `tblmaillistscustomfields`
--
ALTER TABLE `tblmaillistscustomfields`
  ADD PRIMARY KEY (`customfieldid`);

--
-- Indexes for table `tblmaillistscustomfieldvalues`
--
ALTER TABLE `tblmaillistscustomfieldvalues`
  ADD PRIMARY KEY (`customfieldvalueid`),
  ADD KEY `listid` (`listid`),
  ADD KEY `customfieldid` (`customfieldid`);

--
-- Indexes for table `tblmail_queue`
--
ALTER TABLE `tblmail_queue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmanage_leave`
--
ALTER TABLE `tblmanage_leave`
  ADD PRIMARY KEY (`leave_id`);

--
-- Indexes for table `tblmilestones`
--
ALTER TABLE `tblmilestones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmodules`
--
ALTER TABLE `tblmodules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnewsfeed_comment_likes`
--
ALTER TABLE `tblnewsfeed_comment_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnewsfeed_posts`
--
ALTER TABLE `tblnewsfeed_posts`
  ADD PRIMARY KEY (`postid`);

--
-- Indexes for table `tblnewsfeed_post_comments`
--
ALTER TABLE `tblnewsfeed_post_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnewsfeed_post_likes`
--
ALTER TABLE `tblnewsfeed_post_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnotes`
--
ALTER TABLE `tblnotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`);

--
-- Indexes for table `tblnotifications`
--
ALTER TABLE `tblnotifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblokrs`
--
ALTER TABLE `tblokrs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblokrs_checkin`
--
ALTER TABLE `tblokrs_checkin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblokrs_checkin_log`
--
ALTER TABLE `tblokrs_checkin_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblokrs_key_result`
--
ALTER TABLE `tblokrs_key_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblokrs_key_result_log`
--
ALTER TABLE `tblokrs_key_result_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblokrs_log`
--
ALTER TABLE `tblokrs_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblokr_setting_category`
--
ALTER TABLE `tblokr_setting_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblokr_setting_circulation`
--
ALTER TABLE `tblokr_setting_circulation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblokr_setting_evaluation_criteria`
--
ALTER TABLE `tblokr_setting_evaluation_criteria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblokr_setting_question`
--
ALTER TABLE `tblokr_setting_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblokr_setting_unit`
--
ALTER TABLE `tblokr_setting_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblomni_log_discount`
--
ALTER TABLE `tblomni_log_discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblomni_log_sync_woo`
--
ALTER TABLE `tblomni_log_sync_woo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblomni_master_channel_woocommere`
--
ALTER TABLE `tblomni_master_channel_woocommere`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblomni_trade_discount`
--
ALTER TABLE `tblomni_trade_discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbloptions`
--
ALTER TABLE `tbloptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tblpayment_modes`
--
ALTER TABLE `tblpayment_modes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpayroll_table`
--
ALTER TABLE `tblpayroll_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpayroll_type`
--
ALTER TABLE `tblpayroll_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpinned_projects`
--
ALTER TABLE `tblpinned_projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `tblprojectdiscussioncomments`
--
ALTER TABLE `tblprojectdiscussioncomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblprojectdiscussions`
--
ALTER TABLE `tblprojectdiscussions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblprojects`
--
ALTER TABLE `tblprojects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientid` (`clientid`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tblproject_activity`
--
ALTER TABLE `tblproject_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproject_files`
--
ALTER TABLE `tblproject_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproject_members`
--
ALTER TABLE `tblproject_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `tblproject_notes`
--
ALTER TABLE `tblproject_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproject_settings`
--
ALTER TABLE `tblproject_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `tblproposals`
--
ALTER TABLE `tblproposals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tblproposal_comments`
--
ALTER TABLE `tblproposal_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblprovince_city`
--
ALTER TABLE `tblprovince_city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpurchase_option`
--
ALTER TABLE `tblpurchase_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `tblpur_approval_details`
--
ALTER TABLE `tblpur_approval_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpur_approval_setting`
--
ALTER TABLE `tblpur_approval_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpur_contacts`
--
ALTER TABLE `tblpur_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpur_contracts`
--
ALTER TABLE `tblpur_contracts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpur_estimates`
--
ALTER TABLE `tblpur_estimates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpur_estimate_detail`
--
ALTER TABLE `tblpur_estimate_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpur_orders`
--
ALTER TABLE `tblpur_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpur_order_detail`
--
ALTER TABLE `tblpur_order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpur_order_payment`
--
ALTER TABLE `tblpur_order_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpur_request`
--
ALTER TABLE `tblpur_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpur_request_detail`
--
ALTER TABLE `tblpur_request_detail`
  ADD PRIMARY KEY (`prd_id`);

--
-- Indexes for table `tblpur_unit`
--
ALTER TABLE `tblpur_unit`
  ADD PRIMARY KEY (`unit_id`);

--
-- Indexes for table `tblpur_vendor`
--
ALTER TABLE `tblpur_vendor`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `tblrelated_items`
--
ALTER TABLE `tblrelated_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblreminders`
--
ALTER TABLE `tblreminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`),
  ADD KEY `staff` (`staff`);

--
-- Indexes for table `tblrequest`
--
ALTER TABLE `tblrequest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblrequest_approval_details`
--
ALTER TABLE `tblrequest_approval_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblrequest_files`
--
ALTER TABLE `tblrequest_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblrequest_follow`
--
ALTER TABLE `tblrequest_follow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblrequest_form`
--
ALTER TABLE `tblrequest_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblrequest_log`
--
ALTER TABLE `tblrequest_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblrequest_related`
--
ALTER TABLE `tblrequest_related`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblrequest_type`
--
ALTER TABLE `tblrequest_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblrequest_type_form`
--
ALTER TABLE `tblrequest_type_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblrequest_type_workflow`
--
ALTER TABLE `tblrequest_type_workflow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblroles`
--
ALTER TABLE `tblroles`
  ADD PRIMARY KEY (`roleid`);

--
-- Indexes for table `tblsalary_form`
--
ALTER TABLE `tblsalary_form`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `tblsales_activity`
--
ALTER TABLE `tblsales_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsales_channel`
--
ALTER TABLE `tblsales_channel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsales_channel_detailt`
--
ALTER TABLE `tblsales_channel_detailt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblscheduled_emails`
--
ALTER TABLE `tblscheduled_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`serviceid`);

--
-- Indexes for table `tblsessions`
--
ALTER TABLE `tblsessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `tblsi_task_filter`
--
ALTER TABLE `tblsi_task_filter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `tblspam_filters`
--
ALTER TABLE `tblspam_filters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstaff`
--
ALTER TABLE `tblstaff`
  ADD PRIMARY KEY (`staffid`),
  ADD KEY `firstname` (`firstname`),
  ADD KEY `lastname` (`lastname`);

--
-- Indexes for table `tblstaff_contract`
--
ALTER TABLE `tblstaff_contract`
  ADD PRIMARY KEY (`id_contract`);

--
-- Indexes for table `tblstaff_contracttype`
--
ALTER TABLE `tblstaff_contracttype`
  ADD PRIMARY KEY (`id_contracttype`);

--
-- Indexes for table `tblstaff_contract_detail`
--
ALTER TABLE `tblstaff_contract_detail`
  ADD PRIMARY KEY (`contract_detail_id`);

--
-- Indexes for table `tblstaff_departments`
--
ALTER TABLE `tblstaff_departments`
  ADD PRIMARY KEY (`staffdepartmentid`);

--
-- Indexes for table `tblstaff_insurance`
--
ALTER TABLE `tblstaff_insurance`
  ADD PRIMARY KEY (`insurance_id`);

--
-- Indexes for table `tblstaff_insurance_history`
--
ALTER TABLE `tblstaff_insurance_history`
  ADD PRIMARY KEY (`id`,`insurance_id`);

--
-- Indexes for table `tblstock_take`
--
ALTER TABLE `tblstock_take`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstock_take_detail`
--
ALTER TABLE `tblstock_take_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscriptions`
--
ALTER TABLE `tblsubscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientid` (`clientid`),
  ADD KEY `currency` (`currency`),
  ADD KEY `tax_id` (`tax_id`);

--
-- Indexes for table `tblsurveyresultsets`
--
ALTER TABLE `tblsurveyresultsets`
  ADD PRIMARY KEY (`resultsetid`);

--
-- Indexes for table `tblsurveys`
--
ALTER TABLE `tblsurveys`
  ADD PRIMARY KEY (`surveyid`);

--
-- Indexes for table `tblsurveysemailsendcron`
--
ALTER TABLE `tblsurveysemailsendcron`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsurveysendlog`
--
ALTER TABLE `tblsurveysendlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltaggables`
--
ALTER TABLE `tbltaggables`
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `tbltags`
--
ALTER TABLE `tbltags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tbltasks`
--
ALTER TABLE `tbltasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`),
  ADD KEY `milestone` (`milestone`),
  ADD KEY `kanban_order` (`kanban_order`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbltaskstimers`
--
ALTER TABLE `tbltaskstimers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_id` (`task_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `tbltasks_checklist_templates`
--
ALTER TABLE `tbltasks_checklist_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltask_assigned`
--
ALTER TABLE `tbltask_assigned`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taskid` (`taskid`),
  ADD KEY `staffid` (`staffid`);

--
-- Indexes for table `tbltask_checklist_items`
--
ALTER TABLE `tbltask_checklist_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taskid` (`taskid`);

--
-- Indexes for table `tbltask_comments`
--
ALTER TABLE `tbltask_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `file_id` (`file_id`),
  ADD KEY `taskid` (`taskid`);

--
-- Indexes for table `tbltask_followers`
--
ALTER TABLE `tbltask_followers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltaxes`
--
ALTER TABLE `tbltaxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltemplates`
--
ALTER TABLE `tbltemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltickets`
--
ALTER TABLE `tbltickets`
  ADD PRIMARY KEY (`ticketid`),
  ADD KEY `service` (`service`),
  ADD KEY `department` (`department`),
  ADD KEY `status` (`status`),
  ADD KEY `userid` (`userid`),
  ADD KEY `priority` (`priority`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `contactid` (`contactid`);

--
-- Indexes for table `tbltickets_pipe_log`
--
ALTER TABLE `tbltickets_pipe_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltickets_predefined_replies`
--
ALTER TABLE `tbltickets_predefined_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltickets_priorities`
--
ALTER TABLE `tbltickets_priorities`
  ADD PRIMARY KEY (`priorityid`);

--
-- Indexes for table `tbltickets_status`
--
ALTER TABLE `tbltickets_status`
  ADD PRIMARY KEY (`ticketstatusid`);

--
-- Indexes for table `tblticket_attachments`
--
ALTER TABLE `tblticket_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblticket_replies`
--
ALTER TABLE `tblticket_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltodos`
--
ALTER TABLE `tbltodos`
  ADD PRIMARY KEY (`todoid`);

--
-- Indexes for table `tbltracked_mails`
--
ALTER TABLE `tbltracked_mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltwocheckout_log`
--
ALTER TABLE `tbltwocheckout_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_id` (`invoice_id`);

--
-- Indexes for table `tbluser_meta`
--
ALTER TABLE `tbluser_meta`
  ADD PRIMARY KEY (`umeta_id`);

--
-- Indexes for table `tblvault`
--
ALTER TABLE `tblvault`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblviews_tracking`
--
ALTER TABLE `tblviews_tracking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblwarehouse`
--
ALTER TABLE `tblwarehouse`
  ADD PRIMARY KEY (`warehouse_id`);

--
-- Indexes for table `tblware_body_type`
--
ALTER TABLE `tblware_body_type`
  ADD PRIMARY KEY (`body_type_id`);

--
-- Indexes for table `tblware_color`
--
ALTER TABLE `tblware_color`
  ADD PRIMARY KEY (`color_id`);

--
-- Indexes for table `tblware_commodity_type`
--
ALTER TABLE `tblware_commodity_type`
  ADD PRIMARY KEY (`commodity_type_id`);

--
-- Indexes for table `tblware_size_type`
--
ALTER TABLE `tblware_size_type`
  ADD PRIMARY KEY (`size_type_id`);

--
-- Indexes for table `tblware_style_type`
--
ALTER TABLE `tblware_style_type`
  ADD PRIMARY KEY (`style_type_id`);

--
-- Indexes for table `tblware_unit_type`
--
ALTER TABLE `tblware_unit_type`
  ADD PRIMARY KEY (`unit_type_id`);

--
-- Indexes for table `tblweb_to_lead`
--
ALTER TABLE `tblweb_to_lead`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblwh_activity_log`
--
ALTER TABLE `tblwh_activity_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblwh_approval_details`
--
ALTER TABLE `tblwh_approval_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblwh_approval_setting`
--
ALTER TABLE `tblwh_approval_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblwh_loss_adjustment`
--
ALTER TABLE `tblwh_loss_adjustment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblwh_loss_adjustment_detail`
--
ALTER TABLE `tblwh_loss_adjustment_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblwh_sub_group`
--
ALTER TABLE `tblwh_sub_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblwoocommere_store`
--
ALTER TABLE `tblwoocommere_store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblwoocommere_store_detailt`
--
ALTER TABLE `tblwoocommere_store_detailt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblworkplace`
--
ALTER TABLE `tblworkplace`
  ADD PRIMARY KEY (`workplace_id`);

--
-- Indexes for table `tblwork_shift`
--
ALTER TABLE `tblwork_shift`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_perfex_email_builder`
--
ALTER TABLE `tbl_perfex_email_builder`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblactivity_log`
--
ALTER TABLE `tblactivity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tblallowance_type`
--
ALTER TABLE `tblallowance_type`
  MODIFY `type_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblannouncements`
--
ALTER TABLE `tblannouncements`
  MODIFY `announcementid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblappointly_appointments`
--
ALTER TABLE `tblappointly_appointments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblappointly_appointment_types`
--
ALTER TABLE `tblappointly_appointment_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblappointly_callbacks`
--
ALTER TABLE `tblappointly_callbacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblappointly_callbacks_assignees`
--
ALTER TABLE `tblappointly_callbacks_assignees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblappointly_google`
--
ALTER TABLE `tblappointly_google`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblassets`
--
ALTER TABLE `tblassets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblassets_acction_1`
--
ALTER TABLE `tblassets_acction_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblassets_acction_2`
--
ALTER TABLE `tblassets_acction_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblassets_group`
--
ALTER TABLE `tblassets_group`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblasset_location`
--
ALTER TABLE `tblasset_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblasset_unit`
--
ALTER TABLE `tblasset_unit`
  MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcart`
--
ALTER TABLE `tblcart`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcart_detailt`
--
ALTER TABLE `tblcart_detailt`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblclients`
--
ALTER TABLE `tblclients`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblconsents`
--
ALTER TABLE `tblconsents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblconsent_purposes`
--
ALTER TABLE `tblconsent_purposes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcontacts`
--
ALTER TABLE `tblcontacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontact_permissions`
--
ALTER TABLE `tblcontact_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblcontracts`
--
ALTER TABLE `tblcontracts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcontracts_types`
--
ALTER TABLE `tblcontracts_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcontract_comments`
--
ALTER TABLE `tblcontract_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcontract_renewals`
--
ALTER TABLE `tblcontract_renewals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcountries`
--
ALTER TABLE `tblcountries`
  MODIFY `country_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `tblcreditnotes`
--
ALTER TABLE `tblcreditnotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcreditnote_refunds`
--
ALTER TABLE `tblcreditnote_refunds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcredits`
--
ALTER TABLE `tblcredits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcurrencies`
--
ALTER TABLE `tblcurrencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcustomers_groups`
--
ALTER TABLE `tblcustomers_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcustomer_groups`
--
ALTER TABLE `tblcustomer_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcustomfields`
--
ALTER TABLE `tblcustomfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcustomfieldsvalues`
--
ALTER TABLE `tblcustomfieldsvalues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcustom_templates`
--
ALTER TABLE `tblcustom_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblday_off`
--
ALTER TABLE `tblday_off`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `departmentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbldismissed_announcements`
--
ALTER TABLE `tbldismissed_announcements`
  MODIFY `dismissedannouncementid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblemaillists`
--
ALTER TABLE `tblemaillists`
  MODIFY `listid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblemailtemplates`
--
ALTER TABLE `tblemailtemplates`
  MODIFY `emailtemplateid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `tblestimates`
--
ALTER TABLE `tblestimates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblestimate_requests`
--
ALTER TABLE `tblestimate_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblestimate_request_forms`
--
ALTER TABLE `tblestimate_request_forms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblestimate_request_status`
--
ALTER TABLE `tblestimate_request_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblevents`
--
ALTER TABLE `tblevents`
  MODIFY `eventid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblexpenses`
--
ALTER TABLE `tblexpenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblexpenses_categories`
--
ALTER TABLE `tblexpenses_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblfeedback`
--
ALTER TABLE `tblfeedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblfiles`
--
ALTER TABLE `tblfiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblform_questions`
--
ALTER TABLE `tblform_questions`
  MODIFY `questionid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblform_question_box`
--
ALTER TABLE `tblform_question_box`
  MODIFY `boxid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblform_question_box_description`
--
ALTER TABLE `tblform_question_box_description`
  MODIFY `questionboxdescriptionid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblform_results`
--
ALTER TABLE `tblform_results`
  MODIFY `resultid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblgdpr_requests`
--
ALTER TABLE `tblgdpr_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblgoods_delivery`
--
ALTER TABLE `tblgoods_delivery`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblgoods_delivery_detail`
--
ALTER TABLE `tblgoods_delivery_detail`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblgoods_receipt`
--
ALTER TABLE `tblgoods_receipt`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblgoods_receipt_detail`
--
ALTER TABLE `tblgoods_receipt_detail`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblgoods_transaction_detail`
--
ALTER TABLE `tblgoods_transaction_detail`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblhrm_option`
--
ALTER TABLE `tblhrm_option`
  MODIFY `option_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tblhrm_timesheet`
--
ALTER TABLE `tblhrm_timesheet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblinsurance_type`
--
ALTER TABLE `tblinsurance_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblinventory_commodity_min`
--
ALTER TABLE `tblinventory_commodity_min`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblinventory_history`
--
ALTER TABLE `tblinventory_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblinventory_manage`
--
ALTER TABLE `tblinventory_manage`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblinvoicepaymentrecords`
--
ALTER TABLE `tblinvoicepaymentrecords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblinvoices`
--
ALTER TABLE `tblinvoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblitemable`
--
ALTER TABLE `tblitemable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblitems`
--
ALTER TABLE `tblitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblitems_groups`
--
ALTER TABLE `tblitems_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblitem_tax`
--
ALTER TABLE `tblitem_tax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbljob_position`
--
ALTER TABLE `tbljob_position`
  MODIFY `position_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblknowedge_base_article_feedback`
--
ALTER TABLE `tblknowedge_base_article_feedback`
  MODIFY `articleanswerid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblknowledge_base`
--
ALTER TABLE `tblknowledge_base`
  MODIFY `articleid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblknowledge_base_groups`
--
ALTER TABLE `tblknowledge_base_groups`
  MODIFY `groupid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblleads`
--
ALTER TABLE `tblleads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblleads_email_integration`
--
ALTER TABLE `tblleads_email_integration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'the ID always must be 1', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblleads_sources`
--
ALTER TABLE `tblleads_sources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblleads_status`
--
ALTER TABLE `tblleads_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbllead_activity_log`
--
ALTER TABLE `tbllead_activity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbllead_integration_emails`
--
ALTER TABLE `tbllead_integration_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbllistemails`
--
ALTER TABLE `tbllistemails`
  MODIFY `emailid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblmaillistscustomfields`
--
ALTER TABLE `tblmaillistscustomfields`
  MODIFY `customfieldid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblmaillistscustomfieldvalues`
--
ALTER TABLE `tblmaillistscustomfieldvalues`
  MODIFY `customfieldvalueid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblmail_queue`
--
ALTER TABLE `tblmail_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblmanage_leave`
--
ALTER TABLE `tblmanage_leave`
  MODIFY `leave_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblmilestones`
--
ALTER TABLE `tblmilestones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblmodules`
--
ALTER TABLE `tblmodules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblnewsfeed_comment_likes`
--
ALTER TABLE `tblnewsfeed_comment_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblnewsfeed_posts`
--
ALTER TABLE `tblnewsfeed_posts`
  MODIFY `postid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblnewsfeed_post_comments`
--
ALTER TABLE `tblnewsfeed_post_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblnewsfeed_post_likes`
--
ALTER TABLE `tblnewsfeed_post_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblnotes`
--
ALTER TABLE `tblnotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblnotifications`
--
ALTER TABLE `tblnotifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblokrs`
--
ALTER TABLE `tblokrs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblokrs_checkin`
--
ALTER TABLE `tblokrs_checkin`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblokrs_checkin_log`
--
ALTER TABLE `tblokrs_checkin_log`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblokrs_key_result`
--
ALTER TABLE `tblokrs_key_result`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblokrs_key_result_log`
--
ALTER TABLE `tblokrs_key_result_log`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblokrs_log`
--
ALTER TABLE `tblokrs_log`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblokr_setting_category`
--
ALTER TABLE `tblokr_setting_category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblokr_setting_circulation`
--
ALTER TABLE `tblokr_setting_circulation`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblokr_setting_evaluation_criteria`
--
ALTER TABLE `tblokr_setting_evaluation_criteria`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblokr_setting_question`
--
ALTER TABLE `tblokr_setting_question`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblokr_setting_unit`
--
ALTER TABLE `tblokr_setting_unit`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblomni_log_discount`
--
ALTER TABLE `tblomni_log_discount`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblomni_log_sync_woo`
--
ALTER TABLE `tblomni_log_sync_woo`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblomni_master_channel_woocommere`
--
ALTER TABLE `tblomni_master_channel_woocommere`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblomni_trade_discount`
--
ALTER TABLE `tblomni_trade_discount`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbloptions`
--
ALTER TABLE `tbloptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT for table `tblpayment_modes`
--
ALTER TABLE `tblpayment_modes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpayroll_table`
--
ALTER TABLE `tblpayroll_table`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpayroll_type`
--
ALTER TABLE `tblpayroll_type`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpinned_projects`
--
ALTER TABLE `tblpinned_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblprojectdiscussioncomments`
--
ALTER TABLE `tblprojectdiscussioncomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblprojectdiscussions`
--
ALTER TABLE `tblprojectdiscussions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblprojects`
--
ALTER TABLE `tblprojects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblproject_activity`
--
ALTER TABLE `tblproject_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblproject_files`
--
ALTER TABLE `tblproject_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblproject_members`
--
ALTER TABLE `tblproject_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblproject_notes`
--
ALTER TABLE `tblproject_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblproject_settings`
--
ALTER TABLE `tblproject_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblproposals`
--
ALTER TABLE `tblproposals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblproposal_comments`
--
ALTER TABLE `tblproposal_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblprovince_city`
--
ALTER TABLE `tblprovince_city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpurchase_option`
--
ALTER TABLE `tblpurchase_option`
  MODIFY `option_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpur_approval_details`
--
ALTER TABLE `tblpur_approval_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpur_approval_setting`
--
ALTER TABLE `tblpur_approval_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpur_contacts`
--
ALTER TABLE `tblpur_contacts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpur_contracts`
--
ALTER TABLE `tblpur_contracts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpur_estimates`
--
ALTER TABLE `tblpur_estimates`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpur_estimate_detail`
--
ALTER TABLE `tblpur_estimate_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpur_orders`
--
ALTER TABLE `tblpur_orders`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpur_order_detail`
--
ALTER TABLE `tblpur_order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpur_order_payment`
--
ALTER TABLE `tblpur_order_payment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpur_request`
--
ALTER TABLE `tblpur_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpur_request_detail`
--
ALTER TABLE `tblpur_request_detail`
  MODIFY `prd_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpur_unit`
--
ALTER TABLE `tblpur_unit`
  MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpur_vendor`
--
ALTER TABLE `tblpur_vendor`
  MODIFY `userid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblrelated_items`
--
ALTER TABLE `tblrelated_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblreminders`
--
ALTER TABLE `tblreminders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblrequest`
--
ALTER TABLE `tblrequest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblrequest_approval_details`
--
ALTER TABLE `tblrequest_approval_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblrequest_files`
--
ALTER TABLE `tblrequest_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblrequest_follow`
--
ALTER TABLE `tblrequest_follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblrequest_form`
--
ALTER TABLE `tblrequest_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblrequest_log`
--
ALTER TABLE `tblrequest_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblrequest_related`
--
ALTER TABLE `tblrequest_related`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblrequest_type`
--
ALTER TABLE `tblrequest_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblrequest_type_form`
--
ALTER TABLE `tblrequest_type_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblrequest_type_workflow`
--
ALTER TABLE `tblrequest_type_workflow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblroles`
--
ALTER TABLE `tblroles`
  MODIFY `roleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblsalary_form`
--
ALTER TABLE `tblsalary_form`
  MODIFY `form_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblsales_activity`
--
ALTER TABLE `tblsales_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblsales_channel`
--
ALTER TABLE `tblsales_channel`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblsales_channel_detailt`
--
ALTER TABLE `tblsales_channel_detailt`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblscheduled_emails`
--
ALTER TABLE `tblscheduled_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `serviceid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblsi_task_filter`
--
ALTER TABLE `tblsi_task_filter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblspam_filters`
--
ALTER TABLE `tblspam_filters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblstaff`
--
ALTER TABLE `tblstaff`
  MODIFY `staffid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblstaff_contract`
--
ALTER TABLE `tblstaff_contract`
  MODIFY `id_contract` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblstaff_contracttype`
--
ALTER TABLE `tblstaff_contracttype`
  MODIFY `id_contracttype` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblstaff_contract_detail`
--
ALTER TABLE `tblstaff_contract_detail`
  MODIFY `contract_detail_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblstaff_departments`
--
ALTER TABLE `tblstaff_departments`
  MODIFY `staffdepartmentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblstaff_insurance`
--
ALTER TABLE `tblstaff_insurance`
  MODIFY `insurance_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblstaff_insurance_history`
--
ALTER TABLE `tblstaff_insurance_history`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblstock_take`
--
ALTER TABLE `tblstock_take`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblstock_take_detail`
--
ALTER TABLE `tblstock_take_detail`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblsubscriptions`
--
ALTER TABLE `tblsubscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblsurveyresultsets`
--
ALTER TABLE `tblsurveyresultsets`
  MODIFY `resultsetid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblsurveys`
--
ALTER TABLE `tblsurveys`
  MODIFY `surveyid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblsurveysemailsendcron`
--
ALTER TABLE `tblsurveysemailsendcron`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblsurveysendlog`
--
ALTER TABLE `tblsurveysendlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltags`
--
ALTER TABLE `tbltags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltasks`
--
ALTER TABLE `tbltasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltaskstimers`
--
ALTER TABLE `tbltaskstimers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltasks_checklist_templates`
--
ALTER TABLE `tbltasks_checklist_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltask_assigned`
--
ALTER TABLE `tbltask_assigned`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltask_checklist_items`
--
ALTER TABLE `tbltask_checklist_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltask_comments`
--
ALTER TABLE `tbltask_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltask_followers`
--
ALTER TABLE `tbltask_followers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltaxes`
--
ALTER TABLE `tbltaxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltemplates`
--
ALTER TABLE `tbltemplates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltickets`
--
ALTER TABLE `tbltickets`
  MODIFY `ticketid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbltickets_pipe_log`
--
ALTER TABLE `tbltickets_pipe_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltickets_predefined_replies`
--
ALTER TABLE `tbltickets_predefined_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltickets_priorities`
--
ALTER TABLE `tbltickets_priorities`
  MODIFY `priorityid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbltickets_status`
--
ALTER TABLE `tbltickets_status`
  MODIFY `ticketstatusid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblticket_attachments`
--
ALTER TABLE `tblticket_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblticket_replies`
--
ALTER TABLE `tblticket_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltodos`
--
ALTER TABLE `tbltodos`
  MODIFY `todoid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltracked_mails`
--
ALTER TABLE `tbltracked_mails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltwocheckout_log`
--
ALTER TABLE `tbltwocheckout_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbluser_meta`
--
ALTER TABLE `tbluser_meta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblvault`
--
ALTER TABLE `tblvault`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblviews_tracking`
--
ALTER TABLE `tblviews_tracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblwarehouse`
--
ALTER TABLE `tblwarehouse`
  MODIFY `warehouse_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
