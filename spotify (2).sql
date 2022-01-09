-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th1 09, 2022 lúc 05:13 PM
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
(1, 'Sơn Tùng Tour', 1),
(2, 'Chẳng để em xa anh', 2),
(3, 'Đến với nhau là sai', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_images`
--

CREATE TABLE `db_images` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `uploaded_on` datetime NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `db_images`
--

INSERT INTO `db_images` (`id`, `file_name`, `uploaded_on`, `status`) VALUES
(1, 'B?i th&#7921;c h?nh 3.pdf', '2021-12-27 17:04:13', '1'),
(2, 'Ki&#7875;m_Tra_Tin_Ngh&#7873;_MinhTuan11C3.docx', '2021-12-27 17:08:22', '1');

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
(1, NULL, 1),
(2, NULL, 3),
(3, NULL, 1),
(4, NULL, 4),
(5, NULL, 3);

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
(1, NULL, 1),
(2, NULL, 2),
(3, NULL, 4),
(4, NULL, 1),
(5, NULL, 2);

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
(2, 'Đức Phúc'),
(3, 'Noo Phước Thịnh'),
(4, 'Karik');

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
(1, 'Chúng ta của hiện tại', 'Mùa thu mang giấc mơ quay về\r\nVẫn nguyên vẹn như hôm nào\r\nLá bay theo gió xôn xao\r\nChốn xưa em chờ\r\nĐoạn đường ngày nào hôm nay ta từng đón đưa\r\nCòn vẫn vương không phai mờ\r\nDấu yêu thương trong vần thơ\r\n\r\nChúng ta là áng mây bên trời vội vàng ngang qua\r\nChúng ta chẳng thể nâng niu những câu thề\r\nCứ như vậy thôi, không một lời, lặng lẽ thế chia xa\r\nChiều mưa bên hiên vắng buồn, còn ai thương ai, mong ai?\r\n\r\nĐiều anh luôn giữ kín trong tim\r\nThương em đôi mắt ướt nhòa\r\nĐiều anh luôn giữ kín trong tim này\r\nThương em đâu đó khóc òa\r\nĐiều anh luôn giữ kín trong tim này\r\nNgày mai, nắng gió, sương hao gầy\r\nCó ai thương lắng lo cho em?\r\n(Whoo-whoo-whoo)\r\n\r\nĐiều anh luôn giữ kín trong tim\r\nThương em, anh mãi xin là\r\nĐiều anh luôn giữ kín trong tim này\r\nThương em vì thương thôi mà\r\nĐiều anh luôn giữ kín trong tim này\r\nDù cho nắng tắt, xuân thay màu\r\nHéo khô đi tháng năm xưa kia\r\n(Anh nguyện ghi mãi trong tim)\r\n\r\n(Nắng vương trên cành héo khô những kỉ niệm xưa kia\r\nNgày mai, người luyến lưu về giấc mơ từng có\r\nLiệu có ta?)\r\n\r\nCó anh nơi đó không?\r\nCó anh nơi đó không?\r\n\r\nĐiều anh luôn giữ kín trong tim\r\nĐiều anh luôn giữ kín trong tim\r\n(Có anh nơi đó không?)\r\n(Anh nguyện ghi mãi trong tim)\r\n\r\n(Nắng vương trên cành héo khô những kỉ niệm xưa kia\r\nNgày mai, người luyến lưu về giấc mơ từng có\r\nLiệu có ta?)\r\n\r\nCó anh nơi đó không?\r\nCó anh nơi đó không? (Liệu có ta?)\r\n\r\nChúng ta là áng mây bên trời vội vàng ngang qua\r\nChúng ta chẳng thể nâng niu những câu thề\r\nCứ như vậy thôi, không một lời, lặng lẽ thế chia xa\r\nChiều mưa bên hiên vắng buồn, còn ai thương ai, mong ai?\r\n\r\nĐiều anh luôn giữ kín trong tim\r\nThương em, đôi mắt ướt nhòa\r\nĐiều anh luôn giữ kín trong tim này\r\nThương em đâu đó khóc òa\r\nĐiều anh luôn giữ kín trong tim này\r\nNgày mai, nắng gió, sương hao gầy\r\nCó ai thương lắng lo cho em?\r\n\r\nĐiều anh luôn giữ kín trong tim\r\nThương em, anh mãi xin là\r\nĐiều anh luôn giữ kín trong tim này\r\nThương em vì thương thôi mà\r\nĐiều anh luôn giữ kín trong tim này\r\nDù cho nắng tắt, xuân thay màu\r\nHéo khô đi tháng năm xưa kia\r\n(Anh nguyện ghi mãi trong tim)\r\n\r\nNo, no, no\r\nNo, no, no\r\n\r\nĐiều anh luôn giữ kín trong tim (Giữ kín trong tim này)\r\nGiữ mãi trong tim này (Giữ mãi trong tim này)\r\nGiữ mãi trong tim mình\r\nGiữ...\r\n\r\nCó anh nơi đó không?\r\nCó anh nơi đó không?\r\n(Whoo-whoo-whoo-whoo)\r\n\r\nĐiều anh luôn giữ kín trong tim (No, no, no)\r\nĐiều anh luôn giữ kín trong tim này (No, no, no)\r\nĐiều anh luôn giữ kín trong tim này\r\n(Ngày mai, nắng gió, sương hao gầy)\r\n(Có ai luôn lắng lo cho em?)\r\n\r\nĐiều anh luôn giữ kín trong tim (No, no, no)\r\nĐiều anh luôn giữ kín trong tim này (No, no, no)\r\nĐiều anh luôn giữ kín trong tim này\r\n(Dù cho nắng tắt, xuân thay màu)\r\n(Héo khô đi tháng năm xưa kia)\r\n(Anh nguyện ghi mãi trong tim)\r\n\r\nĐiều anh luôn giữ kín trong tim\r\nThương em đôi mắt ướt nhòa\r\nĐiều anh luôn giữ kín trong tim này\r\nThương em đâu đó khóc òa\r\nĐiều anh luôn giữ kín trong tim này\r\nNgày mai, nắng gió, sương ngâm\r\nCó ai thương lắng lo cho em?\r\n\r\nĐiều anh luôn giữ kín trong tim\r\nThương em, anh mãi xin là\r\nĐiều anh luôn giữ kín trong tim này\r\nThương em vì thương thôi mà\r\nĐiều anh luôn giữ kín trong tim này\r\nDù cho nắng tắt, xuân thay màu\r\nHéo khô đi tháng năm xưa kia\r\n(Anh nguyện ghi mãi trong tim)\r\n\r\nĐiều anh luôn giữ kín trong tim (Giữ kín trong tim này)\r\nGiữ mãi trong tim này (Giữ mãi trong tim này)\r\nGiữ mãi trong tim mình\r\nGiữ...\r\n\r\nCó anh nơi đó không?\r\nCó anh nơi đó không?\r\n(Whoo-whoo-whoo-whoo)\r\n\r\nĐiều anh luôn giữ kín trong tim (No, no, no)\r\nĐiều anh luôn giữ kín trong tim này (No, no, no)\r\nĐiều anh luôn giữ kín trong tim này\r\n(Ngày mai, nắng gió, sương hao gầy)\r\n(Có ai thương lắng lo cho em?)\r\n\r\nĐiều anh luôn giữ kín trong tim (No, no, no)\r\nĐiều anh luôn giữ kín trong tim này (No, no, no)\r\nĐiều anh luôn giữ kín trong tim này\r\n(Dù cho nắng tắt, xuân thay màu)\r\n(Héo khô đi tháng năm xưa kia)\r\n(Anh nguyện ghi mãi trong tim)\r\n\r\nĐiều anh luôn giữ kín trong tim\r\nThương em đôi mắt ướt nhòa\r\nĐiều anh luôn giữ kín trong tim này\r\nThương em ngồi đó khóc òa\r\nĐiều anh luôn giữ kín trong tim này\r\nNgày mai, nắng gió, sương hao gầy\r\nCó ai thương lắng lo cho em?\r\n\r\nĐiều anh luôn giữ kín trong tim\r\nThương em, anh mãi xin là\r\nĐiều anh luôn giữ kín trong tim này\r\nThương em thì thương thôi mà\r\nĐiều anh luôn giữ kín trong tim này\r\nDù cho nắng tắt, xuân thay màu\r\nLau khô đi tháng năm xưa kia\r\n\r\n(Anh nguyện ghi mãi trong tim)\r\n(Anh nguyện ghi mãi trong tim)\r\n(Anh nguyện ghi mãi trong tim)\r\n\r\n(Anh nguyện ghi mãi trong tim)\r\n(Anh nguyện ghi mãi trong tim)\r\n(Anh nguyện ghi mãi trong tim)\r\n\r\nĐiều anh luôn giữ kín trong tim\r\nĐiều anh luôn giữ kín trong tim mình\r\nĐiều anh luôn giữ kín trong tim mình\r\nCó ai thương lắng lo cho em?\r\n\r\nĐiều anh luôn giữ kín trong tim\r\n(Thương em, anh mới xin là)\r\nĐiều anh luôn giữ kín trong tim mình\r\n(Thương em vì thương thôi mà)\r\nĐiều anh luôn giữ kín trong tim mình\r\nCó ai thương lắng lo cho em? Cho em', '00:05:00', NULL, NULL, 'Sơn Tùng tourist', 1),
(2, 'Chờ ngày mưa tan', 'Một ngày mưa và em khuất xa nơi anh, bóng dáng cứ phai dần\r\nPhải bao lâu anh mới quên được em?\r\nTừng ngày cứ lặng lẽ bước qua đời anh, thế nhưng giờ tim vẫn đau nhói\r\nVì em...nỗi đau không nhạt phai\r\nVà dòng ký ức khẽ qua, mỗi đêm dài cạnh bên với anh\r\nTỉnh dậy, đôi mắt hoen đi vì khóc...\r\nƯớc mơ của chúng ta...chỉ một cơn mưa đã cuốn trôi tất cả\r\nChiều mưa ...chiều khiến yêu thương lạnh giá.\r\n\r\nTại sao em lại quay bước đi?\r\nTại sao không thể ngừng nhớ em?\r\nDù cho em...chính em rời xa anh\r\nVà anh sẽ chờ một giấc mơ\r\nNắng sẽ về khiến mưa trôi xa...nhẹ nhàng\r\nCơn gió khẽ mang em về bên anh\r\n\r\n[Rap]\r\nSao mưa vươn trên mắt tới mi\r\nRồi thoáng những phút giây, có nhau gần kề\r\nLại cơn mưa đẩy anh đi về, nơi những mơ mộng\r\nChợt vụn vỡ theo những giọt mưa\r\nMau trôi đêm mưa tan nắng đưa em về níu em 1 lần\r\nTrọn từng giấc mơ...cho tin yêu đầy vơi khi em quay lưng đi\r\n\r\nHát\r\nVà dòng ký ức khẽ qua, mỗi đêm dài cạnh bên với anh\r\nTỉnh dậy, đôi mắt hoen đi vì khóc...\r\nƯớc mơ của chúng ta...chỉ một cơn mưa đã cuốn trôi tất cả\r\nChiều mưa ...chiều khiến yêu thương lạnh giá.\r\n\r\n[ĐK]\r\nTại sao em lại quay bước đi?\r\nTại sao không thể ngừng nhớ em?\r\nDù cho em...chính em rời xa anh\r\nVà anh sẽ chờ một giấc mơ\r\nNắng sẽ về khiến mưa trôi xa...nhẹ nhàng\r\nCơn gió khẽ mang em về bên anh\r\n\r\n[RAP]\r\nSao nước vươn trên mắt em sao thời gian không hong khô\r\nKhoảng cách giữa nhiều hơi thở thật gần nhưng mà nó dài không ngờ\r\nChỉ mong chờ: trong giấc mơ ngắn đưa em về\r\nĐêm vẫn còn dài vì anh thao thức cùng tới với những giọt lệ để ê chề\r\nMọi thứ từ đâu vỡ tan, trong hoang man, lí do còn khiến anh ngỡ ngàng\r\nThật bất tàn nhiều phũ phàng chỉ xin 1 lần chờ người ấy\r\nXóa tan cơn mưa mang những điều ước hình ảnh mơ mộng với dòng kí ức\r\nCơn mưa ngọt ngào trăm ngàn nỗi đau\r\n\r\n[Hát]\r\nTại sao em lại quay bước đi?\r\nTại sao không thể ngừng nhớ em?\r\nDù cho em...chính em rời xa anh\r\nVà anh sẽ chờ một giấc mơ\r\nNắng sẽ về xua tan băng giá....\r\nVà em ngỡ như không rời xa...', '00:06:42', NULL, NULL, 'Lưu diễn cả 3 miền', 3),
(3, 'Hết thương cạn nhớ', 'Em à anh đã biết \r\nLà tình yêu này chẳng cần thiết \r\nEm cần nơi bình yên \r\nChứ không phải anh kế bên\r\n\r\nEm đừng giữ lại anh \r\nKhi trái tim vụn vỡ chưa lành \r\nĐiều ban nãy anh vừa thấy là gì đây?!\r\n\r\nEm đã vừa ghì hôn ai cận kề bên tai tựa đầu lên vai\r\nThấy em đang đắm say chắc em chẳng hay đôi mình chưa chia tay\r\nĐôi khi tình yêu sẽ hóa nhạt nhòa khi vô tình một trong hai \r\nCuốn lấy sai trái đến khi vỡ lỡ cả hai hủy hoại tương lai \r\n\r\nChẳng cần một ai nữa , bất kể ai cũng dư thừa \r\nMột mình đứng khóc giữa mưa , nén cơn đau vào từng hơi thở \r\nMột người mình chẳng ngưng nhớ \r\nNhưng lại quay bước giả vờ \r\nBảo rằng mình cũng như em ... hết thương cạn nhớ \r\nSự thật là chỉ mỗi em ... hết thương cạn nhớ!\r\n\r\nVì lỡ thấy em với người ta\r\nSao mà lại dễ quên em à ... với tất cả gì đang xảy ra \r\nChỉ là còn nhân duyên ... nên lòng vẫn quyến luyến ...\r\nMai chia cắt ... muốn cũng chẳng thấy mặt ... \r\n\r\nSự thật là chỉ một người giữ một người buông ...', '00:06:09', NULL, NULL, 'Đức Phúc và những người bạn', 2),
(4, 'Hết yêu', 'Mưa từ đâu đã rơi ở phía xa , cành hoa ngày anh tặng em cho đã phai nhoà\r\nNhưng anh vẫn ngờ như là , như là hôm qua...\r\nKhi tình yêu chợt đâu tìm đến đây\r\nMang hạnh phúc dịu êm đã ngất ngây rời xa nơi này,,,và rời xa mãi nơi này\r\n\r\nAnh biết rằng mình đã xa nhau , anh biết rằng mình đã giấu hết những nỗi đau\r\nĐể cho người kia chẳng thấy hết những gì còn nương nấu\r\nDù người có quay về cũng chẳng thể nào yêu nhau...\r\nAnh đã cố gắng lắm níu giữ em ở lại ,\r\nMà vẫn thấy yếu đuối mỗi khi ta hay giận nhau\r\n\r\nTừ giờ anh sẽ không còn thế đâu bởi vì...\r\nVì sao ngoài kia mưa vẫn rơi rơi ngày càng nhiều\r\nTừng lời anh nói chẳng thấm ướt con tim em bao nhiêu\r\nDù rằng đã cố gắng để quên thật nhiều điều\r\nMà tại sao phía cuối lý trí con tim không nuông chiều\r\n\r\nAnh biết anh đã hết yêu...anh biết anh đã hết yêu em thật nhiều\r\nAnh biết anh đã hết yêu...anh biết trong con tim anh đã hết yêu em , hết yêu em rồi\r\n\r\nKhông phải lỗi ở nơi em , cũng không phải do cuộc tình này sai\r\nKhông phải yêu thương chưa trọn vẹn chỉ là anh thấy đôi mình nên dừng lại\r\nAnh từng nghĩ sẽ bên nhau lâu dài nhưng thực tế ta không có ngày mai\r\nKhi lòng tin mỗi giây anh góp nhặt còn em không biết phải thương ai\r\nXin lỗi anh không cần thương hại , anh cũng không muốn là sự lựa chọn\r\nHãy để mặc anh trên đường dài , buông xuôi trách nhiệm khi xưa anh chưa tròn\r\n\r\nAnh sẽ quên đi hết những ngọt ngào\r\nVà cũng chẳng bao giờ hỏi tại sao\r\nChấp nhận cô đơn như ngày ngào, mãi mãi sẽ không oán trách ý trời cao...\r\nEm cứ đi theo hướng mà em muốn riêng chuyện đôi ta xem như đến đây thôi chia đôi\r\nAnh dần đưa em vào dĩ vãng để cuộc tình này nhẹ nhàng như mây trôi xa xôi\r\nĐôi khi anh thẩn thờ hoài nghi thật nhiều\r\nSuy nghĩ mong lung sớm tối đủ kiểu\r\nNhưng giờ cuối cùng thì anh đã hiểu , mọi thứ đơn giản chỉ là hết yêu.\r\n\r\nAnh biết con tim anh hôm nay đã hết yêu thật nhiều\r\nVì có những yếu đuối anh không thể nói ra thành lời\r\nGiấu hết nước mắt cho đôi chân ai lâu nay vẫn luôn mệt nhoài\r\nNgày tháng đó sẽ mãi theo anh đến cuối cuộc đời...', '00:03:44', NULL, NULL, 'Những người cô đơn', 4);

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
(1, 'levankha', NULL, 'levankha@gmail.com', NULL, NULL, NULL, '123456', NULL, 1),
(2, 'levankha1', NULL, 'levankha1@gmail.com', NULL, NULL, NULL, '123', NULL, 1),
(4, 'ducanhvn', NULL, 'ducanh@gmail.com.vn', NULL, NULL, NULL, '123', NULL, 1),
(5, 'admin', NULL, 'admin@gmail.com', NULL, NULL, NULL, '2001', NULL, 2),
(6, 'ducanh', NULL, 'ducanh@gmail.com', NULL, NULL, NULL, '123', NULL, 1),
(7, 'ducanh1', NULL, 'ducanh1@gmail.com', NULL, NULL, NULL, '123', NULL, 1);

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
-- Chỉ mục cho bảng `db_images`
--
ALTER TABLE `db_images`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT cho bảng `db_images`
--
ALTER TABLE `db_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
