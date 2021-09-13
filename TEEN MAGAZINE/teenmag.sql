-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2020 at 01:25 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teenmag`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a.id` int(11) NOT NULL,
  `a.name` varchar(100) NOT NULL,
  `a.username` varchar(30) NOT NULL,
  `a.password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a.id`, `a.name`, `a.username`, `a.password`) VALUES
(153095, 'mostafa', 'mostafanegm@yahoo.com', 123456),
(153096, '', '', 0),
(162417, 'maryam', 'maryamashraf@admin.com', 1111);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `c.id` int(11) NOT NULL,
  `c.name` mediumtext NOT NULL,
  `c.email` mediumtext NOT NULL,
  `c.username` mediumtext NOT NULL,
  `c.password` varchar(15) NOT NULL,
  `c.phone` int(20) NOT NULL,
  `c.address` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `o.id` int(11) NOT NULL,
  `o.total` int(11) NOT NULL,
  `o.date` date NOT NULL,
  `c.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `op.id` int(11) NOT NULL,
  `op.quantity` int(11) NOT NULL,
  `o.id` int(11) NOT NULL,
  `p.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `CardHolder` varchar(30) NOT NULL,
  `CardNumber` bigint(20) NOT NULL,
  `ExpiryDate` date NOT NULL,
  `CVC` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`CardHolder`, `CardNumber`, `ExpiryDate`, `CVC`) VALUES
('mostafa', 156456, '2020-04-13', 123),
('negm', 84651651, '2020-04-16', 456);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `p.id` int(11) NOT NULL,
  `p.name` mediumtext NOT NULL,
  `p.description` longtext NOT NULL,
  `p.price` int(11) NOT NULL,
  `p.quantity` int(11) NOT NULL,
  `p.section` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_img`
--

CREATE TABLE `product_img` (
  `pi.id` int(11) NOT NULL,
  `pi.img` varchar(1000) NOT NULL,
  `p.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a.id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`c.id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`o.id`),
  ADD KEY `c.id` (`c.id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`op.id`),
  ADD KEY `o.id` (`o.id`),
  ADD KEY `p.id` (`p.id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`CardNumber`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p.id`);

--
-- Indexes for table `product_img`
--
ALTER TABLE `product_img`
  ADD PRIMARY KEY (`pi.id`),
  ADD KEY `p.id` (`p.id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `a.id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162418;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `c.id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `o.id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `op.id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `p.id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_img`
--
ALTER TABLE `product_img`
  MODIFY `pi.id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`c.id`) REFERENCES `customer` (`c.id`);

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_ibfk_1` FOREIGN KEY (`o.id`) REFERENCES `order` (`o.id`),
  ADD CONSTRAINT `order_product_ibfk_2` FOREIGN KEY (`p.id`) REFERENCES `product` (`p.id`);

--
-- Constraints for table `product_img`
--
ALTER TABLE `product_img`
  ADD CONSTRAINT `product_img_ibfk_1` FOREIGN KEY (`p.id`) REFERENCES `product` (`p.id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
