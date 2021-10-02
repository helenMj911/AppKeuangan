-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Okt 2021 pada 14.21
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app_keuangan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `keuangan`
--

CREATE TABLE `keuangan` (
  `kode` varchar(255) NOT NULL,
  `kodeUser` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(30) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `jumlah` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `keuangan`
--

INSERT INTO `keuangan` (`kode`, `kodeUser`, `tanggal`, `status`, `keterangan`, `jumlah`) VALUES
('00de6e0b-b507-48f7-b72e-fc44dd3b22bf', '9aa1ca69-376f-4063-8671-6d81116727f2', '2021-10-02', 'Pengeluaran', 'Wifi', 300000),
('14d1aa4f-55c1-4ac3-9cde-b76a10c794d5', '7afe931b-fe9d-49eb-a479-9c64380ba0c5', '2021-10-02', 'Pemasukan', 'Kirim ibu', 3000000),
('14f811f0-03e1-490e-a780-e2726db37975', '450225bf-87e7-48f9-bb36-e1287ef41bbb', '2021-10-02', 'Pengeluaran', 'Makan', 900000),
('1e7a1a1f-da87-4642-a18c-8e6280efbbe8', '8dd17734-e257-487f-9ac1-4b386a23adeb', '2021-10-02', 'Pemasukan', 'Gaji', 6000000),
('2ae24fd4-b74c-4e54-bcc9-ce7ec1f157e8', '450225bf-87e7-48f9-bb36-e1287ef41bbb', '2021-10-01', 'Pengeluaran', 'Bayar Kos', 700000),
('7718ba70-6430-4bc5-bfe7-4313ec799cc1', '9aa1ca69-376f-4063-8671-6d81116727f2', '2019-01-23', 'Pemasukan', 'Masuk', 500000),
('9634ea01-897a-40db-820d-b1f4872371f0', '9aa1ca69-376f-4063-8671-6d81116727f2', '2021-10-02', 'Pemasukan', 'Gaji', 6000000),
('a2f6850f-40c9-4f6b-a437-da24889fe5c8', '450225bf-87e7-48f9-bb36-e1287ef41bbb', '2021-10-01', 'Pemasukan', 'Tabungan', 500000),
('e5bcca93-a4bc-44cf-88d2-c58aa1f169ac', '450225bf-87e7-48f9-bb36-e1287ef41bbb', '2021-10-01', 'Pemasukan', 'Gaji', 6000000),
('f29f0379-491e-402b-9b19-238c5ae15b10', '8dd17734-e257-487f-9ac1-4b386a23adeb', '2021-10-02', 'Pengeluaran', 'bensin', 500000),
('fdcd7d6e-9fce-4d2d-9626-1e75b3ffc233', '7afe931b-fe9d-49eb-a479-9c64380ba0c5', '2021-10-02', 'Pengeluaran', 'Makan', 600000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `kode` varchar(255) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(255) NOT NULL,
  `telepon` bigint(20) NOT NULL,
  `alamat` text NOT NULL,
  `level` enum('Admin','Member') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`kode`, `nama`, `username`, `password`, `telepon`, `alamat`, `level`) VALUES
('450225bf-87e7-48f9-bb36-e1287ef41bbb', 'Helen Miftakhul', 'mjhelen', '$2y$10$ex0jK4w5uSNk2gjC7gwUTeTqFomkg.wlbfCpKuLUZJ5JALjD8to4G', 85734679087, 'Boyolali', 'Member'),
('7afe931b-fe9d-49eb-a479-9c64380ba0c5', 'Zafran', 'zakir', '$2y$10$wL6TapbE2cLPPeYWhXq46uVrlxaB8SORlaOIVCghN9sojNCNZW4gi', 87654123890, 'Bekasi', 'Member'),
('8dd17734-e257-487f-9ac1-4b386a23adeb', 'Hanum Zanuba', 'hanum', '$2y$10$/VWSobyyk9tQP1DrTRYQceHW4r869W8JLAZP8dNY9OCFGk.Y33qRG', 89768543123, 'Jakarta', 'Member'),
('9aa1ca69-376f-4063-8671-6d81116727f2', 'Admin', 'admin', '$2y$10$x7.ysFxOS.hfPVzT/A.muezj/qaXUzasuAzXCtB3KoEh77L5Cv9RO', 85728548264, 'Bandung', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `keuangan`
--
ALTER TABLE `keuangan`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `kodeUser` (`kodeUser`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`kode`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `keuangan`
--
ALTER TABLE `keuangan`
  ADD CONSTRAINT `keuangan_ibfk_1` FOREIGN KEY (`kodeUser`) REFERENCES `user` (`kode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
