-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 15. Mai 2023 um 14:34
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  MODIFY `am_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `complaints`
--
ALTER TABLE `complaints`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `complaints_mattress`
--
ALTER TABLE `complaints_mattress`
  MODIFY `cm_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `groups`
--
ALTER TABLE `groups`
  MODIFY `g_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `haertegrade_mattress`
--
ALTER TABLE `haertegrade_mattress`
  MODIFY `hm_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `material`
--
ALTER TABLE `material`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `mattress`
--
ALTER TABLE `mattress`
  MODIFY `ma_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `size`
--
ALTER TABLE `size`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `size_mattress`
--
ALTER TABLE `size_mattress`
  MODIFY `sm_id` int(11) NOT NULL AUTO_INCREMENT;

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
