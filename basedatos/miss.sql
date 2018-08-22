-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 21-08-2018 a las 19:21:52
-- Versión del servidor: 10.1.10-MariaDB
-- Versión de PHP: 5.5.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `miss`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `altas_nuevo`
--

CREATE TABLE `altas_nuevo` (
  `id` int(11) UNSIGNED NOT NULL,
  `descripcion` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `precio_compra` float(5,2) UNSIGNED NOT NULL,
  `precio_venta` float(5,2) UNSIGNED NOT NULL,
  `existencias` int(11) UNSIGNED NOT NULL,
  `caducidad` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `altas_nuevo`
--

INSERT INTO `altas_nuevo` (`id`, `descripcion`, `precio_compra`, `precio_venta`, `existencias`, `caducidad`) VALUES
(22, 'jarrito', 12.00, 13.00, 3, '2018-08-07'),
(45, 'dfghjk', 56.00, 76.00, 4, '2018-09-23'),
(78, 'ertyjm', 34.00, 35.50, 7, '2018-08-17'),
(45, 'dfbgn', 5.00, 7.00, 2, '2018-08-09'),
(9, 'dfgbhj', 6.00, 8.00, 5, '2018-08-07'),
(6, 'sabritas ', 5.00, 11.00, 5, '2019-07-09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id_proveedor` int(11) NOT NULL,
  `empresa` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `nombre_producto` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `cantidad_paquete` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id_proveedor`, `empresa`, `fecha`, `nombre_producto`, `cantidad_paquete`) VALUES
(5, 'jaritos', '2018-09-08', 'refresco 400ml ', 3),
(11, 'coca cola', '2018-08-16', 'refresco de 500ml', 2),
(22, 'bimbo', '2018-08-15', 'rebanadas de mantequilla', 8),
(45, 'manzanita 500ml', '2018-08-20', 'pepsi', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuarios` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `passwd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuarios`, `passwd`) VALUES
('israelm', 20182018);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_venta` int(11) UNSIGNED NOT NULL,
  `descripcion` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `precio` float(5,2) NOT NULL,
  `cantidad` int(11) UNSIGNED NOT NULL,
  `total` float(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_venta`, `descripcion`, `precio`, `cantidad`, `total`) VALUES
(0, 'vive 100 de 400ml', 10.00, 1, 10.00),
(2, 'jhgf', 5.00, 2, 10.00),
(3, 'hbgvf', 6.00, 2, 12.00),
(4, 'jarito 400ml', 8.00, 2, 16.00),
(8, 'dfghjk', 6.00, 2, 12.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`passwd`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_venta`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
