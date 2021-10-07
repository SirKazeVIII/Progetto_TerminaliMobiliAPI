-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Ott 07, 2021 alle 19:41
-- Versione del server: 10.4.21-MariaDB
-- Versione PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `terminali_mobili`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `allarme`
--

CREATE TABLE `allarme` (
  `ID_Allarme` int(11) NOT NULL,
  `Data_Inizio` datetime NOT NULL,
  `Data_Fine` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `allarme`
--

INSERT INTO `allarme` (`ID_Allarme`, `Data_Inizio`, `Data_Fine`) VALUES
(5, '2021-10-07 17:24:17', '2021-10-07 17:25:17'),
(6, '2021-10-07 17:25:17', '2021-10-07 17:26:17'),
(7, '2021-10-07 17:26:17', '2021-10-07 17:27:17'),
(8, '2021-10-07 17:27:17', '2021-10-07 17:28:17'),
(9, '2021-10-07 17:28:17', '2021-10-07 17:29:17'),
(10, '2021-10-07 17:29:17', '2021-10-07 17:30:17'),
(11, '2021-10-07 17:30:17', '2021-10-07 17:31:17'),
(12, '2021-10-07 17:31:17', '2021-10-07 17:32:17'),
(13, '2021-10-07 17:32:17', '2021-10-07 17:33:17'),
(14, '2021-10-07 17:33:17', '2021-10-07 17:34:17');

-- --------------------------------------------------------

--
-- Struttura della tabella `sensori_attivabili`
--

CREATE TABLE `sensori_attivabili` (
  `Nome_SA` varchar(50) NOT NULL,
  `Tipo_Consumo_SA` varchar(50) NOT NULL,
  `Consumo_SA` varchar(50) NOT NULL,
  `Tempo_Attivazione` int(11) NOT NULL,
  `AddOn` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `sensori_attivabili`
--

INSERT INTO `sensori_attivabili` (`Nome_SA`, `Tipo_Consumo_SA`, `Consumo_SA`, `Tempo_Attivazione`, `AddOn`) VALUES
('Allarme', 'KWH', '2', 5, 'Cassa'),
('Allarme Anti Incendio', 'KWH', '2', 3, '');

-- --------------------------------------------------------

--
-- Struttura della tabella `sensori_monitoraggio`
--

CREATE TABLE `sensori_monitoraggio` (
  `Nome_SM` varchar(50) NOT NULL,
  `Tipo_Consumo_SM` varchar(50) NOT NULL,
  `Consumo_SM` varchar(50) NOT NULL,
  `Sensore_Attivato` varchar(50) NOT NULL,
  `AddOn` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `sensori_monitoraggio`
--

INSERT INTO `sensori_monitoraggio` (`Nome_SM`, `Tipo_Consumo_SM`, `Consumo_SM`, `Sensore_Attivato`, `AddOn`) VALUES
('Anti Incendio', 'KWH', '5', 'Allarme Anti Incendio', ''),
('Telecamera', 'KWH', '10', 'Allarme', 'Infrarossi');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `allarme`
--
ALTER TABLE `allarme`
  ADD PRIMARY KEY (`ID_Allarme`);

--
-- Indici per le tabelle `sensori_attivabili`
--
ALTER TABLE `sensori_attivabili`
  ADD PRIMARY KEY (`Nome_SA`);

--
-- Indici per le tabelle `sensori_monitoraggio`
--
ALTER TABLE `sensori_monitoraggio`
  ADD PRIMARY KEY (`Nome_SM`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `allarme`
--
ALTER TABLE `allarme`
  MODIFY `ID_Allarme` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
