-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Vært: 127.0.0.1
-- Genereringstid: 03. 05 2019 kl. 13:23:15
-- Serverversion: 5.6.24
-- PHP-version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kulturhuset`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(8, 'Film'),
(9, 'Teaterstykke'),
(10, 'Foredrag');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `starts` datetime NOT NULL,
  `ends` datetime NOT NULL,
  `fk_category` int(11) NOT NULL,
  `fk_theatre_id` int(11) NOT NULL,
  `image` varchar(70) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `events`
--

INSERT INTO `events` (`id`, `name`, `description`, `price`, `starts`, `ends`, `fk_category`, `fk_theatre_id`, `image`, `published`) VALUES
(23, 'Arrangement nummer 1', 'Arrangement nummer 1, til alle der elsker arrangementer.', '100.00', '2019-03-21 15:00:00', '2019-03-21 16:00:00', 8, 1, '1553170749340_blogger_32.png', 1),
(24, 'Arrangement nummer 2', 'sdfgeagrsdfgdfgdfg', '1200.00', '2019-03-24 14:00:00', '2019-03-22 16:00:00', 8, 1, '1553171879646_deviantart_32.png', 1),
(25, 'Arrangement nummer 3', 'dwfwerfwefwef', '123.00', '2019-03-29 15:00:00', '2019-03-30 17:00:00', 9, 1, '1553171920926_bebo_32.png', 1),
(26, 'Filmen over alle film', 'Hep heeeeeyyy', '345.00', '2019-04-18 12:00:00', '2019-03-29 12:00:00', 10, 1, '1553241723278_deviantart_32.png', 1),
(27, 'Foredraget om frøer', 'Frøer er the shit! Lorem ipsum dolor sit, amet consectetur adipisicing elit. Impedit doloribus, libero deleniti esse aspernatur quam, at placeat id, non dolorum odio? Minus quidem eaque tempora debitis harum non numquam autem!\nLorem ipsum dolor sit, amet', '334.00', '2019-12-31 00:00:00', '2020-01-31 00:00:00', 10, 1, '1553241839616_evernote_32.png', 1),
(28, 'Filmen om køer', 'Køer.... laaaaaange køer', '567.00', '2019-03-26 18:00:00', '2019-03-28 12:00:00', 8, 1, '1553241898882_vimeo_32.png', 1),
(29, 'Javascript - hvor skal jeg starte', 'Javascript er godt!', '12.00', '2019-03-23 13:00:00', '2019-03-23 14:00:00', 10, 1, '1553241965935_friendfeed_32.png', 1),
(30, 'A star is born', 'Filmen ''A Star is Born – Encore'' er en længere version af publikumshittet om den stærke kærlighed mellem to musikere.\n\nPå vej hjem fra en koncert møder den alholiserede rockstjerne Jack tjeneren og natklubsangerinden Ally. I takt med at kærligheden blomstrer mellem de to, får Ally den selvtillid, hun altid har manglet for at blive en stjerne.\n\nDen nye udgave indeholder to helt nye scener samt længere varianter af eksisterende scener, herunder a cappella versionen af den Oscar-vindende sang ''Shallow''.\n\nHerudover vil filmen også indeholde sangen ''Is That Alright?'', der hidtil kun har været at finde på soundtracket.\n\n''A Star Is Born'' er den tredje genindspilning af klassikeren fra 1937, der havde Janet Gaynor i rollen som den aspirerende skuespillerinde, mens 70er-versionen havde Barbara Streisand og Kris Kristofferson i hovedrollerne.\n\nLady Gaga imponerer i hovedrollen over for Bradley Cooper, der ikke bare springer ud som sanger, men som også har instrueret og skrevet manuskriptet bag den allerede kæmpemæssige succesfilm. (copyright: kino.dk)', '330.00', '2019-11-30 00:00:00', '2020-01-31 00:00:00', 8, 1, '1553530127189_a-star-is-born-pla_5b2a25ea46e1e.jpg', 1);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `globals`
--

CREATE TABLE IF NOT EXISTS `globals` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `globals`
--

INSERT INTO `globals` (`id`, `name`, `description`) VALUES
(1, 'Kulturhuset', 'En oplevelse til alle - også de kræsne');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `images`
--

INSERT INTO `images` (`id`, `name`) VALUES
(11, '1552479181495_yahoo_32.png'),
(12, '1552479181500_yahoobuzz_32.png'),
(13, '1552479181507_youtube_32.png'),
(14, '1552479181513_yelp_32.png'),
(15, '1552479418795_apple_32.png'),
(16, '1552479418798_google_32.png'),
(17, '1552479418801_googletalk_32.png'),
(18, '1552479418803_komodomedia_azure_32.png'),
(19, '1552479418806_lastfm_32.png'),
(20, '1552479418811_linkedin_32.png'),
(21, '1552479418814_mixx_32.png');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `position` int(11) NOT NULL,
  `fk_category` varchar(75) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `menu`
--

INSERT INTO `menu` (`id`, `name`, `position`, `fk_category`) VALUES
(36, 'Login', 30, 'login'),
(37, 'Arrangementer', 20, 'arrangementer'),
(38, 'Nyheder', 10, '');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `fk_customer_id` int(11) DEFAULT NULL,
  `phone` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `created_at` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `orders`
--

INSERT INTO `orders` (`id`, `status`, `fk_customer_id`, `phone`, `email`, `created_at`) VALUES
(1, NULL, NULL, '12345678', 'shldk82@hotmail.com', NULL),
(2, NULL, NULL, '12345678', 'shldk82@hotmail.com', NULL),
(3, NULL, NULL, '12345678', 'shldk82@hotmail.com', NULL),
(4, NULL, NULL, '12345678', 'shldk82@hotmail.com', NULL),
(5, NULL, NULL, '12345678', 'shldk82@hotmail.com', NULL),
(6, NULL, NULL, '12345678', 'shldk82@hotmail.com', NULL),
(7, NULL, NULL, '12345678', '5072357@rts-365.dk', NULL);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `content` tinytext NOT NULL,
  `fk_category` int(11) NOT NULL,
  `fk_author` int(11) NOT NULL,
  `image` varchar(45) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `sanitized_url` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  `price` varchar(45) NOT NULL,
  `fk_category` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `roles`
--

INSERT INTO `roles` (`id`, `name`, `level`) VALUES
(1, 'Super admin', 100),
(2, 'Admin', 90),
(3, 'Moderator', 80),
(4, 'Author', 20),
(5, 'User', 10),
(6, 'Guest', 1);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `rows`
--

CREATE TABLE IF NOT EXISTS `rows` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `fk_theatre_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `rows`
--

INSERT INTO `rows` (`id`, `name`, `fk_theatre_id`) VALUES
(68, '1', 18),
(69, '2', 18),
(70, '3', 18),
(71, '4', 18),
(72, '5', 18),
(73, '6', 18);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `seats`
--

CREATE TABLE IF NOT EXISTS `seats` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `fk_row_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `seats`
--

INSERT INTO `seats` (`id`, `name`, `fk_row_id`) VALUES
(37, '1', 68),
(38, '2', 68),
(39, '3', 68),
(40, '4', 68),
(41, '5', 68),
(42, '6', 68),
(43, '7', 68),
(44, '8', 68),
(45, '9', 68),
(46, '10', 68),
(47, '1', 69),
(48, '2', 69),
(49, '3', 69),
(50, '4', 69),
(51, '5', 69),
(52, '6', 69),
(53, '7', 69),
(54, '8', 69),
(55, '9', 69),
(56, '10', 69),
(57, '1', 70),
(58, '2', 70),
(59, '3', 70),
(60, '4', 70),
(61, '5', 70),
(62, '6', 70),
(63, '7', 70),
(64, '8', 70),
(65, '9', 70),
(66, '10', 70),
(67, '11', 70),
(68, '12', 70),
(69, '1', 71),
(70, '2', 71),
(71, '3', 71),
(72, '4', 71),
(73, '5', 71),
(74, '6', 71),
(75, '7', 71),
(76, '8', 71),
(77, '9', 71),
(78, '10', 71),
(79, '11', 71),
(80, '12', 71),
(81, '1', 72),
(82, '2', 72),
(83, '3', 72),
(84, '4', 72),
(85, '5', 72),
(86, '6', 72),
(87, '7', 72),
(88, '8', 72),
(89, '9', 72),
(90, '10', 72),
(91, '11', 72),
(92, '12', 72),
(93, '13', 72),
(94, '14', 72),
(95, '15', 72),
(96, '1', 73),
(97, '2', 73),
(98, '3', 73),
(99, '4', 73),
(100, '5', 73),
(101, '6', 73),
(102, '7', 73),
(103, '8', 73),
(104, '9', 73),
(105, '10', 73),
(106, '11', 73),
(107, '12', 73),
(108, '13', 73),
(109, '14', 73);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `theatres`
--

CREATE TABLE IF NOT EXISTS `theatres` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `aisle` tinyint(4) NOT NULL,
  `description` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `theatres`
--

INSERT INTO `theatres` (`id`, `name`, `aisle`, `description`) VALUES
(18, 'Biografsal 1', 0, 'Den største sal i kulturhuset');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `tickets`
--

CREATE TABLE IF NOT EXISTS `tickets` (
  `id` int(11) NOT NULL,
  `fk_event_id` int(11) NOT NULL,
  `fk_seat_id` int(11) DEFAULT NULL,
  `fk_order` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `tickets`
--

INSERT INTO `tickets` (`id`, `fk_event_id`, `fk_seat_id`, `fk_order`) VALUES
(1, 28, NULL, 2),
(2, 28, NULL, 2),
(3, 28, NULL, 2),
(4, 28, NULL, 3),
(5, 28, NULL, 3),
(6, 28, NULL, 4),
(7, 28, NULL, 4),
(8, 28, NULL, 5),
(9, 28, NULL, 5),
(10, 28, NULL, 5),
(11, 28, NULL, 5),
(12, 28, NULL, 6),
(13, 28, NULL, 6),
(14, 30, NULL, 7),
(15, 30, NULL, 7),
(16, 30, NULL, 7);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `pass` varchar(75) NOT NULL,
  `fk_role` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `users`
--

INSERT INTO `users` (`id`, `user_name`, `pass`, `fk_role`) VALUES
(6, 'admin', '$2a$10$/eNM5k06Q8mZSNvxUhtz6.66YeArR6xuewvGJwzHbbV8CrrT3AXMm', 1),
(8, 'Steffen', '$2a$12$TPgSmFAz7Km7iLCyroMY7uJULWrgjyPG3FleyGdjT4VV2NwFSyTtC', 0);

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `globals`
--
ALTER TABLE `globals`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `rows`
--
ALTER TABLE `rows`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `theatres`
--
ALTER TABLE `theatres`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_name_UNIQUE` (`user_name`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- Tilføj AUTO_INCREMENT i tabel `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- Tilføj AUTO_INCREMENT i tabel `globals`
--
ALTER TABLE `globals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Tilføj AUTO_INCREMENT i tabel `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- Tilføj AUTO_INCREMENT i tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- Tilføj AUTO_INCREMENT i tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- Tilføj AUTO_INCREMENT i tabel `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tilføj AUTO_INCREMENT i tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tilføj AUTO_INCREMENT i tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Tilføj AUTO_INCREMENT i tabel `rows`
--
ALTER TABLE `rows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=74;
--
-- Tilføj AUTO_INCREMENT i tabel `seats`
--
ALTER TABLE `seats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=110;
--
-- Tilføj AUTO_INCREMENT i tabel `theatres`
--
ALTER TABLE `theatres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- Tilføj AUTO_INCREMENT i tabel `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- Tilføj AUTO_INCREMENT i tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
