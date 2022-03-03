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
(1, 'Ninghai', 0),
(2, 'Ban Na San', 0),
(3, 'Doloplazy', 0),
(4, 'Waenenda', 0),
(5, 'Bārah', 0),
(6, 'Jiuheyuan', 0),
(7, 'Léo', 0),
(8, 'Dulce Nombre de Culmí', 0),
(9, 'Fuyo', 0),
(10, 'Pajé', 0),
(11, 'Zielonka', 0),
(12, 'Estancia', 0),
(13, 'Vales', 0),
(14, 'Ruy Barbosa', 0),
(15, 'Ban Na', 0),
(16, 'Armash', 0),
(17, 'Lewokluok', 0),
(18, 'Garzón', 0),
(19, 'Lapinjärvi', 0),
(20, 'Liujiage', 0),
(21, 'Tegina', 0),
(22, 'Pryamitsyno', 0),
(23, 'Karangpawitan', 0),
(24, 'Thanh Khê', 0),
(25, 'Dagestanskiye Ogni', 0),
(26, 'Takefu', 0),
(27, 'Vranje', 0),
(28, 'Tim', 0),
(29, 'Monaghan', 0),
(30, 'Manggissari', 0),
(31, 'Morfovoúni', 0),
(32, 'Bahía Blanca', 0),
(33, 'Mahābād', 0),
(34, 'Shichuan', 0),
(35, 'Ploso', 0),
(36, 'Tozkhurmato', 0),
(37, 'Yelwa', 0),
(38, 'Puerta de Corral Quemado', 0),
(39, 'Yashan', 0),
(40, 'Barengkok Hilir', 0),
(41, 'Santa Monica', 0),
(42, 'Itaitinga', 0),
(43, 'Perelhal', 0),
(44, 'Novogurovskiy', 0),
(45, 'Emiliano Zapata', 0),
(46, 'Savalou', 0),
(47, 'Jerez', 0),
(48, 'Belén de Umbría', 0),
(49, 'Jianghu', 0),
(50, 'Lukou', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colores`
--

CREATE TABLE `colores` (
  `CODCOL` int(11) NOT NULL,
  `COLOR` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `colores`
--

INSERT INTO `colores` (`CODCOL`, `COLOR`) VALUES
(1, 'Green'),
(2, 'Yellow'),
(3, 'Aquamarine'),
(4, 'Crimson'),
(5, 'Maroon'),
(6, 'Indigo'),
(7, 'White'),
(8, 'Pink'),
(9, 'Blue'),
(10, 'Red'),
(11, 'Teal'),
(12, 'Violet'),
(13, 'Purple'),
(14, 'Puce'),
(15, 'Golden'),
(16, 'Goldenrod'),
(17, 'Grey'),
(18, 'Black'),
(19, 'Turquoise'),
(20, 'Lemon'),
(21, 'Orange'),
(22, 'Mauv'),
(23, 'Brown'),
(24, 'Lime'),
(25, 'Aqua'),
(26, 'Peach'),
(27, 'Mustard'),
(28, 'Coral'),
(29, 'Pea green'),
(30, 'Navy blue');

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
(15, 'Mali'),
(16, 'Mexico'),
(17, 'Philippines'),
(18, 'Pakistan'),
(19, 'Poland'),
(20, 'Portugal'),
(21, 'Serbia'),
(22, 'Russia'),
(23, 'Syria'),
(24, 'Thailand'),
(25, 'Ukraine'),
(26, 'Uruguay'),
(27, 'Zambia');

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
(20, 'Asteraceae', 'Prairie Blazing Star', ''),
(21, 'Primulaceae', 'Loomis\' Yellow Loosestrife', ''),
(22, 'Fabaceae', 'Silver Prairie Clover', ''),
(23, 'Rosaceae', 'Williams\' Hawthorn', ''),
(24, 'Polygonaceae', 'Parasol Buckwheat', ''),
(25, 'Orchidaceae', 'Clamshell Orchid', ''),
(26, 'Fabaceae', 'Antilles Bean', ''),
(27, 'Pteridaceae', 'Tufted Lacefern', ''),
(28, 'Chenopodiaceae', 'Beet', ''),
(29, 'Salviniaceae', 'Kariba-weed', ''),
(30, 'Pertusariaceae', 'Crabseye Lichen', ''),
(31, 'Cyperaceae', 'Harper\'s Sedge', ''),
(32, 'Liliaceae', 'Lily', ''),
(33, 'Fabaceae', 'Baybean', ''),
(34, 'Fabaceae', 'Dixie Ticktrefoil', ''),
(35, 'Poaceae', 'Early Wildrye', ''),
(36, 'Cyperaceae', 'Wright\'s Flatsedge', ''),
(37, 'Asteraceae', 'Pingue Rubberweed', ''),
(38, 'Poaceae', 'Bushy Bluestem', ''),
(39, 'Orchidaceae', 'Green Withe', ''),
(40, 'Scrophulariaceae', 'Hudson Bay Eyebright', ''),
(41, 'Asteraceae', 'Chondrilla', ''),
(42, 'Asteraceae', 'Oxtongue', ''),
(43, 'Fabaceae', 'Pterocarpus', ''),
(44, 'Betulaceae', 'Downy Birch', ''),
(45, 'Amaranthaceae', 'Slim Amaranth', ''),
(46, 'Amaranthaceae', 'Broadleaf Papala', ''),
(47, 'Euphorbiaceae', 'Bastard Hogberry', ''),
(48, 'Linaceae', 'Allen Springs Dwarf-flax', ''),
(49, 'Chenopodiaceae', 'Bractscale', ''),
(50, 'Liliaceae', 'Washington Lily', ''),
(51, 'Rhamnaceae', 'Chaparral Whitethorn', ''),
(52, 'Polypodiaceae', 'Graceful Fern', ''),
(53, 'Diapensiaceae', 'Oconee Bells', ''),
(54, 'Ophioparmaceae', 'Ophioparma Lichen', ''),
(55, 'Lythraceae', 'Island Waxweed', ''),
(56, 'Juncaceae', 'Falcate Rush', ''),
(57, 'Menispermaceae', 'Laurel-leaf Snailseed', ''),
(58, 'Lamiaceae', 'Pineland Skullcap', ''),
(59, 'Plumbaginaceae', 'Cape Leadwort', ''),
(60, 'Santalaceae', 'Buckleya', ''),
(61, 'Poaceae', 'Thimble Grass', ''),
(62, 'Amaranthaceae', 'Na Pali Rockwort', ''),
(63, 'Rosaceae', 'Asian Meadowsweet', ''),
(64, 'Polygonaceae', 'Hoover\'s Deserttrumpet', ''),
(65, 'Campanulaceae', 'Great Basin Calicoflower', ''),
(66, 'Arecaceae', 'Canary Island Date Palm', ''),
(67, 'Asteraceae', 'Threetooth Ragwort', ''),
(68, 'Dryopteridaceae', 'Drooping Tonguefern', ''),
(69, 'Cactaceae', 'Twistspine Pricklypear', ''),
(70, 'Poaceae', 'Limestone Grass', ''),
(71, 'Fabaceae', 'Spiked Hoarypea', ''),
(72, 'Myrtaceae', 'Applebox', ''),
(73, 'Liliaceae', 'Andrew\'s Clintonia', ''),
(74, 'Apiaceae', 'Large Bullwort', ''),
(75, 'Brassicaceae', 'Waterawlwort', ''),
(76, 'Bromeliaceae', 'Texas False Agave', ''),
(77, 'Scrophulariaceae', 'Boggs Lake Hedgehyssop', ''),
(78, 'Scrophulariaceae', 'Palmer\'s Monkeyflower', ''),
(79, 'Onagraceae', 'Spreading Groundsmoke', ''),
(80, 'Teloschistaceae', 'Orange Lichen', ''),
(81, 'Cyperaceae', 'Tissue Sedge', ''),
(82, 'Fabaceae', 'Cyprus-vetch', ''),
(83, 'Asteraceae', 'Showy Goldenrod', ''),
(84, 'Boraginaceae', 'Arctic Alpine Forget-me-not', ''),
(85, 'Asclepiadaceae', 'Greene\'s Milkweed', ''),
(86, 'Caprifoliaceae', 'Leatherleaf Arrowwood', ''),
(87, 'Lamiaceae', 'Clingman\'s Hedgenettle', ''),
(88, 'Onagraceae', 'Siskiyou Willowherb', ''),
(89, 'Lecanoraceae', 'Wisconsin Rim Lichen', ''),
(90, 'Cecropiaceae', 'Trumpet Tree', ''),
(91, 'Fabaceae', 'Scotch Broom', ''),
(200, 'probando', 'monica', 'lerele');

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
('Margret M\'cowis', '12345', '', '', '', 0, '699-14-1719', '', '', '', 0, 'mmcowis8@mapy.cz', '', 'U'),
('Rosanna Jostan', '12345', '', '', '', 0, '810-99-5063', '', '', '', 0, 'rjostan4@wunderground.com', '', 'U'),
('Tildi Harrald', '12345', '', '', '', 0, '771-05-1150', '', '', '', 0, 'tharrald5@craigslist.org', '', 'U'),
('user', '123456', 'probando1', 'gsdfgsfdg', 'Avenida', 3, '555-555-555', 'hlkhkl', 'granada', '...', 55555, 'email3@email.com', 'mango', 'U'),
('user1', '123', 'jkñk', 'kñkñ', 'Avenida', 1, '', 'kñkñ', 'hkhlkh', '...', 1, 'email@email.com', 'hkkhkh', 'U'),
('usuario', 'usuario', '', '', '', 0, '', '', '', '', 0, '', '', 'U'),
('usuario1', 'usuario1', '', '', '', 0, '', '', '', '', 0, 'email1@email.com', '', 'C'),
('usuario2', 'usuario2', '', '', '', 0, '', '', '', '', 0, 'email2@email.com', '', 'C'),
('usuario456456', '123456', 'lelele', 'gsdfgsfdg', 'Bulevard', 6, '', 'orernse', 'hkhklh', '...', 22222, 'email@email.com', 'hlkhlkjh', 'U');

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
-- Indices de la tabla `colores`
--
ALTER TABLE `colores`
  ADD PRIMARY KEY (`CODCOL`);

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
-- AUTO_INCREMENT de la tabla `colores`
--
ALTER TABLE `colores`
  MODIFY `CODCOL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

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

--
-- AUTO_INCREMENT de la tabla `planta`
--
ALTER TABLE `planta`
  MODIFY `plantaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
