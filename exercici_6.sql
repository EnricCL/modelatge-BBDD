-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Temps de generació: 27-02-2020 a les 17:59:29
-- Versió del servidor: 10.4.11-MariaDB
-- Versió de PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de dades: `exercici_6`
--

-- --------------------------------------------------------

--
-- Estructura de la taula `clients`
--

CREATE TABLE `clients` (
  `id_client` int(10) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `adreca_postal` varchar(200) NOT NULL,
  `telefon` int(13) NOT NULL,
  `correu_electronic` varchar(30) NOT NULL,
  `data_registre` date NOT NULL,
  `recomenat_per` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Bolcament de dades per a la taula `clients`
--

INSERT INTO `clients` (`id_client`, `nom`, `adreca_postal`, `telefon`, `correu_electronic`, `data_registre`, `recomenat_per`) VALUES
(1, 'Albert', 'Passeig de Gràcia, 245, 08008 Barcelona ', 931234455, 'correudeprova1@correudeprova.c', '2020-02-23', NULL),
(2, 'Josep', 'Paseo de San Juan, 111 08037 Barcelona ', 934567788, 'prova2@prova2.com', '2020-02-24', 'Òptica de la competè'),
(3, 'Laura', 'Carrer del Doctor Pi i Molist, 14 , 08016 Barcelona ', 937891122, 'prova3@prova3.com', '2020-02-25', 'Josep'),
(4, 'Maria', 'Carrer de Muntaner, 555 , 08022 Barcelona ', 931456325, 'prova4@prova4.com', '2020-02-26', NULL),
(5, 'Paco', 'Calle Industria, 25 , 08037 Barcelona ', 939993322, 'prova5@prova5.com', '2020-02-27', NULL);

-- --------------------------------------------------------

--
-- Estructura de la taula `empleats`
--

CREATE TABLE `empleats` (
  `id_empleat` int(10) NOT NULL,
  `nom_empleat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Bolcament de dades per a la taula `empleats`
--

INSERT INTO `empleats` (`id_empleat`, `nom_empleat`) VALUES
(1, 'Raúl'),
(2, 'Sergi'),
(3, 'Marc'),
(4, 'Ivan');

-- --------------------------------------------------------

--
-- Estructura de la taula `marques`
--

CREATE TABLE `marques` (
  `id_marca` int(10) NOT NULL,
  `id_proveidor` int(10) NOT NULL,
  `marca` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Bolcament de dades per a la taula `marques`
--

INSERT INTO `marques` (`id_marca`, `id_proveidor`, `marca`) VALUES
(1, 1, 'Marca1'),
(2, 2, 'Marca2'),
(3, 3, 'Marca3');

-- --------------------------------------------------------

--
-- Estructura de la taula `proveidor`
--

CREATE TABLE `proveidor` (
  `id_proveidor` int(10) NOT NULL,
  `nom_proveidor` varchar(50) NOT NULL,
  `carrer` varchar(25) NOT NULL,
  `numero` int(4) NOT NULL,
  `pis` varchar(10) NOT NULL,
  `porta` varchar(2) NOT NULL,
  `ciutat` varchar(20) NOT NULL,
  `codi_postal` int(5) NOT NULL,
  `pais` varchar(20) NOT NULL,
  `telefon` int(13) NOT NULL,
  `fax` int(13) NOT NULL,
  `nif` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Bolcament de dades per a la taula `proveidor`
--

INSERT INTO `proveidor` (`id_proveidor`, `nom_proveidor`, `carrer`, `numero`, `pis`, `porta`, `ciutat`, `codi_postal`, `pais`, `telefon`, `fax`, `nif`) VALUES
(1, 'Proveidor1', 'carrer1', 1, 'pis1', '1', 'ciutat1', 8001, 'pais1', 931111111, 931111112, 'B11111111'),
(2, 'Proveidor2', 'carrer2', 2, 'pis2', '2', 'ciutat2', 8002, 'pais2', 932222222, 932222221, 'B22222222'),
(3, 'Proveidor3', 'carrer3', 3, 'pis3', '3', 'ciutat3', 8003, 'pais3', 933333333, 933333334, 'B33333333');

-- --------------------------------------------------------

--
-- Estructura de la taula `ulleres`
--

CREATE TABLE `ulleres` (
  `id_ulleres` int(10) NOT NULL,
  `marca` varchar(20) NOT NULL,
  `graduacio` varchar(20) NOT NULL,
  `tipus_muntura` varchar(15) NOT NULL,
  `color_muntura` varchar(15) NOT NULL,
  `color_vidre` varchar(15) NOT NULL,
  `preu` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Bolcament de dades per a la taula `ulleres`
--

INSERT INTO `ulleres` (`id_ulleres`, `marca`, `graduacio`, `tipus_muntura`, `color_muntura`, `color_vidre`, `preu`) VALUES
(1, 'Marca1', '-3.75 -3.25', 'flotant', 'blau', 'transparent', 50),
(2, 'Marca2', '+2.50 +3.00', 'pasta', 'blanc', 'transparent', 55),
(3, 'Marca3', '-3.75 -3.25', 'metàl·lica', 'vermell', 'negres', 60);

-- --------------------------------------------------------

--
-- Estructura de la taula `vendes`
--

CREATE TABLE `vendes` (
  `id_venda` int(10) NOT NULL,
  `id_empleat` int(10) NOT NULL,
  `id_ullera_venuda` int(10) NOT NULL,
  `id_client_venut` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Bolcament de dades per a la taula `vendes`
--

INSERT INTO `vendes` (`id_venda`, `id_empleat`, `id_ullera_venuda`, `id_client_venut`) VALUES
(1, 4, 1, 5),
(2, 3, 1, 4),
(3, 1, 1, 1),
(4, 2, 3, 5),
(5, 2, 2, 2),
(6, 3, 3, 3);

--
-- Índexs per a les taules bolcades
--

--
-- Índexs per a la taula `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id_client`);

--
-- Índexs per a la taula `empleats`
--
ALTER TABLE `empleats`
  ADD PRIMARY KEY (`id_empleat`);

--
-- Índexs per a la taula `marques`
--
ALTER TABLE `marques`
  ADD PRIMARY KEY (`id_marca`),
  ADD UNIQUE KEY `marca` (`marca`),
  ADD KEY `id_proveidor` (`id_proveidor`);

--
-- Índexs per a la taula `proveidor`
--
ALTER TABLE `proveidor`
  ADD PRIMARY KEY (`id_proveidor`);

--
-- Índexs per a la taula `ulleres`
--
ALTER TABLE `ulleres`
  ADD PRIMARY KEY (`id_ulleres`),
  ADD KEY `marca` (`marca`),
  ADD KEY `marca_2` (`marca`);

--
-- Índexs per a la taula `vendes`
--
ALTER TABLE `vendes`
  ADD PRIMARY KEY (`id_venda`),
  ADD KEY `id_ullera_venuda` (`id_ullera_venuda`),
  ADD KEY `id_client_venut` (`id_client_venut`),
  ADD KEY `id_empleat` (`id_empleat`);

--
-- AUTO_INCREMENT per les taules bolcades
--

--
-- AUTO_INCREMENT per la taula `clients`
--
ALTER TABLE `clients`
  MODIFY `id_client` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la taula `empleats`
--
ALTER TABLE `empleats`
  MODIFY `id_empleat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la taula `marques`
--
ALTER TABLE `marques`
  MODIFY `id_marca` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la taula `proveidor`
--
ALTER TABLE `proveidor`
  MODIFY `id_proveidor` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la taula `ulleres`
--
ALTER TABLE `ulleres`
  MODIFY `id_ulleres` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la taula `vendes`
--
ALTER TABLE `vendes`
  MODIFY `id_venda` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restriccions per a les taules bolcades
--

--
-- Restriccions per a la taula `marques`
--
ALTER TABLE `marques`
  ADD CONSTRAINT `marques_ibfk_2` FOREIGN KEY (`id_proveidor`) REFERENCES `proveidor` (`id_proveidor`) ON UPDATE CASCADE;

--
-- Restriccions per a la taula `ulleres`
--
ALTER TABLE `ulleres`
  ADD CONSTRAINT `ulleres_ibfk_1` FOREIGN KEY (`marca`) REFERENCES `marques` (`marca`) ON UPDATE CASCADE;

--
-- Restriccions per a la taula `vendes`
--
ALTER TABLE `vendes`
  ADD CONSTRAINT `vendes_ibfk_1` FOREIGN KEY (`id_ullera_venuda`) REFERENCES `ulleres` (`id_ulleres`) ON UPDATE CASCADE,
  ADD CONSTRAINT `vendes_ibfk_2` FOREIGN KEY (`id_client_venut`) REFERENCES `clients` (`id_client`) ON UPDATE CASCADE,
  ADD CONSTRAINT `vendes_ibfk_3` FOREIGN KEY (`id_empleat`) REFERENCES `empleats` (`id_empleat`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
