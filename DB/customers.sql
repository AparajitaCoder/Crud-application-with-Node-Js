-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2019 at 08:21 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.1.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `customers`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `id` int(11) NOT NULL,
  `referral_code` varchar(25) DEFAULT NULL,
  `name` varchar(110) NOT NULL,
  `first_name` varchar(55) DEFAULT NULL,
  `last_name` varchar(55) DEFAULT NULL,
  `mobile` varchar(25) NOT NULL,
  `fb_id` varchar(110) NOT NULL COMMENT 'facebook id',
  `gp_id` varchar(110) NOT NULL COMMENT 'google plus id',
  `email` varchar(255) NOT NULL,
  `email_verify` enum('0','1') NOT NULL DEFAULT '0',
  `show_profile_picture` int(11) NOT NULL DEFAULT '0',
  `picture_url` varchar(1000) DEFAULT NULL,
  `login_type` varchar(25) DEFAULT NULL COMMENT '	MOBILE , FB, GOOGLE_PLUS',
  `device_type` varchar(25) DEFAULT NULL,
  `uuid` varchar(110) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `add_by` int(11) DEFAULT NULL,
  `mod_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `mod_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customers`
--

INSERT INTO `tbl_customers` (`id`, `referral_code`, `name`, `first_name`, `last_name`, `mobile`, `fb_id`, `gp_id`, `email`, `email_verify`, `show_profile_picture`, `picture_url`, `login_type`, `device_type`, `uuid`, `status`, `add_date`, `add_by`, `mod_date`, `mod_by`) VALUES
(1, 'UUKSK89530', 'Rahul Verma', NULL, NULL, '8743828117', '1815923525133006', '116879975735566927420', 'mohd.ikram0788@gmail.com', '1', 1, '1537780010_1.jpg', 'MOBILE', 'ANDROID', '1234567890', 1, '2017-11-22 11:33:09', NULL, '2018-09-24 09:06:50', 1),
(8, 'PMWMG60793', 'Mohit', NULL, NULL, '9818360793', '', '', 'mohit.suhag@birdapps.in', '0', 1, '', 'MOBILE', 'ANDROID', '1234567890', 1, '2017-11-22 12:24:57', NULL, '2018-02-13 10:37:40', 8),
(10, 'ENUKT01264', 'Marah Sahab', NULL, NULL, '9811301264', '', '', 'pa@g.com', '0', 1, '1512035584_10.jpg', 'MOBILE', 'ANDROID', '415f56648ef019a4', 1, '2017-11-23 04:21:09', NULL, '2017-11-30 09:53:04', 10),
(11, 'RPVFC40213', 'Anita Batra', NULL, NULL, '7896540213', '', '', 'Anita@gml.con', '0', 1, '', 'MOBILE', 'ANDROID', '1234567890', 1, '2017-11-23 04:41:45', NULL, '2017-11-23 04:41:45', NULL),
(12, 'XZBQM67890', '', NULL, NULL, '1234567890', '', '', '', '0', 1, '1533537437_12.jpg', 'MOBILE', 'ANDROID', '703f86c632cb3e9c', 1, '2017-11-23 06:52:40', NULL, '2018-08-06 06:37:17', 12),
(13, 'NDYTO97567', 'Jyoti', NULL, NULL, '1238097567', '', '', 'jyoti@gml.com', '0', 1, '', 'MOBILE', 'ANDROID', '1234567890', 1, '2017-11-23 06:59:31', NULL, '2017-11-23 06:59:31', NULL),
(15, 'CHZSJ80737', 'Rashmi', NULL, NULL, '9718080737', '', '', 'ras@gmail.com', '0', 1, '1511950440_15.jpg', 'MOBILE', 'ANDROID', '1234567890', 1, '2017-11-27 16:40:39', NULL, '2017-11-29 10:14:00', NULL),
(16, 'DOLOS20741', 'Rhythm', NULL, NULL, '3698520741', '', '', 'rhythm@gm.com', '0', 1, '', 'MOBILE', 'ANDROID', '1234567890', 1, '2017-11-28 12:34:52', NULL, '2017-11-28 12:38:06', 16),
(18, 'ZSSFK78731', 'Niti', NULL, NULL, '8860478731', '', '117173742180543057443', 'fghh@gh.ghj', '0', 0, '', 'MOBILE', 'IOS', '4C4ECD55-8E0B-4EEB-8190-BDDAA8C30EB0', 1, '2017-11-30 07:22:45', NULL, '2017-12-28 06:09:21', 18),
(20, 'XKKNL68970', 'Kartik', NULL, NULL, '1234568970', '', '', 'km@gm.com', '0', 1, '', 'MOBILE', 'ANDROID', '1234567890', 1, '2017-11-30 13:28:19', NULL, '2017-11-30 13:28:19', NULL),
(21, 'STDCX47809', 'QWERTY', NULL, NULL, '1523647809', '', '', 'wthwb@hsjd.bom', '0', 1, '1512052958_21.jpg', 'MOBILE', 'ANDROID', '703f86c632cb3e9c', 1, '2017-11-30 13:32:43', NULL, '2017-11-30 14:42:38', 21),
(22, 'IHHPV21777', 'Dhruv', NULL, NULL, '9958521777', '', '', 'dhruv@gmail.com', '0', 0, '', 'MOBILE', 'IOS', '9ABB0103-9E1E-4616-BFBB-0163A8F4322C', 1, '2017-12-05 07:49:22', NULL, '2017-12-05 07:49:22', NULL),
(31, 'PESCM46519', 'Diksha', NULL, NULL, '8373946519', '', '', 'd.mehrotra@gmail.com', '0', 0, '', 'MOBILE', 'IOS', '0E1427CB-D456-4AFE-87F0-79ED397F44EA', 1, '2017-12-11 05:55:26', NULL, '2017-12-28 05:54:28', 31),
(38, 'NNKAJ08986', 'Deepjyoti', NULL, NULL, '9582708986', '', '', 'deepjyotipatar2@gmail.com', '0', 1, '1514104235_38.jpg', 'MOBILE', 'ANDROID', '5cb015ae030aea54', 1, '2017-12-24 08:27:58', NULL, '2017-12-24 08:30:35', NULL),
(50, 'STCQP96267', 'saurabh', NULL, NULL, '9958596267', '', '', 'saurabh.yadav@birdapps.in', '1', 0, '', 'MOBILE', 'IOS', '5F27EF80-DF33-4949-9583-17AC84086F2E', 1, '2018-01-05 09:26:55', NULL, '2018-01-30 06:03:20', 50),
(67, 'ESSAH93527', 'nitin', NULL, NULL, '9958493527', '', '', 'nitin@birapps.in', '0', 0, NULL, 'MOBILE', 'ANDROID', '1234', 1, '2018-03-05 11:06:56', NULL, '2018-03-05 11:06:56', NULL),
(71, 'CIWRX36933', 'android test', NULL, NULL, '9650036933', '', '', 'mohit.suhag@birdapps.in', '0', 0, NULL, 'MOBILE', 'ANDROID', '1234', 1, '2018-03-13 11:09:05', NULL, '2018-03-13 11:09:05', NULL),
(72, 'SFYOO34999', 'sumit', NULL, NULL, '9254634999', '', '', 'sumit.naharia@birdapps.in', '0', 0, NULL, 'MOBILE', 'ANDROID', '1234', 1, '2018-03-13 11:13:03', NULL, '2018-03-13 11:13:03', NULL),
(74, 'TCINS10039', 'parveen', NULL, NULL, '9310210039', '', '', 'parveen.ranjan@birdapps.in', '0', 0, NULL, 'MOBILE', 'ANDROID', '1234', 1, '2018-03-16 06:15:10', NULL, '2018-03-16 06:15:10', NULL),
(80, 'IZNBY29582', 'Jai', NULL, NULL, '9810929582', '', '', 'jai.php@gmail.com', '1', 0, NULL, 'MOBILE', 'ANDROID', '1234', 1, '2018-05-25 07:54:59', NULL, '2018-05-25 08:35:34', NULL),
(82, 'FSINR42303', 'Kaju', NULL, NULL, '9899142303', '', '', 'kajal.chawla@birdapps.in', '0', 0, NULL, 'MOBILE', 'WEB', '1234', 1, '2018-06-04 10:25:33', NULL, '2018-06-04 10:25:33', NULL),
(83, 'PTNNX36637', 'suraj', NULL, NULL, '9716136637', '', '', 'suraj.singh@birdapps.in', '0', 0, NULL, 'MOBILE', 'WEB', '1234', 1, '2018-06-06 06:03:34', NULL, '2018-06-06 06:03:34', NULL),
(87, 'RAEDZ33929', 'Deepak kumar', NULL, NULL, '9868633929', '', '', 'deepak.kumar@birdapps.in', '1', 1, '1534395458_87.jpg', 'MOBILE', 'ANDROID', 'b3dfc1c8b77d271d', 1, '2018-06-08 06:25:35', NULL, '2018-08-24 09:17:36', 87),
(94, 'XFNWW34066', 'sunny', NULL, NULL, '9871134066', '', '', 'sunny.chourasia@birdapps.in', '0', 0, NULL, 'MOBILE', 'ANDROID', '1234', 1, '2018-06-08 10:08:14', NULL, '2018-06-08 10:08:14', NULL),
(99, 'JIWBT96386', 'Vipul1', NULL, NULL, '87007963861', '17176251416394021', '', 'vipul.vipulkumar.kumar181@gmail.com', '0', 0, '', 'FB', 'IOS', '8873FB77-820E-4C90-80E4-C4C5CB5AFF561', 1, '2018-07-05 12:12:08', NULL, '2018-07-06 06:13:29', NULL),
(133, 'FDRPP33939', 'Deepak', NULL, NULL, '9868633939', '', '', 'deepak.kumar@birdapps.in', '0', 1, '', 'MOBILE', 'ANDROID', '9eb3f8759c5e359', 1, '2018-08-08 12:24:39', NULL, '2018-08-08 12:24:39', NULL),
(139, 'PCZMM00476', 'Akash', NULL, NULL, '8447200476', '', '', 'binaryakash@gmail.com', '0', 1, '', 'MOBILE', 'ANDROID', 'ebe82b5813f0ca07', 1, '2018-08-16 09:09:04', NULL, '2018-08-16 09:09:04', NULL),
(147, 'GBCYC57388', 'Ashwati', NULL, NULL, '9899957388', '', '', 'deepakrathore619@gmail.com', '0', 1, '', 'MOBILE', 'ANDROID', 'ebe82b5813f0ca07', 1, '2018-08-16 10:15:53', NULL, '2018-08-16 10:15:53', NULL),
(167, 'KQBEC96386', 'Vipul', NULL, NULL, '8700796386', '', '', 'vipulk617@gmail.com', '0', 0, '', 'MOBILE', 'IOS', '613C6B2B-570D-42A3-A6DD-EB669E0315BF', 1, '2018-08-16 12:46:22', NULL, '2018-08-16 12:46:22', NULL),
(169, 'QPJLO28537', 'Lalit', NULL, NULL, '9711128537', '', '', 'lalit.mohan@birdapps.in', '0', 1, '', 'MOBILE', 'ANDROID', 'ebe82b5813f0ca07', 1, '2018-08-16 12:55:13', NULL, '2018-08-16 12:55:13', NULL),
(170, 'TMKGD47622', 'Deep', NULL, NULL, '9968347622', '', '', 'deepak.kumar@birdapps.in', '0', 1, '', 'MOBILE', 'ANDROID', '34101a86a4b9c228', 1, '2018-08-16 16:00:24', NULL, '2018-08-16 16:00:24', NULL),
(171, 'WTXVV80141', 'Manu', NULL, NULL, '9013280141', '', '', 'deepak.kumar@birdapps.in', '0', 1, '', 'MOBILE', 'ANDROID', '34101a86a4b9c228', 1, '2018-08-16 16:20:52', NULL, '2018-08-16 16:20:52', NULL),
(172, 'GLALZ18386', 'Sonu', NULL, NULL, '9560218386', '', '', 'deepak.kumar@birdapps.in', '0', 1, '', 'MOBILE', 'ANDROID', '34101a86a4b9c228', 1, '2018-08-16 17:02:13', NULL, '2018-08-16 17:02:13', NULL),
(173, 'TXAOA98278', 'Addy', NULL, NULL, '9599498278', '', '', 'deepak.kumar@birdapps.in', '0', 1, '', 'MOBILE', 'ANDROID', '34101a86a4b9c228', 1, '2018-08-16 17:14:48', NULL, '2018-08-16 17:14:48', NULL),
(174, 'DEEBS53221', 'Deepak', NULL, NULL, '9560153221', '', '', 'deepak.kumar@birdapps.in', '0', 1, '', 'MOBILE', 'ANDROID', '34101a86a4b9c228', 1, '2018-08-16 17:23:20', NULL, '2018-08-16 17:23:20', NULL),
(175, 'WWFOF22549', 'Diksha Sis', NULL, NULL, '9540922549', '', '', 'deepak.kumar@birdapps.in', '0', 1, '', 'MOBILE', 'ANDROID', '34101a86a4b9c228', 1, '2018-08-16 17:28:39', NULL, '2018-08-16 17:28:39', NULL),
(176, 'ILRQT49142', 'Diksha Sis', NULL, NULL, '8851949142', '', '', 'deepak.kumar@birdapps.in', '0', 1, '', 'MOBILE', 'ANDROID', '34101a86a4b9c228', 1, '2018-08-16 17:43:56', NULL, '2018-08-16 17:43:56', NULL),
(177, 'KKIEB24811', 'Deepak', NULL, NULL, '9818824811', '', '', 'deepak.kumar@birdapps.in', '0', 1, '', 'MOBILE', 'ANDROID', '34101a86a4b9c228', 1, '2018-08-16 17:45:59', NULL, '2018-08-16 17:45:59', NULL),
(178, 'UWSGY83733', 'Deepak Rathore', NULL, NULL, '9716183733', '', '', 'deepak.kumar@birdapps.in', '0', 1, '', 'MOBILE', 'ANDROID', '34101a86a4b9c228', 1, '2018-08-16 17:58:39', NULL, '2018-08-16 17:58:39', NULL),
(179, 'FMHOI33753', 'Deepak Rathore', NULL, NULL, '9999233753', '', '', 'deepak.kumar@birdapps.in', '0', 1, '', 'MOBILE', 'ANDROID', '34101a86a4b9c228', 1, '2018-08-16 18:25:50', NULL, '2018-08-16 18:25:50', NULL),
(180, 'LMXGU98159', 'Manu', NULL, NULL, '8368498159', '', '', 'deepak.kumar@birdapps.in', '0', 1, '', 'MOBILE', 'ANDROID', '34101a86a4b9c228', 1, '2018-08-16 18:46:59', NULL, '2018-08-16 18:46:59', NULL),
(181, 'ZFQTQ29146', 'Deepak Rathore', NULL, NULL, '9654929146', '', '', 'deepak.kumar@birdapps.in', '0', 1, '', 'MOBILE', 'ANDROID', '34101a86a4b9c228', 1, '2018-08-17 01:07:34', NULL, '2018-08-17 01:07:34', NULL),
(182, 'USXQV61311', 'Deepak Rathore Ganwari', NULL, NULL, '7503461311', '', '', 'deepak.kumar@birdapps.in', '0', 1, '', 'MOBILE', 'ANDROID', '34101a86a4b9c228', 1, '2018-08-17 01:15:52', NULL, '2018-08-17 01:15:52', NULL),
(183, 'SEWKA20240', 'Deepak', NULL, NULL, '9717320240', '', '', 'deepak.kumar@birdapps.in', '0', 1, '', 'MOBILE', 'ANDROID', '34101a86a4b9c228', 1, '2018-08-17 01:20:07', NULL, '2018-08-17 01:20:07', NULL),
(184, 'EBHUN99148', 'Deepak Testing', NULL, NULL, '8010999148', '', '', 'deepak.kumar@birdapps.in', '0', 1, '', 'MOBILE', 'ANDROID', '34101a86a4b9c228', 1, '2018-08-17 01:27:35', NULL, '2018-08-17 01:27:35', NULL),
(185, 'CAXCE93645', 'Vipul', NULL, NULL, '9910693645', '', '', 'Vipul.kumar@birdapps.in', '0', 0, '1534480028_185.jpg', 'MOBILE', 'IOS', '613C6B2B-570D-42A3-A6DD-EB669E0315BF', 1, '2018-08-17 04:09:13', NULL, '2018-08-17 04:27:08', NULL),
(186, 'PMYNK04301', 'Vipul Kumar', NULL, NULL, '7398604301', '', '', 'deepak.kumar@birdapps.in', '0', 1, '', 'MOBILE', 'ANDROID', '34101a86a4b9c228', 1, '2018-08-17 04:37:13', NULL, '2018-08-17 04:37:13', NULL),
(187, 'BQGOS98596', 'Deepak Rathore', NULL, NULL, '8750998596', '', '', 'deepak.kumar@birdapps.in', '0', 1, '', 'MOBILE', 'ANDROID', '34101a86a4b9c228', 1, '2018-08-17 04:53:05', NULL, '2018-08-17 04:53:05', NULL),
(188, 'DIEFV94045', 'Deepak Rathore', NULL, NULL, '9873794045', '', '', 'deepak.kumar@birdapps.in', '0', 1, '', 'MOBILE', 'ANDROID', '34101a86a4b9c228', 1, '2018-08-17 04:57:44', NULL, '2018-08-17 04:57:44', NULL),
(189, 'EXMWF53137', 'Deepak Rathore', NULL, NULL, '8470053137', '', '', 'deepak.kumar@birdapps.in', '0', 1, '', 'MOBILE', 'ANDROID', '34101a86a4b9c228', 1, '2018-08-17 05:01:42', NULL, '2018-08-17 05:01:42', NULL),
(190, 'JQLLX25298', 'Deepak', NULL, NULL, '8470825298', '', '', 'deepak.kumar@birdapps.in', '0', 1, '', 'MOBILE', 'ANDROID', '34101a86a4b9c228', 1, '2018-08-17 05:07:00', NULL, '2018-08-17 05:07:00', NULL),
(191, 'QIESM06118', 'Deepak Saumatech', NULL, NULL, '8802306118', '', '', 'deepak.kumar@birdapps.in', '0', 1, '', 'MOBILE', 'ANDROID', '34101a86a4b9c228', 1, '2018-08-17 05:15:15', NULL, '2018-08-17 05:15:15', NULL),
(192, 'BFYCE33794', 'Deepak Rathore', NULL, NULL, '9213033794', '', '', 'deepak.kumar@birdapps.in', '0', 1, '', 'MOBILE', 'ANDROID', '34101a86a4b9c228', 1, '2018-08-17 05:24:00', NULL, '2018-08-17 05:24:00', NULL),
(193, 'WYMGP48654', 'Amit', NULL, NULL, '9813048654', '', '', 'deepak.kumar@birdapps.in', '0', 1, '', 'MOBILE', 'ANDROID', '34101a86a4b9c228', 1, '2018-08-17 06:28:01', NULL, '2018-08-17 06:28:01', NULL),
(197, 'FKJWO44807', 'Barkha', NULL, NULL, '8209744807', '', '', 'barkhajangid8@gmail.com', '0', 0, '1536914685_197.jpg', 'MOBILE', NULL, '1234', 1, '2018-08-29 07:21:08', NULL, '2018-09-14 08:44:45', NULL),
(198, 'FERNN28117', 'Divyansh', NULL, NULL, '8743828117', '', '', 'divyansh.kakran@birdapps.in', '0', 0, NULL, 'MOBILE', NULL, '1234', 1, '2018-09-03 12:11:30', NULL, '2018-09-03 12:11:30', NULL),
(202, 'IZUGS62957', 'monika barwal', NULL, NULL, '7503362957', '', '', 'monika.barwal@birdapps.in', '0', 0, NULL, 'MOBILE', 'WEB', '1234', 1, '2018-09-14 09:04:24', NULL, '2018-09-14 09:04:24', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mobile` (`mobile`),
  ADD KEY `email` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
