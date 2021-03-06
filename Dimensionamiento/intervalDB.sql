-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2020 at 09:14 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `interval_latcom`
--

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `id_days` int(11) NOT NULL,
  `name_day` enum('monday','tuesday','wednesday','thrusday','friday','saturday','sunday') DEFAULT NULL,
  `dy_duration_min` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`id_days`, `name_day`, `dy_duration_min`) VALUES
(1, 'monday', 1440),
(2, 'tuesday', 1440),
(3, 'wednesday', 1440),
(4, 'thrusday', 1440),
(5, 'friday', 1440),
(6, 'saturday', 1440),
(7, 'sunday', 1440);

-- --------------------------------------------------------

--
-- Table structure for table `erlang`
--

CREATE TABLE `erlang` (
  `id_erlang` int(11) NOT NULL,
  `fkid_time_date` int(11) DEFAULT NULL,
  `vol` int(11) DEFAULT NULL,
  `tcp` int(11) DEFAULT NULL,
  `agents` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `erlang`
--

INSERT INTO `erlang` (`id_erlang`, `fkid_time_date`, `vol`, `tcp`, `agents`) VALUES
(1, 1, 0, 0, 0),
(2, 2, 0, 0, 0),
(3, 3, 0, 0, 0),
(4, 4, 0, 0, 0),
(5, 5, 0, 0, 0),
(6, 6, 0, 0, 0),
(7, 7, 0, 0, 0),
(8, 8, 0, 0, 0),
(9, 9, 0, 0, 0),
(10, 10, 0, 0, 0),
(11, 11, 0, 0, 0),
(12, 12, 0, 0, 0),
(13, 13, 0, 0, 0),
(14, 14, 2, 709, 1),
(15, 15, 9, 577, 3),
(16, 16, 24, 690, 10),
(17, 17, 37, 732, 16),
(18, 18, 63, 822, 29),
(19, 19, 74, 781, 33),
(20, 20, 72, 868, 35),
(21, 21, 81, 790, 36),
(22, 22, 88, 801, 40),
(23, 23, 86, 847, 41),
(24, 24, 84, 784, 37),
(25, 25, 72, 830, 34),
(26, 26, 57, 746, 24),
(27, 27, 45, 803, 21),
(28, 28, 41, 678, 16),
(29, 29, 46, 693, 18),
(30, 30, 63, 783, 28),
(31, 31, 61, 769, 27),
(32, 32, 70, 812, 32),
(33, 33, 62, 832, 29),
(34, 34, 55, 835, 26),
(35, 35, 44, 798, 20),
(36, 36, 41, 805, 19),
(37, 37, 33, 820, 16),
(38, 38, 21, 715, 9),
(39, 39, 15, 756, 7),
(40, 40, 12, 665, 5),
(41, 41, 12, 680, 5),
(42, 42, 11, 477, 3),
(43, 43, 8, 499, 3),
(44, 44, 6, 711, 3),
(45, 45, 6, 486, 2),
(46, 46, 0, 0, 0),
(47, 47, 0, 0, 0),
(48, 48, 0, 0, 0),
(49, 49, 0, 0, NULL),
(50, 50, 0, 0, NULL),
(51, 51, 0, 0, NULL),
(52, 52, 0, 0, NULL),
(53, 53, 0, 0, NULL),
(54, 54, 0, 0, NULL),
(55, 55, 0, 0, NULL),
(56, 56, 0, 0, NULL),
(57, 57, 0, 0, NULL),
(58, 58, 0, 0, NULL),
(59, 59, 0, 0, NULL),
(60, 60, 0, 0, NULL),
(61, 61, 1, 454, NULL),
(62, 62, 1, 702, NULL),
(63, 63, 9, 589, NULL),
(64, 64, 19, 613, NULL),
(65, 65, 36, 671, NULL),
(66, 66, 59, 705, NULL),
(67, 67, 72, 771, NULL),
(68, 68, 78, 796, NULL),
(69, 69, 80, 773, NULL),
(70, 70, 81, 818, NULL),
(71, 71, 83, 755, NULL),
(72, 72, 76, 777, NULL),
(73, 73, 73, 830, NULL),
(74, 74, 64, 838, NULL),
(75, 75, 43, 788, NULL),
(76, 76, 42, 750, NULL),
(77, 77, 49, 736, NULL),
(78, 78, 64, 784, NULL),
(79, 79, 64, 767, NULL),
(80, 80, 60, 760, NULL),
(81, 81, 68, 786, NULL),
(82, 82, 60, 805, NULL),
(83, 83, 47, 813, NULL),
(84, 84, 38, 781, NULL),
(85, 85, 25, 743, NULL),
(86, 86, 21, 722, NULL),
(87, 87, 18, 780, NULL),
(88, 88, 15, 633, NULL),
(89, 89, 11, 654, NULL),
(90, 90, 7, 490, NULL),
(91, 91, 9, 632, NULL),
(92, 92, 6, 590, NULL),
(93, 93, 4, 348, NULL),
(94, 94, 1, 397, NULL),
(95, 95, 0, 0, NULL),
(96, 96, 0, 0, NULL),
(97, 97, 0, 0, 0),
(98, 98, 0, 0, 0),
(99, 99, 0, 0, 0),
(100, 100, 0, 0, 0),
(101, 101, 0, 0, 0),
(102, 102, 0, 0, 0),
(103, 103, 0, 0, 0),
(104, 104, 0, 0, 0),
(105, 105, 0, 0, 0),
(106, 106, 0, 0, 0),
(107, 107, 0, 0, 0),
(108, 108, 0, 0, 0),
(109, 109, 0, 0, 0),
(110, 110, 3, 442, 1),
(111, 111, 14, 517, 3),
(112, 112, 26, 577, 10),
(113, 113, 37, 628, 16),
(114, 114, 61, 717, 29),
(115, 115, 68, 739, 33),
(116, 116, 82, 742, 35),
(117, 117, 81, 780, 36),
(118, 118, 79, 825, 40),
(119, 119, 87, 768, 41),
(120, 120, 75, 802, 37),
(121, 121, 70, 773, 34),
(122, 122, 56, 847, 24),
(123, 123, 54, 811, 21),
(124, 124, 42, 750, 16),
(125, 125, 54, 717, 18),
(126, 126, 59, 671, 28),
(127, 127, 65, 748, 27),
(128, 128, 71, 741, 32),
(129, 129, 69, 735, 29),
(130, 130, 68, 809, 26),
(131, 131, 54, 760, 20),
(132, 132, 44, 815, 19),
(133, 133, 34, 743, 16),
(134, 134, 24, 741, 9),
(135, 135, 19, 716, 7),
(136, 136, 14, 646, 5),
(137, 137, 11, 526, 5),
(138, 138, 8, 682, 3),
(139, 139, 7, 616, 3),
(140, 140, 7, 714, 3),
(141, 141, 5, 366, 2),
(142, 142, 1, 333, 0),
(143, 143, 0, 0, 0),
(144, 144, 0, 0, 0),
(145, 145, 0, 0, 0),
(146, 146, 0, 0, 0),
(147, 147, 0, 0, 0),
(148, 148, 0, 0, 0),
(149, 149, 0, 0, 0),
(150, 150, 0, 0, 0),
(151, 151, 0, 0, 0),
(152, 152, 0, 0, 0),
(153, 153, 0, 0, 0),
(154, 154, 0, 0, 0),
(155, 155, 0, 0, 0),
(156, 156, 0, 0, 0),
(157, 157, 0, 0, 1),
(158, 158, 2, 319, 1),
(159, 159, 5, 545, 3),
(160, 160, 21, 555, 7),
(161, 161, 35, 712, 14),
(162, 162, 52, 741, 24),
(163, 163, 62, 759, 31),
(164, 164, 70, 828, 35),
(165, 165, 78, 780, 35),
(166, 166, 75, 850, 37),
(167, 167, 75, 775, 35),
(168, 168, 82, 805, 33),
(169, 169, 73, 813, 34),
(170, 170, 64, 802, 30),
(171, 171, 52, 825, 19),
(172, 172, 47, 710, 18),
(173, 173, 49, 744, 21),
(174, 174, 62, 707, 28),
(175, 175, 66, 784, 28),
(176, 176, 67, 777, 26),
(177, 177, 59, 864, 30),
(178, 178, 59, 833, 27),
(179, 179, 59, 811, 22),
(180, 180, 43, 786, 17),
(181, 181, 34, 787, 11),
(182, 182, 22, 647, 9),
(183, 183, 17, 700, 8),
(184, 184, 13, 640, 6),
(185, 185, 13, 536, 4),
(186, 186, 10, 531, 2),
(187, 187, 11, 865, 4),
(188, 188, 4, 483, 2),
(189, 189, 5, 622, 1),
(190, 190, 2, 506, 1),
(191, 191, 1, 547, 0),
(192, 192, 0, 0, 0),
(193, 193, 0, 0, NULL),
(194, 194, 0, 0, NULL),
(195, 195, 0, 0, NULL),
(196, 196, 0, 0, NULL),
(197, 197, 0, 0, NULL),
(198, 198, 0, 0, NULL),
(199, 199, 0, 0, NULL),
(200, 200, 0, 0, NULL),
(201, 201, 0, 0, NULL),
(202, 202, 0, 0, NULL),
(203, 203, 0, 0, NULL),
(204, 204, 1, 211, NULL),
(205, 205, 0, 0, NULL),
(206, 206, 4, 576, NULL),
(207, 207, 9, 640, NULL),
(208, 208, 23, 631, NULL),
(209, 209, 35, 605, NULL),
(210, 210, 57, 733, NULL),
(211, 211, 63, 710, NULL),
(212, 212, 71, 797, NULL),
(213, 213, 78, 771, NULL),
(214, 214, 78, 750, NULL),
(215, 215, 74, 741, NULL),
(216, 216, 78, 769, NULL),
(217, 217, 68, 835, NULL),
(218, 218, 53, 814, NULL),
(219, 219, 49, 794, NULL),
(220, 220, 40, 773, NULL),
(221, 221, 46, 715, NULL),
(222, 222, 54, 750, NULL),
(223, 223, 56, 748, NULL),
(224, 224, 60, 829, NULL),
(225, 225, 57, 791, NULL),
(226, 226, 49, 736, NULL),
(227, 227, 46, 772, NULL),
(228, 228, 36, 711, NULL),
(229, 229, 30, 802, NULL),
(230, 230, 18, 802, NULL),
(231, 231, 17, 804, NULL),
(232, 232, 13, 692, NULL),
(233, 233, 9, 648, NULL),
(234, 234, 7, 573, NULL),
(235, 235, 6, 397, NULL),
(236, 236, 5, 434, NULL),
(237, 237, 4, 464, NULL),
(238, 238, 1, 0, NULL),
(239, 239, 0, 0, NULL),
(240, 240, 0, 0, NULL),
(241, 241, 0, 0, NULL),
(242, 242, 0, 0, NULL),
(243, 243, 0, 0, NULL),
(244, 244, 0, 0, NULL),
(245, 245, 1, 913, NULL),
(246, 246, 0, 0, NULL),
(247, 247, 0, 0, NULL),
(248, 248, 0, 0, NULL),
(249, 249, 0, 0, NULL),
(250, 250, 0, 0, NULL),
(251, 251, 0, 0, NULL),
(252, 252, 0, 0, NULL),
(253, 253, 1, 401, NULL),
(254, 254, 1, 603, NULL),
(255, 255, 6, 344, NULL),
(256, 256, 8, 592, NULL),
(257, 257, 18, 681, NULL),
(258, 258, 26, 680, NULL),
(259, 259, 34, 672, NULL),
(260, 260, 41, 756, NULL),
(261, 261, 47, 787, NULL),
(262, 262, 42, 778, NULL),
(263, 263, 43, 811, NULL),
(264, 264, 43, 788, NULL),
(265, 265, 42, 755, NULL),
(266, 266, 34, 701, NULL),
(267, 267, 30, 677, NULL),
(268, 268, 24, 715, NULL),
(269, 269, 24, 707, NULL),
(270, 270, 22, 706, NULL),
(271, 271, 18, 827, NULL),
(272, 272, 20, 611, NULL),
(273, 273, 18, 716, NULL),
(274, 274, 17, 632, NULL),
(275, 275, 18, 912, NULL),
(276, 276, 14, 692, NULL),
(277, 277, 13, 505, NULL),
(278, 278, 12, 633, NULL),
(279, 279, 7, 596, NULL),
(280, 280, 7, 524, NULL),
(281, 281, 7, 547, NULL),
(282, 282, 7, 619, NULL),
(283, 283, 6, 442, NULL),
(284, 284, 3, 918, NULL),
(285, 285, 1, 512, NULL),
(286, 286, 0, 0, NULL),
(287, 287, 1, 832, NULL),
(288, 288, 0, 0, NULL),
(289, 289, 0, 0, 0),
(290, 290, 0, 0, 0),
(291, 291, 0, 0, 0),
(292, 292, 0, 0, 0),
(293, 293, 0, 0, 0),
(294, 294, 0, 0, 0),
(295, 295, 0, 0, 0),
(296, 296, 0, 0, 0),
(297, 297, 0, 0, 0),
(298, 298, 0, 0, 0),
(299, 299, 0, 0, 0),
(300, 300, 0, 0, 0),
(301, 301, 0, 0, 0),
(302, 302, 0, 0, 1),
(303, 303, 0, 0, 5),
(304, 304, 1, 668, 9),
(305, 305, 3, 654, 13),
(306, 306, 2, 428, 25),
(307, 307, 4, 708, 28),
(308, 308, 10, 598, 34),
(309, 309, 13, 721, 36),
(310, 310, 14, 613, 37),
(311, 311, 14, 683, 38),
(312, 312, 14, 713, 34),
(313, 313, 17, 657, 31),
(314, 314, 15, 599, 27),
(315, 315, 10, 604, 25),
(316, 316, 15, 733, 18),
(317, 317, 9, 660, 22),
(318, 318, 8, 656, 22),
(319, 319, 7, 431, 28),
(320, 320, 7, 609, 30),
(321, 321, 7, 528, 29),
(322, 322, 10, 557, 31),
(323, 323, 8, 670, 23),
(324, 324, 7, 481, 20),
(325, 325, 7, 571, 15),
(326, 326, 10, 441, 10),
(327, 327, 7, 432, 8),
(328, 328, 6, 463, 6),
(329, 329, 6, 673, 4),
(330, 330, 4, 427, 4),
(331, 331, 5, 358, 3),
(332, 332, 3, 481, 3),
(333, 333, 2, 336, 2),
(334, 334, 1, 401, 1),
(335, 335, 0, 0, 0),
(336, 336, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hours`
--

CREATE TABLE `hours` (
  `id_hours` int(11) NOT NULL,
  `hour` time DEFAULT NULL,
  `hr_duration_min` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hours`
--

INSERT INTO `hours` (`id_hours`, `hour`, `hr_duration_min`) VALUES
(1, '00:00:00', 30),
(2, '00:30:00', 30),
(3, '01:00:00', 30),
(4, '01:30:00', 30),
(5, '02:00:00', 30),
(6, '02:30:00', 30),
(7, '03:00:00', 30),
(8, '03:30:00', 30),
(9, '04:00:00', 30),
(10, '04:30:00', 30),
(11, '05:00:00', 30),
(12, '05:30:00', 30),
(13, '06:00:00', 30),
(14, '06:30:00', 30),
(15, '07:00:00', 30),
(16, '07:30:00', 30),
(17, '08:00:00', 30),
(18, '08:30:00', 30),
(19, '09:00:00', 30),
(20, '09:30:00', 30),
(21, '10:00:00', 30),
(22, '10:30:00', 30),
(23, '11:00:00', 30),
(24, '11:30:00', 30),
(25, '12:00:00', 30),
(26, '12:30:00', 30),
(27, '13:00:00', 30),
(28, '13:30:00', 30),
(29, '14:00:00', 30),
(30, '14:30:00', 30),
(31, '15:00:00', 30),
(32, '15:30:00', 30),
(33, '16:00:00', 30),
(34, '16:30:00', 30),
(35, '17:00:00', 30),
(36, '17:30:00', 30),
(37, '18:00:00', 30),
(38, '18:30:00', 30),
(39, '19:00:00', 30),
(40, '19:30:00', 30),
(41, '20:00:00', 30),
(42, '20:30:00', 30),
(43, '21:00:00', 30),
(44, '21:30:00', 30),
(45, '22:00:00', 30),
(46, '22:30:00', 30),
(47, '23:00:00', 30),
(48, '23:30:00', 30);

-- --------------------------------------------------------

--
-- Table structure for table `time_date`
--

CREATE TABLE `time_date` (
  `id_time_date` int(11) NOT NULL,
  `fkid_days` int(11) DEFAULT NULL,
  `fkid_hours` int(11) DEFAULT NULL,
  `dates` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `time_date`
--

INSERT INTO `time_date` (`id_time_date`, `fkid_days`, `fkid_hours`, `dates`) VALUES
(1, 1, 1, '0000-00-00'),
(2, 1, 2, '0000-00-00'),
(3, 1, 3, '0000-00-00'),
(4, 1, 4, '0000-00-00'),
(5, 1, 5, '0000-00-00'),
(6, 1, 6, '0000-00-00'),
(7, 1, 7, '0000-00-00'),
(8, 1, 8, '0000-00-00'),
(9, 1, 9, '0000-00-00'),
(10, 1, 10, '0000-00-00'),
(11, 1, 11, '0000-00-00'),
(12, 1, 12, '0000-00-00'),
(13, 1, 13, '0000-00-00'),
(14, 1, 14, '0000-00-00'),
(15, 1, 15, '0000-00-00'),
(16, 1, 16, '0000-00-00'),
(17, 1, 17, '0000-00-00'),
(18, 1, 18, '0000-00-00'),
(19, 1, 19, '0000-00-00'),
(20, 1, 20, '0000-00-00'),
(21, 1, 21, '0000-00-00'),
(22, 1, 22, '0000-00-00'),
(23, 1, 23, '0000-00-00'),
(24, 1, 24, '0000-00-00'),
(25, 1, 25, '0000-00-00'),
(26, 1, 26, '0000-00-00'),
(27, 1, 27, '0000-00-00'),
(28, 1, 28, '0000-00-00'),
(29, 1, 29, '0000-00-00'),
(30, 1, 30, '0000-00-00'),
(31, 1, 31, '0000-00-00'),
(32, 1, 32, '0000-00-00'),
(33, 1, 33, '0000-00-00'),
(34, 1, 34, '0000-00-00'),
(35, 1, 35, '0000-00-00'),
(36, 1, 36, '0000-00-00'),
(37, 1, 37, '0000-00-00'),
(38, 1, 38, '0000-00-00'),
(39, 1, 39, '0000-00-00'),
(40, 1, 40, '0000-00-00'),
(41, 1, 41, '0000-00-00'),
(42, 1, 42, '0000-00-00'),
(43, 1, 43, '0000-00-00'),
(44, 1, 44, '0000-00-00'),
(45, 1, 45, '0000-00-00'),
(46, 1, 46, '0000-00-00'),
(47, 1, 47, '0000-00-00'),
(48, 1, 48, '0000-00-00'),
(49, 2, 1, '0000-00-00'),
(50, 2, 2, '0000-00-00'),
(51, 2, 3, '0000-00-00'),
(52, 2, 4, '0000-00-00'),
(53, 2, 5, '0000-00-00'),
(54, 2, 6, '0000-00-00'),
(55, 2, 7, '0000-00-00'),
(56, 2, 8, '0000-00-00'),
(57, 2, 9, '0000-00-00'),
(58, 2, 10, '0000-00-00'),
(59, 2, 11, '0000-00-00'),
(60, 2, 12, '0000-00-00'),
(61, 2, 13, '0000-00-00'),
(62, 2, 14, '0000-00-00'),
(63, 2, 15, '0000-00-00'),
(64, 2, 16, '0000-00-00'),
(65, 2, 17, '0000-00-00'),
(66, 2, 18, '0000-00-00'),
(67, 2, 19, '0000-00-00'),
(68, 2, 20, '0000-00-00'),
(69, 2, 21, '0000-00-00'),
(70, 2, 22, '0000-00-00'),
(71, 2, 23, '0000-00-00'),
(72, 2, 24, '0000-00-00'),
(73, 2, 25, '0000-00-00'),
(74, 2, 26, '0000-00-00'),
(75, 2, 27, '0000-00-00'),
(76, 2, 28, '0000-00-00'),
(77, 2, 29, '0000-00-00'),
(78, 2, 30, '0000-00-00'),
(79, 2, 31, '0000-00-00'),
(80, 2, 32, '0000-00-00'),
(81, 2, 33, '0000-00-00'),
(82, 2, 34, '0000-00-00'),
(83, 2, 35, '0000-00-00'),
(84, 2, 36, '0000-00-00'),
(85, 2, 37, '0000-00-00'),
(86, 2, 38, '0000-00-00'),
(87, 2, 39, '0000-00-00'),
(88, 2, 40, '0000-00-00'),
(89, 2, 41, '0000-00-00'),
(90, 2, 42, '0000-00-00'),
(91, 2, 43, '0000-00-00'),
(92, 2, 44, '0000-00-00'),
(93, 2, 45, '0000-00-00'),
(94, 2, 46, '0000-00-00'),
(95, 2, 47, '0000-00-00'),
(96, 2, 48, '0000-00-00'),
(97, 3, 1, '0000-00-00'),
(98, 3, 2, '0000-00-00'),
(99, 3, 3, '0000-00-00'),
(100, 3, 4, '0000-00-00'),
(101, 3, 5, '0000-00-00'),
(102, 3, 6, '0000-00-00'),
(103, 3, 7, '0000-00-00'),
(104, 3, 8, '0000-00-00'),
(105, 3, 9, '0000-00-00'),
(106, 3, 10, '0000-00-00'),
(107, 3, 11, '0000-00-00'),
(108, 3, 12, '0000-00-00'),
(109, 3, 13, '0000-00-00'),
(110, 3, 14, '0000-00-00'),
(111, 3, 15, '0000-00-00'),
(112, 3, 16, '0000-00-00'),
(113, 3, 17, '0000-00-00'),
(114, 3, 18, '0000-00-00'),
(115, 3, 19, '0000-00-00'),
(116, 3, 20, '0000-00-00'),
(117, 3, 21, '0000-00-00'),
(118, 3, 22, '0000-00-00'),
(119, 3, 23, '0000-00-00'),
(120, 3, 24, '0000-00-00'),
(121, 3, 25, '0000-00-00'),
(122, 3, 26, '0000-00-00'),
(123, 3, 27, '0000-00-00'),
(124, 3, 28, '0000-00-00'),
(125, 3, 29, '0000-00-00'),
(126, 3, 30, '0000-00-00'),
(127, 3, 31, '0000-00-00'),
(128, 3, 32, '0000-00-00'),
(129, 3, 33, '0000-00-00'),
(130, 3, 34, '0000-00-00'),
(131, 3, 35, '0000-00-00'),
(132, 3, 36, '0000-00-00'),
(133, 3, 37, '0000-00-00'),
(134, 3, 38, '0000-00-00'),
(135, 3, 39, '0000-00-00'),
(136, 3, 40, '0000-00-00'),
(137, 3, 41, '0000-00-00'),
(138, 3, 42, '0000-00-00'),
(139, 3, 43, '0000-00-00'),
(140, 3, 44, '0000-00-00'),
(141, 3, 45, '0000-00-00'),
(142, 3, 46, '0000-00-00'),
(143, 3, 47, '0000-00-00'),
(144, 3, 48, '0000-00-00'),
(145, 4, 1, '0000-00-00'),
(146, 4, 2, '0000-00-00'),
(147, 4, 3, '0000-00-00'),
(148, 4, 4, '0000-00-00'),
(149, 4, 5, '0000-00-00'),
(150, 4, 6, '0000-00-00'),
(151, 4, 7, '0000-00-00'),
(152, 4, 8, '0000-00-00'),
(153, 4, 9, '0000-00-00'),
(154, 4, 10, '0000-00-00'),
(155, 4, 11, '0000-00-00'),
(156, 4, 12, '0000-00-00'),
(157, 4, 13, '0000-00-00'),
(158, 4, 14, '0000-00-00'),
(159, 4, 15, '0000-00-00'),
(160, 4, 16, '0000-00-00'),
(161, 4, 17, '0000-00-00'),
(162, 4, 18, '0000-00-00'),
(163, 4, 19, '0000-00-00'),
(164, 4, 20, '0000-00-00'),
(165, 4, 21, '0000-00-00'),
(166, 4, 22, '0000-00-00'),
(167, 4, 23, '0000-00-00'),
(168, 4, 24, '0000-00-00'),
(169, 4, 25, '0000-00-00'),
(170, 4, 26, '0000-00-00'),
(171, 4, 27, '0000-00-00'),
(172, 4, 28, '0000-00-00'),
(173, 4, 29, '0000-00-00'),
(174, 4, 30, '0000-00-00'),
(175, 4, 31, '0000-00-00'),
(176, 4, 32, '0000-00-00'),
(177, 4, 33, '0000-00-00'),
(178, 4, 34, '0000-00-00'),
(179, 4, 35, '0000-00-00'),
(180, 4, 36, '0000-00-00'),
(181, 4, 37, '0000-00-00'),
(182, 4, 38, '0000-00-00'),
(183, 4, 39, '0000-00-00'),
(184, 4, 40, '0000-00-00'),
(185, 4, 41, '0000-00-00'),
(186, 4, 42, '0000-00-00'),
(187, 4, 43, '0000-00-00'),
(188, 4, 44, '0000-00-00'),
(189, 4, 45, '0000-00-00'),
(190, 4, 46, '0000-00-00'),
(191, 4, 47, '0000-00-00'),
(192, 4, 48, '0000-00-00'),
(193, 5, 1, '0000-00-00'),
(194, 5, 2, '0000-00-00'),
(195, 5, 3, '0000-00-00'),
(196, 5, 4, '0000-00-00'),
(197, 5, 5, '0000-00-00'),
(198, 5, 6, '0000-00-00'),
(199, 5, 7, '0000-00-00'),
(200, 5, 8, '0000-00-00'),
(201, 5, 9, '0000-00-00'),
(202, 5, 10, '0000-00-00'),
(203, 5, 11, '0000-00-00'),
(204, 5, 12, '0000-00-00'),
(205, 5, 13, '0000-00-00'),
(206, 5, 14, '0000-00-00'),
(207, 5, 15, '0000-00-00'),
(208, 5, 16, '0000-00-00'),
(209, 5, 17, '0000-00-00'),
(210, 5, 18, '0000-00-00'),
(211, 5, 19, '0000-00-00'),
(212, 5, 20, '0000-00-00'),
(213, 5, 21, '0000-00-00'),
(214, 5, 22, '0000-00-00'),
(215, 5, 23, '0000-00-00'),
(216, 5, 24, '0000-00-00'),
(217, 5, 25, '0000-00-00'),
(218, 5, 26, '0000-00-00'),
(219, 5, 27, '0000-00-00'),
(220, 5, 28, '0000-00-00'),
(221, 5, 29, '0000-00-00'),
(222, 5, 30, '0000-00-00'),
(223, 5, 31, '0000-00-00'),
(224, 5, 32, '0000-00-00'),
(225, 5, 33, '0000-00-00'),
(226, 5, 34, '0000-00-00'),
(227, 5, 35, '0000-00-00'),
(228, 5, 36, '0000-00-00'),
(229, 5, 37, '0000-00-00'),
(230, 5, 38, '0000-00-00'),
(231, 5, 39, '0000-00-00'),
(232, 5, 40, '0000-00-00'),
(233, 5, 41, '0000-00-00'),
(234, 5, 42, '0000-00-00'),
(235, 5, 43, '0000-00-00'),
(236, 5, 44, '0000-00-00'),
(237, 5, 45, '0000-00-00'),
(238, 5, 46, '0000-00-00'),
(239, 5, 47, '0000-00-00'),
(240, 5, 48, '0000-00-00'),
(241, 6, 1, '0000-00-00'),
(242, 6, 2, '0000-00-00'),
(243, 6, 3, '0000-00-00'),
(244, 6, 4, '0000-00-00'),
(245, 6, 5, '0000-00-00'),
(246, 6, 6, '0000-00-00'),
(247, 6, 7, '0000-00-00'),
(248, 6, 8, '0000-00-00'),
(249, 6, 9, '0000-00-00'),
(250, 6, 10, '0000-00-00'),
(251, 6, 11, '0000-00-00'),
(252, 6, 12, '0000-00-00'),
(253, 6, 13, '0000-00-00'),
(254, 6, 14, '0000-00-00'),
(255, 6, 15, '0000-00-00'),
(256, 6, 16, '0000-00-00'),
(257, 6, 17, '0000-00-00'),
(258, 6, 18, '0000-00-00'),
(259, 6, 19, '0000-00-00'),
(260, 6, 20, '0000-00-00'),
(261, 6, 21, '0000-00-00'),
(262, 6, 22, '0000-00-00'),
(263, 6, 23, '0000-00-00'),
(264, 6, 24, '0000-00-00'),
(265, 6, 25, '0000-00-00'),
(266, 6, 26, '0000-00-00'),
(267, 6, 27, '0000-00-00'),
(268, 6, 28, '0000-00-00'),
(269, 6, 29, '0000-00-00'),
(270, 6, 30, '0000-00-00'),
(271, 6, 31, '0000-00-00'),
(272, 6, 32, '0000-00-00'),
(273, 6, 33, '0000-00-00'),
(274, 6, 34, '0000-00-00'),
(275, 6, 35, '0000-00-00'),
(276, 6, 36, '0000-00-00'),
(277, 6, 37, '0000-00-00'),
(278, 6, 38, '0000-00-00'),
(279, 6, 39, '0000-00-00'),
(280, 6, 40, '0000-00-00'),
(281, 6, 41, '0000-00-00'),
(282, 6, 42, '0000-00-00'),
(283, 6, 43, '0000-00-00'),
(284, 6, 44, '0000-00-00'),
(285, 6, 45, '0000-00-00'),
(286, 6, 46, '0000-00-00'),
(287, 6, 47, '0000-00-00'),
(288, 6, 48, '0000-00-00'),
(289, 7, 1, '0000-00-00'),
(290, 7, 2, '0000-00-00'),
(291, 7, 3, '0000-00-00'),
(292, 7, 4, '0000-00-00'),
(293, 7, 5, '0000-00-00'),
(294, 7, 6, '0000-00-00'),
(295, 7, 7, '0000-00-00'),
(296, 7, 8, '0000-00-00'),
(297, 7, 9, '0000-00-00'),
(298, 7, 10, '0000-00-00'),
(299, 7, 11, '0000-00-00'),
(300, 7, 12, '0000-00-00'),
(301, 7, 13, '0000-00-00'),
(302, 7, 14, '0000-00-00'),
(303, 7, 15, '0000-00-00'),
(304, 7, 16, '0000-00-00'),
(305, 7, 17, '0000-00-00'),
(306, 7, 18, '0000-00-00'),
(307, 7, 19, '0000-00-00'),
(308, 7, 20, '0000-00-00'),
(309, 7, 21, '0000-00-00'),
(310, 7, 22, '0000-00-00'),
(311, 7, 23, '0000-00-00'),
(312, 7, 24, '0000-00-00'),
(313, 7, 25, '0000-00-00'),
(314, 7, 26, '0000-00-00'),
(315, 7, 27, '0000-00-00'),
(316, 7, 28, '0000-00-00'),
(317, 7, 29, '0000-00-00'),
(318, 7, 30, '0000-00-00'),
(319, 7, 31, '0000-00-00'),
(320, 7, 32, '0000-00-00'),
(321, 7, 33, '0000-00-00'),
(322, 7, 34, '0000-00-00'),
(323, 7, 35, '0000-00-00'),
(324, 7, 36, '0000-00-00'),
(325, 7, 37, '0000-00-00'),
(326, 7, 38, '0000-00-00'),
(327, 7, 39, '0000-00-00'),
(328, 7, 40, '0000-00-00'),
(329, 7, 41, '0000-00-00'),
(330, 7, 42, '0000-00-00'),
(331, 7, 43, '0000-00-00'),
(332, 7, 44, '0000-00-00'),
(333, 7, 45, '0000-00-00'),
(334, 7, 46, '0000-00-00'),
(335, 7, 47, '0000-00-00'),
(336, 7, 48, '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id_days`);

--
-- Indexes for table `erlang`
--
ALTER TABLE `erlang`
  ADD PRIMARY KEY (`id_erlang`),
  ADD KEY `fkid_time_date` (`fkid_time_date`);

--
-- Indexes for table `hours`
--
ALTER TABLE `hours`
  ADD PRIMARY KEY (`id_hours`);

--
-- Indexes for table `time_date`
--
ALTER TABLE `time_date`
  ADD PRIMARY KEY (`id_time_date`),
  ADD KEY `fkid_days` (`fkid_days`),
  ADD KEY `fkid_hours` (`fkid_hours`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `days`
--
ALTER TABLE `days`
  MODIFY `id_days` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `erlang`
--
ALTER TABLE `erlang`
  MODIFY `id_erlang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;

--
-- AUTO_INCREMENT for table `hours`
--
ALTER TABLE `hours`
  MODIFY `id_hours` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `time_date`
--
ALTER TABLE `time_date`
  MODIFY `id_time_date` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `erlang`
--
ALTER TABLE `erlang`
  ADD CONSTRAINT `erlang_ibfk_1` FOREIGN KEY (`fkid_time_date`) REFERENCES `time_date` (`id_time_date`);

--
-- Constraints for table `time_date`
--
ALTER TABLE `time_date`
  ADD CONSTRAINT `time_date_ibfk_1` FOREIGN KEY (`fkid_days`) REFERENCES `days` (`id_days`),
  ADD CONSTRAINT `time_date_ibfk_2` FOREIGN KEY (`fkid_hours`) REFERENCES `hours` (`id_hours`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
