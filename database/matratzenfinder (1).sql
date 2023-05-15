-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 15. Mai 2023 um 21:07
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
