-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 04. Jun 2023 um 17:32
-- Server-Version: 10.4.25-MariaDB
-- PHP-Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `matratzenfinder`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `allergy`
--

CREATE TABLE `allergy` (
  `a_id` int(11) NOT NULL,
  `allergy_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `allergy`
--

INSERT INTO `allergy` (`a_id`, `allergy_type`) VALUES
(1, 'Latex'),
(2, 'Milben'),
(3, 'Tierhaar');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `allergy_mattress`
--

CREATE TABLE `allergy_mattress` (
  `am_id` int(11) NOT NULL,
  `ma_id` int(11) NOT NULL,
  `a_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `allergy_mattress`
--

INSERT INTO `allergy_mattress` (`am_id`, `ma_id`, `a_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3),
(7, 3, 1),
(8, 3, 2),
(9, 3, 3),
(10, 4, 1),
(11, 4, 2),
(12, 4, 3),
(13, 5, 1),
(14, 5, 2),
(15, 5, 3),
(16, 6, 1),
(17, 6, 2),
(18, 6, 3),
(19, 7, 1),
(20, 7, 2),
(21, 7, 3),
(22, 8, 1),
(23, 8, 2),
(24, 8, 3),
(25, 9, 1),
(26, 9, 2),
(27, 9, 3),
(28, 10, 1),
(29, 10, 2),
(30, 10, 3),
(31, 11, 1),
(32, 11, 2),
(33, 11, 3),
(34, 12, 1),
(35, 12, 2),
(36, 12, 3),
(37, 13, 2),
(38, 13, 3),
(39, 14, 2),
(40, 14, 3),
(41, 15, 2),
(42, 15, 3),
(43, 16, 2),
(44, 16, 3),
(45, 17, 2),
(46, 17, 3),
(47, 18, 2),
(48, 19, 2),
(49, 19, 3),
(50, 20, 2),
(51, 20, 3),
(52, 21, 1),
(53, 21, 2),
(54, 21, 3),
(55, 22, 1),
(56, 22, 2),
(57, 22, 3),
(58, 23, 1),
(59, 23, 2),
(60, 23, 3),
(61, 24, 1),
(62, 24, 2),
(63, 24, 3),
(64, 25, 1),
(65, 25, 2),
(66, 25, 3),
(67, 26, 1),
(68, 26, 2),
(69, 26, 3),
(70, 27, 1),
(71, 27, 2),
(72, 27, 3),
(73, 28, 1),
(74, 28, 2),
(75, 28, 3),
(76, 29, 1),
(77, 29, 2),
(78, 29, 3),
(79, 30, 2),
(80, 30, 3),
(81, 31, 2),
(82, 31, 3),
(83, 32, 2),
(84, 32, 3),
(85, 33, 2),
(86, 34, 2),
(87, 34, 3),
(88, 35, 2),
(89, 35, 3),
(90, 36, 2),
(91, 37, 2),
(92, 37, 3),
(93, 38, 2),
(94, 38, 3),
(95, 39, 2),
(96, 39, 3),
(97, 40, 1),
(98, 40, 2),
(99, 40, 3),
(100, 41, 1),
(101, 41, 2),
(102, 41, 3),
(103, 42, 1),
(104, 42, 2),
(105, 42, 3),
(106, 43, 1),
(107, 43, 2),
(108, 43, 3),
(109, 44, 1),
(110, 44, 2),
(111, 44, 3),
(112, 45, 1),
(113, 45, 2),
(114, 45, 3),
(115, 46, 1),
(116, 46, 2),
(117, 46, 3),
(118, 47, 1),
(119, 47, 2),
(120, 47, 3),
(121, 48, 1),
(122, 48, 2),
(123, 48, 3),
(124, 49, 1),
(125, 49, 2),
(126, 49, 3),
(127, 50, 1),
(128, 50, 2),
(129, 50, 3),
(130, 51, 1),
(131, 51, 2),
(132, 51, 3),
(133, 52, 1),
(134, 52, 2),
(135, 52, 3),
(136, 53, 2),
(137, 53, 3),
(138, 54, 2),
(139, 54, 3),
(140, 55, 2),
(141, 55, 3),
(142, 56, 2),
(143, 56, 3),
(144, 57, 2),
(145, 57, 3),
(146, 58, 2),
(147, 58, 3),
(148, 59, 2),
(149, 59, 3),
(150, 60, 1),
(151, 60, 2),
(152, 60, 3),
(153, 61, 1),
(154, 61, 2),
(155, 61, 3),
(156, 62, 1),
(157, 62, 2),
(158, 62, 3),
(159, 63, 1),
(160, 63, 2),
(161, 63, 3),
(162, 64, 1),
(163, 64, 2),
(164, 64, 3),
(165, 65, 1),
(166, 65, 2),
(167, 65, 3),
(168, 66, 1),
(169, 66, 2),
(170, 66, 3),
(171, 67, 1),
(172, 67, 2),
(173, 67, 3),
(174, 68, 1),
(175, 68, 2),
(176, 68, 3),
(177, 69, 1),
(178, 69, 2),
(179, 69, 3),
(180, 70, 1),
(181, 70, 2),
(182, 70, 3),
(183, 71, 1),
(184, 71, 2),
(185, 71, 3),
(186, 72, 1),
(187, 72, 2),
(188, 72, 3),
(189, 73, 2),
(190, 73, 3),
(191, 74, 1),
(192, 74, 2),
(193, 74, 3),
(194, 75, 1),
(195, 75, 2),
(196, 75, 3),
(197, 76, 1),
(198, 76, 2),
(199, 76, 3),
(200, 77, 1),
(201, 77, 2),
(202, 77, 3),
(203, 78, 1),
(204, 78, 2),
(205, 78, 3),
(206, 79, 2),
(207, 79, 3),
(208, 80, 2),
(209, 80, 3),
(210, 81, 2),
(211, 82, 2),
(212, 82, 3),
(213, 83, 2),
(214, 83, 3),
(215, 84, 1),
(216, 84, 2),
(217, 84, 3),
(218, 85, 1),
(219, 85, 2),
(220, 85, 3),
(221, 86, 1),
(222, 86, 2),
(223, 86, 3),
(224, 87, 2),
(225, 87, 3),
(226, 88, 1),
(227, 88, 2),
(228, 88, 3),
(229, 89, 2),
(230, 89, 3),
(231, 90, 1),
(232, 90, 2),
(233, 90, 3),
(234, 91, 1),
(235, 91, 2),
(236, 91, 3),
(237, 92, 1),
(238, 92, 2),
(239, 92, 3),
(240, 93, 1),
(241, 93, 2),
(242, 93, 3),
(243, 94, 2),
(244, 94, 3),
(245, 95, 1),
(246, 95, 2),
(247, 95, 3),
(248, 96, 1),
(249, 96, 2),
(250, 96, 3),
(251, 97, 2),
(252, 97, 3),
(253, 98, 1),
(254, 98, 2),
(255, 98, 3);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `complaints`
--

CREATE TABLE `complaints` (
  `c_id` int(11) NOT NULL,
  `complaints` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `complaints`
--

INSERT INTO `complaints` (`c_id`, `complaints`) VALUES
(1, 'Ruecken'),
(2, 'Schultern'),
(3, 'Huefte'),
(4, 'keine');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `complaints_mattress`
--

CREATE TABLE `complaints_mattress` (
  `cm_id` int(11) NOT NULL,
  `ma_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `complaints_mattress`
--

INSERT INTO `complaints_mattress` (`cm_id`, `ma_id`, `c_id`) VALUES
(1, 1, 4),
(2, 2, 4),
(3, 3, 4),
(4, 4, 4),
(5, 5, 4),
(6, 6, 1),
(7, 7, 1),
(8, 7, 2),
(9, 8, 4),
(10, 9, 1),
(11, 9, 2),
(12, 10, 1),
(13, 10, 2),
(14, 11, 4),
(15, 12, 4),
(16, 13, 1),
(17, 13, 2),
(18, 14, 1),
(19, 15, 1),
(20, 16, 2),
(21, 16, 3),
(22, 17, 1),
(23, 18, 2),
(24, 19, 1),
(25, 19, 2),
(26, 20, 2),
(27, 21, 4),
(28, 22, 2),
(29, 22, 3),
(30, 23, 1),
(31, 23, 2),
(32, 23, 3),
(33, 24, 4),
(34, 25, 2),
(35, 25, 3),
(36, 26, 4),
(37, 27, 2),
(38, 28, 4),
(39, 29, 2),
(40, 30, 2),
(41, 31, 2),
(42, 31, 3),
(43, 32, 4),
(44, 33, 1),
(45, 34, 1),
(46, 34, 2),
(47, 34, 3),
(48, 35, 4),
(49, 36, 4),
(50, 37, 4),
(51, 38, 4),
(52, 39, 1),
(53, 40, 4),
(54, 41, 4),
(55, 42, 4),
(56, 43, 1),
(57, 44, 2),
(58, 44, 3),
(59, 45, 2),
(60, 45, 3),
(61, 46, 2),
(62, 47, 2),
(63, 47, 3),
(64, 48, 1),
(65, 49, 1),
(66, 49, 2),
(67, 50, 4),
(68, 51, 2),
(69, 51, 3),
(70, 52, 2),
(71, 53, 4),
(72, 54, 4),
(73, 55, 4),
(74, 56, 4),
(75, 57, 1),
(76, 58, 1),
(77, 59, 1),
(78, 59, 2),
(79, 59, 3),
(80, 60, 4),
(81, 61, 2),
(82, 61, 3),
(83, 62, 2),
(84, 63, 4),
(85, 64, 4),
(86, 65, 4),
(87, 66, 1),
(88, 66, 4),
(89, 67, 4),
(90, 68, 1),
(91, 68, 2),
(92, 69, 1),
(93, 69, 2),
(94, 70, 1),
(95, 70, 2),
(96, 70, 3),
(97, 71, 4),
(98, 72, 2),
(99, 72, 3),
(100, 73, 2),
(101, 74, 1),
(102, 74, 2),
(103, 75, 2),
(104, 75, 3),
(105, 76, 1),
(106, 76, 2),
(107, 77, 1),
(108, 77, 3),
(109, 78, 2),
(110, 78, 3),
(111, 79, 1),
(112, 79, 4),
(113, 80, 1),
(114, 81, 1),
(115, 81, 2),
(116, 82, 1),
(117, 82, 4),
(118, 83, 4),
(119, 84, 2),
(120, 84, 3),
(121, 85, 1),
(122, 85, 2),
(123, 85, 3),
(124, 86, 2),
(125, 86, 3),
(126, 87, 4),
(127, 88, 2),
(128, 88, 3),
(129, 89, 2),
(130, 89, 3),
(131, 90, 3),
(132, 91, 2),
(133, 91, 3),
(134, 92, 2),
(135, 92, 3),
(136, 93, 2),
(137, 93, 3),
(138, 94, 2),
(139, 94, 3),
(140, 95, 1),
(141, 95, 2),
(142, 95, 3),
(143, 96, 2),
(144, 96, 3),
(145, 97, 1),
(146, 97, 2),
(147, 97, 3),
(148, 98, 2),
(149, 98, 3);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `groups`
--

CREATE TABLE `groups` (
  `g_id` int(11) NOT NULL,
  `groups_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `groups`
--

INSERT INTO `groups` (`g_id`, `groups_name`) VALUES
(1, 'Erwachsene'),
(2, 'Kinder');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `haertegrade`
--

CREATE TABLE `haertegrade` (
  `h_id` varchar(50) NOT NULL,
  `haertegrad` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `haertegrade`
--

INSERT INTO `haertegrade` (`h_id`, `haertegrad`) VALUES
('H1', 'soft'),
('H2', 'medium'),
('H3', 'fest'),
('H4', 'extra fest');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `haertegrade_mattress`
--

CREATE TABLE `haertegrade_mattress` (
  `hm_id` int(11) NOT NULL,
  `ma_id` int(11) NOT NULL,
  `h_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `haertegrade_mattress`
--

INSERT INTO `haertegrade_mattress` (`hm_id`, `ma_id`, `h_id`) VALUES
(1, 1, 'H1'),
(2, 2, 'H2'),
(3, 2, 'H3'),
(4, 2, 'H4'),
(5, 3, 'H2'),
(6, 3, 'H3'),
(7, 4, 'H2'),
(8, 4, 'H3'),
(9, 5, 'H3'),
(10, 6, 'H2'),
(11, 6, 'H3'),
(12, 7, 'H2'),
(13, 7, 'H3'),
(14, 8, 'H2'),
(15, 8, 'H3'),
(16, 9, 'H2'),
(17, 9, 'H3'),
(18, 10, 'H2'),
(19, 10, 'H3'),
(20, 10, 'H4'),
(21, 11, 'H2'),
(22, 11, 'H3'),
(23, 12, 'H2'),
(24, 12, 'H3'),
(25, 12, 'H4'),
(26, 13, 'H1'),
(27, 14, 'H1'),
(28, 15, 'H1'),
(29, 16, 'H1'),
(30, 16, 'H2'),
(31, 16, 'H3'),
(32, 17, 'H2'),
(33, 17, 'H3'),
(34, 18, 'H2'),
(35, 18, 'H3'),
(36, 19, 'H1'),
(37, 19, 'H2'),
(38, 19, 'H3'),
(39, 20, 'H2'),
(40, 20, 'H3'),
(41, 21, 'H2'),
(42, 21, 'H3'),
(43, 22, 'H2'),
(44, 22, 'H3'),
(45, 23, 'H2'),
(46, 23, 'H3'),
(47, 24, 'H2'),
(48, 24, 'H3'),
(49, 25, 'H2'),
(50, 25, 'H3'),
(51, 26, 'H2'),
(52, 26, 'H3'),
(53, 27, 'H2'),
(54, 27, 'H3'),
(55, 28, 'H1'),
(56, 28, 'H2'),
(57, 28, 'H3'),
(58, 29, 'H1'),
(59, 29, 'H2'),
(60, 29, 'H3'),
(61, 30, 'H1'),
(62, 30, 'H2'),
(63, 30, 'H3'),
(64, 31, 'H1'),
(65, 31, 'H2'),
(66, 31, 'H3'),
(67, 32, 'H2'),
(68, 33, 'H1'),
(69, 33, 'H2'),
(70, 33, 'H3'),
(71, 34, 'H2'),
(72, 34, 'H3'),
(73, 35, 'H1'),
(74, 35, 'H2'),
(75, 35, 'H3'),
(76, 36, 'H1'),
(77, 36, 'H2'),
(78, 36, 'H3'),
(79, 37, 'H3'),
(80, 38, 'H2'),
(81, 38, 'H3'),
(82, 39, 'H2'),
(83, 39, 'H3'),
(84, 40, 'H2'),
(85, 40, 'H3'),
(86, 41, 'H2'),
(87, 41, 'H3'),
(88, 41, 'H4'),
(89, 42, 'H1'),
(90, 43, 'H1'),
(91, 44, 'H1'),
(92, 44, 'H2'),
(93, 44, 'H3'),
(94, 44, 'H4'),
(95, 45, 'H1'),
(96, 45, 'H2'),
(97, 45, 'H3'),
(98, 45, 'H4'),
(99, 46, 'H2'),
(100, 46, 'H3'),
(101, 46, 'H4'),
(102, 47, 'H2'),
(103, 47, 'H3'),
(104, 48, 'H2'),
(105, 48, 'H3'),
(106, 48, 'H4'),
(107, 49, 'H2'),
(108, 49, 'H3'),
(109, 50, 'H2'),
(110, 50, 'H3'),
(111, 50, 'H4'),
(112, 51, 'H2'),
(113, 51, 'H3'),
(114, 52, 'H1'),
(115, 52, 'H2'),
(116, 52, 'H3'),
(117, 52, 'H4'),
(118, 53, 'H1'),
(119, 53, 'H2'),
(120, 54, 'H1'),
(121, 54, 'H2'),
(122, 54, 'H3'),
(123, 55, 'H2'),
(124, 55, 'H3'),
(125, 56, 'H1'),
(126, 56, 'H2'),
(127, 57, 'H3'),
(128, 58, 'H1'),
(129, 58, 'H2'),
(130, 58, 'H3'),
(131, 59, 'H1'),
(132, 59, 'H2'),
(133, 59, 'H3'),
(134, 60, 'H1'),
(135, 60, 'H2'),
(136, 60, 'H3'),
(137, 60, 'H4'),
(138, 61, 'H1'),
(139, 61, 'H2'),
(140, 61, 'H3'),
(141, 62, 'H1'),
(142, 62, 'H2'),
(143, 62, 'H3'),
(144, 63, 'H1'),
(145, 63, 'H2'),
(146, 63, 'H3'),
(147, 63, 'H4'),
(148, 64, 'H1'),
(149, 64, 'H2'),
(150, 64, 'H3'),
(151, 64, 'H4'),
(152, 65, 'H1'),
(153, 65, 'H2'),
(154, 65, 'H3'),
(155, 66, 'H1'),
(156, 66, 'H2'),
(157, 66, 'H3'),
(158, 66, 'H4'),
(159, 67, 'H1'),
(160, 67, 'H2'),
(161, 67, 'H3'),
(162, 68, 'H1'),
(163, 68, 'H2'),
(164, 68, 'H3'),
(165, 69, 'H1'),
(166, 69, 'H2'),
(167, 69, 'H3'),
(168, 69, 'H4'),
(169, 70, 'H1'),
(170, 70, 'H2'),
(171, 70, 'H3'),
(172, 71, 'H1'),
(173, 71, 'H2'),
(174, 71, 'H3'),
(175, 71, 'H4'),
(176, 72, 'H1'),
(177, 72, 'H2'),
(178, 72, 'H3'),
(179, 73, 'H1'),
(180, 73, 'H2'),
(181, 73, 'H3'),
(182, 74, 'H1'),
(183, 74, 'H2'),
(184, 74, 'H3'),
(185, 75, 'H1'),
(186, 75, 'H2'),
(187, 75, 'H3'),
(188, 76, 'H1'),
(189, 76, 'H2'),
(190, 76, 'H3'),
(191, 77, 'H1'),
(192, 77, 'H2'),
(193, 77, 'H3'),
(194, 78, 'H1'),
(195, 78, 'H3'),
(196, 79, 'H2'),
(197, 79, 'H3'),
(198, 80, 'H1'),
(199, 80, 'H2'),
(200, 80, 'H3'),
(201, 81, 'H2'),
(202, 81, 'H3'),
(203, 82, 'H1'),
(204, 82, 'H2'),
(205, 82, 'H3'),
(206, 83, 'H2'),
(207, 84, 'H1'),
(208, 84, 'H3'),
(209, 85, 'H1'),
(210, 85, 'H2'),
(211, 85, 'H3'),
(212, 86, 'H1'),
(213, 86, 'H3'),
(214, 87, 'H1'),
(215, 87, 'H3'),
(216, 88, 'H1'),
(217, 88, 'H2'),
(218, 88, 'H3'),
(219, 88, 'H4'),
(220, 89, 'H1'),
(221, 89, 'H2'),
(222, 89, 'H3'),
(223, 90, 'H1'),
(224, 90, 'H2'),
(225, 90, 'H3'),
(226, 90, 'H4'),
(227, 91, 'H1'),
(228, 91, 'H2'),
(229, 91, 'H3'),
(230, 91, 'H4'),
(231, 92, 'H1'),
(232, 92, 'H2'),
(233, 92, 'H3'),
(234, 92, 'H4'),
(235, 93, 'H1'),
(236, 93, 'H2'),
(237, 93, 'H3'),
(238, 94, 'H1'),
(239, 94, 'H2'),
(240, 94, 'H3'),
(241, 95, 'H1'),
(242, 95, 'H2'),
(243, 95, 'H3'),
(244, 96, 'H1'),
(245, 96, 'H2'),
(246, 96, 'H3'),
(247, 97, 'H1'),
(248, 97, 'H2'),
(249, 98, 'H1'),
(250, 98, 'H2'),
(251, 98, 'H3');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `material`
--

CREATE TABLE `material` (
  `m_id` int(11) NOT NULL,
  `material` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `material`
--

INSERT INTO `material` (`m_id`, `material`) VALUES
(1, 'Kaltschaum'),
(2, 'Federkern'),
(3, 'Latex'),
(4, 'Naturlatex'),
(5, 'Viskose'),
(6, 'Komfortschaum');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `mattress`
--

CREATE TABLE `mattress` (
  `ma_id` int(11) NOT NULL,
  `mattress` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `group_fk` int(11) NOT NULL,
  `material_fk` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `mattress`
--

INSERT INTO `mattress` (`ma_id`, `mattress`, `price`, `group_fk`, `material_fk`, `url`, `picture`) VALUES
(1, 'Badenia Trendline Junior Kindermatratze', 122, 2, 1, 'https://www.belama.de/badenia-trendline-kiddy/', 'https://www.belama.de/media/image/product/280/lg/badenia-trendline-kiddy-.jpg'),
(2, 'Badenia irisette Sinus KS Kaltschaummatratze', 549, 1, 1, 'https://www.belama.de/badenia-irisette-sinus-ks-kaltschaummatratze/', 'https://www.belama.de/media/image/product/1456/lg/badenia-irisette-sinus-ks-kaltschaummatratze-.jpg'),
(3, 'Badenia Jubiläumsmatratze TTFK Tonnentaschenfederkern-Matratze', 249, 1, 2, 'https://www.belama.de/badenia-jubilaeumsmatratze-ttfk-tonnentaschenfederkern-matratze', 'https://www.belama.de/media/image/product/1527/lg/badenia-jubilaeumsmatratze-ttfk-tonnentaschenfederkern-matratze.jpg'),
(4, 'Badenia Trendline BT 310 Kaltschaummatratze', 436, 1, 1, 'https://www.belama.de/badenia-trendline-bt-310-kaltschaummatratze/', 'https://www.belama.de/media/image/product/131212/lg/badenia-trendline-bt-310-kaltschaummatratze-.jpg'),
(5, 'Badenia Trendline BT 120 TTFK Tonnentaschenfederkern-Matratze', 223, 1, 2, 'https://www.belama.de/badenia-trendline-bt-120-ttfk/', 'https://www.belama.de/media/image/product/279/lg/badenia-trendline-bt-120-ttfk-.jpg'),
(6, 'Badenia irisette Gel-active® Classic TFK Taschenfederkern-Matratze', 849, 1, 2, 'https://www.belama.de/badenia-irisette-gel-active-classic-tfk-taschenfederkern-matratze/', 'https://www.belama.de/media/image/product/1459/lg/badenia-irisette-gel-active-classic-tfk-taschenfederkern-matratze-.jpg'),
(7, 'Badenia irisette Büsum KS Kaltschaummatratze', 549, 1, 1, 'https://www.belama.de/badenia-irisette-buesum-ks-kaltschaummatratze/', 'https://www.belama.de/media/image/product/1061/lg/badenia-irisette-buesum-ks-kaltschaummatratze-.png'),
(8, 'Badenia irisette Cuba 22 TTFK Tonnentaschenfederkern-Matratze', 599, 1, 2, 'https://www.belama.de/badenia-irisette-cuba-22-ttfk-tonnentaschenfederkernmatratze/', 'https://www.belama.de/media/image/product/132130/lg/badenia-irisette-cuba-22-ttfk-tonnentaschenfederkernmatratze-.jpg'),
(9, 'Badenia irisette Grömitz 7 Zonen Kaltschaummatratze', 749, 1, 1, 'https://www.belama.de/badenia-irisette-groemitz-kaltschaummatratze/', 'https://www.belama.de/media/image/product/1063/lg/badenia-irisette-groemitz-kaltschaummatratze-.jpg'),
(10, 'Badenia irisette Gel-active® Classic KS Kaltschaummatratze', 849, 1, 1, 'https://www.belama.de/badenia-irisette-gel-active-classic-ks-kaltschaummatratze/', 'https://www.belama.de/media/image/product/1458/lg/badenia-irisette-gel-active-classic-ks-kaltschaummatratze-.jpg'),
(11, 'Badenia irisette Grömitz TTFK 7 Zonen Tonnentaschenfederkernmatratze', 749, 1, 2, 'https://www.belama.de/badenia-irisette-groemitz-ttfk-taschenfederkernmatratze/', 'https://www.belama.de/media/image/product/1064/lg/badenia-irisette-groemitz-ttfk-taschenfederkernmatratze-.jpg'),
(12, 'Badenia irisette Sylt TTFK Tonnentaschenfederkern-Matratze', 649, 1, 2, 'https://www.belama.de/badenia-irisette-sylt-ttfk-tonnentaschenfederkernmatratze/', 'https://www.belama.de/media/image/product/131977/lg/badenia-irisette-sylt-ttfk-tonnentaschenfederkernmatratze-.jpg'),
(13, 'Baumberger SoLana Kindermatratze', 259, 2, 4, 'https://www.belama.de/baumberger-solana-kindermatratze/', 'https://www.belama.de/media/image/product/806/lg/baumberger-solana-kindermatratze-.jpg'),
(14, 'Baumberger CocoKid Kindermatratze', 669, 2, 4, 'https://www.belama.de/baumberger-cocokid-kindermatratze/', 'https://www.belama.de/media/image/product/905/lg/baumberger-cocokid-kindermatratze-.jpg'),
(15, 'Baumberger CocoLana Kindermatratze', 189, 2, 4, 'https://www.belama.de/baumberger-cocolana-kindermatratze/', 'https://www.belama.de/media/image/product/804/lg/baumberger-cocolana-kindermatratze-.jpg'),
(16, 'Baumberger Ergo-Zone Naturlatexmatratze', 998, 1, 4, 'https://www.belama.de/baumberger-ergo-zone-naturlatexmatratze/', 'https://www.belama.de/media/image/product/397/lg/baumberger-ergo-zone-naturlatexmatratze-.jpg'),
(17, 'Baumberger PiuMa Coko Naturlatexmatratze', 1039, 1, 4, 'https://www.belama.de/baumberger-piuma-coko/', 'https://www.belama.de/media/image/product/392/lg/baumberger-piuma-coko-.jpg'),
(18, 'Baumberger PiuMa Roko Naturlatexmatratze', 1069, 1, 4, 'https://www.belama.de/baumberger-piuma-roko/', 'https://www.belama.de/media/image/product/391/lg/baumberger-piuma-roko-.jpg'),
(19, 'Baumberger PiuMa Lana Naturlatexmatratze', 979, 1, 4, 'https://www.belama.de/baumberger-piuma-lana/', 'https://www.belama.de/media/image/product/394/lg/baumberger-piuma-lana-.jpg'),
(20, 'Baumberger Varia Lana Comfort Z', 819, 1, 4, 'https://www.belama.de/baumberger-varia-lana-comfort-z/', 'https://www.belama.de/media/image/product/388/lg/baumberger-varia-lana-comfort-z-.jpg'),
(21, 'billerbeck Basic Airtec Taschenfederkernmatratze', 699, 1, 2, 'https://www.belama.de/billerbeck-basic-airtec-taschenfederkernmatratze/', 'https://www.belama.de/media/image/product/456/lg/billerbeck-basic-airtec-taschenfederkernmatratze-.jpg'),
(22, 'billerbeck Wash Star 24 Kaltschaummatratze', 619, 1, 1, 'https://www.belama.de/billerbeck-wash-star-24-kaltschaummatratze/', 'https://www.belama.de/media/image/product/836/lg/billerbeck-wash-star-24-kaltschaummatratze-.jpg'),
(23, 'billerbeck Classic Airtec Kaltschaummatratze', 699, 1, 1, 'https://www.belama.de/billerbeck-classic-airtec-kaltschaummatratze/', 'https://www.belama.de/media/image/product/101298/lg/billerbeck-classic-airtec-kaltschaummatratze-.jpg'),
(24, 'billerbeck Silver Star 18 Kaltschaummatratze', 559, 1, 1, 'https://www.belama.de/billerbeck-silver-star-18-kaltschaummatratze/', 'https://www.belama.de/media/image/product/832/lg/billerbeck-silver-star-18-kaltschaummatratze-.jpg'),
(25, 'billerbeck Wash Star 21 Kaltschaummatratze', 559, 1, 1, 'https://www.belama.de/billerbeck-wash-star-21-kaltschaummatratze/', 'https://www.belama.de/media/image/product/835/lg/billerbeck-wash-star-21-kaltschaummatratze-.jpg'),
(26, 'billerbeck Silver Star 23 Kaltschaummatratze', 619, 1, 1, 'https://www.belama.de/billerbeck-silver-star-23-kaltschaummatratze/', 'https://www.belama.de/media/image/product/101325/lg/billerbeck-silver-star-23-kaltschaummatratze-.jpg'),
(27, 'billerbeck Wash Star 18 Kaltschaummatratze', 499, 1, 1, 'https://www.belama.de/billerbeck-wash-star-18-kaltschaummatratze/', 'https://www.belama.de/media/image/product/834/lg/billerbeck-wash-star-18-kaltschaummatratze-.jpg'),
(28, 'Dermapur Feeling 18 Visco-Matratze', 849, 1, 5, 'https://www.belama.de/dermapur-feeling-18-visco-matratze/', 'https://www.belama.de/media/image/product/478/lg/dermapur-feeling-18-visco-matratze-.jpg'),
(29, 'Dermapur Feeling 21 Visco-Matratze', 1098, 1, 5, 'https://www.belama.de/dermapur-matratze-feeling-21/', 'https://www.belama.de/media/image/product/479/lg/dermapur-matratze-feeling-21-.jpg'),
(30, 'dormiente Naturlatexmatratze Natural Classic Mediform', 1309, 1, 4, 'https://www.belama.de/dormiente-natural-classic-mediform/', 'https://www.belama.de/media/image/product/105/lg/dormiente-natural-classic-mediform-.jpg'),
(31, 'dormiente Naturlatexmatratze Natural Classic Orthoform', 1519, 1, 4, 'https://www.belama.de/dormiente-natural-classic-orthoform/', 'https://www.belama.de/media/image/product/104/lg/dormiente-natural-classic-orthoform-.jpg'),
(32, 'dormiente Naturlatexmatratze Natural Eco Plus', 785, 1, 4, 'https://www.belama.de/dormiente-natural-eco-plus/', 'https://www.belama.de/media/image/product/596/lg/dormiente-natural-eco-plus-.jpg'),
(33, 'dormiente Naturlatexmatratze Natural Basic 3', 995, 1, 4, 'https://www.belama.de/dormiente-natural-basic-3/', 'https://www.belama.de/media/image/product/102/lg/dormiente-natural-basic-3-.jpg'),
(34, 'dormiente Naturlatexmatratze Natural Basic 2', 890, 1, 4, 'https://www.belama.de/dormiente-natural-basic-2/', 'https://www.belama.de/media/image/product/101/lg/dormiente-natural-basic-2-.jpg'),
(35, 'dormiente Naturlatexmatratze Natural Classic Bioform', 1466, 1, 4, 'https://www.belama.de/dormiente-natural-classic-bioform/', 'https://www.belama.de/media/image/product/107/lg/dormiente-natural-classic-bioform-.jpg'),
(36, 'dormiente Naturlatexmatratze Natural Deluxe Antares', 1938, 1, 4, 'https://www.belama.de/dormiente-natural-deluxe-antares/', 'https://www.belama.de/media/image/product/110/lg/dormiente-natural-deluxe-antares-.jpg'),
(37, 'Elza Kombi-Kindermatratze Mikka Comfort', 589, 2, 4, 'https://www.belama.de/elza-kombi-kindermatratze-mikka-comfort/', 'https://www.belama.de/media/image/product/101332/lg/elza-kombi-kindermatratze-mikka-comfort-.jpg'),
(38, 'Elza Natur-Kombimatratze Vitrea Comfort', 789, 1, 4, 'https://www.belama.de/elza-natur-kombimatratze-vitrea-comfort/', 'https://www.belama.de/media/image/product/917/lg/elza-natur-kombimatratze-vitrea-comfort-.jpg'),
(39, 'Elza Naturlatexmatratze Forma Comfort', 829, 1, 4, 'https://www.belama.de/elza-naturlatexmatratze-forma-comfort/', 'https://www.belama.de/media/image/product/925/lg/elza-naturlatexmatratze-forma-comfort-.jpg'),
(40, 'f.a.n. Frankenstolz Calypso Plus 1.000 T Tonnentaschenfederkern-Matratze', 499, 1, 2, 'https://www.belama.de/fan-frankenstolz-calypso-plus-1000-t/', 'https://www.belama.de/media/image/product/101276/lg/fan-frankenstolz-calypso-plus-1000-t-.jpg'),
(41, 'f.a.n. Frankenstolz Medisan XXL 1.000 T Taschenfederkernmatratze', 399, 1, 2, 'https://www.belama.de/fan-frankenstolz-medisan-xxl-1000-t/', 'https://www.belama.de/media/image/product/192/lg/fan-frankenstolz-medisan-xxl-1000-t-.jpg'),
(42, 'f.a.n. Frankenstolz Prestige De Luxe 1.000 T Taschenfederkernmatratze', 579, 2, 6, 'https://www.belama.de/fan-frankenstolz-prestige-de-luxe-1000t/', 'https://www.belama.de/media/image/product/194/lg/fan-frankenstolz-prestige-de-luxe-1000t-.jpg'),
(43, 'Grosana Matze Pin Kindermatratze', 139, 2, 6, 'https://www.belama.de/grosana-matze-pin-kindermatratze/', 'https://www.belama.de/media/image/product/1258/lg/grosana-matze-pin-kindermatratze-.jpg'),
(44, 'Grosana airflex® Spring Comfort Komfortschaummatratze', 1349, 1, 6, 'https://www.belama.de/grosana-airflex-spring-comfort-komfortschaummatratze/', 'https://www.belama.de/media/image/product/1253/lg/grosana-airflex-spring-comfort-komfortschaummatratze-.jpg'),
(45, 'Grosana airflex® Spring Royal Komfortschaummatratze', 1549, 1, 6, 'https://www.belama.de/grosana-airflex-spring-royal-komfortschaummatratze/', 'https://www.belama.de/media/image/product/101357/lg/grosana-airflex-spring-royal-komfortschaummatratze-.jpg'),
(46, 'Grosana airflex® Spring Supra Komfortschaummatratze', 949, 1, 6, 'https://www.belama.de/grosana-airflex-spring-supra-komfortschaummatratze/', 'https://www.belama.de/media/image/product/101356/lg/grosana-airflex-spring-supra-komfortschaummatratze-.jpg'),
(47, 'Hemafa Watergel 2400 Kaltschaummatratze', 414, 1, 1, 'https://www.belama.de/hemafa-watergel-2400-kaltschaummatratze/', 'https://www.belama.de/media/image/product/101346/lg/hemafa-watergel-2400-kaltschaummatratze-.jpg'),
(48, 'Hn8 Emotion Pro KS Kaltschaummatratze', 559, 1, 1, 'https://www.belama.de/hn8-emotion-pro-ks/', 'https://www.belama.de/media/image/product/181/lg/hn8-emotion-pro-ks-.jpg'),
(49, 'Hn8 TA Wash Taschenfederkernmatratze', 219, 1, 2, 'https://www.belama.de/hn8-ta-wash/', 'https://www.belama.de/media/image/product/101275/lg/hn8-ta-wash-.jpg'),
(50, 'Hn8 Duo Luxe Taschenfederkernmatratze', 445, 1, 2, 'https://www.belama.de/hn8-duo-luxe/', 'https://www.belama.de/media/image/product/170/lg/hn8-duo-luxe-.jpg'),
(51, 'Hn8 Dream Star KS 25 Kaltschaummatratze', 305, 1, 1, 'https://www.belama.de/hn8-dream-star-ks-25/', 'https://www.belama.de/media/image/product/101274/lg/hn8-dream-star-ks-25-.jpg'),
(52, 'Lattoflex Matratze', 1090, 1, 1, 'https://www.belama.de/lattoflex-matratze/', 'https://www.belama.de/media/image/product/136706/lg/lattoflex-matratze-.jpg'),
(53, 'Prolana Kindermatratze Kati Plus', 219, 2, 4, 'https://www.belama.de/prolana-kati-plus/', 'https://www.belama.de/media/image/product/220/lg/prolana-kati-plus-.jpg'),
(54, 'Prolana Samar Premium Plus Latexmatratze', 1249, 1, 4, 'https://www.belama.de/prolana-samar-premium-plus-latexmatratze/', 'https://www.belama.de/media/image/product/217/lg/prolana-samar-premium-plus-latexmatratze-.jpg'),
(55, 'Prolana Kindermatratze Nele Plus', 699, 2, 4, 'https://www.belama.de/prolana-nele-plus-kindermatratze/', 'https://www.belama.de/media/image/product/906/lg/prolana-nele-plus-kindermatratze-.jpg'),
(56, 'Prolana Kindermatratze Lara Plus', 219, 2, 4, 'https://www.belama.de/prolana-kindermatratze-lara-plus/', 'https://www.belama.de/media/image/product/221/lg/prolana-kindermatratze-lara-plus-.jpg'),
(57, 'Prolana SCHLAF-Line 4 Naturlatexmatratze', 1249, 1, 4, 'https://www.belama.de/Prolana-SCHLAF-Line-4-Naturlatexmatratze', 'https://www.belama.de/media/image/product/1948/lg/prolana-schlaf-line-4-naturlatexmatratze.jpg'),
(58, 'Prolana Samar Comfort Naturlatexmatratze', 1149, 1, 4, 'https://www.belama.de/prolana-samar-comfort/', 'https://www.belama.de/media/image/product/214/lg/prolana-samar-comfort-.jpg'),
(59, 'Prolana Samar Comfort Plus Latexmatratze', 999, 1, 4, 'https://www.belama.de/prolana-samar-comfort-plus/', 'https://www.belama.de/media/image/product/215/lg/prolana-samar-comfort-plus-.jpg'),
(60, 'Rummel Feduna Opera Tonnentaschenfederkern-Matratze', 699, 1, 2, 'https://www.belama.de/rummel-tonnentaschenfederkernmatratze-feduna-opera/', 'https://www.belama.de/media/image/product/1770/lg/rummel-tonnentaschenfederkernmatratze-feduna-opera-.jpg'),
(61, 'Rummel Contina Klassik Kaltschaummatratze', 499, 1, 1, 'https://www.belama.de/rummel-kaltschaummatratze-contina-klassik/', 'https://www.belama.de/media/image/product/1774/lg/rummel-kaltschaummatratze-contina-klassik-.jpg'),
(62, 'Rummel Contina Sonate Kaltschaummatratze', 999, 1, 1, 'https://www.belama.de/rummel-kaltschaummatratze-contina-sonate/', 'https://www.belama.de/media/image/product/1777/lg/rummel-kaltschaummatratze-contina-sonate-.jpg'),
(63, 'Rummel Feduna Harmonie Tonnentaschenfederkern-Matratze', 1299, 1, 2, 'https://www.belama.de/rummel-tonnentaschenfederkernmatratze-feduna-harmonie/', 'https://www.belama.de/media/image/product/101395/lg/rummel-tonnentaschenfederkernmatratze-feduna-harmonie-.jpg'),
(64, 'Röwa Etera Boston Taschenfederkernmatratze', 999, 1, 2, 'https://www.belama.de/roewa-etera-boston-taschenfederkernmatratze/', 'https://www.belama.de/media/image/product/101289/lg/roewa-etera-boston-taschenfederkernmatratze-.jpg'),
(65, 'Röwa Legra Topas 16 Kaltschaummatratze', 699, 1, 1, 'https://www.belama.de/roewa-legra-topas-kaltschaummatratze/', 'https://www.belama.de/media/image/product/138/lg/roewa-legra-topas-kaltschaummatratze-.jpg'),
(66, 'Röwa Etera Boston Deluxe Taschenfederkernmatratze', 1299, 1, 2, 'https://www.belama.de/roewa-etera-boston-deluxe-taschenfederkernmatratze/', 'https://www.belama.de/media/image/product/356/lg/roewa-etera-boston-deluxe-taschenfederkernmatratze-.jpg'),
(67, 'Röwa Etera Portland Taschenfederkernmatratze', 799, 1, 2, 'https://www.belama.de/roewa-etera-portland-taschenfederkernmatratze/', 'https://www.belama.de/media/image/product/354/lg/roewa-etera-portland-taschenfederkernmatratze-.jpg'),
(68, 'Röwa Basic S Kaltschaummatratze', 699, 1, 1, 'https://www.belama.de/roewa-basic-s/', 'https://www.belama.de/media/image/product/130/lg/roewa-basic-s-.jpg'),
(69, 'Röwa Etera Aston Taschenfederkernmatratze', 1399, 1, 2, 'https://www.belama.de/roewa-etera-aston/', 'https://www.belama.de/media/image/product/357/lg/roewa-etera-aston-.jpg'),
(70, 'Röwa Basic ST24 Tonnentaschenfederkern-Matratze', 949, 1, 2, 'https://www.belama.de/roewa-basic-st24/', 'https://www.belama.de/media/image/product/132/lg/roewa-basic-st24-.jpg'),
(71, 'Röwa Etera Uno Taschenfederkernmatratze', 1890, 1, 2, 'https://www.belama.de/roewa-etera-uno/', 'https://www.belama.de/media/image/product/358/lg/roewa-etera-uno-.jpg'),
(72, 'Röwa Legra Balance 18 Kaltschaummatratze', 999, 1, 1, 'https://www.belama.de/roewa-legra-balance-18/', 'https://www.belama.de/media/image/product/136/lg/roewa-legra-balance-18-.jpg'),
(73, 'selecta L4 Latexmatratze', 699, 1, 3, 'https://www.belama.de/selecta-l4-latexmatratze/', 'https://www.belama.de/media/image/product/113/lg/selecta-l4-latexmatratze-.jpg'),
(74, 'selecta TF5 Taschenfederkernmatratze', 549, 1, 2, 'https://www.belama.de/selecta-tf5-taschenfederkernmatratze/', 'https://www.belama.de/media/image/product/120/lg/selecta-tf5-taschenfederkernmatratze-.jpg'),
(75, 'selecta S4 Kaltschaummatratze', 499, 1, 1, 'https://www.belama.de/selecta-s4/', 'https://www.belama.de/media/image/product/116/lg/selecta-s4-.jpg'),
(76, 'selecta S2 Kaltschaummatratze', 319, 1, 1, 'https://www.belama.de/selecta-s2-kaltschaummatratze/', 'https://www.belama.de/media/image/product/114/lg/selecta-s2-kaltschaummatratze-.jpg'),
(77, 'selecta V6 Visco-Matratze', 799, 1, 5, 'https://www.belama.de/selecta-v6/', 'https://www.belama.de/media/image/product/539/lg/selecta-v6-.jpg'),
(78, 'selecta S18 Kaltschaummatratze', 755, 1, 1, 'https://www.belama.de/selecta-s18-kaltschaummatratze/', 'https://www.belama.de/media/image/product/131318/lg/selecta-s18-kaltschaummatratze-.jpg'),
(79, 'Shogazi Ergo Basic Naturlatexmatratze', 668, 1, 4, 'https://www.belama.de/shogazi-ergo-basic-naturlatexmatratze/', 'https://www.belama.de/media/image/product/470/lg/shogazi-ergo-basic-naturlatexmatratze-.jpg'),
(80, 'Shogazi Premium Comfort Naturlatexmatratze', 848, 1, 4, 'https://www.belama.de/shogazi-premium-comfort-naturlatexmatratze/', 'https://www.belama.de/media/image/product/469/lg/shogazi-premium-comfort-naturlatexmatratze-.jpg'),
(81, 'Shogazi Vital Plus Naturlatexmatratze', 848, 1, 4, 'https://www.belama.de/shogazi-vital-plus-naturlatexmatratze/', 'https://www.belama.de/media/image/product/473/lg/shogazi-vital-plus-naturlatexmatratze-.jpg'),
(82, 'shogazi Deluxe Mellow Naturlatexmatratze', 1298, 1, 4, 'https://www.belama.de/shogazi-deluxe-mellow-naturlatexmatratze/', 'https://www.belama.de/media/image/product/468/lg/shogazi-deluxe-mellow-naturlatexmatratze-.jpg'),
(83, 'Shogazi Classic 10 Latexmatratze', 498, 1, 4, 'https://www.belama.de/shogazi-classic-10-latexmatratze/', 'https://www.belama.de/media/image/product/1046/lg/shogazi-classic-10-latexmatratze-.jpg'),
(84, 'Swissflex Versa 20 Gomtex Gel Kaltschaummatratze', 1060, 1, 1, 'https://www.belama.de/swissflex-versa-20-gomtex-gel-matratze/', 'https://www.belama.de/media/image/product/1113/lg/swissflex-versa-20-gomtex-gel-matratze-.jpg'),
(85, 'Swissflex Versa 24 Gomtex® Gel Kaltschaummatratze', 1720, 1, 2, 'https://www.belama.de/swissflex-versa-24-gomtex-gel-matratze/', 'https://www.belama.de/media/image/product/1115/lg/swissflex-versa-24-gomtex-gel-matratze-.jpg'),
(86, 'Swissflex Versa 22 Gomtex® Gel Kaltschaummatratze', 1490, 1, 1, 'https://www.belama.de/swissflex-versa-22-gomtex-gel-matratze/', 'https://www.belama.de/media/image/product/1114/lg/swissflex-versa-22-gomtex-gel-matratze-.jpg'),
(87, 'Swissflex Versa 20 Naturlatexmatratze', 1290, 1, 4, 'https://www.belama.de/swissflex-versa-20-naturlatexmatratze/', 'https://www.belama.de/media/image/product/1111/lg/swissflex-versa-20-naturlatexmatratze-.jpg'),
(88, 'Werkmeister M S55 Plus Kaltschaummatratze', 999, 1, 1, 'https://www.belama.de/werkmeister-m-s55-plus-kaltschaummatratze/', 'https://www.belama.de/media/image/product/116301/lg/werkmeister-m-s55-plus-kaltschaummatratze-.jpg'),
(89, 'Werkmeister M L430 Latexmatratze', 1499, 1, 3, 'https://www.belama.de/werkmeister-m-l430/', 'https://www.belama.de/media/image/product/352/lg/werkmeister-m-l430-.jpg'),
(90, 'Werkmeister M S55 Flexo Kaltschaummatratze', 879, 1, 1, 'https://www.belama.de/werkmeister-m-s55-flexo/', 'https://www.belama.de/media/image/product/341/lg/werkmeister-m-s55-flexo-.jpg'),
(91, 'Werkmeister M T610 Taschenfederkernmatratze', 949, 1, 2, 'https://www.belama.de/werkmeister-m-t610/', 'https://www.belama.de/media/image/product/353/lg/werkmeister-m-t610-.jpg'),
(92, 'Werkmeister M T631 Taschenfederkernmatratze', 1099, 1, 2, 'https://www.belama.de/werkmeister-taschenfederkernmatratze-mt631/', 'https://www.belama.de/media/image/product/1137/lg/werkmeister-taschenfederkernmatratze-mt631-.jpg'),
(93, 'Werkmeister M S55 Komfort Kaltschaummatratze', 1129, 1, 1, 'https://www.belama.de/werkmeister-m-s55-komfort/', 'https://www.belama.de/media/image/product/342/lg/werkmeister-m-s55-komfort-.jpg'),
(94, 'Werkmeister M L410 Latexmatratze', 1299, 1, 3, 'https://www.belama.de/werkmeister-m-l410/', 'https://www.belama.de/media/image/product/351/lg/werkmeister-m-l410-.jpg'),
(95, 'Werkmeister M S70 Komfort Kaltschaummatratze', 1599, 1, 1, 'https://www.belama.de/werkmeister-m-s70-komfort/', 'https://www.belama.de/media/image/product/348/lg/werkmeister-m-s70-komfort-.jpg'),
(96, 'Werkmeister M S70 Plus WS Kaltschaummatratze', 1149, 1, 1, 'https://www.belama.de/werkmeister-m-s70-plus-ws/', 'https://www.belama.de/media/image/product/350/lg/werkmeister-m-s70-plus-ws-.jpg'),
(97, 'Werkmeister Nature Definition Naturlatexmatratze', 1529, 1, 4, 'https://www.belama.de/werkmeister-nature-definition-naturlatexmatratze/', 'https://www.belama.de/media/image/product/130614/lg/werkmeister-nature-definition-naturlatexmatratze-.jpg'),
(98, 'Werkmeister M T661 Taschenfederkernmatratze', 1449, 1, 2, 'https://www.belama.de/werkmeister-taschenfederkernmatratze-mt661/', 'https://www.belama.de/media/image/product/1139/lg/werkmeister-taschenfederkernmatratze-mt661-.jpg');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `size`
--

CREATE TABLE `size` (
  `s_id` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `size`
--

INSERT INTO `size` (`s_id`, `width`, `height`) VALUES
(1, 80, 200),
(2, 90, 200),
(3, 100, 200),
(4, 120, 200),
(5, 140, 200),
(6, 160, 200),
(7, 180, 200),
(8, 200, 200),
(9, 60, 120),
(10, 70, 140);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `size_mattress`
--

CREATE TABLE `size_mattress` (
  `sm_id` int(11) NOT NULL,
  `ma_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `size_mattress`
--

INSERT INTO `size_mattress` (`sm_id`, `ma_id`, `s_id`) VALUES
(1, 1, 9),
(2, 1, 10),
(3, 2, 1),
(4, 2, 2),
(5, 2, 3),
(6, 2, 4),
(7, 2, 5),
(8, 2, 6),
(9, 2, 7),
(10, 2, 8),
(11, 3, 2),
(12, 3, 3),
(13, 3, 4),
(14, 3, 5),
(15, 3, 6),
(16, 3, 7),
(17, 3, 8),
(18, 4, 1),
(19, 4, 2),
(20, 4, 3),
(21, 4, 4),
(22, 4, 5),
(23, 4, 6),
(24, 4, 7),
(25, 4, 8),
(26, 5, 2),
(27, 5, 3),
(28, 5, 5),
(29, 6, 1),
(30, 6, 2),
(31, 6, 3),
(32, 6, 4),
(33, 6, 5),
(34, 6, 6),
(35, 6, 7),
(36, 6, 8),
(37, 7, 1),
(38, 7, 2),
(39, 7, 3),
(40, 7, 4),
(41, 7, 5),
(42, 7, 6),
(43, 7, 7),
(44, 7, 8),
(45, 8, 3),
(46, 8, 4),
(47, 8, 5),
(48, 8, 6),
(49, 8, 7),
(50, 8, 8),
(51, 9, 1),
(52, 9, 2),
(53, 9, 3),
(54, 9, 4),
(55, 9, 5),
(56, 9, 6),
(57, 9, 7),
(58, 9, 8),
(59, 10, 1),
(60, 10, 2),
(61, 10, 3),
(62, 10, 4),
(63, 10, 5),
(64, 10, 6),
(65, 10, 7),
(66, 10, 8),
(67, 11, 1),
(68, 11, 2),
(69, 11, 3),
(70, 11, 4),
(71, 11, 5),
(72, 11, 6),
(73, 11, 7),
(74, 11, 8),
(75, 12, 3),
(76, 12, 4),
(77, 12, 5),
(78, 12, 6),
(79, 12, 7),
(80, 12, 8),
(81, 13, 2),
(82, 13, 3),
(83, 13, 5),
(84, 13, 9),
(85, 13, 10),
(86, 14, 2),
(87, 14, 3),
(88, 14, 5),
(89, 15, 9),
(90, 15, 10),
(91, 16, 1),
(92, 16, 2),
(93, 16, 3),
(94, 16, 4),
(95, 16, 5),
(96, 16, 6),
(97, 16, 7),
(98, 16, 8),
(99, 17, 1),
(100, 17, 2),
(101, 17, 3),
(102, 17, 4),
(103, 17, 5),
(104, 17, 6),
(105, 18, 1),
(106, 18, 2),
(107, 18, 3),
(108, 18, 4),
(109, 18, 5),
(110, 18, 6),
(111, 19, 1),
(112, 19, 2),
(113, 19, 3),
(114, 19, 4),
(115, 19, 5),
(116, 19, 6),
(117, 19, 7),
(118, 20, 1),
(119, 20, 2),
(120, 20, 3),
(121, 20, 4),
(122, 20, 5),
(123, 20, 6),
(124, 20, 7),
(125, 20, 8),
(126, 21, 1),
(127, 21, 2),
(128, 21, 3),
(129, 21, 4),
(130, 21, 5),
(131, 21, 6),
(132, 22, 1),
(133, 22, 2),
(134, 22, 3),
(135, 22, 4),
(136, 22, 5),
(137, 22, 6),
(138, 23, 1),
(139, 23, 2),
(140, 23, 3),
(141, 23, 4),
(142, 23, 5),
(143, 23, 6),
(144, 24, 1),
(145, 24, 2),
(146, 24, 3),
(147, 24, 4),
(148, 24, 5),
(149, 24, 6),
(150, 25, 1),
(151, 25, 2),
(152, 25, 3),
(153, 25, 4),
(154, 25, 5),
(155, 25, 6),
(156, 26, 1),
(157, 26, 2),
(158, 26, 3),
(159, 26, 4),
(160, 26, 5),
(161, 26, 6),
(162, 27, 1),
(163, 27, 2),
(164, 27, 3),
(165, 27, 4),
(166, 27, 5),
(167, 27, 6),
(168, 28, 1),
(169, 28, 2),
(170, 28, 3),
(171, 28, 4),
(172, 28, 5),
(173, 28, 6),
(174, 28, 7),
(175, 28, 8),
(176, 29, 1),
(177, 29, 2),
(178, 29, 3),
(179, 29, 4),
(180, 29, 5),
(181, 29, 6),
(182, 29, 7),
(183, 30, 1),
(184, 30, 2),
(185, 30, 3),
(186, 30, 4),
(187, 30, 5),
(188, 30, 6),
(189, 30, 7),
(190, 30, 8),
(191, 31, 1),
(192, 31, 2),
(193, 31, 3),
(194, 31, 4),
(195, 31, 5),
(196, 31, 6),
(197, 31, 7),
(198, 31, 8),
(199, 32, 1),
(200, 32, 2),
(201, 32, 3),
(202, 32, 4),
(203, 32, 5),
(204, 32, 6),
(205, 32, 7),
(206, 32, 8),
(207, 33, 1),
(208, 33, 2),
(209, 33, 3),
(210, 33, 4),
(211, 33, 5),
(212, 33, 6),
(213, 33, 7),
(214, 33, 8),
(215, 34, 1),
(216, 34, 2),
(217, 34, 3),
(218, 34, 4),
(219, 34, 5),
(220, 34, 6),
(221, 34, 7),
(222, 34, 8),
(223, 35, 1),
(224, 35, 2),
(225, 35, 3),
(226, 35, 4),
(227, 35, 5),
(228, 35, 6),
(229, 35, 7),
(230, 35, 8),
(231, 36, 1),
(232, 36, 2),
(233, 36, 3),
(234, 36, 4),
(235, 36, 5),
(236, 36, 6),
(237, 36, 7),
(238, 36, 8),
(239, 37, 1),
(240, 37, 2),
(241, 37, 3),
(242, 37, 4),
(243, 37, 5),
(244, 37, 6),
(245, 38, 1),
(246, 38, 2),
(247, 38, 3),
(248, 38, 4),
(249, 38, 5),
(250, 38, 6),
(251, 38, 7),
(252, 38, 8),
(253, 39, 1),
(254, 39, 2),
(255, 39, 3),
(256, 39, 4),
(257, 39, 5),
(258, 39, 6),
(259, 39, 7),
(260, 39, 8),
(261, 40, 1),
(262, 40, 2),
(263, 40, 3),
(264, 40, 4),
(265, 40, 5),
(266, 40, 6),
(267, 41, 1),
(268, 41, 2),
(269, 41, 3),
(270, 41, 4),
(271, 41, 5),
(272, 41, 6),
(273, 42, 1),
(274, 42, 2),
(275, 42, 3),
(276, 42, 4),
(277, 42, 5),
(278, 42, 6),
(279, 42, 7),
(280, 42, 8),
(281, 43, 9),
(282, 43, 10),
(283, 44, 1),
(284, 44, 2),
(285, 44, 3),
(286, 44, 4),
(287, 44, 5),
(288, 44, 6),
(289, 44, 7),
(290, 44, 8),
(291, 45, 1),
(292, 45, 2),
(293, 45, 3),
(294, 45, 4),
(295, 45, 5),
(296, 46, 1),
(297, 46, 2),
(298, 46, 3),
(299, 46, 4),
(300, 46, 5),
(301, 46, 6),
(302, 46, 7),
(303, 46, 8),
(304, 47, 1),
(305, 47, 2),
(306, 47, 3),
(307, 47, 4),
(308, 47, 5),
(309, 47, 6),
(310, 47, 7),
(311, 47, 8),
(312, 48, 1),
(313, 48, 2),
(314, 48, 3),
(315, 48, 4),
(316, 48, 5),
(317, 48, 6),
(318, 49, 1),
(319, 49, 2),
(320, 49, 3),
(321, 49, 4),
(322, 49, 5),
(323, 49, 6),
(324, 50, 1),
(325, 50, 2),
(326, 50, 3),
(327, 50, 4),
(328, 50, 5),
(329, 50, 6),
(330, 51, 1),
(331, 51, 2),
(332, 51, 3),
(333, 51, 4),
(334, 51, 5),
(335, 51, 6),
(336, 52, 1),
(337, 52, 3),
(338, 52, 4),
(339, 52, 5),
(340, 53, 9),
(341, 54, 1),
(342, 54, 2),
(343, 54, 3),
(344, 54, 5),
(345, 54, 6),
(346, 54, 7),
(347, 54, 8),
(348, 55, 1),
(349, 55, 2),
(350, 55, 3),
(351, 55, 5),
(352, 56, 9),
(353, 56, 10),
(354, 57, 1),
(355, 57, 2),
(356, 57, 3),
(357, 57, 5),
(358, 57, 6),
(359, 57, 7),
(360, 57, 8),
(361, 58, 1),
(362, 58, 2),
(363, 58, 3),
(364, 58, 5),
(365, 58, 6),
(366, 58, 7),
(367, 58, 8),
(368, 59, 1),
(369, 59, 2),
(370, 59, 3),
(371, 59, 5),
(372, 59, 6),
(373, 59, 7),
(374, 59, 8),
(375, 60, 1),
(376, 60, 2),
(377, 60, 3),
(378, 60, 4),
(379, 61, 1),
(380, 61, 2),
(381, 61, 3),
(382, 61, 4),
(383, 61, 5),
(384, 62, 1),
(385, 62, 2),
(386, 62, 3),
(387, 62, 4),
(388, 62, 5),
(389, 63, 1),
(390, 63, 2),
(391, 63, 3),
(392, 63, 4),
(393, 63, 5),
(394, 64, 1),
(395, 64, 2),
(396, 64, 3),
(397, 64, 4),
(398, 64, 5),
(399, 64, 6),
(400, 64, 7),
(401, 64, 8),
(402, 65, 1),
(403, 65, 2),
(404, 65, 3),
(405, 65, 4),
(406, 65, 5),
(407, 65, 6),
(408, 65, 7),
(409, 65, 8),
(410, 66, 1),
(411, 66, 2),
(412, 66, 3),
(413, 66, 4),
(414, 66, 5),
(415, 66, 6),
(416, 66, 7),
(417, 66, 8),
(418, 67, 1),
(419, 67, 2),
(420, 67, 3),
(421, 67, 4),
(422, 67, 5),
(423, 67, 6),
(424, 67, 7),
(425, 67, 8),
(426, 68, 1),
(427, 68, 2),
(428, 68, 3),
(429, 68, 4),
(430, 68, 5),
(431, 68, 6),
(432, 68, 7),
(433, 68, 8),
(434, 69, 1),
(435, 69, 2),
(436, 69, 3),
(437, 69, 4),
(438, 69, 5),
(439, 69, 6),
(440, 69, 7),
(441, 69, 8),
(442, 70, 1),
(443, 70, 2),
(444, 70, 3),
(445, 70, 4),
(446, 70, 5),
(447, 70, 6),
(448, 70, 7),
(449, 70, 8),
(450, 71, 1),
(451, 71, 2),
(452, 71, 3),
(453, 71, 4),
(454, 71, 5),
(455, 71, 6),
(456, 71, 7),
(457, 71, 8),
(458, 72, 1),
(459, 72, 2),
(460, 72, 3),
(461, 72, 4),
(462, 72, 5),
(463, 72, 6),
(464, 72, 7),
(465, 72, 8),
(466, 73, 1),
(467, 73, 2),
(468, 73, 3),
(469, 73, 4),
(470, 73, 5),
(471, 73, 6),
(472, 73, 7),
(473, 73, 8),
(474, 74, 1),
(475, 74, 2),
(476, 74, 3),
(477, 74, 4),
(478, 74, 5),
(479, 74, 6),
(480, 74, 7),
(481, 74, 8),
(482, 75, 1),
(483, 75, 2),
(484, 75, 3),
(485, 75, 4),
(486, 75, 5),
(487, 75, 6),
(488, 75, 7),
(489, 75, 8),
(490, 76, 1),
(491, 76, 2),
(492, 76, 3),
(493, 76, 4),
(494, 76, 5),
(495, 76, 6),
(496, 76, 7),
(497, 76, 8),
(498, 77, 1),
(499, 77, 2),
(500, 77, 3),
(501, 77, 4),
(502, 77, 5),
(503, 77, 6),
(504, 77, 7),
(505, 77, 8),
(506, 78, 1),
(507, 78, 2),
(508, 78, 3),
(509, 78, 4),
(510, 78, 5),
(511, 78, 6),
(512, 78, 7),
(513, 78, 8),
(514, 79, 1),
(515, 79, 2),
(516, 79, 3),
(517, 79, 4),
(518, 79, 5),
(519, 79, 6),
(520, 79, 7),
(521, 79, 8),
(522, 80, 1),
(523, 80, 2),
(524, 80, 3),
(525, 80, 4),
(526, 80, 5),
(527, 80, 6),
(528, 80, 7),
(529, 80, 8),
(530, 81, 1),
(531, 81, 2),
(532, 81, 3),
(533, 81, 4),
(534, 81, 5),
(535, 81, 6),
(536, 81, 7),
(537, 81, 8),
(538, 82, 1),
(539, 82, 2),
(540, 82, 3),
(541, 82, 4),
(542, 82, 5),
(543, 82, 6),
(544, 82, 7),
(545, 82, 8),
(546, 83, 1),
(547, 83, 2),
(548, 83, 3),
(549, 83, 4),
(550, 83, 5),
(551, 83, 6),
(552, 83, 7),
(553, 83, 8),
(554, 84, 1),
(555, 84, 2),
(556, 84, 3),
(557, 84, 4),
(558, 84, 5),
(559, 84, 6),
(560, 84, 7),
(561, 84, 8),
(562, 85, 1),
(563, 85, 2),
(564, 85, 3),
(565, 85, 4),
(566, 85, 5),
(567, 85, 6),
(568, 85, 7),
(569, 85, 8),
(570, 86, 1),
(571, 86, 2),
(572, 86, 3),
(573, 86, 4),
(574, 86, 5),
(575, 86, 6),
(576, 86, 7),
(577, 86, 8),
(578, 87, 1),
(579, 87, 2),
(580, 87, 3),
(581, 87, 4),
(582, 87, 5),
(583, 87, 6),
(584, 87, 7),
(585, 87, 8),
(586, 88, 1),
(587, 88, 2),
(588, 88, 3),
(589, 88, 4),
(590, 88, 5),
(591, 88, 6),
(592, 88, 7),
(593, 88, 8),
(594, 89, 1),
(595, 89, 2),
(596, 89, 3),
(597, 89, 4),
(598, 89, 5),
(599, 89, 6),
(600, 89, 7),
(601, 89, 8),
(602, 90, 1),
(603, 90, 2),
(604, 90, 3),
(605, 90, 4),
(606, 90, 5),
(607, 90, 6),
(608, 90, 7),
(609, 90, 8),
(610, 91, 1),
(611, 91, 2),
(612, 91, 3),
(613, 91, 4),
(614, 91, 5),
(615, 91, 6),
(616, 91, 7),
(617, 91, 8),
(618, 92, 1),
(619, 92, 2),
(620, 92, 3),
(621, 92, 4),
(622, 92, 5),
(623, 92, 6),
(624, 92, 7),
(625, 92, 8),
(626, 93, 1),
(627, 93, 2),
(628, 93, 3),
(629, 93, 4),
(630, 93, 5),
(631, 93, 6),
(632, 93, 7),
(633, 93, 8),
(634, 94, 1),
(635, 94, 2),
(636, 94, 3),
(637, 94, 4),
(638, 94, 5),
(639, 94, 6),
(640, 94, 7),
(641, 94, 8),
(642, 95, 1),
(643, 95, 2),
(644, 95, 3),
(645, 95, 4),
(646, 95, 5),
(647, 95, 6),
(648, 95, 7),
(649, 95, 8),
(650, 96, 1),
(651, 96, 2),
(652, 96, 3),
(653, 96, 4),
(654, 96, 5),
(655, 96, 6),
(656, 96, 7),
(657, 96, 8),
(658, 97, 1),
(659, 97, 2),
(660, 97, 3),
(661, 97, 4),
(662, 97, 5),
(663, 97, 6),
(664, 97, 7),
(665, 97, 8),
(666, 98, 1),
(667, 98, 2),
(668, 98, 3),
(669, 98, 4),
(670, 98, 5),
(671, 98, 6),
(672, 98, 7),
(673, 98, 8);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `allergy`
--
ALTER TABLE `allergy`
  ADD PRIMARY KEY (`a_id`);

--
-- Indizes für die Tabelle `allergy_mattress`
--
ALTER TABLE `allergy_mattress`
  ADD PRIMARY KEY (`am_id`),
  ADD KEY `a_id` (`a_id`),
  ADD KEY `ma_id` (`ma_id`);

--
-- Indizes für die Tabelle `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`c_id`);

--
-- Indizes für die Tabelle `complaints_mattress`
--
ALTER TABLE `complaints_mattress`
  ADD PRIMARY KEY (`cm_id`),
  ADD KEY `c_id` (`c_id`),
  ADD KEY `ma_id` (`ma_id`);

--
-- Indizes für die Tabelle `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`g_id`);

--
-- Indizes für die Tabelle `haertegrade`
--
ALTER TABLE `haertegrade`
  ADD PRIMARY KEY (`h_id`) USING BTREE;

--
-- Indizes für die Tabelle `haertegrade_mattress`
--
ALTER TABLE `haertegrade_mattress`
  ADD PRIMARY KEY (`hm_id`),
  ADD KEY `Schlüssel 2` (`ma_id`),
  ADD KEY `Schlüssel 3` (`h_id`);

--
-- Indizes für die Tabelle `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`m_id`);

--
-- Indizes für die Tabelle `mattress`
--
ALTER TABLE `mattress`
  ADD PRIMARY KEY (`ma_id`),
  ADD KEY `Schlüssel 2` (`material_fk`),
  ADD KEY `Schlüssel 3` (`group_fk`);

--
-- Indizes für die Tabelle `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`s_id`);

--
-- Indizes für die Tabelle `size_mattress`
--
ALTER TABLE `size_mattress`
  ADD PRIMARY KEY (`sm_id`),
  ADD KEY `ma_id` (`ma_id`),
  ADD KEY `s_id` (`s_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `allergy`
--
ALTER TABLE `allergy`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `allergy_mattress`
--
ALTER TABLE `allergy_mattress`
  MODIFY `am_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT für Tabelle `complaints`
--
ALTER TABLE `complaints`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `complaints_mattress`
--
ALTER TABLE `complaints_mattress`
  MODIFY `cm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT für Tabelle `groups`
--
ALTER TABLE `groups`
  MODIFY `g_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `haertegrade_mattress`
--
ALTER TABLE `haertegrade_mattress`
  MODIFY `hm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT für Tabelle `material`
--
ALTER TABLE `material`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `mattress`
--
ALTER TABLE `mattress`
  MODIFY `ma_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT für Tabelle `size`
--
ALTER TABLE `size`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `size_mattress`
--
ALTER TABLE `size_mattress`
  MODIFY `sm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=674;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `allergy_mattress`
--
ALTER TABLE `allergy_mattress`
  ADD CONSTRAINT `FK_allergy_mattress_allergy` FOREIGN KEY (`a_id`) REFERENCES `allergy` (`a_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_allergy_mattress_mattress` FOREIGN KEY (`ma_id`) REFERENCES `mattress` (`ma_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `complaints_mattress`
--
ALTER TABLE `complaints_mattress`
  ADD CONSTRAINT `complaints_mattress_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `complaints` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `complaints_mattress_ibfk_2` FOREIGN KEY (`ma_id`) REFERENCES `mattress` (`ma_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `haertegrade_mattress`
--
ALTER TABLE `haertegrade_mattress`
  ADD CONSTRAINT `FK_haertegrade_mattress_haertegrade` FOREIGN KEY (`h_id`) REFERENCES `haertegrade` (`h_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_haertegrade_mattress_mattress` FOREIGN KEY (`ma_id`) REFERENCES `mattress` (`ma_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `mattress`
--
ALTER TABLE `mattress`
  ADD CONSTRAINT `FK_mattress_group` FOREIGN KEY (`group_fk`) REFERENCES `groups` (`g_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_mattress_material` FOREIGN KEY (`material_fk`) REFERENCES `material` (`m_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `size_mattress`
--
ALTER TABLE `size_mattress`
  ADD CONSTRAINT `size_mattress_ibfk_1` FOREIGN KEY (`ma_id`) REFERENCES `mattress` (`ma_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `size_mattress_ibfk_2` FOREIGN KEY (`s_id`) REFERENCES `size` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
