-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 16, 2018 at 11:39 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id3769580_tracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `AreaMaster`
--

CREATE TABLE `AreaMaster` (
  `AutoId` int(255) NOT NULL,
  `AreaId` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `AreaName` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `CityId` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `AreaMaster`
--

INSERT INTO `AreaMaster` (`AutoId`, `AreaId`, `AreaName`, `CityId`) VALUES
(1, 'SEC12GURHAR91', 'SEC-12', 'GURHAR91');

-- --------------------------------------------------------

--
-- Table structure for table `Category`
--

CREATE TABLE `Category` (
  `AutoId` int(255) NOT NULL,
  `CategoryId` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `CategoryName` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `Category`
--

INSERT INTO `Category` (`AutoId`, `CategoryId`, `CategoryName`) VALUES
(1, 'cat101', 'Harassment'),
(2, 'cat102', 'Corruption'),
(3, 'cat103', 'Domestic Violence'),
(4, 'cat104', 'Other Illegal Offence');

-- --------------------------------------------------------

--
-- Table structure for table `CityMaster`
--

CREATE TABLE `CityMaster` (
  `AutoId` int(255) NOT NULL,
  `citycode` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `cityname` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `stateId` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `CityMaster`
--

INSERT INTO `CityMaster` (`AutoId`, `citycode`, `cityname`, `stateId`) VALUES
(1, 'LUDPUN91', 'Ludhiana', 'PUN91'),
(2, 'AMRPUB91', 'Amritsar', 'PUN91'),
(3, 'JALPUB91', 'Jalandhar', 'PUN91'),
(4, 'GURHAR91', 'Gurgaon', 'HAR91'),
(5, 'KARHAR91', 'Karnal', 'HAR91'),
(6, 'FARHAR91', 'Faridabad', 'HAR91'),
(7, 'LUCUP91', 'Lucknow', 'UP91'),
(8, 'KANUP91', 'Kanpur', 'UP91'),
(9, 'MATUP91', 'Mathura', 'UP91');

-- --------------------------------------------------------

--
-- Table structure for table `friendsRelation`
--

CREATE TABLE `friendsRelation` (
  `friend_one` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `friend_two` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `status` enum('0','1','2') COLLATE latin1_general_ci DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `friendsRelation`
--

INSERT INTO `friendsRelation` (`friend_one`, `friend_two`, `status`) VALUES
('1349892928384398', '1243746429030885', '0');

-- --------------------------------------------------------

--
-- Table structure for table `InfoMaster`
--

CREATE TABLE `InfoMaster` (
  `AutoId` int(255) NOT NULL,
  `InfoId` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `AreaId` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `CatId` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `Message` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `Name` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `PhoneNumber` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `DateTime` datetime NOT NULL,
  `deviceID` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `Approvalstatus` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `InfoMaster`
--

INSERT INTO `InfoMaster` (`AutoId`, `InfoId`, `AreaId`, `CatId`, `Message`, `Name`, `PhoneNumber`, `DateTime`, `deviceID`, `Approvalstatus`) VALUES
(36, 'GB220835', 'SEC12GURHAR91', 'cat104', 'HR rjjr', '', '', '0000-00-00 00:00:00', 'b45803cc7824caad', 'A'),
(37, 'GB230836', 'SEC12GURHAR91', 'cat103', 'cgvjvucuv', '', '', '2016-08-23 11:54:34', 'b45803cc7824caad', 'R'),
(38, 'GB230837', 'SEC12GURHAR91', 'cat102', 'detatkgkfj', 'xhi', '68344456', '2016-08-23 12:24:50', '9c2cfc65d210c63f', 'A'),
(39, 'GB230838', 'SEC12GURHAR91', 'cat103', 'udu', 'gjyyh', '56563335', '2016-08-23 13:04:49', '9c2cfc65d210c63f', 'A'),
(40, 'GB230839', 'SEC12GURHAR91', 'cat103', 'udu', 'gjyyh', '56563335', '2016-08-23 13:08:17', '9c2cfc65d210c63f', 'A'),
(41, 'GB230840', 'SEC12GURHAR91', 'cat103', 'udu', 'gjyyh', '56563335', '2016-08-23 13:12:23', '9c2cfc65d210c63f', 'A'),
(42, 'GB230841', '', '', '', '', '', '2016-08-23 13:13:42', '9c2cfc65d210c63f', 'A'),
(43, 'GB230842', '', '', '', '', '', '2016-08-23 13:16:19', '9c2cfc65d210c63f', 'A'),
(44, 'GB230843', '', '', '', '', '', '2016-08-23 13:35:09', '9c2cfc65d210c63f', 'A'),
(45, 'GB230844', '', '', '', '', '', '2016-08-23 13:37:34', '9c2cfc65d210c63f', 'A'),
(46, 'GB230845', '', '', '', '', '', '2016-08-23 13:45:20', '9c2cfc65d210c63f', 'A'),
(47, 'GB230846', '', 'cat101', '', '', '', '2016-08-23 13:52:49', '9c2cfc65d210c63f', 'A'),
(48, 'GB230847', '', '', '', '', '', '2016-08-23 13:54:39', '9c2cfc65d210c63f', 'A'),
(49, 'GB230848', '', '', '', '', '', '2016-08-23 14:31:27', '9c2cfc65d210c63f', 'A'),
(50, 'GB230849', 'SEC12GURHAR91', 'cat102', 'here more corruption while make the road', 'slash sharm', '9718785822', '2016-08-23 15:09:32', 'dbde9a4fd4133929', 'A'),
(51, 'GB230850', 'SEC12GURHAR91', 'cat103', 'hhg', '', '', '2016-08-23 15:24:50', 'dbde9a4fd4133929', 'A'),
(52, 'GB230851', 'SEC12GURHAR91', 'cat101', 'gyyyv', '', '', '2016-08-23 15:28:27', 'dbde9a4fd4133929', 'A'),
(53, 'GB230852', 'SEC12GURHAR91', 'cat103', 'ghfg', '', '', '2016-08-23 15:33:22', 'dbde9a4fd4133929', 'A'),
(54, 'GB230853', '', '', '', '', '', '2016-08-23 15:34:41', 'dbde9a4fd4133929', 'A'),
(55, 'GB230854', '', '', '', '', '', '2016-08-23 15:42:32', 'dbde9a4fd4133929', 'A'),
(56, 'GB230855', '', '', '', '', '', '2016-08-23 15:43:46', 'dbde9a4fd4133929', 'A'),
(57, 'GB230856', '', '', '', '', '', '2016-08-23 15:44:40', 'dbde9a4fd4133929', 'A'),
(58, 'GB230857', 'SEC12GURHAR91', 'cat103', 'vvihhchc', '', '', '2016-08-23 15:46:35', 'dbde9a4fd4133929', 'A'),
(59, 'GB230858', 'SEC12GURHAR91', 'cat103', 'gx hi ci', '', '', '2016-08-23 17:14:24', 'b45803cc7824caad', 'A'),
(60, 'GB230859', 'SEC12GURHAR91', 'cat103', 'mnm', '', '', '2016-08-23 18:52:08', '9c2cfc65d210c63f', 'A'),
(61, 'GB240860', 'SEC12GURHAR91', 'cat101', 'jfjjffjdjf', '', '', '2016-08-24 11:52:38', 'b45803cc7824caad', 'A'),
(62, 'GB240861', 'SEC12GURHAR91', 'cat101', 'jfjjffjdjf', '', '', '2016-08-24 11:53:44', 'b45803cc7824caad', 'A'),
(63, 'GB240862', 'SEC12GURHAR91', 'cat101', 'ydyfyddy', '', '', '2016-08-24 11:55:00', 'b45803cc7824caad', 'R'),
(64, 'GB240863', 'SEC12GURHAR91', 'cat103', 'vhjkkgyh', '', '', '2016-08-24 15:07:20', 'dbde9a4fd4133929', 'A'),
(65, 'GB240864', 'SEC12GURHAR91', 'cat103', 'vhjkkgyh', '', '', '2016-08-24 15:07:41', 'dbde9a4fd4133929', 'A'),
(66, 'GB240865', 'SEC12GURHAR91', 'cat103', 'vhjkkgyh', '', '', '2016-08-24 15:08:10', 'dbde9a4fd4133929', 'A'),
(67, 'GB240866', 'SEC12GURHAR91', 'cat103', 'vhjkkgyh', '', '', '2016-08-24 15:08:22', 'dbde9a4fd4133929', 'A'),
(68, 'GB240867', 'SEC12GURHAR91', 'cat103', 'vhjkkgyh', '', '', '2016-08-24 15:09:13', 'dbde9a4fd4133929', 'A'),
(69, 'GB240868', 'SEC12GURHAR91', 'cat102', 'gg', '', '', '2016-08-24 15:09:30', 'dbde9a4fd4133929', 'A'),
(70, 'GB240869', 'SEC12GURHAR91', 'cat102', 'xhxcviv', '', '', '2016-08-24 17:12:10', 'dbde9a4fd4133929', 'A'),
(71, 'GB240870', 'SEC12GURHAR91', 'cat102', 'xhxcviv', '', '', '2016-08-24 17:12:28', 'dbde9a4fd4133929', 'A'),
(72, 'GB240871', 'SEC12GURHAR91', 'cat102', 'xhxcviv', '', '', '2016-08-24 17:13:30', 'dbde9a4fd4133929', 'A'),
(73, 'GB240872', 'SEC12GURHAR91', 'cat102', 'xhxcviv', '', '', '2016-08-24 17:16:31', 'dbde9a4fd4133929', 'A'),
(74, 'GB250873', 'SEC12GURHAR91', 'cat103', 'thegggg\n\n\n', 'the\n', '', '2016-08-25 12:11:41', 'dbde9a4fd4133929', 'A'),
(75, 'GB250874', 'SEC12GURHAR91', 'cat102', 'bhjk', '', '', '2016-08-25 15:22:33', 'b45803cc7824caad', 'A'),
(76, 'GB250875', 'SEC12GURHAR91', 'cat102', 'uhffu', '', '', '2016-08-25 15:34:38', 'b45803cc7824caad', 'A'),
(77, 'GB250876', 'SEC12GURHAR91', 'cat103', 'fghggj', '', '', '2016-08-25 15:37:25', 'dbde9a4fd4133929', 'A'),
(78, 'GB250877', 'SEC12GURHAR91', 'cat103', 'hhn', '', '', '2016-08-25 15:39:27', 'dbde9a4fd4133929', 'A'),
(79, 'GB250878', 'SEC12GURHAR91', 'cat102', 'ghff', '', '', '2016-08-25 15:49:30', 'dbde9a4fd4133929', 'A'),
(80, 'GB250879', 'SEC12GURHAR91', 'cat102', 'yccyccy', '', '', '2016-08-25 15:51:14', 'dbde9a4fd4133929', 'A'),
(81, 'GB250880', 'SEC12GURHAR91', 'cat103', 'hhfhfbbk', 'akadh', '5653245498', '2016-08-25 17:27:22', 'dbde9a4fd4133929', 'A'),
(82, 'GB250881', 'SEC12GURHAR91', 'cat103', 'CT ghf', '', '', '2016-08-25 17:30:51', 'dbde9a4fd4133929', 'A'),
(83, 'GB250882', 'SEC12GURHAR91', 'cat103', 'CT ghf', '', '', '2016-08-25 17:30:51', 'dbde9a4fd4133929', 'A'),
(84, 'GB250883', 'SEC12GURHAR91', 'cat103', 'CT ghf', '', '', '2016-08-25 17:30:51', 'dbde9a4fd4133929', 'R'),
(85, 'GB250884', 'SEC12GURHAR91', 'cat103', 'CT ghf', '', '', '2016-08-25 17:34:23', 'dbde9a4fd4133929', 'A'),
(86, 'GB250885', 'SEC12GURHAR91', 'cat103', 'hdgdf', '', '', '2016-08-25 17:37:17', 'dbde9a4fd4133929', 'A'),
(87, 'GB250886', 'SEC12GURHAR91', 'cat103', 'CT ghf', '', '', '2016-08-25 17:30:51', 'dbde9a4fd4133929', 'A'),
(88, 'GB260887', '', '', '', '', '', '2016-08-26 11:56:56', 'dbde9a4fd4133929', 'A'),
(89, 'GB260888', 'SEC12GURHAR91', 'cat104', 'illegal postitution ', '', '', '2016-08-26 14:43:56', 'dbde9a4fd4133929', 'P'),
(90, 'GB260889', 'SEC12GURHAR91', 'cat101', 'data gya', 'alas sharma', '9718785822', '2016-08-26 15:25:04', 'dbde9a4fd4133929', 'P'),
(91, 'GB310890', 'SEC12GURHAR91', 'cat102', 'more corrupted area', '', '', '2016-08-31 20:26:49', 'b45803cc7824caad', 'P'),
(92, 'GB010991', 'SEC12GURHAR91', 'cat102', 'adfre', '', '', '2016-09-01 13:28:18', 'b45803cc7824caad', 'P'),
(93, 'GB010992', 'SEC12GURHAR91', 'cat103', 'ret', '', '', '2016-09-01 13:36:29', 'b45803cc7824caad', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `MediaInfo`
--

CREATE TABLE `MediaInfo` (
  `AutoId` int(255) NOT NULL,
  `InfoId` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `MediaId` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `MediaName` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `MediaInfo`
--

INSERT INTO `MediaInfo` (`AutoId`, `InfoId`, `MediaId`, `MediaName`) VALUES
(16, 'GB230851', 'MI230815', 'uploads/20160823_150806.jpg'),
(37, '', 'MI260836', 'uploads/'),
(14, 'GB230850', 'MI230813', 'uploads/20160823_150806.jpg'),
(12, 'GB230849', 'MI230811', 'uploads/20160823_150806.jpg'),
(11, 'GB230849', 'MI230810', 'uploads/20160823_130430.jpg'),
(10, 'GB230849', 'MI2308', 'uploads/20160823_143112.jpg'),
(17, 'GB230852', 'MI230816', 'uploads/20160823_150806.jpg'),
(18, 'GB230853', 'MI230817', 'uploads/20160823_150806.jpg'),
(36, 'GB250883', 'MI250835', 'uploads/20160825_172700.jpg'),
(20, 'GB230854', 'MI230819', 'uploads/20160823_150806.jpg'),
(21, 'GB230855', 'MI230820', 'uploads/20160823_150806.jpg'),
(22, 'GB230856', 'MI230821', 'uploads/20160823_150806.jpg'),
(35, '', 'MI250834', 'uploads/'),
(24, 'GB230859', 'MI230823', 'uploads/20160823_143112.jpg'),
(25, 'GB230859', 'MI230824', 'uploads/20160823_130430.jpg'),
(34, '', 'MI250833', 'uploads/'),
(27, 'GB240862', 'MI240826', 'uploads/20160821_084253.jpg'),
(33, '', 'MI250827', 'uploads/'),
(38, '', 'MI260837', 'uploads/'),
(39, 'GB310890', 'MI310838', 'uploads/20160831_191938.jpg'),
(40, 'GB010991', 'MI010939', 'uploads/20160831_191924.jpg'),
(41, 'GB010992', 'MI010940', 'uploads/20160901_133531.jpg'),
(42, '', 'MI220941', 'uploads/'),
(43, '', 'MI131042', 'uploads/20160904_202921.jpg'),
(44, '', 'MI131043', 'uploads/20160917_225538.jpg'),
(45, '', 'MI131044', 'uploads/20160904_202921.jpg'),
(46, '', 'MI131045', 'uploads/20160917_225538.jpg'),
(47, '', 'MI131046', 'uploads/20160724_151612.jpg'),
(48, '', 'MI131047', 'uploads/20160724_151739.jpg'),
(49, '', 'MI131048', 'uploads/20160724_151753.jpg'),
(50, '', 'MI140149', 'uploads/'),
(51, '', 'MI140150', 'uploads/'),
(52, '', 'MI140151', 'uploads/');

-- --------------------------------------------------------

--
-- Table structure for table `OlaUser`
--

CREATE TABLE `OlaUser` (
  `auoId` int(255) NOT NULL,
  `userId` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `latitude` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `longitude` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `DateTime` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `OlaUser`
--

INSERT INTO `OlaUser` (`auoId`, `userId`, `latitude`, `longitude`, `DateTime`) VALUES
(1, '1349892928384398', '28.4694346', '77.0346773', '2017-01-26 10:02:29.000'),
(2, '1383220738471164', '28.6099826', '77.3632132', '2018-04-16 13:08:19.000'),
(10, '', '', '', ''),
(9, '', '', '', ''),
(8, '', '', '', ''),
(7, '', '', '', ''),
(11, '', '', '', ''),
(12, '', '', '', ''),
(13, '', '', '', ''),
(14, '', '', '', ''),
(15, '', '', '', ''),
(16, '', '', '', ''),
(17, '', '', '', ''),
(18, '', '', '', ''),
(19, '', '', '', ''),
(20, '', '', '', ''),
(21, '', '', '', ''),
(22, '', '', '', ''),
(23, '', '', '', ''),
(24, '', '', '', ''),
(25, '', '', '', ''),
(26, '', '', '', ''),
(27, '', '', '', ''),
(28, '', '', '', ''),
(29, '', '', '', ''),
(30, '', '', '', ''),
(31, '', '', '', ''),
(32, '', '', '', ''),
(33, '', '', '', ''),
(34, '', '', '', ''),
(35, '', '', '', ''),
(36, '', '', '', ''),
(37, '', '', '', ''),
(38, '', '', '', ''),
(39, 'GB2609b3', '28.4184183', '77.0523736', '2016-12-12 18:06:50.000'),
(40, '', '', '', ''),
(41, '', '', '', ''),
(42, '', '', '', ''),
(43, '', '', '', ''),
(44, '', '', '', ''),
(45, '1781461802074367', '28.4186364', '77.0522638', '2016-10-12 13:04:49.000'),
(46, '', '', '', ''),
(47, '', '', '', ''),
(48, '1383220738471164', '28.6099826', '77.3632132', '2018-04-16 13:08:19.000'),
(49, '1383220738471164', '28.6099826', '77.3632132', '2018-04-16 13:08:19.000'),
(50, '', '', '', ''),
(51, '', '', '', ''),
(52, '', '', '', ''),
(53, '', '', '', ''),
(54, '', '', '', ''),
(55, '', '', '', ''),
(56, '', '', '', ''),
(57, '', '', '', ''),
(58, '1243746429030885', '28.5046678', '77.0882668', '2016-10-14 15:45:18.000'),
(59, '', '', '', ''),
(60, '', '', '', ''),
(61, '', '', '', ''),
(62, '', '', '', ''),
(63, '', '', '', ''),
(64, '', '', '', ''),
(65, '', '', '', ''),
(66, '', '', '', ''),
(67, '', '', '', ''),
(68, '', '', '', ''),
(69, '', '', '', ''),
(70, '', '', '', ''),
(73, '', '', '', ''),
(72, '', '', '', ''),
(71, '', '', '', ''),
(74, '', '', '', ''),
(75, '', '', '', ''),
(76, '', '', '', ''),
(77, '', '', '', ''),
(78, '', '', '', ''),
(79, '', '', '', ''),
(80, '', '', '', ''),
(81, '', '', '', ''),
(82, '', '', '', ''),
(83, '', '', '', ''),
(84, '', '', '', ''),
(85, '', '', '', ''),
(86, '', '', '', ''),
(87, '', '', '', ''),
(88, '', '', '', ''),
(89, '', '', '', ''),
(90, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ReporterMaster`
--

CREATE TABLE `ReporterMaster` (
  `AutoId` int(255) NOT NULL,
  `userId` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `Username` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `passowrd` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `AreaId` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `ApplicationId` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `ReporterMaster`
--

INSERT INTO `ReporterMaster` (`AutoId`, `userId`, `Username`, `passowrd`, `AreaId`, `ApplicationId`) VALUES
(0, 'REP101', 'Raja Ram', '123', 'SEC12GURHAR91', '');

-- --------------------------------------------------------

--
-- Table structure for table `SpeakRegistration`
--

CREATE TABLE `SpeakRegistration` (
  `AutoId` int(255) NOT NULL,
  `DeviceId` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `UserId` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `UserName` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `AppId` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `dateTime` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `MobileNumber` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `profileImageUrl` varchar(1000) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `SpeakRegistration`
--

INSERT INTO `SpeakRegistration` (`AutoId`, `DeviceId`, `UserId`, `UserName`, `AppId`, `dateTime`, `MobileNumber`, `profileImageUrl`) VALUES
(2, '9c2cfc65d210c63f', '1349892928384398', 'Alok Shukla', 'APA91bGv0DAmWILebIGyAx8LKF4XIGTwo2mC7K8_y3iIVAnPcS8GGlo4Wvf2RvdjzT4M9GPd5PuV9XPIr-K9Mt5bTr9lI0VeKc9LgbcIpJIreVslAU_nxO_GfJDuORc2CdFQCB2OjFfpXRaJ0Fgp6JZbecSiSLnQtQ', '2016-10-07 11:50:16.000', '', 'https://scontent.xx.fbcdn.net/v/t1.0-1/c18.18.231.231/s100x100/558134_527801783926854_256386364_n.jpg?oh=1a859b3cbb53fadef225a285b210149b&oe=5862BE6B'),
(3, 'd1c5e2614169801f', '1243746429030885', 'Shyam Sundar', 'APA91bGEZU8j9TJTPssS9FYRhcT6_EhRr99XnXyS18yZotbM1mNqjkD6Now2nilRSRNkFl3vDw0ugtJVTro2mdv73Ix8hAd2WK96Vez_lqWAhXe_sFr8T39u4_o0zMMEEC9GM9gehwaCGBgMttMobSz9kJ5Iur1NPA', '2016-10-10 21:31:33.000', '', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xaf1/v/t1.0-1/c0.15.100.100/p100x100/248043_344090265663177_232046131_n.jpg?oh=6fbe67b59c0c78e7cb0a8a2525566229&oe=58A031AC&__gda__=1487449399_0e72361b6f05239dc375e908f1ea0aba'),
(5, '90701faefa7d5722', '1383220738471164', 'Akash Sharma', 'd29RjR4slOE:APA91bFl8cmkT9T-KTZfk9vVBV4AyNMrYb1dKZ9BUEDEDXFfcs03iPgCCM6M9qgXFfd4epucFYWoqreWzkxMm5WuMT87SlTKkxgSE_fkbuyMCUqRIGYfZZT21pLlZ5kDgB0MUNTsCSZi', '2018-04-13 15:07:57.000', '', 'https://lookaside.facebook.com/platform/profilepic/?asid=1383220738471164&height=100&width=100&ext=1523871469&hash=AeT3JXOnxpG7LhDi');

-- --------------------------------------------------------

--
-- Table structure for table `StateMaster`
--

CREATE TABLE `StateMaster` (
  `AutoId` int(255) NOT NULL,
  `StateCode` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `CountryCode` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `StateName` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `StateMaster`
--

INSERT INTO `StateMaster` (`AutoId`, `StateCode`, `CountryCode`, `StateName`) VALUES
(1, 'PUN91', '91', 'Punjab'),
(2, 'HAR91', '91', 'Haryana'),
(3, 'UP91', '91', 'Uttar Pradesh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AreaMaster`
--
ALTER TABLE `AreaMaster`
  ADD PRIMARY KEY (`AutoId`);

--
-- Indexes for table `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`AutoId`);

--
-- Indexes for table `CityMaster`
--
ALTER TABLE `CityMaster`
  ADD PRIMARY KEY (`AutoId`);

--
-- Indexes for table `friendsRelation`
--
ALTER TABLE `friendsRelation`
  ADD PRIMARY KEY (`friend_one`,`friend_two`),
  ADD KEY `friend_two` (`friend_two`);

--
-- Indexes for table `InfoMaster`
--
ALTER TABLE `InfoMaster`
  ADD PRIMARY KEY (`AutoId`);

--
-- Indexes for table `MediaInfo`
--
ALTER TABLE `MediaInfo`
  ADD PRIMARY KEY (`AutoId`);

--
-- Indexes for table `OlaUser`
--
ALTER TABLE `OlaUser`
  ADD PRIMARY KEY (`auoId`);

--
-- Indexes for table `ReporterMaster`
--
ALTER TABLE `ReporterMaster`
  ADD PRIMARY KEY (`AutoId`);

--
-- Indexes for table `SpeakRegistration`
--
ALTER TABLE `SpeakRegistration`
  ADD PRIMARY KEY (`AutoId`);

--
-- Indexes for table `StateMaster`
--
ALTER TABLE `StateMaster`
  ADD PRIMARY KEY (`AutoId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AreaMaster`
--
ALTER TABLE `AreaMaster`
  MODIFY `AutoId` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Category`
--
ALTER TABLE `Category`
  MODIFY `AutoId` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `CityMaster`
--
ALTER TABLE `CityMaster`
  MODIFY `AutoId` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `InfoMaster`
--
ALTER TABLE `InfoMaster`
  MODIFY `AutoId` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `MediaInfo`
--
ALTER TABLE `MediaInfo`
  MODIFY `AutoId` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `OlaUser`
--
ALTER TABLE `OlaUser`
  MODIFY `auoId` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `SpeakRegistration`
--
ALTER TABLE `SpeakRegistration`
  MODIFY `AutoId` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `StateMaster`
--
ALTER TABLE `StateMaster`
  MODIFY `AutoId` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
