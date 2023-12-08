-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2023 at 04:42 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopee`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminID` int(11) NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `adminEmail` varchar(255) NOT NULL,
  `adminAccount` varchar(255) NOT NULL,
  `adminPass` varchar(255) NOT NULL,
  `adminLevel` int(11) NOT NULL,
  `adminImage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminID`, `adminName`, `adminEmail`, `adminAccount`, `adminPass`, `adminLevel`, `adminImage`) VALUES
(1, 'Nguyễn Văn Hà', 'nvha1120@gmail.com', 'nvanha', 'e10adc3949ba59abbe56e057f20f883e', 1, 'avt.jpg'),
(2, 'luuhoangphuc', 'hoangphuc@123', 'hoangphuc', 'hoangphuc', 11, ''),
(3, 'haong phuc', 'sdad@qwwwwwwww12', 'phuc123', 'e10adc3949ba59abbe56e057f20f883e', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartID` int(11) NOT NULL,
  `productID` int(10) UNSIGNED NOT NULL,
  `sessionID` varchar(255) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `categoryName` varchar(255) NOT NULL,
  `productPrice` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `productImage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartID`, `productID`, `sessionID`, `productName`, `categoryName`, `productPrice`, `quantity`, `productImage`) VALUES
(94, 59, '1cjtsq6027a9afasle4falol5d', 'Module ULN2003', 'Cơ Điện Tử', '18000', 4, 'Module ULN2003.png'),
(95, 82, 'clgi04os16058tb2jo6guo6lp6', 'Jack Chuyển Đổi USB A Đực Sang DC5.5x2.1 Cái', 'Connectors', '12000', 1, 'Jack Chuyển Đổi USB A Đực Sang DC5.5x2.1 Cái.png'),
(96, 99, 'clgi04os16058tb2jo6guo6lp6', 'Led Dây Dán 5050 WS2812 5V Không Keo Cuộn 5M (1 Mét 60 Bóng)', 'LED - Chiếu Sáng', '450000', 1, 'Led Dây Dán 5050 WS2812 5V Không Keo (1 Mét 60 Bóng).png'),
(98, 60, 'i725v7717artdggi6nki7jhom9', 'Mạch Cầu H 5A MCH-5A', 'Cơ Điện Tử', '90000', 2, 'Mạch Cầu H 5A MCH-5A.png'),
(99, 72, 'i725v7717artdggi6nki7jhom9', 'CON 3 KF301-3P 5.08MM Xanh Lá', 'Connectors', '2500', 1, 'CON 3 KF301-3P 5.08MM Xanh Lá.png'),
(100, 97, 'qgbmkl9kg1dmfdoqug7817ef9v', 'Module LED P5 Full Color Trong Nhà', 'LED - Chiếu Sáng', '235000', 1, 'Module LED P5 Full Color Trong Nhà.png'),
(101, 59, '58hplpppjgt9t36dahgead1r6m', 'Mạch Cầu H 5A MCH-5A', 'Cơ Điện Tử', '90000', 1, 'Module ULN2003.png'),
(102, 95, 'b51500unjaq8fucfilflhe7fvi', 'Led Dây Dán 5050 WS2812 5V Không Keo (1 Mét 60 Bóng)', 'LED - Chiếu Sáng', '85000', 1, 'Led Dây Dán 5050 WS2812 5V Không Keo (1 Mét 60 Bóng)(1).png'),
(103, 89, 's53qpd0263m6j0j161u10k2e1r', 'UC3611DW SOIC16', 'IC Chức Năng', '10000', 1, 'UC3611DW SOIC16.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `categoryID` int(10) UNSIGNED NOT NULL,
  `categoryName` varchar(255) NOT NULL,
  `categoryImage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`categoryID`, `categoryName`, `categoryImage`) VALUES
(85, 'Vi Điều Khiển - KIT Phát Triển', 'Vi Điều Khiển - KIT Phát Triển.png'),
(86, 'TOOL, Thiết Bị, Phụ Kiện', 'Tool(1).png'),
(87, 'Thu Phát Không Dây', 'Thu Phát Không Dây.png'),
(88, 'Quang Điện Tử', 'Quang Điện Tử.png'),
(89, 'Quản Lý Nhiệt Độ', 'Quản Lý Nhiệt Độ.png'),
(90, 'PIN', 'PIN.png'),
(91, 'Nguồn', 'Nguồn.png'),
(92, 'Màn Hình - LCD', 'Màn Hình - LCD.png'),
(93, 'Linh Kiện Thụ Động', 'Linh Kiện Thụ Động.png'),
(94, 'Linh Kiện Bán Dẫn', 'Linh Kiện Bán Dẫn.png'),
(95, 'LED - Chiếu Sáng', 'LED - Chiếu Sáng.png'),
(96, 'IC Chức Năng', 'IC Chức Năng.png'),
(98, 'Connectors', 'Connectors.png'),
(99, 'Cơ Điện Tử', 'Cơ Điện Tử.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customerID` int(10) UNSIGNED NOT NULL,
  `customerName` varchar(255) NOT NULL,
  `customerAccount` varchar(255) NOT NULL,
  `customerEmail` varchar(255) NOT NULL,
  `customerPassword` varchar(255) NOT NULL,
  `customerPhone` varchar(255) NOT NULL,
  `customerAddress` text DEFAULT NULL,
  `customerImage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customerID`, `customerName`, `customerAccount`, `customerEmail`, `customerPassword`, `customerPhone`, `customerAddress`, `customerImage`) VALUES
(9, 'phuc', 'phuc123', 'lhphuc1602@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '03623298062', NULL, NULL),
(10, 'phuc4', 'phuc1234', '016623298064', 'e10adc3949ba59abbe56e057f20f883e', '12344556', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `orderID` int(11) NOT NULL,
  `productID` int(10) UNSIGNED NOT NULL,
  `productName` varchar(255) NOT NULL,
  `customerID` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `productImage` varchar(255) NOT NULL,
  `dateOrder` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`orderID`, `productID`, `productName`, `customerID`, `quantity`, `price`, `productImage`, `dateOrder`, `status`) VALUES
(26, 62, 'Động Cơ Giảm Tốc V3 Màu Vàng 2 Trục GT130-148-2T', 9, 1, '20000', 'Động Cơ Giảm Tốc V3 Màu Vàng 2 Trục GT130-148-2T.png', '2023-05-05 11:20:07', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_origin`
--

CREATE TABLE `tbl_origin` (
  `originID` int(10) UNSIGNED NOT NULL,
  `originName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_origin`
--

INSERT INTO `tbl_origin` (`originID`, `originName`) VALUES
(1, 'Mỹ'),
(4, 'Việt Nam'),
(6, 'Trung Quốc'),
(7, 'Hàn Quốc'),
(8, 'Nhật Bản'),
(9, 'Thái Lan'),
(10, 'Nga'),
(11, 'Pháp');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productID` int(10) UNSIGNED NOT NULL,
  `productName` tinytext NOT NULL,
  `categoryID` int(10) UNSIGNED NOT NULL,
  `originID` int(10) UNSIGNED NOT NULL,
  `productDesc` text NOT NULL,
  `productType` int(11) NOT NULL,
  `productPrice` varchar(255) NOT NULL,
  `productQuantity` int(11) NOT NULL,
  `productSold` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`productID`, `productName`, `categoryID`, `originID`, `productDesc`, `productType`, `productPrice`, `productQuantity`, `productSold`) VALUES
(59, 'Mạch Cầu H 5A MCH-5A', 99, 4, 'Mạch cầu H 5A là một mạch đơn giản dùng để điều khiển động cơ DC và động cơ bước 2 cặp cực quay thuận hoặc quay nghịch\r\nCó diode chống ngược dòng để bảo vệ Mosfet\r\nMạch cầu H 5A sử dụng tín hiệu High và Low để điều chỉnh 2 cực điều khiển động cơ\r\nChức năng của các jump:\r\nJ1,J2: Thay đổi vị trí Jump chốt để chọn chế độ kết nối với động cơ\r\nJ1:2-3 ; J2:1-2 điều khiển động cơ 5-12VDC\r\nJ1:1-2 ; J2:2-3 Điều khiển động cơ >12VDC\r\nJ3 điều khiển tốc độ và chiều quay của động cơ\r\nJ4 chọn mức tín hiệu HIGH hoặc LOWg cách điện 600VAC/1mA/1s', 0, '90000', 8, 0),
(60, 'Mạch Cầu H 5A MCH-5A', 99, 4, 'Mạch cầu H 5A là một mạch đơn giản dùng để điều khiển động cơ DC và động cơ bước 2 cặp cực quay thuận hoặc quay nghịch\r\nCó diode chống ngược dòng để bảo vệ Mosfet\r\nMạch cầu H 5A sử dụng tín hiệu High và Low để điều chỉnh 2 cực điều khiển động cơ\r\nChức năng của các jump:\r\nJ1,J2: Thay đổi vị trí Jump chốt để chọn chế độ kết nối với động cơ\r\nJ1:2-3 ; J2:1-2 điều khiển động cơ 5-12VDC\r\nJ1:1-2 ; J2:2-3 Điều khiển động cơ >12VDC\r\nJ3 điều khiển tốc độ và chiều quay của động cơ\r\nJ4 chọn mức tín hiệu HIGH hoặc LOW', 0, '90000', 15, 0),
(61, 'Động Cơ Bước 5V STEP MOTOR 28BYJ-48 5VDC', 99, 4, 'Động cơ bước 28BYJ-48  là loại động cơ bước 5V đơn cực nhận tín hiệu điện làm đầu vào và quay bằng cách chuyển đổi các tín hiệu đầu vào thành chuyển động quay cơ học\r\nĐộng cơ bước 28BYJ-48 5V có bộ giảm tốc 1/64 và do đó di chuyển chính xác 64 bước trên mỗi vòng quay\r\nTần số của động cơ bước là 100Hz và khả năng cách điện 600VAC/1mA/1s', 0, '15000', 30, 0),
(62, 'Động Cơ Giảm Tốc V3 Màu Vàng 2 Trục GT130-148-2T', 99, 4, 'Động cơ DC giảm tốc có chức năng chính là hãm, giảm tốc độ vòng quay của động cơ với cơ cấu truyền động bằng bánh răng và có tỉ số truyền không đổi\r\nDải điện áp hoạt động rộng từ 3-12VDC giúp người sử dụng dễ dàng thay đổi điều chỉnh tốc độ động cơ bằng cách thay đổi điện áp nguồn cấp cho động cơ\r\nTốc độ không tải 120 vòng/phút tại mức điện áp 3VDC\r\nTốc độ không tải 208 vòng/ phút tại mức điện áp 5VDC\r\nThiết kế nhỏ gọn giúp người dùng dễ dàng lắp đặt theo nhu cầu sử dụng', 0, '20000', 9, 0),
(63, 'Động cơ mini 3-6V V2', 99, 4, 'Động cơ điện DC được sử dụng rộng rãi trong rất nhiều lĩnh vực có tác dụng chuyển đổi điện năng thành cơ năng\r\nĐộng cơ mini 3-6v v2 có tốc độ quay nhanh, mạnh và ổn định\r\nDễ dàng thay đổi điều chỉnh tốc độ động cơ bằng các thay đổi điện áp nguồn cấp cho động cơ\r\nThiết kế nhỏ gọn dễ dàng lắp đặt theo nhu cầu sử dụng', 0, '10000', 30, 0),
(64, '    Module Điều Khiển Động Cơ L298 V3', 99, 4, '- Module điều khiển động cơ L298 dùng để điều khiển các loại động cơ DC, động cơ bước và động cơ servo.\r\n- Module điều khiển động cơ L298 sử dụng 2 IC cầu H để điều khiển các động cơ.\r\n- Module có thể điều khiển nhiều loại motor khác nhau như step motor, servo motor, motor DC, với mức áp lên đến 36V, dòng tối đa 2000mA cho mỗi kênh điều khiển.\r\nTóm tắt qua chức năng các chân của L298:\r\n- 4 chân INPUT: IN1, IN2, IN3, IN4 được nối lần lượt với các chân 5, 7, 10, 12 của L298. Đây là các chân nhận tín hiệu điều khiển.\r\n- 4 chân OUTUT: OUT1, OUT2, OUT3, OUT4 (tương ứng với các chân INPUT) được nối với các chân 2, 3,13,14 của L298. Các chân này sẽ được nối với động cơ.\r\n- Hai chân ENA và ENB dùng để điều khiển mạch cầu H trong L298. Nếu ở mức logic “1” (nối với nguồn 5V) cho phép mạch cầu H hoạt động, nếu ở mức logic “0” thì mạch cầu H không hoạt động\r\n- Với bài toán của mình ở trên, các bạn chỉ cần lưu ý đến cách điều khiển chiều quay với L298:\r\n  + Khi ENA = 0: Động cơ không quay với mọi đầu vào.\r\n  + Khi ENA = 1:\r\n  + INT1 = 1; INT2 = 0: Động cơ quay thuận.\r\n  + INT1 = 0; INT2 = 1: Động cơ quay nghịch.\r\n  + INT1 = INT2: Động cơ dừng ngay tức thì\r\n  + Với ENB cũng tương tự với INT3, INT4.', 0, '80000', 5, 0),
(65, 'Module Điều Khiển Động Cơ DC6-90V 15A DK15', 99, 4, 'Module Điều Khiển Động Cơ DC6-90V 15A DK15 điều khiển động cơ theo phương pháp băm xung PWM, cho phép tốc độ động cơ thay đổi tăng giảm theo tuyến tính và không bị giật.\r\nSử dụng dễ dàng với 2 dây cấp nguồn và 2 dây ngõ ra động cơ.\r\nModule hoạt động với hiệu suất cao có thể điều khiểnđộng cơ có dòng lên đến 15A\r\nModule có chiết áp rời giúp người sử dụng dễ dàng điều chỉnh và thay đổi tốc độ quay của động cơ', 0, '80000', 15, 0),
(66, 'Module Relay Mini 1 Kênh 5V RL-M1-5V', 99, 4, '- Điều khiển đóng cắt relay, Có thể điều khiển trực tiếp bằng vi điều khiển (AVR, Arduino, STM, Pic,..) \r\n- Dùng để đóng cắt thiết bị thông qua relay, ứng dụng cho các công tắc điều khiển, nhà thông minh,...\r\n- Sử dụng làm relay trung gian đề điều khiển khởi động từ.\r\n- Kích thước nhỏ gọn.\r\n- Thay đổi mức tích cực dễ dàng băng jump chốt.', 0, '31000', 5, 0),
(67, 'Loa Báo Động Nháy Đèn Xanh Đỏ 12V MA-103RB', 99, 4, '- Còi hú báo động.\r\n- Còi hú báo động có nhấp nháy Xanh, Đỏ.\r\n- Điện Áp: 6 - 12v DC\r\n- Dòng tiêu thụ: 300mA\r\n- Công Suất : >=110DB\r\n- Kích thước: 118x67x26mm', 0, '75000', 11, 0),
(68, 'Loa Đèn 24V AD16-22SM Vàng', 99, 4, 'Đèn báo nguồn tích hợp thêm còi cảnh báo tiện lợi\r\nVỏ được làm từ nhựa cứng có độ bền cao, chịu va đập tốt\r\nĐèn sáng khi cảnh báo sẽ nháy sáng đỏ và phát âm thanh ngắt quãng\r\nThiết kế nhỏ gọn dễ lắp đặt và sử dụng', 0, '30000', 15, 0),
(69, 'Module Điều Khiển Động Cơ TB6612FNG', 99, 4, 'Module Điều Khiển Động Cơ TB6612FNG có 2 kênh điều khiển độc lập 2 động cơ cùng lúc với cường độ dòng diện 1.2A\r\nModule Điều Khiển Động Cơ TB6612FNG có thể điều khiển tốc độ động cơ bằng PWM với tần số lên đến 100KHZ\r\nHai tín hiệu ngõ vào có thể sử dụng để điều khiển motor ở 4 chế độ khác nhau như quay thuận, quay ngược, hãm, stop\r\nCó bảo vệ chống ngược nguồn, quá nhiệt và quá áp cho động cơ', 0, '90000', 25, 0),
(70, 'Đèn Báo 24V AD16-16DS Màu Vàng', 99, 4, 'Đèn báo pha được thiết kế dạng Led , thiết kế theo tiêu chuẩn châu\r\nĐèn sủ dụng 8 led cho độ sáng đều màu có tuổi thọ\r\nĐèn báo có nhiệm vụ hiển thị trạng thái nguồn, tín hiệu tác động giúp người vận hành quan sát và vận hành thiết bị an toàn\r\nĐược sử dụng trong báo có điện, báo pha ABC, báo tín hiệu ON, OFF, báo lỗi ERROR các thiết bị như biến tần\r\nVới đèn màu vàng thường được dùng cảnh báo trong tử điện và thiết bị khác', 0, '12000', 4, 0),
(71, 'Cáp Thuận FFC/FPC 0.5MM 24P 35CM', 98, 4, '- Cáp FFC là cáp tín hiệu (cáp phẳng linh hoạt) bao gồm một màng nhựa dẻo, phẳng với nhiều dây dẫn kim loại bên trong\r\n- Được dùng để làm dây kết nối giữa các mạch điện tử với nhau\r\n- Được sử dụng nhiều trong sản xuất TV, đầu đài, điện thoại...', 0, '5000', 12, 0),
(72, 'CON 3 KF301-3P 5.08MM Xanh Lá', 98, 4, '- Sử dụng làm cọc nối nguồn trong các mạch điện tử\r\n- Giúp kết nối các thiết bị ngoại vi với mạch điều khiển\r\n- Cố định các đầu dây kết nối bằng ốc vặn\r\n- Có thể ghép với nhau thành loại 6, 9,12 chân để phù hợp với mục đích sử dụng', 0, '2500', 13, 0),
(73, 'Đầu COS E7508 Xanh Lá (10 Chiếc)', 98, 4, '- Đầu cốt (Cos) tên tiếng Anh là COSSE hoặc Terminal là thiết bị kết nối trong ngành điện, có tác dụng truyền tải điện năng nhằm tăng khả năng dẫn điện giữa cáp điện với cáp điện hoặc giữa cáp điện với thiết bị khác\r\n- Cách chọn đầu cos: \r\n  + Chọn đầu cốt phù hợp với mục đích sử dụng, sau đó là chọn đúng kích thước Đầu cốt (Cos) dựa vào bán kính, tiết diện dây dẫn và các thông số kỹ thuật \r\n  của dây cáp điện để chọn, đây là điển tiếp xúc giữa vật dẫn (Conductor) và Đầu cốt (Cos).\r\n  + Cần lựa chọn dây dẫn phù hợp với kích thước đầu cốt giúp khả năng dẫn điện và thao tác khi bấm Đầu cốt dễ dàng hơn.\r\n  + Chọn đầu cốt cần xem xét loại dây dẫn có tiết diện như thế nào (Đầu Cos không quá lớn cũng không quá nhỏ dẫn đến không thế vừa, tiếp xúc kém, không \r\n  chắc chắn,…).', 0, '2000', 13, 0),
(74, 'IDE26 Đực Gài Thẳng 2.54MM', 98, 4, '- Connector là một thành phần quan trọng trong các thiết bị điện tử\r\n- Connector kết hợp với 1 số linh kiện có vai trò truyền dẫn tín hiệu, dòng điện trong các sản phẩm thực tế như PLC, máy chiếu, PC, module, KIT, Mạch nạp\r\n- Connector thường có kích thước nhỏ, gồm nhiều thành phần. làm từ nhựa và kim loại chất lượng cao nên việc truyền tải tín hiệu rất ổn định\r\n- Ứng dụng nhiều trong các mạch điện tử', 0, '4000', 6, 0),
(75, 'Bộ Jack GX12-4P', 98, 4, '- Jack dùng trong đo lường và điều khiển hệ thống, thiết bị kỹ thuật, Audio & Video, truyền thông, ô tô và các ngành công nghiệp khác', 0, '12000', 15, 0),
(76, 'USB B Cái DIP', 98, 4, '- Đầu Cắm USB B Cái DIP được dùng để kết nối các thiết bị ngoại vi cỡ lớn như máy in, máy scan.\r\n- Sử dụng để thay thế các cổng kết nối của máy in, máy scan…', 0, '2000', 16, 0),
(77, 'Jack Chuyển Đổi USB A Cái Sang DC5.5x2.1 Cái', 98, 4, '- Đổi đầu giao tiếp nguồn điện 2 chiều từ 5.5x2.1mm sang USB hoặc ngược lại.\r\n- Phần jack 5.5x2.1mm cũng có thể cắm loại 5.5x2.5mm vào.\r\nLưu ý: Jack cắm này thì chỉ có thể dùng để chuyển đổi nguồn điện, không sử dụng cho việc chuyển dữ liệu.', 0, '12000', 25, 0),
(78, 'CON 2 KF301-2P 5.08MM Xanh Lá (5 chiếc)', 98, 6, '- Sử dụng làm cầu đấu nối trong các mạch điện tử, giúp kết nối với dây điện, giữa thiết bị ngoại vi với mạch.\r\n- Connector được sử dụng hàn trực tiếp trên mạch in\r\n- Đầu cuối PCB cho nguồn,...', 0, '7500', 15, 0),
(79, 'Dây Trắng 3P XH2.54-3P 50CM', 98, 4, '- Dây Trắng 3P XH2.54-3P 50CM sử dụng để kết nối các header trên mạch\r\n- Có 2 đầu header với chuẩn dây bấm song song\r\n- Có dây đồng mạ thiếc bên ngoài chống oxy hóa và dễ bám thiếc trong quá trình hàn\r\n- Được sử dụng để làm dây kết nối giữa các mạch điện tử hay các thiết bị điện tử\r\n- Dùng để giữ mạch điện tử với các thiết bị ngoại vi\r\n- Sử dụng để cung cấp nguồn hay làm dây tín hiệu', 0, '4000', 12, 0),
(80, 'Dây USB A-TypeC 15CM', 98, 4, '- Dây USB A-TypeC 15CM có thiết kế nhỏ gọn với chiều dài 15cm, tốc độ đường truyền cao\r\n- Có tốc độ cao lên đến 5Gb\r\n- Chất liệu vỏ dây nhựa PVC chất lượng cao , to bền đẹp mang lại độ bền và hiệu năng tốt hơn\r\n- Sản phẩm tương thích với nhiều thiết bị và phụ kiện, cắm là có thể sử dụng không cần cài phần mềm\r\n- Dây USB A-TypeC 15CM hỗ trợ sạc cho thiết bị có cổng kết nối thuộc Type C dễ dàng sử dụng trong những trường hợp khẩn cấp\r\n- Sản phẩm có jack cắm được gia cố để tránh trình trạng hư hỏng và dây cáp được thiết kế chống rối', 0, '10000', 13, 0),
(81, 'Jack DC3.5x1.3MM DC003A', 98, 4, '- Được làm từ chất liệu nhựa và kim loại, với tông màu màu đen.\r\n- PCB gắn kết có thể sử dụng cho micrô, tai nghe, tai nghe, radio, âm thanh, video.\r\n- Ổ cắm PCB 3 chân 3.5mm này sẽ là vật dụng lý tưởng để thay thế cho ổ cắm PCB 3.5mm bị hỏng.\r\n- Thích hợp cho tất cả các loại thiết bị gia dụng nhỏ, đồ chơi, kỹ thuật số, máy bay không người lái, v.v..', 0, '1500', 14, 0),
(82, 'Jack Chuyển Đổi USB A Đực Sang DC5.5x2.1 Cái', 98, 8, '- Đổi đầu giao tiếp nguồn điện 2 chiều từ 5.5x2.1mm sang USB hoặc ngược lại.\r\n- Phần jack 5.5x2.1mm cũng có thể cắm loại 5.5x2.5mm vào', 0, '12000', 13, 0),
(83, '74HC595 DIP16', 96, 4, '74HC595 là một thanh ghi dịch (shift register) hoạt động trên giao thức nối tiếp vào song song ra (Serial IN Parallel OUT).\r\n74HC595 nhận dữ liệu nối tiếp từ vi điều khiển và sau đó gửi dữ liệu này qua các chân song song.\r\nĐiện áp đầu ra bằng điện áp hoạt động của IC này\r\n74HC595 dựa trên công nghệ logic CMOS và do đó tiêu thụ điện năng rất thấp là 80uA\r\n74HC595 có khả năng chống nhiễu cao\r\nMạch Schmitt trigger có trên tất cả các đầu vào\r\nThường được sử dụng với bộ vi điều khiển hoặc bộ vi xử lý để mở rộng các chức năng của GIPO\r\nDự án LED ma trận / khối lập phương\r\nGiao diện LCD\r\nỨng dụng xếp tầng\r\nBộ điều khiển mức logic cao\r\nLa thiết bị phù hợp trong cho sinh viên , kỹ sư trong ngành điện tử', 0, '3000', 25, 0),
(84, 'ESP32-D0WDQ6 QFN48 6x6', 96, 4, '- ESP32 là chip kết hợp Wi-Fi và Bluetooth 2,4 GHz được thiết kế với công nghệ 40 nm siêu tiết kiệm năng lượng TSMC. Nó được thiết kế để đạt được công suất và hiệu suất RF tốt nhất, thể hiện tính mạnh mẽ, tính linh hoạt và độ tin cậy trong nhiều ứng dụng.', 0, '70000', 24, 0),
(85, 'TPS73133 SMD', 96, 4, ' ', 0, '75000', 13, 0),
(86, 'MCP23017-ESO SOP28 ', 96, 4, ' ', 0, '12000', 13, 0),
(87, 'TD62084AFG SOP18', 96, 4, ' ', 0, '15000', 13, 0),
(88, 'TSC2100IDA SSOP32', 96, 4, ' ', 0, '80000', 15, 0),
(89, 'UC3611DW SOIC16', 96, 6, ' ', 0, '10000', 25, 0),
(90, 'UC3638DW SOIC20', 96, 9, ' ', 0, '75000', 15, 0),
(91, 'Combo 200 Led 5MM 5 Màu', 95, 4, '- Dùng trong các mạch đèn nháy, bảng đèn led quảng cáo,....', 0, '40000', 11, 0),
(92, 'Mạch Điều Khiển Led Cầu Thang Thông Minh', 95, 4, 'Mạch Điều Khiển Led Cầu Thang Thông Minh là mạch điều khiển led trang trí cầu thang tự động bât/tắt khi có người lên xuống\r\nCảm biến chuyển động siêu nhạy \r\nMạch hỗ trợ điều khiển tối đa 32 bậc cầu thang với công suất lên đến 400W\r\nNút nhấn tích hợp sẵn trên mạch giúp khách hàng có thể dễ dàng cài đặt số bậc và tốc độ sáng của Led\r\nĐặc biệt mạch còn có tính năng sáng từ hai đầu vào giữa khi có cùng lúc hai người lên và xuống cầu thang\r\n\r\n\r\nHướng dẫn sử dụng\r\n', 0, '899000', 12, 0),
(93, 'Bộ Điều Khiển Led Dây 5050 RGB Qua Bluetooth', 95, 6, 'Bộ điều khiển bluetooth mini (dc) này là một bộ điều khiển LED thông minh không dây với công nghệ bluetooth 4.0 mới nhất.\r\nSản phẩm này phù hợp với hệ thống Android 4.3 trở lên (bao gồm 4.3), Apple (ios) hệ thống 6.0 trở lên 4S, v.v.\r\nĐiểu khiển thay đổi màu sắc đến 16 triệu màu, đặt lịch hẹn giờ..\r\nHổ trợ điều khiển bằng giọng nói qua Alexa hoặc Google Home...đối với loại kết nối wifi.\r\nDùng được với các loại Led dây RGB\r\nChạy hiệu ứng theo nhạc, theo micro, tự điều chỉnh hiệu ứng..\r\nBộ sản phẩm chỉ có remote và bộ điều khiển không kèm nguồn.', 0, '50000', 25, 0),
(94, 'Đèn Led Hoàng Hôn 16 Màu Có Điều Khiển', 95, 4, 'RGB màu sắc ánh sáng, tổng cộng 16 màu sắc ánh sáng có thể được lựa chọn\r\nSử dụng CREE COB 12W LED, sáng hơn và rõ ràng hơn.\r\nUltra-mỏng ống kính, cao hơn ánh sáng truyền qua, rộng hơn sáng phạm vi.\r\nCó thể điều chỉnh rèn sắt phổ khóa để đáp ứng các nhu cầu của ánh sáng tiêu thụ từ sự khác biệt góc độ\r\nĐộ bền cao, chống ăn mòn và chống gỉ\r\nNguồn điện USB 5V 5W, cáp có công tắc, cáp USB dài 1.5 mét.', 0, '165000', 25, 0),
(95, 'Led Dây Dán 5050 WS2812 5V Không Keo (1 Mét 60 Bóng)', 95, 4, '- Các hiệu ứng có thể được tùy chỉnh theo nhu cầu của khách hàng, lập trình và xây dựng hiệu ứng dưới dạng màn hình có thể hiển thị văn bản, chữ cái, hình ảnh, hoạt hình, v.v.\r\n- An toàn khi sử dụng: Sủ dụng đèn LED SMD 5050 chất lượng với độ sáng cao. Tiêu thụ điện năng thấp, sinh nhiệt thấp, không chói và chống va đập. Cung cấp điện áp thấp DC 5V, độ an toàn và độ tin cậy cao.\r\n- Màu sắc phong phú và đa dạng có thể được điều chỉnh tùy ý thông qua bộ điều khiển theo nhu cầu của khách hàng.\r\n- Tuổi thọ dài: Tuổi thọ trung bình là 50.000 giờ.\r\n- Cắt và hàn thuận tiện và đơn giản: mỗi đèn LED là 1 IC điều khiển độc lập có thể cắt số lượng LED tùy ý và có thể hàn các đoạn led lại với nhau để đáp ứng các yêu cầu của khách hàng về các chiều dài dây LED khác nhau.\r\n- Bề mặt dây: sử dụng bảng FPCB mềm làm đế, có thể được dán, uốn, cắt và cố định trên bề mặt không bằng phẳng theo ý muốn.\r\n- Nhẹ và mỏng: thích hợp để lắp đặt trong không gian hẹp.', 0, '85000', 15, 0),
(96, 'Mạch Đồng Hồ Nháy Theo Nhạc CE-01 Plus', 95, 4, 'Hiển thị thời gian với 3 chế độ giao diện khác nhau\r\nHiển thị ngày tháng dương lịch và âm lịch\r\nHiển thị nhiệt độ\r\nLED nháy theo nhạc thông qua cảm biến âm thanh hoặc kết nối qua Jack Audio 3.5mm\r\nCó 11 chế độ nháy theo nhạc và 1 chế độ nháy Random\r\nTùy chỉnh cài đăt thời gian, ngày tháng, nhiệt độ, thay đổi hiệu ứng LED nháy theo nhạc bằng remote hoặc bằng nút nhấn(có giấy HDSD đi kèm)\r\nTương thích với Module LED P5 Full Color', 0, '280000', 13, 0),
(97, 'Module LED P5 Full Color Trong Nhà', 95, 4, ' ', 0, '235000', 12, 0),
(98, 'LED Dây 5050 24V Trắng Sáng PN (Cuộn 5M)', 95, 4, ' ', 0, '290000', 13, 0),
(99, 'Led Dây Dán 5050 WS2812 5V Không Keo Cuộn 5M (1 Mét 60 Bóng)', 95, 4, '- Led dây 5050 WS2812 dùng quảng cáo, trang trí cửa hàng, nhà cửa, xe máy...\r\n- Led Full color khi kết hợp với các mạch điều khiển cho các hiệu ứng rất đẹp mắt, thú vị...\r\n- Bên trong mỗi bóng led đã bao gồm 1 IC điều khiển riêng,\r\n- Giao tiếp nối tiếp giúp dễ dàng tạo thành các dải ánh sáng đẹp mắt\r\n- LED dạng dây dán có sẵn keo, dễ dàng tạo hình và dán vào nhiều bề mặt khác nhau', 0, '450000', 12, 0),
(100, 'Led Matrix 8x8 3MM 32x32MM 2 Mầu Xanh Đỏ Katot 1388ASRG-24PIN', 95, 4, 'Led Matrix 8x8 là một hệ thống các bóng đèn LED có nhiệt độ và màu sắc khác nhau với những chip cấu tạo, sắp xếp theo các trật tự nhất định\r\nLED ma trận  8x8 này cho phép người dùng lập trình hiển thị những nội dung dạng chữ, video, hình ảnh..\r\nLed Matrix 8x8 3MM 32x32MM 2 Mầu Xanh Đỏ Katot 1388ASRG cấu tạo từ các cặp led xanh và đỏ với các chân katot được nối chung với nhau theo từng cột', 0, '5000', 13, 0),
(101, 'Bộ Chụp Và Tản Nhiệt LED 44MM 20-60W 60 Độ LED-20-TN44', 95, 4, 'Bộ Chụp Và Tản Nhiệt LED 44MM-20-60W 60 Độ\r\n\r\n\r\n\r\n- Dùng để chụp led, kèm tản nhiệt\r\n- Dùng trong việc trang trí, bảo vệ LED\r\n\r\n- Phù hợp với loại LED 20-60W\r\n- Đường kính 44mm\r\n- Góc chiếu 60°\r\n\r\n-  Sản phẩm được nhập trực tiếp từ nhà sản xuất.', 0, '280000', 5, 0),
(102, 'Đầu Bịt Ống Silicon Bọc Led 5050 (10c)', 95, 4, '  ', 0, '12000', 5, 0),
(104, 'Diode Cầu 1A 1000V DBS10 SOP4', 94, 4, ' Diode cầu là một linh kiện điện tử được cấu tạo từ 2 lớp bán dẫn tiếp xúc với nhau\r\nDiode là 1 loại linh kiện bán dẫn chỉ cho phép dòng điện đi qua nó theo 1 chiều mà không theo chiều ngược lại\r\nCó 2 cực Anode và Cathode\r\nDiode cầu chỉ là một cách gọi khác khi bạn thực hiện lắp đồng thời 4 chiếc diode theo hình cầu\r\nCông dụng chính của diode cầu trong mạch điện là chỉnh lưu dòng xoay chiều thành dòng một chiều.\r\nỨng dụng', 0, '12000', 15, 0),
(105, 'Thyristor BTW691200', 94, 4, 'Thyristor là một trong những linh kiện điện tử bán dẫn không thể thiếu trong các bo mạch điện tử\r\nThyristor hay còn được gọi là chỉnh lưu silic có điều khiển , được cấu tạo từ bốn lớp bán dẫn\r\nThyristor bản chất là một điốt được ghép từ 2 transistor với hai chiều đối nghịch và có thể điều khiển được\r\nThyristor có cấu tạo gồm có 3 cực như sau : Anode (A), cathode (K), cực điều khiển (G), thyristor đóng vai trò như một khóa điện tử có điều khiển bằng điện\r\nĐặc tính của thyristor chỉ cho phép dẫn điện từ Anode (A) sang Cathode (K) khi cho một dòng điện kích thích vào chân G', 0, '15000', 5, 0),
(106, 'AO3401 SOT23-3 MOSFET P-1CH 4A 30V(A19T,X1,X1GL)(5c)', 94, 4, 'MOSFET : transistor hiệu ứng trường được sử dụng rất phổ biến trong các mạch số và các mạch tương tự.\r\nTransistor MOSFET được xây dựng dựa trên lớp chuyển tiếp Oxit Kim loại và bán dẫn (ví dụ Oxit Bạc và bán dẫn Silic)\r\nMosfet có nguyên tắc hoạt động dựa trên hiệu ứng từ trường để tạo ra dòng điện.', 0, '12000', 13, 0),
(107, 'CT40TMH IGBT 200A', 94, 4, 'Sản phẩm đã được kiểm tra trước khi giao cho khách hàng.\r\nSản phẩm được đổi trả trong vòng 7 ngày kể từ khi khách nhận được hàng nếu có lỗi của nhà sản xuất (không áp dụng đối với trường hợp cháy nổ).\r\nCửa hàng không áp dụng bảo hành đối với sản phẩm này.', 0, '15000', 13, 0),
(108, 'MJE13003 E13003 TO126 NPN 400V 1.5A (5 chiếc)', 94, 4, 'nh năng sản phẩm\r\nTransistor hay còn gọi là tranzito là một loại linh kiện bán dẫn chủ động\r\nTransistor được tạo thành từ hai chất bán dẫn điện\r\nKhi ghép một bán dẫn điện âm nằm giữa hai bán dẫn điện dương ta được một PNP Transistor - ghép một bán dẫn điện dương nằm giữa hai bán dẫn điện âm ta được một NPN Transistor.\r\nThường được sử dụng như một phần tử khuếch đại hay khóa điện tử\r\nTransistor cũng được kết hợp thành mạch tích hợp (IC)', 0, '7500', 11, 0),
(109, 'S9014 SOT23 TRANS NPN 0.1A 45V (J6) (10c)', 94, 4, ' ', 0, '15000', 13, 0),
(110, 'Trở 1206 5% 68K (50c)', 93, 4, 'Điện trở là linh kiện được dùng nhiều nhất trong các mạch điện tử. Công dụng chính của nó là hạn chế hoặc điều chỉnh dòng điện và phân chia điện áp trong mạch điện.', 0, '3500', 5, 0),
(111, 'Cuộn Cảm Vạch 10mH 1W 0510 (5 chiếc)', 93, 4, 'Cuộn cảm là một loại linh kiện điện tử thụ động tạo từ một dây dẫn điện với vài vòng quấn, sinh ra từ trường khi có dòng điện chạy qua\r\nTrong kỹ thuật điện tử, cuộn cảm thường dùng để dẫn dòng điện một chiều, chặn dòng điện cao tần và khi mắc phối hợp với tụ điện sẽ hình thành mạch cộng hưởng.\r\nCuộn cảm cũng có hai chân nhưng cả hai đều không phân cực và cắm chiều nào cũng được.\r\nTrong mạch điện tử, cuộn cảm là vật dụng dùng để dẫn dòng điện một chiều. Ghép nối hay ghép song song với tụ để tạo thành mạch cộng hưởng', 0, '7500', 5, 0),
(112, 'Cầu Chì 5A 3x10MM (10c)', 93, 4, 'Cầu chì được sử dụng để bảo vệ mạch điện bằng nguyên lý hoạt động đơn giản là khi có dòng điện tăng đột biến đi qua sẽ làm dây chì bên trong nóng chảy làm ngắt mạch điện.\r\nCấu tạo bên trong cầu chì gồm 2 đầu đấu nối tiếp trong mạch điện , bên trong gồm 1 dây kim loại mảnh có nhiệt độ nóng chảy thấp\r\nBộ phân cơ bản của cầu chì là dây chảy , dây chảy được làm bằng chất liệu có nhiệt độ nóng chảy thấp như chì, kẽm , đồng ..', 0, '5000', 13, 0),
(113, 'Module Điện Trở Nhiệt NTC', 93, 4, 'Module Điện Trở Nhiệt NTC sử dụng điện trở nhiệt NTC độ nhạy tốt dễ dàng phát hiện sự thay đổi nhiệt độ của môi trường xung quanh\r\nĐiều chỉnh ngưỡng phát hiện nhiệt độ thay đổi bằng chiết áp\r\nPhạm vi phát hiện nhiệt độ thay đổi từ 20-80 độ C\r\nDạng Tín hiệu đầu ra của module là tín hiệu Digital 0, 1 (chân D0)', 0, '10000', 25, 0),
(114, 'Điện Trở Nhiệt NTC8D-13', 93, 4, 'Điện trở là một loại linh kiện thụ động, đặc trưng cho khả năng cản trở dòng điện.\r\nĐiện trở nhiệt hay nhiệt điện trở hay thermistor là loại điện trở có trở kháng thay đổi dưới quá trình nhiệt độ thay đổi, khác biệt so với các loại điện trở thông thường.\r\nĐiện trở nhiệt NTC 8D-13 là một nghịch nhiệt trở, trở kháng của điện trở giảm khi nhiệt độ tăng.\r\nHoạt động trong môi trường nhiệt độ cao và độ ẩm, cảm ứng nhiệt nhanh, độ nhạy cao', 0, '2000', 11, 0),
(115, 'Tụ CBB 224J 630V 10MM', 93, 4, 'Tụ CBB 224J 630V là tụ không phân cực, tính chất của nó là cho dòng điện xoay chiều đi qua và cản dòng điện một chiều\r\nKhi mắc phối hợp với cuộn cảm sẽ hình thành mạch cộng hưởng\r\nTụ điện có khả năng lọc điện áp xoay chiều sau khi đã được chỉnh lưu\r\n', 0, '2000', 5, 0),
(116, 'Trở 2512 5% 7R5-7.5R 1W (5 chiếc)', 93, 4, 'Điện trở là linh kiện được dùng nhiều nhất trong các mạch điện tử. Công dụng chính của nó là hạn chế hoặc điều chỉnh dòng điện và phân chia điện áp trong mạch điện.\r\nỨng dụng: Hạn chế dòng điện, phân áp, phân cực transistor, tham gia vào các mạch lọc, mạch tạo dao động, mạch khuếch đại, ...', 0, '4000', 11, 0),
(117, 'Trở Sứ 5W 5% 10K (5 chiếc)', 93, 4, '- Điện trở là linh kiện được dùng nhiều nhất trong các mạch điện tử. Công dụng chính của nó là hạn chế hoặc điều chỉnh dòng điện và phân chia điện áp trong mạch điện.\r\n- Ứng dụng: hạn chế dòng điện, phân áp, phân cực transistor, tham gia vào các mạch lọc, mạch tạo dao động, mạch khuếch đại, ...', 0, '7500', 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_image`
--

CREATE TABLE `tbl_product_image` (
  `imageID` int(11) NOT NULL,
  `productID` int(10) UNSIGNED NOT NULL,
  `productImage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product_image`
--

INSERT INTO `tbl_product_image` (`imageID`, `productID`, `productImage`) VALUES
(283, 64, 'Module Điều Khiển Động Cơ L298 V3.png'),
(357, 117, 'Screenshot 2023-04-23 032835.png'),
(360, 116, 'Screenshot 2023-04-23 032929.png'),
(361, 115, 'Tụ CBB 224J 630V 10MM.png'),
(363, 113, 'Điện Trở Nhiệt NTC8D-13.png'),
(364, 114, 'Module Điện Trở Nhiệt NTC.png'),
(365, 112, 'Cầu Chì 5A 3x10MM.png'),
(366, 111, 'Cuộn Cảm Vạch 10mH 1W 0510.png'),
(368, 110, 'Screenshot 2023-04-23 033210.png'),
(369, 109, 'S9014 SOT23 TRANS NPN 0.1A 45V.png'),
(370, 108, 'MJE13003 E13003 TO126 NPN 400V 1.5A.png'),
(371, 107, 'CT40TMH IGBT 200A.png'),
(372, 106, 'AO3401 SOT23-3 MOSFET P-1CH 4A 30V.png'),
(373, 105, 'Thyristor BTW691200.png'),
(374, 104, 'Diode Cầu 1A 1000V DBS10 SOP4.png'),
(375, 102, 'Đầu Bịt Ống Silicon Bọc Led 5050 (10c).png'),
(376, 101, 'Bộ Chụp Và Tản Nhiệt LED 44MM 20-60W 60 Độ LED-20-TN44.png'),
(377, 100, 'Led Matrix 8x8 3MM 32x32MM 2 Mầu Xanh Đỏ Katot 1388ASRG-24PIN.png'),
(378, 99, 'Led Dây Dán 5050 WS2812 5V Không Keo (1 Mét 60 Bóng).png'),
(379, 98, 'LED Dây 5050 24V Trắng Sáng PN (Cuộn 5M).png'),
(380, 97, 'Module LED P5 Full Color Trong Nhà.png'),
(381, 96, 'Mạch Đồng Hồ Nháy Theo Nhạc CE-01 Plus.png'),
(382, 95, 'Led Dây Dán 5050 WS2812 5V Không Keo (1 Mét 60 Bóng)(1).png'),
(383, 94, 'Đèn Led Hoàng Hôn 16 Màu Có Điều Khiển.png'),
(384, 93, 'Bộ Điều Khiển Led Dây 5050 RGB Qua Bluetooth.png'),
(385, 92, 'Mạch Điều Khiển Led Cầu Thang Thông Minh.png'),
(386, 91, 'Combo 200 Led 5MM 5 Màu.png'),
(387, 90, 'UC3638DW SOIC20.png'),
(388, 89, 'UC3611DW SOIC16.png'),
(389, 88, 'TSC2100IDA SSOP32.png'),
(390, 87, 'TD62084AFG SOP18.png'),
(391, 86, 'MCP23017-ESO SOP28 .png'),
(392, 85, 'TPS73150 SMD.png'),
(393, 84, 'TPS73150 SMD(1).png'),
(394, 83, '74HC595 DIP16.png'),
(395, 82, 'Jack Chuyển Đổi USB A Đực Sang DC5.5x2.1 Cái.png'),
(396, 81, 'Jack DC3.5x1.3MM DC003A.png'),
(397, 80, 'Dây USB A-TypeC 15CM.png'),
(398, 79, 'Dây Trắng 3P XH2.54-3P 50CM.png'),
(399, 78, 'CON 2 KF301-2P 5.08MM Xanh Lá (5 chiếc).png'),
(400, 77, 'Jack Chuyển Đổi USB A Cái Sang DC5.5x2.1 Cái.png'),
(401, 76, 'USB B Cái DIP.png'),
(402, 75, 'Bộ Jack GX12-4P.png'),
(403, 74, 'IDE26 Đực Gài Thẳng 2.54MM.png'),
(404, 73, 'Đầu COS.png'),
(405, 72, 'CON 3 KF301-3P 5.08MM Xanh Lá.png'),
(406, 71, 'Screenshot 2023-04-22 232930.png'),
(407, 70, 'Đèn Báo 24V AD16-16DS Màu Vàng.png'),
(408, 69, 'Module Điều Khiển Động Cơ TB6612FNG.png'),
(410, 68, 'Loa Đèn 24V AD16-22SM Vàng.png'),
(411, 67, 'Loa Báo Động Nháy Đèn Xanh Đỏ 12V MA-103RB.png'),
(412, 66, 'Module Relay Mini 2 Kênh 12V RL-M2-12V.png'),
(413, 65, 'Module Điều Khiển Động Cơ L298 V3.png'),
(414, 63, 'Động cơ mini 3-6V V2.png'),
(415, 62, 'Động Cơ Giảm Tốc V3 Màu Vàng 2 Trục GT130-148-2T.png'),
(416, 61, 'Động Cơ Bước 5V STEP MOTOR 28BYJ-48 5VDC.png'),
(417, 60, 'Mạch Cầu H 5A MCH-5A.png'),
(418, 59, 'Mạch Cầu H 5A MCH-5A(1).png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `sliderID` int(11) NOT NULL,
  `sliderTitle` varchar(255) NOT NULL,
  `sliderImage` varchar(255) NOT NULL,
  `sliderType` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`sliderID`, `sliderTitle`, `sliderImage`, `sliderType`) VALUES
(35, 'siler1', 'Screenshot 2023-04-22 140256.png', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `wishlistID` int(11) NOT NULL,
  `customerID` int(10) UNSIGNED NOT NULL,
  `productID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartID`),
  ADD KEY `productID` (`productID`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customerID`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `productID` (`productID`,`customerID`),
  ADD KEY `customerID` (`customerID`);

--
-- Indexes for table `tbl_origin`
--
ALTER TABLE `tbl_origin`
  ADD PRIMARY KEY (`originID`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productID`),
  ADD KEY `categoryID` (`categoryID`,`originID`),
  ADD KEY `originID` (`originID`);

--
-- Indexes for table `tbl_product_image`
--
ALTER TABLE `tbl_product_image`
  ADD PRIMARY KEY (`imageID`),
  ADD KEY `productID` (`productID`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`sliderID`);

--
-- Indexes for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`wishlistID`),
  ADD KEY `customerID` (`customerID`,`productID`),
  ADD KEY `productID` (`productID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `categoryID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customerID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_origin`
--
ALTER TABLE `tbl_origin`
  MODIFY `originID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `tbl_product_image`
--
ALTER TABLE `tbl_product_image`
  MODIFY `imageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=419;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `sliderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `wishlistID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD CONSTRAINT `tbl_cart_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `tbl_product` (`productID`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `tbl_order_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `tbl_customer` (`customerID`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_order_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `tbl_product` (`productID`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`categoryID`) REFERENCES `tbl_category` (`categoryID`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_product_ibfk_2` FOREIGN KEY (`originID`) REFERENCES `tbl_origin` (`originID`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_product_image`
--
ALTER TABLE `tbl_product_image`
  ADD CONSTRAINT `tbl_product_image_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `tbl_product` (`productID`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD CONSTRAINT `tbl_wishlist_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `tbl_product` (`productID`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_wishlist_ibfk_2` FOREIGN KEY (`customerID`) REFERENCES `tbl_customer` (`customerID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
