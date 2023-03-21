-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 21. Mrz 2023 um 11:25
-- Server-Version: 10.4.27-MariaDB
-- PHP-Version: 8.2.0

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `allergy_mattress`
--

INSERT INTO `allergy_mattress` (`am_id`, `ma_id`, `a_id`) VALUES
(1, 1, 1),
(2, 1, 3),
(3, 1, 2),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3),
(7, 3, 1),
(8, 3, 2),
(9, 3, 3),
(10, 4, 2),
(11, 4, 3),
(12, 5, 1),
(13, 5, 2),
(14, 5, 3),
(15, 6, 1),
(16, 6, 2),
(17, 6, 3),
(18, 7, 2),
(19, 7, 3),
(20, 8, 2),
(21, 9, 2),
(22, 9, 3),
(23, 10, 2),
(24, 10, 3),
(25, 11, 2),
(26, 12, 1),
(27, 12, 2),
(28, 12, 3),
(29, 13, 1),
(30, 13, 2),
(31, 13, 3),
(32, 14, 2),
(33, 14, 3),
(34, 15, 2),
(35, 15, 3),
(36, 16, 1),
(37, 16, 2),
(38, 16, 3),
(39, 17, 2),
(40, 17, 3),
(41, 18, 2),
(42, 18, 3),
(43, 19, 1),
(44, 19, 2),
(45, 19, 3),
(46, 20, 1),
(47, 20, 2),
(48, 20, 3);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `complaints`
--

CREATE TABLE `complaints` (
  `c_id` int(11) NOT NULL,
  `complaints` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `complaints`
--

INSERT INTO `complaints` (`c_id`, `complaints`) VALUES
(1, 'Ruecken'),
(2, 'Schultern'),
(3, 'Huefte');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `complaints_mattress`
--

CREATE TABLE `complaints_mattress` (
  `cm_id` int(11) NOT NULL,
  `ma_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `complaints_mattress`
--

INSERT INTO `complaints_mattress` (`cm_id`, `ma_id`, `c_id`) VALUES
(1, 1, 2),
(2, 1, 3),
(3, 1, 1),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3),
(7, 3, 3),
(8, 4, 1),
(9, 4, 2),
(10, 4, 3),
(11, 5, 1),
(12, 5, 2),
(13, 5, 3),
(14, 6, 1),
(15, 6, 2),
(16, 6, 3),
(17, 16, 1),
(18, 16, 2),
(19, 16, 3),
(20, 17, 1),
(21, 17, 2),
(22, 17, 3),
(23, 18, 1),
(24, 18, 2),
(25, 18, 3),
(26, 19, 3),
(27, 20, 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `groups`
--

CREATE TABLE `groups` (
  `g_id` int(11) NOT NULL,
  `groups_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `haertegrade_mattress`
--

INSERT INTO `haertegrade_mattress` (`hm_id`, `ma_id`, `h_id`) VALUES
(2, 1, 'H1'),
(3, 1, 'H2'),
(4, 1, 'H3'),
(5, 2, 'H1'),
(6, 2, 'H2'),
(7, 2, 'H3'),
(8, 3, 'H1'),
(9, 3, 'H2'),
(10, 3, 'H3'),
(11, 3, 'H4'),
(12, 4, 'H1'),
(13, 4, 'H2'),
(14, 4, 'H3'),
(15, 5, 'H1'),
(16, 5, 'H2'),
(17, 5, 'H3'),
(18, 6, 'H1'),
(19, 6, 'H2'),
(20, 6, 'H3'),
(21, 7, 'H2'),
(22, 8, 'H1'),
(23, 8, 'H2'),
(24, 8, 'H3'),
(25, 9, 'H2'),
(26, 9, 'H3'),
(27, 10, 'H3'),
(28, 11, 'H2'),
(29, 12, 'H2'),
(31, 13, 'H2'),
(32, 14, 'H1'),
(33, 14, 'H3'),
(34, 15, 'H1'),
(35, 15, 'H3'),
(36, 16, 'H1'),
(37, 16, 'H2'),
(38, 16, 'H3'),
(39, 16, 'H4'),
(40, 17, 'H1'),
(41, 17, 'H2'),
(42, 17, 'H3'),
(43, 18, 'H1'),
(44, 18, 'H2'),
(45, 18, 'H3'),
(46, 19, 'H1'),
(47, 19, 'H2'),
(48, 19, 'H3'),
(49, 20, 'H1'),
(50, 20, 'H2'),
(51, 20, 'H3'),
(52, 11, 'H1'),
(53, 11, 'H3');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `material`
--

CREATE TABLE `material` (
  `m_id` int(11) NOT NULL,
  `material` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `mattress`
--

INSERT INTO `mattress` (`ma_id`, `mattress`, `price`, `group_fk`, `material_fk`, `url`, `picture`) VALUES
(1, 'Werkmeister M T610 Taschenfederkernmatratze', 949, 1, 2, 'https://www.belama.de/werkmeister-m-t610/', 'https://www.belama.de/media/image/product/353/md/werkmeister-m-t610-.jpg'),
(2, 'Werkmeister M S70 Plus Kaltschaummatratze', 1149, 1, 1, 'https://www.belama.de/werkmeister-m-s70-plus/', 'https://www.belama.de/media/image/product/349/md/werkmeister-m-s70-plus-.jpg'),
(3, 'Werkmeister M S55 Flexo Kaltschaummatratze', 879, 1, 1, 'https://www.belama.de/werkmeister-m-s55-flexo/', 'https://www.belama.de/media/image/product/341/md/werkmeister-m-s55-flexo-.jpg'),
(4, 'Werkmeister M T631L Taschenfederkernmatratze', 1339, 1, 2, 'https://www.belama.de/werkmeister-taschenfederkernmatratze-mt631l/', 'https://www.belama.de/media/image/product/1138/md/werkmeister-taschenfederkernmatratze-mt631l-.jpg'),
(5, 'Werkmeister M S55 Komfort Kaltschaummatratze', 1129, 1, 1, 'https://www.belama.de/werkmeister-m-s55-komfort/', 'https://www.belama.de/media/image/product/342/md/werkmeister-m-s55-komfort-.jpg'),
(6, 'Werkmeister M S70 Plus WS Kaltschaummatratze', 1149, 1, 1, 'https://www.belama.de/werkmeister-m-s70-plus-ws/', 'https://www.belama.de/media/image/product/350/md/werkmeister-m-s70-plus-ws-.jpg'),
(7, 'dormiente Naturlatexmatratze Natural Eco Plus', 785, 1, 4, 'https://www.belama.de/dormiente-natural-eco-plus/', 'https://www.belama.de/media/image/product/596/md/dormiente-natural-eco-plus-.jpg'),
(8, 'dormiente Naturlatexmatratze Natural Basic 3', 995, 1, 4, 'https://www.belama.de/dormiente-natural-basic-3/', 'https://www.belama.de/media/image/product/102/md/dormiente-natural-basic-3-.jpg'),
(9, 'dormiente Naturlatexmatratze Natural Basic 4', 995, 1, 4, 'https://www.belama.de/dormiente-natural-basic-4/', 'https://www.belama.de/media/image/product/103/md/dormiente-natural-basic-4-.jpg'),
(10, 'Shogazi Duo Max Naturlatexmatratze', 848, 1, 4, 'https://www.belama.de/shogazi-duo-max-naturlatexmatratze/', 'https://www.belama.de/media/image/product/472/md/shogazi-duo-max-naturlatexmatratze-.jpg'),
(11, 'dormiente Naturlatexmatratze Natural Classic Isoform', 1466, 1, 4, 'https://www.belama.de/dormiente-natural-classic-isoform/', 'https://www.belama.de/media/image/product/106/md/dormiente-natural-classic-isoform-.jpg'),
(12, 'selecta K2 Kindermatratze', 399, 2, 6, 'https://www.belama.de/selecta-k2-kindermatratze/', 'https://www.belama.de/media/image/product/537/md/selecta-k2-kindermatratze-.jpg'),
(13, 'Werkmeister YoungStar Kindermatratze', 449, 2, 6, 'https://www.belama.de/werkmeister-young-star-kindermatratze/', 'https://www.belama.de/media/image/product/128541/md/werkmeister-young-star-kindermatratze-.jpg'),
(14, 'Baumberger Vario Kindermatratze', 249, 2, 4, 'https://www.belama.de/baumberger-vario-kindermatratze/', 'https://www.belama.de/media/image/product/805/md/baumberger-vario-kindermatratze-.jpg'),
(15, 'Prolana Kindermatratze Nele Plus', 699, 2, 4, 'https://www.belama.de/prolana-nele-plus-kindermatratze/', 'https://www.belama.de/media/image/product/906/md/prolana-nele-plus-kindermatratze-.jpg'),
(16, 'Werkmeister M S55 Plus Kaltschaummatratze', 999, 1, 1, 'https://www.belama.de/werkmeister-m-s55-plus-kaltschaummatratze/', 'https://www.belama.de/media/image/product/116301/md/werkmeister-m-s55-plus-kaltschaummatratze-.jpg'),
(17, 'Werkmeister M L430 Latexmatratze', 1499, 1, 3, 'https://www.belama.de/werkmeister-m-l430/', 'https://www.belama.de/media/image/product/352/md/werkmeister-m-l430-.jpg'),
(18, 'selecta L4 Latexmatratze', 699, 1, 3, 'https://www.belama.de/selecta-l4-latexmatratze/', 'https://www.belama.de/media/image/product/113/md/selecta-l4-latexmatratze-.jpg'),
(19, 'selecta V6 Visco-Matratze', 799, 1, 5, 'https://www.belama.de/selecta-v6/', 'https://www.belama.de/media/image/product/539/md/selecta-v6-.jpg'),
(20, 'Dermapur Feeling 21 Visco-Matratze', 1098, 1, 5, 'https://www.belama.de/dermapur-matratze-feeling-21/', 'https://www.belama.de/media/image/product/479/md/dermapur-matratze-feeling-21-.jpg');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `size`
--

CREATE TABLE `size` (
  `s_id` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `size_mattress`
--

INSERT INTO `size_mattress` (`sm_id`, `ma_id`, `s_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 2, 1),
(10, 2, 2),
(11, 2, 3),
(12, 2, 4),
(13, 2, 5),
(14, 2, 6),
(15, 2, 7),
(16, 2, 8),
(17, 3, 1),
(18, 3, 2),
(19, 3, 3),
(20, 3, 4),
(21, 3, 5),
(22, 3, 6),
(23, 3, 7),
(24, 3, 8),
(25, 4, 1),
(26, 4, 2),
(27, 4, 3),
(28, 4, 4),
(29, 4, 5),
(30, 4, 6),
(31, 4, 7),
(32, 4, 8),
(33, 5, 1),
(34, 5, 2),
(35, 5, 3),
(36, 5, 4),
(37, 5, 5),
(38, 5, 6),
(39, 5, 7),
(40, 5, 8),
(41, 6, 1),
(42, 6, 2),
(43, 6, 3),
(44, 6, 4),
(45, 6, 5),
(46, 6, 6),
(47, 6, 7),
(48, 6, 8),
(49, 7, 1),
(50, 7, 2),
(51, 7, 3),
(52, 7, 4),
(53, 7, 5),
(54, 7, 6),
(55, 7, 7),
(56, 7, 8),
(57, 8, 1),
(58, 8, 2),
(59, 8, 3),
(60, 8, 4),
(61, 8, 5),
(62, 8, 6),
(63, 8, 7),
(64, 8, 8),
(65, 9, 1),
(66, 9, 2),
(67, 9, 3),
(68, 9, 4),
(69, 9, 5),
(70, 9, 6),
(71, 9, 7),
(72, 9, 8),
(73, 10, 1),
(74, 10, 2),
(75, 10, 3),
(76, 10, 4),
(77, 10, 5),
(78, 10, 6),
(79, 10, 7),
(80, 10, 8),
(81, 11, 1),
(82, 11, 2),
(83, 11, 3),
(84, 11, 4),
(85, 11, 5),
(86, 11, 6),
(87, 11, 7),
(88, 11, 8),
(89, 12, 1),
(90, 12, 2),
(91, 12, 3),
(92, 12, 4),
(93, 12, 5),
(94, 13, 1),
(95, 13, 2),
(96, 13, 3),
(97, 14, 2),
(98, 14, 3),
(99, 14, 5),
(100, 14, 9),
(101, 14, 10),
(102, 15, 1),
(103, 15, 2),
(104, 15, 3),
(105, 15, 5),
(106, 16, 1),
(107, 16, 2),
(108, 16, 3),
(109, 16, 4),
(110, 16, 5),
(111, 16, 6),
(112, 16, 7),
(113, 16, 8),
(114, 17, 1),
(115, 17, 2),
(116, 17, 3),
(117, 17, 4),
(118, 17, 5),
(119, 17, 6),
(120, 17, 7),
(121, 17, 8),
(122, 18, 1),
(123, 18, 2),
(124, 18, 3),
(125, 18, 4),
(126, 18, 5),
(127, 18, 6),
(128, 18, 7),
(129, 18, 8),
(130, 19, 1),
(131, 19, 2),
(132, 19, 3),
(133, 19, 4),
(134, 19, 5),
(135, 19, 6),
(136, 19, 7),
(137, 19, 8),
(138, 20, 1),
(139, 20, 2),
(140, 20, 3),
(141, 20, 4),
(142, 20, 5),
(143, 20, 6),
(144, 20, 7);

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
  MODIFY `am_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT für Tabelle `complaints`
--
ALTER TABLE `complaints`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `complaints_mattress`
--
ALTER TABLE `complaints_mattress`
  MODIFY `cm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT für Tabelle `groups`
--
ALTER TABLE `groups`
  MODIFY `g_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `haertegrade_mattress`
--
ALTER TABLE `haertegrade_mattress`
  MODIFY `hm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT für Tabelle `material`
--
ALTER TABLE `material`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `mattress`
--
ALTER TABLE `mattress`
  MODIFY `ma_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT für Tabelle `size`
--
ALTER TABLE `size`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `size_mattress`
--
ALTER TABLE `size_mattress`
  MODIFY `sm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

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
