-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 11 Oca 2019, 15:36:26
-- Sunucu sürümü: 10.1.36-MariaDB
-- PHP Sürümü: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `eticaret`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `adminhesap`
--

CREATE TABLE `adminhesap` (
  `id` int(11) NOT NULL,
  `email` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `parola` varchar(20) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `adminhesap`
--

INSERT INTO `adminhesap` (`id`, `email`, `parola`) VALUES
(1, 'admin', '123');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `adres`
--

CREATE TABLE `adres` (
  `adres_id` int(11) UNSIGNED NOT NULL,
  `users_id` int(11) NOT NULL,
  `adres_tipi` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `sehir` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `ilce` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `posta_kodu` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `adres_bilgi` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `ad` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `soyad` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `telefon` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `tc_kimlik` varchar(11) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `adres`
--

INSERT INTO `adres` (`adres_id`, `users_id`, `adres_tipi`, `sehir`, `ilce`, `posta_kodu`, `adres_bilgi`, `ad`, `soyad`, `telefon`, `tc_kimlik`) VALUES
(19, 67, 'Ev', 'AdÄ±yaman', 'AladaÄŸ', '38000', 'Efendibey Mahallesi / aydÄ±nlÄ±k sokak / no :120', 'Cuma', 'Soyak', '05386399039', '41050892368'),
(20, 67, 'Ev', 'AdÄ±yaman', 'AladaÄŸ', '38000', 'Efendibey Mahallesi / aydÄ±nlÄ±k sokak / no :120', 'Cuma', 'Soyak', '05386399039', '41050892368'),
(21, 67, 'Ev', 'AdÄ±yaman', 'AladaÄŸ', '38000', 'Efendibey Mahallesi / aydÄ±nlÄ±k sokak / no :120', 'Cuma', 'Soyak', '05386399039', '41050892368'),
(22, 67, 'Ev', 'AdÄ±yaman', 'AladaÄŸ', '38000', 'Efendibey Mahallesi / aydÄ±nlÄ±k sokak / no :120', 'Cuma', 'Soyak', '05386399039', '41050892368'),
(23, 67, 'Ev', 'AdÄ±yaman', 'AladaÄŸ', '38000', 'Efendibey Mahallesi / aydÄ±nlÄ±k sokak / no :120', 'Cuma', 'Soyak', '05386399039', '41050892368'),
(24, 67, 'Ev', 'AdÄ±yaman', 'AladaÄŸ', '38000', 'Efendibey Mahallesi / aydÄ±nlÄ±k sokak / no :120', 'Cuma', 'Soyak', '05386399039', '41050892368'),
(25, 67, 'Ev', 'AdÄ±yaman', 'AladaÄŸ', '38000', 'Efendibey Mahallesi / aydÄ±nlÄ±k sokak / no :120', 'Cuma', 'Soyak', '05386399039', '41050892368'),
(26, 67, 'Ev', 'AdÄ±yaman', 'AladaÄŸ', '38000', 'Efendibey Mahallesi / aydÄ±nlÄ±k sokak / no :120', 'Cuma', 'Soyak', '05386399039', '41050892368'),
(27, 67, 'Ev', 'AdÄ±yaman', 'AladaÄŸ', '38000', 'Efendibey Mahallesi / aydÄ±nlÄ±k sokak / no :120', 'Cuma', 'Soyak', '05386399039', '41050892368'),
(28, 67, 'Ev', 'AdÄ±yaman', 'AladaÄŸ', '38000', 'Efendibey Mahallesi / aydÄ±nlÄ±k sokak / no :120', 'Cuma', 'Soyak', '05386399039', '41050892368');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `alt_kategoriler`
--

CREATE TABLE `alt_kategoriler` (
  `alt_kategori_id` int(11) UNSIGNED NOT NULL,
  `parent_kategori_id` int(11) UNSIGNED NOT NULL,
  `kategori_title` varchar(20) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `alt_kategoriler`
--

INSERT INTO `alt_kategoriler` (`alt_kategori_id`, `parent_kategori_id`, `kategori_title`) VALUES
(1, 1, 'Jeans'),
(2, 1, 'Sweat'),
(3, 1, 'Hirka'),
(4, 1, 'Pantolon'),
(5, 1, 'Kazak'),
(6, 2, 'Ceket'),
(7, 2, 'Yelek'),
(8, 2, 'Gomlek'),
(9, 2, 'Pantolon'),
(10, 2, 'T-shirt'),
(11, 3, 'Mont'),
(12, 3, 'Parka'),
(13, 3, 'Tayt'),
(14, 3, 'Yelek'),
(15, 3, 'Esofman'),
(16, 4, 'Body'),
(17, 4, 'Kazak'),
(18, 4, 'Elbise'),
(19, 4, 'Pantolon'),
(20, 4, 'Hirka');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ana_kategoriler`
--

CREATE TABLE `ana_kategoriler` (
  `ana_kategori_id` int(11) UNSIGNED NOT NULL,
  `ana_kategori_title` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `ana_kategori_resim` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ana_kategoriler`
--

INSERT INTO `ana_kategoriler` (`ana_kategori_id`, `ana_kategori_title`, `ana_kategori_resim`) VALUES
(1, 'KADIN', 'kadin.jpg'),
(2, 'ERKEK', 'erkek.jpg'),
(3, 'COCUK&GENC', 'cocuk.jpg'),
(4, 'BEBEK', 'cocuk.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `beden`
--

CREATE TABLE `beden` (
  `beden_id` int(11) NOT NULL,
  `parent_urun_id` int(11) UNSIGNED NOT NULL,
  `XS` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `XSAdet` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `M` varchar(5) COLLATE utf8_turkish_ci NOT NULL,
  `MAdet` varchar(5) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategori_beden_tablosu`
--

CREATE TABLE `kategori_beden_tablosu` (
  `kat_beden_id` int(11) UNSIGNED NOT NULL,
  `parent_kategori_id` int(11) UNSIGNED NOT NULL,
  `beden_1` varchar(11) COLLATE utf8_turkish_ci NOT NULL,
  `beden_2` varchar(11) COLLATE utf8_turkish_ci NOT NULL,
  `beden_3` varchar(11) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kategori_beden_tablosu`
--

INSERT INTO `kategori_beden_tablosu` (`kat_beden_id`, `parent_kategori_id`, `beden_1`, `beden_2`, `beden_3`) VALUES
(1, 1, 'S', 'XS', 'XXS'),
(2, 2, 'S', 'L', 'XL'),
(3, 3, 'L', 'XXL', 'XL');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategori_renk_tablosu`
--

CREATE TABLE `kategori_renk_tablosu` (
  `kat_renk_id` int(11) UNSIGNED NOT NULL,
  `parent_kategori_id` int(11) UNSIGNED NOT NULL,
  `renk_1` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `renk_2` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `renk_3` varchar(20) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kategori_renk_tablosu`
--

INSERT INTO `kategori_renk_tablosu` (`kat_renk_id`, `parent_kategori_id`, `renk_1`, `renk_2`, `renk_3`) VALUES
(1, 1, 'Kirmizi', 'Siyah', 'Mavi'),
(2, 2, 'Yesil', 'Mavi', 'Pembe'),
(3, 3, 'Kırmızı', 'Yesil', 'Mor'),
(4, 4, 'Kırmızı', 'Yesil', 'Mavi'),
(5, 5, 'Yesil', 'Eflatun', 'Gri'),
(6, 6, 'Gri', 'Mavi', 'Yesil'),
(7, 7, 'Kirmizi', 'Sari', 'Yesil'),
(8, 8, 'Gri', 'Mavi', 'Yesil'),
(9, 9, 'Mavi', 'Kirmizi', 'Siyah'),
(10, 10, 'Siyah', 'Mavi', 'Yesil'),
(11, 11, 'Mavi', 'Sari', 'Mor'),
(12, 12, 'Mor', 'Gri', 'Yesil'),
(13, 13, 'Mor', 'Siyah', 'Gri'),
(14, 14, 'Mor ', 'Siyah', 'Gri'),
(15, 15, 'Mavi', 'Mor', 'Siyah'),
(16, 16, 'Siyah', 'Kirmizi', 'Gri'),
(17, 17, 'Yesil', 'Mor', 'Gri'),
(18, 18, 'Yesil', 'Mor', 'Gri'),
(19, 19, 'Yesil', 'Mor', 'Gri'),
(20, 20, 'Yesil', 'Mor', 'Gri');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sepet`
--

CREATE TABLE `sepet` (
  `sepet_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `urun_id` int(11) UNSIGNED NOT NULL,
  `urun_title` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `urun_fiyat` int(11) NOT NULL,
  `urun_resim` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `urun_beden` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `urun_adet` varchar(20) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `title_bir` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `title_iki` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `title_uc` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `title_dort` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `title_bes` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `slider_image` varchar(30) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `slider`
--

INSERT INTO `slider` (`slider_id`, `title_bir`, `title_iki`, `title_uc`, `title_dort`, `title_bes`, `slider_image`) VALUES
(1, 'heyyy', 'urun', 'bedeva', '%20', 'indirim', 'slider1.jpg'),
(2, 'Deneme', 'deneme', 'deneme', 'deneme', 'deneme', 'slider3.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunler`
--

CREATE TABLE `urunler` (
  `urunler_id` int(11) UNSIGNED NOT NULL,
  `parent_altkategori_id` int(11) UNSIGNED NOT NULL,
  `urun_kod` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `urunler_title` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urunler_desc` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urunler_fiyat` int(11) NOT NULL,
  `urunler_resim` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urunler_resim_1` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `urunler_resim_2` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `urunler_adet` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `beden` varchar(11) COLLATE utf8_turkish_ci NOT NULL,
  `urunler_oy` varchar(6) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urunler`
--

INSERT INTO `urunler` (`urunler_id`, `parent_altkategori_id`, `urun_kod`, `urunler_title`, `urunler_desc`, `urunler_fiyat`, `urunler_resim`, `urunler_resim_1`, `urunler_resim_2`, `urunler_adet`, `beden`, `urunler_oy`) VALUES
(17, 1, '598937', 'JEans', 'jeans moda bu yil', 56, '2711234752.jpg', '2109716444.jpg', '3657342017.jpg', '23', 'XS', ''),
(18, 1, '509782', 'Pantolon moda', 'modanin bu dizayni', 196, '2164935097.jpg', '2930038242.jpg', '4199617176.jpg', '56', 'XS', ''),
(19, 1, '746592', 'Jean taxa', 'taxa moda', 45, '1599437884.jpg', '4948231694.jpg', '3640138041.jpg', '40', 'XS', ''),
(20, 1, '295008', 'Jean hirka', 'hirka moda ', 45, '2737735578.jpg', '4143348587.jpg', '1340141863.jpg', '50', 'XS', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(23) COLLATE utf8_turkish_ci NOT NULL,
  `email` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `parola` varchar(20) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `parola`) VALUES
(64, 'eticaret', 'eticaret@gmail.com', '1'),
(65, 'fatih', 'fatih1@gmail.com', '1'),
(67, 'Cuma', 'cumasoyak51@gmail.co', '1'),
(68, 'Cuma Soyak', 'cumasoyak52@gmail.co', '123'),
(69, 'kerem', 'kerem@gmail.com', '1'),
(70, '454', 'fjsnjskfn@gmail.com', '1'),
(71, '1111', '11111@gmail.com', '1'),
(72, 'hhhh', 'hhhhh@gmail.com', '1'),
(73, '111', '4545@gmail.com', '65456'),
(74, 'a', 'a@gmail.com', '1');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `adminhesap`
--
ALTER TABLE `adminhesap`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `adres`
--
ALTER TABLE `adres`
  ADD PRIMARY KEY (`adres_id`),
  ADD KEY `adres_id` (`adres_id`),
  ADD KEY `users_id` (`users_id`);

--
-- Tablo için indeksler `alt_kategoriler`
--
ALTER TABLE `alt_kategoriler`
  ADD PRIMARY KEY (`alt_kategori_id`),
  ADD KEY `ana_kategori_id` (`parent_kategori_id`);

--
-- Tablo için indeksler `ana_kategoriler`
--
ALTER TABLE `ana_kategoriler`
  ADD PRIMARY KEY (`ana_kategori_id`);

--
-- Tablo için indeksler `beden`
--
ALTER TABLE `beden`
  ADD PRIMARY KEY (`beden_id`),
  ADD KEY `beden_id` (`beden_id`),
  ADD KEY `parent_urun_id` (`parent_urun_id`);

--
-- Tablo için indeksler `kategori_beden_tablosu`
--
ALTER TABLE `kategori_beden_tablosu`
  ADD PRIMARY KEY (`kat_beden_id`),
  ADD KEY `parent_kategori_id` (`parent_kategori_id`);

--
-- Tablo için indeksler `kategori_renk_tablosu`
--
ALTER TABLE `kategori_renk_tablosu`
  ADD PRIMARY KEY (`kat_renk_id`),
  ADD KEY `parent_kategori_id` (`parent_kategori_id`);

--
-- Tablo için indeksler `sepet`
--
ALTER TABLE `sepet`
  ADD PRIMARY KEY (`sepet_id`),
  ADD KEY `sepet_id` (`sepet_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `urun_id` (`urun_id`);

--
-- Tablo için indeksler `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Tablo için indeksler `urunler`
--
ALTER TABLE `urunler`
  ADD PRIMARY KEY (`urunler_id`),
  ADD KEY `beden` (`beden`),
  ADD KEY `parent_altkategori_id` (`parent_altkategori_id`),
  ADD KEY `beden_2` (`beden`),
  ADD KEY `beden_3` (`beden`),
  ADD KEY `urunler_id` (`urunler_id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `adminhesap`
--
ALTER TABLE `adminhesap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `adres`
--
ALTER TABLE `adres`
  MODIFY `adres_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Tablo için AUTO_INCREMENT değeri `alt_kategoriler`
--
ALTER TABLE `alt_kategoriler`
  MODIFY `alt_kategori_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `ana_kategoriler`
--
ALTER TABLE `ana_kategoriler`
  MODIFY `ana_kategori_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `beden`
--
ALTER TABLE `beden`
  MODIFY `beden_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `kategori_beden_tablosu`
--
ALTER TABLE `kategori_beden_tablosu`
  MODIFY `kat_beden_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `kategori_renk_tablosu`
--
ALTER TABLE `kategori_renk_tablosu`
  MODIFY `kat_renk_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `sepet`
--
ALTER TABLE `sepet`
  MODIFY `sepet_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `urunler`
--
ALTER TABLE `urunler`
  MODIFY `urunler_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `adres`
--
ALTER TABLE `adres`
  ADD CONSTRAINT `adres_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Tablo kısıtlamaları `alt_kategoriler`
--
ALTER TABLE `alt_kategoriler`
  ADD CONSTRAINT `alt_kategoriler_ibfk_1` FOREIGN KEY (`parent_kategori_id`) REFERENCES `ana_kategoriler` (`ana_kategori_id`);

--
-- Tablo kısıtlamaları `beden`
--
ALTER TABLE `beden`
  ADD CONSTRAINT `beden_ibfk_1` FOREIGN KEY (`parent_urun_id`) REFERENCES `urunler` (`urunler_id`);

--
-- Tablo kısıtlamaları `kategori_beden_tablosu`
--
ALTER TABLE `kategori_beden_tablosu`
  ADD CONSTRAINT `kategori_beden_tablosu_ibfk_1` FOREIGN KEY (`parent_kategori_id`) REFERENCES `alt_kategoriler` (`alt_kategori_id`);

--
-- Tablo kısıtlamaları `kategori_renk_tablosu`
--
ALTER TABLE `kategori_renk_tablosu`
  ADD CONSTRAINT `kategori_renk_tablosu_ibfk_1` FOREIGN KEY (`parent_kategori_id`) REFERENCES `alt_kategoriler` (`alt_kategori_id`);

--
-- Tablo kısıtlamaları `sepet`
--
ALTER TABLE `sepet`
  ADD CONSTRAINT `sepet_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `sepet_ibfk_2` FOREIGN KEY (`urun_id`) REFERENCES `urunler` (`urunler_id`);

--
-- Tablo kısıtlamaları `urunler`
--
ALTER TABLE `urunler`
  ADD CONSTRAINT `urunler_ibfk_1` FOREIGN KEY (`parent_altkategori_id`) REFERENCES `alt_kategoriler` (`alt_kategori_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
