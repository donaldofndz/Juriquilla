-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 29-11-2016 a las 06:20:48
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `login`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Bases`
--

CREATE TABLE `Bases` (
  `idDisp` int(11) NOT NULL,
  `Dispositivo` varchar(100) CHARACTER SET latin1 NOT NULL,
  `Base` varchar(100) CHARACTER SET latin1 NOT NULL,
  `tiempoMuestreo` time NOT NULL,
  `ultimaMuestra` datetime NOT NULL,
  `activo` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `Bases`
--

INSERT INTO `Bases` (`idDisp`, `Dispositivo`, `Base`, `tiempoMuestreo`, `ultimaMuestra`, `activo`) VALUES
(1, 'DISP1', 'Juriquilla_D1', '00:10:00', '2016-10-03 14:50:00', 1),
(2, 'DISP2', 'Juriquilla_D2', '00:10:00', '2016-10-03 14:49:55', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Bitacora`
--

CREATE TABLE `Bitacora` (
  `folio` int(11) NOT NULL,
  `tiempo` datetime NOT NULL,
  `idEvento` int(11) NOT NULL,
  `detalle` varchar(4096) COLLATE utf8_spanish_ci NOT NULL,
  `idDisp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `Bitacora`
--

INSERT INTO `Bitacora` (`folio`, `tiempo`, `idEvento`, `detalle`, `idDisp`) VALUES
(1, '2016-09-02 21:43:20', 11, 'Arranque del sistema de verificación de operación\n', NULL),
(2, '2016-09-05 11:50:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 11:48:02\nHora esperada de llegada de la siguiente muestra: 2016-09-05 11:49:02\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(3, '2016-09-05 11:52:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 11:50:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 11:51:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(4, '2016-09-05 11:52:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 11:49:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 11:50:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(5, '2016-09-05 11:53:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 11:50:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 11:51:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(6, '2016-09-05 11:53:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 11:49:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 11:50:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(7, '2016-09-05 11:54:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 11:50:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 11:51:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(8, '2016-09-05 11:54:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 11:49:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 11:50:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(9, '2016-09-05 11:55:03', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 11:50:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 11:51:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(10, '2016-09-05 11:55:05', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 11:49:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 11:50:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(11, '2016-09-05 11:56:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 11:50:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 11:51:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(12, '2016-09-05 11:56:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 11:49:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 11:50:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(13, '2016-09-05 11:57:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 11:50:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 11:51:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(14, '2016-09-05 11:57:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 11:49:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 11:50:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(15, '2016-09-05 11:58:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 11:50:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 11:51:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(16, '2016-09-05 11:58:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 11:49:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 11:50:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(17, '2016-09-05 11:59:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 11:50:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 11:51:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(18, '2016-09-05 11:59:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 11:49:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 11:50:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(19, '2016-09-05 12:00:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 11:50:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 11:51:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(20, '2016-09-05 12:02:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:00:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:01:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(21, '2016-09-05 12:02:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 11:59:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:00:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(22, '2016-09-05 12:03:03', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:00:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:01:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(23, '2016-09-05 12:03:05', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 11:59:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:00:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(24, '2016-09-05 12:04:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:00:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:01:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(25, '2016-09-05 12:04:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 11:59:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:00:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(26, '2016-09-05 12:05:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:00:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:01:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(27, '2016-09-05 12:05:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 11:59:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:00:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(28, '2016-09-05 12:06:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:00:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:01:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(29, '2016-09-05 12:06:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 11:59:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:00:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(30, '2016-09-05 12:07:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:00:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:01:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(31, '2016-09-05 12:07:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 11:59:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:00:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(32, '2016-09-05 12:08:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:00:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:01:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(33, '2016-09-05 12:08:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 11:59:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:00:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(34, '2016-09-05 12:09:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:00:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:01:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(35, '2016-09-05 12:09:03', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 11:59:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:00:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(36, '2016-09-05 12:10:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:00:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:01:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(37, '2016-09-05 12:12:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:10:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:11:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(38, '2016-09-05 12:12:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:09:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:10:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(39, '2016-09-05 12:13:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:10:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:11:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(40, '2016-09-05 12:13:03', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:09:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:10:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(41, '2016-09-05 12:14:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:10:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:11:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(42, '2016-09-05 12:14:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:09:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:10:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(43, '2016-09-05 12:15:03', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:10:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:11:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(44, '2016-09-05 12:15:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:09:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:10:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(45, '2016-09-05 12:16:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:10:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:11:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(46, '2016-09-05 12:16:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:09:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:10:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(47, '2016-09-05 12:17:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:10:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:11:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(48, '2016-09-05 12:17:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:09:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:10:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(49, '2016-09-05 12:18:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:10:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:11:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(50, '2016-09-05 12:18:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:09:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:10:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(51, '2016-09-05 12:19:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:10:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:11:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(52, '2016-09-05 12:19:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:09:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:10:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(53, '2016-09-05 12:20:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:10:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:11:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(54, '2016-09-05 12:22:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:20:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:21:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(55, '2016-09-05 12:22:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:19:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:20:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(56, '2016-09-05 12:23:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:20:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:21:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(57, '2016-09-05 12:23:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:19:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:20:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(58, '2016-09-05 12:24:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:20:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:21:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(59, '2016-09-05 12:24:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:19:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:20:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(60, '2016-09-05 12:25:03', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:20:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:21:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(61, '2016-09-05 12:25:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:19:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:20:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(62, '2016-09-05 12:26:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:20:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:21:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(63, '2016-09-05 12:26:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:19:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:20:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(64, '2016-09-05 12:27:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:20:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:21:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(65, '2016-09-05 12:27:05', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:19:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:20:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(66, '2016-09-05 12:28:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:20:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:21:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(67, '2016-09-05 12:28:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:19:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:20:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(68, '2016-09-05 12:29:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:20:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:21:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(69, '2016-09-05 12:29:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:19:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:20:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(70, '2016-09-05 12:30:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:20:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:21:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(71, '2016-09-05 12:32:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:30:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:31:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(72, '2016-09-05 12:32:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:29:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:30:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(73, '2016-09-05 12:33:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:30:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:31:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(74, '2016-09-05 12:33:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:29:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:30:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(75, '2016-09-05 12:34:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:30:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:31:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(76, '2016-09-05 12:34:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:29:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:30:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(77, '2016-09-05 12:35:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:30:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:31:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(78, '2016-09-05 12:35:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:29:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:30:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(79, '2016-09-05 12:36:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:30:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:31:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(80, '2016-09-05 12:36:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:29:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:30:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(81, '2016-09-05 12:37:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:30:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:31:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(82, '2016-09-05 12:37:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:29:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:30:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(83, '2016-09-05 12:38:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:30:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:31:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(84, '2016-09-05 12:38:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:29:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:30:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(85, '2016-09-05 12:39:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:30:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:31:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(86, '2016-09-05 12:39:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:29:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:30:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(87, '2016-09-05 12:40:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:30:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:31:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(88, '2016-09-05 12:42:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:40:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:41:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(89, '2016-09-05 12:42:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:39:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:40:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(90, '2016-09-05 12:43:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:40:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:41:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(91, '2016-09-05 12:43:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:39:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:40:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(92, '2016-09-05 12:44:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:40:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:41:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(93, '2016-09-05 12:44:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:39:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:40:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(94, '2016-09-05 12:45:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:40:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:41:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(95, '2016-09-05 12:45:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:39:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:40:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(96, '2016-09-05 12:46:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:40:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:41:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(97, '2016-09-05 12:46:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:39:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:40:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(98, '2016-09-05 12:47:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:40:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:41:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(99, '2016-09-05 12:47:05', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:39:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:40:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(100, '2016-09-05 12:48:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:40:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:41:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(101, '2016-09-05 12:48:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:39:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:40:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(102, '2016-09-05 12:49:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:40:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:41:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(103, '2016-09-05 12:49:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:39:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:40:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(104, '2016-09-05 12:50:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:40:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:41:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(105, '2016-09-05 12:52:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:50:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:51:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(106, '2016-09-05 12:52:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:49:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:50:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(107, '2016-09-05 12:53:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:50:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:51:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(108, '2016-09-05 12:53:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:49:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:50:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(109, '2016-09-05 12:54:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:50:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:51:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(110, '2016-09-05 12:54:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:49:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:50:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(111, '2016-09-05 12:55:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:50:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:51:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(112, '2016-09-05 12:55:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:49:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:50:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(113, '2016-09-05 12:56:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:50:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:51:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(114, '2016-09-05 12:56:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:49:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:50:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(115, '2016-09-05 12:57:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:50:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:51:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(116, '2016-09-05 12:57:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:49:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:50:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(117, '2016-09-05 12:58:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:50:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:51:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(118, '2016-09-05 12:58:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:49:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:50:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(119, '2016-09-05 12:59:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:50:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:51:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(120, '2016-09-05 12:59:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:49:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:50:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(121, '2016-09-05 13:00:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 12:50:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 12:51:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(122, '2016-09-05 13:02:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 13:00:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:01:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(123, '2016-09-05 13:02:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:59:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:00:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(124, '2016-09-05 13:03:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 13:00:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:01:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(125, '2016-09-05 13:03:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:59:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:00:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(126, '2016-09-05 13:04:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 13:00:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:01:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(127, '2016-09-05 13:04:03', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:59:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:00:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(128, '2016-09-05 13:05:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 13:00:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:01:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(129, '2016-09-05 13:05:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:59:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:00:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(130, '2016-09-05 13:06:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 13:00:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:01:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(131, '2016-09-05 13:06:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:59:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:00:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(132, '2016-09-05 13:07:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 13:00:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:01:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(133, '2016-09-05 13:07:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:59:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:00:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(134, '2016-09-05 13:08:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 13:00:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:01:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(135, '2016-09-05 13:08:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:59:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:00:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(136, '2016-09-05 13:09:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 13:00:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:01:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(137, '2016-09-05 13:09:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 12:59:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:00:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(138, '2016-09-05 13:10:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 13:00:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:01:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(139, '2016-09-05 13:12:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 13:10:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:11:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(140, '2016-09-05 13:12:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 13:09:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:10:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(141, '2016-09-05 13:13:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 13:10:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:11:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(142, '2016-09-05 13:13:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 13:09:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:10:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(143, '2016-09-05 13:14:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 13:10:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:11:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(144, '2016-09-05 13:14:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 13:09:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:10:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(145, '2016-09-05 13:15:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 13:10:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:11:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(146, '2016-09-05 13:15:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 13:09:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:10:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(147, '2016-09-05 13:16:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 13:10:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:11:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(148, '2016-09-05 13:16:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 13:09:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:10:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(149, '2016-09-05 13:17:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 13:10:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:11:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(150, '2016-09-05 13:17:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 13:09:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:10:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(151, '2016-09-05 13:18:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 13:10:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:11:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(152, '2016-09-05 13:18:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 13:09:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:10:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(153, '2016-09-05 13:19:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 13:10:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:11:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(154, '2016-09-05 13:19:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 13:09:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:10:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(155, '2016-09-05 13:20:03', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 13:10:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:11:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(156, '2016-09-05 13:22:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 13:20:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:21:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(157, '2016-09-05 13:22:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 13:19:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:20:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(158, '2016-09-05 13:23:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 13:20:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:21:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(159, '2016-09-05 13:23:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 13:19:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:20:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(160, '2016-09-05 13:24:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 13:20:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:21:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(161, '2016-09-05 13:24:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 13:19:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:20:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(162, '2016-09-05 13:25:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 13:20:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:21:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(163, '2016-09-05 13:25:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 13:19:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:20:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(164, '2016-09-05 13:26:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 13:20:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:21:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(165, '2016-09-05 13:26:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 13:19:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:20:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(166, '2016-09-05 13:27:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 13:20:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:21:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(167, '2016-09-05 13:27:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 13:19:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:20:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(168, '2016-09-05 13:28:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 13:20:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:21:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(169, '2016-09-05 13:28:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 13:19:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:20:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(170, '2016-09-05 13:29:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 13:20:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:21:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(171, '2016-09-05 13:29:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 13:19:56\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:20:56\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(172, '2016-09-05 13:30:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 13:20:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:21:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(173, '2016-09-05 13:32:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 13:30:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:31:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(174, '2016-09-05 13:32:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 13:29:55\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:30:55\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(175, '2016-09-05 13:33:02', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-05 13:30:00\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:31:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(176, '2016-09-05 13:33:04', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-05 13:29:55\nHora esperada de llegada de la siguiente muestra: 2016-09-05 13:30:55\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(177, '2016-09-28 12:58:52', 11, 'Arranque del sistema de verificación de operación\n', NULL),
(178, '2016-09-29 20:24:10', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-29 19:59:59\nHora esperada de llegada de la siguiente muestra: 2016-09-29 20:09:59\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(179, '2016-09-29 20:24:20', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP2   Ultima Muestra recibida: 2016-09-29 19:59:52\nHora esperada de llegada de la siguiente muestra: 2016-09-29 20:09:52\n\n\nEs posible que haya una falla ya sea en la comunicaci', 2),
(180, '2016-09-30 13:48:10', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-30 13:30:00\nHora esperada de llegada de la siguiente muestra: 2016-09-30 13:40:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(181, '2016-09-30 13:59:10', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-30 13:30:00\nHora esperada de llegada de la siguiente muestra: 2016-09-30 13:40:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1),
(182, '2016-09-30 14:10:10', 3000, 'Retraso en la llegada de una muestra\nDispositivo: DISP1   Ultima Muestra recibida: 2016-09-30 13:30:00\nHora esperada de llegada de la siguiente muestra: 2016-09-30 13:40:00\n\n\nEs posible que haya una falla ya sea en la comunicaci', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catEvento`
--

CREATE TABLE `catEvento` (
  `idEvento` int(11) NOT NULL,
  `descripcion` varchar(256) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `catEvento`
--

INSERT INTO `catEvento` (`idEvento`, `descripcion`) VALUES
(10, 'PARO DEMONIO ALARM SERV'),
(11, 'ARRANQUE DEMONIO ALARM SERV'),
(2000, 'CONSULTA'),
(3000, 'RETRASO'),
(4000, 'NO DEV SERV');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('09cfe430e3fe54a9edc9c1103ef55868b16d9723', '::1', 1480395377, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438303339353335343b757365725f69647c693a333b757365726e616d657c733a393a22646f6e616c646f666d223b757365725f72656769737465727c693a313b757365725f747970657c693a333b6e616d657c733a373a22446f6e616c646f223b6c6f676765645f696e7c623a313b69735f636f6e6669726d65647c623a303b69735f61646d696e7c623a303b),
('22f9f0dfe2cc10304d3e3befb9b3a3c6adc56071', '::1', 1480344111, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438303334333934343b757365725f69647c693a333b757365726e616d657c733a393a22646f6e616c646f666d223b757365725f72656769737465727c693a313b757365725f747970657c693a333b6e616d657c733a373a22446f6e616c646f223b6c6f676765645f696e7c623a313b69735f636f6e6669726d65647c623a303b69735f61646d696e7c623a303b),
('2c2fb065d597b37b3bc9aa05596fb633947219ba', '::1', 1480343383, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438303334333039383b757365725f69647c693a333b757365726e616d657c733a393a22646f6e616c646f666d223b757365725f72656769737465727c693a313b757365725f747970657c693a333b6e616d657c733a373a22446f6e616c646f223b6c6f676765645f696e7c623a313b69735f636f6e6669726d65647c623a303b69735f61646d696e7c623a303b),
('675aaa4feed61cf866b94c03fdcca87c30ce97b7', '::1', 1480343669, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438303334333430343b757365725f69647c693a333b757365726e616d657c733a393a22646f6e616c646f666d223b757365725f72656769737465727c693a313b757365725f747970657c693a333b6e616d657c733a373a22446f6e616c646f223b6c6f676765645f696e7c623a313b69735f636f6e6669726d65647c623a303b69735f61646d696e7c623a303b),
('9ef86d0821046dcc55f5fe5ccd35ed6c288ed27a', '::1', 1480343056, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438303334323738323b757365725f69647c693a333b757365726e616d657c733a393a22646f6e616c646f666d223b757365725f72656769737465727c693a313b757365725f747970657c693a333b6e616d657c733a373a22446f6e616c646f223b6c6f676765645f696e7c623a313b69735f636f6e6669726d65647c623a303b69735f61646d696e7c623a303b),
('e3d1e4ea7b6010349e7bd2c7d058013683e70165', '::1', 1480396826, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438303339363832363b757365725f69647c693a333b757365726e616d657c733a393a22646f6e616c646f666d223b757365725f72656769737465727c693a313b757365725f747970657c693a333b6e616d657c733a373a22446f6e616c646f223b6c6f676765645f696e7c623a313b69735f636f6e6669726d65647c623a303b69735f61646d696e7c623a303b),
('fe3694de269345c3f0e52a89f399af3e851e692b', '::1', 1480395776, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438303339353735373b757365725f69647c693a333b757365726e616d657c733a393a22646f6e616c646f666d223b757365725f72656769737465727c693a313b757365725f747970657c693a333b6e616d657c733a373a22446f6e616c646f223b6c6f676765645f696e7c623a313b69735f636f6e6669726d65647c623a303b69735f61646d696e7c623a303b);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `lastnamesec` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `user_type` int(1) NOT NULL,
  `user_register` int(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_admin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_confirmed` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `lastnamesec`, `username`, `email`, `password`, `user_type`, `user_register`, `created_at`, `updated_at`, `is_admin`, `is_confirmed`, `is_deleted`) VALUES
(3, 'Donaldo', 'Fernández', 'Montenegro', 'donaldofm', 'donaldo.proteco@gmail.com', '$2y$10$sQK33eaO4udPOwAJKO1yYe2Spybtr40vYjXWfo/Ti2ppO/c4VubSO', 3, 1, '2016-09-29 19:54:38', NULL, 0, 0, 0),
(5, 'Donaldo', 'Fernández', 'Montenegro', 'donaldofndz', 'donaldo.fndz@gmail.com', '$2y$10$fmrar/.mhOnGvk2OPJ53KOg6AVr4NxDh8lLj3EMOAyoErl9tPmMaO', 4, 1, '2016-10-01 18:38:41', NULL, 0, 0, 0),
(6, 'Ariana', 'Fernández', 'Montenegro', 'arianafm', 'ariana@gmail.com', '$2y$10$fILB5BL1Ktikpxlnb4v1JO2Y3jsc9B3ZF4DgmXfDY6zC.7XpJ5B/S', 4, 0, '2016-10-01 19:42:13', NULL, 0, 0, 0),
(7, 'Malaika', 'Andrade', 'Hernandez', 'maria14', 'maria14@algo.com', '$2y$10$nXjQxolLvir5nIGf36bQaOIaNcn7popH99y7CjiBzNxmLpCq0peta', 4, 0, '2016-10-01 20:16:25', NULL, 0, 0, 0),
(8, 'Algo', 'Alguien', 'Algun', 'macacos', 'macaco@gmail.com', '$2y$10$.aWltJ6OtQOzhx8iLw7sYeJrqakA/SdQlmDPrWHLgX45sHtAXcX7a', 1, 0, '2016-10-09 01:16:26', NULL, 0, 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Bases`
--
ALTER TABLE `Bases`
  ADD PRIMARY KEY (`idDisp`);

--
-- Indices de la tabla `Bitacora`
--
ALTER TABLE `Bitacora`
  ADD PRIMARY KEY (`folio`),
  ADD KEY `idEvento` (`idEvento`),
  ADD KEY `idEvento_2` (`idEvento`),
  ADD KEY `idDisp` (`idDisp`);

--
-- Indices de la tabla `catEvento`
--
ALTER TABLE `catEvento`
  ADD PRIMARY KEY (`idEvento`);

--
-- Indices de la tabla `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Bitacora`
--
ALTER TABLE `Bitacora`
  MODIFY `folio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Bitacora`
--
ALTER TABLE `Bitacora`
  ADD CONSTRAINT `bitacora_ibfk_1` FOREIGN KEY (`idEvento`) REFERENCES `catEvento` (`idEvento`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
