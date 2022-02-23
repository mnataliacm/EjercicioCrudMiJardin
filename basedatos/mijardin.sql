-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-02-2022 a las 23:29:53
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mijardin`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `CODCIU` int(11) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `CODPAI` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`CODCIU`, `NOMBRE`, `CODPAI`) VALUES
(1, 'Ninghai', 1),
(2, 'Ban Na San', 2),
(3, 'Doloplazy', 3),
(4, 'Waenenda', 4),
(5, 'Bārah', 5),
(6, 'Jiuheyuan', 6),
(7, 'Léo', 7),
(8, 'Dulce Nombre de Culmí', 8),
(9, 'Fuyo', 9),
(10, 'Pajé', 10),
(11, 'Zielonka', 11),
(12, 'Estancia', 12),
(13, 'Vales', 13),
(14, 'Ruy Barbosa', 14),
(15, 'Ban Na', 15);


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jardin`
--

CREATE TABLE `jardin` (
  `codjar` int(10) NOT NULL,
  `jardin` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `CODPAI` int(5) NOT NULL,
  `PAIS` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`CODPAI`, `PAIS`) VALUES
(1, 'Philippines'),
(2, 'Afghanistan'),
(3, 'Albania'),
(4, 'Brazil'),
(5, 'Ivory Coast'),
(6, 'China'),
(7, 'Colombia'),
(8, 'Espa?a'),
(9, 'France'),
(10, 'Greece'),
(11, 'Indonesia'),
(12, 'Iraq'),
(13, 'Iran'),
(14, 'Japan'),
(15, 'Mali');


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planta`
--

CREATE TABLE `planta` (
  `plantaID` int(11) NOT NULL,
  `familia` varchar(50) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `cientifico` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `planta`
--

INSERT INTO `planta` (`plantaID`, `familia`, `nombre`, `cientifico`) VALUES
(1, 'Polygonaceae', 'Fowler\'s Knotweed', ''),
(2, 'Poaceae', 'Annual Semaphoregrass', ''),
(3, 'Rosaceae', 'Largeleaf Avens', ''),
(4, 'Myrtaceae', 'Mountain-ash', ''),
(5, 'Poaceae', 'Venezuelan Panicgrass', ''),
(6, 'Iridaceae', 'Spotted African Cornlily', ''),
(7, 'Rosaceae', 'Creeping Sibbaldia', ''),
(8, 'Scrophulariaceae', 'Gairdner\'s Beardtongue', ''),
(9, 'Scrophulariaceae', 'Roundfruit Hedgehyssop', ''),
(10, 'Dipsacaceae', 'Caucasian Pincushion Flower', ''),
(11, 'Fabaceae', 'Cisco Milkvetch', ''),
(12, 'Asteraceae', 'Winged Cudweed', ''),
(13, 'Bignoniaceae', 'Roble Cimarron', ''),
(14, 'Myrtaceae', 'Eucalyptus', ''),
(15, 'Saxifragaceae', 'Twoleaf Miterwort', ''),
(16, 'Santalaceae', 'False Toadflax', ''),
(17, 'Apiaceae', 'Featherleaf Springparsley', ''),
(18, 'Brassicaceae', 'Muncy Rockcress', ''),
(19, 'Fabaceae', 'King\'s Clover', ''),
(20, 'Asteraceae', 'Prairie Blazing Star', '');


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuarios` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `via` set('Avenida','Bulevard','Calle','Carretera','Pasaje','Paseo') DEFAULT NULL,
  `numero` int(5) DEFAULT NULL,
  `movil` varchar(11) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `ciudad` varchar(50) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `cp` int(5) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `jardin` varchar(50) NOT NULL,
  `rango` char(1) NOT NULL DEFAULT 'U'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuarios`, `password`, `nombre`, `apellidos`, `via`, `numero`, `movil`, `direccion`, `ciudad`, `pais`, `cp`, `email`, `jardin`, `rango`) VALUES
('Admin', 'Admin', '', '', '', 0, '', '', '', '', 0, '', '', 'A'),
('Andriette Bostick', '12345', '', '', '', 0, '862-46-1017', '', '', '', 0, 'abostick6@hud.gov', '', 'U'),
('Barth Dudny', '12345', '', '', '', 0, '397-66-0607', '', '', '', 0, 'bdudny7@github.io', '', 'U'),
('Denver MacGillavery', '12345', '', '', '', 0, '503-56-3864', '', '', '', 0, 'dmacgillavery2@microsoft.com', '', 'U'),
('Duncan Hizir', '12345', '', '', '', 0, '599-16-7336', '', '', '', 0, 'dhizir3@oracle.com', '', 'U'),
('Kinnie Fanstone', '12345', '', '', '', 0, '375-60-3641', '', '', '', 0, 'kfanstone9@comcast.net', '', 'U'),
('usuario', 'usuario', '', '', '', 0, '', '', '', '', 0, '', '', 'C'),
('usuario1', 'usuario1', '', '', '', 0, '', '', '', '', 0, 'email1@email.com', '', 'U');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`CODCIU`),
  ADD KEY `CODPAI` (`CODPAI`);

--
-- Indices de la tabla `jardin`
--
ALTER TABLE `jardin`
  ADD PRIMARY KEY (`codjar`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`CODPAI`);

--
-- Indices de la tabla `planta`
--
ALTER TABLE `planta`
  ADD PRIMARY KEY (`plantaID`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuarios`),
  ADD KEY `ciudad` (`ciudad`),
  ADD KEY `pais` (`pais`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `CODCIU` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;


--
-- AUTO_INCREMENT de la tabla `jardin`
--
ALTER TABLE `jardin`
  MODIFY `codjar` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `CODPAI` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
