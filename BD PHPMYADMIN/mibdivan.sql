-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 04-10-2021 a las 21:42:32
-- Versión del servidor: 8.0.18
-- Versión de PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mibdivan`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `CI_docente` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `nombreCompleto` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `departamento` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`CI_docente`, `nombreCompleto`, `fechaNacimiento`, `departamento`) VALUES
('152124225', 'Yaiza ', '1982-08-16', 2),
('226121833', 'Agueda ', '1990-06-07', 3),
('471934142', 'Nuria ', '1979-01-22', 2),
('649437458', 'Beatriz ', '1990-10-21', 1),
('788772352', 'Aaron ', '1975-03-17', 3),
('887651757', 'Pamela ', '1986-04-12', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `CI_materia` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `materia` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`CI_materia`, `materia`) VALUES
('17517', 'INF-100'),
('53878', 'MAT-100'),
('69755', 'EST-100');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nota`
--

CREATE TABLE `nota` (
  `CI_nota` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Sigla` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `nota1` int(3) NOT NULL,
  `nota2` int(3) NOT NULL,
  `nota3` int(3) NOT NULL,
  `notafinal` int(3) NOT NULL,
  `CI_docente` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `CI_persona` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `CI_materia` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `nota`
--

INSERT INTO `nota` (`CI_nota`, `Sigla`, `nota1`, `nota2`, `nota3`, `notafinal`, `CI_docente`, `CI_persona`, `CI_materia`) VALUES
('11482', 'EST-100', 5, 36, 1, 42, '788772352', '5392252', '69755'),
('12433', 'MAT-100', 20, 16, 30, 66, '649437458', '7272743', '53878'),
('12563', 'EST-100', 30, 16, 19, 65, '887651757', '2624737', '69755'),
('12571', 'INF-100', 17, 15, 36, 68, '226121833', '4648213', '17517'),
('15447', 'INF-100', 21, 13, 39, 73, '152124225', '4564712', '17517'),
('15721', 'EST-100', 5, 36, 1, 42, '788772352', '1262537', '69755'),
('15818', 'EST-100', 16, 16, 16, 38, '788772352', '4865613', '69755'),
('16137', 'EST-100', 16, 16, 16, 38, '788772352', '7371815', '69755'),
('18984', 'INF-100', 28, 13, 19, 60, '152124225', '1262537', '17517'),
('22333', 'INF-100', 17, 15, 36, 68, '226121833', '6111783', '17517'),
('22844', 'INF-100', 13, 20, 12, 45, '226121833', '4696348', '17517'),
('25543', 'MAT-100', 26, 9, 10, 45, '649437458', '2624737', '53878'),
('25632', 'EST-100', 30, 16, 19, 65, '887651757', '4648213', '69755'),
('25939', 'MAT-100', 10, 10, 19, 39, '471934142', '3586189', '53878'),
('26444', 'MAT-100', 20, 16, 30, 66, '649437458', '4696348', '53878'),
('26528', 'MAT-100', 22, 10, 10, 42, '471934142', '1262537', '53878'),
('31622', 'INF-100', 28, 13, 19, 60, '152124225', '4518612', '17517'),
('32726', 'MAT-100', 10, 10, 19, 39, '471934142', '7371815', '53878'),
('37698', 'MAT-100', 10, 10, 19, 39, '471934142', '4865613', '53878'),
('38693', 'EST-100', 20, 16, 19, 55, '887651757', '7272743', '69755'),
('41833', 'INF-100', 21, 13, 39, 73, '152124225', '1624349', '17517'),
('45366', 'EST-100', 5, 36, 1, 42, '788772352', '4518612', '69755'),
('46994', 'INF-100', 17, 15, 36, 68, '226121833', '2624737', '17517'),
('48128', 'EST-100', 16, 16, 16, 38, '788772352', '3586189', '69755'),
('51193', 'INF-100', 21, 13, 39, 73, '152124225', '5586948', '17517'),
('53546', 'MAT-100', 22, 10, 10, 42, '471934142', '5392252', '53878'),
('54739', 'INF-100', 16, 24, 17, 57, '152124225', '7371815', '17517'),
('55669', 'INF-100', 28, 13, 19, 60, '152124225', '5392252', '17517'),
('58983', 'MAT-100', 30, 5, 20, 55, '471934142', '1624349', '53878'),
('65285', 'MAT-100', 30, 5, 20, 55, '471934142', '5586948', '53878'),
('68935', 'INF-100', 16, 24, 17, 57, '152124225', '4865613', '17517'),
('71731', 'EST-100', 20, 16, 19, 55, '887651757', '4696348', '69755'),
('73621', 'MAT-100', 22, 10, 10, 42, '471934142', '4518612', '53878'),
('74376', 'EST-100', 20, 16, 19, 55, '887651757', '3151238', '69755'),
('76447', 'INF-100', 16, 24, 17, 57, '152124225', '3586189', '17517'),
('77378', 'INF-100', 13, 20, 12, 45, '226121833', '7272743', '17517'),
('79943', 'EST-100', 30, 16, 1, 47, '788772352', '1624349', '69755'),
('81157', 'EST-100', 30, 16, 19, 65, '887651757', '6111783', '69755'),
('84596', 'EST-100', 30, 16, 1, 47, '788772352', '5586948', '69755'),
('89936', 'MAT-100', 30, 5, 20, 55, '471934142', '4564712', '53878'),
('94985', 'MAT-100', 20, 16, 30, 66, '649437458', '3151238', '53878'),
('97237', 'INF-100', 13, 20, 12, 45, '226121833', '3151238', '17517'),
('98417', 'MAT-100', 26, 9, 10, 45, '649437458', '4648213', '53878'),
('99145', 'MAT-100', 26, 9, 10, 45, '649437458', '6111783', '53878'),
('99224', 'EST-100', 30, 16, 1, 47, '788772352', '4564712', '69755');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `CI_persona` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nombreCompleto` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `departamento` varchar(5) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`CI_persona`, `nombreCompleto`, `fechaNacimiento`, `departamento`) VALUES
('1262537', 'Nekane ', '1997-04-28', '2'),
('1624349', 'Zohra ', '2000-02-24', '2'),
('2624737', 'Aimar ', '2000-01-16', '3'),
('3151238', 'Petra ', '2000-06-19', '1'),
('3586189', 'Pelayo ', '1998-05-13', '1'),
('4518612', 'David ', '1996-07-01', '1'),
('4564712', 'Marina ', '2000-11-11', '1'),
('4648213', 'Emilia ', '1998-08-12', '2'),
('4696348', 'Neus ', '1999-09-09', '1'),
('4865613', 'Hicham ', '1999-02-26', '1'),
('5392252', 'Rocio ', '1996-02-14', '3'),
('5586948', 'Jordi ', '1998-05-09', '2'),
('6111783', 'Abraham ', '2000-12-20', '2'),
('7272743', 'Mayte ', '1998-04-21', '3'),
('7371815', 'Maria', '2000-12-31', '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `CI` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `Usuario` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `Password` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`CI`, `Usuario`, `Password`) VALUES
('11553399', 'Docente Informatica', '22'),
('36948177', 'Docente Estadistica', '33'),
('40087202', 'Docente Matematicas', '44'),
('66331122', 'Docente Estadistica', '55'),
('77883311', 'Docente Informatica', '66'),
('88445533', 'Docente Matematicas', '77');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`CI_docente`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`CI_materia`);

--
-- Indices de la tabla `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`CI_nota`),
  ADD KEY `FK_CI_profesor` (`CI_docente`),
  ADD KEY `FK_CI_materia` (`CI_materia`),
  ADD KEY `FK_CI_persona` (`CI_persona`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`CI_persona`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`CI`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `nota`
--
ALTER TABLE `nota`
  ADD CONSTRAINT `nota_ibfk_1` FOREIGN KEY (`CI_docente`) REFERENCES `docente` (`CI_docente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nota_ibfk_2` FOREIGN KEY (`CI_materia`) REFERENCES `materia` (`CI_materia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nota_ibfk_3` FOREIGN KEY (`CI_persona`) REFERENCES `persona` (`CI_persona`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
