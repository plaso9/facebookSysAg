-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Ott 30, 2019 alle 17:40
-- Versione del server: 10.3.16-MariaDB
-- Versione PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistemiagenti_db`
--

-- --------------------------------------------------------
DROP DATABASE IF EXISTS `sistemiagenti_db`;
CREATE DATABASE IF NOT EXISTS `sistemiagenti_db`;

-- --------------------------------------------------------
--
-- Struttura della tabella `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(250) NOT NULL,
  `coupon_message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `category`
--

INSERT INTO `category` (`id`, `category`, `coupon_message`) VALUES
(1, 'Abbigliamento', 'Valido in tutti i negozi di abbigliamento nella città di Bari'),
(2, 'Sport', 'Valido per tutti gli eventi sportivi in Italia'),
(3, 'Cinema', 'Valido in tutti i cinema nella città di Bari'),
(4, 'Viaggi', 'Valido in tutte le agenzie di viaggio nella città di Bari'),
(5, 'Medicina & Salute', 'Valido in tutte le farmacie nella città di Bari'),
(6, 'Libri', 'Valido in tutte le librerie nella città di Bari'),
(7, 'Cibo', 'Valido in tutti i ristoranti nella città di Bari'),
(8, 'Infomatica & Elettronica & Tv', 'Valido in tutti i negozi hi-tech nella città di Bari'),
(9, 'Musica', 'Valido in tutti gli eventi musicali nella città di Bari'),
(10, 'Videogiochi', 'Valido in tutti i gaming store nella città di Bari');

-- --------------------------------------------------------

--
-- Struttura della tabella `dictionary`
--

CREATE TABLE `dictionary` (
  `id` int(11) NOT NULL,
  `_category` int(11) NOT NULL,
  `word` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `dictionary` (`id`, `_category`, `word`) VALUES
(1, 2, 'Atleta'),
(2, 2, 'Squadra'),
(3, 3, 'Artista'),
(4, 3, 'Attore'),
(5, 2, 'Calcio'),
(6, 2, 'Basket'),
(7, 3, 'Film'),
(8, 2, 'Handball'),
(9, 2, 'Pallacanestro'),
(10, 2, 'Pallamano'),
(11, 2, 'Nuoto'),
(12, 7, 'Bar'),
(13, 7, 'Cornetto'),
(14, 7, 'Panino'),
(15, 2, 'Stadio'),
(16, 2, 'Futsal'),
(17, 9, 'Musicista'),
(18, 9, 'Cantante'),
(19, 9, 'Concerto'),
(20, 9, 'Canzone'),
(21, 5, 'Farmaci'),
(22, 5, 'Pillole'),
(23, 5, 'Fisioterapista'),
(24, 2, 'NBA'),
(25, 1, 'Brand'),
(26, 1, 'Pantaloncino'),
(27, 1, 'T-shirt'),
(28, 2, 'Juventus'),
(29, 2, 'Inter'),
(30, 7, 'Chef'),
(31, 7, 'Ristorante'),
(32, 2, 'Champions League'),
(33, 9, 'Spotify'),
(34, 8, 'code'),
(35, 8, 'Developer'),
(36, 8, 'Software'),
(37, 8, 'Hardware'),
(38, 10, 'EA'),
(39, 4, 'Esplorare'),
(40, 4, 'Viaggiare'),
(41, 4, 'Spiaggia'),
(42, 4, 'Mare'),
(43, 4, 'Montagna'),
(44, 4, 'Lago'),
(45, 4, 'California'),
(46, 9, 'MTV'),
(47, 8, 'Telecomunicazioni'),
(48, 6, 'Biblioteca');

-- --------------------------------------------------------

--
-- Struttura della tabella `favorite_athletes`
--

CREATE TABLE `favorite_athletes` (
  `name` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `football_team`
--

CREATE TABLE `football_team` (
  `name` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `likes`
--

CREATE TABLE `likes` (
  `nome_categoria` varchar(100) NOT NULL,
  `counter` int(11) NOT NULL DEFAULT 0,
  `user_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `likes_description`
--

CREATE TABLE `likes_description` (
  `nome_categoria` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `like_date` DATETIME NOT NULL,
  `user_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `music`
--

CREATE TABLE `music` (
  `name` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `user`
--

CREATE TABLE `user` (
  `id_user` varchar(100) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `birthday` varchar(50) DEFAULT NULL,
  `hometown` varchar(100) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `user_category`
--

CREATE TABLE `user_category` (
  `id` int(11) NOT NULL,
  `_user` varchar(100) DEFAULT NULL,
  `_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Struttura della tabella `valutation`
--

CREATE TABLE `valutation` (
  `id` int(11) NOT NULL,
  `_user` varchar(250) NOT NULL,
  `valutation` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `dictionary`
--
ALTER TABLE `dictionary`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `favorite_athletes`
--
ALTER TABLE `favorite_athletes`
  ADD PRIMARY KEY (`name`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indici per le tabelle `football_team`
--
ALTER TABLE `football_team`
  ADD PRIMARY KEY (`name`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indici per le tabelle `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`user_id`,`nome_categoria`);

--
-- Indici per le tabelle `music`
--
ALTER TABLE `music`
  ADD PRIMARY KEY (`name`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indici per le tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indici per le tabelle `user_category`
--
ALTER TABLE `user_category`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `valutation`
--
ALTER TABLE `valutation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la tabella `dictionary`
--
ALTER TABLE `dictionary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `user_category`
--
ALTER TABLE `user_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT per la tabella `valutation`
--
ALTER TABLE `valutation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `favorite_athletes`
--
ALTER TABLE `favorite_athletes`
  ADD CONSTRAINT `favorite_athletes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`);

--
-- Limiti per la tabella `football_team`
--
ALTER TABLE `football_team`
  ADD CONSTRAINT `football_team_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`);

--
-- Limiti per la tabella `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`);

--
-- Limiti per la tabella `music`
--
ALTER TABLE `music`
  ADD CONSTRAINT `music_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
