-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th12 24, 2021 lúc 05:46 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `spotify`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_album`
--

CREATE TABLE `db_album` (
  `id_album` int(11) NOT NULL,
  `name_album` varchar(100) DEFAULT NULL,
  `id_singer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `db_album`
--

INSERT INTO `db_album` (`id_album`, `name_album`, `id_singer`) VALUES
(1, 'Sơn Tùng Tour', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_love`
--

CREATE TABLE `db_love` (
  `id_love` int(11) NOT NULL,
  `name_love` varchar(100) DEFAULT NULL,
  `id_song` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `db_love`
--

INSERT INTO `db_love` (`id_love`, `name_love`, `id_song`) VALUES
(1, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_playlist`
--

CREATE TABLE `db_playlist` (
  `id_playlist` int(11) NOT NULL,
  `name_playlist` varchar(100) DEFAULT NULL,
  `id_song` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `db_playlist`
--

INSERT INTO `db_playlist` (`id_playlist`, `name_playlist`, `id_song`) VALUES
(1, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_singer`
--

CREATE TABLE `db_singer` (
  `id_singer` int(11) NOT NULL,
  `name_singer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `db_singer`
--

INSERT INTO `db_singer` (`id_singer`, `name_singer`) VALUES
(1, 'Sơn Tùng'),
(2, 'Đức Phúc');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_song`
--

CREATE TABLE `db_song` (
  `id_song` int(11) NOT NULL,
  `name_song` varchar(100) NOT NULL,
  `lyrics_song` varchar(10000) NOT NULL,
  `time_song` time NOT NULL,
  `images_song` varchar(100) DEFAULT NULL,
  `music_song` varchar(100) DEFAULT NULL,
  `name_album` varchar(100) DEFAULT NULL,
  `id_singer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `db_song`
--

INSERT INTO `db_song` (`id_song`, `name_song`, `lyrics_song`, `time_song`, `images_song`, `music_song`, `name_album`, `id_singer`) VALUES
(1, 'Chúng ta của hiện tại', 'Mùa thu mang giấc mơ quay về\r\nVẫn nguyên vẹn như hôm nào\r\nLá bay theo gió xôn xao\r\nChốn xưa em chờ\r\nĐoạn đường ngày nào hôm nay ta từng đón đưa\r\nCòn vẫn vương không phai mờ\r\nDấu yêu thương trong vần thơ\r\n\r\nChúng ta là áng mây bên trời vội vàng ngang qua\r\nChúng ta chẳng thể nâng niu những câu thề\r\nCứ như vậy thôi, không một lời, lặng lẽ thế chia xa\r\nChiều mưa bên hiên vắng buồn, còn ai thương ai, mong ai?\r\n\r\nĐiều anh luôn giữ kín trong tim\r\nThương em đôi mắt ướt nhòa\r\nĐiều anh luôn giữ kín trong tim này\r\nThương em đâu đó khóc òa\r\nĐiều anh luôn giữ kín trong tim này\r\nNgày mai, nắng gió, sương hao gầy\r\nCó ai thương lắng lo cho em?\r\n(Whoo-whoo-whoo)\r\n\r\nĐiều anh luôn giữ kín trong tim\r\nThương em, anh mãi xin là\r\nĐiều anh luôn giữ kín trong tim này\r\nThương em vì thương thôi mà\r\nĐiều anh luôn giữ kín trong tim này\r\nDù cho nắng tắt, xuân thay màu\r\nHéo khô đi tháng năm xưa kia\r\n(Anh nguyện ghi mãi trong tim)\r\n\r\n(Nắng vương trên cành héo khô những kỉ niệm xưa kia\r\nNgày mai, người luyến lưu về giấc mơ từng có\r\nLiệu có ta?)\r\n\r\nCó anh nơi đó không?\r\nCó anh nơi đó không?\r\n\r\nĐiều anh luôn giữ kín trong tim\r\nĐiều anh luôn giữ kín trong tim\r\n(Có anh nơi đó không?)\r\n(Anh nguyện ghi mãi trong tim)\r\n\r\n(Nắng vương trên cành héo khô những kỉ niệm xưa kia\r\nNgày mai, người luyến lưu về giấc mơ từng có\r\nLiệu có ta?)\r\n\r\nCó anh nơi đó không?\r\nCó anh nơi đó không? (Liệu có ta?)\r\n\r\nChúng ta là áng mây bên trời vội vàng ngang qua\r\nChúng ta chẳng thể nâng niu những câu thề\r\nCứ như vậy thôi, không một lời, lặng lẽ thế chia xa\r\nChiều mưa bên hiên vắng buồn, còn ai thương ai, mong ai?\r\n\r\nĐiều anh luôn giữ kín trong tim\r\nThương em, đôi mắt ướt nhòa\r\nĐiều anh luôn giữ kín trong tim này\r\nThương em đâu đó khóc òa\r\nĐiều anh luôn giữ kín trong tim này\r\nNgày mai, nắng gió, sương hao gầy\r\nCó ai thương lắng lo cho em?\r\n\r\nĐiều anh luôn giữ kín trong tim\r\nThương em, anh mãi xin là\r\nĐiều anh luôn giữ kín trong tim này\r\nThương em vì thương thôi mà\r\nĐiều anh luôn giữ kín trong tim này\r\nDù cho nắng tắt, xuân thay màu\r\nHéo khô đi tháng năm xưa kia\r\n(Anh nguyện ghi mãi trong tim)\r\n\r\nNo, no, no\r\nNo, no, no\r\n\r\nĐiều anh luôn giữ kín trong tim (Giữ kín trong tim này)\r\nGiữ mãi trong tim này (Giữ mãi trong tim này)\r\nGiữ mãi trong tim mình\r\nGiữ...\r\n\r\nCó anh nơi đó không?\r\nCó anh nơi đó không?\r\n(Whoo-whoo-whoo-whoo)\r\n\r\nĐiều anh luôn giữ kín trong tim (No, no, no)\r\nĐiều anh luôn giữ kín trong tim này (No, no, no)\r\nĐiều anh luôn giữ kín trong tim này\r\n(Ngày mai, nắng gió, sương hao gầy)\r\n(Có ai luôn lắng lo cho em?)\r\n\r\nĐiều anh luôn giữ kín trong tim (No, no, no)\r\nĐiều anh luôn giữ kín trong tim này (No, no, no)\r\nĐiều anh luôn giữ kín trong tim này\r\n(Dù cho nắng tắt, xuân thay màu)\r\n(Héo khô đi tháng năm xưa kia)\r\n(Anh nguyện ghi mãi trong tim)\r\n\r\nĐiều anh luôn giữ kín trong tim\r\nThương em đôi mắt ướt nhòa\r\nĐiều anh luôn giữ kín trong tim này\r\nThương em đâu đó khóc òa\r\nĐiều anh luôn giữ kín trong tim này\r\nNgày mai, nắng gió, sương ngâm\r\nCó ai thương lắng lo cho em?\r\n\r\nĐiều anh luôn giữ kín trong tim\r\nThương em, anh mãi xin là\r\nĐiều anh luôn giữ kín trong tim này\r\nThương em vì thương thôi mà\r\nĐiều anh luôn giữ kín trong tim này\r\nDù cho nắng tắt, xuân thay màu\r\nHéo khô đi tháng năm xưa kia\r\n(Anh nguyện ghi mãi trong tim)\r\n\r\nĐiều anh luôn giữ kín trong tim (Giữ kín trong tim này)\r\nGiữ mãi trong tim này (Giữ mãi trong tim này)\r\nGiữ mãi trong tim mình\r\nGiữ...\r\n\r\nCó anh nơi đó không?\r\nCó anh nơi đó không?\r\n(Whoo-whoo-whoo-whoo)\r\n\r\nĐiều anh luôn giữ kín trong tim (No, no, no)\r\nĐiều anh luôn giữ kín trong tim này (No, no, no)\r\nĐiều anh luôn giữ kín trong tim này\r\n(Ngày mai, nắng gió, sương hao gầy)\r\n(Có ai thương lắng lo cho em?)\r\n\r\nĐiều anh luôn giữ kín trong tim (No, no, no)\r\nĐiều anh luôn giữ kín trong tim này (No, no, no)\r\nĐiều anh luôn giữ kín trong tim này\r\n(Dù cho nắng tắt, xuân thay màu)\r\n(Héo khô đi tháng năm xưa kia)\r\n(Anh nguyện ghi mãi trong tim)\r\n\r\nĐiều anh luôn giữ kín trong tim\r\nThương em đôi mắt ướt nhòa\r\nĐiều anh luôn giữ kín trong tim này\r\nThương em ngồi đó khóc òa\r\nĐiều anh luôn giữ kín trong tim này\r\nNgày mai, nắng gió, sương hao gầy\r\nCó ai thương lắng lo cho em?\r\n\r\nĐiều anh luôn giữ kín trong tim\r\nThương em, anh mãi xin là\r\nĐiều anh luôn giữ kín trong tim này\r\nThương em thì thương thôi mà\r\nĐiều anh luôn giữ kín trong tim này\r\nDù cho nắng tắt, xuân thay màu\r\nLau khô đi tháng năm xưa kia\r\n\r\n(Anh nguyện ghi mãi trong tim)\r\n(Anh nguyện ghi mãi trong tim)\r\n(Anh nguyện ghi mãi trong tim)\r\n\r\n(Anh nguyện ghi mãi trong tim)\r\n(Anh nguyện ghi mãi trong tim)\r\n(Anh nguyện ghi mãi trong tim)\r\n\r\nĐiều anh luôn giữ kín trong tim\r\nĐiều anh luôn giữ kín trong tim mình\r\nĐiều anh luôn giữ kín trong tim mình\r\nCó ai thương lắng lo cho em?\r\n\r\nĐiều anh luôn giữ kín trong tim\r\n(Thương em, anh mới xin là)\r\nĐiều anh luôn giữ kín trong tim mình\r\n(Thương em vì thương thôi mà)\r\nĐiều anh luôn giữ kín trong tim mình\r\nCó ai thương lắng lo cho em? Cho em', '00:05:00', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_user`
--

CREATE TABLE `db_user` (
  `id_user` int(11) NOT NULL,
  `name_user` varchar(100) NOT NULL,
  `birthday_user` date DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `phonenumber_user` varchar(13) DEFAULT NULL,
  `gender_user` varchar(10) DEFAULT NULL,
  `nation_user` varchar(50) DEFAULT NULL,
  `password_user` varchar(50) NOT NULL,
  `followers_singer` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `db_user`
--

INSERT INTO `db_user` (`id_user`, `name_user`, `birthday_user`, `email_user`, `phonenumber_user`, `gender_user`, `nation_user`, `password_user`, `followers_singer`) VALUES
(1, 'Nguyễn Đức Anh', '2021-12-15', 'anhngduc.2001@gmail.com', NULL, NULL, NULL, '123456', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `db_album`
--
ALTER TABLE `db_album`
  ADD PRIMARY KEY (`id_album`),
  ADD KEY `id_singer` (`id_singer`);

--
-- Chỉ mục cho bảng `db_love`
--
ALTER TABLE `db_love`
  ADD PRIMARY KEY (`id_love`),
  ADD KEY `id_song` (`id_song`);

--
-- Chỉ mục cho bảng `db_playlist`
--
ALTER TABLE `db_playlist`
  ADD PRIMARY KEY (`id_playlist`),
  ADD KEY `id_song` (`id_song`);

--
-- Chỉ mục cho bảng `db_singer`
--
ALTER TABLE `db_singer`
  ADD PRIMARY KEY (`id_singer`);

--
-- Chỉ mục cho bảng `db_song`
--
ALTER TABLE `db_song`
  ADD PRIMARY KEY (`id_song`),
  ADD KEY `id_singer` (`id_singer`);

--
-- Chỉ mục cho bảng `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `followers_singer` (`followers_singer`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `db_album`
--
ALTER TABLE `db_album`
  ADD CONSTRAINT `db_album_ibfk_1` FOREIGN KEY (`id_singer`) REFERENCES `db_singer` (`id_singer`);

--
-- Các ràng buộc cho bảng `db_love`
--
ALTER TABLE `db_love`
  ADD CONSTRAINT `db_love_ibfk_1` FOREIGN KEY (`id_song`) REFERENCES `db_song` (`id_song`);

--
-- Các ràng buộc cho bảng `db_playlist`
--
ALTER TABLE `db_playlist`
  ADD CONSTRAINT `db_playlist_ibfk_1` FOREIGN KEY (`id_song`) REFERENCES `db_song` (`id_song`);

--
-- Các ràng buộc cho bảng `db_song`
--
ALTER TABLE `db_song`
  ADD CONSTRAINT `db_song_ibfk_1` FOREIGN KEY (`id_singer`) REFERENCES `db_singer` (`id_singer`);

--
-- Các ràng buộc cho bảng `db_user`
--
ALTER TABLE `db_user`
  ADD CONSTRAINT `db_user_ibfk_1` FOREIGN KEY (`followers_singer`) REFERENCES `db_singer` (`id_singer`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
