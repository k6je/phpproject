-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 24 Şub 2023, 08:26:44
-- Sunucu sürümü: 10.4.27-MariaDB
-- PHP Sürümü: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `uwu`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `news`
--

INSERT INTO `news` (`id`, `date`, `content`) VALUES
(43, '18.02.23 18:53:00', 'Discord Sunucumuza Girmeyi Unutmayın. https://discord.gg/uwucheck'),
(44, '18.02.23 18:53:16', 'Ad Soyad Sorguda Sonuç Almak İçin Biraz Beklemeniz Gerekiyor !');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `token` varchar(255) NOT NULL,
  `last_ip` varchar(69) NOT NULL,
  `last_login` varchar(69) NOT NULL,
  `expire_date` varchar(69) NOT NULL,
  `access_level` int(11) NOT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `nick_color` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`uid`, `username`, `token`, `last_ip`, `last_login`, `expire_date`, `access_level`, `profile_image`, `nick_color`) VALUES
(2776, 'siker atar mapus yatar', 'uwu', '', '', '275760-09-09', 1, 'https://mutlakaoku.com/wp-content/uploads/2019/06/D9z9PUmWkAAc4q3.jpg', '#ae3232');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `whitelist`
--

CREATE TABLE `whitelist` (
  `id` int(11) NOT NULL,
  `tc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `whitelist`
--

INSERT INTO `whitelist` (`id`, `tc`) VALUES
(21, 'NTA4NjAyMDg3NDA='),
(22, 'MTA4ODM1Mjc2MDA='),
(23, 'ZTE4NzUyYjI0ZWMwNjE3NzZlYmVhMjY0ZGQ2ZWNiMTI=');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `uid` (`uid`);

--
-- Tablo için indeksler `whitelist`
--
ALTER TABLE `whitelist`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2914;

--
-- Tablo için AUTO_INCREMENT değeri `whitelist`
--
ALTER TABLE `whitelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
