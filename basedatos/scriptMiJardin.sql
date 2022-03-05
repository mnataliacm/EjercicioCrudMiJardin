-- MySQL Workbench Forward Engineering
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
-- -----------------------------------------------------
-- Schema miJardin
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `miJardin` DEFAULT CHARACTER SET utf8 ;
USE `miJardin` ;

-- -----------------------------------------------------
-- Table `mijardin`.`familia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mijardin`.`familia` (
  `codfam` INT(10) NOT NULL,
  `familia` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`codfam`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------
-- Volcado de datos para la tabla `familia`
-- -----------------------------------------------------
INSERT INTO `familia` (`codfam`, `familia`) VALUES
(1, 'Actinidiaceae'),
(2, 'Aquifoliaceae'),
(3, 'Buxaceae'),
(4, 'Geraniaceae'),
(5, 'Lauraceae'),
(6, 'Punicaceae'),
(7, 'Punicaceae'),
(8, 'Rosaceae'),
(9, 'Violaceae'),
(10, 'Zigophyllaceae');

-- -----------------------------------------------------
-- Table `mijardin`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mijardin`.`usuarios` (
  `codusu` INT(10) NOT NULL,
  `usuario` VARCHAR(50) NOT NULL,
  `password` VARCHAR(10) NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`codusu`),
  INDEX `usuario` (`usuario` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------
-- Volcado de datos para la tabla `usuarios`
-- -----------------------------------------------------
INSERT INTO `usuarios` (`codusu`, `usuario`, `password`, `email`) VALUES
(1, 'Admin', 'Admin', ''),
(2, 'Colaborador', '123456', ''),
(3, 'natalia', 'natalia', 'natalia@email.com'),
(4, 'rafa', 'rafa', 'rafa@email.com'),
(5, 'maria', 'maria', 'maria@email.com'),
(6, 'usuario', 'usuario', '');

-- -----------------------------------------------------
-- Table `mijardin`.`planta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mijardin`.`planta` (
  `codpla` INT(10) NOT NULL,
  `nombre` VARCHAR(50) NOT NULL,
  `cientifico` VARCHAR(50) NOT NULL,
  `info` text NULL,
  `familia` INT(11) NOT NULL,
  PRIMARY KEY (`codpla`),
  INDEX `fk_planta_familia1_idx` (`familia` ASC),
  CONSTRAINT `fk_planta_familia1`
    FOREIGN KEY (`familia`)
    REFERENCES `mijardin`.`familia` (`codfam`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------
-- Volcado de datos para la tabla `planta`
-- -----------------------------------------------------
INSERT INTO `planta` (`codpla`, `nombre`, `cientifico`, `info`, `familia`) VALUES
(1, 'Kiwi', 'Actinidia chinensis', 'jñalkfjñlajrfoiejfkasdkjfñqaowiejfldsjfñawoejfldksj', 1),
(2, 'Acebo', 'Ilex aquifolium', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Pellentesque diam volutpat commodo sed egestas egestas. ', 2),
(3, 'Boj', 'Buxus sempervirens', 'jkhkjhkjhgkjhl', 3),
(4, 'Geranio', 'Geranium pyrenaicum', 'Lorem ipsum dolor sit amet, Pellentesque diam volutpat commodo sed egestas egestas.Turpis egestas maecenas pharetra convallis. ', 4),
(5, 'Laurel', 'Laurus nobilis', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque diam volutpat commodo sed egestas egestas. Turpis egestas maecenas pharetra convallis. ', 5),
(6, 'Pasión', 'Passiflora caerulea', 'Netus et malesuada fames ac turpis egestas maecenas. Nisl condimentum id venenatis a condimentum vitae sapien. Turpis egestas maecenas pharetra convallis. ', 6),
(7, 'Granado', 'Púnica granatum', 'Lorem ipsum dolor sit amet, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Netus et malesuada fames ac turpis egestas maecenas. Nisl condimentum id venenatis a condimentum vitae sapien. ', 7),
(8, 'Fresa', 'Fragaria', 'Lorem ipsum dolor sit amet. Netus et malesuada fames ac turpis egestas maecenas. Nisl condimentum id venenatis a condimentum vitae sapien. ', 8),
(9, 'Almendro', 'Prunus', 'Pellentesque diam volutpat commodo sed egestas egestas. Netus et malesuada fames ac turpis egestas maecenas. Turpis egestas maecenas pharetra convallis. ', 8),
(10, 'Pensamiento', 'Viola tricolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ', 9);


-- -----------------------------------------------------
-- Table `mijardin`.`jardin`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `miJardin`.`jardin` (
 `codusu` INT(10) NOT NULL,
  `codpla` INT(10) NOT NULL,
  PRIMARY KEY (`codusu`, `codpla`),
  INDEX `fk_usuarios_has_planta_planta1_idx` (`codpla` ASC),
  INDEX `fk_usuarios_has_planta_usuarios1_idx` (`codusu` ASC),
  CONSTRAINT `fk_usuarios_has_planta_usuarios1`
    FOREIGN KEY (`codusu`)
    REFERENCES `mijardin`.`usuarios` (`codusu`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarios_has_planta_planta1`
    FOREIGN KEY (`codpla`)
    REFERENCES `mijardin`.`planta` (`codpla`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


--
-- Volcado de datos para la tabla `jardin`
--

INSERT INTO `jardin` (`codusu`, `codpla`) VALUES
(3, 3),
(3, 9),
(4, 6),
(5, 8);

COMMIT;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;