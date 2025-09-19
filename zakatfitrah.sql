-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2023 at 03:55 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `admin` (`id`, `nama`, `username`, `password`) VALUES
(1, 'Aditya', 'aditya', '$2y$10$y7J8S4mWb.F2u.8BkiGIW.2WYyKnwIHNaVt3F980HR3f5UgzD.AD2'),
(2, 'admin', 'admin', '$2y$10$PyQEtoCcuDUJcJ6EMBdcD.9Fe6T85R2vNoz7S6l2eJ6UM5IfjzUl2');

CREATE TABLE `bayarzakat` (
  `id` int(11) NOT NULL,
  `no_kk` varchar(255) NOT NULL,
  `jenis_bayar` varchar(255) NOT NULL,
  `bayar_tanggungan` int(11) NOT NULL,
  `bayar_beras` int(11) NOT NULL,
  `bayar_uang` int(11) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `bayarzakat` (`id`, `no_kk`, `jenis_bayar`, `bayar_tanggungan`, `bayar_beras`, `bayar_uang`, `status`) VALUES
(44, '3205201003020003', 'Uang', 4, 0, 120000, 'Sudah Bayar'),
(45, '3205201003020004', 'Beras', 5, 13, 0, 'Sudah Bayar'),
(46, '3205201003020005', 'Uang', 3, 0, 90000, 'Sudah Bayar');


CREATE TABLE `mustahik` (
  `id` int(11) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `jumlah_hak` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `mustahik` (`id`, `kategori`, `jumlah_hak`) VALUES
(1, 'Fakir', 6),
(2, 'Miskin', 10),
(3, 'Panitia Zakat', 9),
(4, 'Mualaf', 3),
(5, 'Berutang', 5),
(6, 'Fisabilillah', 14),
(7, 'Ibnu Sabil', 5);


CREATE TABLE `mustahik_lainnya` (
  `id` int(11) NOT NULL,
  `no_kk` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `hak` int(11) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `mustahik_lainnya` (`id`, `no_kk`, `nama`, `kategori`, `hak`, `status`) VALUES
(15, '3205201003020010', 'Ujang Kosim', 'Fisabilillah', 1, 'Belum Diberikan'),
(16, '3205201003020011', 'Iko Qanita', 'Ibnu Sabil', 1, 'Belum Diberikan'),
(17, '3205201003020015', 'Samson Munir', 'Mualaf', 1, 'Sudah Diberikan');


CREATE TABLE `mustahik_warga` (
  `id` int(11) NOT NULL,
  `no_kk` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `hak` int(11) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `mustahik_warga` (`id`, `no_kk`, `kategori`, `hak`, `status`) VALUES
(12, '3205201003020001', 'Fakir', 2, 'Sudah Diberikan'),
(13, '3205201003020002', 'Fakir', 2, 'Sudah Diberikan'),
(14, '3205201003020003', 'Fakir', 1, 'Sudah Diberikan'),
(15, '3205201003020004', 'Fakir', 1, 'Sudah Diberikan'),
(16, '3205201003020005', 'Fakir', 1, 'Sudah Diberikan');


CREATE TABLE `muzakki` (
  `id` int(11) NOT NULL,
  `no_kk` varchar(16) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jumlah_tanggungan` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `muzakki` (`id`, `no_kk`, `nama`, `jumlah_tanggungan`, `keterangan`) VALUES
(1, '3205201003020001', 'Enjang Kusmana', 3, 'Warga Tetap'),
(2, '3205201003020002', 'Uya Saputra', 2, 'Warga Tetap'),
(3, '3205201003020003', 'Kumala Bani', 4, 'Bukan Warga Tetap'),
(4, '3205201003020004', 'Indra Candra', 5, 'Warga Tetap'),
(5, '3205201003020005', 'Muhamad Aditya Darmawan', 3, 'Bukan Warga Tetap'),
(6, '3205201003020006', 'Saepul Mubarok', 7, 'Warga Tetap'),
(7, '3205201003020007', 'Eka Rijal', 4, 'Warga Tetap'),
(8, '3205201003020008', 'Karim Mukin', 9, 'Warga Tetap'),
(9, '3205201003020017', 'Lili Sutarli', 7, 'Warga Tetap'),
(10, '3205201003020030', 'Udaya Majmur', 8, 'Bukan Warga Tetap');

ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `bayarzakat`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `no_kk` (`no_kk`);

ALTER TABLE `mustahik`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `mustahik_lainnya`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `mustahik_warga`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `no_kk` (`no_kk`);

ALTER TABLE `muzakki`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `no_kk` (`no_kk`);

ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `bayarzakat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

ALTER TABLE `mustahik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

ALTER TABLE `mustahik_lainnya`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

ALTER TABLE `mustahik_warga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

ALTER TABLE `muzakki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `bayarzakat`
  ADD CONSTRAINT `bayarzakat_ibfk_1` FOREIGN KEY (`no_kk`) REFERENCES `muzakki` (`no_kk`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `mustahik_warga`
  ADD CONSTRAINT `mustahik_warga_ibfk_1` FOREIGN KEY (`no_kk`) REFERENCES `muzakki` (`no_kk`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;