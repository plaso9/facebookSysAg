-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Ott 21, 2019 alle 12:13
-- Versione del server: 10.1.37-MariaDB
-- Versione PHP: 7.2.12

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
  `counter` int(11) NOT NULL DEFAULT '0',
  `user_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `likes_description`
--

CREATE TABLE `likes_description` (
  `nome_categoria` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `like_date` varchar(100) NOT NULL,
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

--
-- Dump dei dati per la tabella `user_category`
--

INSERT INTO `user_category` (`id`, `_user`, `_category`) VALUES
(1, '2461147887302139', 10),
(2, '2461147887302139', 9),
(3, '2461147887302139', 1),
(4, '2461147887302139', 2),
(5, '2461147887302139', 7),
(6, '2461147887302139', 7),
(7, '2461147887302139', 10),
(8, '2461147887302139', 9),
(9, '2461147887302139', 1),
(10, '2461147887302139', 2),
(11, '2461147887302139', 7),
(12, '2461147887302139', 7),
(13, '2461147887302139', 10),
(14, '2461147887302139', 9),
(15, '2461147887302139', 1),
(16, '2461147887302139', 2),
(17, '2461147887302139', 7),
(18, '2461147887302139', 7),
(19, '2461147887302139', 10),
(20, '2461147887302139', 9),
(21, '2461147887302139', 1),
(22, '2461147887302139', 2),
(23, '2461147887302139', 7),
(24, '2461147887302139', 7),
(25, '2461147887302139', 10),
(26, '2461147887302139', 9),
(27, '2461147887302139', 1),
(28, '2461147887302139', 2),
(29, '2461147887302139', 7),
(30, '2461147887302139', 7),
(31, '2461147887302139', 10),
(32, '2461147887302139', 9),
(33, '2461147887302139', 1),
(34, '2461147887302139', 2),
(35, '2461147887302139', 7),
(36, '2461147887302139', 7),
(37, '2461147887302139', 10),
(38, '2461147887302139', 9),
(39, '2461147887302139', 1),
(40, '2461147887302139', 2),
(41, '2461147887302139', 7),
(42, '2461147887302139', 7),
(43, '2461147887302139', 10),
(44, '2461147887302139', 9),
(45, '2461147887302139', 1),
(46, '2461147887302139', 2),
(47, '2461147887302139', 7),
(48, '2461147887302139', 7),
(49, '2461147887302139', 10),
(50, '2461147887302139', 9),
(51, '2461147887302139', 1),
(52, '2461147887302139', 2),
(53, '2461147887302139', 7),
(54, '2461147887302139', 7);

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
