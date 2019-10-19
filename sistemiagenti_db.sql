-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Ott 18, 2019 alle 17:18
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
--
-- Struttura della tabella `answers`
--

CREATE TABLE `answers` (
  `user_id` varchar(100) NOT NULL,
  `nome_categoria` varchar(100) NOT NULL,
  `answer` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

--
-- Indici per le tabelle scaricate
--
CREATE TABLE `category` ( 
  `id` INT NOT NULL AUTO_INCREMENT ,
  `category` VARCHAR(250) NOT NULL , PRIMARY KEY (`id`)
  ) ENGINE = InnoDB;

INSERT INTO `category` (`id`, `category`) VALUES 
(NULL, 'Abbigliamento'),
(NULL, 'Sport'),
(NULL, 'Cinema'),
(NULL, 'Viaggi'),
(NULL, 'Medicina & Salute'),
(NULL, 'Libri'),
(NULL, 'Cibo'),
(NULL, 'Infomatica & Elettronica'),
(NULL, 'Musica'),
(NULL, 'Politica'),
(NULL, 'Videogiochi'),
(NULL, 'Tv');

CREATE TABLE `user_category` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `_user` VARCHAR(100),
  `_category` INT NOT NULL ,PRIMARY KEY (`id`)
  ) ENGINE = InnoDB;

--
-- Indici per le tabelle `valutation`
--
CREATE TABLE `valutation` ( 
  `id` INT NOT NULL AUTO_INCREMENT ,
  `_user` VARCHAR(250) NOT NULL ,
  `valutation` VARCHAR(100) NOT NULL ,
  PRIMARY KEY (`id`)
  ) ENGINE = InnoDB;

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
-- Limiti per le tabelle scaricate
--


--
-- Limiti per la tabella `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`);

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
