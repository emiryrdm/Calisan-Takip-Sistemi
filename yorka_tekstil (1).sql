-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 17 Ara 2022, 21:41:53
-- Sunucu sürümü: 10.4.25-MariaDB
-- PHP Sürümü: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `yorka_tekstil`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `departman`
--

CREATE TABLE `departman` (
  `departman_id` int(255) NOT NULL,
  `departman_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `departman`
--

INSERT INTO `departman` (`departman_id`, `departman_ad`) VALUES
(1, 'Bilgi İşlem'),
(2, 'İnsan Kaynakları'),
(3, 'İhracat'),
(4, 'Kalite Kontrol'),
(5, 'Muhasebe'),
(6, 'Pazarlama'),
(7, 'Satın Alma'),
(8, 'Üretim'),
(9, 'Yönetim');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gorev`
--

CREATE TABLE `gorev` (
  `calisan_id` int(255) NOT NULL,
  `departman_id` int(255) NOT NULL,
  `gorev_id` int(255) NOT NULL,
  `gorevler` varchar(100) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `gorev`
--

INSERT INTO `gorev` (`calisan_id`, `departman_id`, `gorev_id`, `gorevler`) VALUES
(1, 8, 1, 'AYAKÇI'),
(2, 8, 1, 'AYAKÇI'),
(3, 8, 1, 'AYAKÇI'),
(4, 8, 1, 'AYAKÇI'),
(5, 8, 1, 'AYAKÇI'),
(6, 8, 19, 'MEYDANCI'),
(7, 8, 19, 'MEYDANCI'),
(8, 8, 19, 'MEYDANCI'),
(9, 8, 12, 'İŞLETME ŞEFİ'),
(10, 8, 24, 'PAKETLEME ŞEFİ'),
(11, 8, 23, 'PAKETLEME PERSONELİ'),
(12, 8, 23, 'PAKETLEME PERSONELİ'),
(13, 8, 23, 'PAKETLEME PERSONELİ'),
(14, 8, 23, 'PAKETLEME PERSONELİ'),
(15, 8, 23, 'PAKETLEME PERSONELİ'),
(16, 8, 23, 'PAKETLEME PERSONELİ'),
(17, 8, 23, 'PAKETLEME PERSONELİ'),
(18, 8, 23, 'PAKETLEME PERSONELİ'),
(19, 8, 23, 'PAKETLEME PERSONELİ'),
(20, 8, 23, 'PAKETLEME PERSONELİ'),
(21, 8, 23, 'PAKETLEME PERSONELİ'),
(22, 8, 22, 'NUMUNE ŞEFİ'),
(23, 8, 21, 'NUMUNE PERSONELİ'),
(24, 8, 21, 'NUMUNE PERSONELİ'),
(25, 8, 21, 'NUMUNE PERSONELİ'),
(26, 8, 14, 'KALIP ŞEFİ'),
(27, 8, 13, 'KALIP PERSONELİ'),
(28, 8, 13, 'KALIP PERSONELİ'),
(29, 8, 13, 'KALIP PERSONELİ'),
(30, 8, 7, 'DOKUMA USTASI'),
(31, 8, 6, 'DOKUMA PERSONELİ'),
(32, 8, 6, 'DOKUMA PERSONELİ'),
(33, 8, 6, 'DOKUMA PERSONELİ'),
(34, 8, 6, 'DOKUMA PERSONELİ'),
(35, 8, 6, 'DOKUMA PERSONELİ'),
(36, 8, 6, 'DOKUMA PERSONELİ'),
(37, 8, 6, 'DOKUMA PERSONELİ'),
(38, 8, 6, 'DOKUMA PERSONELİ'),
(39, 8, 6, 'DOKUMA PERSONELİ'),
(40, 8, 6, 'DOKUMA PERSONELİ'),
(41, 8, 18, 'KONFEKSİYON ŞEFİ'),
(42, 8, 17, 'KONFEKSİYON PERSONELİ'),
(43, 8, 17, 'KONFEKSİYON PERSONELİ'),
(44, 8, 17, 'KONFEKSİYON PERSONELİ'),
(45, 8, 17, 'KONFEKSİYON PERSONELİ'),
(46, 8, 17, 'KONFEKSİYON PERSONELİ'),
(47, 8, 17, 'KONFEKSİYON PERSONELİ'),
(48, 8, 17, 'KONFEKSİYON PERSONELİ'),
(49, 8, 17, 'KONFEKSİYON PERSONELİ'),
(50, 8, 17, 'KONFEKSİYON PERSONELİ'),
(51, 8, 17, 'KONFEKSİYON PERSONELİ'),
(52, 8, 17, 'KONFEKSİYON PERSONELİ'),
(53, 8, 17, 'KONFEKSİYON PERSONELİ'),
(54, 8, 17, 'KONFEKSİYON PERSONELİ'),
(55, 8, 17, 'KONFEKSİYON PERSONELİ'),
(56, 8, 17, 'KONFEKSİYON PERSONELİ'),
(57, 8, 17, 'KONFEKSİYON PERSONELİ'),
(58, 8, 17, 'KONFEKSİYON PERSONELİ'),
(59, 8, 17, 'KONFEKSİYON PERSONELİ'),
(60, 8, 17, 'KONFEKSİYON PERSONELİ'),
(61, 8, 17, 'KONFEKSİYON PERSONELİ'),
(62, 8, 17, 'KONFEKSİYON PERSONELİ'),
(63, 8, 17, 'KONFEKSİYON PERSONELİ'),
(64, 8, 17, 'KONFEKSİYON PERSONELİ'),
(65, 8, 17, 'KONFEKSİYON PERSONELİ'),
(66, 8, 17, 'KONFEKSİYON PERSONELİ'),
(67, 8, 17, 'KONFEKSİYON PERSONELİ'),
(68, 8, 17, 'KONFEKSİYON PERSONELİ'),
(69, 8, 17, 'KONFEKSİYON PERSONELİ'),
(70, 8, 17, 'KONFEKSİYON PERSONELİ'),
(71, 8, 17, 'KONFEKSİYON PERSONELİ'),
(72, 8, 17, 'KONFEKSİYON PERSONELİ'),
(73, 8, 26, 'PLANLAMA UZMANI'),
(74, 8, 26, 'PLANLAMA UZMANI'),
(75, 8, 5, 'DİJİTAL BASKI OPERATÖRÜ'),
(76, 8, 5, 'DİJİTAL BASKI OPERATÖRÜ'),
(77, 8, 5, 'DİJİTAL BASKI OPERATÖRÜ'),
(78, 8, 5, 'DİJİTAL BASKI OPERATÖRÜ'),
(79, 8, 5, 'DİJİTAL BASKI OPERATÖRÜ'),
(80, 8, 5, 'DİJİTAL BASKI OPERATÖRÜ'),
(81, 8, 38, 'TASARIM UZMANI'),
(82, 8, 38, 'TASARIM UZMANI'),
(83, 4, 16, 'K.K ŞEFİ'),
(84, 4, 15, 'K.K ELEMANI'),
(85, 4, 15, 'K.K ELEMANI'),
(86, 4, 15, 'K.K ELEMANI'),
(87, 4, 15, 'K.K ELEMANI'),
(88, 7, 27, 'SATIN ALMA MÜDÜRÜ'),
(89, 3, 10, 'İHRACAT MÜDÜRÜ'),
(90, 1, 3, 'BİLGİ İŞLEM MÜDÜRÜ'),
(91, 6, 25, 'PAZARLAMA PERSONELİ'),
(92, 6, 25, 'PAZARLAMA PERSONELİ'),
(93, 2, 11, 'İNSAN KAYNAKLARI MÜDÜRÜ'),
(94, 2, 9, 'GÜVENLİK GÖREVLİSİ'),
(95, 2, 9, 'GÜVENLİK GÖREVLİSİ'),
(96, 5, 20, 'MUHASEBE UZMANI'),
(97, 5, 20, 'MUHASEBE UZMANI'),
(98, 2, 2, 'AŞÇI'),
(99, 2, 2, 'AŞÇI'),
(100, 2, 2, 'AŞÇI'),
(101, 2, 29, 'YEMEKHANE PERSONELİ'),
(102, 2, 29, 'YEMEKHANE PERSONELİ'),
(103, 2, 4, 'ÇAYCI'),
(104, 2, 4, 'ÇAYCI'),
(105, 9, 8, 'GENEL MÜDÜR');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `izinler_2022`
--

CREATE TABLE `izinler_2022` (
  `calisan_id` int(255) NOT NULL,
  `ocak` int(255) NOT NULL,
  `subat` int(255) NOT NULL,
  `mart` int(255) NOT NULL,
  `nisan` int(255) NOT NULL,
  `mayis` int(255) NOT NULL,
  `haziran` int(255) NOT NULL,
  `temmuz` int(255) NOT NULL,
  `agustos` int(255) NOT NULL,
  `eylul` int(255) NOT NULL,
  `ekim` int(255) NOT NULL,
  `kasim` int(255) NOT NULL,
  `aralik` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `izinler_2022`
--

INSERT INTO `izinler_2022` (`calisan_id`, `ocak`, `subat`, `mart`, `nisan`, `mayis`, `haziran`, `temmuz`, `agustos`, `eylul`, `ekim`, `kasim`, `aralik`) VALUES
(1, 0, 1, 2, 0, 0, 6, 1, 3, 5, 1, 3, 0),
(2, 3, 2, 1, 4, 1, 7, 5, 0, 3, 5, 1, 1),
(3, 4, 6, 3, 5, 9, 0, 0, 5, 0, 4, 7, 2),
(4, 0, 0, 0, 1, 4, 3, 7, 9, 8, 0, 1, 3),
(5, 2, 6, 3, 7, 3, 9, 7, 0, 5, 6, 9, 2),
(6, 3, 4, 6, 2, 1, 1, 4, 5, 8, 9, 2, 6),
(7, 3, 7, 4, 8, 1, 0, 0, 0, 1, 0, 0, 2),
(8, 5, 8, 3, 0, 3, 6, 9, 2, 8, 3, 5, 6),
(9, 7, 4, 9, 1, 3, 8, 5, 9, 3, 6, 9, 2),
(10, 7, 6, 9, 0, 3, 6, 8, 3, 6, 7, 9, 3),
(11, 5, 2, 2, 4, 3, 5, 6, 1, 7, 1, 5, 3),
(12, 1, 0, 1, 0, 4, 0, 2, 5, 3, 6, 8, 2),
(13, 4, 1, 3, 5, 2, 4, 1, 4, 2, 5, 3, 8),
(14, 6, 2, 5, 1, 1, 4, 6, 3, 5, 9, 0, 0),
(15, 5, 0, 4, 7, 2, 0, 0, 0, 1, 4, 3, 7),
(16, 9, 8, 0, 11, 3, 2, 6, 3, 7, 3, 9, 7),
(17, 0, 5, 6, 9, 2, 3, 4, 6, 2, 1, 1, 4),
(18, 5, 8, 9, 2, 6, 3, 7, 4, 8, 1, 0, 0),
(19, 0, 1, 0, 0, 2, 5, 8, 3, 0, 3, 6, 9),
(20, 2, 8, 3, 5, 6, 7, 4, 9, 1, 3, 8, 5),
(21, 9, 3, 6, 9, 2, 7, 6, 9, 0, 3, 6, 8),
(22, 3, 6, 7, 9, 3, 5, 2, 2, 4, 3, 5, 6),
(23, 1, 7, 1, 5, 3, 1, 0, 1, 0, 4, 0, 2),
(24, 5, 3, 6, 8, 2, 4, 1, 3, 5, 2, 4, 1),
(25, 4, 2, 5, 3, 8, 6, 0, 1, 2, 0, 0, 6),
(26, 1, 3, 5, 0, 3, 0, 3, 2, 1, 4, 1, 7),
(27, 5, 0, 3, 6, 1, 7, 1, 5, 3, 1, 0, 1),
(28, 0, 4, 0, 2, 5, 3, 6, 8, 2, 4, 1, 3),
(29, 5, 2, 4, 1, 4, 2, 5, 3, 8, 6, 0, 1),
(30, 2, 0, 0, 6, 1, 3, 5, 0, 3, 0, 3, 2),
(31, 1, 4, 1, 7, 2, 5, 8, 3, 0, 3, 6, 9),
(32, 2, 8, 3, 5, 6, 7, 4, 9, 1, 3, 8, 5),
(33, 9, 3, 6, 9, 2, 7, 6, 9, 0, 3, 6, 8),
(34, 3, 6, 7, 9, 3, 5, 2, 2, 4, 3, 5, 6),
(35, 1, 7, 1, 5, 3, 0, 3, 0, 3, 2, 1, 4),
(36, 1, 7, 5, 0, 3, 5, 1, 1, 4, 6, 3, 5),
(37, 9, 0, 0, 5, 0, 4, 7, 2, 0, 0, 0, 1),
(38, 4, 3, 7, 9, 8, 0, 1, 3, 2, 6, 3, 7),
(39, 3, 9, 7, 0, 5, 6, 9, 2, 3, 4, 6, 2),
(40, 1, 1, 4, 5, 8, 9, 2, 6, 3, 7, 4, 8),
(41, 1, 0, 0, 0, 1, 0, 0, 2, 5, 8, 3, 0),
(42, 3, 6, 9, 2, 8, 3, 5, 6, 7, 4, 9, 1),
(43, 3, 8, 5, 9, 3, 6, 9, 2, 7, 6, 9, 0),
(44, 3, 6, 8, 3, 6, 7, 9, 3, 5, 2, 2, 4),
(45, 3, 5, 6, 1, 7, 1, 5, 3, 1, 0, 1, 0),
(46, 4, 0, 2, 5, 3, 6, 8, 2, 4, 1, 3, 5),
(47, 2, 4, 1, 4, 2, 5, 3, 8, 6, 2, 5, 1),
(48, 1, 4, 6, 3, 5, 9, 0, 0, 5, 0, 4, 7),
(49, 2, 0, 0, 0, 1, 4, 3, 7, 9, 8, 0, 1),
(50, 3, 2, 6, 3, 7, 3, 9, 7, 0, 5, 6, 9),
(51, 2, 3, 4, 6, 2, 1, 1, 4, 5, 8, 9, 2),
(52, 6, 3, 7, 4, 8, 1, 0, 0, 5, 1, 1, 4),
(53, 6, 3, 5, 9, 0, 0, 5, 0, 4, 7, 2, 0),
(54, 0, 0, 1, 4, 3, 7, 9, 8, 0, 1, 3, 2),
(55, 6, 3, 7, 3, 9, 7, 0, 5, 6, 9, 2, 3),
(56, 4, 6, 2, 1, 1, 4, 5, 8, 9, 2, 6, 3),
(57, 7, 5, 0, 4, 7, 2, 0, 0, 0, 1, 4, 3),
(58, 7, 9, 8, 0, 1, 3, 2, 6, 3, 7, 3, 9),
(59, 7, 0, 5, 6, 9, 2, 3, 4, 6, 2, 1, 1),
(60, 4, 5, 8, 9, 2, 6, 3, 7, 4, 8, 1, 0),
(61, 0, 0, 1, 0, 0, 2, 5, 8, 3, 0, 3, 6),
(62, 9, 2, 8, 3, 5, 6, 7, 4, 9, 1, 3, 8),
(63, 5, 9, 3, 6, 9, 2, 7, 6, 9, 0, 3, 6),
(64, 8, 3, 6, 7, 9, 3, 5, 2, 2, 4, 3, 5),
(65, 6, 1, 7, 1, 5, 3, 1, 0, 1, 0, 4, 0),
(66, 2, 5, 3, 6, 8, 2, 4, 1, 3, 5, 2, 4),
(67, 1, 4, 2, 5, 3, 8, 6, 2, 5, 1, 1, 4),
(68, 6, 3, 5, 9, 0, 0, 5, 0, 4, 7, 2, 0),
(69, 0, 0, 1, 4, 3, 7, 9, 8, 0, 11, 3, 2),
(70, 6, 3, 7, 3, 9, 7, 0, 5, 6, 9, 2, 3),
(71, 4, 6, 2, 1, 1, 4, 5, 8, 9, 2, 6, 3),
(72, 7, 4, 8, 1, 0, 0, 0, 1, 0, 0, 2, 5),
(73, 8, 3, 0, 3, 6, 9, 2, 8, 3, 5, 6, 7),
(74, 4, 9, 1, 3, 8, 5, 9, 3, 6, 9, 2, 7),
(75, 6, 9, 0, 3, 6, 8, 3, 6, 7, 9, 3, 5),
(76, 3, 6, 8, 3, 6, 7, 9, 3, 5, 2, 2, 4),
(77, 3, 5, 6, 1, 7, 1, 5, 3, 1, 0, 1, 0),
(78, 4, 0, 2, 5, 3, 6, 8, 2, 4, 1, 3, 5),
(79, 2, 4, 1, 4, 2, 5, 3, 8, 6, 2, 5, 1),
(80, 1, 4, 6, 3, 5, 9, 0, 0, 5, 0, 4, 7),
(81, 2, 0, 0, 0, 1, 4, 3, 7, 9, 8, 0, 1),
(82, 3, 2, 6, 3, 7, 3, 9, 7, 0, 5, 6, 9),
(83, 2, 3, 4, 6, 2, 1, 1, 4, 5, 8, 9, 2),
(84, 6, 3, 7, 4, 8, 1, 0, 0, 5, 1, 1, 4),
(85, 6, 3, 5, 9, 0, 0, 5, 0, 4, 7, 2, 0),
(86, 0, 0, 1, 4, 3, 7, 9, 8, 0, 1, 3, 2),
(87, 6, 3, 7, 3, 9, 7, 0, 5, 6, 9, 2, 3),
(88, 4, 6, 2, 1, 1, 4, 5, 8, 9, 2, 6, 3),
(89, 7, 5, 0, 4, 7, 2, 0, 0, 0, 1, 4, 3),
(90, 7, 9, 8, 0, 1, 3, 2, 6, 3, 7, 3, 9),
(91, 7, 0, 5, 6, 9, 2, 3, 4, 6, 2, 1, 1),
(92, 4, 5, 8, 9, 2, 6, 3, 7, 4, 8, 1, 0),
(93, 0, 0, 1, 0, 0, 2, 5, 8, 3, 0, 3, 6),
(94, 9, 2, 8, 3, 5, 6, 7, 4, 9, 1, 3, 8),
(95, 5, 9, 3, 6, 9, 2, 7, 6, 9, 0, 3, 6),
(96, 8, 3, 6, 7, 9, 3, 5, 2, 2, 4, 3, 5),
(97, 6, 1, 7, 1, 5, 3, 1, 0, 1, 0, 4, 0),
(98, 2, 5, 3, 6, 8, 2, 4, 1, 3, 5, 2, 4),
(99, 1, 4, 2, 5, 3, 8, 6, 2, 5, 1, 1, 4),
(100, 6, 3, 5, 9, 0, 0, 5, 0, 4, 7, 2, 0),
(101, 0, 0, 1, 4, 3, 7, 9, 8, 0, 11, 3, 2),
(102, 6, 3, 7, 6, 2, 1, 1, 4, 5, 8, 9, 2),
(103, 6, 3, 7, 5, 0, 4, 7, 2, 0, 0, 0, 1),
(104, 4, 3, 7, 9, 8, 0, 1, 3, 2, 6, 3, 7),
(105, 3, 9, 7, 0, 5, 6, 9, 2, 3, 4, 6, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `izinler_2023`
--

CREATE TABLE `izinler_2023` (
  `personel_id` int(255) DEFAULT NULL,
  `ad` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `soyad` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `izin_baslangic` date NOT NULL,
  `izin_bitis` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `izinler_2023`
--

INSERT INTO `izinler_2023` (`personel_id`, `ad`, `soyad`, `izin_baslangic`, `izin_bitis`) VALUES
(0, 'test1', 'test1', '2023-01-01', '2023-01-01'),
(0, 'test1', 'test1', '2023-01-01', '2023-01-01'),
(0, 'test1', 'test1', '2023-01-01', '2023-01-01'),
(0, 'test1', 'test1', '2023-01-01', '2023-01-01'),
(0, 'test1', 'test1', '2023-01-01', '2023-01-01'),
(0, 'test1', 'test1', '2023-01-01', '2023-01-01'),
(0, 'test1', 'test1', '2023-01-01', '2023-01-01'),
(0, 'test1', 'test1', '2023-01-01', '2023-01-01'),
(0, 'test1', 'test1', '2023-01-01', '2023-01-01'),
(0, 'test1', 'test1', '0000-00-00', '0000-00-00'),
(0, 'test1', 'test1', '2022-12-01', '2022-12-01'),
(0, 'test1', 'test1', '2022-11-30', '2022-11-30'),
(0, 'test1', 'test1', '2022-11-30', '2022-11-30'),
(0, NULL, NULL, '2022-11-30', '2022-11-30'),
(0, 'serenay', 'kaymaz', '2022-11-30', '2022-11-30'),
(0, 'serenay', 'kaymaz', '2022-11-30', '2022-11-30'),
(0, 'serenay', 'kaymaz', '2022-11-30', '2022-11-30'),
(0, 'serenay', 'kaymaz', '2022-11-30', '2022-11-30'),
(0, 'serenay', 'kaymaz', '0000-00-00', '0000-00-00'),
(0, 'serenay', 'kaymaz', '0000-00-00', '0000-00-00'),
(0, 'serenay', 'kaymaz', '0000-00-00', '0000-00-00'),
(0, 'test1', 'test1', '2023-01-07', '2023-01-07'),
(0, 'serenay', 'kaymaz', '2022-12-22', '2022-12-22'),
(0, 'serenay', 'kaymaz', '2022-12-22', '2022-12-22'),
(2, 'serenay', 'kaymaz', '2022-12-22', '2022-12-22'),
(2, 'serenay', 'kaymaz', '2022-12-22', '2022-12-22'),
(2, 'serenay', 'kaymaz', '0000-00-00', '0000-00-00'),
(2, 'serenay', 'kaymaz', '0000-00-00', '0000-00-00'),
(2, 'serenay', 'kaymaz', '0000-00-00', '0000-00-00'),
(0, 'test1', 'test1', '2022-12-21', '2022-12-21');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mesailer_2022`
--

CREATE TABLE `mesailer_2022` (
  `calisan_id` int(255) NOT NULL,
  `ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `soyad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ocak` int(11) NOT NULL,
  `subat` int(11) NOT NULL,
  `mart` int(11) NOT NULL,
  `nisan` int(11) NOT NULL,
  `mayis` int(11) NOT NULL,
  `haziran` int(11) NOT NULL,
  `temmuz` int(11) NOT NULL,
  `agustos` int(11) NOT NULL,
  `eylul` int(11) NOT NULL,
  `ekim` int(11) NOT NULL,
  `kasim` int(11) NOT NULL,
  `aralik` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `mesailer_2022`
--

INSERT INTO `mesailer_2022` (`calisan_id`, `ad`, `soyad`, `ocak`, `subat`, `mart`, `nisan`, `mayis`, `haziran`, `temmuz`, `agustos`, `eylul`, `ekim`, `kasim`, `aralik`) VALUES
(1, 'RANA ', 'YILDIZOĞLU', 0, 30, 15, 45, 45, 43, 25, 32, 27, 45, 21, 12),
(2, 'SERENAY ', 'KAYMAZ', 21, 25, 41, 37, 18, 12, 15, 32, 0, 23, 41, 16),
(3, 'GÖKÇE ', 'KESGİN', 13, 38, 29, 14, 26, 45, 28, 11, 17, 29, 30, 37),
(4, 'ÖVÜNÇ ', 'ŞİMŞİR', 10, 35, 17, 17, 38, 20, 17, 18, 18, 9, 20, 28),
(5, 'CEYHUN ', 'ÇERKEZ', 26, 11, 21, 14, 2, 43, 38, 22, 25, 7, 33, 21),
(6, 'BURHAN ', 'KURUOĞLU', 10, 4, 22, 28, 10, 32, 16, 39, 11, 3, 44, 7),
(7, 'GÜLCE ', 'BUĞRUL', 22, 2, 12, 19, 16, 32, 27, 2, 8, 4, 4, 1),
(8, 'TAHSİN ', 'KORMALI', 5, 40, 30, 6, 18, 26, 3, 34, 24, 22, 39, 37),
(9, 'MUHLİS ', 'KALKANCI', 3, 25, 26, 20, 24, 40, 11, 32, 17, 42, 8, 19),
(10, 'LAL ', 'ELGÖRMÜŞ', 19, 20, 36, 37, 35, 22, 29, 32, 45, 6, 37, 41),
(11, 'EFTAL MURAT ', 'ULUBA', 7, 2, 43, 31, 19, 31, 17, 32, 31, 35, 20, 24),
(12, 'GÖZE ', 'SARIÇİÇEK', 26, 42, 37, 13, 33, 43, 5, 10, 30, 22, 26, 21),
(13, 'HASRET ', 'ÖZÇOLAK', 13, 41, 17, 25, 29, 9, 9, 43, 40, 6, 30, 29),
(14, 'AHMET SERKAN ', 'GÜLHAN', 42, 24, 38, 13, 21, 0, 38, 21, 28, 32, 33, 4),
(15, 'ÇAĞAN ', 'TOLA', 11, 31, 15, 11, 4, 32, 2, 44, 30, 33, 30, 6),
(16, 'SAVAŞ ', 'TOKATLIOĞLU', 31, 19, 20, 42, 25, 0, 35, 40, 14, 26, 25, 17),
(17, 'BERTUĞ ', 'ALBEN', 6, 13, 45, 33, 10, 10, 28, 30, 32, 31, 3, 36),
(18, 'MERVE ', 'AY', 23, 1, 43, 35, 7, 11, 37, 26, 2, 7, 36, 42),
(19, 'BİLGE MERVE ', 'YAĞLI', 8, 43, 36, 8, 9, 32, 42, 17, 32, 18, 32, 17),
(20, 'MEHMET HİLMİ ', 'DEMİRELLİ', 45, 33, 19, 4, 6, 10, 40, 13, 43, 28, 32, 42),
(21, 'SEBAHAT ', 'İLTER', 27, 16, 38, 3, 35, 29, 40, 37, 32, 2, 44, 43),
(22, 'ÖZKAN ', 'BAŞER', 8, 45, 31, 30, 22, 27, 10, 16, 29, 27, 43, 4),
(23, 'TUĞRA ', 'EŞİNGEN', 13, 1, 6, 41, 13, 11, 18, 26, 41, 6, 20, 8),
(24, 'EDAGÜL ', 'BAYDOĞAN', 10, 23, 16, 14, 13, 24, 1, 38, 45, 11, 27, 17),
(25, 'SELEN ', 'KESER', 11, 41, 35, 3, 34, 17, 18, 45, 9, 28, 39, 25),
(26, 'YAVUZ SELİM ', 'GÜMÜŞSU', 5, 34, 25, 45, 6, 6, 21, 45, 20, 2, 21, 45),
(27, 'RAŞAN ', 'ÖZMADEN', 3, 24, 32, 23, 6, 7, 11, 1, 21, 21, 34, 29),
(28, 'İSMAİL ŞENOL ', 'KOL', 5, 41, 34, 19, 31, 1, 23, 7, 3, 13, 13, 36),
(29, 'GÜLSÜM ', 'KOÇOĞLU', 41, 14, 14, 24, 16, 28, 37, 44, 2, 7, 3, 6),
(30, 'TALHA ', 'PEKGÖZ', 0, 26, 38, 13, 17, 8, 15, 21, 15, 2, 13, 23),
(31, 'TUĞKAN ', 'HASIRCI', 39, 5, 26, 15, 9, 34, 27, 34, 11, 42, 43, 4),
(32, 'GÜLFİDAN ', 'GÜLTEPE', 40, 13, 44, 31, 13, 23, 23, 30, 23, 42, 21, 25),
(33, 'ERHAN HÜSEYİN ', 'KURTÇU', 9, 1, 36, 25, 8, 23, 13, 37, 5, 35, 2, 2),
(34, 'DURAN ', 'KÖK', 13, 27, 43, 43, 35, 5, 40, 36, 17, 12, 15, 11),
(35, 'AYŞE GÜL ', 'BÜYÜKPASTIRMACI', 28, 34, 37, 7, 17, 15, 6, 13, 11, 7, 36, 11),
(36, 'PERİHAN ', 'BOĞA', 36, 0, 24, 13, 8, 24, 25, 42, 1, 1, 1, 17),
(37, 'MAHMUT ARDA ', 'AKDUR', 25, 39, 42, 37, 18, 30, 20, 31, 14, 1, 9, 1),
(38, 'BİLGİN ', 'BUDUNOĞLU', 9, 39, 36, 7, 5, 8, 32, 35, 11, 4, 35, 33),
(39, 'DİDEM AYŞE ', 'SÖKMEN', 25, 5, 29, 2, 15, 1, 28, 34, 6, 13, 9, 3),
(40, 'SİNAN ', 'ÖZELLİ', 4, 31, 18, 44, 12, 15, 7, 12, 42, 36, 13, 29),
(41, 'ZİYA ', 'YARDIMCI', 45, 26, 10, 36, 29, 39, 3, 28, 14, 11, 10, 33),
(42, 'VASFİYE ', 'BALTA', 7, 43, 10, 17, 32, 27, 29, 18, 7, 16, 42, 42),
(43, 'HALUK ', 'DAYANIR', 16, 7, 44, 43, 43, 15, 19, 38, 2, 26, 13, 4),
(44, 'YUSUF ', 'ELDEM', 0, 37, 12, 10, 39, 10, 43, 29, 34, 10, 42, 4),
(45, 'RECAİ', 'DURMUŞ', 27, 23, 15, 22, 31, 17, 41, 37, 28, 9, 17, 2),
(46, 'ECE ', 'GEZEK', 18, 37, 6, 15, 6, 3, 38, 45, 29, 2, 21, 9),
(47, 'AHMET SERCAN ', 'ÇIPLAK', 33, 7, 38, 41, 42, 1, 22, 3, 28, 33, 35, 4),
(48, 'SELİN ', 'AZAR', 10, 39, 3, 18, 22, 34, 2, 45, 45, 20, 1, 31),
(49, 'ÖZGE ', 'KARABAY', 2, 8, 32, 14, 30, 6, 21, 13, 3, 8, 29, 0),
(50, 'ZEHRA', 'SİL', 13, 41, 10, 45, 36, 11, 9, 1, 17, 10, 0, 9),
(51, 'ESEN İBRAHİM ', 'BOZPOLAT', 45, 23, 44, 25, 24, 35, 35, 23, 44, 15, 44, 6),
(52, 'KARDELEN ', 'YAPAR', 19, 39, 27, 41, 37, 13, 31, 17, 34, 39, 2, 35),
(53, 'FATMA DUYGU ', 'LEMLİOĞLU', 40, 19, 10, 9, 13, 15, 1, 0, 21, 1, 19, 30),
(54, 'OĞULCAN ', 'KUDU', 14, 8, 39, 13, 28, 45, 4, 43, 34, 42, 36, 33),
(55, 'MEHMET ŞİRİN ', 'KARAİSMAİLOĞLU', 30, 23, 33, 7, 6, 22, 19, 9, 15, 42, 5, 43),
(56, 'KAAN YILMAZ ', 'GELEBEK', 8, 40, 27, 32, 44, 3, 5, 2, 42, 4, 22, 8),
(57, 'SİMAY ', 'HANÇER', 45, 14, 42, 5, 25, 30, 6, 28, 34, 33, 38, 43),
(58, 'NAFİZ ', 'BABAYİĞİT', 9, 36, 34, 22, 35, 4, 24, 24, 45, 17, 23, 22),
(59, 'AYBEGÜM ', 'ERGÜL', 21, 20, 23, 8, 8, 37, 37, 1, 24, 24, 18, 24),
(60, 'MAZLUM ', 'BÜKÜM', 7, 19, 11, 22, 17, 25, 23, 27, 29, 25, 19, 10),
(61, 'ORHAN ', 'GÜNYOL', 13, 33, 9, 34, 33, 41, 16, 38, 31, 9, 32, 21),
(62, 'YILDIRAY ', 'KİRAZ', 16, 16, 31, 21, 13, 43, 28, 11, 4, 19, 20, 34),
(63, 'TÜMAY ', 'SAVAŞ', 12, 37, 2, 13, 1, 8, 14, 32, 20, 4, 28, 19),
(64, 'YAŞAR GÖZDE ', 'ASLAN', 43, 38, 42, 22, 44, 30, 37, 3, 13, 2, 45, 33),
(65, 'AYŞE CEREN ', 'FAYDACI', 32, 25, 28, 34, 9, 0, 1, 14, 33, 6, 40, 15),
(66, 'AYŞIN ', 'DELİLBAŞI', 22, 16, 11, 24, 39, 11, 4, 29, 29, 32, 28, 9),
(67, 'ELİFCAN ', 'ATAK', 13, 37, 25, 15, 30, 31, 28, 12, 2, 28, 8, 0),
(68, 'HALİL ', 'ÖZTÜRK', 22, 22, 9, 0, 43, 34, 17, 1, 20, 44, 25, 20),
(69, 'NURAN ', 'TURANOĞLU', 45, 23, 27, 36, 42, 5, 15, 24, 5, 5, 41, 43),
(70, 'SİDAR ', 'ÇIRAK', 36, 10, 36, 5, 41, 43, 21, 28, 23, 14, 38, 4),
(71, 'TEVFİK ÖZGÜN ', 'TOPÇAM', 32, 6, 27, 27, 29, 23, 15, 19, 41, 31, 31, 1),
(72, 'MELAHAT GEDİK ', 'YILMAZ', 7, 25, 7, 34, 15, 38, 7, 29, 14, 37, 14, 28),
(73, 'ŞERMİN ', 'KALYONCU', 29, 45, 12, 21, 35, 45, 3, 41, 45, 26, 0, 10),
(74, 'MEHMET YILDIRIM ', 'EVİZ', 36, 14, 3, 22, 28, 23, 37, 5, 35, 12, 15, 44),
(75, 'VEHBİ ', 'ZAFER', 31, 20, 24, 43, 30, 27, 32, 18, 31, 31, 37, 21),
(76, 'VELİ ÇAĞLAR ', 'ULUÖZ', 5, 27, 44, 14, 19, 5, 3, 5, 41, 38, 14, 15),
(77, 'EMRULLAH ', 'İŞLER', 9, 42, 37, 44, 26, 9, 0, 14, 37, 25, 23, 31),
(78, 'ÇETİN ', 'ARIKBOĞA', 3, 26, 30, 12, 31, 13, 40, 12, 31, 22, 31, 0),
(79, 'SUDENAZ ', 'ÇET', 10, 8, 0, 36, 42, 31, 6, 27, 4, 10, 26, 16),
(80, 'ÖMER ', 'KORHAN', 10, 4, 0, 8, 1, 11, 42, 43, 2, 43, 13, 31),
(81, 'EMİRHAN', 'KÜLEÇ', 10, 42, 18, 5, 33, 29, 44, 33, 14, 15, 45, 12),
(82, 'ŞERMİN ', 'UÇAR', 21, 20, 26, 2, 30, 5, 8, 10, 43, 44, 25, 39),
(83, 'YILMAZ ', 'TEHLİ', 23, 44, 13, 4, 42, 29, 23, 13, 45, 17, 42, 44),
(84, 'İSMAİL ', 'ZUBAROĞLU', 41, 34, 36, 7, 31, 8, 15, 17, 34, 0, 8, 14),
(85, 'GÜROL ', 'KÖRHASANOĞULLARI', 8, 18, 36, 12, 37, 40, 23, 21, 42, 43, 8, 11),
(86, 'VEYSEL ', 'ÖZTAŞ', 7, 7, 32, 30, 14, 18, 44, 33, 16, 0, 32, 36),
(87, 'ALİ RIZA ', 'UTLU', 10, 45, 2, 7, 21, 30, 23, 11, 36, 8, 40, 39),
(88, 'VELİ ENES ', 'SERVET', 12, 17, 23, 17, 2, 6, 45, 38, 28, 1, 23, 28),
(89, 'HİLMİ ', 'KANKILIÇ', 9, 8, 2, 1, 33, 14, 29, 10, 31, 19, 32, 32),
(90, 'DAĞHAN ', 'BAYRAK', 37, 20, 33, 0, 44, 18, 14, 13, 25, 38, 0, 33),
(91, 'OLGA ', 'ÖZÇAM', 35, 45, 13, 34, 3, 33, 3, 39, 14, 27, 29, 41),
(92, 'NECLA ', 'DİL', 45, 41, 31, 23, 16, 22, 40, 25, 4, 30, 9, 12),
(93, 'ÖZGÜL ', 'KARAKURT', 27, 16, 44, 10, 22, 7, 40, 32, 11, 44, 3, 23),
(94, 'ZEKİ ', 'KARAMERCAN', 15, 21, 6, 8, 39, 42, 29, 25, 11, 2, 29, 29),
(95, 'ŞEREF', 'EGEHAN', 23, 16, 30, 9, 13, 8, 22, 37, 13, 22, 45, 4),
(96, 'CEMİLE ÇİĞDEM ', 'BAYRAMOĞLU', 11, 45, 5, 15, 33, 33, 1, 25, 24, 40, 3, 21),
(97, 'KEVSER ', 'TOPAL', 34, 23, 31, 13, 27, 28, 7, 25, 16, 15, 39, 0),
(98, 'VEYSİ ', 'YERLİKAYA', 36, 34, 1, 38, 34, 19, 10, 10, 1, 10, 37, 26),
(99, 'ALP ', 'OKYAY', 36, 3, 21, 18, 26, 41, 24, 0, 15, 10, 21, 21),
(100, 'FATIMA İLAY ', 'AK YILDIRIM', 43, 7, 13, 14, 38, 36, 7, 40, 29, 7, 5, 12),
(101, 'NARİN ', 'ÇİPE', 5, 35, 40, 24, 36, 19, 14, 35, 33, 40, 3, 24),
(102, 'ORKUN ', 'ATCI', 28, 22, 9, 24, 23, 33, 4, 30, 40, 29, 17, 2),
(103, 'ŞULE MİNE ', 'KOPTUR', 1, 13, 17, 22, 33, 16, 35, 10, 32, 24, 42, 19),
(104, 'SERDAR ', 'ALMACIOĞLU', 35, 26, 38, 9, 37, 31, 44, 21, 11, 28, 31, 26),
(105, 'KAZIM', 'YÖRÜK', 40, 15, 42, 12, 15, 10, 37, 26, 37, 41, 28, 14);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mesailer_2023`
--

CREATE TABLE `mesailer_2023` (
  `calisan_id` int(255) DEFAULT NULL,
  `ad` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `soyad` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `mesai_tarih` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `mesailer_2023`
--

INSERT INTO `mesailer_2023` (`calisan_id`, `ad`, `soyad`, `mesai_tarih`) VALUES
(1, 'RANA ', 'YILDIZOĞLU', '2022-12-24'),
(1, 'RANA ', 'YILDIZOĞLU', '2022-12-24'),
(97, 'KEVSER ', 'TOPAL', '2023-01-08'),
(1, 'RANA ', 'YILDIZOĞLU', '2022-12-23'),
(1, 'RANA ', 'YILDIZOĞLU', '2022-12-23');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mesai_ekleme_ekrani`
--

CREATE TABLE `mesai_ekleme_ekrani` (
  `gorev_id` int(255) NOT NULL,
  `personel_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `mesai_ekleme_ekrani`
--

INSERT INTO `mesai_ekleme_ekrani` (`gorev_id`, `personel_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(19, 6),
(19, 7),
(19, 8),
(12, 9),
(24, 10),
(23, 11),
(23, 12),
(23, 13),
(23, 14),
(23, 15),
(23, 16),
(23, 17),
(23, 18),
(23, 19),
(23, 20),
(23, 21),
(22, 22),
(21, 23),
(21, 24),
(21, 25),
(14, 26),
(13, 27),
(13, 28),
(13, 29),
(7, 30),
(6, 31),
(6, 32),
(6, 33),
(6, 34),
(6, 35),
(6, 36),
(6, 37),
(6, 38),
(6, 39),
(6, 40),
(18, 41),
(17, 42),
(17, 43),
(17, 44),
(17, 45),
(17, 46),
(17, 47),
(17, 48),
(17, 49),
(17, 50),
(17, 51),
(17, 52),
(17, 53),
(17, 54),
(17, 55),
(17, 56),
(17, 57),
(17, 58),
(17, 59),
(17, 60),
(17, 61),
(17, 62),
(17, 63),
(17, 64),
(17, 65),
(17, 66),
(17, 67),
(17, 68),
(17, 69),
(17, 70),
(17, 71),
(17, 72),
(26, 73),
(26, 74),
(5, 75),
(5, 76),
(5, 77),
(5, 78),
(5, 79),
(5, 80),
(38, 81),
(38, 82),
(16, 83),
(15, 84),
(15, 85),
(15, 86),
(15, 87),
(27, 88),
(10, 89),
(3, 90),
(25, 91),
(25, 92),
(11, 93),
(9, 94),
(9, 95),
(20, 96),
(20, 97),
(2, 98),
(2, 99),
(2, 100),
(29, 101),
(29, 102),
(4, 103),
(4, 104),
(8, 105);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personeller`
--

CREATE TABLE `personeller` (
  `personel_id` int(11) NOT NULL,
  `ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `soyad` varchar(1000) COLLATE utf8_turkish_ci NOT NULL,
  `gorevler` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `maas_ocak` int(11) NOT NULL,
  `maas_subat` int(11) NOT NULL,
  `maas_mart` int(11) NOT NULL,
  `maas_nisan` int(11) NOT NULL,
  `maas_mayis` int(11) NOT NULL,
  `maas_haziran` int(11) NOT NULL,
  `maas_temmuz` int(11) NOT NULL,
  `maas_agustos` int(11) NOT NULL,
  `maas_eylul` int(11) NOT NULL,
  `maas_ekim` int(11) NOT NULL,
  `maas_kasim` int(11) NOT NULL,
  `maas_aralik` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `personeller`
--

INSERT INTO `personeller` (`personel_id`, `ad`, `soyad`, `gorevler`, `maas_ocak`, `maas_subat`, `maas_mart`, `maas_nisan`, `maas_mayis`, `maas_haziran`, `maas_temmuz`, `maas_agustos`, `maas_eylul`, `maas_ekim`, `maas_kasim`, `maas_aralik`) VALUES
(1, 'RANA ', 'YILDIZOĞLU', 'AYAKÇI', 4253, 4819, 4313, 5326, 5326, 4384, 6078, 6135, 5644, 6970, 5844, 6145),
(2, 'SERENAY ', 'KAYMAZ', 'AYAKÇI', 4307, 4551, 5082, 4539, 4534, 3496, 4999, 6713, 5197, 5520, 6847, 6076),
(3, 'GÖKÇE ', 'KESGİN', 'AYAKÇI', 3967, 4265, 4497, 3841, 3531, 5326, 6363, 5101, 6299, 5898, 5351, 6530),
(4, 'ÖVÜNÇ ', 'ŞİMŞİR', 'AYAKÇI', 4491, 5088, 4658, 4509, 4563, 4283, 4675, 4546, 4788, 6052, 6199, 6060),
(5, 'CEYHUN ', 'ÇERKEZ', 'AYAKÇI', 4575, 3621, 4307, 3544, 3853, 3937, 5323, 6404, 5582, 4834, 5058, 6037),
(6, 'BURHAN ', 'KURUOĞLU', 'MEYDANCI', 4044, 3752, 3883, 4623, 4342, 4867, 5222, 5965, 4572, 4133, 6746, 4834),
(7, 'GÜLCE ', 'BUĞRUL', 'MEYDANCI', 4331, 3257, 3943, 3514, 4485, 5017, 6333, 5788, 5829, 5898, 5898, 5420),
(8, 'TAHSİN ', 'KORMALI', 'MEYDANCI', 3627, 4014, 4521, 4396, 4235, 3979, 3858, 6384, 4973, 5875, 6014, 5759),
(9, 'MUHLİS ', 'KALKANCI', 'İŞLETME ŞEFİ', 3923, 5134, 4235, 5543, 5290, 4837, 5424, 5510, 6348, 6568, 4717, 6638),
(10, 'LAL ', 'ELGÖRMÜŞ', 'PAKETLEME ŞEFİ', 4580, 4806, 4720, 6505, 5858, 4869, 5221, 6601, 6457, 4932, 5555, 6954),
(11, 'EFTAL MURAT ', 'ULUBA', 'PAKETLEME PERSONELİ', 3758, 4096, 5101, 4500, 4359, 4347, 4873, 6527, 5387, 6668, 5433, 5943),
(12, 'GÖZE ', 'SARIÇİÇEK', 'PAKETLEME PERSONELİ', 4837, 5383, 5107, 4672, 4550, 5407, 5274, 5075, 6128, 5302, 5039, 6043),
(13, 'HASRET ', 'ÖZÇOLAK', 'PAKETLEME PERSONELİ', 4059, 5205, 4310, 4200, 4758, 3961, 5591, 6288, 6630, 5001, 6128, 5132),
(14, 'AHMET SERKAN ', 'GÜLHAN', 'PAKETLEME PERSONELİ', 4463, 4635, 4518, 4518, 4715, 3740, 5521, 5802, 5680, 5032, 6800, 5904),
(15, 'ÇAĞAN ', 'TOLA', 'PAKETLEME PERSONELİ', 3857, 5113, 4108, 3550, 4145, 5138, 5567, 7090, 6514, 6028, 6128, 4615),
(16, 'SAVAŞ ', 'TOKATLIOĞLU', 'PAKETLEME PERSONELİ', 3734, 3593, 4844, 3697, 4506, 4047, 5428, 6388, 4862, 6004, 4816, 4955),
(17, 'BERTUĞ ', 'ALBEN', 'PAKETLEME PERSONELİ', 4500, 3906, 4537, 3783, 4292, 4138, 5599, 5500, 6383, 6545, 5680, 6120),
(18, 'MERVE ', 'AY', 'PAKETLEME PERSONELİ', 4151, 3152, 4028, 4905, 3605, 4163, 5297, 5763, 4298, 5804, 6892, 7078),
(19, 'BİLGE MERVE ', 'YAĞLI', 'PAKETLEME PERSONELİ', 4550, 5254, 5236, 4550, 4267, 4371, 5259, 5678, 6769, 5757, 5611, 4569),
(20, 'MEHMET HİLMİ ', 'DEMİRELLİ', 'PAKETLEME PERSONELİ', 5150, 3936, 4359, 3685, 3581, 3526, 5969, 4397, 6915, 6066, 5225, 6113),
(21, 'SEBAHAT ', 'İLTER', 'PAKETLEME PERSONELİ', 3636, 4286, 4365, 3047, 4905, 3991, 5583, 5137, 6769, 5263, 5981, 5564),
(22, 'ÖZKAN ', 'BAŞER', 'NUMUNE ŞEFİ', 5362, 5976, 5294, 4840, 5833, 5580, 6514, 6969, 7037, 7200, 7334, 5603),
(23, 'TUĞRA ', 'EŞİNGEN', 'NUMUNE PERSONELİ', 4808, 3503, 4624, 4887, 4479, 4756, 6268, 6549, 7281, 5354, 6606, 5820),
(24, 'EDAGÜL ', 'BAYDOĞAN', 'NUMUNE PERSONELİ', 4070, 4742, 4064, 3682, 4644, 4604, 5521, 6534, 6406, 5916, 6029, 6309),
(25, 'SELEN ', 'KESER', 'NUMUNE PERSONELİ', 4262, 5382, 4729, 4215, 4209, 4090, 6268, 7159, 5852, 6863, 7216, 5563),
(26, 'YAVUZ SELİM ', 'GÜMÜŞSU', 'KALIP ŞEFİ', 5842, 6415, 5669, 7449, 5443, 6094, 6749, 8142, 7468, 6049, 7506, 6985),
(27, 'RAŞAN ', 'ÖZMADEN', 'KALIP PERSONELİ', 4104, 5576, 5273, 4492, 4893, 3865, 5891, 4983, 6085, 6491, 7115, 6750),
(28, 'İSMAİL ŞENOL ', 'KOL', 'KALIP PERSONELİ', 5041, 5350, 5857, 5083, 4893, 4400, 5267, 4570, 5704, 5624, 6231, 6572),
(29, 'GÜLSÜM ', 'KOÇOĞLU', 'KALIP PERSONELİ', 5174, 4942, 4590, 5400, 4646, 5336, 5924, 6782, 4456, 5023, 6109, 6004),
(30, 'TALHA ', 'PEKGÖZ', 'DOKUMA USTASI', 8031, 10090, 10733, 7389, 9275, 8125, 9022, 11518, 10059, 10410, 9937, 10928),
(31, 'TUĞKAN ', 'HASIRCI', 'DOKUMA PERSONELİ', 7329, 5409, 6856, 5090, 6010, 6237, 6278, 8129, 7998, 8519, 7763, 5307),
(32, 'GÜLFİDAN ', 'GÜLTEPE', 'DOKUMA PERSONELİ', 7138, 4792, 7056, 6128, 5245, 5381, 7169, 6364, 8242, 8519, 6296, 7263),
(33, 'ERHAN HÜSEYİN ', 'KURTÇU', 'DOKUMA PERSONELİ', 4417, 5490, 6082, 4999, 5973, 5381, 6212, 6661, 7742, 8221, 6019, 5487),
(34, 'DURAN ', 'KÖK', 'DOKUMA PERSONELİ', 5927, 5754, 6109, 5654, 6728, 5181, 8424, 8480, 7189, 7242, 6838, 64025),
(35, 'AYŞE GÜL ', 'BÜYÜKPASTIRMACI', 'DOKUMA PERSONELİ', 6929, 5782, 7256, 5254, 6073, 6683, 6712, 8033, 7200, 7295, 8795, 6934),
(36, 'PERİHAN ', 'BOĞA', 'DOKUMA PERSONELİ', 7220, 4544, 5873, 6610, 5745, 5873, 8052, 9001, 6509, 5977, 6774, 6923),
(37, 'MAHMUT ARDA ', 'AKDUR', 'DOKUMA PERSONELİ', 4999, 7557, 7666, 6346, 6792, 6319, 6244, 8267, 8125, 7572, 7912, 7306),
(38, 'BİLGİN ', 'BUDUNOĞLU', 'DOKUMA PERSONELİ', 5555, 6874, 5855, 4344, 4498, 6428, 8350, 8170, 7465, 6104, 8221, 7072),
(39, 'DİDEM AYŞE ', 'SÖKMEN', 'DOKUMA PERSONELİ', 6364, 4271, 5600, 6210, 5545, 4808, 6053, 8395, 6987, 7019, 6317, 7125),
(40, 'SİNAN ', 'ÖZELLİ', 'DOKUMA PERSONELİ', 6055, 7038, 5882, 6601, 4753, 4635, 7020, 6396, 8519, 7200, 7019, 6636),
(41, 'ZİYA ', 'YARDIMCI', 'KONFEKSİYON ŞEFİ', 7547, 7083, 6501, 7447, 6965, 7557, 7382, 8140, 6795, 5870, 7157, 8933),
(42, 'VASFİYE ', 'BALTA', 'KONFEKSİYON PERSONELİ', 5028, 5571, 3942, 5540, 4831, 5657, 6063, 5683, 5127, 6101, 5916, 7672),
(43, 'HALUK ', 'DAYANIR', 'KONFEKSİYON PERSONELİ', 5311, 4044, 5799, 4980, 6161, 4688, 4834, 7263, 4951, 6013, 4898, 6557),
(44, 'YUSUF ', 'ELDEM', 'KONFEKSİYON PERSONELİ', 4807, 5382, 4201, 5122, 5445, 4335, 5676, 6728, 6513, 6329, 7453, 5679),
(45, 'RECAİ', 'DURMUŞ', 'KONFEKSİYON PERSONELİ', 5657, 5138, 4689, 5893, 4996, 5736, 6484, 7009, 7181, 6733, 6794, 6487),
(46, 'ECE ', 'GEZEK', 'KONFEKSİYON PERSONELİ', 5177, 6562, 5193, 4886, 4996, 4311, 5720, 7509, 6557, 6268, 6496, 5635),
(47, 'AHMET SERCAN ', 'ÇIPLAK', 'KONFEKSİYON PERSONELİ', 6043, 4831, 6397, 5901, 6326, 4445, 6256, 4717, 6083, 7137, 6549, 6338),
(48, 'SELİN ', 'AZAR', 'KONFEKSİYON PERSONELİ', 5516, 5838, 4311, 5374, 5106, 4697, 6212, 7948, 6900, 7119, 5574, 5969),
(49, 'ÖZGE ', 'KARABAY', 'KONFEKSİYON PERSONELİ', 5067, 5650, 6405, 5838, 6145, 4799, 6221, 5288, 4547, 4942, 7435, 6197),
(50, 'ZEHRA', 'SİL', 'KONFEKSİYON PERSONELİ', 5216, 6295, 4532, 6224, 5154, 5154, 4482, 4866, 7014, 5671, 5100, 4757),
(51, 'ESEN İBRAHİM ', 'BOZPOLAT', 'KONFEKSİYON PERSONELİ', 6421, 5532, 5996, 5004, 5759, 6303, 7152, 6297, 6865, 5188, 5987, 6189),
(52, 'KARDELEN ', 'YAPAR', 'KONFEKSİYON PERSONELİ', 4815, 6035, 4870, 5901, 4988, 5610, 7231, 6965, 6513, 7567, 6268, 6768),
(53, 'FATMA DUYGU ', 'LEMLİOĞLU', 'KONFEKSİYON PERSONELİ', 5477, 5405, 4729, 3910, 5807, 5870, 5079, 6368, 6276, 4915, 6645, 7470),
(54, 'OĞULCAN ', 'KUDU', 'KONFEKSİYON PERSONELİ', 5838, 5650, 6428, 5020, 5689, 5437, 4307, 6122, 7611, 7672, 7023, 7137),
(55, 'MEHMET ŞİRİN ', 'KARAİSMAİLOĞLU', 'KONFEKSİYON PERSONELİ', 5161, 5532, 5059, 5028, 3816, 4713, 6809, 5586, 5627, 5916, 6153, 7269),
(56, 'KAAN YILMAZ ', 'GELEBEK', 'KONFEKSİYON PERSONELİ', 4862, 5477, 5854, 6208, 6586, 4705, 5220, 4682, 5916, 6118, 5872, 6039),
(57, 'SİMAY ', 'HANÇER', 'KONFEKSİYON PERSONELİ', 5437, 4854, 6720, 4768, 4807, 5948, 6353, 7351, 7611, 7356, 6873, 7269),
(58, 'NAFİZ ', 'BABAYİĞİT', 'KONFEKSİYON PERSONELİ', 4304, 4760, 4894, 6090, 6303, 4933, 6546, 5894, 7339, 5477, 6566, 5214),
(59, 'AYBEGÜM ', 'ERGÜL', 'KONFEKSİYON PERSONELİ', 4681, 6027, 5138, 4469, 3879, 6169, 6783, 5525, 5943, 6821, 6830, 7040),
(60, 'MAZLUM ', 'BÜKÜM', 'KONFEKSİYON PERSONELİ', 4831, 5012, 4170, 4319, 5540, 5004, 6291, 5780, 6557, 5539, 6865, 6768),
(61, 'ORHAN ', 'GÜNYOL', 'KONFEKSİYON PERSONELİ', 5807, 6436, 5485, 6468, 6436, 6295, 5606, 5946, 6847, 6733, 6882, 5837),
(62, 'YILDIRAY ', 'KİRAZ', 'KONFEKSİYON PERSONELİ', 4130, 5508, 4799, 5469, 4823, 5571, 5589, 5876, 4582, 6865, 6461, 5855),
(63, 'TÜMAY ', 'SAVAŞ', 'KONFEKSİYON PERSONELİ', 4791, 4791, 4870, 4626, 3658, 5256, 5097, 6175, 5144, 6557, 6742, 5767),
(64, 'YAŞAR GÖZDE ', 'ASLAN', 'KONFEKSİYON PERSONELİ', 5177, 6003, 5540, 4713, 5012, 5752, 6344, 6034, 6434, 5609, 7339, 6478),
(65, 'AYŞE CEREN ', 'FAYDACI', 'KONFEKSİYON PERSONELİ', 5224, 5988, 4902, 6271, 4697, 4807, 5957, 6860, 7356, 6628, 6944, 6944),
(66, 'AYŞIN ', 'DELİLBAŞI', 'KONFEKSİYON PERSONELİ', 5697, 4917, 5154, 4972, 5051, 5350, 5404, 7167, 6777, 6443, 6962, 5855),
(67, 'ELİFCAN ', 'ATAK', 'KONFEKSİYON PERSONELİ', 5610, 5775, 5791, 4886, 5752, 4799, 5808, 6350, 5390, 7181, 6478, 5539),
(68, 'HALİL ', 'ÖZTÜRK', 'KONFEKSİYON PERSONELİ', 4910, 5500, 4697, 3627, 6751, 6468, 5641, 6403, 6241, 6426, 6856, 7119),
(69, 'NURAN ', 'TURANOĞLU', 'KONFEKSİYON PERSONELİ', 6814, 6122, 6051, 5744, 6129, 4178, 4693, 5455, 6592, 4178, 7198, 7488),
(70, 'SİDAR ', 'ÇIRAK', 'KONFEKSİYON PERSONELİ', 5350, 5122, 5154, 4965, 4917, 5374, 6879, 6254, 5908, 4933, 7312, 5899),
(71, 'TEVFİK ÖZGÜN ', 'TOPÇAM', 'KONFEKSİYON PERSONELİ', 5618, 4406, 5854, 6051, 6114, 5335, 5571, 5279, 5881, 7067, 6189, 5793),
(72, 'MELAHAT GEDİK ', 'YILMAZ', 'KONFEKSİYON PERSONELİ', 4241, 5397, 4044, 6271, 5870, 6594, 6388, 7167, 6909, 7716, 6470, 6303),
(73, 'ŞERMİN ', 'KALYONCU', 'PLANLAMA UZMANI', 7913, 10564, 9764, 9217, 8950, 8460, 9551, 9808, 12034, 10089, 8097, 8328),
(74, 'MEHMET YILDIRIM ', 'EVİZ', 'PLANLAMA UZMANI', 9708, 6720, 8908, 9273, 7856, 8628, 8949, 9514, 10259, 7680, 10567, 10428),
(75, 'VEHBİ ', 'ZAFER', 'DİJİTAL BASKI OPERATÖRÜ', 6051, 4937, 7194, 7203, 6014, 5433, 7819, 6651, 6988, 6456, 8306, 7094),
(76, 'VELİ ÇAĞLAR ', 'ULUÖZ', 'DİJİTAL BASKI OPERATÖRÜ', 5780, 59018, 6070, 6117, 5602, 4843, 4990, 6896, 7945, 8615, 7594, 7105),
(77, 'EMRULLAH ', 'İŞLER', 'DİJİTAL BASKI OPERATÖRÜ', 5929, 6697, 6276, 7709, 5630, 6398, 5926, 7279, 8839, 8594, 8243, 8849),
(78, 'ÇETİN ', 'ARIKBOĞA', 'DİJİTAL BASKI OPERATÖRÜ', 5471, 7269, 6950, 5574, 6754, 5377, 6830, 7460, 7785, 8200, 8051, 6201),
(79, 'SUDENAZ ', 'ÇET', 'DİJİTAL BASKI OPERATÖRÜ', 6201, 5658, 6061, 6707, 7400, 6285, 6713, 6503, 6105, 7424, 7307, 7945),
(80, 'ÖMER ', 'KORHAN', 'DİJİTAL BASKI OPERATÖRÜ', 6435, 5508, 4890, 5892, 5161, 4600, 9042, 9310, 6286, 9359, 7019, 6988),
(81, 'EMİRHAN', 'KÜLEÇ', 'TASARIM UZMANI', 8179, 10444, 9222, 8561, 9667, 8510, 10529, 8771, 7085, 7484, 11892, 9729),
(82, 'ŞERMİN ', 'UÇAR', 'TASARIM UZMANI', 8421, 8688, 7722, 7454, 7607, 7607, 6479, 7504, 11787, 10115, 8724, 8462),
(83, 'YILMAZ ', 'TEHLİ', 'K.K ŞEFİ', 8900, 9655, 7747, 6645, 9873, 9527, 9991, 8645, 10102, 7546, 8571, 11073),
(84, 'İSMAİL ', 'ZUBAROĞLU', 'K.K ELEMANI', 5527, 5899, 5172, 4848, 4816, 5472, 7040, 7341, 6857, 6521, 6820, 6343),
(85, 'GÜROL ', 'KÖRHASANOĞULLARI', 'K.K ELEMANI', 4484, 5393, 5567, 4018, 6587, 6681, 6171, 7490, 7390, 6726, 6586, 7165),
(86, 'VEYSEL ', 'ÖZTAŞ', 'K.K ELEMANI', 5638, 5638, 6231, 5575, 5267, 4603, 6021, 6070, 7352, 6521, 7249, 7633),
(87, 'ALİ RIZA ', 'UTLU', 'K.K ELEMANI', 4548, 6246, 4097, 5045, 4303, 4982, 7339, 5949, 6698, 4951, 7782, 7511),
(88, 'VELİ ENES ', 'SERVET', 'SATIN ALMA MÜDÜRÜ', 7429, 7059, 8587, 8600, 7860, 7133, 9999, 8790, 7934, 8867, 8700, 10024),
(89, 'HİLMİ ', 'KANKILIÇ', 'İHRACAT MÜDÜRÜ', 6735, 7340, 8668, 7300, 7998, 8641, 11680, 10759, 12076, 10974, 10627, 11004),
(90, 'DAĞHAN ', 'BAYRAK', 'BİLGİ İŞLEM MÜDÜRÜ', 8301, 6731, 7755, 8661, 10670, 8620, 10722, 9257, 11305, 10525, 9680, 9387),
(91, 'OLGA ', 'ÖZÇAM', 'PAZARLAMA PERSONELİ', 5566, 7427, 5237, 5747, 4025, 6578, 6588, 8081, 6533, 8151, 8502, 9013),
(92, 'NECLA ', 'DİL', 'PAZARLAMA PERSONELİ', 5566, 6206, 5211, 4717, 5990, 5332, 8163, 6686, 6640, 6682, 7651, 8045),
(93, 'ÖZGÜL ', 'KARAKURT', 'İNSAN KAYNAKLARI MÜDÜRÜ', 11234, 10578, 11876, 10220, 10936, 9295, 11219, 9702, 10419, 13791, 9897, 9979),
(94, 'ZEKİ ', 'KARAMERCAN', 'GÜVENLİK GÖREVLİSİ', 4329, 6000, 4236, 5354, 5975, 5865, 6468, 7304, 5482, 7178, 7777, 6485),
(95, 'ŞEREF', 'EGEHAN', 'GÜVENLİK GÖREVLİSİ', 5437, 4362, 6092, 4757, 4261, 5563, 6179, 7284, 5564, 8263, 8439, 5968),
(96, 'CEMİLE ÇİĞDEM ', 'BAYRAMOĞLU', 'MUHASEBE UZMANI', 6486, 9901, 6826, 7022, 7310, 9273, 7292, 9810, 9805, 9993, 8344, 8639),
(97, 'KEVSER ', 'TOPAL', 'MUHASEBE UZMANI', 8344, 9404, 7860, 8881, 8305, 9012, 8954, 10480, 9712, 9993, 9939, 9189),
(98, 'VEYSİ ', 'YERLİKAYA', 'AŞÇI', 6033, 5393, 4759, 5323, 4813, 5508, 5612, 6497, 5791, 5668, 7274, 6449),
(99, 'ALP ', 'OKYAY', 'AŞÇI', 6226, 4628, 5570, 4898, 5531, 5029, 5665, 5926, 5844, 6546, 6932, 6274),
(100, 'FATIMA İLAY ', 'AK YILDIRIM', 'AŞÇI', 5477, 4945, 4744, 4003, 6481, 6419, 5288, 7769, 6555, 5124, 6151, 6835),
(101, 'NARİN ', 'ÇİPE', 'YEMEKHANE PERSONELİ', 4411, 5133, 5103, 4266, 4706, 3694, 4226, 5299, 6841, 4921, 5325, 6173),
(102, 'ORKUN ', 'ATCI', 'YEMEKHANE PERSONELİ', 4061, 4368, 3453, 3965, 4543, 4935, 5470, 5921, 6087, 5162, 4594, 5488),
(103, 'ŞULE MİNE ', 'KOPTUR', 'ÇAYCI', 3411, 4156, 3645, 4067, 5085, 4074, 5268, 5688, 6810, 6561, 7121, 6212),
(104, 'SERDAR ', 'ALMACIOĞLU', 'ÇAYCI', 4531, 4465, 4152, 3151, 3977, 5037, 6714, 5836, 5768, 5526, 6196, 5263),
(105, 'KAZIM', 'YÖRÜK', 'GENEL MÜDÜR', 12649, 7645, 10648, 12256, 9789, 8896, 10464, 14021, 14350, 14070, 11823, 13107);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personel_izin_talep`
--

CREATE TABLE `personel_izin_talep` (
  `id` int(11) NOT NULL,
  `personel_id` int(255) NOT NULL,
  `ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `soyad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `izin_türü` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `istenilen_izin_tarihi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `personel_izin_talep`
--

INSERT INTO `personel_izin_talep` (`id`, `personel_id`, `ad`, `soyad`, `izin_türü`, `istenilen_izin_tarihi`) VALUES
(23, 2, 'serenay', 'kaymaz', 'ucretli', '2022-12-21');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `yetki` int(11) NOT NULL,
  `user_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_pass` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `yetki`, `user_name`, `user_pass`) VALUES
(1, 1, 'test1', 'test1');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `departman`
--
ALTER TABLE `departman`
  ADD PRIMARY KEY (`departman_id`);

--
-- Tablo için indeksler `gorev`
--
ALTER TABLE `gorev`
  ADD KEY `calisan_id` (`calisan_id`),
  ADD KEY `departman_id` (`departman_id`);

--
-- Tablo için indeksler `izinler_2022`
--
ALTER TABLE `izinler_2022`
  ADD KEY `calisan_id` (`calisan_id`);

--
-- Tablo için indeksler `mesailer_2022`
--
ALTER TABLE `mesailer_2022`
  ADD KEY `calisan_id` (`calisan_id`);

--
-- Tablo için indeksler `personeller`
--
ALTER TABLE `personeller`
  ADD PRIMARY KEY (`personel_id`);

--
-- Tablo için indeksler `personel_izin_talep`
--
ALTER TABLE `personel_izin_talep`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `departman`
--
ALTER TABLE `departman`
  MODIFY `departman_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `personeller`
--
ALTER TABLE `personeller`
  MODIFY `personel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- Tablo için AUTO_INCREMENT değeri `personel_izin_talep`
--
ALTER TABLE `personel_izin_talep`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `gorev`
--
ALTER TABLE `gorev`
  ADD CONSTRAINT `calisan_kisiti` FOREIGN KEY (`calisan_id`) REFERENCES `personeller` (`personel_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `departman_kisiti` FOREIGN KEY (`departman_id`) REFERENCES `departman` (`departman_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `izinler_2022`
--
ALTER TABLE `izinler_2022`
  ADD CONSTRAINT `calisan_kisiti1` FOREIGN KEY (`calisan_id`) REFERENCES `personeller` (`personel_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `mesailer_2022`
--
ALTER TABLE `mesailer_2022`
  ADD CONSTRAINT `calisan_kisiti2` FOREIGN KEY (`calisan_id`) REFERENCES `personeller` (`personel_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
