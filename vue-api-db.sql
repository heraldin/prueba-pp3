-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 05, 2020 at 04:26 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vue-api-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `factura`
--

CREATE TABLE `factura` (
  `id_factura` int(10) NOT NULL,
  `nombre_producto` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre_cliente` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `iva` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `subtotal` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `total` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `forma_pago` varchar(45) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `factura`
--

INSERT INTO `factura` (`id_factura`, `nombre_producto`, `nombre_cliente`, `iva`, `cantidad`, `subtotal`, `total`, `forma_pago`) VALUES
(1, 'fideos', 'pepito', '21%', 1, '100', '121', 'efectivo'),
(2, 'leche larga vida', 'juancito', '21%', 2, '200', '242', 'credito'),
(6, 'detergente x 5 lts', 'olga', '21%', 1, '400', '484', 'debito'),
(8, 'fernet', 'horacio', '21%', 1, '350', '420', 'efectivo'),
(10, 'galletitas criollitas', 'juan', '21%', 2, '60', '142', 'debito'),
(12, 'gaseosa manaos', 'javier', '21%', 1, '100', '121', 'credito');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id_factura`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `factura`
--
ALTER TABLE `factura`
  MODIFY `id_factura` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
