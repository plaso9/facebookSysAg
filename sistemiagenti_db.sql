-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Ott 31, 2019 alle 23:33
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

--
-- Dump dei dati per la tabella `dictionary`
--
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
(48, 6, 'Biblioteca'),
(49, 1, 'Shopping'),
(50, 2, 'Ballerino'),
(51, 2, 'Ballerina'),
(52, 2, 'Danza'),
(53, 7, 'Bevande'),
(54, 4, 'Tour operator'),
(55, 5, 'Bellezza'),
(56, 7, 'Pescatori'),
(57, 7, 'Cucina'),
(58, 7, 'Fast Food'),
(59, 7, 'Risto-pub'),
(60, 7, 'Hamburger'),
(61, 7, 'Pizzeria'),
(62, 2, 'Palestra'),
(63, 7, 'Paninoteca'),
(64, 7, 'Pub'),
(65, 1, 'Negozio'),
(66, 1, 'Vintage'),
(67, 5, 'Nutrizionista'),
(68, 5, 'Dietista'),
(69, 2, 'Fitness'),
(70, 2, 'Automobili'),
(71, 2, 'Concessionaria'),
(72, 7, 'Birra'),
(73, 2, 'Volley'),
(74, 2, 'Hip Hop'),
(75, 3, 'Spettacolo'),
(76, 5, 'Dottore'),
(77, 5, 'Medico'),
(78, 2, 'Allenatore'),
(79, 3, 'Comico'),
(80, 10, 'Videogioco'),
(81, 6, 'Libro'),
(82, 10, 'Giochi'),
(83, 8, 'App'),
(84, 8, 'Provider'),
(85, 8, 'Internet'),
(86, 4, 'CittÃ '),
(87, 4, 'New York'),
(88, 2, 'Fantacalcio'),
(89, 8, 'Computer (brand)'),
(90, 8, 'Elettronica'),
(91, 5, 'Vitamine/integratori'),
(92, 7, 'Vini/liquori'),
(93, 8, 'Telefono/tablet'),
(94, 7, 'Cucina/cucinare'),
(95, 5, 'Malattie'),
(96, 7, 'Agricoltura'),
(97, 7, 'Gastronomia'),
(98, 6, 'Istruzione'),
(99, 8, 'Scienza'),
(100, 6, 'Riviste'),
(101, 9, 'Orchestra'),
(102, 8, 'Scienziato'),
(103, 10, 'Gamer'),
(104, 6, 'Autore'),
(105, 7, 'Lounge'),
(106, 6, 'Editore'),
(107, 8, 'Fotografia'),
(108, 8, 'Cellulari'),
(109, 10, 'Giocattoli'),
(110, 5, 'Optometrista'),
(111, 6, 'Scuola'),
(112, 4, 'Turistiche'),
(113, 4, 'Berlino'),
(114, 4, 'Amsterdam'),
(115, 4, 'Beach'),
(116, 4, 'Dubai'),
(117, 9, 'Eminem'),
(118, 1, 'Gioielleria'),
(119, 10, 'Fantasy'),
(120, 8, 'hi-tech'),
(121, 8, 'Samsung'),
(122, 8, 'Apple'),
(123, 1, 'Business'),
(124, 2, 'Concessionario'),
(125, 4, 'Maldives'),
(126, 2, 'Motor'),
(127, 4, 'Weekend'),
(128, 4, 'America'),
(129, 4, 'Europa'),
(130, 8, 'Programmatore'),
(131, 2, 'Capitano'),
(132, 2, 'Sport'),
(133, 10, 'Game'),
(134, 7, 'Mangio'),
(135, 7, 'Alimentare'),
(136, 7, 'Alimento'),
(137, 1, 'Fashion'),
(138, 4, 'Volo'),
(139, 1, 'Scarpe'),
(140, 1, 'Scarpa'),
(141, 9, 'Canzoni'),
(142, 7, 'Piatto'),
(143, 7, 'Pietanza'),
(144, 7, 'Street-Food'),
(145, 7, 'Panzerotto'),
(146, 7, 'Pizza'),
(147, 4, 'Aereo'),
(148, 4, 'Treno'),
(149, 4, 'Museo'),
(150, 4, 'Visitare'),
(151, 1, 'Seta'),
(152, 1, 'Jeans'),
(153, 1, 'Felpa'),
(154, 1, 'Sneakers'),
(155, 1, 'Borse'),
(156, 1, 'Maglia'),
(157, 1, 'Pantaloni'),
(158, 1, 'Blazer'),
(159, 9, 'Vinile'),
(160, 9, 'CD'),
(161, 9, 'Album'),
(162, 9, 'Techno'),
(163, 9, 'Rock'),
(164, 9, 'Indie'),
(165, 5, 'Pressione'),
(166, 5, 'Diabete'),
(167, 2, 'Tennis'),
(168, 2, 'UsOpen'),
(169, 1, 'Tacchi'),
(170, 1, 'Infradito'),
(171, 4, 'Pasticceria'),
(172, 7, 'Cupcake'),
(173, 8, 'Blockchain'),
(174, 10, 'Roleplay'),
(175, 8, 'Tecnologia'),
(176, 8, 'Android'),
(177, 8, 'Development'),
(178, 9, 'Band'),
(179, 10, 'Gaming'),
(180, 9, 'Concerti'),
(181, 4, 'Hotel'),
(182, 10, 'Gioca'),
(183, 2, 'Audi'),
(184, 3, 'Rocky'),
(185, 8, 'Instagram'),
(186, 1, 'Stile'),
(187, 8, 'Fotografici'),
(188, 8, 'Facebook'),
(189, 8, 'Computer'),
(190, 3, 'Telefilm'),
(191, 8, 'Web'),
(192, 3, 'Cinematografico'),
(193, 2, 'Bomber'),
(194, 5, 'Fotoepilazione'),
(195, 5, 'Curarsi'),
(196, 8, 'Blog'),
(197, 7, 'Pesce'),
(198, 7, 'Food'),
(199, 1, 'Moda'),
(200, 7, 'Caffeina'),
(201, 1, 'Lingerie'),
(202, 8, 'Webtalent'),
(203, 9, 'Vocale'),
(204, 9, 'Inedito'),
(205, 4, 'Holidays'),
(206, 4, 'Boat'),
(207, 7, 'Tavola'),
(208, 8, 'Videomaker'),
(209, 4, 'Luoghi'),
(210, 4, 'Luogo');



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
  `like_date` datetime NOT NULL,
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
  `_category` int(11) NOT NULL,
  `point` varchar(250) NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `valutation`
--

CREATE TABLE `valutation` (
  `id` int(11) NOT NULL,
  `_user` varchar(250) NOT NULL,
  `valutation` varchar(100) NOT NULL,
  `_category` varchar(100) NOT NULL
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT per la tabella `user_category`
--
ALTER TABLE `user_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
