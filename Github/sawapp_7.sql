-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2021 at 07:41 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sawapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(4) NOT NULL,
  `nik` varchar(13) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nik`, `username`, `password`) VALUES
(0, '6320111022321', 'sapri', 'sapri');

-- --------------------------------------------------------

--
-- Table structure for table `isi_penilaian`
--

CREATE TABLE `isi_penilaian` (
  `id_isi_penilaian` text NOT NULL,
  `id_penilaian` int(4) NOT NULL,
  `nik_karyawan` varchar(13) NOT NULL,
  `nama` text NOT NULL,
  `jabatan` text NOT NULL,
  `masa_kerja` int(2) NOT NULL,
  `penilaian_kerja` float NOT NULL,
  `perilaku` float NOT NULL,
  `norm_masa_kerja` float NOT NULL,
  `norm_penilaian_kerja` float NOT NULL,
  `norm_perilaku` float NOT NULL,
  `hasil` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `isi_penilaian`
--

INSERT INTO `isi_penilaian` (`id_isi_penilaian`, `id_penilaian`, `nik_karyawan`, `nama`, `jabatan`, `masa_kerja`, `penilaian_kerja`, `perilaku`, `norm_masa_kerja`, `norm_penilaian_kerja`, `norm_perilaku`, `hasil`) VALUES
('12421421420', 0, '1242142142', 'Sapri', 'komisaris', 2, 3, 4, 3, 4, 3, 0.5),
('352533252430', 0, '35253325243', 'Sapri', 'komisaris', 2, 3, 4, 4, 3, 5, 0.8),
('921842904230', 0, '92184290423', 'Sapri', 'komisaris', 2, 3, 4, 5, 5, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `nik` varchar(13) NOT NULL,
  `nama` text NOT NULL,
  `tempat_lahir` text NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jabatan` text NOT NULL,
  `tahun_masuk` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`nik`, `nama`, `tempat_lahir`, `tgl_lahir`, `jabatan`, `tahun_masuk`) VALUES
('1242142142', 'Sapri', 'Lamongan', '1990-09-19', 'komisaris', 2010),
('35253325243', 'Sapri', 'Lamongan', '1990-09-19', 'komisaris', 2010),
('6320111022321', 'Sapri', 'Lamongan', '1990-09-19', 'komisaris', 2010),
('6320111022411', 'Japri', 'Lamongan', '1992-09-19', 'komisaris', 2010),
('92184290423', 'Sapri', 'Lamongan', '1990-09-19', 'komisaris', 2010);

-- --------------------------------------------------------

--
-- Table structure for table `penilai`
--

CREATE TABLE `penilai` (
  `id_penilai` int(4) NOT NULL,
  `nik` varchar(13) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penilai`
--

INSERT INTO `penilai` (`id_penilai`, `nik`, `username`, `password`) VALUES
(0, '6320111022411', 'japri', 'jupri');

-- --------------------------------------------------------

--
-- Table structure for table `penilaian`
--

CREATE TABLE `penilaian` (
  `nik_penilai` varchar(13) NOT NULL,
  `id_penilaian` int(4) NOT NULL,
  `tgl_penilaian` date NOT NULL,
  `tahun_penilaian` year(4) NOT NULL,
  `status_penilaian` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penilaian`
--

INSERT INTO `penilaian` (`nik_penilai`, `id_penilaian`, `tgl_penilaian`, `tahun_penilaian`, `status_penilaian`) VALUES
('6320111022411', 0, '2021-06-20', 2021, b'1'),
('6320111022321', 1, '2021-06-20', 2021, b'0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `nik` (`nik`);

--
-- Indexes for table `isi_penilaian`
--
ALTER TABLE `isi_penilaian`
  ADD PRIMARY KEY (`id_isi_penilaian`(32)),
  ADD KEY `id_penilaian` (`id_penilaian`),
  ADD KEY `nik_karyawan` (`nik_karyawan`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `penilai`
--
ALTER TABLE `penilai`
  ADD PRIMARY KEY (`id_penilai`),
  ADD UNIQUE KEY `nik` (`nik`);

--
-- Indexes for table `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`id_penilaian`),
  ADD KEY `nik_penilai` (`nik_penilai`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`);

--
-- Constraints for table `isi_penilaian`
--
ALTER TABLE `isi_penilaian`
  ADD CONSTRAINT `isi_penilaian_ibfk_2` FOREIGN KEY (`id_penilaian`) REFERENCES `penilaian` (`id_penilaian`);

--
-- Constraints for table `penilai`
--
ALTER TABLE `penilai`
  ADD CONSTRAINT `penilai_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
