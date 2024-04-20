-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 20 Apr 2024 pada 12.53
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `badminton`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(10) NOT NULL,
  `id_barang` varchar(10) NOT NULL,
  `id_kategori` int(10) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `merk` varchar(50) NOT NULL,
  `harga_beli` varchar(50) NOT NULL,
  `harga_jual` varchar(50) NOT NULL,
  `satuan_barang` varchar(50) NOT NULL,
  `stok` varchar(50) NOT NULL,
  `tgl_input` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `id_barang`, `id_kategori`, `nama_barang`, `merk`, `harga_beli`, `harga_jual`, `satuan_barang`, `stok`, `tgl_input`) VALUES
(1, 'BR001', 2, 'Teh Botol Sosro', 'Sosro', '5000', '6500', 'BTL', '42', '2024-04-10'),
(2, 'BR002', 2, 'Teh Kotak', 'kotak', '5000', '6500', 'BTL', '40', '2024-04-11'),
(3, 'BR003', 2, 'Teh Pucuk Harum', 'pucuk', '5000', '6500', 'BTL', '40', '2024-04-12'),
(4, 'BR004', 2, 'Teh Gelas', 'gelas', '5000', '6500', 'BTL', '40', '2024-04-13'),
(5, 'BR005', 2, 'Teh Javana', 'javana', '5000', '6500', 'BTL', '40', '2024-04-14'),
(6, 'BR006', 2, 'Teh Tong Tji', 'tong hiji', '5000', '6500', 'BTL', '40', '2024-04-15'),
(7, 'BR007', 2, 'Teh Rio', 'rio', '5000', '6500', 'BTL', '40', '2024-04-16'),
(8, 'BR008', 2, 'Teh Gelas Sosro', 'gelas', '5000', '6500', 'BTL', '40', '2024-04-17'),
(9, 'BR009', 2, 'Kopi Kapal Api', 'kapal api', '5000', '6500', 'BTL', '40', '2024-04-18'),
(10, 'BR010', 2, 'Kopi ABC', 'ABC', '5000', '6500', 'BTL', '40', '2024-04-19'),
(11, 'BR011', 2, 'Kopi Good Day', 'Good Day', '5000', '6500', 'BTL', '40', '2024-04-20'),
(12, 'BR012', 2, 'Kopi Torabika', 'Torabika', '5000', '6500', 'BTL', '40', '2024-04-21'),
(13, 'BR013', 2, 'Kopi Luwak White Koffie', 'Luwak', '5000', '6500', 'BTL', '40', '2024-04-22'),
(14, 'BR014', 2, 'Kopi Top', 'Top', '5000', '6500', 'BTL', '40', '2024-04-23'),
(15, 'BR015', 2, 'Kopi Joss', 'Joss', '5000', '6500', 'BTL', '40', '2024-04-24'),
(16, 'BR016', 2, 'Kopi Nescafe', 'nescape', '5000', '6500', 'BTL', '40', '2024-04-25'),
(17, 'BR017', 2, 'Kopi Indocafe', 'indo cape', '5000', '6500', 'BTL', '40', '2024-04-26'),
(18, 'BR018', 2, 'Kopi Kapal Tongkang', 'kapal', '5000', '6500', 'BTL', '40', '2024-04-27'),
(19, 'BR019', 2, 'Kopi ABC Susu', '0', '5000', '6500', 'BTL', '40', '2024-04-28'),
(20, 'BR020', 2, 'Kopi Jahe Wangi', '0', '5000', '6500', 'BTL', '40', '2024-04-29'),
(21, 'BR021', 2, 'Susu Ultra', '0', '5000', '6500', 'BTL', '40', '2024-04-30'),
(22, 'BR022', 2, 'Susu Bendera', '0', '5000', '6500', 'BTL', '40', '2024-05-01'),
(23, 'BR023', 2, 'Susu Frisian Flag', '0', '5000', '6500', 'BTL', '40', '2024-05-02'),
(24, 'BR024', 2, 'Susu SGM', '0', '5000', '6500', 'BTL', '40', '2024-05-03'),
(25, 'BR025', 2, 'Susu Bear Brand', '0', '5000', '6500', 'BTL', '40', '2024-05-04'),
(26, 'BR026', 2, 'Susu Greenfields', '0', '5000', '6500', 'BTL', '40', '2024-05-05'),
(27, 'BR027', 2, 'Air Mineral Aqua', '0', '5000', '6500', 'BTL', '40', '2024-05-06'),
(28, 'BR028', 2, 'Air Mineral Club', '0', '5000', '6500', 'BTL', '40', '2024-05-07'),
(29, 'BR029', 2, 'Air Mineral Pristine', '0', '5000', '6500', 'BTL', '40', '2024-05-08'),
(30, 'BR030', 2, 'Air Mineral Le Minerale', '0', '5000', '6500', 'BTL', '40', '2024-05-09'),
(31, 'BR031', 2, 'Air Mineral Equil', '0', '5000', '6500', 'BTL', '40', '2024-05-10'),
(32, 'BR032', 2, 'Minuman Isotonik Pocari Sweat', '0', '5000', '6500', 'BTL', '40', '2024-05-11'),
(33, 'BR033', 2, 'Minuman Energi Kratingdaeng', '0', '5000', '6500', 'BTL', '40', '2024-05-12'),
(34, 'BR034', 2, 'Minuman Berenergi M-150', '0', '5000', '6500', 'BTL', '40', '2024-05-13'),
(35, 'BR035', 2, 'Minuman Fruity Tea', '0', '5000', '6500', 'BTL', '40', '2024-05-14'),
(36, 'BR036', 2, 'Minuman Sariwangi', '0', '5000', '6500', 'BTL', '40', '2024-05-15'),
(37, 'BR037', 2, 'Minuman Nutrijell', '0', '5000', '6500', 'BTL', '40', '2024-05-16'),
(38, 'BR038', 2, 'Minuman Marjan', '0', '5000', '6500', 'BTL', '40', '2024-05-17'),
(39, 'BR039', 2, 'Minuman Sari Asem', '0', '5000', '6500', 'BTL', '40', '2024-05-18'),
(40, 'BR040', 2, 'Minuman Rasa Buah Frestea', '0', '5000', '6500', 'BTL', '40', '2024-05-19'),
(41, 'BR041', 1, 'Mie Instan (misalnya Indomie, Mie Sedap, Sarimi)', '0', '5000', '6500', 'BTL', '40', '2024-05-20'),
(42, 'BR042', 1, 'Kerupuk (kerupuk mie, kerupuk udang, kerupuk kampu', '0', '5000', '6500', 'BTL', '40', '2024-05-21'),
(43, 'BR043', 1, 'Krupuk Pangsit', '0', '5000', '6500', 'BTL', '40', '2024-05-22'),
(44, 'BR044', 1, 'Keripik (keripik kentang, keripik pisang, keripik ', '0', '5000', '6500', 'BTL', '40', '2024-05-23'),
(45, 'BR045', 1, 'Permen (Permen Karet, Permen Lolipop, Permen Jelly', '0', '5000', '6500', 'BTL', '40', '2024-05-24'),
(46, 'BR046', 1, 'Biskuit (misalnya Roma, Khong Guan, Beng-Beng)', '0', '5000', '6500', 'BTL', '40', '2024-05-25'),
(47, 'BR047', 1, 'Wafer (Wafer Tango, Wafer Selamat, Wafer Astor)', '0', '5000', '6500', 'BTL', '40', '2024-05-26'),
(48, 'BR048', 1, 'Biskuit Sandwich (misalnya Choco Pie, Oreo)', '0', '5000', '6500', 'BTL', '40', '2024-05-27'),
(49, 'BR049', 1, 'Susu Kental Manis (SKM)', '0', '5000', '6500', 'BTL', '40', '2024-05-28'),
(50, 'BR050', 1, 'Kacang Garuda', '0', '5000', '6500', 'BTL', '40', '2024-05-29'),
(51, 'BR051', 1, 'Kacang Bawang (Kacang Atom, Kacang Telur)', '0', '5000', '6500', 'BTL', '40', '2024-05-30'),
(52, 'BR052', 1, 'Biskuit Marie Regal', '0', '5000', '6500', 'BTL', '40', '2024-05-31'),
(53, 'BR053', 1, 'Keripik Singkong', '0', '5000', '6500', 'BTL', '40', '2024-06-01'),
(54, 'BR054', 1, 'Coklat (misalnya Silverqueen, Delfi, Cadbury)', '0', '5000', '6500', 'BTL', '40', '2024-06-02'),
(55, 'BR055', 1, 'Selai (selai kacang, selai strawberry, selai blueb', '0', '5000', '6500', 'BTL', '40', '2024-06-03'),
(56, 'BR056', 1, 'Sereal (misalnya Koko Krunch, Corn Flakes, Fitness', '0', '5000', '6500', 'BTL', '40', '2024-06-04'),
(57, 'BR057', 1, 'Popcorn', '0', '5000', '6500', 'BTL', '40', '2024-06-05'),
(58, 'BR058', 1, 'Mie Goreng Instan (misalnya Samyang, Mi ABC)', '0', '5000', '6500', 'BTL', '40', '2024-06-06'),
(59, 'BR059', 1, 'Bihun Instan', '0', '5000', '6500', 'BTL', '40', '2024-06-07'),
(60, 'BR060', 1, 'Roti (Roti Gardenia, Roti Sari Roti, Roti Tawar)', '0', '5000', '6500', 'BTL', '40', '2024-06-08'),
(61, 'BR061', 1, 'Biskuit Digestive', '0', '5000', '6500', 'BTL', '40', '2024-06-09'),
(62, 'BR062', 1, 'Biskuit Crackers (misalnya Roma Crackers)', '0', '5000', '6500', 'BTL', '40', '2024-06-10'),
(63, 'BR063', 1, 'Kue Kering (Kue Lidah Kucing, Kue Bangkit)', '0', '5000', '6500', 'BTL', '40', '2024-06-11'),
(64, 'BR064', 1, 'Tahu Crispy', '0', '5000', '6500', 'BTL', '40', '2024-06-12'),
(65, 'BR065', 1, 'Sosis (misalnya Indomie Goreng Sosis)', '0', '5000', '6500', 'BTL', '40', '2024-06-13'),
(66, 'BR066', 1, 'Roti Burger', '0', '5000', '6500', 'BTL', '40', '2024-06-14'),
(67, 'BR067', 1, 'Pudding (misalnya Pudding Regal)', '0', '5000', '6500', 'BTL', '40', '2024-06-15'),
(68, 'BR068', 1, 'Keripik Kentang Balado', '0', '5000', '6500', 'BTL', '40', '2024-06-16'),
(69, 'BR069', 1, 'Kue Cubit', '0', '5000', '6500', 'BTL', '40', '2024-06-17'),
(70, 'BR070', 1, 'Pastel', '0', '5000', '6500', 'BTL', '40', '2024-06-18'),
(71, 'BR071', 1, 'Siomay Frozen', '0', '5000', '6500', 'BTL', '40', '2024-06-19'),
(72, 'BR072', 1, 'Nugget Ayam', '0', '5000', '6500', 'BTL', '40', '2024-06-20'),
(73, 'BR073', 1, 'Roti Bakar', '0', '5000', '6500', 'BTL', '40', '2024-06-21'),
(74, 'BR074', 1, 'Roti Canai', '0', '5000', '6500', 'BTL', '40', '2024-06-22'),
(75, 'BR075', 1, 'Roti John', '0', '5000', '6500', 'BTL', '40', '2024-06-23'),
(76, 'BR076', 1, 'Donat', '0', '5000', '6500', 'BTL', '40', '2024-06-24'),
(77, 'BR077', 1, 'Kue Bolu', '0', '5000', '6500', 'BTL', '40', '2024-06-25'),
(78, 'BR078', 1, 'Bolu Gulung', '0', '5000', '6500', 'BTL', '40', '2024-06-26'),
(79, 'BR079', 1, 'Pie Susu', '0', '5000', '6500', 'BTL', '40', '2024-06-27'),
(80, 'BR080', 1, 'Brownies Kukus', '0', '5000', '6500', 'BTL', '40', '2024-06-28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(10) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `tgl_input` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `tgl_input`) VALUES
(1, 'Makanan', '2023-11-05'),
(2, 'Minuman', '2023-11-05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lapangan`
--

CREATE TABLE `lapangan` (
  `id_lap` int(10) NOT NULL,
  `no_lap` varchar(11) NOT NULL,
  `deskripsi` varchar(20) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `lapangan`
--

INSERT INTO `lapangan` (`id_lap`, `no_lap`, `deskripsi`, `foto`) VALUES
(6, '02A', '02A', 'w.jpg'),
(9, '01A', '01A', 'w.jpg'),
(10, '03A', '03A', 'Ukuran-Lapangan-Bulu-Tangkis.jpg'),
(11, '04A', '04A', 'Ukuran-Lapangan-Bulu-Tangkis.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id_member` int(10) NOT NULL,
  `nm_lengkap` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `no_hp` varchar(50) NOT NULL,
  `kode_member` varchar(50) NOT NULL,
  `akses` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id_member`, `nm_lengkap`, `email`, `password`, `no_hp`, `kode_member`, `akses`) VALUES
(1, 'Juan KS', 'member@gmail.com', 'member', '222', 'BCB001', 'member'),
(2, 'Alex', 'Member1@gmail.com', 'Member1', '83948', 'BCB002', 'member'),
(3, 'Ben', 'Member1@gmail.com', 'Member2', '83949', 'BCB003', 'member'),
(4, 'Chloe', 'Member1@gmail.com', 'Member3', '83950', 'BCB004', 'member'),
(5, 'Dan', 'Member1@gmail.com', 'Member4', '83951', 'BCB005', 'member'),
(6, 'Ella', 'Member1@gmail.com', 'Member5', '83952', 'BCB006', 'member'),
(7, 'Finn', 'Member1@gmail.com', 'Member6', '83953', 'BCB007', 'member'),
(8, 'Grace', 'Member1@gmail.com', 'Member7', '83954', 'BCB008', 'member'),
(9, 'Harry', 'Member1@gmail.com', 'Member8', '83955', 'BCB009', 'member'),
(10, 'Ivy', 'Member1@gmail.com', 'Member9', '83956', 'BCB010', 'member'),
(11, 'Jack', 'Member1@gmail.com', 'Member10', '83957', 'BCB011', 'member'),
(12, 'Kate', 'Member1@gmail.com', 'Member11', '83958', 'BCB012', 'member'),
(13, 'Liam', 'Member1@gmail.com', 'Member12', '83959', 'BCB013', 'member'),
(14, 'Mia', 'Member1@gmail.com', 'Member13', '83960', 'BCB014', 'member'),
(15, 'Noah', 'Member1@gmail.com', 'Member14', '83961', 'BCB015', 'member'),
(16, 'Olivia', 'Member1@gmail.com', 'Member15', '83962', 'BCB016', 'member'),
(17, 'Pete', 'Member1@gmail.com', 'Member16', '83963', 'BCB017', 'member'),
(18, 'Rose', 'Member1@gmail.com', 'Member17', '83964', 'BCB018', 'member'),
(19, 'Sam', 'Member1@gmail.com', 'Member18', '83965', 'BCB019', 'member'),
(20, 'Tess', 'Member1@gmail.com', 'Member19', '83966', 'BCB020', 'member'),
(21, 'Will', 'Member1@gmail.com', 'Member20', '83967', 'BCB021', 'member'),
(22, 'Zoe', 'Member1@gmail.com', 'Member21', '83968', 'BCB022', 'member'),
(23, 'Adam', 'Member1@gmail.com', 'Member22', '83969', 'BCB023', 'member'),
(24, 'Beth', 'Member1@gmail.com', 'Member23', '83970', 'BCB024', 'member'),
(25, 'Chris', 'Member1@gmail.com', 'Member24', '83971', 'BCB025', 'member'),
(26, 'Diane', 'Member1@gmail.com', 'Member25', '83972', 'BCB026', 'member'),
(27, 'Emma', 'Member1@gmail.com', 'Member26', '83973', 'BCB027', 'member'),
(28, 'Fred', 'Member1@gmail.com', 'Member27', '83974', 'BCB028', 'member'),
(29, 'Hannah', 'Member1@gmail.com', 'Member28', '83975', 'BCB029', 'member'),
(30, 'Isaac', 'Member1@gmail.com', 'Member29', '83976', 'BCB030', 'member'),
(31, 'Jade', 'Member1@gmail.com', 'Member30', '83977', 'BCB031', 'member'),
(32, 'Kyle', 'Member1@gmail.com', 'Member31', '83978', 'BCB032', 'member'),
(33, 'Lucy', 'Member1@gmail.com', 'Member32', '83979', 'BCB033', 'member'),
(34, 'Matt', 'Member1@gmail.com', 'Member33', '83980', 'BCB034', 'member'),
(35, 'Nina', 'Member1@gmail.com', 'Member34', '83981', 'BCB035', 'member'),
(36, 'Owen', 'Member1@gmail.com', 'Member35', '83982', 'BCB036', 'member'),
(37, 'Rachel', 'Member1@gmail.com', 'Member36', '83983', 'BCB037', 'member'),
(38, 'Scott', 'Member1@gmail.com', 'Member37', '83984', 'BCB038', 'member'),
(39, 'Tara', 'Member1@gmail.com', 'Member38', '83985', 'BCB039', 'member'),
(40, 'Vince', 'Member1@gmail.com', 'Member39', '83986', 'BCB040', 'member'),
(41, 'Wendy', 'Member1@gmail.com', 'Member40', '83987', 'BCB041', 'member');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nota`
--

CREATE TABLE `nota` (
  `id_nota` int(10) NOT NULL,
  `id` int(10) NOT NULL,
  `id_user` int(10) DEFAULT NULL,
  `jumlah` varchar(20) NOT NULL,
  `total` varchar(50) NOT NULL,
  `tgl_input` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `nota`
--

INSERT INTO `nota` (`id_nota`, `id`, `id_user`, `jumlah`, `total`, `tgl_input`) VALUES
(1, 2, 1, '2', '4000', '2023-11-05'),
(2, 6, 1, '2', '46000', '2023-11-06'),
(3, 6, 1, '2', '46000', '2023-11-07'),
(4, 2, 1, '2', '444', '2023-11-07'),
(5, 6, 1, '2', '46000', '2023-11-07'),
(6, 6, 1, '1', '46000', '2023-11-07'),
(7, 2, 1, '1', '444', '2023-11-08'),
(9, 6, 1, '2', '46000', '2023-11-25'),
(10, 6, 1, '3', '69000', '2023-11-25'),
(11, 6, 1, '1', '23000', '2024-02-17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(10) NOT NULL,
  `kode_beli` varchar(10) NOT NULL,
  `nama_pemasok` varchar(50) NOT NULL,
  `no_hp` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `id_kategori` int(10) NOT NULL,
  `merk` varchar(50) NOT NULL,
  `harga_beli` varchar(50) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `jumlah` int(50) NOT NULL,
  `tanggal_beli` date NOT NULL,
  `status_stok` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `kode_beli`, `nama_pemasok`, `no_hp`, `alamat`, `nama_barang`, `id_kategori`, `merk`, `harga_beli`, `satuan`, `jumlah`, `tanggal_beli`, `status_stok`) VALUES
(2, 'KB002', 'Alex', '83847234', 'SUKABUMI', 'Teh Botol Sosro', 2, 'Sosro', '5000', 'BTL', 40, '2024-04-10', 'sudah'),
(3, 'KB003', 'Ben', '83847235', 'SUKABUMI', 'Teh Kotak', 2, 'kotak', '5000', 'BTL', 40, '2024-04-11', 'belum'),
(4, 'KB004', 'Chloe', '83847236', 'SUKABUMI', 'Teh Pucuk Harum', 2, 'pucuk', '5000', 'BTL', 40, '2024-04-12', 'belum'),
(5, 'KB005', 'Dan', '83847237', 'SUKABUMI', 'Teh Gelas', 2, 'gelas', '5000', 'BTL', 40, '2024-04-13', 'belum'),
(6, 'KB001', 'Asep', '22', 'saa', 'KERTAS A4', 1, 'asa', '22', 'PCS', 22, '2024-02-18', 'sudah'),
(7, 'KB007', 'Finn', '83847239', 'SUKABUMI', 'Teh Tong Tji', 2, 'tong hiji', '5000', 'BTL', 40, '2024-04-15', 'belum'),
(8, 'KB008', 'Grace', '83847240', 'SUKABUMI', 'Teh Rio', 2, 'rio', '5000', 'BTL', 40, '2024-04-16', 'belum'),
(9, 'KB009', 'Harry', '83847241', 'SUKABUMI', 'Teh Gelas Sosro', 2, 'gelas', '5000', 'BTL', 40, '2024-04-17', 'belum'),
(10, 'KB010', 'Ivy', '83847242', 'SUKABUMI', 'Kopi Kapal Api', 2, 'kapal api', '5000', 'BTL', 40, '2024-04-18', 'belum'),
(11, 'KB011', 'Jack', '83847243', 'SUKABUMI', 'Kopi ABC', 2, 'ABC', '5000', 'BTL', 40, '2024-04-19', 'belum'),
(12, 'KB012', 'Kate', '83847244', 'SUKABUMI', 'Kopi Good Day', 2, 'Good Day', '5000', 'BTL', 40, '2024-04-20', 'belum'),
(13, 'KB013', 'Liam', '83847245', 'SUKABUMI', 'Kopi Torabika', 2, 'Torabika', '5000', 'BTL', 40, '2024-04-21', 'belum'),
(14, 'KB014', 'Mia', '83847246', 'SUKABUMI', 'Kopi Luwak White Koffie', 2, 'Luwak', '5000', 'BTL', 40, '2024-04-22', 'belum'),
(15, 'KB015', 'Noah', '83847247', 'SUKABUMI', 'Kopi Top', 2, 'Top', '5000', 'BTL', 40, '2024-04-23', 'belum'),
(16, 'KB016', 'Olivia', '83847248', 'SUKABUMI', 'Kopi Joss', 2, 'Joss', '5000', 'BTL', 40, '2024-04-24', 'belum'),
(17, 'KB017', 'Pete', '83847249', 'SUKABUMI', 'Kopi Nescafe', 2, 'nescape', '5000', 'BTL', 40, '2024-04-25', 'belum'),
(18, 'KB018', 'Rose', '83847250', 'SUKABUMI', 'Kopi Indocafe', 2, 'indo cape', '5000', 'BTL', 40, '2024-04-26', 'belum'),
(19, 'KB019', 'Sam', '83847251', 'SUKABUMI', 'Kopi Kapal Tongkang', 2, 'kapal', '5000', 'BTL', 40, '2024-04-27', 'belum'),
(20, 'KB020', 'Tess', '83847252', 'SUKABUMI', 'Kopi ABC Susu', 2, '0', '5000', 'BTL', 40, '2024-04-28', 'belum'),
(21, 'KB021', 'Will', '83847253', 'SUKABUMI', 'Kopi Jahe Wangi', 2, '0', '5000', 'BTL', 40, '2024-04-29', 'belum'),
(22, 'KB022', 'Zoe', '83847254', 'SUKABUMI', 'Susu Ultra', 2, '0', '5000', 'BTL', 40, '2024-04-30', 'belum'),
(23, 'KB023', 'Adam', '83847255', 'SUKABUMI', 'Susu Bendera', 2, '0', '5000', 'BTL', 40, '2024-05-01', 'belum'),
(24, 'KB024', 'Beth', '83847256', 'SUKABUMI', 'Susu Frisian Flag', 2, '0', '5000', 'BTL', 40, '2024-05-02', 'belum'),
(25, 'KB025', 'Chris', '83847257', 'SUKABUMI', 'Susu SGM', 2, '0', '5000', 'BTL', 40, '2024-05-03', 'belum'),
(26, 'KB026', 'Diane', '83847258', 'SUKABUMI', 'Susu Bear Brand', 2, '0', '5000', 'BTL', 40, '2024-05-04', 'belum'),
(27, 'KB027', 'Emma', '83847259', 'SUKABUMI', 'Susu Greenfields', 2, '0', '5000', 'BTL', 40, '2024-05-05', 'belum'),
(28, 'KB028', 'Fred', '83847260', 'SUKABUMI', 'Air Mineral Aqua', 2, '0', '5000', 'BTL', 40, '2024-05-06', 'belum'),
(29, 'KB029', 'Hannah', '83847261', 'SUKABUMI', 'Air Mineral Club', 2, '0', '5000', 'BTL', 40, '2024-05-07', 'belum'),
(30, 'KB030', 'Isaac', '83847262', 'SUKABUMI', 'Air Mineral Pristine', 2, '0', '5000', 'BTL', 40, '2024-05-08', 'belum'),
(31, 'KB031', 'Jade', '83847263', 'SUKABUMI', 'Air Mineral Le Minerale', 2, '0', '5000', 'BTL', 40, '2024-05-09', 'belum'),
(32, 'KB032', 'Kyle', '83847264', 'SUKABUMI', 'Air Mineral Equil', 2, '0', '5000', 'BTL', 40, '2024-05-10', 'belum'),
(33, 'KB033', 'Lucy', '83847265', 'SUKABUMI', 'Minuman Isotonik Pocari Sweat', 2, '0', '5000', 'BTL', 40, '2024-05-11', 'belum'),
(34, 'KB034', 'Matt', '83847266', 'SUKABUMI', 'Minuman Energi Kratingdaeng', 2, '0', '5000', 'BTL', 40, '2024-05-12', 'belum'),
(35, 'KB035', 'Nina', '83847267', 'SUKABUMI', 'Minuman Berenergi M-150', 2, '0', '5000', 'BTL', 40, '2024-05-13', 'belum'),
(36, 'KB036', 'Owen', '83847268', 'SUKABUMI', 'Minuman Fruity Tea', 2, '0', '5000', 'BTL', 40, '2024-05-14', 'belum'),
(37, 'KB037', 'Rachel', '83847269', 'SUKABUMI', 'Minuman Sariwangi', 2, '0', '5000', 'BTL', 40, '2024-05-15', 'belum'),
(38, 'KB038', 'Scott', '83847270', 'SUKABUMI', 'Minuman Nutrijell', 2, '0', '5000', 'BTL', 40, '2024-05-16', 'belum'),
(39, 'KB039', 'Tara', '83847271', 'SUKABUMI', 'Minuman Marjan', 2, '0', '5000', 'BTL', 40, '2024-05-17', 'belum'),
(40, 'KB040', 'Vince', '83847272', 'SUKABUMI', 'Minuman Sari Asem', 2, '0', '5000', 'BTL', 40, '2024-05-18', 'belum'),
(41, 'KB041', 'Wendy', '83847273', 'SUKABUMI', 'Minuman Rasa Buah Frestea', 2, '0', '5000', 'BTL', 40, '2024-05-19', 'belum'),
(42, 'KB042', 'Ani', '83847274', 'SUKABUMI', 'Mie Instan (misalnya Indomie, Mie Sedap, Sarimi)', 1, '0', '5000', 'BTL', 40, '2024-05-20', 'belum'),
(43, 'KB043', 'Budi', '83847275', 'SUKABUMI', 'Kerupuk (kerupuk mie, kerupuk udang, kerupuk kampu', 1, '0', '5000', 'BTL', 40, '2024-05-21', 'belum'),
(44, 'KB044', 'Citra', '83847276', 'SUKABUMI', 'Krupuk Pangsit', 1, '0', '5000', 'BTL', 40, '2024-05-22', 'belum'),
(45, 'KB045', 'Dian', '83847277', 'SUKABUMI', 'Keripik (keripik kentang, keripik pisang, keripik ', 1, '0', '5000', 'BTL', 40, '2024-05-23', 'belum'),
(46, 'KB046', 'Eka', '83847278', 'SUKABUMI', 'Permen (Permen Karet, Permen Lolipop, Permen Jelly', 1, '0', '5000', 'BTL', 40, '2024-05-24', 'belum'),
(47, 'KB047', 'Fitri', '83847279', 'SUKABUMI', 'Biskuit (misalnya Roma, Khong Guan, Beng-Beng)', 1, '0', '5000', 'BTL', 40, '2024-05-25', 'belum'),
(48, 'KB048', 'Gita', '83847280', 'SUKABUMI', 'Wafer (Wafer Tango, Wafer Selamat, Wafer Astor)', 1, '0', '5000', 'BTL', 40, '2024-05-26', 'belum'),
(49, 'KB049', 'Hadi', '83847281', 'SUKABUMI', 'Biskuit Sandwich (misalnya Choco Pie, Oreo)', 1, '0', '5000', 'BTL', 40, '2024-05-27', 'belum'),
(50, 'KB050', 'Ida', '83847282', 'SUKABUMI', 'Susu Kental Manis (SKM)', 1, '0', '5000', 'BTL', 40, '2024-05-28', 'belum'),
(51, 'KB051', 'Joko', '83847283', 'SUKABUMI', 'Kacang Garuda', 1, '0', '5000', 'BTL', 40, '2024-05-29', 'belum'),
(52, 'KB052', 'Kiki', '83847284', 'SUKABUMI', 'Kacang Bawang (Kacang Atom, Kacang Telur)', 1, '0', '5000', 'BTL', 40, '2024-05-30', 'belum'),
(53, 'KB053', 'Lina', '83847285', 'SUKABUMI', 'Biskuit Marie Regal', 1, '0', '5000', 'BTL', 40, '2024-05-31', 'belum'),
(54, 'KB054', 'Mira', '83847286', 'SUKABUMI', 'Keripik Singkong', 1, '0', '5000', 'BTL', 40, '2024-06-01', 'belum'),
(55, 'KB055', 'Nana', '83847287', 'SUKABUMI', 'Coklat (misalnya Silverqueen, Delfi, Cadbury)', 1, '0', '5000', 'BTL', 40, '2024-06-02', 'belum'),
(56, 'KB056', 'Oka', '83847288', 'SUKABUMI', 'Selai (selai kacang, selai strawberry, selai blueb', 1, '0', '5000', 'BTL', 40, '2024-06-03', 'belum'),
(57, 'KB057', 'Putra', '83847289', 'SUKABUMI', 'Sereal (misalnya Koko Krunch, Corn Flakes, Fitness', 1, '0', '5000', 'BTL', 40, '2024-06-04', 'belum'),
(58, 'KB058', 'Rani', '83847290', 'SUKABUMI', 'Popcorn', 1, '0', '5000', 'BTL', 40, '2024-06-05', 'belum'),
(59, 'KB059', 'Sari', '83847291', 'SUKABUMI', 'Mie Goreng Instan (misalnya Samyang, Mi ABC)', 1, '0', '5000', 'BTL', 40, '2024-06-06', 'belum'),
(60, 'KB060', 'Tono', '83847292', 'SUKABUMI', 'Bihun Instan', 1, '0', '5000', 'BTL', 40, '2024-06-07', 'belum'),
(61, 'KB061', 'Umi', '83847293', 'SUKABUMI', 'Roti (Roti Gardenia, Roti Sari Roti, Roti Tawar)', 1, '0', '5000', 'BTL', 40, '2024-06-08', 'belum'),
(62, 'KB062', 'Vina', '83847294', 'SUKABUMI', 'Biskuit Digestive', 1, '0', '5000', 'BTL', 40, '2024-06-09', 'belum'),
(63, 'KB063', 'Wati', '83847295', 'SUKABUMI', 'Biskuit Crackers (misalnya Roma Crackers)', 1, '0', '5000', 'BTL', 40, '2024-06-10', 'belum'),
(64, 'KB064', 'Yani', '83847296', 'SUKABUMI', 'Kue Kering (Kue Lidah Kucing, Kue Bangkit)', 1, '0', '5000', 'BTL', 40, '2024-06-11', 'belum'),
(65, 'KB065', 'Zain', '83847297', 'SUKABUMI', 'Tahu Crispy', 1, '0', '5000', 'BTL', 40, '2024-06-12', 'belum'),
(66, 'KB066', 'Adi', '83847298', 'SUKABUMI', 'Sosis (misalnya Indomie Goreng Sosis)', 1, '0', '5000', 'BTL', 40, '2024-06-13', 'belum'),
(67, 'KB067', 'Bayu', '83847299', 'SUKABUMI', 'Roti Burger', 1, '0', '5000', 'BTL', 40, '2024-06-14', 'belum'),
(68, 'KB068', 'Cinta', '83847300', 'SUKABUMI', 'Pudding (misalnya Pudding Regal)', 1, '0', '5000', 'BTL', 40, '2024-06-15', 'belum'),
(69, 'KB069', 'Dita', '83847301', 'SUKABUMI', 'Keripik Kentang Balado', 1, '0', '5000', 'BTL', 40, '2024-06-16', 'belum'),
(70, 'KB070', 'Erlangga', '83847302', 'SUKABUMI', 'Kue Cubit', 1, '0', '5000', 'BTL', 40, '2024-06-17', 'belum'),
(71, 'KB071', 'Fajar', '83847303', 'SUKABUMI', 'Pastel', 1, '0', '5000', 'BTL', 40, '2024-06-18', 'belum'),
(72, 'KB072', 'Galuh', '83847304', 'SUKABUMI', 'Siomay Frozen', 1, '0', '5000', 'BTL', 40, '2024-06-19', 'belum'),
(73, 'KB073', 'Hendra', '83847305', 'SUKABUMI', 'Nugget Ayam', 1, '0', '5000', 'BTL', 40, '2024-06-20', 'belum'),
(74, 'KB074', 'Indra', '83847306', 'SUKABUMI', 'Roti Bakar', 1, '0', '5000', 'BTL', 40, '2024-06-21', 'belum'),
(75, 'KB075', 'Jamal', '83847307', 'SUKABUMI', 'Roti Canai', 1, '0', '5000', 'BTL', 40, '2024-06-22', 'belum'),
(76, 'KB076', 'Kurnia', '83847308', 'SUKABUMI', 'Roti John', 1, '0', '5000', 'BTL', 40, '2024-06-23', 'belum'),
(77, 'KB077', 'Lutfi', '83847309', 'SUKABUMI', 'Donat', 1, '0', '5000', 'BTL', 40, '2024-06-24', 'belum'),
(78, 'KB078', 'Maulana', '83847310', 'SUKABUMI', 'Kue Bolu', 1, '0', '5000', 'BTL', 40, '2024-06-25', 'belum'),
(79, 'KB079', 'Nita', '83847311', 'SUKABUMI', 'Bolu Gulung', 1, '0', '5000', 'BTL', 40, '2024-06-26', 'belum'),
(80, 'KB080', 'Octa', '83847312', 'SUKABUMI', 'Pie Susu', 1, '0', '5000', 'BTL', 40, '2024-06-27', 'belum'),
(81, 'KB081', 'Putri', '83847313', 'SUKABUMI', 'Brownies Kukus', 1, '0', '5000', 'BTL', 40, '2024-06-28', 'belum');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pemesanan` int(11) NOT NULL,
  `kode_pesan` varchar(10) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` varchar(100) NOT NULL,
  `harga` char(10) NOT NULL,
  `dp` char(10) NOT NULL,
  `sisa` char(10) NOT NULL,
  `cash` varchar(20) DEFAULT NULL,
  `id` int(10) NOT NULL,
  `bukti` text DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL,
  `id_member` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `pemesanan`
--

INSERT INTO `pemesanan` (`id_pemesanan`, `kode_pesan`, `tanggal`, `jam`, `harga`, `dp`, `sisa`, `cash`, `id`, `bukti`, `id_user`, `id_member`) VALUES
(66, 'KPS0001', '2023-12-08', '1', '20000', '15000', '0', 'NULL', 36, 'Picture2.png', 2, 0),
(67, 'KPS0067', '2023-12-10', '1', '20000', '0', '0', '20000', 41, 'NULL', 0, 0),
(68, 'KPS0001', '2024-04-15', '1', '20000', '15000', '5000', NULL, 43, 'dshbr.png', 2, NULL),
(69, 'KPS0001', '2024-04-15', '1', '20000', '20000', '0', NULL, 47, 'dshbr.png', 2, NULL),
(70, 'KPS0001', '2024-04-16', '1', '20000', '20000', '0', NULL, 48, 'dshbr.png', 2, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(10) NOT NULL,
  `id` int(10) NOT NULL,
  `id_user` int(10) DEFAULT NULL,
  `jumlah` varchar(50) NOT NULL,
  `total` varchar(20) NOT NULL,
  `tgl_input` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `schedule_list`
--

CREATE TABLE `schedule_list` (
  `id` int(10) NOT NULL,
  `title` text NOT NULL,
  `tanggal_booking` datetime NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `id_lap` int(10) NOT NULL,
  `id_user` int(10) DEFAULT NULL,
  `id_member` int(10) DEFAULT NULL,
  `status_boking` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `schedule_list`
--

INSERT INTO `schedule_list` (`id`, `title`, `tanggal_booking`, `start_time`, `end_time`, `id_lap`, `id_user`, `id_member`, `status_boking`) VALUES
(36, 'asepsaww', '0000-00-00 00:00:00', '11:00:00', '12:00:00', 9, 2, 0, 'Lunas'),
(39, 'Asepppsukannndar', '0000-00-00 00:00:00', '09:00:00', '10:00:00', 10, 0, 0, 'Boking'),
(41, 'sas33333', '0000-00-00 00:00:00', '11:00:00', '12:00:00', 11, 0, 0, 'Lunas'),
(42, 'uhkti', '0000-00-00 00:00:00', '11:00:00', '12:00:00', 9, 2, 0, 'Lunas'),
(43, 'jey', '0000-00-00 00:00:00', '09:00:00', '10:00:00', 6, 1, 1, 'Pending'),
(44, 'Asepppsukannndar', '0000-00-00 00:00:00', '09:00:00', '10:00:00', 10, 0, 0, 'Boking'),
(45, 'sas33333', '0000-00-00 00:00:00', '11:00:00', '12:00:00', 11, 0, 0, 'Lunas'),
(46, 'test1', '0000-00-00 00:00:00', '00:00:00', '00:00:00', 6, 2, NULL, 'Booking'),
(47, '12321', '0000-00-00 00:00:00', '08:00:00', '09:00:00', 6, 2, NULL, 'Lunas'),
(48, 'sofyan club', '0000-00-00 00:00:00', '08:00:00', '09:00:00', 6, 2, NULL, 'Lunas'),
(49, 'DB', '0000-00-00 00:00:00', '08:00:00', '09:00:00', 6, 2, NULL, 'Boking'),
(50, 'aceng club', '0000-00-00 00:00:00', '08:00:00', '09:00:00', 6, 2, NULL, 'Boking'),
(51, 'mangiang club', '0000-00-00 00:00:00', '08:00:00', '09:00:00', 6, 2, NULL, 'Boking'),
(52, 'fahriz club', '2024-04-17 00:00:00', '20:00:00', '21:00:00', 6, 2, NULL, 'Booking'),
(53, 'fahriz club', '2023-12-08 11:00:00', '22:00:00', '23:00:00', 6, 2, NULL, 'Boking'),
(54, 'asdadasd', '2024-05-01 00:00:00', '22:00:00', '23:00:00', 6, 2, NULL, 'Boking'),
(55, '1231231', '2024-05-02 00:00:00', '22:00:00', '23:00:00', 6, 2, NULL, 'Boking');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `no_hp` varchar(50) NOT NULL,
  `akses` enum('admin','user','kepala') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_lengkap`, `email`, `password`, `no_hp`, `akses`) VALUES
(1, 'asep sukandar', 'admin@gmail.com', 'admin', '0899', 'admin'),
(2, 'User Kita22 ', 'user@gmail.com', 'user', '0987', 'user'),
(3, 'asep sukandar', 'user2@gmail.com', '222', '0899', 'user'),
(4, 'Mangiang', 'mangiang@gmail.com', '333', '087', 'kepala'),
(5, 'Ani', 'user1@gmail.com', 'user1', '83948', 'user'),
(6, 'Budi', 'user1@gmail.com', 'user2', '83949', 'user'),
(7, 'Citra', 'user1@gmail.com', 'user3', '83950', 'user'),
(8, 'Dian', 'user1@gmail.com', 'user4', '83951', 'user'),
(9, 'Eka', 'user1@gmail.com', 'user5', '83952', 'user'),
(10, 'Fitri', 'user1@gmail.com', 'user6', '83953', 'user'),
(11, 'Gita', 'user1@gmail.com', 'user7', '83954', 'user'),
(12, 'Hadi', 'user1@gmail.com', 'user8', '83955', 'user'),
(13, 'Ida', 'user1@gmail.com', 'user9', '83956', 'user'),
(14, 'Joko', 'user1@gmail.com', 'user10', '83957', 'user'),
(15, 'Kiki', 'user1@gmail.com', 'user11', '83958', 'user'),
(16, 'Lina', 'user1@gmail.com', 'user12', '83959', 'user'),
(17, 'Mira', 'user1@gmail.com', 'user13', '83960', 'user'),
(18, 'Nana', 'user1@gmail.com', 'user14', '83961', 'user'),
(19, 'Oka', 'user1@gmail.com', 'user15', '83962', 'user'),
(20, 'Putra', 'user1@gmail.com', 'user16', '83963', 'user'),
(21, 'Rani', 'user1@gmail.com', 'user17', '83964', 'user'),
(22, 'Sari', 'user1@gmail.com', 'user18', '83965', 'user'),
(23, 'Tono', 'user1@gmail.com', 'user19', '83966', 'user'),
(24, 'Umi', 'user1@gmail.com', 'user20', '83967', 'user'),
(25, 'Vina', 'user1@gmail.com', 'user21', '83968', 'user'),
(26, 'Wati', 'user1@gmail.com', 'user22', '83969', 'user'),
(27, 'Yani', 'user1@gmail.com', 'user23', '83970', 'user'),
(28, 'Zain', 'user1@gmail.com', 'user24', '83971', 'user'),
(29, 'Adi', 'user1@gmail.com', 'user25', '83972', 'user'),
(30, 'Bayu', 'user1@gmail.com', 'user26', '83973', 'user'),
(31, 'Cinta', 'user1@gmail.com', 'user27', '83974', 'user'),
(32, 'Dita', 'user1@gmail.com', 'user28', '83975', 'user'),
(33, 'Erlangga', 'user1@gmail.com', 'user29', '83976', 'user'),
(34, 'Fajar', 'user1@gmail.com', 'user30', '83977', 'user'),
(35, 'Galuh', 'user1@gmail.com', 'user31', '83978', 'user'),
(36, 'Hendra', 'user1@gmail.com', 'user32', '83979', 'user'),
(37, 'Indra', 'user1@gmail.com', 'user33', '83980', 'user'),
(38, 'Jamal', 'user1@gmail.com', 'user34', '83981', 'user'),
(39, 'Kurnia', 'user1@gmail.com', 'user35', '83982', 'user'),
(40, 'Lutfi', 'user1@gmail.com', 'user36', '83983', 'user'),
(41, 'Maulana', 'user1@gmail.com', 'user37', '83984', 'user'),
(42, 'Nita', 'user1@gmail.com', 'user38', '83985', 'user'),
(43, 'Octa', 'user1@gmail.com', 'user39', '83986', 'user'),
(44, 'Putri', 'user1@gmail.com', 'user40', '83987', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `lapangan`
--
ALTER TABLE `lapangan`
  ADD PRIMARY KEY (`id_lap`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indeks untuk tabel `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`),
  ADD KEY `id` (`id`,`id_user`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indeks untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`),
  ADD KEY `id` (`id`),
  ADD KEY `id_user` (`id_user`,`id_member`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD KEY `id` (`id`,`id_user`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `schedule_list`
--
ALTER TABLE `schedule_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_lap` (`id_lap`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_member` (`id_member`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `lapangan`
--
ALTER TABLE `lapangan`
  MODIFY `id_lap` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `nota`
--
ALTER TABLE `nota`
  MODIFY `id_nota` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pemesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `schedule_list`
--
ALTER TABLE `schedule_list`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `pembelian_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `pemesanan_ibfk_1` FOREIGN KEY (`id`) REFERENCES `schedule_list` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`id`) REFERENCES `barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penjualan_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `schedule_list`
--
ALTER TABLE `schedule_list`
  ADD CONSTRAINT `schedule_list_ibfk_3` FOREIGN KEY (`id_lap`) REFERENCES `lapangan` (`id_lap`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
