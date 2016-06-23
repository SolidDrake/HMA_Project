-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Creato il: Giu 23, 2016 alle 14:33
-- Versione del server: 10.1.13-MariaDB
-- Versione PHP: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hma_tim`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `asservices`
--

CREATE TABLE `asservices` (
  `idasservices` int(11) NOT NULL,
  `as_name` varchar(45) DEFAULT NULL,
  `as_image` varchar(45) DEFAULT NULL,
  `as_description` longtext,
  `logo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `asservices`
--

INSERT INTO `asservices` (`idasservices`, `as_name`, `as_image`, `as_description`, `logo`) VALUES
(0, 'timmusicas', NULL, '<div class="row">\r\n            <div class="col-lg-12">\r\n                <h4 class="page-header">Tutti i modi per abbonarsi</h4>\r\n            </div>\r\n            <div class="col-lg-12">\r\n                <p>Se sei un cliente TIM puoi attivare l &apos abbonamento per Smarthone e Tablet direttamente nella sezione &quot Abbonamento &quot della App. Per iOS occorre accedere dallo smartphone o  tablet a timmusic.it.<br>\r\n                Si puo &apos attivare TIMmusic anche presso i negozi TIM, chiamando il 40916 (seguendo la voce guida) o da tim.it (anche per chiavetta TIM).<br>\r\n                Se sei un cliente con una linea ADSL o Fibra  residenziale Telecom Italia puoi attivare l &apos Abbonamento TIMmusic per fruirne su PC, da  sito timmusic.it,  dal sito tim.it oppure chiamando il 187.</p>\r\n            </div>\r\n            \r\n            <div class="col-lg-12">\r\n                <h4 class="page-header">Cosa fare se non si caricano i brani?</h4>\r\n            </div>\r\n            <div class="col-lg-12">\r\n                <p>Se la connessione esiste e hai un &apos offerta bundle dati (es TIMyoung&amp;music) puo &apos essere che sia terminato il bundle dati. In tal caso la banda si strozza a un livello tale che rende impossibile l &apos uso di TIMmusic anche in bassa qualit&agrave (96 Kbit/s). Puoi comuque utilizzare TIMmusic in Wi-Fi (con il limite dei 7 gg*). <br>*Per poter utilizzare TIMmusic in modalit&agrave Wi-Fi devi fare un primo accesso all &apos app su rete mobile di TIM 3G/4G. Puoi quindi utilizzare il servizio in Wi-Fi per 7 giorni, al termine di questo periodo &egrave necessario che tu riacceda nuovamente all &apos app su rete mobile di TIM 3G/4G</p>\r\n            </div>\r\n            \r\n            <div class="col-lg-12">\r\n                <h4 class="page-header">Come disattivo un abbonamento?</h4>\r\n            </div>\r\n            <div class="col-lg-12">\r\n                 <p>Se hai attivato l &apos abbonamento TIMmusic presso un Negozio o tramite il 40916/40915 (voce guidata) o sms o su tim.it puoi disattivarlo utilizzando uno delle modalit&agrave indicate su tim.it nella sezione &quot Come si Attiva &quot della specifica offerta.<br>\r\n                 Se l &apos abbonamento &egrave stato attivato da app puoi contattare il 119.</p>\r\n            </div>', '"../Images/TimMusicAS.png"');

-- --------------------------------------------------------

--
-- Struttura della tabella `devices`
--

CREATE TABLE `devices` (
  `iddevices` int(11) NOT NULL,
  `device_name` varchar(45) DEFAULT NULL,
  `device_description` longtext,
  `device_image1` varchar(45) DEFAULT NULL,
  `device_image2` varchar(45) DEFAULT NULL,
  `device_image3` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `devices`
--

INSERT INTO `devices` (`iddevices`, `device_name`, `device_description`, `device_image1`, `device_image2`, `device_image3`) VALUES
(0, 'LGG5', '<p>Il nuovo LG G5 &egrave; un nuovo tipo di smartphone che supera tutti i limiti, con un design modulare completamete in metallo che rivoluziona i canoni di design. Espandi le funzioni, interagisci con gli innovativi LG Friends e prova un''esperienza smartphone realmente innovativa.</p>', '"../Images/LG_G51.jpg"', '"../Images/LG_G52.jpg"', '"../Images/LG_G53.jpg"');

-- --------------------------------------------------------

--
-- Struttura della tabella `devices_has_asservices`
--

CREATE TABLE `devices_has_asservices` (
  `devices_iddevices` int(11) NOT NULL,
  `asservices_idasservices` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `devices_has_slservices`
--

CREATE TABLE `devices_has_slservices` (
  `devices_iddevices` int(11) NOT NULL,
  `slservices_idslservices` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `slservices`
--

CREATE TABLE `slservices` (
  `idslservices` int(11) NOT NULL,
  `sl_name` varchar(45) DEFAULT NULL,
  `sl_description` longtext,
  `sl_image1` varchar(45) DEFAULT NULL,
  `sl_image2` varchar(45) DEFAULT NULL,
  `sl_image3` varchar(45) DEFAULT NULL,
  `logo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `slservices`
--

INSERT INTO `slservices` (`idslservices`, `sl_name`, `sl_description`, `sl_image1`, `sl_image2`, `sl_image3`, `logo`) VALUES
(0, 'timmusicsl', '<p> <br>Con TIMmusic puoi ascoltare musica in streaming senza limiti di tempo scegliendo da un vastissimo catalogo di milioni di brani musicali nazionali e internazionali di ogni genere, sempre aggiornato con le ultime uscite discografiche.\r\n\r\n                TIMmusic ti consente anche di creare e salvare le tue playlist personali o di ascoltare quelle suggerite da Dj e artisti famosi in esclusiva per te. Inoltre puoi scegliere tra tante playlist proposte per genere e per tema o create dinamicamente dalla piattaforma in base alla musica che stai ascoltando. </p>', '"../Images/Timmusic.png"', '"../Images/Timmusic1.png"', '"../Images/Timmusic2.png"', 'fa-music');

-- --------------------------------------------------------

--
-- Struttura della tabella `slservices_has_asservices`
--

CREATE TABLE `slservices_has_asservices` (
  `slservices_idslservices` int(11) NOT NULL,
  `asservices_idasservices` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `asservices`
--
ALTER TABLE `asservices`
  ADD PRIMARY KEY (`idasservices`);

--
-- Indici per le tabelle `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`iddevices`);

--
-- Indici per le tabelle `devices_has_asservices`
--
ALTER TABLE `devices_has_asservices`
  ADD PRIMARY KEY (`devices_iddevices`,`asservices_idasservices`),
  ADD KEY `fk_devices_has_asservices_asservices1_idx` (`asservices_idasservices`),
  ADD KEY `fk_devices_has_asservices_devices_idx` (`devices_iddevices`);

--
-- Indici per le tabelle `devices_has_slservices`
--
ALTER TABLE `devices_has_slservices`
  ADD PRIMARY KEY (`devices_iddevices`,`slservices_idslservices`),
  ADD KEY `fk_devices_has_slservices_slservices1_idx` (`slservices_idslservices`),
  ADD KEY `fk_devices_has_slservices_devices1_idx` (`devices_iddevices`);

--
-- Indici per le tabelle `slservices`
--
ALTER TABLE `slservices`
  ADD PRIMARY KEY (`idslservices`);

--
-- Indici per le tabelle `slservices_has_asservices`
--
ALTER TABLE `slservices_has_asservices`
  ADD PRIMARY KEY (`slservices_idslservices`,`asservices_idasservices`),
  ADD KEY `fk_slservices_has_asservices_asservices1_idx` (`asservices_idasservices`),
  ADD KEY `fk_slservices_has_asservices_slservices1_idx` (`slservices_idslservices`);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `devices_has_asservices`
--
ALTER TABLE `devices_has_asservices`
  ADD CONSTRAINT `fk_devices_has_asservices_asservices1` FOREIGN KEY (`asservices_idasservices`) REFERENCES `asservices` (`idasservices`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_devices_has_asservices_devices` FOREIGN KEY (`devices_iddevices`) REFERENCES `devices` (`iddevices`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiti per la tabella `devices_has_slservices`
--
ALTER TABLE `devices_has_slservices`
  ADD CONSTRAINT `fk_devices_has_slservices_devices1` FOREIGN KEY (`devices_iddevices`) REFERENCES `devices` (`iddevices`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_devices_has_slservices_slservices1` FOREIGN KEY (`slservices_idslservices`) REFERENCES `slservices` (`idslservices`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiti per la tabella `slservices_has_asservices`
--
ALTER TABLE `slservices_has_asservices`
  ADD CONSTRAINT `fk_slservices_has_asservices_asservices1` FOREIGN KEY (`asservices_idasservices`) REFERENCES `asservices` (`idasservices`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_slservices_has_asservices_slservices1` FOREIGN KEY (`slservices_idslservices`) REFERENCES `slservices` (`idslservices`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
