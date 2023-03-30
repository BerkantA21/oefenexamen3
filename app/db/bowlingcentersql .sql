-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 29 mrt 2023 om 14:06
-- Serverversie: 5.7.36
-- PHP-versie: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bowlingcentersql`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pakketoptie`
--

DROP TABLE IF EXISTS `pakketoptie`;
CREATE TABLE IF NOT EXISTS `pakketoptie` (
  `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Naam` varchar(30) NOT NULL,
  `IsActief` bit(1) NOT NULL,
  `Opmerking` varchar(250) DEFAULT NULL,
  `DatumAangemaakt` datetime(6) NOT NULL,
  `DatumGewijzigd` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `pakketoptie`
--

INSERT INTO `pakketoptie` (`Id`, `Naam`, `IsActief`, `Opmerking`, `DatumAangemaakt`, `DatumGewijzigd`) VALUES
(1, 'Snackpakketbasis', b'1', NULL, '2023-03-29 14:14:01.000000', '2023-03-29 14:14:01.000000'),
(2, 'Snackpakketluxe', b'1', NULL, '2023-03-29 14:14:01.000000', '2023-03-29 14:14:01.000000'),
(3, 'Kinderpartij', b'1', NULL, '2023-03-29 14:14:01.000000', '2023-03-29 14:14:01.000000'),
(4, 'Vrijgezellenfeest', b'1', NULL, '2023-03-29 14:14:01.000000', '2023-03-29 14:14:01.000000');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `persoon`
--

DROP TABLE IF EXISTS `persoon`;
CREATE TABLE IF NOT EXISTS `persoon` (
  `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TypePersoonId` tinyint(1) NOT NULL,
  `Voornaam` varchar(50) NOT NULL,
  `Tussenvoegsel` varchar(15) DEFAULT NULL,
  `Achternaam` varchar(50) NOT NULL,
  `Roepnaam` varchar(50) NOT NULL,
  `IsVolwassen` bit(1) NOT NULL,
  `IsActief` bit(1) NOT NULL,
  `Opmerking` varchar(250) DEFAULT NULL,
  `DatumAangemaakt` datetime NOT NULL,
  `DatumGewijzigd` datetime NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `persoon`
--

INSERT INTO `persoon` (`Id`, `TypePersoonId`, `Voornaam`, `Tussenvoegsel`, `Achternaam`, `Roepnaam`, `IsVolwassen`, `IsActief`, `Opmerking`, `DatumAangemaakt`, `DatumGewijzigd`) VALUES
(1, 1, 'Mazin', NULL, 'Jamil', 'Mazin', b'1', b'1', NULL, '2023-03-29 14:14:01', '2023-03-29 14:14:01'),
(2, 1, 'Arjan', 'de', 'Ruijter', 'Arjan', b'1', b'1', NULL, '2023-03-29 14:14:01', '2023-03-29 14:14:01'),
(3, 1, 'Hans', NULL, 'Odijk', 'Hans', b'1', b'1', NULL, '2023-03-29 14:14:01', '2023-03-29 14:14:01'),
(4, 1, 'Dennis', 'van', 'Wakeren', 'Dennis', b'1', b'1', NULL, '2023-03-29 14:14:01', '2023-03-29 14:14:01'),
(5, 2, 'Wilco', 'Van de', 'Grift', 'Wilco', b'1', b'1', NULL, '2023-03-29 14:14:01', '2023-03-29 14:14:01'),
(6, 2, 'Tom', NULL, 'Sanders', 'Tom', b'0', b'1', NULL, '2023-03-29 14:14:01', '2023-03-29 14:14:01'),
(7, 2, 'Andrew', NULL, 'Sanders', 'Andrew', b'0', b'1', NULL, '2023-03-29 14:14:01', '2023-03-29 14:14:01'),
(8, 2, 'Julian', NULL, 'Kaldenheuvel', 'Julian', b'1', b'1', NULL, '2023-03-29 14:14:01', '2023-03-29 14:14:01');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `reservering`
--

DROP TABLE IF EXISTS `reservering`;
CREATE TABLE IF NOT EXISTS `reservering` (
  `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `PersoonId` int(10) UNSIGNED NOT NULL,
  `PakketOptieId` int(10) UNSIGNED DEFAULT NULL,
  `ReserveringStatusId` int(10) UNSIGNED NOT NULL,
  `ReserveringNummer` bigint(13) UNSIGNED NOT NULL,
  `Datum` date NOT NULL,
  `AantalUren` tinyint(2) NOT NULL,
  `BeginTijd` time(6) NOT NULL,
  `EindTijd` time(6) NOT NULL,
  `AantalVolwassen` tinyint(2) NOT NULL,
  `AantalKinderen` tinyint(2) DEFAULT NULL,
  `IsActief` bit(1) NOT NULL,
  `Opmerking` varchar(250) DEFAULT NULL,
  `DatumAangemaakt` datetime(6) NOT NULL,
  `DatumGewijzigd` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `PersoonId` (`PersoonId`),
  KEY `PakketOptieId` (`PakketOptieId`),
  KEY `ReserveringStatusId` (`ReserveringStatusId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `reservering`
--

INSERT INTO `reservering` (`Id`, `PersoonId`, `PakketOptieId`, `ReserveringStatusId`, `ReserveringNummer`, `Datum`, `AantalUren`, `BeginTijd`, `EindTijd`, `AantalVolwassen`, `AantalKinderen`, `IsActief`, `Opmerking`, `DatumAangemaakt`, `DatumGewijzigd`) VALUES
(1, 1, 1, 1, 2022122000001, '2022-12-20', 1, '15:00:00.000000', '16:00:00.000000', 4, 2, b'1', NULL, '2023-03-29 14:14:01.000000', '2023-03-29 14:14:01.000000'),
(2, 2, 3, 1, 2022122000002, '2022-12-20', 1, '17:00:00.000000', '18:00:00.000000', 4, NULL, b'1', NULL, '2023-03-29 14:14:01.000000', '2023-03-29 14:14:01.000000'),
(3, 3, 1, 1, 2022122000003, '2022-12-24', 2, '16:00:00.000000', '18:00:00.000000', 4, NULL, b'1', NULL, '2023-03-29 14:14:01.000000', '2023-03-29 14:14:01.000000'),
(4, 1, NULL, 1, 2022122000004, '2022-12-27', 2, '17:00:00.000000', '19:00:00.000000', 2, NULL, b'1', NULL, '2023-03-29 14:14:01.000000', '2023-03-29 14:14:01.000000'),
(5, 4, 4, 1, 2022122000005, '2022-12-28', 1, '14:00:00.000000', '15:00:00.000000', 3, NULL, b'1', NULL, '2023-03-29 14:14:01.000000', '2023-03-29 14:14:01.000000'),
(6, 5, 4, 1, 2022122000006, '2022-12-28', 2, '19:00:00.000000', '21:00:00.000000', 2, NULL, b'1', NULL, '2023-03-29 14:14:01.000000', '2023-03-29 14:14:01.000000');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `reserveringstatus`
--

DROP TABLE IF EXISTS `reserveringstatus`;
CREATE TABLE IF NOT EXISTS `reserveringstatus` (
  `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Naam` varchar(30) NOT NULL,
  `IsActief` bit(1) NOT NULL,
  `Opmerking` varchar(250) DEFAULT NULL,
  `DatumAangemaakt` datetime(6) NOT NULL,
  `DatumGewijzigd` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `reserveringstatus`
--

INSERT INTO `reserveringstatus` (`Id`, `Naam`, `IsActief`, `Opmerking`, `DatumAangemaakt`, `DatumGewijzigd`) VALUES
(1, 'Bevestigd', b'1', NULL, '2023-03-29 14:14:01.000000', '2023-03-29 14:14:01.000000'),
(2, 'Geannuleerd', b'1', NULL, '2023-03-29 14:14:01.000000', '2023-03-29 14:14:01.000000'),
(3, 'InBehandeling', b'1', NULL, '2023-03-29 14:14:01.000000', '2023-03-29 14:14:01.000000');

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `reservering`
--
ALTER TABLE `reservering`
  ADD CONSTRAINT `reservering_ibfk_1` FOREIGN KEY (`PersoonId`) REFERENCES `persoon` (`Id`),
  ADD CONSTRAINT `reservering_ibfk_2` FOREIGN KEY (`PakketOptieId`) REFERENCES `pakketoptie` (`Id`),
  ADD CONSTRAINT `reservering_ibfk_3` FOREIGN KEY (`ReserveringStatusId`) REFERENCES `reserveringstatus` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
