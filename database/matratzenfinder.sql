-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 09. Jan 2023 um 15:41
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
(3, 'Federn'),
(4, 'Tierhaar');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `allergy_mattress`
--

CREATE TABLE `allergy_mattress` (
  `am_id` int(11) NOT NULL,
  `a_id` int(11) DEFAULT NULL,
  `ma_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `allergy_mattress`
--

INSERT INTO `allergy_mattress` (`am_id`, `a_id`, `ma_id`) VALUES
(1, 1, 8),
(2, 1, 12);

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
(1, 'Rücken'),
(2, 'Schultern');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `complaints_mattress`
--

CREATE TABLE `complaints_mattress` (
  `cm_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `ma_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `complaints_mattress`
--

INSERT INTO `complaints_mattress` (`cm_id`, `c_id`, `ma_id`) VALUES
(1, 1, 8);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `group`
--

CREATE TABLE `group` (
  `g_id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `group`
--

INSERT INTO `group` (`g_id`, `group_name`) VALUES
(1, 'Erwachsene'),
(2, 'Kinder');

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
(2, 'Federkern');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `mattress`
--

CREATE TABLE `mattress` (
  `ma_id` int(11) NOT NULL,
  `mattress` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `group_fk` int(11) NOT NULL,
  `data_fk` varchar(50) NOT NULL,
  `material_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `mattress`
--

INSERT INTO `mattress` (`ma_id`, `mattress`, `price`, `group_fk`, `data_fk`, `material_fk`) VALUES
(8, 'Werkmeister M S55 Plus Kaltschaummatratze', 999, 1, 'H1', 1),
(12, 'Werkmeister M T631 Taschenfederkernmatratze', 1099, 1, 'H2', 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `p_data`
--

CREATE TABLE `p_data` (
  `d_id` varchar(50) NOT NULL,
  `haertegrad` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `p_data`
--

INSERT INTO `p_data` (`d_id`, `haertegrad`) VALUES
('H1', 'soft'),
('H2', 'medium');

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
(2, 80, 220),
(3, 90, 200);

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
(1, 8, 1),
(2, 12, 3),
(3, 12, 2);

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
-- Indizes für die Tabelle `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`g_id`);

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
  ADD KEY `Schlüssel 3` (`group_fk`),
  ADD KEY `Schlüssel 4` (`data_fk`);

--
-- Indizes für die Tabelle `p_data`
--
ALTER TABLE `p_data`
  ADD PRIMARY KEY (`d_id`);

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
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `allergy_mattress`
--
ALTER TABLE `allergy_mattress`
  MODIFY `am_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `complaints`
--
ALTER TABLE `complaints`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `complaints_mattress`
--
ALTER TABLE `complaints_mattress`
  MODIFY `cm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `group`
--
ALTER TABLE `group`
  MODIFY `g_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `material`
--
ALTER TABLE `material`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `mattress`
--
ALTER TABLE `mattress`
  MODIFY `ma_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT für Tabelle `size`
--
ALTER TABLE `size`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `size_mattress`
--
ALTER TABLE `size_mattress`
  MODIFY `sm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `allergy_mattress`
--
ALTER TABLE `allergy_mattress`
  ADD CONSTRAINT `FK_allergy_mattress_allergy` FOREIGN KEY (`a_id`) REFERENCES `allergy` (`a_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_allergy_mattress_mattress` FOREIGN KEY (`ma_id`) REFERENCES `mattress` (`ma_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints der Tabelle `complaints_mattress`
--
ALTER TABLE `complaints_mattress`
  ADD CONSTRAINT `complaints_mattress_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `complaints` (`c_id`),
  ADD CONSTRAINT `complaints_mattress_ibfk_2` FOREIGN KEY (`ma_id`) REFERENCES `mattress` (`ma_id`);

--
-- Constraints der Tabelle `mattress`
--
ALTER TABLE `mattress`
  ADD CONSTRAINT `FK_mattress_group` FOREIGN KEY (`group_fk`) REFERENCES `group` (`g_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_mattress_material` FOREIGN KEY (`material_fk`) REFERENCES `material` (`m_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_mattress_p_data` FOREIGN KEY (`data_fk`) REFERENCES `p_data` (`d_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `size_mattress`
--
ALTER TABLE `size_mattress`
  ADD CONSTRAINT `size_mattress_ibfk_1` FOREIGN KEY (`ma_id`) REFERENCES `mattress` (`ma_id`),
  ADD CONSTRAINT `size_mattress_ibfk_2` FOREIGN KEY (`s_id`) REFERENCES `size` (`s_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
