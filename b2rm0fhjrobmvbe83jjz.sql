-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: b2rm0fhjrobmvbe83jjz-mysql.services.clever-cloud.com:3306
-- Tiempo de generación: 01-03-2024 a las 01:01:30
-- Versión del servidor: 8.0.15-5
-- Versión de PHP: 8.2.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `b2rm0fhjrobmvbe83jjz`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `color_vehiculo`
--

CREATE TABLE `color_vehiculo` (
  `idcolor_vehiculo` int(11) NOT NULL,
  `color` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `color_vehiculo`
--

INSERT INTO `color_vehiculo` (`idcolor_vehiculo`, `color`) VALUES
(1, 'rojo'),
(2, 'negro'),
(3, 'blanco'),
(4, 'amarillo'),
(5, 'azul'),
(6, 'gris');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dueñodelvehiculo`
--

CREATE TABLE `dueñodelvehiculo` (
  `iddueñovehiculo` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `idtipo_documento` int(11) DEFAULT NULL,
  `idgenero` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `dueñodelvehiculo`
--

INSERT INTO `dueñodelvehiculo` (`iddueñovehiculo`, `nombre`, `apellido`, `correo`, `telefono`, `idtipo_documento`, `idgenero`) VALUES
(1, 'Juan', 'Perez', 'juan@example.com', '123-456-7890', 47, 1),
(2, 'María', 'González', 'maria@example.com', '987-654-3210', 47, 2),
(3, 'Carlos', 'Martínez', 'carlos@example.com', '555-555-5555', 41, 1),
(4, 'Laura', 'López', 'laura@example.com', '111-222-3333', 42, 2),
(5, 'Pedro', 'Sánchez', 'pedro@example.com', '444-444-4444', 47, 1),
(6, 'Ana', 'Rodríguez', 'ana@example.com', '555-123-7890', 48, 2),
(7, 'Luis', 'Gómez', 'luis@example.com', '999-888-7777', 47, 1),
(8, 'Sofía', 'Díaz', 'sofia@example.com', '666-999-1111', 47, 2),
(9, 'Diego', 'Hernández', 'diego@example.com', '222-333-4444', 41, 1),
(10, 'Elena', 'Torres', 'elena@example.com', '777-222-5555', 47, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `edad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`id`, `nombre`, `apellido`, `correo`, `fecha`, `edad`) VALUES
(1, 'Juan', 'Pérez', 'juan.@gmail.com', '2001-09-12', 22),
(2, 'Maria', 'Bustamante', 'Maria.@gmail.com', '2002-01-02', 22),
(3, 'Pedro', 'Vargas', 'Pedro.@gmail.com', '2004-04-24', 19),
(4, 'Jose', 'Ruiz', 'Jose.@gmail.com', '2000-06-10', 19),
(5, 'Luisa', 'Rodriguez', 'Luisa.@gmail.com', '2000-12-24', 23),
(6, 'Ana', 'González', 'ana@gmail.com', '2003-07-15', 20),
(7, 'Carlos', 'Martínez', 'carlos@gmail.com', '2002-11-30', 21),
(8, 'Laura', 'Hernández', 'laura@gmail.com', '2005-03-08', 18),
(9, 'Daniel', 'López', 'daniel@gmail.com', '2003-05-20', 20),
(10, 'Sofía', 'Gómez', 'sofia@gmail.com', '2001-08-18', 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero_usuario`
--

CREATE TABLE `genero_usuario` (
  `idgenero` int(11) NOT NULL,
  `genero` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `genero_usuario`
--

INSERT INTO `genero_usuario` (`idgenero`, `genero`) VALUES
(1, 'Masculino'),
(2, 'Femenino'),
(3, 'Otro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca_vehiculo`
--

CREATE TABLE `marca_vehiculo` (
  `idmarca_vehiculo` int(11) NOT NULL,
  `marca` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `marca_vehiculo`
--

INSERT INTO `marca_vehiculo` (`idmarca_vehiculo`, `marca`) VALUES
(1, 'Toyota'),
(2, 'Honda'),
(3, 'Ford'),
(4, 'Chevrolet'),
(5, 'Volkswagen'),
(6, 'Mercedes-Benz'),
(7, 'BMW'),
(8, 'Audi'),
(9, 'Lexus'),
(10, 'Tesla'),
(11, 'Yamaha'),
(12, 'Kawasaki'),
(13, 'Suzuki'),
(14, 'Ducati');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parqueadero`
--

CREATE TABLE `parqueadero` (
  `idparqueadero` int(11) NOT NULL,
  `idvehiculo` int(11) DEFAULT NULL,
  `iddueñovehiculo` int(11) DEFAULT NULL,
  `hora_entrada` datetime DEFAULT NULL,
  `hora_salida` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `parqueadero`
--

INSERT INTO `parqueadero` (`idparqueadero`, `idvehiculo`, `iddueñovehiculo`, `hora_entrada`, `hora_salida`) VALUES
(6, 1, 1, '2024-02-21 08:00:00', '2024-02-21 17:00:00'),
(7, 2, 2, '2024-02-21 09:30:00', '2024-02-21 18:45:00'),
(8, 3, 3, '2024-02-21 10:15:00', '2024-02-21 16:20:00'),
(9, 4, 4, '2024-02-21 11:00:00', '2024-02-21 19:30:00'),
(10, 5, 5, '2024-02-21 12:45:00', '2024-02-21 21:00:00'),
(11, 6, 6, '2024-02-22 08:30:00', '2024-02-22 17:45:00'),
(12, 7, 7, '2024-02-22 09:45:00', '2024-02-22 18:30:00'),
(13, 8, 8, '2024-02-22 10:20:00', '2024-02-22 16:50:00'),
(14, 9, 9, '2024-02-22 11:15:00', '2024-02-22 19:15:00'),
(15, 10, 10, '2024-02-22 12:00:00', '2024-02-22 21:30:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parqueadero_plazas`
--

CREATE TABLE `parqueadero_plazas` (
  `id_plaza` int(11) NOT NULL,
  `plaza` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `parqueadero_plazas`
--

INSERT INTO `parqueadero_plazas` (`id_plaza`, `plaza`) VALUES
(1, 'A1'),
(2, 'A2'),
(3, 'A3'),
(4, 'A4'),
(5, 'A5');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `resumen parqueadero`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `resumen parqueadero` (
`nombre` varchar(50)
,`apellido` varchar(50)
,`telefono` varchar(50)
,`tipo` varchar(50)
,`marca` varchar(50)
,`placa` varchar(7)
,`plaza` varchar(15)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documento`
--

CREATE TABLE `tipo_documento` (
  `idtipo_documento` int(11) NOT NULL,
  `tipo` varchar(155) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_documento`
--

INSERT INTO `tipo_documento` (`idtipo_documento`, `tipo`) VALUES
(40, 'Credencial para votar vigente'),
(41, 'Pasaporte vigente'),
(42, 'Cédula profesional vigente (no electrónica)'),
(43, 'Credencial del Instituto Nacional de las Personas Adultas Mayores vigente'),
(44, 'Carné de identidad'),
(45, 'Clave Única de Registro de Población (CURP)'),
(46, 'Clave de Registro e Identificación Personal (CRIP)'),
(47, 'Cédula de ciudadanía (CC)'),
(48, 'Documento Nacional de Identidad (DNI)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_vehiculo`
--

CREATE TABLE `tipo_vehiculo` (
  `idtipo_vehiculo` int(11) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_vehiculo`
--

INSERT INTO `tipo_vehiculo` (`idtipo_vehiculo`, `tipo`) VALUES
(1, 'Carro'),
(2, 'Moto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `idvehiculo` int(11) NOT NULL,
  `placa` varchar(7) DEFAULT NULL,
  `modelo` varchar(50) DEFAULT NULL,
  `iddueñovehiculo` int(11) DEFAULT NULL,
  `idtipo_vehiculo` int(11) DEFAULT NULL,
  `idcolor_vehiculo` int(11) DEFAULT NULL,
  `idmarca_vehiculo` int(11) DEFAULT NULL,
  `id_plaza` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`idvehiculo`, `placa`, `modelo`, `iddueñovehiculo`, `idtipo_vehiculo`, `idcolor_vehiculo`, `idmarca_vehiculo`, `id_plaza`) VALUES
(1, 'ABC123', 'Corolla', 1, 1, 1, 1, 1),
(2, 'XYZ456', 'Civic', 2, 1, 3, 2, 3),
(3, 'DEF789', 'Focus', 3, 1, 6, 3, 5),
(4, 'GHI012', 'Cruze', 4, 1, 4, 4, 3),
(5, 'JKL345', 'Golf', 5, 1, 2, 5, 4),
(6, 'MNO678', 'C-Class', 6, 1, 1, 6, 2),
(7, 'PQR901', '3 Series', 7, 1, 3, 7, 1),
(8, 'STU234', 'A4', 8, 1, 3, 8, 4),
(9, 'VWX567', 'RX', 9, 1, 4, 9, 5),
(10, 'YZA890', 'Model 3', 10, 1, 5, 10, 1),
(11, 'ABC123', 'CBR1000RR', 6, 2, 6, 2, 2),
(12, 'XYZ456', 'YZF-R6', 7, 2, 1, 11, 3),
(13, 'DEF789', 'Ninja ZX-6R', 8, 2, 3, 12, 3),
(14, 'GHI012', 'GSX-R1000', 9, 2, 3, 13, 2),
(15, 'JKL345', 'Panigale V4', 10, 2, 2, 14, 4);

-- --------------------------------------------------------

--
-- Estructura para la vista `resumen parqueadero`
--
DROP TABLE IF EXISTS `resumen parqueadero`;

CREATE ALGORITHM=UNDEFINED DEFINER=`u3wdqhhbpyphare9`@`%` SQL SECURITY DEFINER VIEW `resumen parqueadero`  AS SELECT `d`.`nombre` AS `nombre`, `d`.`apellido` AS `apellido`, `d`.`telefono` AS `telefono`, `tpv`.`tipo` AS `tipo`, `mrc`.`marca` AS `marca`, `v`.`placa` AS `placa`, `pl`.`plaza` AS `plaza` FROM ((((`vehiculo` `v` left join `tipo_vehiculo` `tpv` on((`v`.`idtipo_vehiculo` = `tpv`.`idtipo_vehiculo`))) left join `dueñodelvehiculo` `d` on((`v`.`iddueñovehiculo` = `d`.`iddueñovehiculo`))) left join `marca_vehiculo` `mrc` on((`v`.`idmarca_vehiculo` = `mrc`.`idmarca_vehiculo`))) left join `parqueadero_plazas` `pl` on((`v`.`id_plaza` = `pl`.`id_plaza`))) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `color_vehiculo`
--
ALTER TABLE `color_vehiculo`
  ADD PRIMARY KEY (`idcolor_vehiculo`);

--
-- Indices de la tabla `dueñodelvehiculo`
--
ALTER TABLE `dueñodelvehiculo`
  ADD PRIMARY KEY (`iddueñovehiculo`),
  ADD UNIQUE KEY `correo` (`correo`),
  ADD UNIQUE KEY `telefono` (`telefono`),
  ADD KEY `idtipo_documento` (`idtipo_documento`),
  ADD KEY `idgenero` (`idgenero`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- Indices de la tabla `genero_usuario`
--
ALTER TABLE `genero_usuario`
  ADD PRIMARY KEY (`idgenero`);

--
-- Indices de la tabla `marca_vehiculo`
--
ALTER TABLE `marca_vehiculo`
  ADD PRIMARY KEY (`idmarca_vehiculo`);

--
-- Indices de la tabla `parqueadero`
--
ALTER TABLE `parqueadero`
  ADD PRIMARY KEY (`idparqueadero`),
  ADD KEY `idvehiculo` (`idvehiculo`),
  ADD KEY `iddueñovehiculo` (`iddueñovehiculo`);

--
-- Indices de la tabla `parqueadero_plazas`
--
ALTER TABLE `parqueadero_plazas`
  ADD PRIMARY KEY (`id_plaza`);

--
-- Indices de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  ADD PRIMARY KEY (`idtipo_documento`);

--
-- Indices de la tabla `tipo_vehiculo`
--
ALTER TABLE `tipo_vehiculo`
  ADD PRIMARY KEY (`idtipo_vehiculo`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`idvehiculo`),
  ADD KEY `iddueñovehiculo` (`iddueñovehiculo`),
  ADD KEY `idtipo_vehiculo` (`idtipo_vehiculo`),
  ADD KEY `idcolor_vehiculo` (`idcolor_vehiculo`),
  ADD KEY `idmarca_vehiculo` (`idmarca_vehiculo`),
  ADD KEY `id_plaza` (`id_plaza`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `genero_usuario`
--
ALTER TABLE `genero_usuario`
  MODIFY `idgenero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `marca_vehiculo`
--
ALTER TABLE `marca_vehiculo`
  MODIFY `idmarca_vehiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `parqueadero`
--
ALTER TABLE `parqueadero`
  MODIFY `idparqueadero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `parqueadero_plazas`
--
ALTER TABLE `parqueadero_plazas`
  MODIFY `id_plaza` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  MODIFY `idtipo_documento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `dueñodelvehiculo`
--
ALTER TABLE `dueñodelvehiculo`
  ADD CONSTRAINT `dueñodelvehiculo_ibfk_1` FOREIGN KEY (`idtipo_documento`) REFERENCES `tipo_documento` (`idtipo_documento`),
  ADD CONSTRAINT `dueñodelvehiculo_ibfk_2` FOREIGN KEY (`idgenero`) REFERENCES `genero_usuario` (`idgenero`);

--
-- Filtros para la tabla `parqueadero`
--
ALTER TABLE `parqueadero`
  ADD CONSTRAINT `parqueadero_ibfk_1` FOREIGN KEY (`idvehiculo`) REFERENCES `vehiculo` (`idvehiculo`),
  ADD CONSTRAINT `parqueadero_ibfk_2` FOREIGN KEY (`iddueñovehiculo`) REFERENCES `dueñodelvehiculo` (`iddueñovehiculo`);

--
-- Filtros para la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD CONSTRAINT `vehiculo_ibfk_1` FOREIGN KEY (`iddueñovehiculo`) REFERENCES `dueñodelvehiculo` (`iddueñovehiculo`),
  ADD CONSTRAINT `vehiculo_ibfk_2` FOREIGN KEY (`idtipo_vehiculo`) REFERENCES `tipo_vehiculo` (`idtipo_vehiculo`),
  ADD CONSTRAINT `vehiculo_ibfk_3` FOREIGN KEY (`idcolor_vehiculo`) REFERENCES `color_vehiculo` (`idcolor_vehiculo`),
  ADD CONSTRAINT `vehiculo_ibfk_4` FOREIGN KEY (`idmarca_vehiculo`) REFERENCES `marca_vehiculo` (`idmarca_vehiculo`),
  ADD CONSTRAINT `vehiculo_ibfk_5` FOREIGN KEY (`id_plaza`) REFERENCES `parqueadero_plazas` (`id_plaza`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
