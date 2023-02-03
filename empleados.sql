-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-01-2023 a las 08:35:05
-- Versión del servidor: 10.10.2-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `empleados`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `codigo` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nombres` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `dui` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `direccion` varchar(125) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `telefono` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `puesto` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `estado` int(1) NOT NULL,
  `tipo` int(1) NOT NULL,
  `contrasenia` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `disponible` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`codigo`, `nombres`, `dui`, `direccion`, `telefono`, `puesto`, `estado`, `tipo`, `contrasenia`, `disponible`) VALUES
('111', 'Alex Quicaliquin', '0250256178', 'Guaranda', '09821217', 'Matematicas', 1, 0, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 0),
('222', 'kengi', '0255555', 'Las lomas', '09874562', 'Dibujo', 1, 1, '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0),
('333', 'joel', '0255', 'Guanujo', '0984', 'Física', 1, 1, '43814346e21444aaf4f70841bf7ed5ae93f55a9d', 0),
('555', 'nina', '024777', 'Paltabamba', '0986666', 'Ingles', 1, 1, 'cfa1150f1787186742a9a884b73a43d8cf219f9b', 0),
('666', 'alex joel', '02888', 'julio moreno', '09744', 'Lenguaje', 1, 2, 'cd3f0c85b158c08a2b113464991810cf2cdfc387', 0),
('ADMIN', 'Super acceso', '12345678', 'xxx', '87654321', 'Master edition', 1, 1, 'd033e22ae348aeb5660fc2140aec35850c4da997', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
