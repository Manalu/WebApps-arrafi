-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2018 at 04:42 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hebatweb_arrafi`
--

-- --------------------------------------------------------

--
-- Table structure for table `ajar`
--

CREATE TABLE `ajar` (
  `idajar` int(255) NOT NULL,
  `idmapel` varchar(255) NOT NULL,
  `nip` varchar(255) DEFAULT NULL,
  `thnajar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ajar`
--

INSERT INTO `ajar` (`idajar`, `idmapel`, `nip`, `thnajar`) VALUES
(1, 'BIND4', '0941213', '2016/2017'),
(2, 'BIND5jf', '1470616', '2016/2017'),
(3, 'BIND5lp6j', '0200709', '2016/2017'),
(4, 'BIND3', '0380311', '2016/2017'),
(5, 'BING3f4fj', '1150814', '2016/2017'),
(6, 'BING3lp', '0460611', '2016/2017'),
(7, 'BING4lp5fj', '0290410', '2016/2017'),
(8, 'BING5lp6j', '0450711', '2016/2017'),
(9, 'BSUN3', 'H041015', '2016/2017'),
(10, 'BSUN4', '0400311', '2016/2017'),
(11, 'BSUN56j', '0210709', '2016/2017'),
(12, 'MAT3fjp', '0390311', '2016/2017'),
(13, 'MAT3l4fj', '1490616', '2016/2017'),
(14, 'MAT4l', '1120814', '2016/2017'),
(15, 'MAT4p5fj', '0140706', '2016/2017'),
(16, 'MAT5lp6j', '0250110', '2016/2017'),
(17, 'SBK5fj', '', '2016/2017'),
(18, 'SBK5lp6j', '0210709', '2016/2017'),
(19, 'PAI3', '1350815', '2016/2017'),
(20, 'PAI4', '1171014', '2016/2017'),
(21, 'PAI5flp6j', '0430411', '2016/2017'),
(22, 'PAI5j', '0300410', '2016/2017'),
(23, 'PENJAS123', '0530112', '2016/2017'),
(24, 'PKPS3', '0460611', '2016/2017'),
(25, 'PKPS5lp6j', '0450711', '2016/2017'),
(26, 'PKPS45fj', '1480616', '2016/2017'),
(27, 'BIO3fj', '0150706', '2016/2017'),
(28, 'BIO3lp4lp', '0501111', '2016/2017'),
(29, 'BIO4fj5fj', 'H031213', '2016/2017'),
(30, 'BIO5lp6j', '0270110', '2016/2017'),
(31, 'FIS3lp', '0150706', '2016/2017'),
(32, 'FIS3lp4', '0980114', '2016/2017'),
(33, 'FIS5fj', 'H031213', '2016/2017'),
(34, 'FIS5lp6j', '0270110', '2016/2017'),
(35, '1TEMA1j', '1310615', '2016/2017'),
(36, '1TEMA1l', NULL, '2016/2017'),
(37, '1TEMA1p', '0230110', '2016/2017'),
(38, '1TEMA2j', '0170807', '2016/2017'),
(39, '1TEMA2l', '1470214', '2016/2017'),
(40, '1TEMA2p', '0810813', '2016/2017'),
(41, '2TEMA1j', '120115', '2016/2017'),
(42, '2TEMA1l', '1110814', '2016/2017'),
(43, '2TEMA1p', '0820913', '2016/2017'),
(44, '2TEMA2j', '0921213', '2016/2017'),
(45, '2TEMA2l', '0871113', '2016/2017'),
(46, '2TEMA2p', '0480711', '2016/2017'),
(47, 'BIND1', '230110', '2015/2016'),
(48, 'BIND2', '300410', '2015/2016'),
(49, 'MAT1fjp', '300410', '2015/2016'),
(50, 'MAT2fjp', '230110', '2015/2016'),
(51, 'MAT3', '820913', '2015/2016'),
(52, 'Pen2', '820914', '2015/2016'),
(53, 'Pen3', '820914', '2015/2016'),
(54, 'BINDL2', '300410', '2015/2016'),
(55, 'Pen4', '300410', '2015/2016'),
(56, 'Mat4', '200410', '2015/2016'),
(57, 'BIND1', '230110', '2015/2016'),
(58, 'BIND2', '300410', '2015/2016'),
(59, 'MAT1fjp', '300410', '2015/2016'),
(60, 'MAT2fjp', '230110', '2015/2016'),
(61, 'MAT3', '820913', '2015/2016'),
(62, 'Pen2', '820914', '2015/2016'),
(63, 'Pen3', '820914', '2015/2016'),
(64, 'BINDL2', '300410', '2015/2016'),
(65, 'Pen4', '300410', '2015/2016'),
(66, 'Mat4', '300410', '2015/2016');

-- --------------------------------------------------------

--
-- Table structure for table `asal_mula`
--

CREATE TABLE `asal_mula` (
  `asal_anak` varchar(255) NOT NULL,
  `nama_asal` varchar(255) NOT NULL,
  `no_tahun_sk` varchar(255) NOT NULL,
  `lama_belajar` int(255) NOT NULL,
  `tgl_terima` date NOT NULL,
  `no_pendaftaran` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bab`
--

CREATE TABLE `bab` (
  `idbab` varchar(255) NOT NULL,
  `idmapel` varchar(255) NOT NULL,
  `idkelas` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `semester` int(255) NOT NULL,
  `KD` text NOT NULL,
  `thanjar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bab`
--

INSERT INTO `bab` (`idbab`, `idmapel`, `idkelas`, `nama`, `semester`, `KD`, `thanjar`) VALUES
('BIND5j1', 'BIND5jf', '5j', 'Menulis', 9, '', '2016/2017'),
('BIND4j1', 'BIND5lp6j', '6j', 'Menulis', 11, '', '2016/2017'),
('BSUN6j1', 'BSUN56j', '6j', 'Berbicara', 11, '', '2016/2017'),
('PAI5j1', 'PAI5j', '5j', 'Hafalan Al Quran', 9, '', '2016/2017'),
('BIND1j1', 'BIND1', '1j', 'Menulis', 1, '', '2015/2016'),
('BIND2l1', 'BIND2', '2l', 'Menulis Huruf Sambung', 1, '', '2015/2016'),
('BINDL2l', 'BINDL2', '2l', 'Sinonim Dan Antonim', 1, '', '2015/2016'),
('MAT1fjp1', 'MAT1fjp', '1j', 'Menghitung', 1, '', '2015/2016'),
('MAT2fjp1', 'MAT2fjp', '2l', 'Menghitung Perkalian', 1, '', '2015/2016'),
('Mat2fjp2', 'Mat4', '2l', 'Menjunmlahkan', 1, '', '2015/2016'),
('Mat3', 'MAT3', '3j', 'Menghitung Perkalian 1-100', 1, '', '2015/2016'),
('Penj3', 'Pen3', '3j', 'Lari jauh', 1, '', '2015/2016'),
('Penjl2', 'Pen2', '2l', 'Renang', 1, '', '2015/2016'),
('Penl4', 'Pen4', '2l', 'Lari Pendek', 1, '', '2015/2016');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kode_barang` varchar(255) NOT NULL,
  `id_jenis` varchar(255) NOT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `merk_barang` varchar(255) DEFAULT NULL,
  `harga` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kode_barang`, `id_jenis`, `nama_barang`, `merk_barang`, `harga`) VALUES
('B-01', 'J-002', 'Buku', 'Sinar Dunia', 10000),
('b-02', 'J-002', 'Buku2', 'ENRN', 10000),
('b-03', 'J-002', 'pulpen', 'Standart', 5000),
('B-04', 'J-002', 'Pensil', 'KIL', 15000),
('B-05', 'J-002', 'Kertas', 'Sindu', 10000),
('B-07', 'J-001', 'Kursi', 'Olympic', 500000),
('B-10', 'J-001', 'Meja', 'Olympic', 1000000);

-- --------------------------------------------------------

--
-- Table structure for table `buku_tamu`
--

CREATE TABLE `buku_tamu` (
  `id_buku_tamu` varchar(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` text,
  `no_hp` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `asal` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku_tamu`
--

INSERT INTO `buku_tamu` (`id_buku_tamu`, `nama`, `alamat`, `no_hp`, `username`, `asal`) VALUES
('0987654321', 'Laila', 'PGA', '087764605619', 'Laila', 'Pemalang'),
('12345', 'Mimin', 'Bandung', '087764605619', 'Mimin', 'Bandung'),
('3273165904720006', 'Imas2002', 'Jl Sukakarya II No. 4 Rt. 004 Rw. 001 Sukagalih Sukajadi Bandung', '08122001392', 'imas.rohimah72', 'Kota Bandung'),
('34567', 'Iqbal', 'Bandung', '78654321', 'Iqbal', 'Palembang'),
('53646', 'Ghibran', 'Bandung', '3124563467', 'Ghibran', 'klaten'),
('87654', 'Aulia', 'Bandung', '2345678465', 'Aulia', 'Lombok'),
('8765432123', 'Rahmawan', 'Bandung', '876543224', 'Rahmawan', 'Bandung');

-- --------------------------------------------------------

--
-- Table structure for table `daemons`
--

CREATE TABLE `daemons` (
  `Start` text NOT NULL,
  `Info` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_siswa`
--

CREATE TABLE `data_siswa` (
  `nis` varchar(255) NOT NULL,
  `nisn` varchar(255) DEFAULT NULL,
  `nama_siswa` varchar(255) DEFAULT NULL,
  `jekel` char(1) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `nama_ayah` varchar(255) DEFAULT NULL,
  `nama_ibu` varchar(255) DEFAULT NULL,
  `no_telp` char(13) DEFAULT NULL,
  `alamat` text,
  `kelurahan` varchar(255) DEFAULT NULL,
  `kecamatan` varchar(255) DEFAULT NULL,
  `kabupaten_kota` varchar(255) DEFAULT NULL,
  `kelas` char(1) DEFAULT NULL,
  `kelompok` varchar(255) DEFAULT NULL,
  `ijazah` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_siswa`
--

INSERT INTO `data_siswa` (`nis`, `nisn`, `nama_siswa`, `jekel`, `tempat_lahir`, `tanggal_lahir`, `nama_ayah`, `nama_ibu`, `no_telp`, `alamat`, `kelurahan`, `kecamatan`, `kabupaten_kota`, `kelas`, `kelompok`, `ijazah`) VALUES
('101101003', '0041478885', 'M. Abel Moksa Pratama', 'L', 'Bandung', '2003-03-29', 'Agung Riyadi', 'Vera Novita', '081322361256', 'Jl. Ekadaksa No. 7 Perum. Taman Cipadung Indah', 'Cipadung Kidul', 'Panyileukan', 'Kota Bandung', '6', 'Love', 'Belum'),
('101101005', '0041478898', 'Farhan Habibie Mukti ', 'L', 'Bandung', '2004-06-01', 'Mukti Ratno', 'Linda Susanti', '082218318381', 'Jl. Warung Jambu 55/ 127B', 'Kebon Kangkung', 'Kiaracondong', 'Kota Bandung', '6', 'Love', 'Belum'),
('101101010', '0041478899', 'Emerald Diaz Mansyur', 'L', 'Bandung', '2005-06-26', 'Cepi Budi M', 'Farina Misywar', '081322361256', 'Komp. Buah Batu Regency Blok F5-2', 'Kujangsari', 'Bandung Kidul', 'Kota Bandung', '6', 'Love', 'Belum'),
('101101021', '0041478913', 'Naja Zahira Hasna', 'P', 'Bandung', '2004-11-06', 'Wiwit Setyoko', 'Dhian Wahyu H.', '081322361256', 'Jl. Staf No. 32 RT 04 RW 08', 'Lingkar Selatan', 'Lengkong', 'Kota Bandung', '6', 'Love', 'Belum'),
('101101023', '0041478904', 'Reza Mohamad Akbar', 'L', 'Bandung', '2004-11-06', 'Rommy Ramdhani', 'Vita Priantina D', '082218318381', 'Jl. Sekejati III No. 1 RT 008 RW 011', 'Sukapura', 'Kiaracondong', 'Kota Bandung', '6', 'Love', 'Belum'),
('101101030', '0041478877', 'M. Rizki Zaki Muttaqien', 'L', 'Bengkulu', '2004-02-24', 'M. Ilmi Muttaqien', 'Rini Permatasari', '081322361256', 'Jl.Rancagoong Indah No.10', 'Gumuruh', 'Batununggal', 'Kota Bandung', '6', 'Love', 'Belum'),
('101101032', '0041478917', 'Alfan Muhamad Jibran', 'L', 'Bandung', '2004-04-19', 'Kiking Ahmad Syakir', 'Siti Yulia', '081322361256', 'Jl. Ciganitri Mukti No. 34 RT 04 RW 05', 'Cipagalo', 'Bojongsoang', 'Kabupaten Bandung', '6', 'Love', 'Belum'),
('101101038', '0041478907', 'Raissa Alodya Agatha', 'P', 'Garut', '2004-05-07', 'Ramlan Lubis', 'Liana Noer Yoestiani', '081322361256', 'Bumi Kiara II No.1A', 'Kebon Kangkung', 'Kiaracondong', 'Kota Bandung', '6', 'Love', 'Belum'),
('101101045', '0041478909', 'Mara Gaizka MK.', 'L', 'Bandung', '2004-09-05', 'Nurhikmah Kurniadi', 'Ely Riani', '082218318381', 'Jl. Kawaluyaan Indah III No.31 RT 02 RW 05', 'Jatisari', 'Buah Batu', 'Kota Bandung', '6', 'Love', 'Belum'),
('101101046', '0035572167', 'Alika Rahma Kadisha', 'P', 'Bandung', '2004-07-07', 'Wahjoedi Atmadja', 'Eka Sugiharti', '082218318381', 'Jl. Venus Barat IX No. 1 Metro Soekarno Hatta RT 04 RW 01', 'Manjahlega', 'Rancasari', 'Kota Bandung', '6', 'Love', 'Belum'),
('101101050', '0041478916', 'Mylo Aleffa Rahman', 'L', 'Jakarta', '2003-12-09', 'Ahmad Nur', 'Rima BRK', '082218318381', 'Jl. Venus Raya No.34 Komp. Margahayu Raya', 'Manjahlega', 'Rancasari', 'Kota Bandung', '6', 'Love', 'Belum'),
('101101057', '0041478918', 'Narga Naraya Andono', 'L', 'Makassar', '2004-03-08', 'Danny Andono', 'S.T Naila', '082218318381', 'Jl. Rinjani I No. 30 RT 005 RW 006 Pinus Regency', 'Cisaranten Wetan', 'Cinambo', 'Kota Bandung', '6', 'Love', 'Belum'),
('101101062', '0041478901', 'Muhammad Syafiq Aqilla', 'L', 'Yogyakarta', '2004-06-28', 'Bambang Satya W', 'Nur Khayati', '081322361256', 'Jl. Yupiter Selatan IV No. 8-10 Blok A-2 Komp. Margahayu Raya Barat', 'Sekejati', 'Buah Batu', 'Kota Bandung', '6', 'Love', 'Belum'),
('101101063', '0035572162', 'M. Rayhan Faisal', 'L', 'Bandung', '2004-07-23', 'Moh. Bahrun Mukhid', 'Ida Nur R.', '082218318381', 'Taman Rafflesia TH II Kawaluyaan', 'Sukapura', 'Kiaracondong', 'Kota Bandung', '6', 'Love', 'Belum'),
('131401025', '0071948943', 'Alya Hanan Alimah', 'P', 'Bandung', '2007-04-15', 'Wawa Yuwana', 'Sari Handayani', '082218318381', 'Jl. Maleer Timur II No. 33 RT 02 RW 05', 'Rancabolang', 'Gedebage', 'Kota Bandung', '3', 'Love', 'Belum'),
('131401067', '0063520939', 'Aliffathin Naufal Pamudji', 'L', 'Bandung', '2006-09-26', 'Alie Pamudji', 'Genita Cansrina', '082218318381', 'Jl. Cileutik No. 34 RT 03 RW 04', 'Batununggal', 'Bandung Kidul', 'Kota Bandung', '3', 'Love', 'Belum'),
('131401100', '0075395170', 'Alma Nailal Wibawa', 'P', 'Bandung', '2007-02-24', 'Agung Wibawa Sakti', 'Anjung Permata', '081322361256', 'Jl. Riung Wargi No. 17 Komp. Riung Bandung Permai', '', '', '', '3', 'Love', 'Belum'),
('141501001', '0079245053', 'Zaleeka Nayyara Aristiady', 'P', 'Bandung', '2007-09-09', 'Eppy Buchori Aristiady', 'Yoana Amelia Dewi', '082218318381', 'Jl. Parakan Ayu Raya No. 5', 'Batununggal', 'Bandung Kidul', 'Kota Bandung', '2', 'Joy', 'Belum'),
('141501002', '0085737791', 'Mourad Rajatta', 'L', 'Bandung', '2008-03-13', 'Sigit Hartono', 'Fitria Agustin', '082218318381', 'Mars IX No. 10 Margahayu Raya RT 4 RW 5', 'Manjahlega', 'Rancasari', 'Kota Bandung', '2', 'Peace', 'Belum'),
('141501003', '0086728386', 'Khasanta Bayu Uwaidha', 'L', 'Bandung', '2008-06-26', 'Isnawan Ghozie Uwaidha', ' Yunita Kusumawardhani', '082218318381', 'KPAD Pindad Utara D8.104 RT 01 RW 10', 'Kebonjayanti', 'Kiaracondong', 'Kota Bandung', '2', 'Joy', 'Belum'),
('141501004', '0087309219', 'Farrez Zihni Hendradinata', 'L', 'Bandung', '2008-03-04', 'Aris Hendradinata', 'Sofie Yusmira Oktane', '082218318381', 'Jl. Antakarya A31 Komplek Antabaru Endah', 'Margasari', 'Buah Batu', 'Kota Bandung', '2', 'Peace', 'Belum'),
('141501005', '0078753088', 'Ahmad Zaki Ridwan', 'L', 'Bandung', '2007-12-16', 'Ruly Husnie Ridwan', 'Kartika Wijaya Sari', '081322361256', 'Jl. Yupiter IV No. 5 RT 005 RW 002', 'Sekejati', 'Buah Batu', 'Kota Bandung', '2', 'Love', 'Belum'),
('141501006', '0081072260', 'Fathia Putri Andariani', 'P', 'Bandung', '2008-02-16', 'Arman Wahyudi', 'Ria Mulyasari', '081322361256', 'Jl. Waas A No. 5 RT 06 RW 01', 'Batununggal', 'Bandung Kidul', 'Kota Bandung', '2', 'Love', 'Belum'),
('141501007', '0077707282', 'Syakira  Ramadhina Setiadi', 'P', 'Bandung', '2007-10-11', 'Dedi Setiadi', '-', '082218318381', 'Gallery Kawaluyaan B-18 RT 005 RW 003', 'Jatisari', 'Buah Batu', 'Kota Bandung', '2', 'Joy', 'Belum'),
('141501008', '0077044304', 'Fathiyyah Haura Azizah', 'P', 'Bandung', '2007-11-12', 'Yanuandri Putrasari', 'Hafiziani Eka Putri', '082218318381', 'Jl. Ciganitri Mukti Timur 1 No. 17A RT 08 RW 11', 'cipagalo', 'Bojongsoang', 'Kota Bandung', '2', 'Joy', 'Belum'),
('141501009', '0081396373', 'Dhavier Maulana Abidzar', 'L', 'Bandung', '2008-01-14', 'Humisya Abubakar', 'Yanti Rohayanti', '082218318381', 'Jl. Margha Kencana Utara No. 10 RT 011 RW 009', 'Cijaura', 'Buah Batu', 'Kota Bandung', '2', 'Peace', 'Belum'),
('141501010', '0076889924', 'Ratu Kirana Amany Martamihardja', 'P', 'Semarang', '2008-03-04', 'Willy Budiman Martamihardja', 'Tantri Anjasti', '081322361256', 'Jl. Margahayu Raya Barat Blok N-2 No. 75A RT 009 RW 001', 'Sekejati', 'Buah Batu', 'Kota Bandung', '2', 'Peace', 'Belum'),
('141501011', '0081508369', 'Nayaka Fadil Adhika', 'L', 'Bandung', '2008-02-28', 'Nana Kurniawan', 'Marliya Ulfah', '082218318381', 'Pesona Ciwastra Permai C21 RT 09 RW 17', 'Margasari', 'Buah Batu', 'Kota Bandung', '2', 'Faith', 'Belum'),
('141501012', '0084683697', 'Azra Nurasyifa Khairunisa', 'P', 'Bandung', '2008-01-07', 'M. Ary Murti', 'Desi Anggraini', '081322361256', 'Jl. Batu Permata III No. 2', 'Cijaura', 'Buah Batu', 'Kota Bandung', '2', 'Faith', 'Belum'),
('141501013', '0075703112', 'Fairuz Rakhsa Hidayat', 'L', 'Bandung', '2007-08-09', 'Arief Rachmat Hidayat', 'Yuli Djuliani', '082218318381', 'Jl. Bahagia Permai VI No. 24 RT 05 RW 02', 'Buah Batu', 'Margacinta', 'Kota Bandung', '2', 'Love', 'Belum'),
('141501014', '0074414775', 'Nihed Faiyruz Sulaeman', 'L', 'Bandung', '2007-09-04', 'Sulaeman Nihed', 'Novi Lisnawaty', '082218318381', 'Komp. Kiara Sari Jl. Kiara Sari VII No. 43 RT 004 RW 001', 'Margasari', 'Buah Batu', 'Kota Bandung', '2', 'Faith', 'Belum'),
('141501015', '0089384442', 'Fauzan Maliq Al-Ghazi', 'L', 'Bandung', '2008-03-16', 'Taupiq Amirudin', 'Eva Novarini', '082218318381', 'Jl. Maleer V No. 303/118 RT 05 RW 01', 'Maleer', 'Batununggal', 'Kota Bandung', '2', 'Love', 'Belum'),
('141501016', '0073040835', 'Ghifari Alifandri Affan', 'L', 'Bandung', '2007-11-03', 'Julberi Ramdhon', 'Ike Puri Purnama Dewi', '081322361256', 'Cluster Patramaya No. 21', 'Mekarjaya', 'Rancasari', 'Kota Bandung', '2', 'Peace', 'Belum'),
('141501017', '0077752740', 'Mazaya Fatimah Azzahra', 'P', 'Bandung', '2007-12-03', 'Ferdiansyah Ritonga', 'Intan Pramesti Dewi', '082218318381', 'Komp. Mega Brata No. 163', 'Margasari', 'Buah Batu', 'Kota Bandung', '2', 'Peace', 'Belum'),
('141501018', '0073651540', 'Dzikra Athallah Kawiswara', 'L', 'Bandung', '2007-10-06', 'Asif Rianto ', 'R. Sri Sumiati', '081322361256', 'Jl. Batu Indah I No. 7 RT 01 RW 03', 'Batununggal', 'Bandung Kidul', 'Kota Bandung', '2', 'Love', 'Belum'),
('141501019', '0078087399', 'Jordan Ahmad Martawijaya', 'L', 'Bandung', '2007-10-07', 'Harry Oetama Martawijaya', 'Indriany Novita', '082218318381', 'Jl. Pluto Utara VIII No. 8 RT 003 RW 014', 'Margahayu', 'Buah Batu', 'Kota Bandung', '2', 'Joy', 'Belum'),
('141501020', '0078154053', 'Zishan Parsa Nayandra', 'L', 'Bandung', '2007-12-09', 'Roni Yasmi', 'Izma Rachmawati', '081322361256', 'Jl. Kawaluyaan Indah Raya No. 27 RT 001 RW 004', 'Jatisari', 'Buah Batu', 'Kota Bandung', '2', 'Joy', 'Belum'),
('141501021', '0078918758', 'Yurina Amellya Syarief', 'P', 'Bandung', '2007-11-22', 'Achmad Syarief', 'Nina Ratnaningsih', '082218318381', 'Jl. Saturnus Utara VI No. 15 RT 01 RW 10', '', 'Rancasari', 'Kota Bandung', '2', 'Peace', 'Belum'),
('141501022', '0081435555', 'Amel Widya Putri Sutardi', 'P', 'Bandung', '2008-05-05', 'Dedih Sutardi', 'Heny Supyan Hendrayani', '081322361256', 'Griya Bandung Asri 3 Blok A4 No. 22 RT 02 RW 10', 'Cipagalo', 'Bojongsoang', 'Kabupaten Bandung', '2', 'Faith', 'Belum'),
('141501023', '0085554671', 'Najla Azuri Raniah', 'P', 'Bandung', '2008-03-19', 'Iwan Kurniawan', 'Asri Sativa', '081322361256', 'Jl. Gading Timur II No. 9 RT 003 RW 008', 'Cisaranten Endah', 'Arcamanik', 'Kota Bandung', '2', 'Love', 'Belum'),
('141501024', '0089947873', 'Salwa Karyssa Humaira', 'P', 'Bandung', '2008-03-19', 'Iwan Kurniawan', 'Asri Sativa', '082218318381', 'Jl. Gading Timur 2 No.9', '', 'Cinambo', 'Kota Bandung', '2', 'Joy', 'Belum'),
('141501025', '0082839610', 'Tanitha Nasywa Faiqah', 'P', 'Bandung', '2008-09-16', 'Muhammad Iqbal', 'Ika Puspitasi', '081322361256', 'Kinagara Regency Blok H No. 27 RT 07 RW 012', 'Lengkong', 'Bojongsoang', 'Kabupaten Bandung', '2', 'Peace', 'Belum'),
('141501026', '0082192606', 'Hafy Alrazy Sumadinata', 'L', 'Bandung', '2008-04-02', 'R. Widya Setiabudi Sumadinata', 'Dian Trisnawati', '081322361256', 'Komp. Margahayu Raya Barat Blok S2 No. 109', 'Sekejati', 'Buah Batu', 'Kota Bandung', '2', 'Joy', 'Belum'),
('141501027', '0088554457', 'Soraya Yusria Tri Putri', 'P', 'Bandung', '2008-06-19', 'Dendi Suryo Sugito', 'Vivi Yulinda', '082218318381', 'Jl. Papanggungan Komplek Wirayasa 14A', 'Kebon Kangkung', 'Kiaracondong', 'Kota Bandung', '2', 'Peace', 'Belum'),
('141501028', '0076116829', 'Nerissa Athiyyah Permana', 'P', 'Bandung', '2007-09-03', 'Danny Permana', 'Astri Ghina', '081322361256', 'Komplek Margahayu Raya Barat Blok 12/31', 'Sekejati', 'Buah Batu', 'Kota Bandung', '2', 'Faith', 'Belum'),
('141501029', '0076043844', 'Nashwa Shahira Putri', 'P', 'Bandung', '2007-10-31', 'Asep Kustiawan,ST', ' Lenna Nopiyanti.SE', '082218318381', 'Perum. Pandan Wangi Jl. Kencana Arum IV Blok R15 RT 010 RW 09', 'Cijaura', 'Buah Batu', 'Kota Bandung', '2', 'Joy', 'Belum'),
('141501030', '0079879820', 'Zaidan Zavindie', 'L', 'Bandung', '2007-12-22', 'Yandie Hidayat', 'Neneng Sofia Kartika', '081322361256', 'Jl. Merkuri Timur No. 64 RT 04 RW 08', 'Manjahlega', 'Rancasari', 'Kota Bandung', '2', 'Faith', 'Belum'),
('141501031', '0077094780', 'Mohammed Naufal Rizqullah', 'L', 'Bandung', '2007-12-21', 'Peter', 'Endah Purnawati Sari L', '081322361256', 'Jl. Pakuan Raya No. 35 Panghegar Permai', 'Cipadung Kulon', 'Panyileukan', 'Kota Bandung', '2', 'Faith', 'Belum'),
('141501032', '0083347106', 'Nabila Sahirah', 'P', 'Bandung', '2008-03-13', 'Riza Putra', 'Marini', '082218318381', 'Buah Batu Regency Blok  G1 No. 12B', 'Kujangsari', 'Bandung Kidul', 'Kota Bandung', '2', 'Faith', 'Belum'),
('141501033', '0083119602', 'Fazza Aghniya Haunan', 'P', 'Bandung', '2008-04-13', 'Hari Subagia', 'Lieza Femilya', '081322361256', 'Jl. Suryalaya Sari No. 4 RT 002 RW 004', 'Cijagara', 'Lengkong', 'Kota Bandung', '2', 'Joy', 'Belum'),
('141501034', '0085069592', 'Alvreno Pratama Samudra', 'L', 'Kep. Riau', '2008-01-14', 'Firatna', 'Sonia', '082218318381', 'Perum. Bumi Adipura Jl. Cemara B No. 3 RT 02 RW 07', 'Rancabolang', 'Gedebage', 'Kota Bandung', '2', 'Faith', 'Belum'),
('141501035', '0079400635', 'Rizqilla Yasmin Azzahra', 'P', 'Bandung', '2007-12-09', 'Budi Prasetya', 'Yuyun Siti Rohmah', '081322361256', 'Komp. Pesona Bali Residence Blok A3 No. 5 RT 01 RW 18', 'Bojongsoang', 'Bojongsoang', 'Kabupaten Bandung', '2', 'Love', 'Belum'),
('141501036', '0081465219', 'Naura Athira Ramadhani', 'P', 'Bandung', '2008-09-15', 'Setio Budiono', 'Hj. Upik Anggraini', '082218318381', 'Jl.Sukapura RT.01 RW.02 Gg.Anggrek No.11', '', 'Kiaracondong', 'Kota Bandung', '2', 'Peace', 'Belum'),
('141501037', '0079411851', 'Syafiq Habiburrahman', 'L', 'Batam', '2007-12-09', 'Agus Haryadi', 'Anis Musyarofah', '081322361256', 'Jl. Kiara Asri I No. 18 RT 02 RW 12 Perum. Bumi ASRI Sukapura', 'Sukapura', 'Kiaracondong', 'Kota Bandung', '2', 'Joy', 'Belum'),
('141501038', '0083126112', 'Pranaja Anandito Rajendra', 'L', 'Bandung', '2008-01-08', 'Pranaja Anandito Rajendra', 'Dina Febianti Nurfalah', '082218318381', 'Jl. Buana Sari V No. 5', '', 'Buah Batu', 'Kota Bandung', '2', 'Joy', 'Belum'),
('141501039', '0079909039', 'Syalwa Salsabila Putri Wiedy', 'P', 'Bandung', '2007-10-18', 'Yunedi', 'Dwiastuti', '082218318381', 'Jl. Kebon Jayanti No. 19 RT 01 RW 05', 'Kebon Jayanti', 'Kiaracondong', 'Kota Bandung', '2', 'Faith', 'Belum'),
('141501040', '0082020559', 'Latisya Malika', 'P', 'Bandung', '2008-11-01', 'Tedy Suripto', 'Melani', '081322361256', 'Jl. Jakarta 4 No.2', 'Antapani', 'Antapani', 'Kota Bandung', '2', 'Love', 'Belum'),
('141501041', '0087910307', 'Ghina Fauzia Nikova', 'P', 'Bandung', '2008-02-18', 'Yuri Meifiand', 'Frida Haryani', '082218318381', 'Jl. Sekelimus VII No. 44 RT 003 RW 006', 'Batununggal', 'Bandung Kidul', 'Kota Bandung', '2', 'Peace', 'Belum'),
('141501042', '0083420206', 'Mohammad Shan Athar Belmiro', 'L', 'Jakarta', '2008-05-02', 'Rizky Rizwan', ' Ludmilla Elba Maharuni', '082218318381', 'Jl. Raya rancabolang Margahayu Raya Barat DII No. 1-3', 'Sekejati', 'Buah Batu', 'Kota Bandung', '2', 'Love', 'Belum'),
('141501043', '0081428749', 'Najla Aura', 'P', 'Bandung', '2013-01-02', 'Sudeny Kartiwa', 'Sari Handayani', '082218318381', 'Jl. Andir gang Swadaya III No.32/70 RT/RW 003/009', 'Ciroyom', 'Andir', 'Kota Bandung', '2', 'Joy', 'Belum'),
('141501044', '0078505753', 'Dinda Naura Fakhirah', 'P', 'Bandung', '2007-08-16', 'Dedi Heryadi', 'Mita Nurhayati', '082218318381', 'Jl. Kawaluyaan Indah XIX No. 38 RT 006 RW 004', 'Jatisari', 'Buah Batu', 'Kota Bandung', '2', 'Love', 'Belum'),
('141501045', '141501045', 'Muhammad Faith Rifa Anggana', 'L', 'Bandung', '2008-03-11', 'Taufiq Sapril Hidayat', 'Evi Hepiyanti', '081322361256', 'Taman Rafflesia A-15 RT 002  RW 014', 'Sukapura', 'Kiaracondong', 'Kota Bandung', '2', 'Peace', 'Belum'),
('141501046', '0089387140', 'Azka Fathurrahim Syahada', 'L', 'Bandung', '2008-01-10', 'Irfan Akhdiat Nugraha', 'Ida Ayu Liestiasari', '082218318381', 'Jl. Ciganitri RT 01 RW 04 No. 46 A', 'Cipagalo', 'Bojongsoang', 'Kabupaten Bandung', '2', 'Peace', 'Belum'),
('141501047', '0077276054', 'Luthfi Rafiq Fadhlurrahman', 'L', 'Bandung', '2007-10-25', 'Haerul', 'Dina Mediana', '081322361256', 'Topindo Buah Batu Residence No. 69 Logam', '-', '-', '-', '2', 'Peace', 'Belum'),
('141501048', '0072183552', 'Leni Susanti', 'P', 'Bandung', '2007-12-12', 'Bram Wirakusumah', 'Linda Nurlinda', '082218318381', 'Jl. Gatot Subroto No. 313 H', 'Lingkar Selatan', 'Lengkong', 'Kota Bandung', '2', 'Love', 'Belum'),
('141501049', '0083242520', 'Bagas Adhiperdana Kentris', 'L', 'Bandung', '2008-02-01', 'Firlana Kentris', 'Mira Purniasari', '081322361256', 'Jl. Mars I No. 2', 'Manjahlega', 'Rancasari', 'Kota Bandung', '2', 'Peace', 'Belum'),
('141501050', '0071273022', 'Mohammad Reggan', 'L', 'Bandung', '2007-11-27', 'Mohammad Iqbal Karim', ' Yani Puji Hastuti', '081322361256', 'Jl. Terusan Buah Batu No. 92 RT 04 RW 06', 'Lengkong', 'Bojongsoang', 'Kabupaten Bandung', '2', 'Love', 'Belum'),
('141501051', '0082631326', 'Fahri Alnafi', 'L', 'Bandung', '2008-06-20', 'Edward Fahmi', 'Fitri Rahmawati', '081322361256', 'Jl. Sekelimus Utara I No. 26 RT 002 RW 007', 'Batununggal', 'Bandung Kidul', 'Bandung Kidul', '2', 'Joy', 'Belum'),
('141501052', '0085325522', 'Muhammad Habibullah Al Mutaqin', 'L', 'Bandung', '2008-09-04', 'Aziz Mutaqin', ' Retno Damayanti', '081322361256', 'Jl. Terusan Logam Komp. Buanasari Jl. Buanasari Raya 16 A', 'Kujangsari', 'Bandung Kidul', 'Kota Bandung', '2', 'Love', 'Belum'),
('141501053', '0083949408', 'Cathaleya Khairunnisa Alhasani', 'P', 'Muara Teweh Kalteng', '2008-01-27', 'Taufik Halomoan Lubis', 'Arnani', '082218318381', 'Jl. Kebon Gedang Maleer V No. 325/118 RT 05 RW 01', 'Maleer', 'Batununggal', 'Kota Bandung', '2', 'Joy', 'Belum'),
('141501054', '0082365163', 'Aurora Layla Kannes', 'P', 'Bandung', '2008-05-22', 'Abdul Hanis', 'Nia Nurkania', '081322361256', 'Buah Batu Regency D4 No. 23 RT 04 RW 09', 'Kujangsari', 'Bandung Kidul', 'Kota Bandung', '2', 'Faith', 'Belum'),
('141501055', '0072817591', 'Muhammad Rifatz Nabih', 'L', 'Bandung', '2007-08-30', 'Drs. Ohan Subhan', 'Ir. Evih Fatimah', '081322361256', 'Jl. Pasir Intan 14 Komp. Pasir Pogor', 'Cijaura', 'Buah Batu', 'Kota Bandung', '2', 'Love', 'Belum'),
('141501056', '0074313543', 'Evan Fadila Achmad', 'L', 'Bandung', '2007-10-08', 'Achmad Syafiyudin Al Husni. S.Sos', '-', '082218318381', 'Komp. Green Kawaluyaan C11 RT 06 RW 013', 'Sukapura', 'Kiaracondong', 'Kota Bandung', '2', 'Joy', 'Belum'),
('141501057', '0088896650', 'Dzikra Ahmad Rizaldi Nurfadillah', 'L', 'Ciamis', '2008-06-25', 'Dito Gunandi', 'Dini Nuranillah', '081322361256', 'Komplek Sanggar Hurip Jl. SK 23 No. 86', 'Jatisari', 'Buah Batu', 'Kota Bandung', '2', 'Joy', 'Belum'),
('141501058', '0073947739', 'Razan Aljabbar Mazaya Faza', 'L', 'Bandung', '2007-12-07', 'Ari Sulistyo', 'Sesri Mayenti', '081322361256', 'Jl. Sekelimus Utara No. 52 A RT 02 RW 08', 'Batununggal', 'Bandung Kidul', 'Kota Bandung', '2', 'Joy', 'Belum'),
('141501059', '0082559498', 'Danish Saddam Al Kahfi', 'L', 'Bandung', '2008-02-28', 'Dudi Suhandi', 'Fitria Edliana', '082218318381', 'Komp. Cluster Bali 2 No. D3 RT.06 RW.13', 'Sukapura', 'Kiaracondong', 'Kota Bandung', '2', 'Faith', 'Belum'),
('141501060', '0072855793', 'Allisya Tristan Putri Purnomo', 'P', 'Tanggerang', '2007-10-30', 'Bintang Purnomo', 'Lia Agustina', '081322361256', 'Kawaluyaan Indah XVII No.9', 'Jatisari', 'Buah Batu', 'Kota Bandung', '2', 'Faith', 'Belum'),
('141501061', '0088491031', 'Muhammad Raynold Alvaro Keefa', 'L', 'Bandung', '2008-06-16', 'Hendra Gunawan', 'Mirna Octavian', '081322361256', 'Sari Bunga Bakung Residences Blok E14', '', '', '', '2', 'Faith', 'Belum'),
('141501062', '0081157443', 'Garra Janitra', 'L', 'Bandung', '2008-02-16', 'Wirawan', 'Windi Efiliana ', '081322361256', 'Jl. Kiara Sari III No. 11 RT 01 RW 2', 'Margasari', 'Buah Batu', 'Kota Bandung', '2', 'Love', 'Belum'),
('141501063', '0085105515', 'Erdine Keisha Dianti', 'P', 'Bandung', '2008-06-28', 'Eric Hendriya', 'Afdila Fiddini Rachmawati', '081322361256', 'Komp. Sari Bunga Bakung Residence Blok E-19', '', 'Buah Batu', 'Kota Bandung', '2', 'Faith', 'Belum'),
('141501064', '0087839334', 'Haifa Razana Aisya', 'P', 'Bandung', '2008-09-18', 'Abdul Hadi', 'Wiwin Eka Cahyani', '082218318381', 'GBA II H5 No.24', 'Cipagalo', 'Buah Batu', 'Kota Bandung', '2', 'Faith', 'Belum'),
('141501065', '0083409696', 'Arya Satria', 'L', 'Bandung', '2008-06-07', 'Titorin', 'Mustika Sari', '082218318381', 'Jl. Venus Barat No. 40 RT 04 RW 01', 'Manjahlega', 'Rancasari', 'Kota Bandung', '2', 'Faith', 'Belum'),
('141501066', '0085142054', 'Raffa Athya Razaky', 'L', 'Bandung', '2008-03-31', 'Erry Teguh Wahyu Budiman', 'Lidya Nurvita', '082218318381', 'Jl. Perunggu No. 1 RT 10 RW 06', 'Cijaura', 'Buah Batu', 'Kota Bandung', '2', 'Joy', 'Belum'),
('141501067', '0079466768', 'Muhammad Azhali Abdullatif', 'L', 'Bandung', '2007-12-26', 'Dadang Hudaya Somasetia', ' Nita Perwita Ariyanti', '081322361256', 'Jl. Batununggal Abadi Raya No.3', 'Batununggal', 'Bandung Kidul', 'Kota Bandung', '2', 'Love', 'Belum'),
('141501068', '0087059154', 'Nurul Najmi Ziyan Zahirah', 'P', 'Bandung', '2007-05-07', '-', '-', '081322361256', 'Jl. Cinta Asih No.117/122 RT 03 RW 11', 'Cibangkong', 'Batununggal', 'Kota Bandung', '2', 'Faith', 'Belum'),
('141501069', '0084540206', 'Muhammad Syahdan Asysyamil Ibrahim', 'L', 'Bandung', '2008-04-21', 'Roni Ibrahim', 'Yani Mulyani', '082218318381', 'Jl. Lebak No. 168 RT 03 RW 05', 'Kebonwaru', 'Batununggal', 'Kota Bandung', '2', 'Love', 'Belum'),
('141501070', '0087045611', 'Nakisha Thalita Zahira', 'P', 'Bandung', '2008-11-08', 'Dicky Yudha Handika', 'Afrissa Novrika Lubis', '081322361256', 'Jl. Cisaranten Baru I No. 21', 'Cisaranten Kulon', 'Arcamanik', 'Kota Bandung', '2', 'Peace', 'Belum'),
('141501071', '0072779162', 'Syakirah Salim', 'P', 'Bandung', '2007-12-02', 'Salim', 'Yanti Herisman', '081322361256', 'Buana Ciwastra Residence Blok B1/24', '', '', '', '2', 'Joy', 'Belum'),
('141501072', '0079742450', 'Sharleen Khumaira Azzahra Abdurrachman', 'P', 'Bandung', '2008-08-13', 'Moch. Mulki Abdurachman', 'Dwi Kartini', '081322361256', 'Jl. Timah No. 26 Komp. Logam', 'Cijaura', 'Buah Batu', 'Kota Bandung', '2', 'Faith', 'Belum'),
('141501073', '0073574948', 'Rafina Tharfa Putri', 'P', 'Bandung', '2007-09-16', 'Haris Udayana', 'Mia Herawati', '082218318381', 'Jl. Terusan Mars Utara III/ No.3  RT.05 RW.06', 'Rancasari', 'Majahlega', 'Kota Bandung', '2', 'Peace', 'Belum'),
('141501074', '0071551324', 'Zian Risti', 'P', 'Bandung', '2007-08-15', 'Azirwan  Nuilah', 'Herisyanti', '081322361256', 'Jl. Mengger Tengah RT 02 RW 01 Kec. Bandung Kidul (022) 70363535', 'Mengger', 'Bandung Kidul', 'Kota Bandung', '2', 'Peace', 'Belum'),
('141501075', '0076993649', 'Humaira Agistty', 'P', 'Bandung', '2005-08-25', 'Tedy Permana (alm)', ' Luki Julida Amalia', '082218318381', 'Buana Soeta Residence E34 Gedebage', '-', 'Gedebage', 'Kota Bandung', '2', 'Love', 'Belum'),
('141501076', '0072611599', 'Bagus Noor Rahman Hidayat', 'L', 'Lampung', '2007-08-09', 'Yayat Hidayat', 'Noor Rafiaz', '082218318381', 'Komp. DPRD Baitussalam Kav 32', 'Margasari', 'Buah Batu', 'Kota Bandung', '2', 'Love', 'Belum'),
('141501077', '0086538907', 'Kinan Annisa Jose', 'P', 'Jakarta', '2008-01-03', 'Jose Kharosta', 'Kurnia Agustin G.', '082218318381', 'Jl. Pinus III No. 31 RT 01 RW 08 Perum Bumi Adipura', 'Rancabolang', 'Gedebage', 'Kota Bandung', '2', 'Peace', 'Belum'),
('141501078', '0083541180', 'Muhammad Khalid Zulfikar', 'L', 'Bandung', '2008-05-02', 'Indra Bakar', 'Prista Rini', '081322361256', 'Komp. Antapani Asri No. 9-10 RT 001 RW 008', 'Antapani Tengah', 'Antapani', 'Kota Bandung', '2', 'Joy', 'Belum'),
('141501079', '0083262856', 'Fainna Anzala Tania Putri', 'P', 'Bandung', '2008-03-22', 'M. Agil Herdyana', 'Idola Perdini Putri', '081322361256', 'Komp. De Marrakesh Blok A.5 No. 12A', 'Derwati', 'Rancasari', 'Kota Bandung', '2', 'Peace', 'Belum'),
('141501080', '0077734447', 'Abdurrasyid Ihsan Hidayat', 'L', 'Bandung', '2007-12-15', 'Hendi Ahmad Hidayat', 'Santi Setiawati Nengsih', '081283016000', 'Komp. Cluster Bali 2 No. B4 RT 06 RW 13', 'Sukapura', 'Kiaracondong', 'Kota Bandung', '2', 'Joy', 'Belum'),
('141501081', '0083076561', 'Najwa Rizq Lubada', 'P', 'Tegal', '2008-02-25', '', 'Fitria Andalusi', '081322361256', 'Jl. Imperata D\'Amerta Residence Blok E-13/10', 'Lengkong', 'Bojongsoang', 'Kota Bandung', '2', 'Joy', 'Belum'),
('141501082', '0083060526', 'Daffa Irfan Fadilah Suprapto', 'L', 'Bandung', '2008-05-28', 'Dedi Suprapto', 'Nur Agustinah', '081322361256', 'Jl. Cijaura Girang V Buah Batu Kencana Town House No. 5 ', 'Sekejati', 'Buah Batu', 'Kota Bandung', '2', 'Love', 'Belum'),
('141501083', '0075600437', 'Hasna Aqila Shabira', 'P', 'Bandung', '2007-10-19', 'Rachmat Fikri', ' Nuzliati Shabariah', '081322361256', 'Komp. Marga Cipta Kav N Jl. Ciptakarya RT 03 RW 01', 'Mekarjaya', 'Rancasari', 'Kota Bandung', '2', 'Love', 'Belum'),
('141501084', '0072703874', 'Ahmad Fathir Nur Ridwan', 'L', 'Cimahi', '2007-10-11', 'Ryan Rizkia', 'Kemila Isdiandini', '081322361256', 'Kinagara Regency Blok D1 No. 24', 'Cipagalo', 'Cipagalo', 'Kabupaten Bandung', '2', 'Peace', 'Belum'),
('141501085', '0081431908', 'Rifqi Okla Ginanjar', 'L', 'Bandung', '2008-07-27', 'Okie Agung Ginanjar', 'Asrilia Priskila', '081322361256', 'Jl. Gresik No. 14 RT 01 RW 08', ' Antapani Kidul', 'Antapani', 'Kota Bandung', '2', 'Faith', 'Belum'),
('141501086', '0083192893', 'Keysha Adnazka Fakhira', 'P', 'Bandung', '2008-03-04', 'Yosef Yusrizal', 'Marisa Widianingrum', '081322361256', 'Taman Persada Asri 2 Blok V No. 6 RT 004 RW 012', 'Margasari', 'Buah Batu', 'Kota Bandung', '2', 'Joy', 'Belum'),
('141501087', '0087889829', 'Ayesha Laudyandria Aretha', 'P', 'Bandung', '2008-01-24', 'Andriyanto', 'Irma Apriyanti Irawan', '082218318381', 'Komp. PLN Cigereleng No. 104-D RT 001 RW 005', 'Ciseureuh', 'Regol', 'Kota Bandung', '2', 'Faith', 'Belum'),
('141501088', '0071195795', 'Athaya Nala Shaumi Tisnawinata', 'L', 'Bandung', '2007-09-23', 'Andriaji Tisnawinata', 'Heni Mulyani', '081322361256', 'Jl. SMP 18/ Sukamenak III No. 5 RT 002 RW 007', 'Margacinta', 'Buah Batu', 'Kota Bandung', '2', 'Joy', 'Belum'),
('141501089', '0081461992', 'Nararya Nindya Nandita', 'L', 'Bandung', '2008-02-12', 'Sucipto', 'Mia Amalia', '081322361256', 'Jl. Jatisari II No. 68 RT 04 RW 01', 'Jatisari', 'Buah Batu', 'Kota Bandung', '2', 'Faith', 'Belum'),
('141501090', '0087134271', 'Khaylannisa Azzahra', 'P', 'Bandung', '2008-05-18', 'Hervin Islahudin', 'Anisa Herdiani', '082218318381', 'Palem 1 Residence Blok A4 No. 7 Terusan Buah Batu', 'Sukapura', 'Dayeuh Kolot', 'Kabupaten Bandung', '2', 'Faith', 'Belum'),
('141501091', '0083855969', 'Muhammad Rizqy Budiman', 'L', 'Bandung', '2008-06-17', 'Heri Budiman, ST', 'Santi Siti Hodijah, S.Komp', '082218318381', 'Jl. Gatot Subroto 170/RD 33 RT 02 RW 62', 'Gumuruh', 'Batununggal', 'Kota Bandung', '2', 'Peace', 'Belum'),
('141501092', '0073936565', 'Ahmed Surya Mangopang', 'L', 'Surabaya', '2007-04-10', 'Adnan Mangopang', 'Ratna Damayanti', '082218318381', 'Palem Permai Palem Putri No. 3', 'Jatisari', 'Buah Batu', 'Kota Bandung', '2', 'Faith', 'Belum'),
('141501093', '0076606902', 'Nasyra Mulyadita', 'P', 'Bandung', '2007-10-06', 'Yadi Mulyadi', 'Cica Mellia', '081322361256', 'Jl. Margapuri I No.10', 'Cijaura', 'Buah Batu', 'Kota Bandung', '2', 'Joy', 'Belum'),
('141501094', '0082511752', 'Raina Latifa Bastari', 'P', 'Cirebon', '2008-04-11', 'Sri Amirul Alam Bastar', ' Tantri Gayatri', '082218318381', 'Jl. Cijaura Girang V Komp. Buah Batu Kencana No. 12 RT 01 RW 15', 'Sekejati', 'Buah Batu', 'Kota Bandung', '2', 'Love', 'Belum'),
('141501095', '0088424864', 'Muhammad Fabian Azzily', 'L', 'Bandung', '2008-04-04', '', ' Dian Wahyuni', '082218318381', 'Jl. Batununggal Mulia XIII No.28 Bandung 08112000575', 'Mengger', 'Bandung Kidul', 'Kota Bandung', '2', 'Love', 'Belum'),
('141501096', '0082920946', 'Amelya Maharani', 'P', 'Bandung', '2008-01-04', 'Agus Zahalan, SE', 'Dra. Ida Nurwidayanti', '082218318381', '', 'Margasari', 'Buah Batu', 'Kota Bandung', '2', 'Love', 'Belum'),
('141501097', '0081180564', 'Hadziq Arfa Thariq', 'L', 'Bandung', '2008-05-12', 'Hariawan Nugroho', 'Silvya Erika Agustina', '082218318381', '', 'Margasari', 'Buah Batu', 'Kota Bandung', '2', 'Joy', 'Belum'),
('141501098', '0085127485', 'Arraya Rifa', 'P', 'Bandung', '2008-06-06', 'Adrian Adam', 'Miawati', '081322361256', 'Jl. Salendro Timur IX No.16', 'Gumuruh', 'Batununggal', 'Kota Bandung', '2', 'Love', 'Belum'),
('141501099', '0077919256', 'Zimran Arashi Syagiv Putra', 'L', 'Bandung', '2007-11-10', 'Givari Mustika Putra', 'Sendi Meilinda Sudjana', '082218318381', 'Komp. Taman Rafflesia Blok E-17 RT 003 RW  014', 'Sukapura', 'Kiaracondong', 'Kabupaten Bandung', '2', 'Love', 'Belum'),
('141501100', '0072067936', 'Muhammad Daffa Syahreza Albanirey', 'L', 'Bandung', '2007-08-31', 'Dani Firmanto', 'Ende Sutira', '082218318381', 'Jl. Margasari No. 193', 'Margasari', 'Buah Batu', 'Kota Bandung', '2', 'Faith', 'Belum'),
('141501101', '0071571500', 'Nisrina Dhia Fajari', 'P', 'Bandung', '2007-12-08', 'Duddy Soegiarto', 'Hamidah', '081322361256', 'Jl. Cikoneng Terusan Buah Batu Komp. Puri Cikoneng Raya No. 6', 'Cikoneng', 'Buah Batu', 'Kabupaten Bandung', '2', 'Peace', 'Belum'),
('141501102', '0074056466', 'Keelia Nafira Ramadhira', 'P', 'Bandung', '2007-03-03', 'Ferry Setiyadi', 'Feni Maria L', '082218318381', 'Komp. Pratama Asri B5', 'Cipamokolan', 'Rancasari', 'Kota Bandung', '2', 'Peace', 'Belum'),
('141501103', '0088130031', 'Rasyid Azka Senjaya', 'L', 'Bandung', '2008-06-21', 'R. Indra Senjaya', 'Restu Widhora', '082218318381', 'Jl. Sekelimus V No. 26', 'Batununggal', 'Bandung Kidul', 'Kota Bandung', '2', 'Faith', 'Belum'),
('141501104', '0081842973', 'Rafa Raissa Ramadhan', 'L', 'Bandung', '2008-09-09', 'Irvan Perdana', 'Juni Irma Indriani', '081322361256', 'Jl. Pinus IV No.19 Adipura', 'Rancabolang', 'Gedebage', 'Kota Bandung', '2', 'Joy', 'Belum'),
('141501105', '0079137948', 'Haliya Nursya\'bani', 'P', 'Bandung', '2007-08-25', 'Mohammad Syifa\' Nasrulloh', ' Siti Kulsum', '082218318381', 'Jl. Lebak 285 A/ 125 A RT 01 RW 05', 'Kebonwaru', 'Batununggal', 'Kota Bandung', '2', 'Love', 'Belum'),
('141501106', '0075453966', 'Rameyza Alya', 'P', 'Sukabumi', '2007-10-15', 'Andrie Pramudia Shandi', '', '082218318381', 'Puri Dago X No. 6 Komp. Puri Dago Asri', '', 'Antapani', 'Kota Bandung', '2', 'Faith', 'Belum'),
('141501107', '0085490956', 'Kautsar Tajrian Dianto', 'L', 'Bandung', '2008-07-03', 'Satmah Dianto', 'Desina Christina N.', '081322361256', 'Jl. Cibangkong 286/120 RT 07 RW 06', 'Cibangkong', 'Batununggal', 'Kota Bandung', '2', 'Peace', 'Belum'),
('141501108', '0087074788', 'Kevin Sakha Arraafid', 'L', 'Kevin Sakha Arraafid', '2008-06-06', 'Hendra Gunawan', 'Nur Dwiyanti', '081322361256', 'Buah Batu Regensi Blok G1 No. 9 RT 03 RW 09', 'Kujangsari', 'Bandung Kidul', 'Kota Bandung', '2', 'Peace', 'Belum'),
('141501109', '0083846442', 'Mohamad Danendra Valeska', 'L', 'Bandung', '2008-09-17', 'Muhamad Lutfi Gandana', 'Wida Hastuti', '081322361256', 'Buah Batu Regency Blok G I No. 9', 'Kujangsari', 'Bandung Kidul', 'Kota Bandung', '2', 'Peace', 'Belum'),
('141501110', '0078523068', 'Muhammad Raffy Akbar', 'L', 'Subang', '2007-12-13', 'Achmad Asegaf', '', '082218318381', 'Komp. Kawaluyaan Indah IX No.22 Soekarno Hatta', 'Jatisari', 'Buah Batu', 'Kota Bandung', '2', 'Love', 'Belum'),
('141501111', '0084247409', 'Irsyad Rahmadian Al Khalifa', 'L', 'Denpasar', '2008-09-18', 'Ir. Iwan Suprijanto, MT', 'Zuhrotul Mauludah,  ST', '081322361256', 'Jl. Sharon Garden 27 Grand Sharon Residence', 'Cipamokolan', 'Rancasari', 'Kota Bandung', '2', 'Faith', 'Belum');

-- --------------------------------------------------------

--
-- Table structure for table `detail_informasi`
--

CREATE TABLE `detail_informasi` (
  `idortu` int(255) DEFAULT NULL,
  `id_informasi` int(255) DEFAULT NULL,
  `d_tanggal_informasi` date DEFAULT NULL,
  `notifikasi_O` varchar(255) NOT NULL,
  `notifikasi_W` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_informasi`
--

INSERT INTO `detail_informasi` (`idortu`, `id_informasi`, `d_tanggal_informasi`, `notifikasi_O`, `notifikasi_W`) VALUES
(2, 8, '2016-11-02', 'belum dibaca', 'belum dibaca'),
(3, 8, '2016-11-02', 'belum dibaca', 'belum dibaca'),
(2, 9, '2016-11-03', 'belum dibaca', 'belum dibaca'),
(3, 9, '2016-11-03', 'belum dibaca', 'belum dibaca'),
(2, 10, '2016-11-09', 'belum dibaca', 'belum dibaca'),
(3, 10, '2016-11-09', 'belum dibaca', 'belum dibaca');

-- --------------------------------------------------------

--
-- Table structure for table `detail_kegiatan`
--

CREATE TABLE `detail_kegiatan` (
  `id_kegiatan` int(255) NOT NULL,
  `nis` varchar(255) NOT NULL,
  `tanggal_kegiatan` date NOT NULL,
  `tahun_ajaran` varchar(255) NOT NULL,
  `notifikasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_kegiatan`
--

INSERT INTO `detail_kegiatan` (`id_kegiatan`, `nis`, `tanggal_kegiatan`, `tahun_ajaran`, `notifikasi`) VALUES
(1, '111201004', '2016-10-19', '2015/2016', 'belum dibaca'),
(2, '141501080', '2016-10-19', '2015/2016', 'dibaca'),
(3, '111201005', '2016-10-19', '2015/2016', 'dibaca'),
(4, '111201004', '2016-10-20', '2015/2016', 'belum dibaca'),
(5, '141501080', '2016-10-20', '2015/2016', 'belum dibaca'),
(6, '111201005', '2016-10-20', '2015/2016', 'dibaca'),
(7, '111201004', '2016-11-02', '2015/2016', 'belum dibaca'),
(8, '141501080', '2016-11-03', '2015/2016', 'belum dibaca'),
(9, '111201005', '2016-11-03', '2015/2016', 'belum dibaca'),
(10, '141501080', '2016-11-03', '2015/2016', 'belum dibaca'),
(11, '111201005', '2016-11-03', '2015/2016', 'belum dibaca'),
(12, '141501080', '2016-11-03', '2015/2016', 'belum dibaca'),
(13, '111201005', '2016-11-03', '2015/2016', 'belum dibaca'),
(14, '141501080', '2016-11-07', '2015/2016', 'belum dibaca'),
(15, '111201005', '2016-11-07', '2015/2016', 'belum dibaca'),
(16, '141501080', '2016-11-11', '2015/2016', 'belum dibaca'),
(17, '111201005', '2016-11-11', '2015/2016', 'belum dibaca');

-- --------------------------------------------------------

--
-- Table structure for table `detail_kegiatan_kebersihan`
--

CREATE TABLE `detail_kegiatan_kebersihan` (
  `id_kegiatan` int(255) NOT NULL,
  `id_presensi` int(255) NOT NULL,
  `id_nama` int(255) NOT NULL,
  `waktu` datetime NOT NULL,
  `status` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `detail_pengajuan`
--

CREATE TABLE `detail_pengajuan` (
  `iddetail` int(255) NOT NULL,
  `id_pengajuan` int(255) NOT NULL,
  `kode_barang` int(255) NOT NULL,
  `jumlah_barang` int(255) NOT NULL,
  `ket_permintaan` varchar(255) DEFAULT NULL,
  `progres` varchar(255) DEFAULT NULL,
  `tgl_progres` varchar(255) NOT NULL,
  `barang_tersedia` varchar(255) NOT NULL,
  `tgl_tersedia` varchar(255) NOT NULL,
  `barang_diambil` varchar(255) NOT NULL,
  `tgl_diambil` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `detail_respon`
--

CREATE TABLE `detail_respon` (
  `idortu` int(11) DEFAULT NULL,
  `id_respon` int(255) DEFAULT NULL,
  `d_tanggal_respon` date DEFAULT NULL,
  `notifikasi_T` varchar(255) NOT NULL,
  `notifikasi_O` varchar(255) NOT NULL,
  `notifikasi_W` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_respon`
--

INSERT INTO `detail_respon` (`idortu`, `id_respon`, `d_tanggal_respon`, `notifikasi_T`, `notifikasi_O`, `notifikasi_W`) VALUES
(2, 70, '2016-10-26', 'dibaca', 'dibaca', 'dibaca'),
(3, 70, '2016-10-26', 'dibaca', 'dibaca', 'dibaca'),
(2, 71, '2016-10-26', 'dibaca', 'dibaca', 'dibaca'),
(3, 71, '2016-10-26', 'dibaca', 'dibaca', 'dibaca'),
(2, 73, '2016-10-26', 'dibaca', 'dibaca', 'dibaca'),
(3, 73, '2016-10-26', 'dibaca', 'dibaca', 'dibaca'),
(2, 74, '2016-10-27', 'dibaca', 'dibaca', 'dibaca'),
(3, 74, '2016-10-27', 'dibaca', 'dibaca', 'dibaca'),
(2, 75, '2016-10-30', 'belum dibaca', 'dibaca', 'dibaca'),
(3, 75, '2016-10-30', 'belum dibaca', 'dibaca', 'dibaca'),
(2, 76, '2016-10-30', 'belum dibaca', 'dibaca', 'dibaca'),
(3, 76, '2016-10-30', 'belum dibaca', 'dibaca', 'dibaca'),
(2, 77, '2016-10-30', 'belum dibaca', 'dibaca', 'dibaca'),
(3, 77, '2016-10-30', 'belum dibaca', 'dibaca', 'dibaca'),
(2, 78, '2016-10-31', 'dibaca', 'dibaca', 'dibaca'),
(3, 78, '2016-10-31', 'dibaca', 'dibaca', 'dibaca'),
(2, 79, '2016-10-31', 'dibaca', 'dibaca', 'dibaca'),
(3, 79, '2016-10-31', 'dibaca', 'dibaca', 'dibaca'),
(2, 80, '2016-10-31', 'dibaca', 'dibaca', 'dibaca'),
(3, 80, '2016-10-31', 'dibaca', 'dibaca', 'dibaca'),
(2, 81, '2016-11-01', 'dibaca', 'dibaca', 'dibaca'),
(2, 82, '2016-11-01', 'dibaca', 'belum dibaca', 'dibaca'),
(2, 83, '2016-11-01', 'dibaca', 'dibaca', 'dibaca'),
(3, 83, '2016-11-01', 'dibaca', 'dibaca', 'dibaca'),
(2, 84, '2016-11-02', 'belum dibaca', 'dibaca', 'dibaca'),
(3, 84, '2016-11-02', 'belum dibaca', 'belum dibaca', 'dibaca');

-- --------------------------------------------------------

--
-- Table structure for table `dokumen_daftar_ulang`
--

CREATE TABLE `dokumen_daftar_ulang` (
  `no_pendaftaran` varchar(255) NOT NULL,
  `nama_akta` varchar(255) DEFAULT NULL,
  `akta_kelahiran` longblob,
  `nama_ktp` varchar(255) DEFAULT NULL,
  `ktp` longblob,
  `nama_kk` varchar(255) DEFAULT NULL,
  `kk` longblob,
  `nama_sk` varchar(255) DEFAULT NULL,
  `surat_keterangan` longblob,
  `nama_foto` varchar(255) DEFAULT NULL,
  `foto` longblob,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dokumen_daftar_ulang`
--

INSERT INTO `dokumen_daftar_ulang` (`no_pendaftaran`, `nama_akta`, `akta_kelahiran`, `nama_ktp`, `ktp`, `nama_kk`, `kk`, `nama_sk`, `surat_keterangan`, `nama_foto`, `foto`, `status`) VALUES
('20160000001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('20160000001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `evaluasi`
--

CREATE TABLE `evaluasi` (
  `ideval` int(255) NOT NULL,
  `nilai` decimal(5,3) NOT NULL,
  `idbab` varchar(255) NOT NULL,
  `nis` varchar(255) NOT NULL,
  `remidi` decimal(5,3) NOT NULL,
  `ceknilai` varchar(1) NOT NULL,
  `cekremed` varchar(1) NOT NULL,
  `thnajar` varchar(255) NOT NULL,
  `semester` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `formulir`
--

CREATE TABLE `formulir` (
  `no_pendaftaran` int(255) NOT NULL,
  `tgl` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `formulir`
--

INSERT INTO `formulir` (`no_pendaftaran`, `tgl`, `status`, `username`) VALUES
(1, '2016-10-14', 'Proses', 'Laila'),
(2, '2017-02-06', 'Proses', 'imas.rohimah72'),
(3, '2018-01-08', 'Proses', 'Mimin'),
(4, '2018-01-12', 'Proses', 'Ghibran'),
(5, '2018-02-12', 'Proses', 'Aulia'),
(6, '2018-02-12', 'Proses', 'Rahmawan'),
(7, '2018-02-12', 'Proses', 'Iqbal');

-- --------------------------------------------------------

--
-- Table structure for table `gammu`
--

CREATE TABLE `gammu` (
  `Version` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gammu`
--

INSERT INTO `gammu` (`Version`) VALUES
(13);

-- --------------------------------------------------------

--
-- Table structure for table `group1`
--

CREATE TABLE `group1` (
  `kode_group` int(11) NOT NULL,
  `nama_group` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group1`
--

INSERT INTO `group1` (`kode_group`, `nama_group`) VALUES
(5, 'Wali-Kelas'),
(6, 'Guru'),
(7, 'Kepala-TU'),
(13, 'Orang-Tua');

-- --------------------------------------------------------

--
-- Table structure for table `group_user`
--

CREATE TABLE `group_user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `kode_group` int(11) NOT NULL,
  `status_group` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group_user`
--

INSERT INTO `group_user` (`id`, `username`, `kode_group`, `status_group`) VALUES
(1, 'Mimin', 7, 'Aktif'),
(2, 'Rahmawan', 11, 'Aktif'),
(3, 'Rahmawan', 12, 'Aktif'),
(4, 'Iqbal', 7, 'Aktif'),
(5, 'Iqbal', 8, 'Aktif'),
(6, 'Ghibran', 5, 'Aktif'),
(7, 'Ghibran', 13, 'Aktif'),
(8, 'Aulia', 6, 'Aktif'),
(9, 'Aulia', 10, 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `grup`
--

CREATE TABLE `grup` (
  `kode_group` int(255) NOT NULL,
  `nama_group` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grup`
--

INSERT INTO `grup` (`kode_group`, `nama_group`) VALUES
(1, 'Admin'),
(2, 'Direktur'),
(3, 'Kepsek'),
(4, 'Wakasek'),
(5, 'Wali-Kelas'),
(6, 'Guru'),
(7, 'Kepala-TU'),
(8, 'TU-Kesiswaan'),
(9, 'Konselor'),
(10, 'Koor-PMP'),
(11, 'Caraka'),
(12, 'Satpam'),
(13, 'Orang-Tua'),
(14, 'TU-Keuangan'),
(15, 'Pendaftar'),
(16, 'Operator'),
(17, 'Panitia');

-- --------------------------------------------------------

--
-- Table structure for table `grup_modul`
--

CREATE TABLE `grup_modul` (
  `kode` int(255) NOT NULL,
  `kode_group` int(255) NOT NULL,
  `kode_modul` int(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grup_modul`
--

INSERT INTO `grup_modul` (`kode`, `kode_group`, `kode_modul`, `status`) VALUES
(1, 6, 1, 'Aktif'),
(2, 6, 4, 'Aktif'),
(3, 6, 6, 'Aktif'),
(4, 6, 7, 'Aktif'),
(6, 5, 2, 'Aktif'),
(9, 5, 8, 'Aktif'),
(10, 13, 3, 'Aktif'),
(11, 13, 5, 'Aktif'),
(12, 5, 9, 'Aktif'),
(13, 5, 10, 'Aktif'),
(14, 7, 11, 'Aktif'),
(15, 7, 12, 'Aktif'),
(16, 7, 13, 'Aktif'),
(17, 7, 14, 'Aktif'),
(18, 7, 15, 'Aktif'),
(19, 7, 16, 'Aktif'),
(20, 7, 17, 'Aktif'),
(21, 7, 18, 'Aktif'),
(22, 7, 19, 'Aktif'),
(23, 7, 20, 'Aktif'),
(24, 11, 21, 'Aktif'),
(25, 11, 22, 'Aktif'),
(26, 11, 23, 'Aktif'),
(27, 11, 24, 'Aktif'),
(28, 11, 25, 'Aktif'),
(29, 11, 26, 'Aktif'),
(30, 12, 27, 'Aktif'),
(31, 12, 28, 'Aktif'),
(32, 12, 29, 'Aktif'),
(33, 12, 30, 'Aktif'),
(34, 17, 32, 'Aktif'),
(35, 17, 33, 'Aktif'),
(36, 17, 34, 'Aktif'),
(37, 15, 35, 'Aktif'),
(38, 15, 36, 'Aktif'),
(39, 15, 37, 'Aktif'),
(40, 15, 38, 'Aktif'),
(41, 15, 39, 'Aktif'),
(42, 15, 40, 'Aktif'),
(43, 12, 31, 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `grup_user`
--

CREATE TABLE `grup_user` (
  `id` int(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `kode_group` int(255) NOT NULL,
  `status_group` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grup_user`
--

INSERT INTO `grup_user` (`id`, `username`, `kode_group`, `status_group`) VALUES
(1, 'imas.rohimah72', 15, 'Aktif'),
(2, 'Laila', 1, 'Aktif'),
(3, 'Ghibran', 13, 'Aktif'),
(4, 'Ghibran', 5, 'Aktif'),
(5, 'Aulia', 6, 'Aktif'),
(6, 'Aulia', 10, 'Aktif'),
(7, 'Rahmawan', 11, 'Aktif'),
(8, 'Rahmawan', 12, 'Aktif'),
(9, 'Iqbal', 7, 'Aktif'),
(10, 'Iqbal', 8, 'Aktif'),
(11, 'Laila', 2, 'Aktif'),
(12, 'Laila', 3, 'Aktif'),
(13, 'Laila', 4, 'Aktif'),
(14, 'Laila', 9, 'Aktif'),
(15, 'Laila', 14, 'Aktif'),
(16, 'Laila', 15, 'Aktif'),
(17, 'Laila', 16, 'Aktif'),
(18, 'Laila', 17, 'Aktif'),
(19, 'dewiyanaagustina', 5, 'Aktif'),
(20, 'elyfemilawati', 6, 'Aktif'),
(21, 'elyfemilawati', 5, 'Aktif'),
(22, 'jaelaniginanjar', 6, 'Aktif'),
(23, 'jaelaniginanjar', 5, 'Aktif'),
(24, 'renisulistiani', 6, 'Aktif'),
(25, 'renisulistiani', 5, 'Aktif'),
(26, 'barkahmustikawati', 6, 'Aktif'),
(27, 'barkahmustikawati', 5, 'Aktif'),
(28, 'gagankusumawardhana', 6, 'Aktif'),
(29, 'gagankusumawardhana', 5, 'Aktif'),
(30, 'merisya', 6, 'Aktif'),
(31, 'merisya', 5, 'Aktif'),
(32, 'jokosuyono', 6, 'Aktif'),
(33, 'jokosuyono', 5, 'Aktif'),
(34, 'catheriensuci', 6, 'Aktif'),
(35, 'catheriensuci', 5, 'Aktif'),
(36, 'ellynailufar', 6, 'Aktif'),
(37, 'ellynailufar', 5, 'Aktif'),
(38, 'indahpuspasari', 6, 'Aktif'),
(39, 'indahpuspasari', 5, 'Aktif'),
(40, 'hudaahmad', 6, 'Aktif'),
(41, 'hudaahmad', 5, 'Aktif'),
(42, 'arniyanti', 6, 'Aktif'),
(43, 'arniyanti', 5, 'Aktif'),
(44, 'michaeljansen', 6, 'Aktif'),
(45, 'michaeljansen', 5, 'Aktif'),
(46, 'dedesopyan', 6, 'Aktif'),
(47, 'dedesopyan', 5, 'Aktif'),
(48, 'itafuji', 6, 'Aktif'),
(49, 'itafuji', 5, 'Aktif'),
(50, 'ranipusparani', 6, 'Aktif'),
(51, 'ranipusparani', 5, 'Aktif'),
(52, 'ritanurfitri', 6, 'Aktif'),
(53, 'ritanurfitri', 5, 'Aktif'),
(54, 'galuhayuningtyas', 6, 'Aktif'),
(55, 'galuhayuningtyas', 5, 'Aktif'),
(56, 'sitirahmah', 6, 'Aktif'),
(57, 'sitirahmah', 5, 'Aktif'),
(58, 'annisasetyarini', 6, 'Aktif'),
(59, 'annisasetyarini', 5, 'Aktif'),
(60, 'yenicastriyani', 6, 'Aktif'),
(61, 'yenicastriyani', 5, 'Aktif'),
(62, 'inayatillah', 6, 'Aktif'),
(63, 'inayatillah', 5, 'Aktif'),
(64, 'andryhadiwijaya', 6, 'Aktif'),
(65, 'andryhadiwijaya', 5, 'Aktif'),
(66, 'yanimulyani', 6, 'Aktif'),
(67, 'yanimulyani', 5, 'Aktif'),
(68, 'iissitiaisah', 6, 'Aktif'),
(69, 'iissitiaisah', 5, 'Aktif'),
(70, 'danihumaeni', 6, 'Aktif'),
(71, 'danihumaeni', 5, 'Aktif'),
(72, 'kumalawatisari', 6, 'Aktif'),
(73, 'kumalawatisari', 5, 'Aktif'),
(74, 'herisyanti', 6, 'Aktif'),
(75, 'herisyanti', 5, 'Aktif'),
(76, 'wandamrizal', 6, 'Aktif'),
(77, 'wandamrizal', 5, 'Aktif'),
(78, 'dzikrahusnul', 6, 'Aktif'),
(79, 'dzikrahusnul', 5, 'Aktif'),
(80, 'nanisintiawati', 6, 'Aktif'),
(81, 'sofisafitri', 6, 'Aktif'),
(82, 'rikaharlia', 9, 'Aktif'),
(83, 'wandamrizal', 7, 'Aktif'),
(84, 'adesuryana', 11, 'Aktif'),
(85, 'arifhidayat', 11, 'Aktif'),
(86, 'dudirudiawan', 11, 'Aktif'),
(87, 'setyawan.cr7', 15, 'Aktif'),
(88, 'Ghibran', 2, 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `nip` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jk` varchar(1) NOT NULL,
  `TMT` date NOT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`nip`, `nama`, `jk`, `TMT`, `username`) VALUES
('0140706', 'Inayatillah, S.Pd.', 'P', '0000-00-00', 'inayatillah'),
('0150706', 'Barkah Mustikawati, S.Si.', 'P', '0000-00-00', 'barkahmustikawati'),
('0160707', 'Iis Siti Aisah, S.Pd.', 'P', '0000-00-00', 'iissitiaisah'),
('0170807', 'Ina Marina, S.Pd.', 'P', '0000-00-00', 'inamarina'),
('0200709', 'Wanda M Rizal, S.Pd.', 'L', '0000-00-00', 'wandamrizal'),
('0210709', 'Yeni Castriyani, A.Ma.', 'P', '0000-00-00', 'yenicastriyani'),
('0230110', 'Annisa Abdullah, S.Pd.', 'P', '0000-00-00', 'annisaabdullah'),
('0250110', 'Herisyanti, S.Pd.', 'P', '0000-00-00', 'herisyanti'),
('0270110', 'Kumalawati Sari Deevy, S.T.', 'P', '0000-00-00', 'kumalawatisari'),
('0290410', 'Michael Jansen Vrise, A.Md.', 'L', '0000-00-00', 'michaeljansen'),
('0300410', 'Andry Hadiwijaya, S.S.', 'L', '0000-00-00', 'andryhadiwijaya'),
('0380311', 'Joko Suyono, S.Pd.', 'L', '0000-00-00', 'jokosuyono'),
('0390311', 'Merisya, S.Si, S.Pd.', 'P', '0000-00-00', 'merisya'),
('0400311', 'Rani Pusparani, S.Pd.', 'P', '0000-00-00', 'ranipusparani'),
('0430411', 'Yani Mulyani, S.Pd.I.', 'P', '0000-00-00', 'yanimulyani'),
('0450711', 'Dani Humaeni, S.Pd.', 'L', '0000-00-00', 'danihumaeni'),
('0460611', 'Elly Nailufar, S.S.', 'P', '0000-00-00', 'ellynailufar'),
('0480711', 'Reni Sulistiani, S.Pd.I.', 'P', '0000-00-00', 'renisulistiani'),
('0501111', 'Indah Puspasari, S.P.', 'P', '0000-00-00', 'indahpuspasari'),
('0530112', 'Gagan Kusumawardhana, S.Pd.', 'L', '0000-00-00', 'gagankusumawardhana'),
('0671212', 'Rika Harlia S.Psi.', 'P', '0000-00-00', 'rikaharlia'),
('0810813', 'Jaelani Ginanjar, S.Pd.I.', 'L', '0000-00-00', 'jaelaniginanjar'),
('0820913', 'Arni Febriani, S.Pd.', 'P', '0000-00-00', 'arnifebriani'),
('0871113', 'Ely Femilawati, S.Pd.', 'P', '0000-00-00', 'elyfemilawati'),
('0921213', 'Yuni Handini Anie, S.Pd.', 'P', '0000-00-00', 'yunihandinianie'),
('0941213', 'Arni Yanti, S.Pd.', 'P', '0000-00-00', 'arniyanti'),
('0980114', 'Galuh Ayuningtyas, S.T., M.Si.', 'P', '0000-00-00', 'galuhayuningtyas'),
('1110814', 'Nur Riski Kintarti, S.Pd.', 'P', '0000-00-00', 'nurriskikintarti'),
('1120814', 'Sofi Safitri, S.Pd.', 'P', '0000-00-00', 'sofisafitri'),
('1150814', 'Ita Fuji A, S.Pd.', 'P', '0000-00-00', 'itafuji'),
('1171014', 'Dede Sopyan, S.Ud.', 'L', '0000-00-00', 'dedesopyan'),
('1240115', 'Tika Pebriyani, S.Pd.', 'P', '0000-00-00', 'tikapebriyani'),
('1310615', 'Hani Hadiyani, S.Pd.I.', 'P', '0000-00-00', 'hanihadiyani'),
('1350815', 'Catherien Suci R P, S.Fil.I.', 'P', '0000-00-00', 'catheriensuci'),
('1470214', 'Dewiyana Agustina, S.Pd.', 'P', '0000-00-00', 'dewiyanaagustina'),
('1470616', 'Nani Sintiawati, S.Pd.', 'P', '0000-00-00', 'nanisintiawati'),
('1480616', 'Siti Rahmah Diyanti, S.Pd.', 'P', '0000-00-00', 'sitirahmah'),
('1490616', 'Rita Nurfitri, S.Pd.', 'P', '0000-00-00', 'ritanurfitri'),
('1530916', 'Dzikra Husnul Fauziah, S.Pd.', 'P', '0000-00-00', 'dzikrahusnul'),
('230110', 'Helmy Firmansyah, S Pd.', 'L', '2016-10-11', 'Helmy'),
('300410', 'Farida Usmiyati, S Pd.', 'P', '2016-10-11', 'farida'),
('820913', 'Dicky Hamdani, S Pd.', 'L', '2016-10-11', 'Diky'),
('820914', 'Fitri Hanifah, S Pd.', 'P', '2016-10-12', 'Fitri'),
('H031213', 'Annisa Setya Rini, S.Pd.', 'P', '0000-00-00', 'annisasetyarini'),
('H041015', 'Huda Ahmad S.H., S.Pd.I.', 'L', '0000-00-00', 'hudaahmad');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(255) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `tabel` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `jenis`, `tabel`, `username`, `waktu`, `keterangan`) VALUES
(1, 'Update', 'User', 'arsetya', '2016-09-20 12:04:09', 'Ubah password setyawan oleh arsetya'),
(2, 'Update', 'User', 'arsetya', '2016-09-20 12:12:32', 'Ubah password setyawan oleh arsetya'),
(3, 'Update', 'Modul', 'arsetya', '2016-09-20 13:11:37', 'Otoritas Wali-Kelas-Nilai Siswa (Wakel) Non-Aktif oleh arsetya'),
(4, 'Update', 'Modul', 'arsetya', '2016-09-20 13:17:27', 'Ubah Modul Nilai Siswa oleh arsetya'),
(5, 'Update', 'Modul', 'arsetya', '2016-09-20 13:25:58', 'Otoritas Wali-Kelas-Nilai Siswa Non-Aktif oleh arsetya'),
(6, 'Update', 'Modul', 'arsetya', '2016-09-20 13:29:53', 'Otoritas Guru-Materi Non-Aktif oleh arsetya'),
(7, 'Update', 'User', 'setyawan', '2016-09-20 13:45:18', 'Ubah password oleh setyawan'),
(8, 'Update', 'User', 'setyawan', '2016-09-20 13:46:40', 'Ubah password oleh setyawan'),
(9, 'Update', 'User', 'setyawan', '2016-09-20 13:47:07', 'Ubah password oleh setyawan'),
(10, 'Update', 'Modul', 'arsetya', '2016-09-23 16:54:36', 'Ubah Modul Nilai Evaluasi PMP oleh arsetya'),
(11, 'Update', 'Modul', 'arsetya', '2016-09-23 16:55:27', 'Ubah Modul Nilai Pegawai oleh arsetya'),
(12, 'Update', 'Modul', 'arsetya', '2016-09-23 16:56:20', 'Ubah Modul Nilai Remed oleh arsetya'),
(13, 'Update', 'Modul', 'arsetya', '2016-09-23 16:56:37', 'Ubah Modul Nilai Sikap oleh arsetya'),
(14, 'Update', 'Modul', 'arsetya', '2016-09-23 16:57:57', 'Ubah Modul Presensi (Crk) oleh arsetya'),
(15, 'Update', 'Modul', 'arsetya', '2016-09-23 16:58:14', 'Ubah Modul Jadwal Remed Anak oleh arsetya'),
(16, 'Update', 'Modul', 'arsetya', '2016-09-23 16:58:51', 'Ubah Modul Jadwal Remed Siswa oleh arsetya'),
(17, 'Update', 'Modul', 'arsetya', '2016-09-23 16:59:20', 'Ubah Modul Presensi (Spm) oleh arsetya'),
(18, 'Update', 'Modul', 'arsetya', '2016-09-23 17:00:19', 'Ubah Modul Laporan Psikotes oleh arsetya'),
(19, 'Update', 'Modul', 'arsetya', '2016-09-23 17:01:05', 'Ubah Modul Penilaian (Spm) oleh arsetya'),
(20, 'Update', 'Modul', 'arsetya', '2016-09-23 17:02:14', 'Ubah Modul Nilai Anak oleh arsetya'),
(21, 'Update', 'Modul', 'arsetya', '2016-09-23 17:02:25', 'Ubah Modul Psikotes oleh arsetya'),
(22, 'Update', 'Modul', 'arsetya', '2016-09-23 17:05:13', 'Ubah Modul Laporan Kebersihan oleh arsetya'),
(23, 'Update', 'Modul', 'arsetya', '2016-09-23 17:05:53', 'Ubah Modul Kebersihan oleh arsetya'),
(24, 'Update', 'User', 'arsetya', '2016-09-28 16:53:59', 'Ubah password setyawan oleh arsetya'),
(25, 'Update', 'User', 'arsetya', '2016-09-28 16:59:07', 'Ubah password setyawan oleh arsetya'),
(26, 'Update', 'User', 'arsetya', '2016-09-28 17:05:08', 'Ubah password setyawan oleh arsetya'),
(27, 'Update', 'User', 'arsetya', '2016-09-28 17:16:12', 'Ubah password setyawan oleh arsetya'),
(28, 'Update', 'User', 'arsetya', '2016-09-28 17:23:59', 'Ubah password setyawan oleh arsetya'),
(29, 'Update', 'User', 'arsetya', '2016-09-28 17:27:09', 'Ubah password setyawan oleh arsetya'),
(30, 'Update', 'User', 'setyawan', '2016-09-28 17:39:01', 'Reset password oleh setyawan'),
(31, 'Update', 'Modul', 'arsetya', '2016-09-29 11:28:52', 'Ubah Modul Administrasi Psikotes oleh arsetya'),
(32, 'Update', 'Modul', 'arsetya', '2016-09-29 12:03:17', 'Ubah Modul Jadwal Remed Siswa oleh arsetya'),
(33, 'Update', 'Modul', 'arsetya', '2016-10-02 06:11:30', 'Ubah Modul Rekap Pengajuan Barang oleh arsetya'),
(34, 'Update', 'Modul', 'arsetya', '2016-10-02 06:12:45', 'Ubah Modul Rekap Pengajuan oleh arsetya'),
(35, 'Update', 'Modul', 'arsetya', '2016-10-02 06:16:02', 'Ubah Modul Jadwal Remed Siswa oleh arsetya'),
(36, 'Update', 'User', 'setyawan', '2016-10-03 03:33:29', 'Reset password oleh setyawan'),
(37, 'Update', 'User', 'setyawan', '2016-10-03 03:42:11', 'Reset password oleh setyawan'),
(38, 'Update', 'User', 'setyawan', '2016-10-03 03:45:30', 'Reset password oleh setyawan'),
(39, 'Update', 'User', 'setyawan', '2016-10-05 03:32:50', 'Reset password oleh setyawan'),
(40, 'Update', 'User', 'setyawan', '2016-10-05 05:41:55', 'Reset password oleh setyawan'),
(41, 'Update', 'User', 'setyawan', '2016-10-06 06:51:33', 'Reset password oleh setyawan'),
(42, 'Update', 'Modul', 'admin', '2016-10-14 12:36:46', 'Ubah Modul Administrasi Psikotes oleh admin'),
(43, 'Update', 'Modul', 'admin', '2016-10-14 12:37:03', 'Ubah Modul Biodata Pendaftar oleh admin'),
(44, 'Update', 'Modul', 'admin', '2016-10-14 12:37:03', 'Ubah Modul Biodata Pendaftar oleh admin'),
(45, 'Update', 'Modul', 'admin', '2016-10-14 12:37:12', 'Ubah Modul Data Asal Mula oleh admin'),
(46, 'Update', 'Modul', 'admin', '2016-10-14 12:37:20', 'Ubah Modul Data Orang Tua oleh admin'),
(47, 'Update', 'Modul', 'admin', '2016-10-14 12:37:29', 'Ubah Modul Data Siswa oleh admin'),
(48, 'Update', 'Modul', 'admin', '2016-10-14 12:37:37', 'Ubah Modul Data Wali oleh admin'),
(49, 'Update', 'Modul', 'admin', '2016-10-14 12:37:53', 'Ubah Modul Jadwal PPDB oleh admin'),
(50, 'Update', 'Modul', 'admin', '2016-10-14 12:38:06', 'Ubah Modul Jadwal Seleksi oleh admin'),
(51, 'Update', 'Modul', 'admin', '2016-10-14 12:38:21', 'Ubah Modul Laporan Psikotes oleh admin');

-- --------------------------------------------------------

--
-- Table structure for table `inbox`
--

CREATE TABLE `inbox` (
  `UpdateInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ReceivingDataTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Text` text NOT NULL,
  `SenderNumber` varchar(20) NOT NULL,
  `Coding` varchar(255) NOT NULL,
  `UDH` text NOT NULL,
  `SMSCNumber` varchar(255) NOT NULL,
  `Class` int(255) NOT NULL,
  `TextDecoded` text NOT NULL,
  `ID` int(255) NOT NULL,
  `RecipientID` text NOT NULL,
  `Processed` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `informasi`
--

CREATE TABLE `informasi` (
  `id_informasi` int(255) NOT NULL,
  `Tanggal` date NOT NULL,
  `tanggal_informasi` date DEFAULT NULL,
  `isi_informasi` varchar(1000) DEFAULT NULL,
  `subject_informasi` varchar(255) DEFAULT NULL,
  `NIP` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `informasi`
--

INSERT INTO `informasi` (`id_informasi`, `Tanggal`, `tanggal_informasi`, `isi_informasi`, `subject_informasi`, `NIP`) VALUES
(8, '2016-11-02', '2016-11-02', 'hsdbhasd', 'Ulangan 2', '300410'),
(9, '2016-11-03', '2016-11-03', 'red', 'ds', '300410'),
(10, '2016-11-09', '2016-11-09', 'gffg', 'Ulangan', '300410');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(255) NOT NULL,
  `id_pegawai` varchar(255) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `tugas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_tanggal`
--

CREATE TABLE `jadwal_tanggal` (
  `id_jadwal` int(255) NOT NULL,
  `nama_kegiatan` varchar(255) DEFAULT NULL,
  `keterangan` text,
  `tgl_mulai` date DEFAULT NULL,
  `tgl_selesai` date DEFAULT NULL,
  `ta` varchar(255) DEFAULT NULL,
  `jenis` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal_tanggal`
--

INSERT INTO `jadwal_tanggal` (`id_jadwal`, `nama_kegiatan`, `keterangan`, `tgl_mulai`, `tgl_selesai`, `ta`, `jenis`, `status`) VALUES
(1, 'Pendaftaran Peserta Didik Baru', 'PPDB Siswa', '2016-05-09', '2016-05-16', '2016/2017', 'PPDB', 'Belum'),
(19, 'Pengambilan Ijazah', 'Di SD Ar-Rafi\'', '2016-07-23', '2016-07-29', '2016/2017', 'Pengambilan Ijazah', 'Belum'),
(21, 'PPDB', 'PPDB Siswa', '2016-09-05', '2016-09-12', '2016/2017', 'PPDB', 'Belum'),
(22, 'Psikotes', 'Psikotes', '2016-12-03', '2016-12-04', '2016/2017', 'PPDB', 'Belum');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_waktu`
--

CREATE TABLE `jadwal_waktu` (
  `id_jadwal` int(255) NOT NULL,
  `nama_kegiatan` varchar(255) DEFAULT NULL,
  `keterangan` text,
  `tanggal` date DEFAULT NULL,
  `waktu_mulai` time DEFAULT NULL,
  `waktu_selesai` time DEFAULT NULL,
  `ta` varchar(255) DEFAULT NULL,
  `jenis` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `nama_ruangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal_waktu`
--

INSERT INTO `jadwal_waktu` (`id_jadwal`, `nama_kegiatan`, `keterangan`, `tanggal`, `waktu_mulai`, `waktu_selesai`, `ta`, `jenis`, `status`, `nama_ruangan`) VALUES
(1, 'Seleksi', 'Seleksi Siswa', '2016-09-05', '09:00:00', '11:00:00', '2016/2017', 'Seleksi', 'Belum', 'Aula');

-- --------------------------------------------------------

--
-- Table structure for table `jaremedeval`
--

CREATE TABLE `jaremedeval` (
  `idremedeval` int(255) NOT NULL,
  `idbab` varchar(255) NOT NULL,
  `jadwal` date NOT NULL,
  `jam` int(255) NOT NULL,
  `mnt` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jaremedpmp`
--

CREATE TABLE `jaremedpmp` (
  `idremedpmp` int(255) NOT NULL,
  `idkelas` varchar(255) NOT NULL,
  `idmapel` varchar(255) NOT NULL,
  `jadwal` date NOT NULL,
  `semester` int(255) NOT NULL,
  `jam` int(255) NOT NULL,
  `mnt` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jenis_barang`
--

CREATE TABLE `jenis_barang` (
  `id_jenis` varchar(255) NOT NULL,
  `nama_jenis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_barang`
--

INSERT INTO `jenis_barang` (`id_jenis`, `nama_jenis`) VALUES
('J-001', 'inventaris'),
('J-002', 'bhp');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id_kegiatan` int(255) NOT NULL,
  `NIP` varchar(255) DEFAULT NULL,
  `tanggal_kegiatan` date DEFAULT NULL,
  `jam_kegiatan` time NOT NULL,
  `kelas` varchar(255) DEFAULT NULL,
  `nama_angkatan` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kegiatan`
--

INSERT INTO `kegiatan` (`id_kegiatan`, `NIP`, `tanggal_kegiatan`, `jam_kegiatan`, `kelas`, `nama_angkatan`, `status`) VALUES
(1, '300410', '2016-10-19', '17:08:21', '1 Joy', 'Menghitung', 'Menghitung'),
(2, '300410', '2016-10-19', '17:08:46', '2 Love', 'Menulis Huruf Sambung', 'TUNTAS'),
(3, '300410', '2016-10-19', '17:08:46', '2 Love', 'Menulis Huruf Sambung', 'TIDAK TUNTAS'),
(4, '300410', '2016-10-20', '13:30:16', '1 Joy', 'Menghitung', 'TUNTAS'),
(5, '300410', '2016-10-20', '13:30:35', '2 Love', 'Menulis Huruf Sambung', 'TUNTAS'),
(6, '300410', '2016-10-20', '13:30:35', '2 Love', 'Menulis Huruf Sambung', 'TUNTAS'),
(7, '230110', '2016-11-02', '21:06:31', '1 Joy', 'Menulis', 'Menulis'),
(8, '820914', '2016-11-03', '08:17:06', '2 Love', 'Renang', 'TUNTAS'),
(9, '820914', '2016-11-03', '08:17:06', '2 Love', 'Renang', 'TIDAK TUNTAS'),
(10, '300410', '2016-11-03', '08:30:10', '2 Love', 'Sinonim Dan Antonim', 'TUNTAS'),
(11, '300410', '2016-11-03', '08:30:10', '2 Love', 'Sinonim Dan Antonim', 'TUNTAS'),
(12, '300410', '2016-11-03', '14:21:47', '2 Love', 'Menulis Huruf Sambung', 'TUNTAS'),
(13, '300410', '2016-11-03', '14:21:47', '2 Love', 'Menulis Huruf Sambung', 'TUNTAS'),
(14, '300410', '2016-11-07', '13:42:34', '2 Love', 'Menjumlahkan', 'TUNTAS'),
(15, '300410', '2016-11-07', '13:42:34', '2 Love', 'Menjumlahkan', 'TUNTAS'),
(16, '300410', '2016-11-11', '18:31:03', '2 Love', 'Menulis Huruf Sambung', 'TUNTAS'),
(17, '300410', '2016-11-11', '18:31:03', '2 Love', 'Menulis Huruf Sambung', 'TUNTAS');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan_kebersihan`
--

CREATE TABLE `kegiatan_kebersihan` (
  `id_nama` int(255) NOT NULL,
  `nama_kegiatan` varchar(255) NOT NULL,
  `waktu_tambah` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kegiatan_kebersihan`
--

INSERT INTO `kegiatan_kebersihan` (`id_nama`, `nama_kegiatan`, `waktu_tambah`) VALUES
(10, 'Menyapu lantai', '2016-07-20 10:34:52'),
(11, 'Mengepel', '2016-07-20 10:35:05'),
(12, 'Membersihkan Loker', '2016-07-20 10:35:17'),
(13, 'Membersihkan kaca', '2016-07-20 10:35:40'),
(14, 'Membersihkan Kipas Angin', '2016-07-20 10:36:06'),
(15, 'Membantu siswa cuci tangan', '2016-07-20 10:37:39'),
(16, 'Merapikan meja', '2016-07-20 10:38:18'),
(17, 'Membersihkan Toilet', '2016-07-22 09:10:59');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `idkelas` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tingkat` int(255) NOT NULL,
  `tipe` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`idkelas`, `nama`, `tingkat`, `tipe`) VALUES
('1j', '1 Joy', 1, 'Reguler'),
('1l', '1 Love', 1, 'Reguler'),
('1p', '1 Peace', 1, 'Reguler'),
('2j', '2 Joy', 2, 'Reguler'),
('2l', '2 Love', 2, 'Reguler'),
('2p', '2 Peace', 2, 'Reguler'),
('3f', '3 Faith', 3, 'Bilingual'),
('3j', '3 Joy', 3, 'Bilingual'),
('3l', '3 Love', 3, 'Akselerasi'),
('3p', '3 Peace', 3, 'Akselerasi'),
('4f', '4 Faith', 4, 'Bilingual'),
('4j', '4 Joy', 4, 'Bilingual'),
('4l', '4 Love', 4, 'Akselerasi'),
('4p', '4 Peace', 4, 'Akselerasi'),
('5f', '5 Faith', 5, 'Bilingual'),
('5j', '5 Joy', 5, 'Bilingual'),
('5l', '5 Love', 5, 'Akselerasi'),
('5p', '5 Peace', 5, 'Akselerasi'),
('6j', '6 Joy', 6, 'Reguler'),
('1j', '1 Joy', 1, 'Reguler'),
('2l', '2 Love', 2, 'Reguler'),
('3j', '3 Joy', 3, 'Reguler');

-- --------------------------------------------------------

--
-- Table structure for table `kelas_siswa`
--

CREATE TABLE `kelas_siswa` (
  `idkelassiswa` int(255) NOT NULL,
  `nis` varchar(255) NOT NULL,
  `idkelas` varchar(255) NOT NULL,
  `thnajar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas_siswa`
--

INSERT INTO `kelas_siswa` (`idkelassiswa`, `nis`, `idkelas`, `thnajar`) VALUES
(1, '111201004', '6j', '2016/2017'),
(2, '111201005', '6j', '2016/2017'),
(3, '111201006', '6j', '2016/2017'),
(4, '111201013', '6j', '2016/2017'),
(5, '111201017', '6j', '2016/2017'),
(6, '111201018', '6j', '2016/2017'),
(7, '111201023', '6j', '2016/2017'),
(8, '111201029', '6j', '2016/2017'),
(9, '111201031', '6j', '2016/2017'),
(10, '111201032', '6j', '2016/2017'),
(11, '111201035', '6j', '2016/2017'),
(12, '111201040', '6j', '2016/2017'),
(13, '111201041', '6j', '2016/2017'),
(14, '111201042', '6j', '2016/2017'),
(15, '111201050', '6j', '2016/2017'),
(16, '111201053', '6j', '2016/2017'),
(17, '111201056', '6j', '2016/2017'),
(18, '111201064', '6j', '2016/2017'),
(19, '111201069', '6j', '2016/2017'),
(20, '111201072', '6j', '2016/2017'),
(21, '111201075', '6j', '2016/2017'),
(22, '111201080', '6j', '2016/2017'),
(23, '121301001', '5l', '2016/2017'),
(24, '121301002', '5l', '2016/2017'),
(25, '121301003', '5j', '2016/2017'),
(26, '121301004', '5p', '2016/2017'),
(27, '121301005', '5p', '2016/2017'),
(28, '121301006', '5p', '2016/2017'),
(29, '121301007', '5p', '2016/2017'),
(30, '121301008', '5l', '2016/2017'),
(31, '121301009', '5j', '2016/2017'),
(32, '121301010', '5p', '2016/2017'),
(33, '121301011', '5j', '2016/2017'),
(34, '121301012', '5p', '2016/2017'),
(35, '121301013', '5p', '2016/2017'),
(36, '121301014', '5f', '2016/2017'),
(37, '121301015', '5f', '2016/2017'),
(38, '121301016', '5l', '2016/2017'),
(39, '121301017', '5j', '2016/2017'),
(40, '121301018', '5l', '2016/2017'),
(41, '121301019', '5f', '2016/2017'),
(42, '121301020', '5p', '2016/2017'),
(43, '121301021', '5l', '2016/2017'),
(44, '121301022', '5p', '2016/2017'),
(45, '121301023', '5p', '2016/2017'),
(46, '121301024', '5p', '2016/2017'),
(47, '121301025', '5l', '2016/2017'),
(48, '121301026', '5p', '2016/2017'),
(49, '121301027', '5l', '2016/2017'),
(50, '121301029', '5p', '2016/2017'),
(51, '121301030', '5l', '2016/2017'),
(52, '121301031', '5p', '2016/2017'),
(53, '121301032', '5p', '2016/2017'),
(54, '121301033', '5f', '2016/2017'),
(55, '121301034', '5j', '2016/2017'),
(56, '121301036', '5j', '2016/2017'),
(57, '121301037', '5l', '2016/2017'),
(58, '121301038', '5l', '2016/2017'),
(60, '121301041', '5j', '2016/2017'),
(61, '121301042', '5f', '2016/2017'),
(59, '121301039', '5l', '2016/2017'),
(62, '121301043', '5j', '2016/2017'),
(63, '121301044', '5j', '2016/2017'),
(64, '121301046', '5f', '2016/2017'),
(65, '121301047', '5f', '2016/2017'),
(66, '121301048', '5j', '2016/2017'),
(67, '121301049', '5f', '2016/2017'),
(68, '121301050', '5p', '2016/2017'),
(69, '121301051', '5f', '2016/2017'),
(70, '121301052', '5l', '2016/2017'),
(71, '121301053', '5j', '2016/2017'),
(72, '121301054', '5f', '2016/2017'),
(73, '121301055', '5l', '2016/2017'),
(74, '121301056', '5p', '2016/2017'),
(75, '121301057', '5f', '2016/2017'),
(76, '121301058', '5p', '2016/2017'),
(77, '121301059', '5p', '2016/2017'),
(78, '121301060', '5j', '2016/2017'),
(79, '121301061', '5p', '2016/2017'),
(80, '121301062', '5j', '2016/2017'),
(81, '121301063', '5p', '2016/2017'),
(82, '121301064', '5j', '2016/2017'),
(83, '121301065', '5p', '2016/2017'),
(84, '121301066', '5l', '2016/2017'),
(85, '121301067', '5f', '2016/2017'),
(86, '121301068', '5l', '2016/2017'),
(87, '121301069', '5f', '2016/2017'),
(88, '121301070', '5p', '2016/2017'),
(89, '121301071', '5l', '2016/2017'),
(90, '121301072', '5l', '2016/2017'),
(91, '121301073', '5l', '2016/2017'),
(92, '121301074', '5f', '2016/2017'),
(93, '121301075', '5p', '2016/2017'),
(94, '121301076', '5l', '2016/2017'),
(95, '121301077', '5l', '2016/2017'),
(96, '121301078', '5l', '2016/2017'),
(97, '121301079', '5p', '2016/2017'),
(98, '121301080', '5j', '2016/2017'),
(99, '121301081', '5p', '2016/2017'),
(100, '121301083', '5f', '2016/2017'),
(101, '121301084', '5l', '2016/2017'),
(102, '121301085', '5j', '2016/2017'),
(103, '121301086', '5l', '2016/2017'),
(104, '121301087', '5f', '2016/2017'),
(105, '121301088', '5l', '2016/2017'),
(105, '121301089', '5j', '2016/2017'),
(107, '121301090', '5j', '2016/2017'),
(108, '121301092', '5f', '2016/2017'),
(109, '121301093', '5p', '2016/2017'),
(110, '121301094', '5p', '2016/2017'),
(111, '121301095', '5l', '2016/2017'),
(112, '121301096', '5f', '2016/2017'),
(113, '121301097', '5f', '2016/2017'),
(114, '121301103', '5j', '2016/2017'),
(115, '121301107', '5f', '2016/2017'),
(116, '121301109', '5l', '2016/2017'),
(117, '121302104', '6j', '2016/2017'),
(118, '131401001', '4j', '2016/2017'),
(119, '131401002', '4p', '2016/2017'),
(120, '131401003', '4l', '2016/2017'),
(121, '131401004', '4l', '2016/2017'),
(122, '131401005', '4l', '2016/2017'),
(123, '131401006', '4f', '2016/2017'),
(124, '131401007', '4j', '2016/2017'),
(125, '131401008', '4l', '2016/2017'),
(126, '131401010', '4p', '2016/2017'),
(127, '131401011', '4f', '2016/2017'),
(128, '131401012', '4j', '2016/2017'),
(129, '131401013', '4j', '2016/2017'),
(130, '131401014', '4l', '2016/2017'),
(131, '131401015', '4p', '2016/2017'),
(132, '131401016', '4l', '2016/2017'),
(133, '131401017', '4p', '2016/2017'),
(134, '131401018', '4p', '2016/2017'),
(135, '131401019', '4j', '2016/2017'),
(136, '131401020', '4p', '2016/2017'),
(137, '131401021', '4l', '2016/2017'),
(138, '131401022', '4l', '2016/2017'),
(139, '131401023', '4j', '2016/2017'),
(140, '131401024', '4l', '2016/2017'),
(141, '131401025', '4j', '2016/2017'),
(142, '131401026', '4l', '2016/2017'),
(143, '131401027', '4l', '2016/2017'),
(144, '131401028', '4p', '2016/2017'),
(145, '131401029', '4p', '2016/2017'),
(146, '131401030', '4l', '2016/2017'),
(147, '131401031', '4p', '2016/2017'),
(148, '131401032', '4l', '2016/2017'),
(149, '131401033', '4l', '2016/2017'),
(150, '131401035', '4p', '2016/2017');

-- --------------------------------------------------------

--
-- Table structure for table `ket_ortu`
--

CREATE TABLE `ket_ortu` (
  `id_ortu` varchar(255) NOT NULL,
  `nama_ayah` varchar(255) DEFAULT NULL,
  `nama_ibu` varchar(255) DEFAULT NULL,
  `pdd_ayah` varchar(255) DEFAULT NULL,
  `pdd_ibu` varchar(255) DEFAULT NULL,
  `pekerjaan_ayah` varchar(255) DEFAULT NULL,
  `nama_perusahaan_ayah` varchar(255) DEFAULT NULL,
  `alamat_perusahaan_ayah` text,
  `email_kantor_ayah` varchar(255) DEFAULT NULL,
  `pekerjaan_ibu` varchar(255) DEFAULT NULL,
  `nama_perusahaan_ibu` varchar(255) DEFAULT NULL,
  `alamat_perusahaan_ibu` text,
  `email_kantor_ibu` varchar(255) DEFAULT NULL,
  `penghasilan` int(255) DEFAULT NULL,
  `no_pendaftaran` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ket_siswa`
--

CREATE TABLE `ket_siswa` (
  `no_pendaftaran` int(255) NOT NULL,
  `nik` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) DEFAULT NULL,
  `nama_panggilan` varchar(255) DEFAULT NULL,
  `jekel` char(2) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `agama` varchar(255) DEFAULT NULL,
  `kewarganegaraan` varchar(25) DEFAULT NULL,
  `anak_ke` int(255) DEFAULT NULL,
  `jumlah_saudara_kandung` int(255) DEFAULT NULL,
  `jumlah_saudara_tiri` int(255) DEFAULT NULL,
  `jumlah_saudara_angkat` int(255) DEFAULT NULL,
  `bahasa_sehari` varchar(255) DEFAULT NULL,
  `berat_badan` int(255) DEFAULT NULL,
  `tinggi_badan` int(255) DEFAULT NULL,
  `goda` char(2) DEFAULT NULL,
  `penyakit_derita` text,
  `alamat_rumah` text,
  `rt` char(3) DEFAULT NULL,
  `rw` char(3) DEFAULT NULL,
  `kelurahan` varchar(255) DEFAULT NULL,
  `kecamatan` varchar(255) DEFAULT NULL,
  `kota_kabupaten` varchar(255) DEFAULT NULL,
  `provinsi` varchar(255) DEFAULT NULL,
  `kode_area` varchar(255) DEFAULT NULL,
  `telp_rumah` varchar(255) DEFAULT NULL,
  `no_hp` char(13) DEFAULT NULL,
  `kode_pos` char(6) DEFAULT NULL,
  `tempat_tinggal` varchar(255) DEFAULT NULL,
  `jarak_rumah_sekolah` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ket_siswa`
--

INSERT INTO `ket_siswa` (`no_pendaftaran`, `nik`, `nama_lengkap`, `nama_panggilan`, `jekel`, `tgl_lahir`, `agama`, `kewarganegaraan`, `anak_ke`, `jumlah_saudara_kandung`, `jumlah_saudara_tiri`, `jumlah_saudara_angkat`, `bahasa_sehari`, `berat_badan`, `tinggi_badan`, `goda`, `penyakit_derita`, `alamat_rumah`, `rt`, `rw`, `kelurahan`, `kecamatan`, `kota_kabupaten`, `provinsi`, `kode_area`, `telp_rumah`, `no_hp`, `kode_pos`, `tempat_tinggal`, `jarak_rumah_sekolah`) VALUES
(1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08122001392', NULL, NULL, NULL),
(3, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087764605619', NULL, NULL, NULL),
(4, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ket_wali`
--

CREATE TABLE `ket_wali` (
  `id_wali` varchar(255) NOT NULL,
  `nama_wali` varchar(255) DEFAULT NULL,
  `pdd_wali` varchar(255) DEFAULT NULL,
  `hubungan_keluarga` varchar(255) DEFAULT NULL,
  `alamat_rumah` text,
  `rt` varchar(3) DEFAULT NULL,
  `rw` varchar(3) DEFAULT NULL,
  `kelurahan` varchar(255) DEFAULT NULL,
  `kecamatan` varchar(255) DEFAULT NULL,
  `kota_kabupaten` varchar(255) DEFAULT NULL,
  `provinsi` varchar(255) NOT NULL,
  `kode_area` varchar(7) NOT NULL,
  `telp_rumah` varchar(255) DEFAULT NULL,
  `no_hp` varchar(13) DEFAULT NULL,
  `kode_pos` varchar(6) DEFAULT NULL,
  `pekerjaan_wali` varchar(255) DEFAULT NULL,
  `nama_perusahaan` varchar(255) DEFAULT NULL,
  `alamat_perusahaan` text,
  `email_wali` varchar(100) DEFAULT NULL,
  `no_pendaftaran` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kunjungan`
--

CREATE TABLE `kunjungan` (
  `id_kunjungan` int(255) NOT NULL,
  `id_presensi` int(255) NOT NULL,
  `tgl_kunjungan` date NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jam_kunjungan` varchar(255) NOT NULL,
  `institusi` varchar(255) NOT NULL,
  `agenda` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kunjungan`
--

INSERT INTO `kunjungan` (`id_kunjungan`, `id_presensi`, `tgl_kunjungan`, `nama`, `jam_kunjungan`, `institusi`, `agenda`) VALUES
(10, 0, '2016-07-20', '10:10', 'Dita', 'Telkom University', 'Survey'),
(11, 0, '2016-07-21', '08:00', 'Rendra', 'Tel U', 'Survey'),
(12, 0, '2016-07-18', '10:00', 'Fendi', 'Tel U', 'Survey PA'),
(13, 0, '2016-08-01', '09:01', 'Azis S', 'Dinas Pendidikan', 'Diskusi Project'),
(14, 0, '2016-07-19', '07:00', 'Nia Clodia', 'Wali Murid', 'Mengantar Buku Anak'),
(15, 0, '2016-07-22', '09:00', 'Nia C', 'Tel U', 'Survey Pa'),
(16, 0, '2016-09-02', '13:01', 'fendi', 'Tel U', 'Survey'),
(17, 0, '2017-01-03', '01:00', 'rara', 'tel u', 'survey');

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `id_Laporan` int(255) NOT NULL,
  `tanggal_laporan` date DEFAULT NULL,
  `isi_laporan` mediumtext,
  `id_pegawai` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`id_Laporan`, `tanggal_laporan`, `isi_laporan`, `id_pegawai`) VALUES
(1, '2016-10-26', '<div style=\"text-align: center;\">Laporan Tanggapan Respon Orang Tua</div><p style=\"text-align: left;\">Berikut adalah laporan tanggapan respon orang tua yang sudah saya rangkum</p><ol><li style=\"text-align: left;\">Kelas 2 Love mengalami masalah ....................</li><li style=\"text-align: left;\">sekolah memerlukan ....................</li><li style=\"text-align: left;\">sekolah memerlukan ...................<br></li><li style=\"text-align: left;\">sekolah memerlukan ...................<br></li><li style=\"text-align: left;\">sekolah memerlukan ...................<br></li><li style=\"text-align: left;\">sekolah memerlukan ...................<br></li><li style=\"text-align: left;\">sekolah memerlukan ...................</li><li style=\"text-align: left;\">dll</li></ol><p style=\"text-align: left;\">hanya sampai itu yang saya bisa laporan terima kasih&nbsp;</p><p style=\"text-align: left;\">Wasallamm</p>', '0280410'),
(2, '2016-11-10', '<p>bhhhhvhvh<span style=\"font-size: 11px;\">&nbsp;gghg</span></p><p style=\"line-height: 1;\"><span style=\"font-size: 11px;\">jkkjjjj</span><span style=\"font-size: 14px;\">&nbsp;hjghghghg</span></p>', '0280410'),
(3, '2016-11-10', '<div style=\"color: rgb(121, 121, 121); text-align: center; background-color: rgb(244, 248, 251);\">Laporan Tanggapan Respon Orang Tua</div><p style=\"margin-bottom: 10px; color: rgb(121, 121, 121); background-color: rgb(244, 248, 251);\">Berikut adalah laporan tanggapan respon orang tua yang sudah saya rangkum</p><ol style=\"color: rgb(121, 121, 121); background-color: rgb(244, 248, 251);\"><li style=\"text-align: left;\">Kelas 2 Love mengalami masalah ....................</li><li style=\"text-align: left;\">sekolah memerlukan ....................</li><li style=\"text-align: left;\">sekolah memerlukan ...................<br></li><li style=\"text-align: left;\">sekolah memerlukan ...................<br></li><li style=\"text-align: left;\">sekolah memerlukan ...................<br></li><li style=\"text-align: left;\">sekolah memerlukan ...................<br></li><li style=\"text-align: left;\">sekolah memerlukan ...................</li><li style=\"text-align: left;\">dll</li></ol><p style=\"margin-bottom: 10px; color: rgb(121, 121, 121); background-color: rgb(244, 248, 251);\">hanya sampai itu yang saya bisa laporan terima kasih&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 10px; color: rgb(121, 121, 121); background-color: rgb(244, 248, 251);\">Wasallamm</p>', '0280410');

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `idmapel` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kkm` int(255) NOT NULL,
  `Kl` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`idmapel`, `nama`, `kkm`, `Kl`) VALUES
('1TEMA1j', 'Tematik', 76, ''),
('1TEMA1l', 'Tematik', 76, ''),
('1TEMA1p', 'Tematik', 76, ''),
('1TEMA2j', 'Tematik', 76, ''),
('1TEMA2l', 'Tematik', 76, ''),
('1TEMA2p', 'Tematik', 76, ''),
('2TEMA1j', 'Tematik', 76, ''),
('2TEMA1l', 'Tematik', 76, ''),
('2TEMA1p', 'Tematik', 76, ''),
('2TEMA2j', 'Tematik', 76, ''),
('2TEMA2l', 'Tematik', 76, ''),
('2TEMA2p', 'Tematik', 76, ''),
('BIND1', 'Bahasa Indonesia', 76, ''),
('BIND2', 'Bahasa Indonesia', 76, ''),
('BIND3', 'Bahasa Indonesia', 76, ''),
('BIND4', 'Bahasa Indonesia', 76, ''),
('BIND5jf', 'Bahasa Indonesia', 76, ''),
('BIND5lp6j', 'Bahasa Indonesia', 76, ''),
('BINDL2', 'Bahasa Indonesia 2', 76, ''),
('BING3fj4fj', 'Bahasa Inggris', 76, ''),
('BING3lp', 'Bahasa Inggris', 76, ''),
('BING4lp5fj', 'Bahasa Inggris', 76, ''),
('BING5lp6j', 'Bahasa Inggris', 76, ''),
('BIO3fj', 'Biologi', 76, ''),
('BIO3lp4lp', 'Biologi', 76, ''),
('BIO4fj5fj', 'Biologi', 76, ''),
('BIO5lp6j', 'Biologi', 76, ''),
('BSUN3', 'Bahasa Sunda', 76, ''),
('BSUN4', 'Bahasa Sunda', 76, ''),
('BSUN56j', 'Bahasa Sunda', 76, ''),
('FIS3lp', 'Fisika', 76, ''),
('FIS3lp4', 'Fisika', 76, ''),
('FIS5fj', 'Fisika', 76, ''),
('FIS5lp6j', 'Fisika', 76, ''),
('MAT1fjp', 'Matematika', 76, ''),
('MAT2fjp', 'Matematika', 76, ''),
('MAT3', 'Matematika', 76, ''),
('MAT3fjp', 'Matematika', 76, ''),
('MAT3l4fj', 'Matematika', 76, ''),
('Mat4', 'Matematika', 76, ''),
('MAT4l', 'Matematika', 76, ''),
('MAT4p5fj', 'Matematika', 76, ''),
('MAT5lp6j', 'Matematika', 76, ''),
('PAI3', 'Pendidikan Agama Islam', 76, ''),
('PAI4', 'Pendidikan Agama Islam', 76, ''),
('PAI5flp6j', 'Pendidikan Agama Islam', 76, ''),
('PAI5j', 'Pendidikan Agama Islam', 76, ''),
('Pen2', 'Penjaskes', 76, ''),
('Pen3', 'Penjaskes', 76, ''),
('Pen4', 'Penjasjes', 76, ''),
('PENJAS123', 'Pendidikan Jasmani', 76, ''),
('PKPS3', 'PKPS', 76, ''),
('PKPS45fj', 'PKPS', 76, ''),
('PKPS5lp6j', 'PKPS', 76, ''),
('SBK5fj', 'SBK', 76, ''),
('SBK5lp6j', 'SBK', 76, '');

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE `modul` (
  `kode_modul` int(255) NOT NULL,
  `nama_modul` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`kode_modul`, `nama_modul`, `link`) VALUES
(1, 'Nilai Siswa', 'guru/guru_pilih_nilaisiswa'),
(2, 'Nilai Anak Wali', 'guru/wali_pilih_nilaisiswa'),
(3, 'Nilai Anak', 'ortu/info_pilih_siswa'),
(4, 'Jadwal Remed Siswa', 'guru/guru_jadwalremed_mapel'),
(5, 'Jadwal Remed Anak', 'ortu/inforemed_pilih_siswa'),
(6, 'Nilai Evaluasi PMP', 'guru/guru_input_pilihmapel'),
(7, 'Nilai Remed', 'guru/guru_inputremed_pilihmapel'),
(8, 'Nilai Sikap', 'guru/wali_sikap_semester'),
(9, 'Laporan Nilai Siswa', 'guru/wali_laporan_semester'),
(10, 'Raport Siswa', 'guru/wali_rapor_semester'),
(11, 'Jadwal Pegawai', 'c_arAdmin/displaydata_pembg_tugas'),
(12, 'Kebersihan', 'c_arAdmin/displayform_input_nama_kebersihan'),
(13, 'Presensi Pegawai', 'c_arAdmin/displaydata_presensi'),
(14, 'Nilai Pegawai', 'c_arAdmin/displaydata_penilaian'),
(15, 'Laporan Prestasi', 'c_arAdmin/displaylaporanNilai'),
(16, 'Rekap Pengajuan', 'c_arAdmin/displayRekapPengajuan'),
(17, 'History Pengajuan', 'c_arAdmin/displayHistoryRekapPengajuan'),
(18, 'Laporan Kebersihan', 'c_arAdmin/displayLaporanKegiatanCar'),
(19, 'Laporan Kunjungan', 'c_arAdmin/display_rekap_kunjungan'),
(20, 'Laporan Peristiwa', 'c_arAdmin/display_rekap_peristiwa'),
(21, 'Presensi Caraka', 'c_arCaraka/form_presensi'),
(22, 'History Presensi Caraka', 'c_arCaraka/display_history'),
(23, 'Kebersihan Caraka', 'c_arCaraka/displaydata_kegiatan'),
(24, 'Pengajuan BHP', 'c_arCaraka/displaydata_alat'),
(25, 'History Pengajuan BHP', 'c_arCaraka/displayRekapPengajuan'),
(26, 'Penilaian Caraka', 'c_arCaraka/display_penilaianUser'),
(27, 'Presensi Satpam', 'c_arSatpam/form_presensi'),
(28, 'History Presensi Satpam', 'c_arSatpam/display_history'),
(29, 'Kunjungan', 'c_arSatpam/display_kunjungan'),
(30, 'Peristiwa', 'c_arSatpam/display_peristiwa'),
(31, 'Penilaian Satpam', 'c_arSatpam/display_penilaianUser'),
(32, 'Jadwal PPDB', 'registrasi_c/lihat_jadwal_ppdb'),
(33, 'Jadwal Seleksi', 'registrasi_c/lihat_jadwal_seleksi'),
(34, 'Laporan Psikotes', 'registrasi_c/lihat_pembayaran_psikotes'),
(35, 'Data Siswa', 'registrasi_c/form_ket_siswa'),
(36, 'Data Orang Tua', 'registrasi_c/form_ket_ortu'),
(37, 'Data Wali', 'registrasi_c/form_ket_wali'),
(38, 'Data Asal Mula', 'registrasi_c/form_ket_asal'),
(39, 'Biodata Pendaftar', 'registrasi_c/lihat_data_formulir'),
(40, 'Administrasi Psikotes', 'registrasi_c/form_bayar_psikotes');

-- --------------------------------------------------------

--
-- Table structure for table `nisn`
--

CREATE TABLE `nisn` (
  `nama_lengkap` varchar(255) DEFAULT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `nama_panggilan` varchar(255) DEFAULT NULL,
  `jekel` char(1) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `agama` varchar(255) DEFAULT NULL,
  `kewarganegaraan` char(3) DEFAULT NULL,
  `anak_ke` int(255) DEFAULT NULL,
  `jumlah_saudara_kandung` int(255) DEFAULT NULL,
  `jumlah_saudara_tiri` int(255) DEFAULT NULL,
  `jumlah_saudara_angkat` int(255) DEFAULT NULL,
  `bahasa_sehari` varchar(255) DEFAULT NULL,
  `berat_badan` int(255) DEFAULT NULL,
  `tinggi_badan` int(255) DEFAULT NULL,
  `goda` char(2) DEFAULT NULL,
  `penyakit_derita` text,
  `alamat_rumah` text,
  `rt` char(3) DEFAULT NULL,
  `rw` char(3) DEFAULT NULL,
  `kelurahan` varchar(255) DEFAULT NULL,
  `kecamatan` varchar(255) DEFAULT NULL,
  `kota_kabupaten` varchar(255) DEFAULT NULL,
  `kode_area` varchar(255) DEFAULT NULL,
  `telp_rumah` varchar(13) DEFAULT NULL,
  `no_hp` char(13) DEFAULT NULL,
  `kode_pos` char(6) DEFAULT NULL,
  `tempat_tinggal` varchar(255) DEFAULT NULL,
  `jarak_rumah_sekolah` int(255) DEFAULT NULL,
  `no_pendaftaran` varchar(255) DEFAULT NULL,
  `jenis_pendaftaran` varchar(255) DEFAULT NULL,
  `tgl_masuk_sekolah` date DEFAULT NULL,
  `nis` varchar(255) DEFAULT NULL,
  `paud` varchar(5) DEFAULT NULL,
  `no_skhun` varchar(255) DEFAULT NULL,
  `no_ijazah` varchar(255) DEFAULT NULL,
  `hobi` varchar(255) DEFAULT NULL,
  `cita_cita` varchar(255) DEFAULT NULL,
  `nisn` varchar(255) DEFAULT NULL,
  `berkebutuhan_khusus` varchar(255) DEFAULT NULL,
  `nama_dusun` varchar(255) DEFAULT NULL,
  `moda_transportasi` varchar(255) DEFAULT NULL,
  `kps_pkh_kip` varchar(255) DEFAULT NULL,
  `no_kps_pkh_kip` varchar(255) DEFAULT NULL,
  `tahun_lahir_ayah` varchar(255) DEFAULT NULL,
  `penghasilan_bulanan_ayah` varchar(255) DEFAULT NULL,
  `berkubutuhan_khusus_ayah` varchar(255) DEFAULT NULL,
  `tahun_lahir_ibu` varchar(255) DEFAULT NULL,
  `penghasilan_bulanan_ibu` varchar(255) DEFAULT NULL,
  `berkebutuhan_khusus_ibu` varchar(255) DEFAULT NULL,
  `tahun_lahir_wali` varchar(255) DEFAULT NULL,
  `penghasilan_bulanan_wali` varchar(255) DEFAULT NULL,
  `berkebutuhan_khusus_wali` varchar(255) DEFAULT NULL,
  `waktu_tempuh` time DEFAULT NULL,
  `jenis_prestasi` varchar(255) DEFAULT NULL,
  `tingkat_prestasi` varchar(255) DEFAULT NULL,
  `nama_prestasi` varchar(255) DEFAULT NULL,
  `tahun_prestasi` varchar(255) DEFAULT NULL,
  `penyelenggara` varchar(255) DEFAULT NULL,
  `jenis_beasiswa` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `tahun_mulai_beasiswa` text,
  `tahun_selesai_beasiswa` varchar(255) DEFAULT NULL,
  `keluar_karena` varchar(255) DEFAULT NULL,
  `tgl_keluar_sekolah` date DEFAULT NULL,
  `alasan` varchar(255) DEFAULT NULL,
  `nama_ayah` varchar(255) DEFAULT NULL,
  `nama_ibu` varchar(255) DEFAULT NULL,
  `pdd_ayah` varchar(255) DEFAULT NULL,
  `pdd_ibu` varchar(255) DEFAULT NULL,
  `pekerjaan_ayah` varchar(255) DEFAULT NULL,
  `pekerjaan_ibu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notifikasi`
--

CREATE TABLE `notifikasi` (
  `id_notifikasi` int(255) NOT NULL,
  `jenis` varchar(255) DEFAULT NULL,
  `ringkasan` varchar(255) DEFAULT NULL,
  `keterangan` text,
  `tanggal` date DEFAULT NULL,
  `jam` time DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `privilege` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `online`
--

CREATE TABLE `online` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `time` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `online`
--

INSERT INTO `online` (`id`, `username`, `time`) VALUES
(0, 'Aulia', 1521170296),
(1, 'imas.rohimah72', 1515391720);

-- --------------------------------------------------------

--
-- Table structure for table `ortu`
--

CREATE TABLE `ortu` (
  `idortu` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `telp` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `username` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ortu`
--

INSERT INTO `ortu` (`idortu`, `nama`, `telp`, `alamat`, `username`) VALUES
(1, 'Abdul Hadi/Wiwin Eka Cahyani', '', '', NULL),
(2, 'Abdul Hanis/Nia Nurkania K.', '', '', NULL),
(3, 'Achmad Asegaf/Yenny Christin Ningrum', '', '', NULL),
(4, 'Achmad Fachrozal/Anita Daniaty', '', '', NULL),
(5, 'Achmad Hanafi/Euis Maryani', '', '', NULL),
(6, 'Achmad Hidayat/Dewi Aryani', '', '', NULL),
(7, 'Achmad Ma\'mun/Rahma Adi Budi Arini', '', '', NULL),
(8, 'Achmad Syafiyudin Al Husni. S.Sos/Popi Puspitasari', '', '', NULL),
(9, 'Achmad Syarief/Nina Ratnaningsih', '', '', NULL),
(10, 'Adanan Mangopang/Ratna Damayanti', '', '', NULL),
(11, 'Ade Hermansyah/Ratu Adisty Adriana', '', '', NULL),
(12, 'Ade Yudiaman/Mulyani', '', '', NULL),
(13, 'Adi Irawan Thamrin/Fika Oktaviana', '', '', NULL),
(14, 'Adi Kurniadi Nugraha/Sofi Safitri', '', '', NULL),
(15, 'Adi Prabowo/Efironda Windhari', '', '', NULL),
(16, 'Adi Sriyadi/Yuni Hendarsih', '', '', NULL),
(17, 'Adib Budi Swasono/Reni Anggraeni', '', '', NULL),
(18, 'Adnan Mangopang/Ratna Damayanti', '', '', NULL),
(19, 'Adriadi Sjamsoel Arief/Raden Putri Amelia Dewi Asmayannie', '', '', NULL),
(20, 'Adrian Adam/Miawati', '', '', NULL),
(21, 'Afin Safrudin/Rini Tri Wahyuni', '', '', NULL),
(22, 'Agi Ginanjar/Pipit Kusmayati ', '', '', NULL),
(23, 'Agung Budi Cahyono/Liza Triziawaty Maidin', '', '', NULL),
(24, 'Agung Budi S./Erlyn Regina', '', '', NULL),
(25, 'Agung Purwadi Ekosari/Rusi Dwi Hermina', '', '', NULL),
(26, 'Agus Dwi Yudiyanto/Ani Kusmini', '', '', NULL),
(27, 'Agus Haryadi/Anis Musyarofah', '', '', NULL),
(28, 'Agus Nur Kholil/Evi Efiyanti Effendi', '', '', NULL),
(29, 'Agus Rahman Arifianto/Isriningsih', '', '', NULL),
(30, 'Agus Rochgusna/Elsa Prasasty', '', '', NULL),
(31, 'Agus Zahalan, SE/Dra. Ida Nurwidayanti', '', '', NULL),
(32, 'Ahmad Nurhidayat/Essa Nurraini', '', '', NULL),
(33, 'Ahmad Sanusi/Patimah', '', '', NULL),
(34, 'Ahmad Syamsir/Hany Dwiwati', '', '', NULL),
(35, 'Alie Pamudji/Genita Cansrina', '', '', NULL),
(36, 'Alit Wandana/Nissa Dwiprimayanti', '', '', NULL),
(37, 'Amir Hamzah/Laelawati', '', '', NULL),
(38, 'Amires Pahala/Fitria Adhyaksawirakarinny', '', '', NULL),
(39, 'Anandoz Bangsawan/Siti Diana Aisyah', '', '', NULL),
(40, 'Anda Rochimat/Tintin Suhartini', '', '', NULL),
(41, 'Andi Sofyan/Nina Fitriana', '', '', NULL),
(42, 'Andri Gautama Suryabrata/Rina Armina Yuniarti', '', '', NULL),
(43, 'Andri Yudistira/Fitri Siyamah', '', '', NULL),
(44, 'Andriaji Tisnawinata/Heni Mulyani', '', '', NULL),
(45, 'Andrian Darmadji/Rizkina Martiani Setyawati', '', '', NULL),
(46, 'Andrianto Bambang/Yusan Santi Maryam', '', '', NULL),
(47, 'Andriyanto/Irma Apriyanti Irawan', '', '', NULL),
(48, 'Andry Hadiwijaya/Laely Indriyani', '', '', NULL),
(49, 'Andy Herlambang/Ghina Fathiah', '', '', NULL),
(50, 'Angga Fitra Rahim/Lina Nuraini', '', '', NULL),
(51, 'Anggi Ahmadi/Endang Dwi Hastuti', '', '', NULL),
(52, 'Anthon Budhayana S.Si/Fitri Astuty S.Sos', '', '', NULL),
(53, 'Antony Adam Hardiantoro/Fenty Ferryanty', '', '', NULL),
(54, 'Anwar Prathama/Dini Meliansari', '', '', NULL),
(55, 'Apria Widya Alfisa/Helita Ningsih', '', '', NULL),
(56, 'Apriyanto/Yuyun Yuniar', '', '', NULL),
(57, 'Ari Sulistyo/Sesri Mayenti', '', '', NULL),
(58, 'Arief Budiman/Widia Tresnawati', '', '', NULL),
(59, 'Arief Rachmat Hidayat/Yuli Djuliani', '', '', NULL),
(60, 'Aris Hartaman/Ani Yuliani', '', '', NULL),
(61, 'Aris Hendradinata/Sofie Yusmira Oktane', '', '', NULL),
(62, 'Arman Wahyudi/Ria Mulyasari', '', '', NULL),
(63, 'Arya Bayu/Asri Cahyaningrum', '', '', NULL),
(64, 'Asep Gunajat/Lilis Kuraesin', '', '', NULL),
(65, 'Asep Kustiawan,ST/Lenna Nopiyanti.SE', '', '', NULL),
(66, 'Asep Mohamad Ridwan/Novi Rosalia', '', '', NULL),
(67, 'Asep Permadi/Emi Maharani', '', '', NULL),
(68, 'Asep Sulaeman/Emma Maryati', '', '', NULL),
(69, 'Asif Rianto/R. Sri Sumiati', '', '', NULL),
(70, 'Aswan/Noor Purwati Atjep Sachrun', '', '', NULL),
(71, 'Atep Budi Purbanto/Wihdiati', '', '', NULL),
(72, 'Ayi Supriatna/Inayatillah ', '', '', NULL),
(73, 'Azirwan  Nuilah/Herisyanti', '', '', NULL),
(74, 'Aziz Mutaqin/Retno Damayanti', '', '', NULL),
(75, 'Badarusyamsi/Ely Arlinawati ', '', '', NULL),
(76, 'Bagus Pramono Adhi/Devi Fitriani', '', '', NULL),
(77, 'Balimin/Rina Rahmawati', '', '', NULL),
(78, 'Bayu Novi Putra Utama/Shanti Silvani', '', '', NULL),
(79, 'Beben Mulyadi/Anna Lestiana', '', '', NULL),
(80, 'Beni Rahadian/Yuanita', '', '', NULL),
(81, 'Benny Chandra Rustam Yarnis/Ratu Citra Sutandiana', '', '', NULL),
(82, 'Berni Sutarman/Dewi Selviani Yulientinah', '', '', NULL),
(83, 'Bhisma Herlambang/Pipit Pitrasari Nurjanah', '', '', NULL),
(84, 'Billy Rahadian /Yeni Rodiah', '', '', NULL),
(85, 'Bimo Trisetyo Kusumo (alm)/Herty Tursilawaty', '', '', NULL),
(86, 'Bintang Purnomo/Lia Agustina', '', '', NULL),
(87, 'Bram Wirakusumah/Linda Nurlinda', '', '', NULL),
(88, 'Budhi Hadisyahputra/Virna Herviana Dewi', '', '', NULL),
(89, 'Budhi Satyawan Abduldjalil/Norita Fajarwati', '', '', NULL),
(90, 'Budi Permana/Sri Wahyuningsih', '', '', NULL),
(91, 'Budi Prasetya/Yuyun Siti Rohmah', '', '', NULL),
(92, 'Budiman Sianturi/Sri Endar Putri Pasaribu', '', '', NULL),
(93, 'Buyung Faisal Adriansyah/Ratna Wulan', '', '', NULL),
(94, 'Chandra Yarra Taruna/Dyan Noor M', '', '', NULL),
(95, 'Cucu/Nurlia', '', '', NULL),
(96, 'D. Very Adi Saputra/Trullie Diyana Widiyantie', '', '', NULL),
(97, 'Dadang/Cucu', '', '', NULL),
(98, 'Dadang Hudaya Somasetia/Nita Perwita Ariyanti', '', '', NULL),
(99, 'Dadang Satia/Enden Roswati', '', '', NULL),
(100, 'Daddi Hariyudha Pratama/Merry Maria M.', '', '', NULL),
(101, 'Danang Rahadi/Karlina Firdausi', '', '', NULL),
(102, 'Dani Firmanto/Ende Sutira', '', '', NULL),
(103, 'Dani Rachman/Diamonalisa Sofianty', '', '', NULL),
(104, 'Danny Andono/Siti Naila Majid', '', '', NULL),
(105, 'Danny Indrayana/Nurasiah Jamil', '', '', NULL),
(106, 'Danny Permana/Astri Ghina', '', '', NULL),
(107, 'Danto/Dewi Nuraisanti', '', '', NULL),
(108, 'Dede Komarudin/Yeni Castriyani', '', '', NULL),
(109, 'Dedi Heryadi/Mita Nurhayati', '', '', NULL),
(110, 'Dedi Setiadi/Siti Nursamsiah', '', '', NULL),
(111, 'Dedi Suprapto/Nur Agustinah', '', '', NULL),
(112, 'Dedih Sutardi/Heny Supyan Hendrayani', '', '', NULL),
(113, 'Dendi Suryo Sugito/Vivi Yulinda', '', '', NULL),
(114, 'Dendi Susilo/Eva Ardiani', '', '', NULL),
(115, 'Dendy Suryo Susito/Vivi Yulinda A.', '', '', NULL),
(116, 'Denny Drajat/Yayi Siti Aisyah S.', '', '', NULL),
(117, 'Denny Irawan Mardiyanto/Dewi Suminar', '', '', NULL),
(118, 'Deny Dananjaya/Santi Yusnita Yulianti', '', '', NULL),
(119, 'Deny Indra Gunawan/Mariana Francissca', '', '', NULL),
(120, 'Deny Novika Hadi/Candiani Ekawati', '', '', NULL),
(121, 'Deny Riza Fauzi/Sarah Ibrahim', '', '', NULL),
(122, 'Dicky Ahmad Djatnika/Ervina Pascarihana Kusuma', '', '', NULL),
(123, 'Dicky Harianto/Diah Rodiah', '', '', NULL),
(124, 'Dicky Yudha Handika/Afrissa Novrika Lubis', '', '', NULL),
(125, 'Dida Armand/Evi Fifih Meijati Sjafrudin', '', '', NULL),
(126, 'Didi Suryadi/Mulyani Racharti', '', '', NULL),
(127, 'Didin Wahyudin/Yuli Purwarosawati', '', '', NULL),
(128, 'Dikdik Ahmad Sodikin/Yuliana', '', '', NULL),
(129, 'Dito Gunandi/Dini Nurainillah Jauhar Nafisah', '', '', NULL),
(130, 'Diyan Sofiyan/Hema Sophia Suhandi', '', '', NULL),
(131, 'Djumara Frassap STP/Tjatur Erra P.', '', '', NULL),
(132, 'Dody Ristanto Wisnu/R. Nungke Rochjatti', '', '', NULL),
(133, 'Donial Hamka/Poppy Martiana Ratnasari', '', '', NULL),
(134, 'Dony Indra Jaya/Nina Nurjanah', '', '', NULL),
(135, 'Drs. Ohan Subhan/Ir. Evih Fatimah', '', '', NULL),
(136, 'Duddy Soegiarto/Hamidah', '', '', NULL),
(137, 'Dudi Suhandi/Fitria Edliana', '', '', NULL),
(138, 'Dwi Ananta Wahyu Wardhana/Astri Utami Dewi', '', '', NULL),
(139, 'Dwi Putra Benz Budi Utama Sutarto/Umi Ekawaty', '', '', NULL),
(140, 'Edi Deswanto/Rr. Novi Trihartini', '', '', NULL),
(141, 'Edward Fahmi/Fitri Rahmawati', '', '', NULL),
(142, 'Eka Kurnia Ramdani/Dini Kusumawardhani', '', '', NULL),
(143, 'Eko Supriyanto/Novi Linggawati', '', '', NULL),
(144, 'Elananda Mahendrajaya/Septiliyose', '', '', NULL),
(145, 'Endang Saefuloh/Arie Suryani', '', '', NULL),
(146, 'Eppy Buchori Aristiady Kardiman/Yoana Amelia Dewi', '', '', NULL),
(147, 'Eri Ridwan/Jeni Tresnabudi', '', '', NULL),
(148, 'Eric Hendriya/Afdila Fiddini Rachmawati', '', '', NULL),
(149, 'Erick Muhammad Taufik/Safarina Madyani', '', '', NULL),
(150, 'Erik Krismawan/Indri Noorridhayanti', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `outbox`
--

CREATE TABLE `outbox` (
  `UpdateInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `InsertItoDB` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SendingDateTime` datetime NOT NULL,
  `SendingBefore` time NOT NULL,
  `SendAfter` time NOT NULL,
  `Text` text,
  `DestinationNumber` varchar(255) NOT NULL,
  `Coding` varchar(255) NOT NULL,
  `UDH` text,
  `Class` int(255) DEFAULT NULL,
  `TextDecoded` text NOT NULL,
  `ID` int(255) NOT NULL,
  `Multipart` varchar(255) DEFAULT NULL,
  `RelativeValidity` int(255) DEFAULT NULL,
  `SenderID` varchar(255) DEFAULT NULL,
  `SendingTimeOut` timestamp NULL DEFAULT NULL,
  `DeliveryReport` text,
  `CreatorID` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `outbox_multipart`
--

CREATE TABLE `outbox_multipart` (
  `Text` int(255) DEFAULT NULL,
  `Coding` varchar(255) NOT NULL,
  `UDH` text,
  `Class` int(255) DEFAULT NULL,
  `TextDecoded` text,
  `ID` int(255) NOT NULL,
  `SequencePosition` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pbk`
--

CREATE TABLE `pbk` (
  `ID` int(255) NOT NULL,
  `GroupID` int(255) NOT NULL,
  `Name` text NOT NULL,
  `Number` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pbk_groups`
--

CREATE TABLE `pbk_groups` (
  `Name` text NOT NULL,
  `ID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `bagian` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_bayar` int(255) NOT NULL,
  `nama_bayar` varchar(255) DEFAULT NULL,
  `bukti_bayar` longblob,
  `tanggal_bayar` date DEFAULT NULL,
  `total_bayar` int(255) DEFAULT NULL,
  `jumlah_bayar` int(255) DEFAULT NULL,
  `sisa_bayar` int(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `jenis` varchar(255) DEFAULT NULL,
  `status_konfirmasi` varchar(255) DEFAULT NULL,
  `no_pendaftaran` varchar(255) NOT NULL,
  `nis` varchar(255) DEFAULT NULL,
  `mime` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_bayar`, `nama_bayar`, `bukti_bayar`, `tanggal_bayar`, `total_bayar`, `jumlah_bayar`, `sisa_bayar`, `status`, `jenis`, `status_konfirmasi`, `no_pendaftaran`, `nis`, `mime`, `email`) VALUES
(8, '12963449_1709407846010770_3774533761248326177_n.jpg', NULL, '2016-07-22', 350000, 250000, 100000, 'Kredit', 'Psikotes', 'Sudah', '20160000001', NULL, 'image/png', '');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran_her_registrasi`
--

CREATE TABLE `pembayaran_her_registrasi` (
  `nis` varchar(255) DEFAULT NULL,
  `no_telp` char(3) DEFAULT NULL,
  `total_bayar` int(255) DEFAULT NULL,
  `jumlah_bayar` int(255) DEFAULT NULL,
  `sisa_bayar` int(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_konfirmasi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pendataan_alumni`
--

CREATE TABLE `pendataan_alumni` (
  `nis` int(255) NOT NULL,
  `persepsi` char(4) DEFAULT NULL,
  `jekel` varchar(1) DEFAULT NULL,
  `domisili` varchar(255) DEFAULT NULL,
  `tujuan_lanjutan` varchar(1) DEFAULT NULL,
  `nama_lanjutan` varchar(255) DEFAULT NULL,
  `matematika` int(255) DEFAULT NULL,
  `indonesia` int(255) DEFAULT NULL,
  `english` int(255) DEFAULT NULL,
  `ipa` int(255) DEFAULT NULL,
  `ips` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendataan_alumni`
--

INSERT INTO `pendataan_alumni` (`nis`, `persepsi`, `jekel`, `domisili`, `tujuan_lanjutan`, `nama_lanjutan`, `matematika`, `indonesia`, `english`, `ipa`, `ips`) VALUES
(101101003, '3', 'P', 'Kota Bandung', '2', '-', 82, 85, 82, 81, 83),
(101101005, '2', 'L', 'Kota Bandung', '1', '-', 75, 86, 95, 81, 77),
(101101010, '1', 'P', 'Kota Bandung', '2', '-', 70, 70, 89, 95, 99),
(101101021, '24', 'P', 'Kota Bandung', '1', '-', 86, 81, 81, 84, 84),
(101101023, '124', 'L', 'Kota Bandung', '3', '-', 96, 78, 78, 81, 92),
(101101030, '12', 'P', 'Kota Bandung', '3', '-', 84, 97, 80, 80, 76),
(101101032, '234', 'P', 'Kota Bandung', '3', '-', 84, 77, 74, 100, 82),
(101101038, '123', 'P', 'Kota Bandung', '1', '-', 87, 73, 82, 100, 92),
(101101045, '13', 'L', 'Kota Bandung', '3', '-', 78, 87, 86, 100, 95),
(101101046, '341', 'L', 'Kota Bandung', '2', '-', 97, 70, 91, 82, 88),
(101101050, '23', 'L', 'Kota Bandung', '1', '-', 75, 75, 99, 91, 94),
(101101057, '34', 'L', 'Kota Bandung', '2', '-', 85, 98, 72, 99, 83),
(101101062, '14', 'P', 'Kota Bandung', '3', '-', 70, 74, 100, 86, 80),
(101101063, '4', 'L', 'Kota Bandung', '4', '-', 75, 74, 81, 82, 98),
(111201001, '1', 'P', 'Kabupaten Bandung', '3', '-', 74, 73, 86, 71, 75),
(111201002, '234', 'P', 'Kota Bandung', '2', '-', 93, 79, 97, 73, 70),
(111201003, '1', 'P', 'Kota Bandung', '4', '-', 86, 91, 86, 95, 89),
(111201004, '123', 'L', 'Kota Bandung', '1', '-', 70, 79, 86, 87, 87),
(111201005, '2', 'P', 'Kota Bandung', '3', '-', 70, 77, 93, 97, 83),
(111201006, '13', 'L', 'Kota Bandung', '3', '-', 84, 70, 96, 71, 80),
(111201007, '234', 'P', 'Kabupaten Bandung', '4', '-', 95, 86, 79, 75, 95);

-- --------------------------------------------------------

--
-- Table structure for table `pendataan_seragam`
--

CREATE TABLE `pendataan_seragam` (
  `nis` varchar(10) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_barang`
--

CREATE TABLE `pengajuan_barang` (
  `id_pengajuan` int(255) NOT NULL,
  `id_pegawai` varchar(255) NOT NULL,
  `tgl_pengajuan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pengambilan_ijazah`
--

CREATE TABLE `pengambilan_ijazah` (
  `nis` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id_pesan` int(255) NOT NULL,
  `tanggal_pesan` date DEFAULT NULL,
  `dari` varchar(255) NOT NULL,
  `isi_pesan` varchar(500) DEFAULT NULL,
  `nomor` int(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `nis` varchar(255) NOT NULL,
  `NIP` varchar(255) DEFAULT NULL,
  `idortu` int(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`id_pesan`, `tanggal_pesan`, `dari`, `isi_pesan`, `nomor`, `status`, `nis`, `NIP`, `idortu`) VALUES
(3, '2016-10-20', 'Farida Usmiyati, S Pd.', 'hhhhu', 1, 'Terbaca', '141501080', '300410', 2),
(5, '2016-10-21', 'Villy Asegaf/Yenny Ningrum', 'hihihi', 1, 'Terbaca', '141501080', '300410', 2),
(6, '2016-10-21', 'Dicky Hamdani, S Pd.', 'ibu', 6, 'Terbaca', '111201004', '820913', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pmp`
--

CREATE TABLE `pmp` (
  `idmapel` varchar(64) NOT NULL,
  `nilai` int(16) NOT NULL,
  `skor` int(16) NOT NULL,
  `semester` int(12) NOT NULL,
  `thnajar` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `respon`
--

CREATE TABLE `respon` (
  `id_respon` int(255) NOT NULL,
  `dari` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `tanggal_respon` datetime DEFAULT NULL,
  `isi_respon` varchar(255) DEFAULT NULL,
  `NIP` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `respon`
--

INSERT INTO `respon` (`id_respon`, `dari`, `tanggal`, `status`, `tanggal_respon`, `isi_respon`, `NIP`) VALUES
(70, 'Farida Usmiyati, S Pd.', '2016-10-26', 'Wali-Kelas', '2016-10-26 14:55:23', 'hey', '300410'),
(71, 'Villy Asegaf/Yenny Ningrum', '2016-10-26', 'Orang-Tua', '2016-10-26 16:00:34', 'ss', '300410'),
(73, 'Villy Asegaf/Yenny Ningrum', '2016-10-26', 'Orang-Tua', '2016-10-26 16:27:27', 'nananana', '300410'),
(74, 'Galuh Prana/Firda Fadila', '2016-10-27', 'Orang-Tua', '2016-10-27 16:42:16', 'TT', '300410'),
(75, 'Farida Usmiyati, S Pd.', '2016-10-30', 'Wali-Kelas', '2016-10-30 22:15:00', 'tell me would you my baby', '300410'),
(76, 'Farida Usmiyati, S Pd.', '2016-10-30', 'Wali-Kelas', '2016-10-30 22:58:36', 'nananana', '300410'),
(77, 'Farida Usmiyati, S Pd.', '2016-10-30', 'Wali-Kelas', '2016-10-30 23:00:32', 'loh kok', '300410'),
(78, 'Villy Asegaf/Yenny Ningrum', '2016-10-31', 'Orang-Tua', '2016-10-31 21:23:02', 'TT', '300410'),
(79, 'Villy Asegaf/Yenny Ningrum', '2016-10-31', 'Orang-Tua', '2016-10-31 22:01:54', 'okey', '300410'),
(80, 'Galuh Prana/Firda Fadila', '2016-10-31', 'Orang-Tua', '2016-10-31 22:02:27', 'ada apa 1', '300410'),
(81, 'Dicky Hamdani, S Pd.', '2016-11-01', 'Wali-Kelas', '2016-11-01 18:05:05', 'helo malam', '820913'),
(82, 'Villy Asegaf/Yenny Ningrum', '2016-11-01', 'Orang-Tua', '2016-11-01 18:05:50', 'iya ibu', '820913'),
(83, 'Villy Asegaf/Yenny Ningrum', '2016-11-01', 'Orang-Tua', '2016-11-01 18:54:05', 'malam', '300410'),
(84, 'Farida Usmiyati, S Pd.', '2016-11-02', 'Wali-Kelas', '2016-11-02 20:30:31', 'TT', '300410');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nis` varchar(255) NOT NULL,
  `nisn` varchar(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `tempat` varchar(255) DEFAULT NULL,
  `jk` varchar(2) DEFAULT NULL,
  `idortu` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nis`, `nisn`, `nama`, `tgl`, `tempat`, `jk`, `idortu`) VALUES
('111201004', '51256267', 'Najla ', '2016-10-11', 'Bandung', 'P', 2),
('111201005', '51256268', 'Praja Prana', '2016-10-12', 'Bandung', 'l', 3),
('141501080', '77734447', 'Abdurrasyid Hidayat', '2007-12-15', 'Bandung', 'L', 2),
('141501082', '77734448', 'Helmy Kartiwa', '2016-10-12', 'Bandung', 'L', 4);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status_user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `email`, `last_login`, `status_user`) VALUES
('Aulia', 'f47a82045106bbb8c11ab7ede4f35b7a', 'Firda123@gmail.com', '2018-03-02 02:42:04', 'Aktif'),
('Fitri', '77c796ee460fecfb87f038f1bb6fb248', 'Fitri123@gmail.com', '2016-10-12 07:17:44', 'Aktif'),
('Ghibran', '4fec20001299fce43cf050ebbcf05538', 'Deni123@gmail.com', '2018-01-12 02:13:56', 'Aktif'),
('Helmy', 'a0e6263209efd5e6b332888bbc2228b0', 'Helmy09@gmail.com', '2018-01-11 13:33:05', 'Aktif'),
('imas.rohimah72', '633fb8c63e06dfd4b6f90a150d4d8b1c', 'imas.rohimah72@yahoo.com', '2018-01-08 06:08:31', 'Aktif'),
('Iqbal', 'b160f903928e387b5f017038d5246db8', 'Diky123@gmail', '2018-01-12 02:10:05', 'Aktif'),
('jefri', 'c710857e9b674843afc9b54b7ae2032d', 'jefri123@gmail.com', '2016-10-11 08:26:38', 'Aktif'),
('Laila', '6762fe3b948da2d8f54310dd0be36e35', 'lailaarashian@gmail.com', '2018-01-12 02:08:02', 'Aktif'),
('Mimin', 'e0f138a4b65b8a82427de27c887a4a04', 'Mimin123@gmail.com', '2018-01-08 06:03:23', 'Aktif'),
('Rahmawan', 'f57853f7ed032b427a0fb50c0c41b989', 'Ida123@gmail.com', '2018-01-12 02:12:40', 'Aktif'),
('Villy', '5c5be8712f2f392ca8ba63503912c951', 'Villy123@gmail.com', '2016-10-11 08:28:03', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `wali`
--

CREATE TABLE `wali` (
  `idwali` int(255) NOT NULL,
  `nip` varchar(255) DEFAULT NULL,
  `idkelas` varchar(255) DEFAULT NULL,
  `thajar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wali`
--

INSERT INTO `wali` (`idwali`, `nip`, `idkelas`, `thajar`) VALUES
(1, '820913', '1j', '2015/2016'),
(2, '300410', '2l', '2015/2016'),
(3, '820914', '3j', '2015/2016');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ajar`
--
ALTER TABLE `ajar`
  ADD PRIMARY KEY (`idajar`);

--
-- Indexes for table `buku_tamu`
--
ALTER TABLE `buku_tamu`
  ADD PRIMARY KEY (`id_buku_tamu`);

--
-- Indexes for table `data_siswa`
--
ALTER TABLE `data_siswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `detail_kegiatan`
--
ALTER TABLE `detail_kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`);

--
-- Indexes for table `formulir`
--
ALTER TABLE `formulir`
  ADD PRIMARY KEY (`no_pendaftaran`);

--
-- Indexes for table `group1`
--
ALTER TABLE `group1`
  ADD PRIMARY KEY (`kode_group`);

--
-- Indexes for table `group_user`
--
ALTER TABLE `group_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grup`
--
ALTER TABLE `grup`
  ADD PRIMARY KEY (`kode_group`);

--
-- Indexes for table `grup_modul`
--
ALTER TABLE `grup_modul`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `grup_user`
--
ALTER TABLE `grup_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id_informasi`);

--
-- Indexes for table `jadwal_tanggal`
--
ALTER TABLE `jadwal_tanggal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `jadwal_waktu`
--
ALTER TABLE `jadwal_waktu`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `jaremedeval`
--
ALTER TABLE `jaremedeval`
  ADD PRIMARY KEY (`idremedeval`);

--
-- Indexes for table `jaremedpmp`
--
ALTER TABLE `jaremedpmp`
  ADD PRIMARY KEY (`idremedpmp`);

--
-- Indexes for table `jenis_barang`
--
ALTER TABLE `jenis_barang`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`);

--
-- Indexes for table `kegiatan_kebersihan`
--
ALTER TABLE `kegiatan_kebersihan`
  ADD PRIMARY KEY (`id_nama`);

--
-- Indexes for table `ket_siswa`
--
ALTER TABLE `ket_siswa`
  ADD PRIMARY KEY (`no_pendaftaran`);

--
-- Indexes for table `kunjungan`
--
ALTER TABLE `kunjungan`
  ADD PRIMARY KEY (`id_kunjungan`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id_Laporan`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`idmapel`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`kode_modul`);

--
-- Indexes for table `online`
--
ALTER TABLE `online`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ortu`
--
ALTER TABLE `ortu`
  ADD PRIMARY KEY (`idortu`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `pendataan_alumni`
--
ALTER TABLE `pendataan_alumni`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `pendataan_seragam`
--
ALTER TABLE `pendataan_seragam`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `pengambilan_ijazah`
--
ALTER TABLE `pengambilan_ijazah`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indexes for table `respon`
--
ALTER TABLE `respon`
  ADD PRIMARY KEY (`id_respon`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `wali`
--
ALTER TABLE `wali`
  ADD PRIMARY KEY (`idwali`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ajar`
--
ALTER TABLE `ajar`
  MODIFY `idajar` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `detail_kegiatan`
--
ALTER TABLE `detail_kegiatan`
  MODIFY `id_kegiatan` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `formulir`
--
ALTER TABLE `formulir`
  MODIFY `no_pendaftaran` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `group1`
--
ALTER TABLE `group1`
  MODIFY `kode_group` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `group_user`
--
ALTER TABLE `group_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `grup`
--
ALTER TABLE `grup`
  MODIFY `kode_group` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `grup_user`
--
ALTER TABLE `grup_user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id_informasi` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jadwal_waktu`
--
ALTER TABLE `jadwal_waktu`
  MODIFY `id_jadwal` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jaremedeval`
--
ALTER TABLE `jaremedeval`
  MODIFY `idremedeval` int(255) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
