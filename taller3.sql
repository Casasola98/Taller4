-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-01-2020 a las 22:11:52
-- Versión del servidor: 10.4.10-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `taller3`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntos`
--

CREATE TABLE `puntos` (
  `nombre` varchar(30) NOT NULL,
  `descripcion` varchar(150) NOT NULL,
  `latitud` double NOT NULL,
  `longitud` double NOT NULL,
  `ruta` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `puntos`
--

INSERT INTO `puntos` (`nombre`, `descripcion`, `latitud`, `longitud`, `ruta`) VALUES
('Chino Feliz', 'El mejor cantonés de Tres Ríos', 9.9095817, -83.9848582, 'Ruta de Coca'),
('La Taquería', 'Los tacos y doraditas más ricos de La Unión', 9.9082876, -83.984944, 'Ruta de Coca'),
('TicoBurguesas', 'La muerta de hambre, hamburguesas, nachos, papás y más.', 9.9085309, -83.9869949, 'Ruta de Coca'),
('El Canasto', 'Pollo asado a la orden', 9.9090369, -83.9950979, 'Ruta de Coca'),
('Capitan Wings', 'Las mejores alitas de pollo de la zona, y con unas de las mejores hamburguesas', 9.9087741, -84.0044765, 'Ruta de Coca'),
('Foodtruck Park', 'Muchas opciones para comer en un solo lugar', 9.9109301, -84.0132736, 'Ruta de Coca'),
('McPinares', 'Plaza Momentum', 9.9116193, -84.0175325, 'Ruta de McDonalds'),
('McTerra', 'Terramall', 9.9022305, -83.9965862, 'Ruta de McDonalds'),
('McMetropoli', 'Paseo Metropoli', 9.8678674, -83.9425429, 'Ruta de McDonalds'),
('McRuinas', 'Ruinas de Cartago', 9.8638095, -83.9208785, 'Ruta de McDonalds'),
('McAngeles', 'Los Angeles, Cartago', 9.8556944, -83.904362, 'Ruta de McDonalds'),
('Prueba 1', 'Prueba 1', 9.908656272295197, -84.00227944362435, 'Ruta de Prueba'),
('Prueba 2', 'Prueba ', 9.92133858418799, -83.98855216309431, 'Ruta de Prueba'),
('Prueba 3', 'Prueba 3', 9.925058635900644, -84.01961013529355, 'Ruta de Prueba'),
('Prueba 4', 'Prueba 4', 9.9404456734094, -84.00485330872374, 'Ruta de Prueba'),
('Prueba 5', 'Prueba 5', 9.919594795403603, -83.99941323423539, 'Ruta de Prueba'),
('p1', 'p1', 9.930638634222625, -84.04554935982328, 'ejemplo'),
('p2', 'p2', 9.930342727609169, -84.04265264458748, 'ejemplo'),
('p3', 'p3', 9.931674305262613, -84.04780236056224, 'ejemplo'),
('Ebais de Taras', 'Ir cuando esta enfermo', 9.875405151409065, -83.93323989350722, 'Ruta de la Profe'),
('Delegacion', 'Policia de Transito', 9.883438152499037, -83.93611515159313, 'Ruta de la Profe'),
('RECOPE', 'Plantel de Ochomogo', 9.895910054768102, -83.94326071464275, 'Ruta de la Profe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutas`
--

CREATE TABLE `rutas` (
  `nombre` varchar(30) NOT NULL,
  `descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rutas`
--

INSERT INTO `rutas` (`nombre`, `descripcion`) VALUES
('ejemplo', 'descrip'),
('Ruta de Coca', 'Es la ruta del camion de Coca Cola'),
('Ruta de la Profe', 'Descripcion'),
('Ruta de McDonalds', 'Es la ruta de McDonalds'),
('Ruta de Prueba', 'Es la prueba');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `puntos`
--
ALTER TABLE `puntos`
  ADD KEY `par_ind` (`ruta`);

--
-- Indices de la tabla `rutas`
--
ALTER TABLE `rutas`
  ADD PRIMARY KEY (`nombre`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `puntos`
--
ALTER TABLE `puntos`
  ADD CONSTRAINT `ruta` FOREIGN KEY (`ruta`) REFERENCES `rutas` (`nombre`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
