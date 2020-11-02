-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 16, 2020 at 03:54 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id15073105_temujanji`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id_booking` int(11) NOT NULL,
  `date` text NOT NULL,
  `timeslot` varchar(100) NOT NULL,
  `kod_lokasi` int(11) NOT NULL,
  `kod_pengguna` int(11) NOT NULL,
  `kod_servis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id_booking`, `date`, `timeslot`, `kod_lokasi`, `kod_pengguna`, `kod_servis`) VALUES
(11, '2020-10-15', '0830-0845', 204, 114, 401),
(12, '2020-10-19', '1400-1415', 202, 115, 402),
(13, '2020-10-31', '0800-0815', 202, 116, 401),
(14, '2020-10-09', '0830-0845', 203, 117, 402),
(15, '2020-10-21', '0900-0915', 212, 118, 401),
(16, '2020-10-21', '0845-0900', 203, 119, 401),
(17, '2020-10-21', '1015-1030', 204, 121, 402),
(18, '2020-10-09', '0800-0815', 205, 120, 401),
(19, '2020-10-09', '0800-0815', 201, 120, 402),
(20, '2020-10-11', '0800-0815', 204, 120, 403),
(21, '2020-10-11', '0800-0815', 217, 120, 404),
(22, '2020-10-18', '0800-0815', 203, 120, 405),
(23, '2020-10-22', '0800-0815', 202, 120, 406),
(24, '2020-10-13', '0800-0815', 203, 120, 407),
(25, '2020-10-10', '0900-0915', 204, 122, 401),
(26, '2020-10-17', '0915-0930', 208, 123, 404),
(27, '2020-10-30', '0930-0945', 209, 124, 407),
(28, '2020-10-28', '0930-0945', 205, 125, 405),
(29, '2020-10-13', '0900-0915', 205, 126, 401),
(30, '2020-10-09', '0900-0915', 212, 127, 401),
(31, '2020-10-24', '0900-0915', 203, 119, 404),
(32, '2020-10-29', '0800-0815', 205, 128, 402),
(33, '2020-10-10', '1230-1245', 203, 129, 401),
(34, '2020-10-17', '0800-0815', 208, 131, 401),
(35, '2020-10-10', '0830-0845', 202, 132, 401),
(36, '2020-10-15', '0815-0830', 203, 132, 402),
(37, '2020-10-14', '0830-0845', 201, 132, 401),
(38, '2020-10-22', '0845-0900', 202, 132, 401),
(39, '2020-10-29', '0830-0845', 202, 119, 401),
(40, '2020-10-05', '0800-0815', 201, 115, 401),
(41, '2020-10-21', '0800-0815', 201, 132, 401),
(42, '2020-11-06', '0815-0830', 202, 135, 405),
(43, '2020-10-23', '0900-0915', 201, 137, 401),
(44, '2020-10-11', '0830-0845', 202, 132, 402),
(45, '2020-10-23', '0800-0815', 201, 132, 402),
(46, '2020-10-22', '0800-0815', 201, 132, 405),
(47, '2020-10-15', '0800-0815', 201, 132, 401),
(48, '2020-10-16', '0815-0830', 202, 138, 401),
(49, '2020-10-14', '0800-0815', 202, 132, 401),
(50, '2020-10-13', '0815-0830', 202, 132, 401);

-- --------------------------------------------------------

--
-- Table structure for table `loginpengguna`
--

CREATE TABLE `loginpengguna` (
  `kod_pengguna` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loginpengguna`
--

INSERT INTO `loginpengguna` (`kod_pengguna`, `username`, `email`, `password`) VALUES
(114, 'Sabrina Bahari', 'ayusbn69@gmail.com', 'rina21'),
(115, 'Zura', 'azura@gmail.com', 'azura'),
(116, 'Noor idayu bt kamarudin', 'nooridayu.kamarudin5678@gmail.com', 'abcdef'),
(117, 'Nur Adriana', 'adrianacullen2418@gmail.com', 'haha123'),
(118, 'Wanida azeera ', 'wanidawandisupian03@gmail.com', 'wanida19'),
(119, 'nur adelia aminah ', 'adeliaaminah6113@gmail.com', '12345'),
(120, 'ahmad izhar zulqarnain ', 'jjizhar@gmail.com', 'izharzul8885'),
(121, 'Hamdan Bin Ali', 'hamdan76@gmail.com', 'hamdan76'),
(122, 'Zubeidah Yusof', 'zyusof213@gmail.com', '123zubeidah'),
(123, 'Norhidayu Kassim', 'ayusbn69@gmail.com', 'ayu69'),
(124, 'Nooraman', 'noor5698@hotmail.com', 'atok78'),
(125, 'Nur Amelina', 'amycutie23@gmail.com', 'amy6789'),
(126, 'M. Noor Fahmi Ruzaini', 'sprintermiji@gmail.com', '12345'),
(127, 'Aizeq Imran', 'aizeqimrn@gmail.com', 'abcd1234'),
(128, 'nursyazmin ', 'nursyazminezman@gmail.com', 'syzmin.29'),
(129, 'NURUL ARDINI BINTI KHAIRULAZMI', 'nrlardini.k@gmail.com', 'dini0194'),
(130, 'Muhd yusri', 'yusrijohari204@gmail.com', 'yusri2404'),
(131, 'SITI MAISARAH BINTI SAYHEEZAM', 'Smysarah@gmail.com', '030422011082'),
(132, 'admin', 'admin@gmail.com', '12345'),
(133, 'Nazidah Binti Mohsen', 'dynaz0202@gmail.com', 'Azee083232'),
(134, 'Muhammad Ameen Bin Atan', 'ameinatan@gmail.com', 'ac010569'),
(135, 'Ad', 'ad@gmail.com', '12'),
(136, 'Aia', 'saleh@gmail.com', '1234'),
(138, 'Bumidagang', 'rinasab2201@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `id_lokasi` int(11) NOT NULL,
  `nama_lokasi` varchar(100) NOT NULL,
  `kod_lokasi` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lokasi`
--

INSERT INTO `lokasi` (`id_lokasi`, `nama_lokasi`, `kod_lokasi`) VALUES
(1, 'Jabatan Pendaftaran Negara (Cawangan Kota Tinggi)\r\nWisma Kt Yap, 546, Jalan Abdullah, Pekan Kota Tin', 201),
(2, 'Jabatan Pendaftaran Negara Negeri Johor\r\nKompleks Kementerian Dalam Negeri Taman, Setia Tropika, 812', 202),
(3, 'JPN Pasir Gudang\r\nKawasan Perindustrian Pasir Gudang, 81700 Pasir Gudang, Johor', 203),
(4, 'Jabatan Pendaftaran Negara, Kulai\r\n445, Jalan Kenanga 29/11, Bandar Indahpura, 81000 Kulai, Johor', 204),
(5, 'Jabatan Pendaftaran Negara\r\n3rd floor, UTC, 65, Jalan Trus, 80000 Johor Bahru, Johor', 205),
(6, 'National Registration Department Kota Tinggi Branch\r\nPekan Kota Tinggi, 81900 Kota Tinggi, Johor', 206),
(7, 'Jabatan Pendaftaran Negara, Daerah Mersing\r\n1D, Jalan Abu Bakar, Mersing Kechil, 86800 Mersing, Joho', 207),
(8, 'Jabatan Pendaftaran Negara (JPN) Muar\r\nWisma Regensi, Ptd, Jalan Bakri, Taman Tun Dr Ismail, 84000 M', 208),
(9, 'Jabatan Pendaftaran Negara\r\nJalan Dataran 2, Taman Sentosa, 84900 Tangkak, Johor', 209),
(10, 'Jabatan Pendaftaran Negara Daerah Segamat\r\n15, Jalan Ismail, Kampung Gubah, 85000 Segamat, Johor', 210),
(11, 'Jabatan Pendaftaran Negara Rengit\r\nJalan Rengit Indah, 83100 Rengit, Johor', 211),
(12, 'UTC Pasir Gudang Johor\r\nKompleks Pusat Bandar Pasir Gudang, Aras 2, 81700 Pasir Gudang, Johor', 212),
(13, 'Jabatan Pendaftaran Negara\r\nTingkat 1, Bangunan Gunasama Persekutuan, Jalan Bakau Condong, 83000 Bat', 213),
(14, 'Jabatan Pendaftaran Negara Simpang Renggam\r\nNo 22, Jln Seri Indah 2, Taman Seri Indah, 86200 Simpang', 214),
(15, 'Jabatan Pendaftaran Negara Daerah Kecil Yong PENG\r\nNo. 3, Jalan Persiaran Cahaya Baru, 83700 Yong PE', 215),
(16, 'Jabatan Pendaftaran Negara Daerah Kluang\r\nAras Bawah, Bangunan Persekutuan, 86000 Kluang, Johor', 216),
(17, 'Jabatan Pendaftaran Negara Daerah Pontian, Aras Bawah, Wisma Kariah, No. 349, Jalan Pejabat, 82000 P', 217),
(18, 'Jabatan Pendaftaran Negara Daerah Tangkak\r\n Jalan Dataran 2, 84900 Ledang, Johor', 218),
(19, 'Jabatan Pendaftaran Negara Cawangan RTC Kulaijaya\r\nTerminal Bas Kulaijaya, 81000 Kulaijaya, Johor', 219);

-- --------------------------------------------------------

--
-- Table structure for table `servis`
--

CREATE TABLE `servis` (
  `id_servis` int(11) NOT NULL,
  `nama_servis` varchar(100) NOT NULL,
  `kod_servis` int(11) NOT NULL,
  `imej` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `servis`
--

INSERT INTO `servis` (`id_servis`, `nama_servis`, `kod_servis`, `imej`) VALUES
(1, 'Identification card', 401, 'ic.png'),
(2, 'Birth certificate', 402, 'kelahiran.png'),
(3, 'Death registration', 403, 'mati.png'),
(4, 'Adoption', 404, 'angkat.png'),
(5, 'Marriage', 405, 'perkahwinan.png'),
(6, 'Divorce', 406, 'penceraian.png'),
(7, 'Citizenship status', 407, 'status.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id_booking`);

--
-- Indexes for table `loginpengguna`
--
ALTER TABLE `loginpengguna`
  ADD PRIMARY KEY (`kod_pengguna`);

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id_lokasi`);

--
-- Indexes for table `servis`
--
ALTER TABLE `servis`
  ADD PRIMARY KEY (`id_servis`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id_booking` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `loginpengguna`
--
ALTER TABLE `loginpengguna`
  MODIFY `kod_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id_lokasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `servis`
--
ALTER TABLE `servis`
  MODIFY `id_servis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
