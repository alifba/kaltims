-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2020 at 07:06 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kaltim`
--

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `id_angkatan` int(11) NOT NULL,
  `nama_siswa` mediumtext NOT NULL,
  `nis_siswa` varchar(10) NOT NULL,
  `agama_siswa` varchar(10) NOT NULL,
  `gender_siswa` varchar(10) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `kelas_siswa` varchar(15) NOT NULL,
  `tahun_siswa` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `id_angkatan`, `nama_siswa`, `nis_siswa`, `agama_siswa`, `gender_siswa`, `nisn`, `kelas_siswa`, `tahun_siswa`) VALUES
(9, 0, 'Akhmad fajar muiz', '9871098273', 'Islam', 'laki laki', '0052956098', 'X RPL 2', '2020 / 2021'),
(10, 0, 'Alif Nurrohman', '9870009872', 'Islam', 'laki laki', '0056875430', 'X RPL 2', '2020 / 2021'),
(11, 0, 'Anih Ajiyati', '9870988827', 'Islam', 'laki laki', '0056890820', 'X RPL 2', '2020 / 2021'),
(12, 0, 'Arya Gustino', '9879909987', 'Islam', 'laki laki', '0052789990', 'X RPL 2', '2020 / 2021'),
(13, 0, 'Daniel julian Caesar', '9871234321', 'Islam', 'laki laki', '0052687909', 'X RPL 2', '2020 / 2021'),
(14, 0, 'Desta Juliah Wati', '9877666567', 'Islam', 'laki laki', '0054889900', 'X RPL 2', '2020 / 2021'),
(21, 0, '<h1         style=\"margin-top:70px;position:fixed;z-index: 999;left: 0;right: 0;bottom: 0;top: 0;background-color: black;color: red;text-align: center;font-size: 80px;\">         HAHAHA WEB ANDA TELAH DI HACK <br>by @ALIF NURROHMAN EWOW</h1>', 'asla', 'athies', 'bencong', 'FAD', 'X RPL 20', '2020 / 2021');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`,`id_angkatan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
