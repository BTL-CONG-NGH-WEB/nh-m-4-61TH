-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th1 11, 2022 lúc 10:31 PM
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
  `id_album` int(10) NOT NULL,
  `name_album` varchar(100) DEFAULT NULL,
  `id_singer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `db_album`
--

INSERT INTO `db_album` (`id_album`, `name_album`, `id_singer`) VALUES
(1, 'Đâu phải ai cũng hạnh phúc', 1),
(4, 'Mùa đông năm ấy', 3),
(8, 'Tình đầu của tôi', 3),
(9, 'Kỷ niệm của chúng ta', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_love`
--

CREATE TABLE `db_love` (
  `id_love` int(10) NOT NULL,
  `name_love` varchar(100) DEFAULT NULL,
  `id_song` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_playlist`
--

CREATE TABLE `db_playlist` (
  `id_playlist` int(10) NOT NULL,
  `name_playlist` varchar(100) DEFAULT NULL,
  `id_song` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_singer`
--

CREATE TABLE `db_singer` (
  `id_singer` int(10) NOT NULL,
  `name_singer` varchar(100) NOT NULL,
  `birthday_singer` date DEFAULT '2000-01-01',
  `birthplace_singer` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `db_singer`
--

INSERT INTO `db_singer` (`id_singer`, `name_singer`, `birthday_singer`, `birthplace_singer`) VALUES
(1, 'Sơn Tùng', '2000-01-01', 'Thái Bình'),
(2, 'Trịnh Đình Quang', '1999-10-25', 'Hà Nội'),
(3, 'Trịnh Thăng Binh', '1996-01-05', 'Hồ Chí Minh'),
(5, 'Jayki', '2000-01-01', 'Hải Phòng'),
(6, 'Mr.Siro', '2000-01-01', 'Hà Nội'),
(7, 'Đen', '2001-10-25', 'Hồ Chí Minh'),
(8, 'Dũng Phạm Hoàng', '1995-11-22', 'Hải Dương'),
(9, 'Hà Anh Tuấn', '1994-04-22', 'Nha Trang'),
(10, 'Châu Khải Phong', '1988-04-05', 'Vũng Tàu'),
(11, 'Đinh Tùng Huy', '1993-10-25', 'Hưng Yên'),
(12, 'Hoàng Thùy Linh', '1993-11-05', 'Quảng Bình'),
(13, 'Hồ Quang Hiếu', '1995-02-24', 'Đà Nẵng'),
(14, 'Thương Võ', '1999-10-25', 'Hà Nội'),
(15, 'Phạm Anh Duy', '1988-04-05', 'Quảng Trị'),
(16, 'Wowy', '2001-11-25', 'Quảng Ninh'),
(17, 'Phạm Nguyên Ngọc', '1993-10-25', 'Hồ Chí Minh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_song`
--

CREATE TABLE `db_song` (
  `id_song` int(10) NOT NULL,
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
(1, 'Chúng ta của hiện tại', 'Mùa thu mang giấc mơ quay về\r\nVẫn nguyên vẹn như hôm nào\r\nLá bay theo gió xôn xao\r\nChốn xưa em chờ\r\nĐoạn đường ngày nào hôm nay ta từng đón đưa\r\nCòn vẫn vương không phai mờ\r\nDấu yêu thương trong vần thơ\r\n\r\nChúng ta là áng mây bên trời vội vàng ngang qua\r\nChúng ta chẳng thể nâng niu những câu thề\r\nCứ như vậy thôi, không một lời, lặng lẽ thế chia xa\r\nChiều mưa bên hiên vắng buồn, còn ai thương ai, mong ai?\r\n\r\nĐiều anh luôn giữ kín trong tim\r\nThương em đôi mắt ướt nhòa\r\nĐiều anh luôn giữ kín trong tim này\r\nThương em đâu đó khóc òa\r\nĐiều anh luôn giữ kín trong tim này\r\nNgày mai, nắng gió, sương hao gầy\r\nCó ai thương lắng lo cho em?\r\n(Whoo-whoo-whoo)\r\n\r\nĐiều anh luôn giữ kín trong tim\r\nThương em, anh mãi xin là\r\nĐiều anh luôn giữ kín trong tim này\r\nThương em vì thương thôi mà\r\nĐiều anh luôn giữ kín trong tim này\r\nDù cho nắng tắt, xuân thay màu\r\nHéo khô đi tháng năm xưa kia\r\n(Anh nguyện ghi mãi trong tim)\r\n\r\n(Nắng vương trên cành héo khô những kỉ niệm xưa kia\r\nNgày mai, người luyến lưu về giấc mơ từng có\r\nLiệu có ta?)\r\n\r\nCó anh nơi đó không?\r\nCó anh nơi đó không?\r\n\r\nĐiều anh luôn giữ kín trong tim\r\nĐiều anh luôn giữ kín trong tim\r\n(Có anh nơi đó không?)\r\n(Anh nguyện ghi mãi trong tim)\r\n\r\n(Nắng vương trên cành héo khô những kỉ niệm xưa kia\r\nNgày mai, người luyến lưu về giấc mơ từng có\r\nLiệu có ta?)\r\n\r\nCó anh nơi đó không?\r\nCó anh nơi đó không? (Liệu có ta?)\r\n\r\nChúng ta là áng mây bên trời vội vàng ngang qua\r\nChúng ta chẳng thể nâng niu những câu thề\r\nCứ như vậy thôi, không một lời, lặng lẽ thế chia xa\r\nChiều mưa bên hiên vắng buồn, còn ai thương ai, mong ai?\r\n\r\nĐiều anh luôn giữ kín trong tim\r\nThương em, đôi mắt ướt nhòa\r\nĐiều anh luôn giữ kín trong tim này\r\nThương em đâu đó khóc òa\r\nĐiều anh luôn giữ kín trong tim này\r\nNgày mai, nắng gió, sương hao gầy\r\nCó ai thương lắng lo cho em?\r\n\r\nĐiều anh luôn giữ kín trong tim\r\nThương em, anh mãi xin là\r\nĐiều anh luôn giữ kín trong tim này\r\nThương em vì thương thôi mà\r\nĐiều anh luôn giữ kín trong tim này\r\nDù cho nắng tắt, xuân thay màu\r\nHéo khô đi tháng năm xưa kia\r\n(Anh nguyện ghi mãi trong tim)\r\n\r\nNo, no, no\r\nNo, no, no\r\n\r\nĐiều anh luôn giữ kín trong tim (Giữ kín trong tim này)\r\nGiữ mãi trong tim này (Giữ mãi trong tim này)\r\nGiữ mãi trong tim mình\r\nGiữ...\r\n\r\nCó anh nơi đó không?\r\nCó anh nơi đó không?\r\n(Whoo-whoo-whoo-whoo)\r\n\r\nĐiều anh luôn giữ kín trong tim (No, no, no)\r\nĐiều anh luôn giữ kín trong tim này (No, no, no)\r\nĐiều anh luôn giữ kín trong tim này\r\n(Ngày mai, nắng gió, sương hao gầy)\r\n(Có ai luôn lắng lo cho em?)\r\n\r\nĐiều anh luôn giữ kín trong tim (No, no, no)\r\nĐiều anh luôn giữ kín trong tim này (No, no, no)\r\nĐiều anh luôn giữ kín trong tim này\r\n(Dù cho nắng tắt, xuân thay màu)\r\n(Héo khô đi tháng năm xưa kia)\r\n(Anh nguyện ghi mãi trong tim)\r\n\r\nĐiều anh luôn giữ kín trong tim\r\nThương em đôi mắt ướt nhòa\r\nĐiều anh luôn giữ kín trong tim này\r\nThương em đâu đó khóc òa\r\nĐiều anh luôn giữ kín trong tim này\r\nNgày mai, nắng gió, sương ngâm\r\nCó ai thương lắng lo cho em?\r\n\r\nĐiều anh luôn giữ kín trong tim\r\nThương em, anh mãi xin là\r\nĐiều anh luôn giữ kín trong tim này\r\nThương em vì thương thôi mà\r\nĐiều anh luôn giữ kín trong tim này\r\nDù cho nắng tắt, xuân thay màu\r\nHéo khô đi tháng năm xưa kia\r\n(Anh nguyện ghi mãi trong tim)\r\n\r\nĐiều anh luôn giữ kín trong tim (Giữ kín trong tim này)\r\nGiữ mãi trong tim này (Giữ mãi trong tim này)\r\nGiữ mãi trong tim mình\r\nGiữ...\r\n\r\nCó anh nơi đó không?\r\nCó anh nơi đó không?\r\n(Whoo-whoo-whoo-whoo)\r\n\r\nĐiều anh luôn giữ kín trong tim (No, no, no)\r\nĐiều anh luôn giữ kín trong tim này (No, no, no)\r\nĐiều anh luôn giữ kín trong tim này\r\n(Ngày mai, nắng gió, sương hao gầy)\r\n(Có ai thương lắng lo cho em?)\r\n\r\nĐiều anh luôn giữ kín trong tim (No, no, no)\r\nĐiều anh luôn giữ kín trong tim này (No, no, no)\r\nĐiều anh luôn giữ kín trong tim này\r\n(Dù cho nắng tắt, xuân thay màu)\r\n(Héo khô đi tháng năm xưa kia)\r\n(Anh nguyện ghi mãi trong tim)\r\n\r\nĐiều anh luôn giữ kín trong tim\r\nThương em đôi mắt ướt nhòa\r\nĐiều anh luôn giữ kín trong tim này\r\nThương em ngồi đó khóc òa\r\nĐiều anh luôn giữ kín trong tim này\r\nNgày mai, nắng gió, sương hao gầy\r\nCó ai thương lắng lo cho em?\r\n\r\nĐiều anh luôn giữ kín trong tim\r\nThương em, anh mãi xin là\r\nĐiều anh luôn giữ kín trong tim này\r\nThương em thì thương thôi mà\r\nĐiều anh luôn giữ kín trong tim này\r\nDù cho nắng tắt, xuân thay màu\r\nLau khô đi tháng năm xưa kia\r\n\r\n(Anh nguyện ghi mãi trong tim)\r\n(Anh nguyện ghi mãi trong tim)\r\n(Anh nguyện ghi mãi trong tim)\r\n\r\n(Anh nguyện ghi mãi trong tim)\r\n(Anh nguyện ghi mãi trong tim)\r\n(Anh nguyện ghi mãi trong tim)\r\n\r\nĐiều anh luôn giữ kín trong tim\r\nĐiều anh luôn giữ kín trong tim mình\r\nĐiều anh luôn giữ kín trong tim mình\r\nCó ai thương lắng lo cho em?\r\n\r\nĐiều anh luôn giữ kín trong tim\r\n(Thương em, anh mới xin là)\r\nĐiều anh luôn giữ kín trong tim mình\r\n(Thương em vì thương thôi mà)\r\nĐiều anh luôn giữ kín trong tim mình\r\nCó ai thương lắng lo cho em? Cho em', '00:06:42', 'images/muộn rồi mà sao còn.jfif', 'Musics/ChungTaCuaHienTai.mp3', NULL, 1),
(2, 'Dành tặng em', 'Lần đầu gặp em\r\nÁnh mắt dịu dàng\r\nNụ cười trên môi nhẹ nhàng.\r\n\r\nTự hỏi con tim\r\nVì sao bối rối\r\nPhải chăng yêu em mất rồi!\r\n\r\nNồng nàn yêu thương\r\nNhư rất lâu rồi\r\nNơi anh vẫn luôn kiếm tìm\r\n\r\nTựa làn môi em\r\nBình minh sẽ đến\r\nẤm áp cho ngày mới lên\r\n\r\nAnh viết bài ca này dành tặng riêng cho em nếu mai này, phải cách xa a à à a\r\nVì anh vẫn luôn mong từng phút giây, cho đến mãi sau này người ơi!!!\r\n\r\nDành tặng người yêu nơi xa vời\r\nMuôn ngàn vì sao trên trời\r\nCho đôi mắt lung linh rạng ngời\r\nVì anh yêu em người con gái đẹp nhất trên đời\r\nMong sớm một ngày ta chung đôi\r\n\r\nDành tặng cho em câu ca này\r\nTrao ngàn tình yêu con tim này\r\nDẫu cho muôn trùng mây hay vượt qua biển lớn\r\nAnh vẫn yêu em vẫn sẽ mãi yêu em\r\nNơi ấy hạnh phúc luôn trào dâng\r\nNhư ngày gặp nhau!!!', '00:04:22', 'images/suýt nữa thì.jfif', 'Musics/Suyt Nua Thi - Andiez.mp3', NULL, 2),
(3, 'Yêu để trở thành người xấu', 'Mộng mơ, vỡ tan rồi\r\nTình ta nên dừng lại thôi\r\nNếu biết từ ngày hôm ấy\r\nCó những hành động đổi thay\r\n\r\nThì ngày hôm nay sẽ không như vậy\r\nThẫn thờ bước trong đêm buồn\r\nNgẩn ngơ đôi dòng lệ tuôn\r\nCó lẽ mình đang là người thứ ba, nhưng mà\r\n\r\nQuên bao lâu nay chưa kịp nhận ra\r\nCó sai không khi ta đuổi theo tiếng yêu bao lâu\r\nCó sai không khi chợt nhận ra mình đã quá cứng đầu\r\nThế giới vốn đã muôn màu\r\n\r\nCó chắc là sẽ không đau\r\nYêu chi rồi để cho ta trở thành kẻ xấu\r\nĐúng ra ta phải nên khóa chặt trái tim kia đi\r\nĐúng ra ta không nên yêu đương bỏ mặc lý trí\r\n\r\nKhi làm người mình yêu phải tổn thương và\r\nSẽ như thế nào giữa chúng ta?\r\nThẫn thờ bước trong đêm buồn\r\nNgẩn ngơ đôi dòng lệ tuôn\r\n\r\nCó lẽ mình đang là người thứ ba, nhưng mà\r\nQuên bao lâu nay chưa kịp nhận ra\r\nCó sai không khi ta đuổi theo tiếng yêu bao lâu\r\nCó sai không khi chợt nhận ra mình đã quá cứng đầu\r\n\r\nThế giới vốn đã muôn màu\r\nCó chắc là sẽ không đau\r\nYêu chi rồi để cho ta trở thành kẻ xấu\r\nĐúng ra ta phải nên khóa chặt trái tim kia đi\r\n\r\nĐúng ra ta không nên yêu đương bỏ mặc lý trí\r\nKhi làm người mình yêu phải tổn thương và\r\nSẽ như thế nào giữa chúng ta?', '00:04:33', 'images/yêu một người có lẽ.jfif', 'Musics/Yeu Mot Nguoi Co Le - Lou Hoang_ Miu Le.mp3', NULL, 3),
(4, 'Cơn mưa ngang qua', 'Ladykillah… Can you feel me? Youngpilots… (Ok) (Eh, eh, eh) Cơn mưa ngang qua Cơn mưa đi ngang qua Đừng làm rơi thêm, thêm, thêm, nhiều giọt lệ  Còn đâu đây bao câu ca anh tặng em Tình yêu em mang cuốn lấp đi bao nhiêu câu ca Và còn lại đây, đôi môi đau thương trong màn đêm Phải lẻ loi, gồng mình bước qua niềm đau khi em rời xa  (Cơn mưa rồi lại thêm, lại thêm, lại thêm) Xé đi không gian ngập tràn nụ cười Nhìn lại nơi đây, bao kỉ niệm giờ chìm xuống dưới hố sâu vì em Chính em đã đổi thay Và đôi bàn tay ấm êm, ngày nào còn lại giữ Vì em, vì em…  Vì em đã xa rồi, tình anh chìm trong màn đêm Là vì em đã quên rồi, tình anh chỉ như giấc mơ Em bước đi rồi (Ôi bao cơn mưa) Em bước đi rồi (Xin hãy xua tan đi em) Bóng dáng hình em Em đã mãi rời xa  (My girl) Em quên đi bao nhiêu (My girl) Em quên đi bao lâu (My girl) Em quên đi cuộc tình mà anh trao em Thôi thôi em đi đi đã hết rồi (My girl) Em quên đi bao nhiêu (My girl) Em quên đi bao lâu (My girl) Em quên đi cuộc tình Em quên  (2011!)  Cơn mưa ngang qua mang em đi xa Cơn mưa ngang qua khiến em nhạt nhòa Chẳng một lời chào người vội rời bỏ Đi không chia li cho con tim anh thêm bao yếu mềm  Cơn mưa ngang qua cuốn đi bao yêu thương Cơn mưa ngang qua khiến con tim mất phương hướng Cơn mưa Kia nặng hạt, ôi mưa thêm nặng hạt Em đã rời xa đôi bàn tay trong con tim của anh  Buông lơi bàn tay em đi, em đi rời xa bên tôi người ơi Và buông lơi giấc mơ em cho, em cho con tim tôi đau biết mấy Thôi cũng đã đến hồi kết (thật rồi mà người) Thôi cũng đá đến hồi kết (Đừng nhìn làm gì) Anh sẽ quên đi một ai, ai, ai, và rồi làm ngơ, ngơ, ngơ  Vì em đã xa rồi, tình anh chìm trong màn đêm Là vì em đã quên rồi, tình anh chỉ như giấc mơ (Em bước đi rồi) Ôi bao cơn mưa (Em bước đi rồi) Xin hãy xua tan đi em Bóng dáng hình em Em đã mãi rời xa  (My girl) Em quên đi bao nhiêu (My girl) Em quên đi bao lâu (My girl) Em quên đi cuộc tình mà anh trao em Thôi thôi em đi đi đã hết rồi (My girl) Em quên đi bao nhiêu (My girl) Em quên đi bao lâu (My girl) Em quên đi cuộc tình Em quên  Và rồi em đi qua bước qua Ở lại chốn đây với bao u buồn Để rồi tháng trôi qua, rồi năm trôi qua, thoáng qua  Nụ cười em đang ở đâu, người ơi (Ở đâu?) Và bờ môi em đang ở đâu, anh tìm Lục tìm ma không thấy (Nụ cười em) Người hãy nói (trả lời đi) Vì sao em đi đi quên đi bao nhiêu giấc mơ Bên anh xưa kia?  Cơn mưa cẫn rơi Cơn cơn mưa vẫn rơi Cơn cơn mưa vẫn rơi Cơn cơn mưa vẫn rơi  Cơn mưa cẫn rơi Cơn cơn mưa vẫn rơi Cơn cơn mưa vẫn rơi Cơn cơn mưa vẫn rơi  (My girl) Em quên đi bao nhiêu (My girl) Em quên đi bao lâu (My girl) Em quên đi cuộc tình mà anh trao em Thôi thôi em đi đi đã hết rồi (My girl) Em quên đi bao nhiêu (My girl) Em quên đi bao lâu (My girl) Em quên đi cuộc tình Em quên… Em quên mất rồi!', '00:05:02', 'images/ngủ thôi tắt nắng rồi.jfif', 'Musics/Ngu Thoi_ Nang Tat Roi - Pham Nguyen Ngo.mp3', NULL, 1),
(8, 'Chiều hôm ấy', 'Chiều hôm ấy em nói với anh.\r\nRằng mình không nên gặp nhau nữa người ơi!\r\nEm đâu biết anh đau thế nào?\r\nKhoảng lặng phủ kín căn phòng ấy, tim anh như thắt lại.\r\nVà mong đó chỉ là mơ, vì anh còn yêu em rất nhiều.\r\n\r\nGiọt buồn làm nhòe đi dòng kẻ mắt.\r\nHòa cùng cơn mưa là những nỗi buồn kia.\r\nAnh khóc cho cuộc tình chúng mình.\r\nCớ sao còn yêu nhau mà mình, không thể đến được với nhau.\r\nVì anh đã sai hay bởi vì bên em có ai kia.\r\n\r\nChẳng ai có thể hiểu nổi được trái tim khi đã lỡ yêu rồi.\r\nChỉ biết trách bản thân đã mù quáng, trót yêu một người vô tâm.\r\nTừng lời hứa như vết dao lạnh lùng.\r\nCắm thật sâu trái tim này.\r\nVì muốn thấy em hạnh phúc nên anh sẽ lùi về sau.\r\n\r\nThời gian qua chúng ta liệu sống tốt hơn.\r\nHay cứ mãi dối lừa.\r\nNhìn người mình thương ướt nhòe mi cay.\r\nKhiến tim này càng thêm đau.\r\nNgười từng khiến anh thay đổi là em, đã mãi xa rồi.\r\nThôi giấc mơ khép lại.\r\nKí ức kia gửi theo, gió bay\"', '00:03:42', 'images/chiều hôm ấy.jfif', 'Musics/Chieu Hom Ay - Jaykii.mp3', NULL, 5),
(9, 'Gương mặt lạ lẫm', 'Chiều hôm ấy em nói với anh.\r\nRằng mình không nên gặp nhau nữa người ơi!\r\nEm đâu biết anh đau thế nào?\r\nKhoảng lặng phủ kín căn phòng ấy, tim anh như thắt lại.\r\nVà mong đó chỉ là mơ, vì anh còn yêu em rất nhiều.\r\n\r\nGiọt buồn làm nhòe đi dòng kẻ mắt.\r\nHòa cùng cơn mưa là những nỗi buồn kia.\r\nAnh khóc cho cuộc tình chúng mình.\r\nCớ sao còn yêu nhau mà mình, không thể đến được với nhau.\r\nVì anh đã sai hay bởi vì bên em có ai kia.\r\n\r\nChẳng ai có thể hiểu nổi được trái tim khi đã lỡ yêu rồi.\r\nChỉ biết trách bản thân đã mù quáng, trót yêu một người vô tâm.\r\nTừng lời hứa như vết dao lạnh lùng.\r\nCắm thật sâu trái tim này.\r\nVì muốn thấy em hạnh phúc nên anh sẽ lùi về sau.\r\n\r\nThời gian qua chúng ta liệu sống tốt hơn.\r\nHay cứ mãi dối lừa.\r\nNhìn người mình thương ướt nhòe mi cay.\r\nKhiến tim này càng thêm đau.\r\nNgười từng khiến anh thay đổi là em, đã mãi xa rồi.\r\nThôi giấc mơ khép lại.\r\nKí ức kia gửi theo, gió bay\"', '00:04:22', 'images/gương mặt lạ lẫm.jfif', 'Musics/Guong Mat La Lam - Mr Siro.mp3', NULL, 6),
(10, 'Mang tiền về cho mẹ', 'Chiều hôm ấy em nói với anh.\r\nRằng mình không nên gặp nhau nữa người ơi!\r\nEm đâu biết anh đau thế nào?\r\nKhoảng lặng phủ kín căn phòng ấy, tim anh như thắt lại.\r\nVà mong đó chỉ là mơ, vì anh còn yêu em rất nhiều.\r\n\r\nGiọt buồn làm nhòe đi dòng kẻ mắt.\r\nHòa cùng cơn mưa là những nỗi buồn kia.\r\nAnh khóc cho cuộc tình chúng mình.\r\nCớ sao còn yêu nhau mà mình, không thể đến được với nhau.\r\nVì anh đã sai hay bởi vì bên em có ai kia.\r\n\r\nChẳng ai có thể hiểu nổi được trái tim khi đã lỡ yêu rồi.\r\nChỉ biết trách bản thân đã mù quáng, trót yêu một người vô tâm.\r\nTừng lời hứa như vết dao lạnh lùng.\r\nCắm thật sâu trái tim này.\r\nVì muốn thấy em hạnh phúc nên anh sẽ lùi về sau.\r\n\r\nThời gian qua chúng ta liệu sống tốt hơn.\r\nHay cứ mãi dối lừa.\r\nNhìn người mình thương ướt nhòe mi cay.\r\nKhiến tim này càng thêm đau.\r\nNgười từng khiến anh thay đổi là em, đã mãi xa rồi.\r\nThôi giấc mơ khép lại.\r\nKí ức kia gửi theo, gió bay\"', '00:03:42', 'images/mang tiền về cho mẹ.jfif', 'Musics/Mang Tien Ve Cho Me - Den_ Nguyen Thao.mp3', NULL, 7),
(11, 'Đế vương(Lofi)', 'Chiều hôm ấy em nói với anh.\r\nRằng mình không nên gặp nhau nữa người ơi!\r\nEm đâu biết anh đau thế nào?\r\nKhoảng lặng phủ kín căn phòng ấy, tim anh như thắt lại.\r\nVà mong đó chỉ là mơ, vì anh còn yêu em rất nhiều.\r\n\r\nGiọt buồn làm nhòe đi dòng kẻ mắt.\r\nHòa cùng cơn mưa là những nỗi buồn kia.\r\nAnh khóc cho cuộc tình chúng mình.\r\nCớ sao còn yêu nhau mà mình, không thể đến được với nhau.\r\nVì anh đã sai hay bởi vì bên em có ai kia.\r\n\r\nChẳng ai có thể hiểu nổi được trái tim khi đã lỡ yêu rồi.\r\nChỉ biết trách bản thân đã mù quáng, trót yêu một người vô tâm.\r\nTừng lời hứa như vết dao lạnh lùng.\r\nCắm thật sâu trái tim này.\r\nVì muốn thấy em hạnh phúc nên anh sẽ lùi về sau.\r\n\r\nThời gian qua chúng ta liệu sống tốt hơn.\r\nHay cứ mãi dối lừa.\r\nNhìn người mình thương ướt nhòe mi cay.\r\nKhiến tim này càng thêm đau.\r\nNgười từng khiến anh thay đổi là em, đã mãi xa rồi.\r\nThôi giấc mơ khép lại.\r\nKí ức kia gửi theo, gió bay\"', '00:04:55', 'images/đế vương.jfif', 'Musics/De Vuong - Dinh Dung_ ACV.mp3', NULL, 8),
(12, 'Anh yêu em', 'Chiều hôm ấy em nói với anh.\r\nRằng mình không nên gặp nhau nữa người ơi!\r\nEm đâu biết anh đau thế nào?\r\nKhoảng lặng phủ kín căn phòng ấy, tim anh như thắt lại.\r\nVà mong đó chỉ là mơ, vì anh còn yêu em rất nhiều.\r\n\r\nGiọt buồn làm nhòe đi dòng kẻ mắt.\r\nHòa cùng cơn mưa là những nỗi buồn kia.\r\nAnh khóc cho cuộc tình chúng mình.\r\nCớ sao còn yêu nhau mà mình, không thể đến được với nhau.\r\nVì anh đã sai hay bởi vì bên em có ai kia.\r\n\r\nChẳng ai có thể hiểu nổi được trái tim khi đã lỡ yêu rồi.\r\nChỉ biết trách bản thân đã mù quáng, trót yêu một người vô tâm.\r\nTừng lời hứa như vết dao lạnh lùng.\r\nCắm thật sâu trái tim này.\r\nVì muốn thấy em hạnh phúc nên anh sẽ lùi về sau.\r\n\r\nThời gian qua chúng ta liệu sống tốt hơn.\r\nHay cứ mãi dối lừa.\r\nNhìn người mình thương ướt nhòe mi cay.\r\nKhiến tim này càng thêm đau.\r\nNgười từng khiến anh thay đổi là em, đã mãi xa rồi.\r\nThôi giấc mơ khép lại.\r\nKí ức kia gửi theo, gió bay\"', '00:07:02', 'images/anh yêu em.jfif', 'Musics/Anh Yeu Em - Khac Viet.mp3', NULL, 9),
(13, 'Cố chấp dù anh đau', 'Chiều hôm ấy em nói với anh.\r\nRằng mình không nên gặp nhau nữa người ơi!\r\nEm đâu biết anh đau thế nào?\r\nKhoảng lặng phủ kín căn phòng ấy, tim anh như thắt lại.\r\nVà mong đó chỉ là mơ, vì anh còn yêu em rất nhiều.\r\n\r\nGiọt buồn làm nhòe đi dòng kẻ mắt.\r\nHòa cùng cơn mưa là những nỗi buồn kia.\r\nAnh khóc cho cuộc tình chúng mình.\r\nCớ sao còn yêu nhau mà mình, không thể đến được với nhau.\r\nVì anh đã sai hay bởi vì bên em có ai kia.\r\n\r\nChẳng ai có thể hiểu nổi được trái tim khi đã lỡ yêu rồi.\r\nChỉ biết trách bản thân đã mù quáng, trót yêu một người vô tâm.\r\nTừng lời hứa như vết dao lạnh lùng.\r\nCắm thật sâu trái tim này.\r\nVì muốn thấy em hạnh phúc nên anh sẽ lùi về sau.\r\n\r\nThời gian qua chúng ta liệu sống tốt hơn.\r\nHay cứ mãi dối lừa.\r\nNhìn người mình thương ướt nhòe mi cay.\r\nKhiến tim này càng thêm đau.\r\nNgười từng khiến anh thay đổi là em, đã mãi xa rồi.\r\nThôi giấc mơ khép lại.\r\nKí ức kia gửi theo, gió bay\"', '00:03:25', 'images/cố chấp dù anh đau.jfif', 'Musics/Co Chap Du Anh Dau - Chau Khai Phong_ AC.mp3', NULL, 10),
(14, 'Ai chung tình được mãi', 'Chiều hôm ấy em nói với anh.\r\nRằng mình không nên gặp nhau nữa người ơi!\r\nEm đâu biết anh đau thế nào?\r\nKhoảng lặng phủ kín căn phòng ấy, tim anh như thắt lại.\r\nVà mong đó chỉ là mơ, vì anh còn yêu em rất nhiều.\r\n\r\nGiọt buồn làm nhòe đi dòng kẻ mắt.\r\nHòa cùng cơn mưa là những nỗi buồn kia.\r\nAnh khóc cho cuộc tình chúng mình.\r\nCớ sao còn yêu nhau mà mình, không thể đến được với nhau.\r\nVì anh đã sai hay bởi vì bên em có ai kia.\r\n\r\nChẳng ai có thể hiểu nổi được trái tim khi đã lỡ yêu rồi.\r\nChỉ biết trách bản thân đã mù quáng, trót yêu một người vô tâm.\r\nTừng lời hứa như vết dao lạnh lùng.\r\nCắm thật sâu trái tim này.\r\nVì muốn thấy em hạnh phúc nên anh sẽ lùi về sau.\r\n\r\nThời gian qua chúng ta liệu sống tốt hơn.\r\nHay cứ mãi dối lừa.\r\nNhìn người mình thương ướt nhòe mi cay.\r\nKhiến tim này càng thêm đau.\r\nNgười từng khiến anh thay đổi là em, đã mãi xa rồi.\r\nThôi giấc mơ khép lại.\r\nKí ức kia gửi theo, gió bay\"', '00:04:42', 'images/ai chung tình được mãi.png', 'Musics/Ai Chung Tinh Duoc Mai - Dinh Tung Huy.mp3', NULL, 11),
(15, 'Gieo quẻ', 'Chiều hôm ấy em nói với anh.\r\nRằng mình không nên gặp nhau nữa người ơi!\r\nEm đâu biết anh đau thế nào?\r\nKhoảng lặng phủ kín căn phòng ấy, tim anh như thắt lại.\r\nVà mong đó chỉ là mơ, vì anh còn yêu em rất nhiều.\r\n\r\nGiọt buồn làm nhòe đi dòng kẻ mắt.\r\nHòa cùng cơn mưa là những nỗi buồn kia.\r\nAnh khóc cho cuộc tình chúng mình.\r\nCớ sao còn yêu nhau mà mình, không thể đến được với nhau.\r\nVì anh đã sai hay bởi vì bên em có ai kia.\r\n\r\nChẳng ai có thể hiểu nổi được trái tim khi đã lỡ yêu rồi.\r\nChỉ biết trách bản thân đã mù quáng, trót yêu một người vô tâm.\r\nTừng lời hứa như vết dao lạnh lùng.\r\nCắm thật sâu trái tim này.\r\nVì muốn thấy em hạnh phúc nên anh sẽ lùi về sau.\r\n\r\nThời gian qua chúng ta liệu sống tốt hơn.\r\nHay cứ mãi dối lừa.\r\nNhìn người mình thương ướt nhòe mi cay.\r\nKhiến tim này càng thêm đau.\r\nNgười từng khiến anh thay đổi là em, đã mãi xa rồi.\r\nThôi giấc mơ khép lại.\r\nKí ức kia gửi theo, gió bay\"', '00:04:37', 'images/gieo quẻ.jfif', 'Musics/Gieo Que - Hoang Thuy Linh_ Den.mp3', NULL, 7),
(16, 'Con bướm xuân', 'Chiều hôm ấy em nói với anh.\r\nRằng mình không nên gặp nhau nữa người ơi!\r\nEm đâu biết anh đau thế nào?\r\nKhoảng lặng phủ kín căn phòng ấy, tim anh như thắt lại.\r\nVà mong đó chỉ là mơ, vì anh còn yêu em rất nhiều.\r\n\r\nGiọt buồn làm nhòe đi dòng kẻ mắt.\r\nHòa cùng cơn mưa là những nỗi buồn kia.\r\nAnh khóc cho cuộc tình chúng mình.\r\nCớ sao còn yêu nhau mà mình, không thể đến được với nhau.\r\nVì anh đã sai hay bởi vì bên em có ai kia.\r\n\r\nChẳng ai có thể hiểu nổi được trái tim khi đã lỡ yêu rồi.\r\nChỉ biết trách bản thân đã mù quáng, trót yêu một người vô tâm.\r\nTừng lời hứa như vết dao lạnh lùng.\r\nCắm thật sâu trái tim này.\r\nVì muốn thấy em hạnh phúc nên anh sẽ lùi về sau.\r\n\r\nThời gian qua chúng ta liệu sống tốt hơn.\r\nHay cứ mãi dối lừa.\r\nNhìn người mình thương ướt nhòe mi cay.\r\nKhiến tim này càng thêm đau.\r\nNgười từng khiến anh thay đổi là em, đã mãi xa rồi.\r\nThôi giấc mơ khép lại.\r\nKí ức kia gửi theo, gió bay\"', '00:05:01', 'images/con bướm xuân.jfif', 'Musics/Con Buom Xuan - Ho Quang Hieu.mp3', NULL, 13),
(17, 'Em say rồi', 'Chiều hôm ấy em nói với anh.\r\nRằng mình không nên gặp nhau nữa người ơi!\r\nEm đâu biết anh đau thế nào?\r\nKhoảng lặng phủ kín căn phòng ấy, tim anh như thắt lại.\r\nVà mong đó chỉ là mơ, vì anh còn yêu em rất nhiều.\r\n\r\nGiọt buồn làm nhòe đi dòng kẻ mắt.\r\nHòa cùng cơn mưa là những nỗi buồn kia.\r\nAnh khóc cho cuộc tình chúng mình.\r\nCớ sao còn yêu nhau mà mình, không thể đến được với nhau.\r\nVì anh đã sai hay bởi vì bên em có ai kia.\r\n\r\nChẳng ai có thể hiểu nổi được trái tim khi đã lỡ yêu rồi.\r\nChỉ biết trách bản thân đã mù quáng, trót yêu một người vô tâm.\r\nTừng lời hứa như vết dao lạnh lùng.\r\nCắm thật sâu trái tim này.\r\nVì muốn thấy em hạnh phúc nên anh sẽ lùi về sau.\r\n\r\nThời gian qua chúng ta liệu sống tốt hơn.\r\nHay cứ mãi dối lừa.\r\nNhìn người mình thương ướt nhòe mi cay.\r\nKhiến tim này càng thêm đau.\r\nNgười từng khiến anh thay đổi là em, đã mãi xa rồi.\r\nThôi giấc mơ khép lại.\r\nKí ức kia gửi theo, gió bay\"', '00:06:22', 'images/em say rồi.jfif', 'Musics/Em Say Roi - Thuong Vo.mp3', NULL, 14),
(18, 'Chuyện của mùa đông', 'Chiều hôm ấy em nói với anh.\r\nRằng mình không nên gặp nhau nữa người ơi!\r\nEm đâu biết anh đau thế nào?\r\nKhoảng lặng phủ kín căn phòng ấy, tim anh như thắt lại.\r\nVà mong đó chỉ là mơ, vì anh còn yêu em rất nhiều.\r\n\r\nGiọt buồn làm nhòe đi dòng kẻ mắt.\r\nHòa cùng cơn mưa là những nỗi buồn kia.\r\nAnh khóc cho cuộc tình chúng mình.\r\nCớ sao còn yêu nhau mà mình, không thể đến được với nhau.\r\nVì anh đã sai hay bởi vì bên em có ai kia.\r\n\r\nChẳng ai có thể hiểu nổi được trái tim khi đã lỡ yêu rồi.\r\nChỉ biết trách bản thân đã mù quáng, trót yêu một người vô tâm.\r\nTừng lời hứa như vết dao lạnh lùng.\r\nCắm thật sâu trái tim này.\r\nVì muốn thấy em hạnh phúc nên anh sẽ lùi về sau.\r\n\r\nThời gian qua chúng ta liệu sống tốt hơn.\r\nHay cứ mãi dối lừa.\r\nNhìn người mình thương ướt nhòe mi cay.\r\nKhiến tim này càng thêm đau.\r\nNgười từng khiến anh thay đổi là em, đã mãi xa rồi.\r\nThôi giấc mơ khép lại.\r\nKí ức kia gửi theo, gió bay\"', '00:04:44', 'images/chuyện của mùa đông.jfif', 'Musics/Chuyen Cua Mua Dong - Huong Ly.mp3', NULL, 15),
(19, 'Hướng dương', 'Chiều hôm ấy em nói với anh.\r\nRằng mình không nên gặp nhau nữa người ơi!\r\nEm đâu biết anh đau thế nào?\r\nKhoảng lặng phủ kín căn phòng ấy, tim anh như thắt lại.\r\nVà mong đó chỉ là mơ, vì anh còn yêu em rất nhiều.\r\n\r\nGiọt buồn làm nhòe đi dòng kẻ mắt.\r\nHòa cùng cơn mưa là những nỗi buồn kia.\r\nAnh khóc cho cuộc tình chúng mình.\r\nCớ sao còn yêu nhau mà mình, không thể đến được với nhau.\r\nVì anh đã sai hay bởi vì bên em có ai kia.\r\n\r\nChẳng ai có thể hiểu nổi được trái tim khi đã lỡ yêu rồi.\r\nChỉ biết trách bản thân đã mù quáng, trót yêu một người vô tâm.\r\nTừng lời hứa như vết dao lạnh lùng.\r\nCắm thật sâu trái tim này.\r\nVì muốn thấy em hạnh phúc nên anh sẽ lùi về sau.\r\n\r\nThời gian qua chúng ta liệu sống tốt hơn.\r\nHay cứ mãi dối lừa.\r\nNhìn người mình thương ướt nhòe mi cay.\r\nKhiến tim này càng thêm đau.\r\nNgười từng khiến anh thay đổi là em, đã mãi xa rồi.\r\nThôi giấc mơ khép lại.\r\nKí ức kia gửi theo, gió bay\"', '00:05:22', 'images/hướng dương.jfif', 'Musics/Huong Duong - Changg.mp3', NULL, 16),
(20, 'Ngủ thôi nắng tắt rồi', 'Chiều hôm ấy em nói với anh.\r\nRằng mình không nên gặp nhau nữa người ơi!\r\nEm đâu biết anh đau thế nào?\r\nKhoảng lặng phủ kín căn phòng ấy, tim anh như thắt lại.\r\nVà mong đó chỉ là mơ, vì anh còn yêu em rất nhiều.\r\n\r\nGiọt buồn làm nhòe đi dòng kẻ mắt.\r\nHòa cùng cơn mưa là những nỗi buồn kia.\r\nAnh khóc cho cuộc tình chúng mình.\r\nCớ sao còn yêu nhau mà mình, không thể đến được với nhau.\r\nVì anh đã sai hay bởi vì bên em có ai kia.\r\n\r\nChẳng ai có thể hiểu nổi được trái tim khi đã lỡ yêu rồi.\r\nChỉ biết trách bản thân đã mù quáng, trót yêu một người vô tâm.\r\nTừng lời hứa như vết dao lạnh lùng.\r\nCắm thật sâu trái tim này.\r\nVì muốn thấy em hạnh phúc nên anh sẽ lùi về sau.\r\n\r\nThời gian qua chúng ta liệu sống tốt hơn.\r\nHay cứ mãi dối lừa.\r\nNhìn người mình thương ướt nhòe mi cay.\r\nKhiến tim này càng thêm đau.\r\nNgười từng khiến anh thay đổi là em, đã mãi xa rồi.\r\nThôi giấc mơ khép lại.\r\nKí ức kia gửi theo, gió bay\"', '00:05:01', 'images/ngủ thôi tắt nắng rồi.jfif', 'Musics/Ngu Thoi_ Nang Tat Roi - Pham Nguyen Ngo.mp3', NULL, 17);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_user`
--

CREATE TABLE `db_user` (
  `id_user` int(10) NOT NULL,
  `name_user` varchar(100) NOT NULL,
  `birthday_user` date DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `phonenumber_user` varchar(13) DEFAULT NULL,
  `gender_user` varchar(10) DEFAULT NULL,
  `nation_user` varchar(50) DEFAULT NULL,
  `password_user` varchar(50) NOT NULL,
  `followers_singer` int(11) DEFAULT NULL,
  `status_user` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `db_user`
--

INSERT INTO `db_user` (`id_user`, `name_user`, `birthday_user`, `email_user`, `phonenumber_user`, `gender_user`, `nation_user`, `password_user`, `followers_singer`, `status_user`) VALUES
(1, 'ducanh', NULL, 'ducanh@gmail.com', '03888989xx', NULL, NULL, '123', NULL, 1),
(2, 'admin', NULL, 'admin@gmail.com', '03999999xx', NULL, NULL, 'admin', NULL, 2),
(3, 'levankha', NULL, 'levankha@gmail.com', '03967867xx', NULL, NULL, 'kha', NULL, 1),
(4, 'ducanh1', NULL, 'ducanh1@gmail.com', '03844688xx', NULL, NULL, '123', NULL, 1),
(5, '0389168871', NULL, 'ducanh2@gmail.com', '03891448xx', NULL, NULL, '123', NULL, 1),
(6, 'ducanh3', NULL, 'ducanh3@gmail.com', '03891688xx', NULL, NULL, '1234', NULL, 1),
(8, 'ducanh44', NULL, 'ducanh44', '03891388xx', NULL, NULL, '123', NULL, 1),
(9, 'ducanh', NULL, 'ducanh2222@gmail.com', '03854682xx', NULL, NULL, '123', NULL, 1),
(10, 'ducanh2510', NULL, 'ducanh2510@gmail.com', '03891688xx', NULL, NULL, '123', NULL, 1);

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
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `db_album`
--
ALTER TABLE `db_album`
  MODIFY `id_album` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `db_love`
--
ALTER TABLE `db_love`
  MODIFY `id_love` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `db_playlist`
--
ALTER TABLE `db_playlist`
  MODIFY `id_playlist` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `db_singer`
--
ALTER TABLE `db_singer`
  MODIFY `id_singer` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `db_song`
--
ALTER TABLE `db_song`
  MODIFY `id_song` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
