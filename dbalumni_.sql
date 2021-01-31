-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3036
-- Generation Time: Jan 06, 2021 at 07:35 AM
-- Server version: 5.6.20-log
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbalumni`
--
CREATE DATABASE IF NOT EXISTS `dbalumni` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dbalumni`;

-- --------------------------------------------------------

--
-- Table structure for table `angkatan`
--

CREATE TABLE IF NOT EXISTS `angkatan` (
`ID_ANGKATAN` int(11) NOT NULL,
  `NM_ANGKATAN` varchar(20) DEFAULT NULL,
  `THN_ANGKATAN` varchar(255) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `angkatan`
--

INSERT INTO `angkatan` (`ID_ANGKATAN`, `NM_ANGKATAN`, `THN_ANGKATAN`) VALUES
(1, '2015', NULL),
(2, '2016', NULL),
(3, '2017', NULL),
(4, '2018', NULL),
(5, '2019', NULL),
(6, '2020', NULL),
(7, '2021', NULL),
(8, '2022', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `angkatanjurusan`
--

CREATE TABLE IF NOT EXISTS `angkatanjurusan` (
`ID_ANGJUR` int(11) NOT NULL,
  `ID_ANGKATAN` int(11) DEFAULT NULL,
  `ID_JURUSAN` int(11) DEFAULT NULL,
  `URUTANANGKATAN` varchar(255) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `angkatanjurusan`
--

INSERT INTO `angkatanjurusan` (`ID_ANGJUR`, `ID_ANGKATAN`, `ID_JURUSAN`, `URUTANANGKATAN`) VALUES
(1, 1, 1, '1 (RPL2015)'),
(2, 2, 1, '2 (RPL2016)'),
(3, 3, 1, '3 (RPL2017)'),
(4, 1, 2, '5 (M2015)'),
(5, 2, 2, '6 (M2016)'),
(6, 3, 2, '7 (M2017)'),
(7, 4, 1, '4 (RPL2018)'),
(8, 5, 1, '5 (RPL2019)'),
(9, 6, 1, '6 (RPL2020)');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE IF NOT EXISTS `jurusan` (
`ID_JURUSAN` int(11) NOT NULL,
  `NM_JURUSAN` mediumtext,
  `SING_JURUSAN` varchar(255) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`ID_JURUSAN`, `NM_JURUSAN`, `SING_JURUSAN`) VALUES
(1, 'Rekayasa Perangkat Lunak', 'RPL'),
(2, 'Teknik Pemesinan', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE IF NOT EXISTS `kelas` (
`ID_KELAS` int(11) NOT NULL,
  `NM_KELAS` varchar(20) DEFAULT NULL,
  `NM_GRADE` varchar(5) DEFAULT NULL,
  `ID_THNAJAR` int(11) DEFAULT NULL,
  `ID_JURUSAN` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`ID_KELAS`, `NM_KELAS`, `NM_GRADE`, `ID_THNAJAR`, `ID_JURUSAN`) VALUES
(1, 'x rpl 1', 'X', 1, 1),
(2, 'x rpl 2', 'X', 1, 1),
(3, 'xi rpl 1', 'XI', 1, 1),
(4, 'xi rpl 2', 'XI', 1, 1),
(5, 'xii rpl 1', 'XII', 1, 1),
(6, 'xii rpl 2', 'XII', 1, 1),
(9, 'x rpl 1', 'X', 2, 1),
(10, 'x rpl 2', 'X', 2, 1),
(11, 'xi rpl 1', 'XI', 2, 1),
(12, 'xi rpl 2', 'XI', 2, 1),
(13, 'xii rpl 1', 'XII', 2, 1),
(14, 'xii rpl 2', 'XII', 2, 1),
(17, 'x rpl 1', 'X', 3, 1),
(18, 'x rpl 2', 'X', 3, 1),
(19, 'xi rpl 1', 'XI', 3, 1),
(20, 'xi rpl 2', 'XI', 3, 1),
(21, 'xii rpl 1', 'XII', 3, 1),
(22, 'xii rpl 2', 'XII', 3, 1),
(23, 'x rpl 1', 'X', 4, 1),
(24, 'x rpl 2', 'X', 4, 1),
(25, 'xi rpl 1', 'XI', 4, 1),
(26, 'xi rpl 2', 'XI', 4, 1),
(27, 'xii rpl 1', 'XII', 4, 1),
(28, 'xii rpl 2', 'XII', 4, 1),
(29, 'x m 1', 'X', 1, 2),
(30, 'x m 2', 'X', 1, 2),
(31, 'xi m 1', 'XI', 1, 2),
(32, 'xi m 2', 'XI', 1, 2),
(33, 'xii m 1', 'XII', 1, 2),
(34, 'xii m 2', 'XII', 1, 2),
(35, 'x m 1', 'X', 2, 2),
(36, 'x m 2', 'X', 2, 2),
(37, 'xi m 1', 'XI', 2, 2),
(38, 'xi m 2', 'XI', 2, 2),
(39, 'xii m 1', 'XII', 2, 2),
(40, 'xii m 2', 'XII', 2, 2),
(41, 'x m 1', 'X', 3, 2),
(42, 'x m 2', 'X', 3, 2),
(43, 'xi m 1', 'XI', 3, 2),
(44, 'xi m 2', 'XI', 3, 2),
(45, 'xii m 1', 'XII', 3, 2),
(46, 'xii m 2', 'XII', 3, 2),
(47, 'x m 1', 'X', 4, 2),
(48, 'x m 2', 'X', 4, 2),
(49, 'xi m 1', 'XI', 4, 2),
(50, 'xi m 2', 'XI', 4, 2),
(51, 'xii m 1', 'XII', 4, 2),
(52, 'xii m 2', 'XII', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `kelassiswa`
--

CREATE TABLE IF NOT EXISTS `kelassiswa` (
  `ID_SISWA` int(11) DEFAULT NULL,
  `ID_KELAS` int(11) DEFAULT NULL,
  `ID_MUTASI` int(11) DEFAULT NULL,
  `TGL_MUTASI` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelassiswa`
--

INSERT INTO `kelassiswa` (`ID_SISWA`, `ID_KELAS`, `ID_MUTASI`, `TGL_MUTASI`) VALUES
(1, 1, 1, '2017-07-17 00:00:00'),
(1, 12, 1, '2018-07-26 00:00:00'),
(1, 21, 3, '2019-07-26 00:00:00'),
(2, 42, 1, '2019-07-04 00:00:00'),
(2, 49, 4, NULL),
(3, 47, 4, NULL),
(4, 2, 1, '2017-07-17 00:00:00'),
(4, 12, 1, '2018-07-26 00:00:00'),
(4, 22, 3, '2019-07-05 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `lanjut`
--

CREATE TABLE IF NOT EXISTS `lanjut` (
`ID_LANJUT` int(11) NOT NULL,
  `NM_LANJUT` varchar(20) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `lanjut`
--

INSERT INTO `lanjut` (`ID_LANJUT`, `NM_LANJUT`) VALUES
(1, 'Kerja'),
(2, 'Wirausaha'),
(3, 'Kuliah'),
(4, 'Lain-lain');

-- --------------------------------------------------------

--
-- Table structure for table `lulusan`
--

CREATE TABLE IF NOT EXISTS `lulusan` (
`ID_LULUSAN` int(11) NOT NULL,
  `NM_LULUSAN` varchar(20) DEFAULT NULL,
  `THN_LULUSAN` varchar(255) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `lulusan`
--

INSERT INTO `lulusan` (`ID_LULUSAN`, `NM_LULUSAN`, `THN_LULUSAN`) VALUES
(1, '2018', NULL),
(2, '2019', NULL),
(3, '2020', NULL),
(4, '2021', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lulusanjurusan`
--

CREATE TABLE IF NOT EXISTS `lulusanjurusan` (
`ID_LUSJUR` int(11) NOT NULL,
  `ID_LULUSAN` int(11) DEFAULT NULL,
  `ID_JURUSAN` int(11) DEFAULT NULL,
  `URUTANLULUSAN` varchar(255) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `lulusanjurusan`
--

INSERT INTO `lulusanjurusan` (`ID_LUSJUR`, `ID_LULUSAN`, `ID_JURUSAN`, `URUTANLULUSAN`) VALUES
(1, 1, 1, '1 (RPL2018)'),
(2, 2, 1, '2 (RPL2019)'),
(3, 1, 2, '5 (M2018)'),
(4, 2, 2, '6 (M2019)'),
(5, 3, 1, '3 (RPL2020)');

-- --------------------------------------------------------

--
-- Table structure for table `mutasi`
--

CREATE TABLE IF NOT EXISTS `mutasi` (
`ID_MUTASI` int(11) NOT NULL,
  `NM_MUTASI` varchar(20) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `mutasi`
--

INSERT INTO `mutasi` (`ID_MUTASI`, `NM_MUTASI`) VALUES
(1, 'Naik Kelas'),
(2, 'Tidak Naik'),
(3, 'Lulus'),
(4, 'Aktif'),
(5, 'Lain-lain');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE IF NOT EXISTS `siswa` (
`ID_SISWA` int(11) NOT NULL,
  `ID_STATUS` int(11) DEFAULT NULL,
  `ID_ANGJUR` int(11) DEFAULT NULL,
  `ID_LUSJUR` int(11) DEFAULT NULL,
  `NIS_SISWA` varchar(10) DEFAULT NULL,
  `NM_SISWA` varchar(30) DEFAULT NULL,
  `GENDER_SISWA` varchar(1) DEFAULT NULL,
  `EMAIL_SISWA` varchar(255) DEFAULT NULL,
  `AGAMA_SISWA` varchar(15) DEFAULT NULL,
  `TMPLAHIR_SISWA` varchar(20) DEFAULT NULL,
  `TGLLAHIR_SISWA` datetime DEFAULT NULL,
  `TGL_DITERIMA` datetime DEFAULT NULL,
  `GRADE_DITERIMA` varchar(10) DEFAULT NULL,
  `TGL_KELUAR` datetime DEFAULT NULL,
  `GRADE_KELUAR` varchar(10) DEFAULT NULL,
  `KET_KELUAR` varchar(255) DEFAULT NULL,
  `NM_IBU` varchar(30) DEFAULT NULL,
  `NM_AYAH` varchar(40) DEFAULT NULL,
  `ANAK_KE` varchar(10) DEFAULT NULL,
  `ALAMAT_SISWA` varchar(50) DEFAULT NULL,
  `ALAMAT_ORTU` varchar(50) DEFAULT NULL,
  `KERJA_AYAH` varchar(30) DEFAULT NULL,
  `DETAIL_KERJA_AYAH` varchar(20) DEFAULT NULL,
  `KERJA_IBU` varchar(20) DEFAULT NULL,
  `DETAIL_KERJA_IBU` varchar(30) DEFAULT NULL,
  `ASAL_SEKOLAH` varchar(40) DEFAULT NULL,
  `JENIS_ASAL_SEKOLAH` varchar(20) DEFAULT NULL,
  `NO_IJAZAH_ASAL` varchar(30) DEFAULT NULL,
  `POTO_SISWA` varchar(255) DEFAULT NULL,
  `SCAN_IJZH_SMP` varchar(255) DEFAULT NULL,
  `SCAN_IJZH_SMK` varchar(255) DEFAULT NULL,
  `SCAN_KARTUPLJR` varchar(255) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`ID_SISWA`, `ID_STATUS`, `ID_ANGJUR`, `ID_LUSJUR`, `NIS_SISWA`, `NM_SISWA`, `GENDER_SISWA`, `EMAIL_SISWA`, `AGAMA_SISWA`, `TMPLAHIR_SISWA`, `TGLLAHIR_SISWA`, `TGL_DITERIMA`, `GRADE_DITERIMA`, `TGL_KELUAR`, `GRADE_KELUAR`, `KET_KELUAR`, `NM_IBU`, `NM_AYAH`, `ANAK_KE`, `ALAMAT_SISWA`, `ALAMAT_ORTU`, `KERJA_AYAH`, `DETAIL_KERJA_AYAH`, `KERJA_IBU`, `DETAIL_KERJA_IBU`, `ASAL_SEKOLAH`, `JENIS_ASAL_SEKOLAH`, `NO_IJAZAH_ASAL`, `POTO_SISWA`, `SCAN_IJZH_SMP`, `SCAN_IJZH_SMK`, `SCAN_KARTUPLJR`) VALUES
(1, 3, 2, 2, 'nis1', 'siswa1al', 'l', 'siswa1al@mail.com', 'agama1', 'tmp1', '2001-12-02 00:00:00', '2016-08-02 00:00:00', 'X', '2019-06-02 00:00:00', 'XII', NULL, 'ibu1', 'ayah1', 'anakke1', 'alamat1', 'almtortu1', 'krja1', 'detay1', 'krji1', 'detib1', 'asal1', 'jenis1', 'noijzh1', NULL, NULL, NULL, NULL),
(2, 1, 8, NULL, 'nis2', 'siswa2', 'p', 'siswa2@mail.com', 'agama2', 'tmp2', '2005-10-13 00:00:00', '2019-08-06 00:00:00', 'X', NULL, NULL, NULL, 'ibu2', 'ayah2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 1, 9, NULL, 'nis3', 'siswa3', 'l', NULL, 'agama3', 'tmp3', '2006-07-15 00:00:00', '2020-08-08 00:00:00', 'X', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 3, 2, 2, 'nis4', 'siswa4al', 'p', 'siswa4al@mail.com', 'ag4', 'tmp4', '2001-09-06 00:00:00', '2016-08-02 00:00:00', 'X', '2019-06-02 00:00:00', 'XII', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `siswalanjut`
--

CREATE TABLE IF NOT EXISTS `siswalanjut` (
  `ID_SISWA` int(11) DEFAULT NULL,
  `ID_LANJUT` int(11) DEFAULT NULL,
  `TGL_MULAI` datetime DEFAULT NULL,
  `TGL_SELESAI` datetime DEFAULT NULL,
  `JENIS_BIDANG` mediumtext,
  `NM_INSTANSI` mediumtext,
  `POSISI` varchar(255) DEFAULT NULL,
  `PENDAPATAN` int(11) DEFAULT NULL,
  `JURUSAN_KUL` mediumtext,
  `JENJANG_KUL` varchar(255) DEFAULT NULL,
  `IPK` decimal(3,2) DEFAULT NULL,
  `LOKASI_PROP` varchar(255) DEFAULT NULL,
  `LOKASI_KOTAKAB` varchar(255) DEFAULT NULL,
  `ALAMAT_INSTANSI` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswalanjut`
--

INSERT INTO `siswalanjut` (`ID_SISWA`, `ID_LANJUT`, `TGL_MULAI`, `TGL_SELESAI`, `JENIS_BIDANG`, `NM_INSTANSI`, `POSISI`, `PENDAPATAN`, `JURUSAN_KUL`, `JENJANG_KUL`, `IPK`, `LOKASI_PROP`, `LOKASI_KOTAKAB`, `ALAMAT_INSTANSI`) VALUES
(1, 1, '2020-11-18 00:00:00', NULL, 'IT', 'PT. Maju Jaya', 'HRD', 3000000, NULL, NULL, NULL, 'Jawa Barat', 'Kota Bandung', 'Jl. Ujung Berung 51'),
(1, 3, '2019-08-07 00:00:00', NULL, NULL, 'Universitas Pendidikan Indonesia', NULL, 0, 'ilkom', 'S1', '0.00', 'Jawa Barat', 'Kota Bandung', 'Jl. Setiabudi 223'),
(4, 2, '2019-03-19 00:00:00', NULL, 'Kuliner', 'Rumah Sosis', 'Manager QC', 5000000, NULL, NULL, '0.00', 'DKI Jakarta', 'Jakarta Barat', 'Jl. Pattimura 42 Kedoya');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
`ID_STATUS` int(11) NOT NULL,
  `NM_STATUS` varchar(20) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`ID_STATUS`, `NM_STATUS`) VALUES
(1, 'Siswa Aktif'),
(2, 'Pindah Keluar'),
(3, 'Alumni');

-- --------------------------------------------------------

--
-- Table structure for table `tahunajar`
--

CREATE TABLE IF NOT EXISTS `tahunajar` (
`ID_THNAJAR` int(11) NOT NULL,
  `NM_THNAJAR` varchar(20) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tahunajar`
--

INSERT INTO `tahunajar` (`ID_THNAJAR`, `NM_THNAJAR`) VALUES
(1, '2016/2017'),
(2, '2017/2018'),
(3, '2018/2019'),
(4, '2019/2020'),
(5, '2020/2021'),
(6, '2015/2016');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `angkatan`
--
ALTER TABLE `angkatan`
 ADD PRIMARY KEY (`ID_ANGKATAN`);

--
-- Indexes for table `angkatanjurusan`
--
ALTER TABLE `angkatanjurusan`
 ADD PRIMARY KEY (`ID_ANGJUR`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
 ADD PRIMARY KEY (`ID_JURUSAN`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
 ADD PRIMARY KEY (`ID_KELAS`);

--
-- Indexes for table `lanjut`
--
ALTER TABLE `lanjut`
 ADD PRIMARY KEY (`ID_LANJUT`);

--
-- Indexes for table `lulusan`
--
ALTER TABLE `lulusan`
 ADD PRIMARY KEY (`ID_LULUSAN`);

--
-- Indexes for table `lulusanjurusan`
--
ALTER TABLE `lulusanjurusan`
 ADD PRIMARY KEY (`ID_LUSJUR`);

--
-- Indexes for table `mutasi`
--
ALTER TABLE `mutasi`
 ADD PRIMARY KEY (`ID_MUTASI`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
 ADD PRIMARY KEY (`ID_SISWA`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
 ADD PRIMARY KEY (`ID_STATUS`);

--
-- Indexes for table `tahunajar`
--
ALTER TABLE `tahunajar`
 ADD PRIMARY KEY (`ID_THNAJAR`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `angkatan`
--
ALTER TABLE `angkatan`
MODIFY `ID_ANGKATAN` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `angkatanjurusan`
--
ALTER TABLE `angkatanjurusan`
MODIFY `ID_ANGJUR` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
MODIFY `ID_JURUSAN` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
MODIFY `ID_KELAS` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `lanjut`
--
ALTER TABLE `lanjut`
MODIFY `ID_LANJUT` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `lulusan`
--
ALTER TABLE `lulusan`
MODIFY `ID_LULUSAN` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `lulusanjurusan`
--
ALTER TABLE `lulusanjurusan`
MODIFY `ID_LUSJUR` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `mutasi`
--
ALTER TABLE `mutasi`
MODIFY `ID_MUTASI` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
MODIFY `ID_SISWA` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
MODIFY `ID_STATUS` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tahunajar`
--
ALTER TABLE `tahunajar`
MODIFY `ID_THNAJAR` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
