-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 08-11-2024 a las 21:41:24
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tp_asistencias_v4`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `id` int NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `apellido` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `dni` varchar(20) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`id`, `nombre`, `apellido`, `dni`) VALUES
(1, 'Brian', 'Ramos', '47345678'),
(2, 'Sofia', 'Villa', '52345678'),
(3, 'Valentino', 'Andrade', '35123456'),
(4, 'Lucas', 'Cedres', '34876543'),
(5, 'Facundo', 'Figun', '40123789'),
(6, 'Luca', 'Giordano', '32456789'),
(7, 'Bruno', 'Godoy', '36789123'),
(8, 'Agustin', 'Gomez', '33567890'),
(9, 'Brian', 'Gonzalez', '35678901'),
(10, 'Federico', 'Guigou Scottini', '37890123'),
(11, 'Luna', 'Marrano', '38901234'),
(12, 'Giuliana', 'Mercado Aviles', '33345678'),
(13, 'Lucila', 'Mercado Ruiz', '32567890'),
(14, 'Angel', 'Murillo', '34890123'),
(15, 'Juan', 'Nissero', '36123456'),
(16, 'Fausto', 'Parada', '35234567'),
(17, 'Ignacio', 'Piter', '32789012'),
(18, 'Tomas', 'Planchon', '40456789'),
(19, 'Elisa', 'Ronconi', '31678123'),
(20, 'Exequiel', 'Sanchez', '33234567'),
(21, 'Melina', 'Schimpf Baldo', '33789456'),
(22, 'Diego', 'Segovia', '34567890'),
(23, 'Camila', 'Sittner', '36456789'),
(24, 'Yamil', 'Villa', '35345678');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia`
--

CREATE TABLE `asistencia` (
  `id` int NOT NULL,
  `alumno_id` int DEFAULT NULL,
  `materia_id` int DEFAULT NULL,
  `fecha` date NOT NULL,
  `estado` enum('presente','ausente') COLLATE utf8mb4_spanish2_ci NOT NULL,
  `profesor_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `asistencia`
--

INSERT INTO `asistencia` (`id`, `alumno_id`, `materia_id`, `fecha`, `estado`, `profesor_id`) VALUES
(1, 2, 2, '2024-11-07', '', 1),
(2, 1, 1, '2024-11-07', '', NULL),
(3, 2, 1, '2024-11-07', 'presente', NULL),
(4, 1, 2, '2024-11-07', 'presente', NULL),
(22, 1, 2, '2024-11-05', '', NULL),
(23, 2, 2, '2024-11-05', '', NULL),
(24, 1, 1, '2024-11-08', 'presente', NULL),
(25, 2, 1, '2024-11-08', 'presente', NULL),
(26, 1, 1, '2024-11-01', 'presente', NULL),
(27, 2, 1, '2024-11-01', '', NULL),
(28, 3, 1, '2024-11-01', '', NULL),
(29, 4, 1, '2024-11-01', '', NULL),
(30, 5, 1, '2024-11-01', '', NULL),
(31, 6, 1, '2024-11-01', '', NULL),
(32, 7, 1, '2024-11-01', '', NULL),
(33, 8, 1, '2024-11-01', '', NULL),
(34, 9, 1, '2024-11-01', 'presente', NULL),
(35, 10, 1, '2024-11-01', 'presente', NULL),
(36, 11, 1, '2024-11-01', 'presente', NULL),
(37, 12, 1, '2024-11-01', 'presente', NULL),
(38, 13, 1, '2024-11-01', '', NULL),
(39, 14, 1, '2024-11-01', '', NULL),
(40, 15, 1, '2024-11-01', '', NULL),
(41, 16, 1, '2024-11-01', '', NULL),
(42, 17, 1, '2024-11-01', '', NULL),
(43, 18, 1, '2024-11-01', 'presente', NULL),
(44, 19, 1, '2024-11-01', '', NULL),
(45, 20, 1, '2024-11-01', '', NULL),
(46, 21, 1, '2024-11-01', '', NULL),
(47, 22, 1, '2024-11-01', '', NULL),
(48, 23, 1, '2024-11-01', 'presente', NULL),
(49, 24, 1, '2024-11-01', 'presente', NULL),
(50, 1, 1, '2024-11-04', 'presente', NULL),
(51, 2, 1, '2024-11-04', '', NULL),
(52, 3, 1, '2024-11-04', '', NULL),
(53, 4, 1, '2024-11-04', 'presente', NULL),
(54, 5, 1, '2024-11-04', '', NULL),
(55, 6, 1, '2024-11-04', 'presente', NULL),
(56, 7, 1, '2024-11-04', '', NULL),
(57, 8, 1, '2024-11-04', 'presente', NULL),
(58, 9, 1, '2024-11-04', 'presente', NULL),
(59, 10, 1, '2024-11-04', '', NULL),
(60, 11, 1, '2024-11-04', '', NULL),
(61, 12, 1, '2024-11-04', '', NULL),
(62, 13, 1, '2024-11-04', '', NULL),
(63, 14, 1, '2024-11-04', '', NULL),
(64, 15, 1, '2024-11-04', 'presente', NULL),
(65, 16, 1, '2024-11-04', '', NULL),
(66, 17, 1, '2024-11-04', 'presente', NULL),
(67, 18, 1, '2024-11-04', 'presente', NULL),
(68, 19, 1, '2024-11-04', '', NULL),
(69, 20, 1, '2024-11-04', '', NULL),
(70, 21, 1, '2024-11-04', '', NULL),
(71, 22, 1, '2024-11-04', '', NULL),
(72, 23, 1, '2024-11-04', 'presente', NULL),
(73, 24, 1, '2024-11-04', 'presente', NULL),
(74, 1, 1, '2024-05-04', 'presente', NULL),
(75, 2, 1, '2024-05-04', '', NULL),
(76, 3, 1, '2024-05-04', '', NULL),
(77, 4, 1, '2024-05-04', '', NULL),
(78, 5, 1, '2024-05-04', '', NULL),
(79, 6, 1, '2024-05-04', '', NULL),
(80, 7, 1, '2024-05-04', '', NULL),
(81, 8, 1, '2024-05-04', 'presente', NULL),
(82, 9, 1, '2024-05-04', '', NULL),
(83, 10, 1, '2024-05-04', 'presente', NULL),
(84, 11, 1, '2024-05-04', '', NULL),
(85, 12, 1, '2024-05-04', '', NULL),
(86, 13, 1, '2024-05-04', 'presente', NULL),
(87, 14, 1, '2024-05-04', '', NULL),
(88, 15, 1, '2024-05-04', '', NULL),
(89, 16, 1, '2024-05-04', '', NULL),
(90, 17, 1, '2024-05-04', 'presente', NULL),
(91, 18, 1, '2024-05-04', 'presente', NULL),
(92, 19, 1, '2024-05-04', '', NULL),
(93, 20, 1, '2024-05-04', '', NULL),
(94, 21, 1, '2024-05-04', '', NULL),
(95, 22, 1, '2024-05-04', '', NULL),
(96, 23, 1, '2024-05-04', 'presente', NULL),
(97, 24, 1, '2024-05-04', 'presente', NULL),
(98, 1, 1, '2024-08-12', 'presente', NULL),
(99, 2, 1, '2024-08-12', '', NULL),
(100, 3, 1, '2024-08-12', '', NULL),
(101, 4, 1, '2024-08-12', '', NULL),
(102, 5, 1, '2024-08-12', '', NULL),
(103, 6, 1, '2024-08-12', '', NULL),
(104, 7, 1, '2024-08-12', 'presente', NULL),
(105, 8, 1, '2024-08-12', '', NULL),
(106, 9, 1, '2024-08-12', 'presente', NULL),
(107, 10, 1, '2024-08-12', 'presente', NULL),
(108, 11, 1, '2024-08-12', 'presente', NULL),
(109, 12, 1, '2024-08-12', '', NULL),
(110, 13, 1, '2024-08-12', 'presente', NULL),
(111, 14, 1, '2024-08-12', 'presente', NULL),
(112, 15, 1, '2024-08-12', '', NULL),
(113, 16, 1, '2024-08-12', '', NULL),
(114, 17, 1, '2024-08-12', 'presente', NULL),
(115, 18, 1, '2024-08-12', '', NULL),
(116, 19, 1, '2024-08-12', '', NULL),
(117, 20, 1, '2024-08-12', 'presente', NULL),
(118, 21, 1, '2024-08-12', '', NULL),
(119, 22, 1, '2024-08-12', '', NULL),
(120, 23, 1, '2024-08-12', 'presente', NULL),
(121, 24, 1, '2024-08-12', 'presente', NULL),
(122, 3, 2, '2024-11-07', 'presente', NULL),
(123, 4, 2, '2024-11-07', '', NULL),
(124, 5, 2, '2024-11-07', '', NULL),
(125, 6, 2, '2024-11-07', '', NULL),
(126, 7, 2, '2024-11-07', '', NULL),
(127, 8, 2, '2024-11-07', '', NULL),
(128, 9, 2, '2024-11-07', '', NULL),
(129, 10, 2, '2024-11-07', '', NULL),
(130, 11, 2, '2024-11-07', '', NULL),
(131, 12, 2, '2024-11-07', '', NULL),
(132, 13, 2, '2024-11-07', '', NULL),
(133, 14, 2, '2024-11-07', '', NULL),
(134, 15, 2, '2024-11-07', '', NULL),
(135, 16, 2, '2024-11-07', '', NULL),
(136, 17, 2, '2024-11-07', '', NULL),
(137, 18, 2, '2024-11-07', '', NULL),
(138, 19, 2, '2024-11-07', '', NULL),
(139, 20, 2, '2024-11-07', '', NULL),
(140, 21, 2, '2024-11-07', '', NULL),
(141, 22, 2, '2024-11-07', '', NULL),
(142, 23, 2, '2024-11-07', '', NULL),
(143, 24, 2, '2024-11-07', '', NULL),
(144, 1, 2, '2024-01-31', 'presente', NULL),
(145, 2, 2, '2024-01-31', '', NULL),
(146, 3, 2, '2024-01-31', '', NULL),
(147, 4, 2, '2024-01-31', 'presente', NULL),
(148, 5, 2, '2024-01-31', 'presente', NULL),
(149, 6, 2, '2024-01-31', '', NULL),
(150, 7, 2, '2024-01-31', '', NULL),
(151, 8, 2, '2024-01-31', 'presente', NULL),
(152, 9, 2, '2024-01-31', 'presente', NULL),
(153, 10, 2, '2024-01-31', '', NULL),
(154, 11, 2, '2024-01-31', '', NULL),
(155, 12, 2, '2024-01-31', '', NULL),
(156, 13, 2, '2024-01-31', '', NULL),
(157, 14, 2, '2024-01-31', '', NULL),
(158, 15, 2, '2024-01-31', '', NULL),
(159, 16, 2, '2024-01-31', 'presente', NULL),
(160, 17, 2, '2024-01-31', 'presente', NULL),
(161, 18, 2, '2024-01-31', 'presente', NULL),
(162, 19, 2, '2024-01-31', '', NULL),
(163, 20, 2, '2024-01-31', '', NULL),
(164, 21, 2, '2024-01-31', '', NULL),
(165, 22, 2, '2024-01-31', '', NULL),
(166, 23, 2, '2024-01-31', '', NULL),
(167, 24, 2, '2024-01-31', '', NULL),
(168, 3, 1, '2024-11-08', '', NULL),
(169, 4, 1, '2024-11-08', '', NULL),
(170, 5, 1, '2024-11-08', '', NULL),
(171, 6, 1, '2024-11-08', '', NULL),
(172, 7, 1, '2024-11-08', '', NULL),
(173, 8, 1, '2024-11-08', '', NULL),
(174, 9, 1, '2024-11-08', '', NULL),
(175, 10, 1, '2024-11-08', '', NULL),
(176, 11, 1, '2024-11-08', '', NULL),
(177, 12, 1, '2024-11-08', '', NULL),
(178, 13, 1, '2024-11-08', '', NULL),
(179, 14, 1, '2024-11-08', '', NULL),
(180, 15, 1, '2024-11-08', '', NULL),
(181, 16, 1, '2024-11-08', '', NULL),
(182, 17, 1, '2024-11-08', '', NULL),
(183, 18, 1, '2024-11-08', 'presente', NULL),
(184, 19, 1, '2024-11-08', 'presente', NULL),
(185, 20, 1, '2024-11-08', 'presente', NULL),
(186, 21, 1, '2024-11-08', '', NULL),
(187, 22, 1, '2024-11-08', '', NULL),
(188, 23, 1, '2024-11-08', '', NULL),
(189, 24, 1, '2024-11-08', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `id` int NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id`, `nombre`) VALUES
(1, 'programacion'),
(2, 'lengua');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `id` int NOT NULL,
  `alumno_id` int NOT NULL,
  `materia_id` int NOT NULL,
  `nota1` int NOT NULL,
  `nota2` int NOT NULL,
  `nota3` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `notas`
--

INSERT INTO `notas` (`id`, `alumno_id`, `materia_id`, `nota1`, `nota2`, `nota3`) VALUES
(3, 1, 1, 6, 6, 6),
(4, 24, 1, 6, 6, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `id` int NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `apellido` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `dni` varchar(20) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`id`, `nombre`, `apellido`, `dni`, `email`, `telefono`, `password`) VALUES
(1, 'Yamil', 'Villa', '42487107', 'yamil.gchu@gmail.com', '3446372465', '12345');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor_materia`
--

CREATE TABLE `profesor_materia` (
  `profesor_id` int NOT NULL,
  `materia_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dni` (`dni`);

--
-- Indices de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumno_id` (`alumno_id`),
  ADD KEY `materia_id` (`materia_id`),
  ADD KEY `profesor_id` (`profesor_id`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumno_id` (`alumno_id`),
  ADD KEY `materia_id` (`materia_id`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dni` (`dni`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `profesor_materia`
--
ALTER TABLE `profesor_materia`
  ADD PRIMARY KEY (`profesor_id`,`materia_id`),
  ADD KEY `materia_id` (`materia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `profesor`
--
ALTER TABLE `profesor`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD CONSTRAINT `asistencia_ibfk_1` FOREIGN KEY (`alumno_id`) REFERENCES `alumno` (`id`),
  ADD CONSTRAINT `asistencia_ibfk_2` FOREIGN KEY (`materia_id`) REFERENCES `materia` (`id`),
  ADD CONSTRAINT `asistencia_ibfk_3` FOREIGN KEY (`profesor_id`) REFERENCES `profesor` (`id`);

--
-- Filtros para la tabla `notas`
--
ALTER TABLE `notas`
  ADD CONSTRAINT `notas_ibfk_1` FOREIGN KEY (`alumno_id`) REFERENCES `alumno` (`id`),
  ADD CONSTRAINT `notas_ibfk_2` FOREIGN KEY (`materia_id`) REFERENCES `materia` (`id`);

--
-- Filtros para la tabla `profesor_materia`
--
ALTER TABLE `profesor_materia`
  ADD CONSTRAINT `profesor_materia_ibfk_1` FOREIGN KEY (`profesor_id`) REFERENCES `profesor` (`id`),
  ADD CONSTRAINT `profesor_materia_ibfk_2` FOREIGN KEY (`materia_id`) REFERENCES `materia` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
