-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 17, 2024 at 12:26 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sonkei-fc`
--

-- --------------------------------------------------------

--
-- Table structure for table `carrousel_images`
--

CREATE TABLE `carrousel_images` (
  `id` int(11) NOT NULL,
  `img_url` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carrousel_images`
--

INSERT INTO `carrousel_images` (`id`, `img_url`) VALUES
(1, 'https://firebasestorage.googleapis.com/v0/b/sonkei-fc-e0360.appspot.com/o/Adidas%20soccerball%20grass.webp?alt=media&token=5d0c9379-d3f3-4f82-bd86-fbd9947dcbba'),
(2, 'https://firebasestorage.googleapis.com/v0/b/sonkei-fc-e0360.appspot.com/o/Alliance%20FC%20Boys.webp?alt=media&token=b23561b8-3701-4be8-8dfc-56d59ef9a2a1'),
(3, 'https://firebasestorage.googleapis.com/v0/b/sonkei-fc-e0360.appspot.com/o/Football%20HD%20Picture.webp?alt=media&token=c0f473e1-5be2-4cca-afa8-0a2598a841b4'),
(4, 'https://firebasestorage.googleapis.com/v0/b/sonkei-fc-e0360.appspot.com/o/Soccer%20Boys%20Green%20Field.webp?alt=media&token=4b4a2a6b-b4f9-427d-8513-ecc7fb1a2831'),
(5, 'https://firebasestorage.googleapis.com/v0/b/sonkei-fc-e0360.appspot.com/o/Soccer%20Woman%20Green%20Field.webp?alt=media&token=6388c6d3-e590-43b6-893b-06b13c3a083b');

-- --------------------------------------------------------

--
-- Table structure for table `mvps`
--

CREATE TABLE `mvps` (
  `id` int(11) NOT NULL,
  `mvp_date` date NOT NULL,
  `category` int(11) NOT NULL,
  `award` varchar(40) NOT NULL,
  `player_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mvps`
--

INSERT INTO `mvps` (`id`, `mvp_date`, `category`, `award`, `player_id`) VALUES
(1, '2024-05-30', 1, 'Gift card', 22),
(2, '2024-03-30', 1, 'Gift card', 23),
(3, '2024-04-30', 1, 'Gift card', 26),
(4, '2024-06-30', 2, 'Botines Nike', 25),
(5, '2024-02-28', 1, 'Conjunto Addidas', 26);

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `img` varchar(300) NOT NULL,
  `position` varchar(20) NOT NULL,
  `rate` double(10,0) NOT NULL,
  `career` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `name`, `img`, `position`, `rate`, `career`) VALUES
(22, 'Alexis Sánchez', 'https://firebasestorage.googleapis.com/v0/b/sonkei-fc-e0360.appspot.com/o/jugadores%2Falexis.png?alt=media&token=24c99492-e560-4ac8-98ad-bd783dc2ed93', 'Delantero', 5, 'Futbolista profesional'),
(23, 'Arturo Vidal', 'https://firebasestorage.googleapis.com/v0/b/sonkei-fc-e0360.appspot.com/o/jugadores%2Farturo.jpg?alt=media&token=6bf57aa4-189b-487b-bde7-8f8fc428a45c', 'Mediocampista', 3, 'Corredor de propiedades'),
(24, 'Brayan Cortés', 'https://firebasestorage.googleapis.com/v0/b/sonkei-fc-e0360.appspot.com/o/jugadores%2Fbrayan.jpeg?alt=media&token=1ffb6b4a-e435-415c-b3ab-68353eaf9e97', 'Portero', 4, 'Ingeniero Informático'),
(25, 'Damian Pizarro', 'https://firebasestorage.googleapis.com/v0/b/sonkei-fc-e0360.appspot.com/o/jugadores%2Fdamian.jpeg?alt=media&token=84b033ca-5970-47c6-9ba1-352a95670001', 'Delantero', 4, 'Estudiante medicina'),
(26, 'Matias Fernández', 'https://firebasestorage.googleapis.com/v0/b/sonkei-fc-e0360.appspot.com/o/jugadores%2Ffernandez.png?alt=media&token=38087950-149b-4f09-93ff-5b60283c5f6e', 'Mediocampista', 5, 'Ingeniero en electrónica'),
(27, 'Gabriel Suazo', 'https://firebasestorage.googleapis.com/v0/b/sonkei-fc-e0360.appspot.com/o/jugadores%2Fgabriel.jpeg?alt=media&token=1660ca9b-d53f-433e-9a40-4f7b4c0b905e', 'Defensa', 4, 'Astro físico'),
(28, 'Vicente Pizarro', 'https://firebasestorage.googleapis.com/v0/b/sonkei-fc-e0360.appspot.com/o/jugadores%2Fvicente.jpeg?alt=media&token=033953db-f5bd-475c-b73b-f8075c6d88fe', 'Defensa', 4, 'Estudiante Ing. Comercial');

-- --------------------------------------------------------

--
-- Table structure for table `upcoming_trainings`
--

CREATE TABLE `upcoming_trainings` (
  `id` int(11) NOT NULL,
  `location` varchar(200) NOT NULL,
  `date` datetime NOT NULL,
  `category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `upcoming_trainings`
--

INSERT INTO `upcoming_trainings` (`id`, `location`, `date`, `category`) VALUES
(1, 'Estadio Nacional Julio Martínez Prádanos, Av. Grecia 2001, Ñuñoa, Santiago', '2024-06-12 19:00:00', 'Juveniles'),
(2, 'Estadio Nacional Julio Martínez Prádanos, Av. Grecia 2001, Ñuñoa, Santiago', '2024-06-15 19:00:00', 'Juveniles'),
(3, 'Estadio Nacional Julio Martínez Prádanos, Av. Grecia 2001, Ñuñoa, Santiago', '2024-06-19 19:00:00', 'Juveniles'),
(4, 'Estadio Nacional Julio Martínez Prádanos, Av. Grecia 2001, Ñuñoa, Santiago', '2024-06-22 19:00:00', 'Juveniles'),
(5, 'Estadio Monumental David Arellano, Av. Marathon 5300, Macul, Santiago', '2024-06-13 19:00:00', 'Cadetes'),
(6, 'Estadio Monumental David Arellano, Av. Marathon 5300, Macul, Santiago', '2024-06-16 19:00:00', 'Cadetes'),
(7, 'Estadio Monumental David Arellano, Av. Marathon 5300, Macul, Santiago', '2024-06-20 19:00:00', 'Cadetes'),
(8, 'Estadio Monumental David Arellano, Av. Marathon 5300, Macul, Santiago', '2024-06-23 19:00:00', 'Cadetes'),
(9, 'Estadio Nacional Julio Martínez Prádanos, Av. Grecia 2001, Ñuñoa, Santiago', '2024-06-12 19:00:00', 'Infantiles'),
(10, 'Estadio Nacional Julio Martínez Prádanos, Av. Grecia 2001, Ñuñoa, Santiago', '2024-06-15 19:00:00', 'Infantiles'),
(11, 'Estadio Nacional Julio Martínez Prádanos, Av. Grecia 2001, Ñuñoa, Santiago', '2024-06-19 19:00:00', 'Infantiles'),
(12, 'Estadio Nacional Julio Martínez Prádanos, Av. Grecia 2001, Ñuñoa, Santiago', '2024-06-22 19:00:00', 'Infantiles'),
(13, 'Estadio Monumental David Arellano, Av. Marathon 5300, Macul, Santiago', '2024-06-13 19:00:00', 'Profesionales'),
(14, 'Estadio Monumental David Arellano, Av. Marathon 5300, Macul, Santiago', '2024-06-16 19:00:00', 'Profesionales'),
(15, 'Estadio Monumental David Arellano, Av. Marathon 5300, Macul, Santiago', '2024-06-20 19:00:00', 'Profesionales'),
(16, 'Estadio Monumental David Arellano, Av. Marathon 5300, Macul, Santiago', '2024-06-23 19:00:00', 'Profesionales'),
(17, 'Estadio Nacional Julio Martínez Prádanos, Av. Grecia 2001, Ñuñoa, Santiago', '2024-06-12 19:00:00', 'Juveniles'),
(18, 'Estadio Nacional Julio Martínez Prádanos, Av. Grecia 2001, Ñuñoa, Santiago', '2024-06-15 19:00:00', 'Juveniles'),
(19, 'Estadio Nacional Julio Martínez Prádanos, Av. Grecia 2001, Ñuñoa, Santiago', '2024-06-19 19:00:00', 'Juveniles'),
(20, 'Estadio Nacional Julio Martínez Prádanos, Av. Grecia 2001, Ñuñoa, Santiago', '2024-06-22 19:00:00', 'Juveniles'),
(21, 'Estadio Nacional Julio Martínez Prádanos, Av. Grecia 2001, Ñuñoa, Santiago', '2024-06-26 19:00:00', 'Juveniles'),
(22, 'Estadio Nacional Julio Martínez Prádanos, Av. Grecia 2001, Ñuñoa, Santiago', '2024-06-29 19:00:00', 'Juveniles'),
(23, 'Estadio Nacional Julio Martínez Prádanos, Av. Grecia 2001, Ñuñoa, Santiago', '2024-07-03 19:00:00', 'Juveniles'),
(24, 'Estadio Nacional Julio Martínez Prádanos, Av. Grecia 2001, Ñuñoa, Santiago', '2024-07-06 19:00:00', 'Juveniles'),
(25, 'Estadio Nacional Julio Martínez Prádanos, Av. Grecia 2001, Ñuñoa, Santiago', '2024-07-10 19:00:00', 'Juveniles'),
(26, 'Estadio Nacional Julio Martínez Prádanos, Av. Grecia 2001, Ñuñoa, Santiago', '2024-07-13 19:00:00', 'Juveniles'),
(27, 'Estadio Nacional Julio Martínez Prádanos, Av. Grecia 2001, Ñuñoa, Santiago', '2024-07-17 19:00:00', 'Juveniles'),
(28, 'Estadio Nacional Julio Martínez Prádanos, Av. Grecia 2001, Ñuñoa, Santiago', '2024-07-20 19:00:00', 'Juveniles'),
(29, 'Estadio Nacional Julio Martínez Prádanos, Av. Grecia 2001, Ñuñoa, Santiago', '2024-07-24 19:00:00', 'Juveniles'),
(30, 'Estadio Nacional Julio Martínez Prádanos, Av. Grecia 2001, Ñuñoa, Santiago', '2024-07-27 19:00:00', 'Juveniles'),
(31, 'Estadio Nacional Julio Martínez Prádanos, Av. Grecia 2001, Ñuñoa, Santiago', '2024-07-31 19:00:00', 'Juveniles'),
(32, 'Estadio Monumental David Arellano, Av. Marathon 5300, Macul, Santiago', '2024-06-13 19:00:00', 'Cadetes'),
(33, 'Estadio Monumental David Arellano, Av. Marathon 5300, Macul, Santiago', '2024-06-16 19:00:00', 'Cadetes'),
(34, 'Estadio Monumental David Arellano, Av. Marathon 5300, Macul, Santiago', '2024-06-20 19:00:00', 'Cadetes'),
(35, 'Estadio Monumental David Arellano, Av. Marathon 5300, Macul, Santiago', '2024-06-23 19:00:00', 'Cadetes'),
(36, 'Estadio Monumental David Arellano, Av. Marathon 5300, Macul, Santiago', '2024-06-27 19:00:00', 'Cadetes'),
(37, 'Estadio Monumental David Arellano, Av. Marathon 5300, Macul, Santiago', '2024-06-30 19:00:00', 'Cadetes'),
(38, 'Estadio Monumental David Arellano, Av. Marathon 5300, Macul, Santiago', '2024-07-04 19:00:00', 'Cadetes'),
(39, 'Estadio Monumental David Arellano, Av. Marathon 5300, Macul, Santiago', '2024-07-07 19:00:00', 'Cadetes'),
(40, 'Estadio Monumental David Arellano, Av. Marathon 5300, Macul, Santiago', '2024-07-11 19:00:00', 'Cadetes'),
(41, 'Estadio Monumental David Arellano, Av. Marathon 5300, Macul, Santiago', '2024-07-14 19:00:00', 'Cadetes'),
(42, 'Estadio Monumental David Arellano, Av. Marathon 5300, Macul, Santiago', '2024-07-18 19:00:00', 'Cadetes'),
(43, 'Estadio Monumental David Arellano, Av. Marathon 5300, Macul, Santiago', '2024-07-21 19:00:00', 'Cadetes'),
(44, 'Estadio Monumental David Arellano, Av. Marathon 5300, Macul, Santiago', '2024-07-25 19:00:00', 'Cadetes'),
(45, 'Estadio Monumental David Arellano, Av. Marathon 5300, Macul, Santiago', '2024-07-28 19:00:00', 'Cadetes'),
(46, 'Estadio Nacional Julio Martínez Prádanos, Av. Grecia 2001, Ñuñoa, Santiago', '2024-06-12 19:00:00', 'Infantiles'),
(47, 'Estadio Nacional Julio Martínez Prádanos, Av. Grecia 2001, Ñuñoa, Santiago', '2024-06-15 19:00:00', 'Infantiles'),
(48, 'Estadio Nacional Julio Martínez Prádanos, Av. Grecia 2001, Ñuñoa, Santiago', '2024-06-19 19:00:00', 'Infantiles'),
(49, 'Estadio Nacional Julio Martínez Prádanos, Av. Grecia 2001, Ñuñoa, Santiago', '2024-06-22 19:00:00', 'Infantiles'),
(50, 'Estadio Nacional Julio Martínez Prádanos, Av. Grecia 2001, Ñuñoa, Santiago', '2024-06-26 19:00:00', 'Infantiles'),
(51, 'Estadio Nacional Julio Martínez Prádanos, Av. Grecia 2001, Ñuñoa, Santiago', '2024-06-29 19:00:00', 'Infantiles'),
(52, 'Estadio Nacional Julio Martínez Prádanos, Av. Grecia 2001, Ñuñoa, Santiago', '2024-07-03 19:00:00', 'Infantiles'),
(53, 'Estadio Nacional Julio Martínez Prádanos, Av. Grecia 2001, Ñuñoa, Santiago', '2024-07-06 19:00:00', 'Infantiles'),
(54, 'Estadio Nacional Julio Martínez Prádanos, Av. Grecia 2001, Ñuñoa, Santiago', '2024-07-10 19:00:00', 'Infantiles'),
(55, 'Estadio Nacional Julio Martínez Prádanos, Av. Grecia 2001, Ñuñoa, Santiago', '2024-07-13 19:00:00', 'Infantiles'),
(56, 'Estadio Nacional Julio Martínez Prádanos, Av. Grecia 2001, Ñuñoa, Santiago', '2024-07-17 19:00:00', 'Infantiles'),
(57, 'Estadio Nacional Julio Martínez Prádanos, Av. Grecia 2001, Ñuñoa, Santiago', '2024-07-20 19:00:00', 'Infantiles'),
(58, 'Estadio Nacional Julio Martínez Prádanos, Av. Grecia 2001, Ñuñoa, Santiago', '2024-07-24 19:00:00', 'Infantiles'),
(59, 'Estadio Nacional Julio Martínez Prádanos, Av. Grecia 2001, Ñuñoa, Santiago', '2024-07-27 19:00:00', 'Infantiles'),
(60, 'Estadio Nacional Julio Martínez Prádanos, Av. Grecia 2001, Ñuñoa, Santiago', '2024-07-31 19:00:00', 'Infantiles'),
(61, 'Estadio Monumental David Arellano, Av. Marathon 5300, Macul, Santiago', '2024-06-13 19:00:00', 'Profesionales'),
(62, 'Estadio Monumental David Arellano, Av. Marathon 5300, Macul, Santiago', '2024-06-16 19:00:00', 'Profesionales'),
(63, 'Estadio Monumental David Arellano, Av. Marathon 5300, Macul, Santiago', '2024-06-20 19:00:00', 'Profesionales'),
(64, 'Estadio Monumental David Arellano, Av. Marathon 5300, Macul, Santiago', '2024-06-23 19:00:00', 'Profesionales'),
(65, 'Estadio Monumental David Arellano, Av. Marathon 5300, Macul, Santiago', '2024-06-27 19:00:00', 'Profesionales'),
(66, 'Estadio Monumental David Arellano, Av. Marathon 5300, Macul, Santiago', '2024-06-30 19:00:00', 'Profesionales'),
(67, 'Estadio Monumental David Arellano, Av. Marathon 5300, Macul, Santiago', '2024-07-04 19:00:00', 'Profesionales'),
(68, 'Estadio Monumental David Arellano, Av. Marathon 5300, Macul, Santiago', '2024-07-07 19:00:00', 'Profesionales'),
(69, 'Estadio Monumental David Arellano, Av. Marathon 5300, Macul, Santiago', '2024-07-11 19:00:00', 'Profesionales'),
(70, 'Estadio Monumental David Arellano, Av. Marathon 5300, Macul, Santiago', '2024-07-14 19:00:00', 'Profesionales'),
(71, 'Estadio Monumental David Arellano, Av. Marathon 5300, Macul, Santiago', '2024-07-18 19:00:00', 'Profesionales'),
(72, 'Estadio Monumental David Arellano, Av. Marathon 5300, Macul, Santiago', '2024-07-21 19:00:00', 'Profesionales'),
(73, 'Estadio Monumental David Arellano, Av. Marathon 5300, Macul, Santiago', '2024-07-25 19:00:00', 'Profesionales'),
(74, 'Estadio Monumental David Arellano, Av. Marathon 5300, Macul, Santiago', '2024-07-28 19:00:00', 'Profesionales'),
(75, 'Estadio Monumental David Arellano, Av. Marathon 5300, Macul, Santiago', '2024-07-31 19:00:00', 'Profesionales');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carrousel_images`
--
ALTER TABLE `carrousel_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mvps`
--
ALTER TABLE `mvps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mvps_ibfk_1` (`player_id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upcoming_trainings`
--
ALTER TABLE `upcoming_trainings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carrousel_images`
--
ALTER TABLE `carrousel_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mvps`
--
ALTER TABLE `mvps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `upcoming_trainings`
--
ALTER TABLE `upcoming_trainings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mvps`
--
ALTER TABLE `mvps`
  ADD CONSTRAINT `mvps_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
