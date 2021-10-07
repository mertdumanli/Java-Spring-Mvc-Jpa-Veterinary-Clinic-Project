-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 26 Eyl 2021, 14:06:02
-- Sunucu sürümü: 10.4.21-MariaDB
-- PHP Sürümü: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `vetproject`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `address`
--

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `cu_address` varchar(255) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `did` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `address`
--

INSERT INTO `address` (`address_id`, `cu_address`, `cid`, `did`) VALUES
(1, 'İSTANBUL', 7, 98),
(2, 'MANİSA', 7, 104),
(3, 'MARDİN', 47, 703),
(4, 'MARDİN', 47, 703),
(5, 'MARDİN', 47, 703),
(6, 'MARDİN', 47, 703),
(7, 'MARDİN', 47, 703),
(8, 'İZMİR', 6, 72),
(9, 'İZMİR', 6, 72),
(10, 'İZMİR', 4, 45),
(11, 'İZMİR', 4, 45),
(12, 'Ö', 10, 160),
(13, 'Ö', 10, 160),
(14, '1', 6, 71),
(15, '1', 6, 71);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `breed_pet`
--

CREATE TABLE `breed_pet` (
  `br_id` int(11) NOT NULL,
  `br_name` varchar(255) DEFAULT NULL,
  `type_pet_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `breed_pet`
--

INSERT INTO `breed_pet` (`br_id`, `br_name`, `type_pet_id`) VALUES
(1, 'Aksolotl', 1),
(2, 'Iguana', 1),
(3, 'Kapuçin maymunu', 1),
(4, 'Timsah', 1),
(5, 'Kapibara', 1),
(6, 'Papağan', 2),
(7, 'Flamingo', 2),
(8, 'Serçe', 2),
(9, 'Kartal', 2),
(10, 'Karga', 2),
(11, 'Persian', 3),
(12, 'British Shorthair', 3),
(13, 'Devon Rex', 3),
(14, 'Abyssinian', 3),
(15, 'American Shorthair', 3),
(16, 'Labrador Retriever', 4),
(17, 'Shetland Sheepdog', 4),
(18, 'Golden Retriever', 4),
(19, 'Shih Tzu', 4),
(20, 'Siberian Husky', 4),
(21, 'Manda', 5),
(22, 'At', 5),
(23, 'Eşek', 5),
(24, 'Katır', 5),
(25, 'Sığır', 5),
(26, 'Koyun', 6),
(27, 'Keçi', 6),
(28, 'Ördek', 6),
(29, 'Tavuk', 6),
(30, 'Horoz', 6),
(31, 'Tavuskuşu', 7),
(32, 'Arizona Kertenkelesi', 7),
(33, 'Zebra', 7),
(34, 'Dev Yumuşak Kabuklu Kaplumbağa', 7),
(35, 'Zürafa', 7),
(36, 'Boz ayı', 8),
(37, 'Bozkurt', 8),
(38, 'Hatay Dağ Ceylanı', 8),
(39, 'Akdeniz Foku', 8),
(40, 'Anadolu dikenli faresi', 8);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `calendar_info`
--

CREATE TABLE `calendar_info` (
  `cid` int(11) NOT NULL,
  `cbg_color` varchar(255) DEFAULT NULL,
  `cborder_color` varchar(255) DEFAULT NULL,
  `ccolor` varchar(255) DEFAULT NULL,
  `cdrag_bg_color` varchar(255) DEFAULT NULL,
  `cname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `calendar_info`
--

INSERT INTO `calendar_info` (`cid`, `cbg_color`, `cborder_color`, `ccolor`, `cdrag_bg_color`, `cname`) VALUES
(1, '#4287f5', '#4287f5', '#ffffff', '#9e5fff', 'Randevu'),
(2, '#f5a742', '#f5a742', '#ffffff', '#9e5fff', 'Mübesil'),
(3, '#6cf542', '#6cf542', '#ffffff', '#9e5fff', 'Hasta'),
(4, '#f54242', '#f54242', '#ffffff', '#9e5fff', 'Takvim');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_detail` varchar(40) NOT NULL,
  `category_title` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `category`
--

INSERT INTO `category` (`category_id`, `category_detail`, `category_title`) VALUES
(1, 'Pamuk, makas vs.', 'Araç-Gereç'),
(2, 'Yiyecek', 'Mama'),
(3, 'Çiftlik Hayvanları için genel malzemeler', 'Çiftlik Ürünleri'),
(4, 'Hayvanlar için hızlı test kitleri', 'Hızlı Test Kitleri');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `city`
--

CREATE TABLE `city` (
  `cid` int(11) NOT NULL,
  `cname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `city`
--

INSERT INTO `city` (`cid`, `cname`) VALUES
(1, 'ADANA'),
(2, 'ADIYAMAN'),
(3, 'AFYON'),
(4, 'AĞRI'),
(5, 'AMASYA'),
(6, 'ANKARA'),
(7, 'ANTALYA'),
(8, 'ARTVİN'),
(9, 'AYDIN'),
(10, 'BALIKESİR'),
(11, 'BİLECİK'),
(12, 'BİNGÖL'),
(13, 'BİTLİS'),
(14, 'BOLU'),
(15, 'BURDUR'),
(16, 'BURSA'),
(17, 'ÇANAKKALE'),
(18, 'ÇANKIRI'),
(19, 'ÇORUM'),
(20, 'DENİZLİ'),
(21, 'DİYARBAKIR'),
(22, 'EDİRNE'),
(23, 'ELAZIĞ'),
(24, 'ERZİNCAN'),
(25, 'ERZURUM'),
(26, 'ESKİŞEHİR'),
(27, 'GAZİANTEP'),
(28, 'GİRESUN'),
(29, 'GÜMÜŞHANE'),
(30, 'HAKKARİ'),
(31, 'HATAY'),
(32, 'ISPARTA'),
(33, 'İÇEL'),
(34, 'İSTANBUL'),
(35, 'İZMİR'),
(36, 'KARS'),
(37, 'KASTAMONU'),
(38, 'KAYSERİ'),
(39, 'KIRKLARELİ'),
(40, 'KIRŞEHİR'),
(41, 'KOCAELİ'),
(42, 'KONYA'),
(43, 'KÜTAHYA'),
(44, 'MALATYA'),
(45, 'MANİSA'),
(46, 'KAHRAMANMARAŞ'),
(47, 'MARDİN'),
(48, 'MUĞLA'),
(49, 'MUŞ'),
(50, 'NEVŞEHİR'),
(51, 'NİĞDE'),
(52, 'ORDU'),
(53, 'RİZE'),
(54, 'SAKARYA'),
(55, 'SAMSUN'),
(56, 'SİİRT'),
(57, 'SİNOP'),
(58, 'SİVAS'),
(59, 'TEKİRDAĞ'),
(60, 'TOKAT'),
(61, 'TRABZON'),
(62, 'TUNCELİ'),
(63, 'ŞANLIURFA'),
(64, 'UŞAK'),
(65, 'VAN'),
(66, 'YOZGAT'),
(67, 'ZONGULDAK'),
(68, 'AKSARAY'),
(69, 'BAYBURT'),
(70, 'KARAMAN'),
(71, 'KIRIKKALE'),
(72, 'BATMAN'),
(73, 'ŞIRNAK'),
(74, 'BARTIN'),
(75, 'ARDAHAN'),
(76, 'IĞDIR'),
(77, 'YALOVA'),
(78, 'KARABÜK'),
(79, 'KİLİS'),
(80, 'OSMANİYE'),
(81, 'DÜZCE');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `color_pet`
--

CREATE TABLE `color_pet` (
  `color_id` int(11) NOT NULL,
  `color_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `color_pet`
--

INSERT INTO `color_pet` (`color_id`, `color_name`) VALUES
(1, 'Siyah'),
(2, 'Sarı'),
(3, 'Mavi'),
(4, 'Yeşil'),
(5, 'Beyaz'),
(6, 'Mor'),
(7, 'Eflatun'),
(8, 'Bordo'),
(9, 'Pembe'),
(10, 'Kahverengi'),
(11, 'Lacivert'),
(12, 'Gri'),
(13, 'Bej'),
(14, 'Turuncu'),
(15, 'Kızıl');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `customer`
--

CREATE TABLE `customer` (
  `cu_id` int(11) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `cu_mail` varchar(255) DEFAULT NULL,
  `cu_mail_notice` varchar(255) DEFAULT NULL,
  `cu_name` varchar(255) DEFAULT NULL,
  `cu_note` varchar(255) DEFAULT NULL,
  `cu_rate_of_discount` varchar(255) DEFAULT NULL,
  `cu_sms_notice` varchar(255) DEFAULT NULL,
  `cu_surname` varchar(255) DEFAULT NULL,
  `cu_taxname` varchar(255) DEFAULT NULL,
  `cu_tcnumber` varchar(255) DEFAULT NULL,
  `cu_tel1` varchar(255) DEFAULT NULL,
  `cu_tel2` varchar(255) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `cu_gr_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `customer`
--

INSERT INTO `customer` (`cu_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `cu_mail`, `cu_mail_notice`, `cu_name`, `cu_note`, `cu_rate_of_discount`, `cu_sms_notice`, `cu_surname`, `cu_taxname`, `cu_tcnumber`, `cu_tel1`, `cu_tel2`, `address_id`, `cu_gr_id`) VALUES
(1, 'mert@mail.com', '2021-09-23 23:17:56', 'mert@mail.com', '2021-09-23 23:17:56', 'hakanhoca@mail.com', 'on', 'HAKAN', 'HAKAN HOCA', '99', 'on', 'ÖZER', 'İSTANBUL', '100000000', '5555555555', NULL, 1, 3),
(2, 'mert@mail.com', '2021-09-23 23:47:43', 'mert@mail.com', '2021-09-23 23:47:43', 'ali@mail.com', 'on', 'ALİ', 'TIMARHANE', '15', 'on', 'BİLMEM', 'MANİSA', '1234567890', '4444444444', NULL, 2, 2),
(3, 'selen@mail.com', '2021-09-24 10:58:06', 'selen@mail.com', '2021-09-24 10:58:06', 'mert@mail.com', 'on', 'MERT', '', '10', 'on', 'DUMANLI', 'İZMİR', '123456789', '5050103555', NULL, 3, 3),
(7, 'selen@mail.com', '2021-09-24 10:59:39', 'selen@mail.com', '2021-09-24 10:59:39', 'mert12@mail.com', 'on', 'MERT', '', '10', 'on', 'DUMANLI', 'İZMİR', '11111111111', '2325445555', NULL, 7, 3),
(15, 'selen@mail.com', '2021-09-24 18:08:59', 'selen@mail.com', '2021-09-24 18:08:59', 'mert1@mail.com', 'on', 'M', '.', '1', 'on', 'D', 'Ö', '1000000001', '5555554444', NULL, 15, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `customer_group`
--

CREATE TABLE `customer_group` (
  `cu_gr_id` int(11) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `cu_gr_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `customer_group`
--

INSERT INTO `customer_group` (`cu_gr_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `cu_gr_name`) VALUES
(2, 'mert@mail.com', '2021-09-23 23:11:48', 'mert@mail.com', '2021-09-23 23:11:48', 'Beşiktaşlılar'),
(3, 'mert@mail.com', '2021-09-23 23:11:53', 'mert@mail.com', '2021-09-23 23:11:53', 'Fenerliler');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `diary`
--

CREATE TABLE `diary` (
  `diary_id` int(11) NOT NULL,
  `diary_date` varchar(255) DEFAULT NULL,
  `diary_description` varchar(255) DEFAULT NULL,
  `diary_statu` bit(1) DEFAULT NULL,
  `diary_time` varchar(255) DEFAULT NULL,
  `diary_title` varchar(255) DEFAULT NULL,
  `cu_id` int(11) DEFAULT NULL,
  `us_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `diary`
--

INSERT INTO `diary` (`diary_id`, `diary_date`, `diary_description`, `diary_statu`, `diary_time`, `diary_title`, `cu_id`, `us_id`) VALUES
(1, '1998-01-23', 'Kutlu Doğum Haftası', b'1', '09:05', 'Selen\'in Doğum Günü', 1, 3),
(2, '1998-01-12', 'O kara gün.', b'1', '05:00', 'Mert\'in Doğum Günü', 1, 2),
(3, '2028-06-14', 'O mutlu gün.', b'1', '03:46', 'Aydın\'ın Doğum Günü', 1, 1),
(4, '2021-09-24', 'Acil', b'1', '10:03', 'Toplantı', 2, 2),
(5, '2021-09-23', 'Spring Boot', b'1', '23:39', 'KURS', 2, 1),
(6, '2021-09-23', 'FB', b'1', '21:55', 'Maç', 1, 2),
(7, '2021-09-23', 'DG', b'1', '22:45', 'Parti', 1, 1),
(8, '2021-09-25', 'Görüşme yapılacak.', b'1', '13:22', 'Randevu', 1, 1),
(9, '2021-09-24', 'A', b'1', '14:24', 'Randevu', 3, 1),
(10, '2021-09-24', 'A', b'1', '10:21', 'A', 3, 1),
(11, '2021-09-24', 'B', b'1', '11:17', 'B', 1, 1),
(12, '2021-09-25', 'b', b'1', '18:11', 'a', 3, 3),
(13, '2021-09-24', 'a', b'1', '18:14', 'a', 7, 3),
(14, '2021-09-16', 'asd', b'1', '23:20', 'sad', 7, 4),
(15, '2021-09-15', 'a', b'1', '21:19', 'a', 7, 1),
(16, '2021-09-08', 'c', b'1', '21:19', 'a', 7, 3),
(17, '2021-09-01', 'a', b'1', '20:22', 'a', 15, 4),
(18, '2021-09-01', 'd', b'1', '23:30', 'm', 15, 4),
(19, '2021-09-10', 'deneme', b'1', '20:36', 'Deneme', 7, 1),
(20, '2021-09-25', 'B', b'1', '19:44', 'A', 3, 1),
(21, '2021-08-31', 'c', b'1', '19:52', 'a', 2, 1),
(22, '2021-09-23', 'c', b'1', '20:00', 'a', 7, 1),
(23, '2021-09-26', 'b', b'1', '16:00', 'a', 2, 4),
(25, '2021-09-27', 'Ali Bilmem gelecek.', b'1', '16:00', 'Hakan hocaya gelecekler.', 2, 4);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `district`
--

CREATE TABLE `district` (
  `did` int(11) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `dname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `district`
--

INSERT INTO `district` (`did`, `cid`, `dname`) VALUES
(1, 1, 'ALADAĞ'),
(2, 1, 'CEYHAN'),
(3, 1, 'ÇUKUROVA'),
(4, 1, 'FEKE'),
(5, 1, 'İMAMOĞLU'),
(6, 1, 'KARAİSALI'),
(7, 1, 'KARATAŞ'),
(8, 1, 'KOZAN'),
(9, 1, 'POZANTI'),
(10, 1, 'SAİMBEYLİ'),
(11, 1, 'SARIÇAM'),
(12, 1, 'SEYHAN'),
(13, 1, 'TUFANBEYLİ'),
(14, 1, 'YUMURTALIK'),
(15, 1, 'YÜREĞİR'),
(16, 2, 'BESNİ'),
(17, 2, 'ÇELİKHAN'),
(18, 2, 'GERGER'),
(19, 2, 'GÖLBAŞI'),
(20, 2, 'KAHTA'),
(21, 2, 'MERKEZ'),
(22, 2, 'SAMSAT'),
(23, 2, 'SİNCİK'),
(24, 2, 'TUT'),
(25, 3, 'BAŞMAKÇI'),
(26, 3, 'BAYAT'),
(27, 3, 'BOLVADİN'),
(28, 3, 'ÇAY'),
(29, 3, 'ÇOBANLAR'),
(30, 3, 'DAZKIRI'),
(31, 3, 'DİNAR'),
(32, 3, 'EMİRDAĞ'),
(33, 3, 'EVCİLER'),
(34, 3, 'HOCALAR'),
(35, 3, 'İHSANİYE'),
(36, 3, 'İSCEHİSAR'),
(37, 3, 'KIZILÖREN'),
(38, 3, 'MERKEZ'),
(39, 3, 'SANDIKLI'),
(40, 3, 'SİNANPAŞA'),
(41, 3, 'SULTANDAĞI'),
(42, 3, 'ŞUHUT'),
(43, 4, 'DİYADİN'),
(44, 4, 'DOĞUBAYAZIT'),
(45, 4, 'ELEŞKİRT'),
(46, 4, 'HAMUR'),
(47, 4, 'MERKEZ'),
(48, 4, 'PATNOS'),
(49, 4, 'TAŞLIÇAY'),
(50, 4, 'TUTAK'),
(51, 68, 'AĞAÇÖREN'),
(52, 68, 'ESKİL'),
(53, 68, 'GÜLAĞAÇ'),
(54, 68, 'GÜZELYURT'),
(55, 68, 'MERKEZ'),
(56, 68, 'ORTAKÖY'),
(57, 68, 'SARIYAHŞİ'),
(58, 68, 'SULTANHANI'),
(59, 5, 'GÖYNÜCEK'),
(60, 5, 'GÜMÜŞHACIKÖY'),
(61, 5, 'HAMAMÖZÜ'),
(62, 5, 'MERKEZ'),
(63, 5, 'MERZİFON'),
(64, 5, 'SULUOVA'),
(65, 5, 'TAŞOVA'),
(66, 6, 'AKYURT'),
(67, 6, 'ALTINDAĞ'),
(68, 6, 'AYAŞ'),
(69, 6, 'BALA'),
(70, 6, 'BEYPAZARI'),
(71, 6, 'ÇAMLIDERE'),
(72, 6, 'ÇANKAYA'),
(73, 6, 'ÇUBUK'),
(74, 6, 'ELMADAĞ'),
(75, 6, 'ETİMESGUT'),
(76, 6, 'EVREN'),
(77, 6, 'GÖLBAŞI'),
(78, 6, 'GÜDÜL'),
(79, 6, 'HAYMANA'),
(80, 6, 'KAHRAMANKAZAN'),
(81, 6, 'KALECİK'),
(82, 6, 'KEÇİÖREN'),
(83, 6, 'KIZILCAHAMAM'),
(84, 6, 'MAMAK'),
(85, 6, 'NALLIHAN'),
(86, 6, 'POLATLI'),
(87, 6, 'PURSAKLAR'),
(88, 6, 'SİNCAN'),
(89, 6, 'ŞEREFLİKOÇHİSAR'),
(90, 6, 'YENİMAHALLE'),
(91, 7, 'AKSEKİ'),
(92, 7, 'AKSU'),
(93, 7, 'ALANYA'),
(94, 7, 'DEMRE'),
(95, 7, 'DÖŞEMEALTI'),
(96, 7, 'ELMALI'),
(97, 7, 'FİNİKE'),
(98, 7, 'GAZİPAŞA'),
(99, 7, 'GÜNDOĞMUŞ'),
(100, 7, 'İBRADI'),
(101, 7, 'KAŞ'),
(102, 7, 'KEMER'),
(103, 7, 'KEPEZ'),
(104, 7, 'KONYAALTI'),
(105, 7, 'KORKUTELİ'),
(106, 7, 'KUMLUCA'),
(107, 7, 'MANAVGAT'),
(108, 7, 'MURATPAŞA'),
(109, 7, 'SERİK'),
(110, 75, 'ÇILDIR'),
(111, 75, 'DAMAL'),
(112, 75, 'GÖLE'),
(113, 75, 'HANAK'),
(114, 75, 'MERKEZ'),
(115, 75, 'POSOF'),
(116, 8, 'ARDANUÇ'),
(117, 8, 'ARHAVİ'),
(118, 8, 'BORÇKA'),
(119, 8, 'HOPA'),
(120, 8, 'KEMALPAŞA'),
(121, 8, 'MERKEZ'),
(122, 8, 'MURGUL'),
(123, 8, 'ŞAVŞAT'),
(124, 8, 'YUSUFELİ'),
(125, 9, 'BOZDOĞAN'),
(126, 9, 'BUHARKENT'),
(127, 9, 'ÇİNE'),
(128, 9, 'DİDİM'),
(129, 9, 'EFELER'),
(130, 9, 'GERMENCİK'),
(131, 9, 'İNCİRLİOVA'),
(132, 9, 'KARACASU'),
(133, 9, 'KARPUZLU'),
(134, 9, 'KOÇARLI'),
(135, 9, 'KÖŞK'),
(136, 9, 'KUŞADASI'),
(137, 9, 'KUYUCAK'),
(138, 9, 'NAZİLLİ'),
(139, 9, 'SÖKE'),
(140, 9, 'SULTANHİSAR'),
(141, 9, 'YENİPAZAR'),
(142, 10, 'ALTIEYLÜL'),
(143, 10, 'AYVALIK'),
(144, 10, 'BALYA'),
(145, 10, 'BANDIRMA'),
(146, 10, 'BİGADİÇ'),
(147, 10, 'BURHANİYE'),
(148, 10, 'DURSUNBEY'),
(149, 10, 'EDREMİT'),
(150, 10, 'ERDEK'),
(151, 10, 'GÖMEÇ'),
(152, 10, 'GÖNEN'),
(153, 10, 'HAVRAN'),
(154, 10, 'İVRİNDİ'),
(155, 10, 'KARESİ'),
(156, 10, 'KEPSUT'),
(157, 10, 'MANYAS'),
(158, 10, 'MARMARA'),
(159, 10, 'SAVAŞTEPE'),
(160, 10, 'SINDIRGI'),
(161, 10, 'SUSURLUK'),
(162, 74, 'AMASRA'),
(163, 74, 'KURUCAŞİLE'),
(164, 74, 'MERKEZ'),
(165, 74, 'ULUS'),
(166, 72, 'BEŞİRİ'),
(167, 72, 'GERCÜŞ'),
(168, 72, 'HASANKEYF'),
(169, 72, 'KOZLUK'),
(170, 72, 'MERKEZ'),
(171, 72, 'SASON'),
(172, 69, 'AYDINTEPE'),
(173, 69, 'DEMİRÖZÜ'),
(174, 69, 'MERKEZ'),
(175, 11, 'BOZÜYÜK'),
(176, 11, 'GÖLPAZARI'),
(177, 11, 'İNHİSAR'),
(178, 11, 'MERKEZ'),
(179, 11, 'OSMANELİ'),
(180, 11, 'PAZARYERİ'),
(181, 11, 'SÖĞÜT'),
(182, 11, 'YENİPAZAR'),
(183, 12, 'ADAKLI'),
(184, 12, 'GENÇ'),
(185, 12, 'KARLIOVA'),
(186, 12, 'KİĞI'),
(187, 12, 'MERKEZ'),
(188, 12, 'SOLHAN'),
(189, 12, 'YAYLADERE'),
(190, 12, 'YEDİSU'),
(191, 13, 'ADİLCEVAZ'),
(192, 13, 'AHLAT'),
(193, 13, 'GÜROYMAK'),
(194, 13, 'HİZAN'),
(195, 13, 'MERKEZ'),
(196, 13, 'MUTKİ'),
(197, 13, 'TATVAN'),
(198, 14, 'DÖRTDİVAN'),
(199, 14, 'GEREDE'),
(200, 14, 'GÖYNÜK'),
(201, 14, 'KIBRISCIK'),
(202, 14, 'MENGEN'),
(203, 14, 'MERKEZ'),
(204, 14, 'MUDURNU'),
(205, 14, 'SEBEN'),
(206, 14, 'YENİÇAĞA'),
(207, 15, 'AĞLASUN'),
(208, 15, 'ALTINYAYLA'),
(209, 15, 'BUCAK'),
(210, 15, 'ÇAVDIR'),
(211, 15, 'ÇELTİKÇİ'),
(212, 15, 'GÖLHİSAR'),
(213, 15, 'KARAMANLI'),
(214, 15, 'KEMER'),
(215, 15, 'MERKEZ'),
(216, 15, 'TEFENNİ'),
(217, 15, 'YEŞİLOVA'),
(218, 16, 'BÜYÜKORHAN'),
(219, 16, 'GEMLİK'),
(220, 16, 'GÜRSU'),
(221, 16, 'HARMANCIK'),
(222, 16, 'İNEGÖL'),
(223, 16, 'İZNİK'),
(224, 16, 'KARACABEY'),
(225, 16, 'KELES'),
(226, 16, 'KESTEL'),
(227, 16, 'MUDANYA'),
(228, 16, 'MUSTAFAKEMALPAŞA'),
(229, 16, 'NİLÜFER'),
(230, 16, 'ORHANELİ'),
(231, 16, 'ORHANGAZİ'),
(232, 16, 'OSMANGAZİ'),
(233, 16, 'YENİŞEHİR'),
(234, 16, 'YILDIRIM'),
(235, 17, 'AYVACIK'),
(236, 17, 'BAYRAMİÇ'),
(237, 17, 'BİGA'),
(238, 17, 'BOZCAADA'),
(239, 17, 'ÇAN'),
(240, 17, 'ECEABAT'),
(241, 17, 'EZİNE'),
(242, 17, 'GELİBOLU'),
(243, 17, 'GÖKÇEADA'),
(244, 17, 'LAPSEKİ'),
(245, 17, 'MERKEZ'),
(246, 17, 'YENİCE'),
(247, 18, 'ATKARACALAR'),
(248, 18, 'BAYRAMÖREN'),
(249, 18, 'ÇERKEŞ'),
(250, 18, 'ELDİVAN'),
(251, 18, 'ILGAZ'),
(252, 18, 'KIZILIRMAK'),
(253, 18, 'KORGUN'),
(254, 18, 'KURŞUNLU'),
(255, 18, 'MERKEZ'),
(256, 18, 'ORTA'),
(257, 18, 'ŞABANÖZÜ'),
(258, 18, 'YAPRAKLI'),
(259, 19, 'ALACA'),
(260, 19, 'BAYAT'),
(261, 19, 'BOĞAZKALE'),
(262, 19, 'DODURGA'),
(263, 19, 'İSKİLİP'),
(264, 19, 'KARGI'),
(265, 19, 'LAÇİN'),
(266, 19, 'MECİTÖZÜ'),
(267, 19, 'MERKEZ'),
(268, 19, 'OĞUZLAR'),
(269, 19, 'ORTAKÖY'),
(270, 19, 'OSMANCIK'),
(271, 19, 'SUNGURLU'),
(272, 19, 'UĞURLUDAĞ'),
(273, 20, 'ACIPAYAM'),
(274, 20, 'BABADAĞ'),
(275, 20, 'BAKLAN'),
(276, 20, 'BEKİLLİ'),
(277, 20, 'BEYAĞAÇ'),
(278, 20, 'BOZKURT'),
(279, 20, 'BULDAN'),
(280, 20, 'ÇAL'),
(281, 20, 'ÇAMELİ'),
(282, 20, 'ÇARDAK'),
(283, 20, 'ÇİVRİL'),
(284, 20, 'GÜNEY'),
(285, 20, 'HONAZ'),
(286, 20, 'KALE'),
(287, 20, 'MERKEZEFENDİ'),
(288, 20, 'PAMUKKALE'),
(289, 20, 'SARAYKÖY'),
(290, 20, 'SERİNHİSAR'),
(291, 20, 'TAVAS'),
(292, 21, 'BAĞLAR'),
(293, 21, 'BİSMİL'),
(294, 21, 'ÇERMİK'),
(295, 21, 'ÇINAR'),
(296, 21, 'ÇÜNGÜŞ'),
(297, 21, 'DİCLE'),
(298, 21, 'EĞİL'),
(299, 21, 'ERGANİ'),
(300, 21, 'HANİ'),
(301, 21, 'HAZRO'),
(302, 21, 'KAYAPINAR'),
(303, 21, 'KOCAKÖY'),
(304, 21, 'KULP'),
(305, 21, 'LİCE'),
(306, 21, 'SİLVAN'),
(307, 21, 'SUR'),
(308, 21, 'YENİŞEHİR'),
(309, 81, 'AKÇAKOCA'),
(310, 81, 'CUMAYERİ'),
(311, 81, 'ÇİLİMLİ'),
(312, 81, 'GÖLYAKA'),
(313, 81, 'GÜMÜŞOVA'),
(314, 81, 'KAYNAŞLI'),
(315, 81, 'MERKEZ'),
(316, 81, 'YIĞILCA'),
(317, 22, 'ENEZ'),
(318, 22, 'HAVSA'),
(319, 22, 'İPSALA'),
(320, 22, 'KEŞAN'),
(321, 22, 'LALAPAŞA'),
(322, 22, 'MERİÇ'),
(323, 22, 'MERKEZ'),
(324, 22, 'SÜLOĞLU'),
(325, 22, 'UZUNKÖPRÜ'),
(326, 23, 'AĞIN'),
(327, 23, 'ALACAKAYA'),
(328, 23, 'ARICAK'),
(329, 23, 'BASKİL'),
(330, 23, 'KARAKOÇAN'),
(331, 23, 'KEBAN'),
(332, 23, 'KOVANCILAR'),
(333, 23, 'MADEN'),
(334, 23, 'MERKEZ'),
(335, 23, 'PALU'),
(336, 23, 'SİVRİCE'),
(337, 24, 'ÇAYIRLI'),
(338, 24, 'İLİÇ'),
(339, 24, 'KEMAH'),
(340, 24, 'KEMALİYE'),
(341, 24, 'MERKEZ'),
(342, 24, 'OTLUKBELİ'),
(343, 24, 'REFAHİYE'),
(344, 24, 'TERCAN'),
(345, 24, 'ÜZÜMLÜ'),
(346, 25, 'AŞKALE'),
(347, 25, 'AZİZİYE'),
(348, 25, 'ÇAT'),
(349, 25, 'HINIS'),
(350, 25, 'HORASAN'),
(351, 25, 'İSPİR'),
(352, 25, 'KARAÇOBAN'),
(353, 25, 'KARAYAZI'),
(354, 25, 'KÖPRÜKÖY'),
(355, 25, 'NARMAN'),
(356, 25, 'OLTU'),
(357, 25, 'OLUR'),
(358, 25, 'PALANDÖKEN'),
(359, 25, 'PASİNLER'),
(360, 25, 'PAZARYOLU'),
(361, 25, 'ŞENKAYA'),
(362, 25, 'TEKMAN'),
(363, 25, 'TORTUM'),
(364, 25, 'UZUNDERE'),
(365, 25, 'YAKUTİYE'),
(366, 26, 'ALPU'),
(367, 26, 'BEYLİKOVA'),
(368, 26, 'ÇİFTELER'),
(369, 26, 'GÜNYÜZÜ'),
(370, 26, 'HAN'),
(371, 26, 'İNÖNÜ'),
(372, 26, 'MAHMUDİYE'),
(373, 26, 'MİHALGAZİ'),
(374, 26, 'MİHALIÇÇIK'),
(375, 26, 'ODUNPAZARI'),
(376, 26, 'SARICAKAYA'),
(377, 26, 'SEYİTGAZİ'),
(378, 26, 'SİVRİHİSAR'),
(379, 26, 'TEPEBAŞI'),
(380, 27, 'ARABAN'),
(381, 27, 'İSLAHİYE'),
(382, 27, 'KARKAMIŞ'),
(383, 27, 'NİZİP'),
(384, 27, 'NURDAĞI'),
(385, 27, 'OĞUZELİ'),
(386, 27, 'ŞAHİNBEY'),
(387, 27, 'ŞEHİTKAMİL'),
(388, 27, 'YAVUZELİ'),
(389, 28, 'ALUCRA'),
(390, 28, 'BULANCAK'),
(391, 28, 'ÇAMOLUK'),
(392, 28, 'ÇANAKÇI'),
(393, 28, 'DERELİ'),
(394, 28, 'DOĞANKENT'),
(395, 28, 'ESPİYE'),
(396, 28, 'EYNESİL'),
(397, 28, 'GÖRELE'),
(398, 28, 'GÜCE'),
(399, 28, 'KEŞAP'),
(400, 28, 'MERKEZ'),
(401, 28, 'PİRAZİZ'),
(402, 28, 'ŞEBİNKARAHİSAR'),
(403, 28, 'TİREBOLU'),
(404, 28, 'YAĞLIDERE'),
(405, 29, 'KELKİT'),
(406, 29, 'KÖSE'),
(407, 29, 'KÜRTÜN'),
(408, 29, 'MERKEZ'),
(409, 29, 'ŞİRAN'),
(410, 29, 'TORUL'),
(411, 30, 'ÇUKURCA'),
(412, 30, 'DERECİK'),
(413, 30, 'MERKEZ'),
(414, 30, 'ŞEMDİNLİ'),
(415, 30, 'YÜKSEKOVA'),
(416, 31, 'ALTINÖZÜ'),
(417, 31, 'ANTAKYA'),
(418, 31, 'ARSUZ'),
(419, 31, 'BELEN'),
(420, 31, 'DEFNE'),
(421, 31, 'DÖRTYOL'),
(422, 31, 'ERZİN'),
(423, 31, 'HASSA'),
(424, 31, 'İSKENDERUN'),
(425, 31, 'KIRIKHAN'),
(426, 31, 'KUMLU'),
(427, 31, 'PAYAS'),
(428, 31, 'REYHANLI'),
(429, 31, 'SAMANDAĞ'),
(430, 31, 'YAYLADAĞI'),
(431, 76, 'ARALIK'),
(432, 76, 'KARAKOYUNLU'),
(433, 76, 'MERKEZ'),
(434, 76, 'TUZLUCA'),
(435, 32, 'AKSU'),
(436, 32, 'ATABEY'),
(437, 32, 'EĞİRDİR'),
(438, 32, 'GELENDOST'),
(439, 32, 'GÖNEN'),
(440, 32, 'KEÇİBORLU'),
(441, 32, 'MERKEZ'),
(442, 32, 'SENİRKENT'),
(443, 32, 'SÜTÇÜLER'),
(444, 32, 'ŞARKİKARAAĞAÇ'),
(445, 32, 'ULUBORLU'),
(446, 32, 'YALVAÇ'),
(447, 32, 'YENİŞARBADEMLİ'),
(448, 34, 'ADALAR'),
(449, 34, 'ARNAVUTKÖY'),
(450, 34, 'ATAŞEHİR'),
(451, 34, 'AVCILAR'),
(452, 34, 'BAĞCILAR'),
(453, 34, 'BAHÇELİEVLER'),
(454, 34, 'BAKIRKÖY'),
(455, 34, 'BAŞAKŞEHİR'),
(456, 34, 'BAYRAMPAŞA'),
(457, 34, 'BEŞİKTAŞ'),
(458, 34, 'BEYKOZ'),
(459, 34, 'BEYLİKDÜZÜ'),
(460, 34, 'BEYOĞLU'),
(461, 34, 'BÜYÜKÇEKMECE'),
(462, 34, 'ÇATALCA'),
(463, 34, 'ÇEKMEKÖY'),
(464, 34, 'ESENLER'),
(465, 34, 'ESENYURT'),
(466, 34, 'EYÜPSULTAN'),
(467, 34, 'FATİH'),
(468, 34, 'GAZİOSMANPAŞA'),
(469, 34, 'GÜNGÖREN'),
(470, 34, 'KADIKÖY'),
(471, 34, 'KAĞITHANE'),
(472, 34, 'KARTAL'),
(473, 34, 'KÜÇÜKÇEKMECE'),
(474, 34, 'MALTEPE'),
(475, 34, 'PENDİK'),
(476, 34, 'SANCAKTEPE'),
(477, 34, 'SARIYER'),
(478, 34, 'SİLİVRİ'),
(479, 34, 'SULTANBEYLİ'),
(480, 34, 'SULTANGAZİ'),
(481, 34, 'ŞİLE'),
(482, 34, 'ŞİŞLİ'),
(483, 34, 'TUZLA'),
(484, 34, 'ÜMRANİYE'),
(485, 34, 'ÜSKÜDAR'),
(486, 34, 'ZEYTİNBURNU'),
(487, 35, 'ALİAĞA'),
(488, 35, 'BALÇOVA'),
(489, 35, 'BAYINDIR'),
(490, 35, 'BAYRAKLI'),
(491, 35, 'BERGAMA'),
(492, 35, 'BEYDAĞ'),
(493, 35, 'BORNOVA'),
(494, 35, 'BUCA'),
(495, 35, 'ÇEŞME'),
(496, 35, 'ÇİĞLİ'),
(497, 35, 'DİKİLİ'),
(498, 35, 'FOÇA'),
(499, 35, 'GAZİEMİR'),
(500, 35, 'GÜZELBAHÇE'),
(501, 35, 'KARABAĞLAR'),
(502, 35, 'KARABURUN'),
(503, 35, 'KARŞIYAKA'),
(504, 35, 'KEMALPAŞA'),
(505, 35, 'KINIK'),
(506, 35, 'KİRAZ'),
(507, 35, 'KONAK'),
(508, 35, 'MENDERES'),
(509, 35, 'MENEMEN'),
(510, 35, 'NARLIDERE'),
(511, 35, 'ÖDEMİŞ'),
(512, 35, 'SEFERİHİSAR'),
(513, 35, 'SELÇUK'),
(514, 35, 'TİRE'),
(515, 35, 'TORBALI'),
(516, 35, 'URLA'),
(517, 46, 'AFŞİN'),
(518, 46, 'ANDIRIN'),
(519, 46, 'ÇAĞLAYANCERİT'),
(520, 46, 'DULKADİROĞLU'),
(521, 46, 'EKİNÖZÜ'),
(522, 46, 'ELBİSTAN'),
(523, 46, 'GÖKSUN'),
(524, 46, 'NURHAK'),
(525, 46, 'ONİKİŞUBAT'),
(526, 46, 'PAZARCIK'),
(527, 46, 'TÜRKOĞLU'),
(528, 78, 'EFLANİ'),
(529, 78, 'ESKİPAZAR'),
(530, 78, 'MERKEZ'),
(531, 78, 'OVACIK'),
(532, 78, 'SAFRANBOLU'),
(533, 78, 'YENİCE'),
(534, 70, 'AYRANCI'),
(535, 70, 'BAŞYAYLA'),
(536, 70, 'ERMENEK'),
(537, 70, 'KAZIMKARABEKİR'),
(538, 70, 'MERKEZ'),
(539, 70, 'SARIVELİLER'),
(540, 36, 'AKYAKA'),
(541, 36, 'ARPAÇAY'),
(542, 36, 'DİGOR'),
(543, 36, 'KAĞIZMAN'),
(544, 36, 'MERKEZ'),
(545, 36, 'SARIKAMIŞ'),
(546, 36, 'SELİM'),
(547, 36, 'SUSUZ'),
(548, 37, 'ABANA'),
(549, 37, 'AĞLI'),
(550, 37, 'ARAÇ'),
(551, 37, 'AZDAVAY'),
(552, 37, 'BOZKURT'),
(553, 37, 'CİDE'),
(554, 37, 'ÇATALZEYTİN'),
(555, 37, 'DADAY'),
(556, 37, 'DEVREKANİ'),
(557, 37, 'DOĞANYURT'),
(558, 37, 'HANÖNÜ'),
(559, 37, 'İHSANGAZİ'),
(560, 37, 'İNEBOLU'),
(561, 37, 'KÜRE'),
(562, 37, 'MERKEZ'),
(563, 37, 'PINARBAŞI'),
(564, 37, 'SEYDİLER'),
(565, 37, 'ŞENPAZAR'),
(566, 37, 'TAŞKÖPRÜ'),
(567, 37, 'TOSYA'),
(568, 38, 'AKKIŞLA'),
(569, 38, 'BÜNYAN'),
(570, 38, 'DEVELİ'),
(571, 38, 'FELAHİYE'),
(572, 38, 'HACILAR'),
(573, 38, 'İNCESU'),
(574, 38, 'KOCASİNAN'),
(575, 38, 'MELİKGAZİ'),
(576, 38, 'ÖZVATAN'),
(577, 38, 'PINARBAŞI'),
(578, 38, 'SARIOĞLAN'),
(579, 38, 'SARIZ'),
(580, 38, 'TALAS'),
(581, 38, 'TOMARZA'),
(582, 38, 'YAHYALI'),
(583, 38, 'YEŞİLHİSAR'),
(584, 71, 'BAHŞILI'),
(585, 71, 'BALIŞEYH'),
(586, 71, 'ÇELEBİ'),
(587, 71, 'DELİCE'),
(588, 71, 'KARAKEÇİLİ'),
(589, 71, 'KESKİN'),
(590, 71, 'MERKEZ'),
(591, 71, 'SULAKYURT'),
(592, 71, 'YAHŞİHAN'),
(593, 39, 'BABAESKİ'),
(594, 39, 'DEMİRKÖY'),
(595, 39, 'KOFÇAZ'),
(596, 39, 'LÜLEBURGAZ'),
(597, 39, 'MERKEZ'),
(598, 39, 'PEHLİVANKÖY'),
(599, 39, 'PINARHİSAR'),
(600, 39, 'VİZE'),
(601, 40, 'AKÇAKENT'),
(602, 40, 'AKPINAR'),
(603, 40, 'BOZTEPE'),
(604, 40, 'ÇİÇEKDAĞI'),
(605, 40, 'KAMAN'),
(606, 40, 'MERKEZ'),
(607, 40, 'MUCUR'),
(608, 79, 'ELBEYLİ'),
(609, 79, 'MERKEZ'),
(610, 79, 'MUSABEYLİ'),
(611, 79, 'POLATELİ'),
(612, 41, 'BAŞİSKELE'),
(613, 41, 'ÇAYIROVA'),
(614, 41, 'DARICA'),
(615, 41, 'DERİNCE'),
(616, 41, 'DİLOVASI'),
(617, 41, 'GEBZE'),
(618, 41, 'GÖLCÜK'),
(619, 41, 'İZMİT'),
(620, 41, 'KANDIRA'),
(621, 41, 'KARAMÜRSEL'),
(622, 41, 'KARTEPE'),
(623, 41, 'KÖRFEZ'),
(624, 42, 'AHIRLI'),
(625, 42, 'AKÖREN'),
(626, 42, 'AKŞEHİR'),
(627, 42, 'ALTINEKİN'),
(628, 42, 'BEYŞEHİR'),
(629, 42, 'BOZKIR'),
(630, 42, 'CİHANBEYLİ'),
(631, 42, 'ÇELTİK'),
(632, 42, 'ÇUMRA'),
(633, 42, 'DERBENT'),
(634, 42, 'DEREBUCAK'),
(635, 42, 'DOĞANHİSAR'),
(636, 42, 'EMİRGAZİ'),
(637, 42, 'EREĞLİ'),
(638, 42, 'GÜNEYSINIR'),
(639, 42, 'HADİM'),
(640, 42, 'HALKAPINAR'),
(641, 42, 'HÜYÜK'),
(642, 42, 'ILGIN'),
(643, 42, 'KADINHANI'),
(644, 42, 'KARAPINAR'),
(645, 42, 'KARATAY'),
(646, 42, 'KULU'),
(647, 42, 'MERAM'),
(648, 42, 'SARAYÖNÜ'),
(649, 42, 'SELÇUKLU'),
(650, 42, 'SEYDİŞEHİR'),
(651, 42, 'TAŞKENT'),
(652, 42, 'TUZLUKÇU'),
(653, 42, 'YALIHÜYÜK'),
(654, 42, 'YUNAK'),
(655, 43, 'ALTINTAŞ'),
(656, 43, 'ASLANAPA'),
(657, 43, 'ÇAVDARHİSAR'),
(658, 43, 'DOMANİÇ'),
(659, 43, 'DUMLUPINAR'),
(660, 43, 'EMET'),
(661, 43, 'GEDİZ'),
(662, 43, 'HİSARCIK'),
(663, 43, 'MERKEZ'),
(664, 43, 'PAZARLAR'),
(665, 43, 'SİMAV'),
(666, 43, 'ŞAPHANE'),
(667, 43, 'TAVŞANLI'),
(668, 44, 'AKÇADAĞ'),
(669, 44, 'ARAPGİR'),
(670, 44, 'ARGUVAN'),
(671, 44, 'BATTALGAZİ'),
(672, 44, 'DARENDE'),
(673, 44, 'DOĞANŞEHİR'),
(674, 44, 'DOĞANYOL'),
(675, 44, 'HEKİMHAN'),
(676, 44, 'KALE'),
(677, 44, 'KULUNCAK'),
(678, 44, 'PÜTÜRGE'),
(679, 44, 'YAZIHAN'),
(680, 44, 'YEŞİLYURT'),
(681, 45, 'AHMETLİ'),
(682, 45, 'AKHİSAR'),
(683, 45, 'ALAŞEHİR'),
(684, 45, 'DEMİRCİ'),
(685, 45, 'GÖLMARMARA'),
(686, 45, 'GÖRDES'),
(687, 45, 'KIRKAĞAÇ'),
(688, 45, 'KÖPRÜBAŞI'),
(689, 45, 'KULA'),
(690, 45, 'SALİHLİ'),
(691, 45, 'SARIGÖL'),
(692, 45, 'SARUHANLI'),
(693, 45, 'SELENDİ'),
(694, 45, 'SOMA'),
(695, 45, 'ŞEHZADELER'),
(696, 45, 'TURGUTLU'),
(697, 45, 'YUNUSEMRE'),
(698, 47, 'ARTUKLU'),
(699, 47, 'DARGEÇİT'),
(700, 47, 'DERİK'),
(701, 47, 'KIZILTEPE'),
(702, 47, 'MAZIDAĞI'),
(703, 47, 'MİDYAT'),
(704, 47, 'NUSAYBİN'),
(705, 47, 'ÖMERLİ'),
(706, 47, 'SAVUR'),
(707, 47, 'YEŞİLLİ'),
(708, 33, 'AKDENİZ'),
(709, 33, 'ANAMUR'),
(710, 33, 'AYDINCIK'),
(711, 33, 'BOZYAZI'),
(712, 33, 'ÇAMLIYAYLA'),
(713, 33, 'ERDEMLİ'),
(714, 33, 'GÜLNAR'),
(715, 33, 'MEZİTLİ'),
(716, 33, 'MUT'),
(717, 33, 'SİLİFKE'),
(718, 33, 'TARSUS'),
(719, 33, 'TOROSLAR'),
(720, 33, 'YENİŞEHİR'),
(721, 48, 'BODRUM'),
(722, 48, 'DALAMAN'),
(723, 48, 'DATÇA'),
(724, 48, 'FETHİYE'),
(725, 48, 'KAVAKLIDERE'),
(726, 48, 'KÖYCEĞİZ'),
(727, 48, 'MARMARİS'),
(728, 48, 'MENTEŞE'),
(729, 48, 'MİLAS'),
(730, 48, 'ORTACA'),
(731, 48, 'SEYDİKEMER'),
(732, 48, 'ULA'),
(733, 48, 'YATAĞAN'),
(734, 49, 'BULANIK'),
(735, 49, 'HASKÖY'),
(736, 49, 'KORKUT'),
(737, 49, 'MALAZGİRT'),
(738, 49, 'MERKEZ'),
(739, 49, 'VARTO'),
(740, 50, 'ACIGÖL'),
(741, 50, 'AVANOS'),
(742, 50, 'DERİNKUYU'),
(743, 50, 'GÜLŞEHİR'),
(744, 50, 'HACIBEKTAŞ'),
(745, 50, 'KOZAKLI'),
(746, 50, 'MERKEZ'),
(747, 50, 'ÜRGÜP'),
(748, 51, 'ALTUNHİSAR'),
(749, 51, 'BOR'),
(750, 51, 'ÇAMARDI'),
(751, 51, 'ÇİFTLİK'),
(752, 51, 'MERKEZ'),
(753, 51, 'ULUKIŞLA'),
(754, 52, 'AKKUŞ'),
(755, 52, 'ALTINORDU'),
(756, 52, 'AYBASTI'),
(757, 52, 'ÇAMAŞ'),
(758, 52, 'ÇATALPINAR'),
(759, 52, 'ÇAYBAŞI'),
(760, 52, 'FATSA'),
(761, 52, 'GÖLKÖY'),
(762, 52, 'GÜLYALI'),
(763, 52, 'GÜRGENTEPE'),
(764, 52, 'İKİZCE'),
(765, 52, 'KABADÜZ'),
(766, 52, 'KABATAŞ'),
(767, 52, 'KORGAN'),
(768, 52, 'KUMRU'),
(769, 52, 'MESUDİYE'),
(770, 52, 'PERŞEMBE'),
(771, 52, 'ULUBEY'),
(772, 52, 'ÜNYE'),
(773, 80, 'BAHÇE'),
(774, 80, 'DÜZİÇİ'),
(775, 80, 'HASANBEYLİ'),
(776, 80, 'KADİRLİ'),
(777, 80, 'MERKEZ'),
(778, 80, 'SUMBAS'),
(779, 80, 'TOPRAKKALE'),
(780, 53, 'ARDEŞEN'),
(781, 53, 'ÇAMLIHEMŞİN'),
(782, 53, 'ÇAYELİ'),
(783, 53, 'DEREPAZARI'),
(784, 53, 'FINDIKLI'),
(785, 53, 'GÜNEYSU'),
(786, 53, 'HEMŞİN'),
(787, 53, 'İKİZDERE'),
(788, 53, 'İYİDERE'),
(789, 53, 'KALKANDERE'),
(790, 53, 'MERKEZ'),
(791, 53, 'PAZAR'),
(792, 54, 'ADAPAZARI'),
(793, 54, 'AKYAZI'),
(794, 54, 'ARİFİYE'),
(795, 54, 'ERENLER'),
(796, 54, 'FERİZLİ'),
(797, 54, 'GEYVE'),
(798, 54, 'HENDEK'),
(799, 54, 'KARAPÜRÇEK'),
(800, 54, 'KARASU'),
(801, 54, 'KAYNARCA'),
(802, 54, 'KOCAALİ'),
(803, 54, 'PAMUKOVA'),
(804, 54, 'SAPANCA'),
(805, 54, 'SERDİVAN'),
(806, 54, 'SÖĞÜTLÜ'),
(807, 54, 'TARAKLI'),
(808, 55, '19 MAYIS'),
(809, 55, 'ALAÇAM'),
(810, 55, 'ASARCIK'),
(811, 55, 'ATAKUM'),
(812, 55, 'AYVACIK'),
(813, 55, 'BAFRA'),
(814, 55, 'CANİK'),
(815, 55, 'ÇARŞAMBA'),
(816, 55, 'HAVZA'),
(817, 55, 'İLKADIM'),
(818, 55, 'KAVAK'),
(819, 55, 'LADİK'),
(820, 55, 'SALIPAZARI'),
(821, 55, 'TEKKEKÖY'),
(822, 55, 'TERME'),
(823, 55, 'VEZİRKÖPRÜ'),
(824, 55, 'YAKAKENT'),
(825, 56, 'BAYKAN'),
(826, 56, 'ERUH'),
(827, 56, 'KURTALAN'),
(828, 56, 'MERKEZ'),
(829, 56, 'PERVARİ'),
(830, 56, 'ŞİRVAN'),
(831, 56, 'TİLLO'),
(832, 57, 'AYANCIK'),
(833, 57, 'BOYABAT'),
(834, 57, 'DİKMEN'),
(835, 57, 'DURAĞAN'),
(836, 57, 'ERFELEK'),
(837, 57, 'GERZE'),
(838, 57, 'MERKEZ'),
(839, 57, 'SARAYDÜZÜ'),
(840, 57, 'TÜRKELİ'),
(841, 58, 'AKINCILAR'),
(842, 58, 'ALTINYAYLA'),
(843, 58, 'DİVRİĞİ'),
(844, 58, 'DOĞANŞAR'),
(845, 58, 'GEMEREK'),
(846, 58, 'GÖLOVA'),
(847, 58, 'GÜRÜN'),
(848, 58, 'HAFİK'),
(849, 58, 'İMRANLI'),
(850, 58, 'KANGAL'),
(851, 58, 'KOYULHİSAR'),
(852, 58, 'MERKEZ'),
(853, 58, 'SUŞEHRİ'),
(854, 58, 'ŞARKIŞLA'),
(855, 58, 'ULAŞ'),
(856, 58, 'YILDIZELİ'),
(857, 58, 'ZARA'),
(858, 63, 'AKÇAKALE'),
(859, 63, 'BİRECİK'),
(860, 63, 'BOZOVA'),
(861, 63, 'CEYLANPINAR'),
(862, 63, 'EYYÜBİYE'),
(863, 63, 'HALFETİ'),
(864, 63, 'HALİLİYE'),
(865, 63, 'HARRAN'),
(866, 63, 'HİLVAN'),
(867, 63, 'KARAKÖPRÜ'),
(868, 63, 'SİVEREK'),
(869, 63, 'SURUÇ'),
(870, 63, 'VİRANŞEHİR'),
(871, 73, 'BEYTÜŞŞEBAP'),
(872, 73, 'CİZRE'),
(873, 73, 'GÜÇLÜKONAK'),
(874, 73, 'İDİL'),
(875, 73, 'MERKEZ'),
(876, 73, 'SİLOPİ'),
(877, 73, 'ULUDERE'),
(878, 59, 'ÇERKEZKÖY'),
(879, 59, 'ÇORLU'),
(880, 59, 'ERGENE'),
(881, 59, 'HAYRABOLU'),
(882, 59, 'KAPAKLI'),
(883, 59, 'MALKARA'),
(884, 59, 'MARMARAEREĞLİSİ'),
(885, 59, 'MURATLI'),
(886, 59, 'SARAY'),
(887, 59, 'SÜLEYMANPAŞA'),
(888, 59, 'ŞARKÖY'),
(889, 60, 'ALMUS'),
(890, 60, 'ARTOVA'),
(891, 60, 'BAŞÇİFTLİK'),
(892, 60, 'ERBAA'),
(893, 60, 'MERKEZ'),
(894, 60, 'NİKSAR'),
(895, 60, 'PAZAR'),
(896, 60, 'REŞADİYE'),
(897, 60, 'SULUSARAY'),
(898, 60, 'TURHAL'),
(899, 60, 'YEŞİLYURT'),
(900, 60, 'ZİLE'),
(901, 61, 'AKÇAABAT'),
(902, 61, 'ARAKLI'),
(903, 61, 'ARSİN'),
(904, 61, 'BEŞİKDÜZÜ'),
(905, 61, 'ÇARŞIBAŞI'),
(906, 61, 'ÇAYKARA'),
(907, 61, 'DERNEKPAZARI'),
(908, 61, 'DÜZKÖY'),
(909, 61, 'HAYRAT'),
(910, 61, 'KÖPRÜBAŞI'),
(911, 61, 'MAÇKA'),
(912, 61, 'OF'),
(913, 61, 'ORTAHİSAR'),
(914, 61, 'SÜRMENE'),
(915, 61, 'ŞALPAZARI'),
(916, 61, 'TONYA'),
(917, 61, 'VAKFIKEBİR'),
(918, 61, 'YOMRA'),
(919, 62, 'ÇEMİŞGEZEK'),
(920, 62, 'HOZAT'),
(921, 62, 'MAZGİRT'),
(922, 62, 'MERKEZ'),
(923, 62, 'NAZIMİYE'),
(924, 62, 'OVACIK'),
(925, 62, 'PERTEK'),
(926, 62, 'PÜLÜMÜR'),
(927, 64, 'BANAZ'),
(928, 64, 'EŞME'),
(929, 64, 'KARAHALLI'),
(930, 64, 'MERKEZ'),
(931, 64, 'SİVASLI'),
(932, 64, 'ULUBEY'),
(933, 65, 'BAHÇESARAY'),
(934, 65, 'BAŞKALE'),
(935, 65, 'ÇALDIRAN'),
(936, 65, 'ÇATAK'),
(937, 65, 'EDREMİT'),
(938, 65, 'ERCİŞ'),
(939, 65, 'GEVAŞ'),
(940, 65, 'GÜRPINAR'),
(941, 65, 'İPEKYOLU'),
(942, 65, 'MURADİYE'),
(943, 65, 'ÖZALP'),
(944, 65, 'SARAY'),
(945, 65, 'TUŞBA'),
(946, 77, 'ALTINOVA'),
(947, 77, 'ARMUTLU'),
(948, 77, 'ÇINARCIK'),
(949, 77, 'ÇİFTLİKKÖY'),
(950, 77, 'MERKEZ'),
(951, 77, 'TERMAL'),
(952, 66, 'AKDAĞMADENİ'),
(953, 66, 'AYDINCIK'),
(954, 66, 'BOĞAZLIYAN'),
(955, 66, 'ÇANDIR'),
(956, 66, 'ÇAYIRALAN'),
(957, 66, 'ÇEKEREK'),
(958, 66, 'KADIŞEHRİ'),
(959, 66, 'MERKEZ'),
(960, 66, 'SARAYKENT'),
(961, 66, 'SARIKAYA'),
(962, 66, 'SORGUN'),
(963, 66, 'ŞEFAATLİ'),
(964, 66, 'YENİFAKILI'),
(965, 66, 'YERKÖY'),
(966, 67, 'ALAPLI'),
(967, 67, 'ÇAYCUMA'),
(968, 67, 'DEVREK'),
(969, 67, 'EREĞLİ'),
(970, 67, 'GÖKÇEBEY'),
(971, 67, 'KİLİMLİ'),
(972, 67, 'KOZLU'),
(973, 67, 'MERKEZ');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `join_pet_customer`
--

CREATE TABLE `join_pet_customer` (
  `jpt_id` int(11) NOT NULL,
  `cu_id` int(11) DEFAULT NULL,
  `pet_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `join_pet_customer`
--

INSERT INTO `join_pet_customer` (`jpt_id`, `cu_id`, `pet_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 2, 3),
(4, 3, 4),
(6, 7, 6),
(7, 7, 7),
(16, 15, 16),
(20, 15, 20),
(21, 15, 21),
(24, 15, 24),
(25, 15, 25),
(26, 15, 26),
(28, 3, 28),
(29, 1, 29),
(30, 3, 30),
(35, 1, 35);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `join_type_breed_pet`
--

CREATE TABLE `join_type_breed_pet` (
  `jtbp_id` int(11) NOT NULL,
  `br_id` int(11) DEFAULT NULL,
  `ty_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `join_type_breed_pet`
--

INSERT INTO `join_type_breed_pet` (`jtbp_id`, `br_id`, `ty_id`) VALUES
(1, 39, 8),
(2, 5, 1),
(3, 24, 5),
(4, 18, 4),
(6, 14, 3),
(7, 18, 4),
(16, 11, 3),
(20, 6, 2),
(21, 8, 2),
(24, 9, 2),
(25, 14, 3),
(26, 13, 3),
(28, 17, 4),
(29, 13, 3),
(30, 2, 1),
(35, 17, 4);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `lab`
--

CREATE TABLE `lab` (
  `lab_id` int(11) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `lab_detail` varchar(255) DEFAULT NULL,
  `lab_file` varchar(255) DEFAULT NULL,
  `lab_type` int(11) DEFAULT NULL,
  `jpt_id` int(11) DEFAULT NULL,
  `us_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `lab`
--

INSERT INTO `lab` (`lab_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `lab_detail`, `lab_file`, `lab_type`, `jpt_id`, `us_id`) VALUES
(3, 'selen@mail.com', '2021-09-26 14:54:02', 'selen@mail.com', '2021-09-26 14:54:02', 'Anahtar yutmuş.', '45d0fe4c-2a2f-47c9-ab4a-ae1b34a79eae.jpg', 1, 1, 3),
(4, 'selen@mail.com', '2021-09-26 14:54:59', 'selen@mail.com', '2021-09-26 14:54:59', 'Daha detaylı incelenmeli. Kesin tanı konulamadı.', 'a36e88c1-5a55-4e3e-9cb7-3b104332dee3.jpg', 2, 29, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `payment_in`
--

CREATE TABLE `payment_in` (
  `pin_id` int(11) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `pin_detail` varchar(255) DEFAULT NULL,
  `pin_operation_type` int(11) DEFAULT NULL,
  `pin_payment_type` int(11) DEFAULT NULL,
  `pin_price` int(11) DEFAULT NULL,
  `cu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `payment_in`
--

INSERT INTO `payment_in` (`pin_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `pin_detail`, `pin_operation_type`, `pin_payment_type`, `pin_price`, `cu_id`) VALUES
(1, 'mert@mail.com', '2021-09-23 23:33:19', 'mert@mail.com', '2021-09-23 23:33:19', '23.09.2021 ödeme alındı.', 0, 3, 5, 1),
(3, 'selen@mail.com', '2021-09-24 11:11:59', 'selen@mail.com', '2021-09-24 11:11:59', '.', 0, 2, 680, 7),
(4, 'selen@mail.com', '2021-09-24 11:12:26', 'selen@mail.com', '2021-09-24 11:12:26', '.', 0, 1, 9, 7);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `payment_out`
--

CREATE TABLE `payment_out` (
  `pout_id` int(11) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `pout_detail` varchar(255) NOT NULL,
  `pout_operation_type` int(11) DEFAULT NULL,
  `pout_payment_type` int(11) DEFAULT NULL,
  `pout_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `payment_out`
--

INSERT INTO `payment_out` (`pout_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `pout_detail`, `pout_operation_type`, `pout_payment_type`, `pout_price`) VALUES
(1, 'mert@mail.com', '2021-09-23 23:33:34', 'mert@mail.com', '2021-09-23 23:33:34', 'Kasadan haraç kesildi.', 1, 3, 4),
(2, 'selen@mail.com', '2021-09-24 11:13:01', 'selen@mail.com', '2021-09-24 11:13:01', 'Cam kırıldı.', 1, 1, 500);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pet`
--

CREATE TABLE `pet` (
  `pet_id` int(11) NOT NULL,
  `pet_born_date` datetime DEFAULT NULL,
  `pet_chip_number` varchar(255) DEFAULT NULL,
  `pet_ear_tag` varchar(255) DEFAULT NULL,
  `pet_gender` bit(1) DEFAULT NULL,
  `pet_name` varchar(255) DEFAULT NULL,
  `pet_neutering` bit(1) DEFAULT NULL,
  `color_pet_color_id` int(11) DEFAULT NULL,
  `join_type_breed_pet` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `pet`
--

INSERT INTO `pet` (`pet_id`, `pet_born_date`, `pet_chip_number`, `pet_ear_tag`, `pet_gender`, `pet_name`, `pet_neutering`, `color_pet_color_id`, `join_type_breed_pet`) VALUES
(1, '2021-09-23 03:00:00', '1', '1', b'1', 'MONSTER', b'1', 11, 1),
(2, '2021-09-23 03:00:00', '123', '123', b'0', 'ÇAMUR', b'1', 8, 2),
(3, '2021-09-23 03:00:00', '1', '1', b'0', 'NALET', b'1', 6, 3),
(4, '2021-09-24 03:00:00', '1', '1', b'0', 'ÇAMUR', b'1', 7, 4),
(6, '2021-09-24 03:00:00', '3', '3', b'0', 'PAMUK', b'1', 8, 6),
(7, '2021-09-24 03:00:00', '1', '1', b'0', 'ÇAMUR', b'1', 7, 7),
(16, '2021-09-08 03:00:00', '2', '2', b'0', 'a', b'1', 2, 16),
(20, '2021-09-17 03:00:00', '1', '1', b'0', 'KÖMÜR', b'1', 2, 20),
(21, '2021-09-09 03:00:00', '1', '1', b'0', 'MAVİ', b'1', 2, 21),
(24, '2021-09-18 03:00:00', '213123123', '213123123', b'0', 'asdasdsad', b'1', 2, 24),
(25, '2021-09-03 03:00:00', '2131213123', '123123', b'1', 'asd', b'1', 3, 25),
(26, '2021-08-31 03:00:00', '3213213', '321', b'0', '123asd', b'1', 3, 26),
(28, '2021-09-04 03:00:00', '123', '123', b'0', 'sad', b'1', 3, 28),
(29, '2021-09-02 03:00:00', '3123', '3123', b'0', 'Kömür', b'1', 6, 29),
(30, '2021-09-23 03:00:00', '3', '21321', b'0', 'asd', b'1', 3, 30),
(35, '2021-09-09 03:00:00', '333', '333', b'0', 'Jennifer', b'1', 3, 35);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `product_alis` int(11) DEFAULT NULL,
  `product_kdv` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_satis` int(11) DEFAULT NULL,
  `product_statu` bit(1) DEFAULT NULL,
  `product_stok_miktari` int(11) DEFAULT NULL,
  `product_unit` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `product`
--

INSERT INTO `product` (`product_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `product_alis`, `product_kdv`, `product_name`, `product_satis`, `product_statu`, `product_stok_miktari`, `product_unit`, `category_id`) VALUES
(1, 'mert@mail.com', '2021-09-23 22:52:11', 'selen@mail.com', '2021-09-24 19:31:24', 100, 2, 'Pet Yakalık', 150, b'1', 1008, 1, 1),
(2, 'mert@mail.com', '2021-09-23 22:52:44', 'selen@mail.com', '2021-09-24 19:49:19', 125, 3, 'Ateş Ölçer', 170, b'0', 725, 1, 1),
(3, 'mert@mail.com', '2021-09-23 22:53:38', 'selen@mail.com', '2021-09-24 11:10:17', 200, 2, 'Köpek Maması', 300, b'1', 250, 2, 2),
(4, 'mert@mail.com', '2021-09-23 22:54:07', 'mert@mail.com', '2021-09-23 22:54:07', 300, 3, 'Çiğneme Kemiği', 400, b'1', 750, 1, 2),
(5, 'mert@mail.com', '2021-09-23 23:08:52', 'mert@mail.com', '2021-09-23 23:24:04', 1000, 1, 'Dedektörler', 2000, b'1', 19, 1, 3),
(6, 'mert@mail.com', '2021-09-23 23:09:35', 'mert@mail.com', '2021-09-23 23:09:35', 150, 2, 'Tırnak Bakım Ürünü', 250, b'1', 100, 1, 3),
(7, NULL, NULL, 'selen@mail.com', '2021-09-24 11:10:55', 100, 2, 'Kedi maması2', 150, b'1', 195, 1, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `purchase`
--

CREATE TABLE `purchase` (
  `purchase_id` int(11) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `purchase_code` varchar(255) DEFAULT NULL,
  `purchase_detail` varchar(255) DEFAULT NULL,
  `purchase_number` int(11) DEFAULT NULL,
  `purchase_total` int(11) DEFAULT NULL,
  `purchase_type` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `role`
--

CREATE TABLE `role` (
  `ro_id` int(11) NOT NULL,
  `ro_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `role`
--

INSERT INTO `role` (`ro_id`, `ro_name`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_DOCTOR'),
(3, 'ROLE_SECRETARY'),
(4, 'ROLE_BEGINNER');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sale`
--

CREATE TABLE `sale` (
  `sale_id` int(11) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `sale_code` varchar(255) DEFAULT NULL,
  `sale_detail` varchar(255) DEFAULT NULL,
  `sale_number` int(11) DEFAULT NULL,
  `sale_total` int(11) DEFAULT NULL,
  `sale_type` int(11) DEFAULT NULL,
  `cu_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `sale`
--

INSERT INTO `sale` (`sale_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `sale_code`, `sale_detail`, `sale_number`, `sale_total`, `sale_type`, `cu_id`, `product_id`) VALUES
(1, 'mert@mail.com', '2021-09-23 23:24:05', 'mert@mail.com', '2021-09-23 23:24:05', '4b3028bc-c559-4a87-8ec1-57ff229cb29e', 'Dedektör satıldı.', 1, 21, 1, 1, 5),
(2, 'mert@mail.com', '2021-09-23 23:24:59', 'mert@mail.com', '2021-09-23 23:24:59', 'f138dea7-3e98-42aa-9586-bc72ff062b89', 'Yakalık satıldı.', 3, 5, 3, 1, 1),
(4, 'selen@mail.com', '2021-09-24 11:06:20', 'selen@mail.com', '2021-09-24 11:06:20', '360f115d-6d8e-40f4-be75-fec4893922f4', 'Köpek maması satıldı.', 5, 689, 1, 7, 7);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `schedule_calendar`
--

CREATE TABLE `schedule_calendar` (
  `sid` int(11) NOT NULL,
  `bg_color` varchar(255) DEFAULT NULL,
  `border_color` varchar(255) DEFAULT NULL,
  `calendar_id` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `drag_bg_color` varchar(255) DEFAULT NULL,
  `due_date_class` varchar(255) DEFAULT NULL,
  `end` varchar(255) DEFAULT NULL,
  `id` varchar(255) DEFAULT NULL,
  `is_all_day` bit(1) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `raw` varchar(255) DEFAULT NULL,
  `start` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `schedule_calendar`
--

INSERT INTO `schedule_calendar` (`sid`, `bg_color`, `border_color`, `calendar_id`, `category`, `color`, `drag_bg_color`, `due_date_class`, `end`, `id`, `is_all_day`, `location`, `raw`, `start`, `state`, `title`) VALUES
(1, '#4287f5', '#4287f5', '1', 'time', '#ffffff', '#4287f5', '', 'Thu Sep 23 2021 15:00:00 GMT+0300 (GMT+03:00)', 'be4c14e2-246f-55eb-848f-73a653641409', b'0', 'PC Başı', 'public', 'Thu Sep 23 2021 10:00:00 GMT+0300 (GMT+03:00)', 'Meşgul', 'Sunum'),
(2, '#4287f5', '#4287f5', '1', 'time', '#ffffff', '#4287f5', '', 'Tue Sep 21 2021 15:00:00 GMT+0300 (GMT+03:00)', 'a84152cd-d1b9-4715-8e7a-699d269a2902', b'0', 'MERT', 'public', 'Tue Sep 21 2021 10:00:00 GMT+0300 (GMT+03:00)', 'Free', 'AYDIN'),
(3, '#4287f5', '#4287f5', '1', 'time', '#ffffff', '#9e5fff', '', 'Fri Sep 24 2021 20:44:00 GMT+0300 ', 'ef951046-aafe-42e3-a460-7054b45b4609', b'0', 'MERT', 'public', 'Fri Sep 24 2021 19:44:00 GMT+0300 ', 'Free', 'AYDIN'),
(4, '#4287f5', '#4287f5', '1', 'time', '#ffffff', '#9e5fff', '', 'Fri Sep 24 19:52:06 EET 2021', 'e891c92a-40a1-4ef7-a77f-2ca9162b9b95', b'0', 'ALİ', 'public', 'Fri Sep 24 18:52:06 EET 2021', 'Free', 'AYDIN'),
(5, '#4287f5', '#4287f5', '1', 'time', '#ffffff', '#9e5fff', '', 'Thu Sep 23 2021 20:00:00 GMT+0300', 'd30cf02b-f6d8-4d8e-ad13-e446bd90e3ce', b'0', 'MERT', 'public', 'Thu Sep 23 2021 20:00:00 GMT+0300', 'Free', 'AYDIN'),
(8, '#4287f5', '#4287f5', '1', 'time', '#ffffff', '#9e5fff', '', 'Mon Sep 27 2021 17:00:00 GMT+0300', 'b492b1ae-851b-4943-b8d2-6546c14ef20c', b'0', 'ALİ', 'public', 'Mon Sep 27 2021 16:00:00 GMT+0300', 'Free', 'Hakan');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `store`
--

CREATE TABLE `store` (
  `store_id` int(11) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  `store_statu` bit(1) DEFAULT NULL,
  `store_tel` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `supplier_mail` varchar(255) NOT NULL,
  `supplier_name` varchar(30) NOT NULL,
  `supplier_statu` varchar(10) DEFAULT NULL,
  `supplier_tel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `type_pet`
--

CREATE TABLE `type_pet` (
  `ty_id` int(11) NOT NULL,
  `ty_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `type_pet`
--

INSERT INTO `type_pet` (`ty_id`, `ty_name`) VALUES
(1, 'Egzotik'),
(2, 'Kanatlı'),
(3, 'Kedi'),
(4, 'Köpek'),
(5, 'Büyükbaş'),
(6, 'Küçükbaş'),
(7, 'Tropikal'),
(8, 'Yabani');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

CREATE TABLE `user` (
  `us_id` int(11) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `token_expired` bit(1) NOT NULL,
  `us_name` varchar(255) DEFAULT NULL,
  `us_surname` varchar(255) DEFAULT NULL,
  `us_tel` varchar(255) DEFAULT NULL,
  `user_file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`us_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `email`, `enabled`, `password`, `token_expired`, `us_name`, `us_surname`, `us_tel`, `user_file`) VALUES
(1, 'anonymousUser', '2021-09-23 22:42:15', 'anonymousUser', '2021-09-23 22:42:15', 'aydin@mail.com', b'1', '$2a$10$werTAtZBt9vPBaHlK0N60uJMBTkLXP79zsERE7msQS3fK3EtddEC.', b'1', 'AYDIN', 'UZUN', '5345907262', 'd2d9edba-53ef-4dff-8a20-68ebf493853a.png'),
(2, 'anonymousUser', '2021-09-23 22:43:36', 'selen@mail.com', '2021-09-24 11:30:26', 'mert@mail.com', b'1', '$2a$10$JzHkkauXUM9Uus4na7bGa.q7Ld9B79TYB6kIzkoXALszhLnro2f4u', b'1', 'MERT', 'DUMANLI', '5050103555', '88c74aa8-9972-4795-9e8e-11b25dc1cedc.jpeg'),
(3, 'anonymousUser', '2021-09-23 22:44:44', 'selen@mail.com', '2021-09-24 11:26:32', 'selen@mail.com', b'1', '$2a$10$OiF.jqDQhWgCWE6/eQJIpO./3RczWhDVY8RzEqqqEbQIszr1Yg4.u', b'1', 'SELEN', 'KÖSOĞLU', '5555555555', '866f0a73-f17e-4e5d-8a1e-b53d8bc8345b.JPG'),
(4, 'selen@mail.com', '2021-09-24 11:29:23', 'selen@mail.com', '2021-09-24 11:29:23', 'hakanhoca1@mail.com', b'1', '$2a$10$vOSitomdRbywL8TeUiF7tODO8MpWwl35C7kYLo5VQG/MFtVU.Ubh.', b'1', 'Hakan', 'Özer', '5554445555', 'anonim.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(4, 1),
(4, 2),
(2, 4);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_follow_in`
--

CREATE TABLE `user_follow_in` (
  `user_follow_in_id` int(11) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `user_follow_in`
--

INSERT INTO `user_follow_in` (`user_follow_in_id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`) VALUES
(1, 'mert@mail.com', '2021-09-23 22:45:21', 'mert@mail.com', '2021-09-23 22:45:21'),
(2, 'mert@mail.com', '2021-09-23 23:23:37', 'mert@mail.com', '2021-09-23 23:23:37'),
(3, 'mert@mail.com', '2021-09-23 23:53:48', 'mert@mail.com', '2021-09-23 23:53:48'),
(4, 'mert@mail.com', '2021-09-24 00:52:39', 'mert@mail.com', '2021-09-24 00:52:39'),
(5, 'mert@mail.com', '2021-09-24 10:27:26', 'mert@mail.com', '2021-09-24 10:27:26'),
(6, 'selen@mail.com', '2021-09-24 10:50:10', 'selen@mail.com', '2021-09-24 10:50:10'),
(7, 'selen@mail.com', '2021-09-24 11:20:52', 'selen@mail.com', '2021-09-24 11:20:52'),
(8, 'mert@mail.com', '2021-09-24 11:30:37', 'mert@mail.com', '2021-09-24 11:30:37'),
(9, 'mert@mail.com', '2021-09-24 17:56:33', 'mert@mail.com', '2021-09-24 17:56:33'),
(10, 'selen@mail.com', '2021-09-24 17:57:16', 'selen@mail.com', '2021-09-24 17:57:16'),
(11, 'selen@mail.com', '2021-09-24 19:01:21', 'selen@mail.com', '2021-09-24 19:01:21'),
(12, 'selen@mail.com', '2021-09-24 19:49:42', 'selen@mail.com', '2021-09-24 19:49:42'),
(13, 'mert@mail.com', '2021-09-24 21:37:58', 'mert@mail.com', '2021-09-24 21:37:58'),
(14, 'selen@mail.com', '2021-09-24 21:38:29', 'selen@mail.com', '2021-09-24 21:38:29'),
(15, 'selen@mail.com', '2021-09-24 22:42:39', 'selen@mail.com', '2021-09-24 22:42:39'),
(16, 'selen@mail.com', '2021-09-26 13:18:00', 'selen@mail.com', '2021-09-26 13:18:00'),
(17, 'selen@mail.com', '2021-09-26 14:48:12', 'selen@mail.com', '2021-09-26 14:48:12');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `FK2uftfxae973hl3iuthmvmkoxo` (`cid`),
  ADD KEY `FK25r6hwihqbeejvuc6v3jdgilh` (`did`);

--
-- Tablo için indeksler `breed_pet`
--
ALTER TABLE `breed_pet`
  ADD PRIMARY KEY (`br_id`);

--
-- Tablo için indeksler `calendar_info`
--
ALTER TABLE `calendar_info`
  ADD PRIMARY KEY (`cid`);

--
-- Tablo için indeksler `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `UK_aoocyteu6o3xrboa98gll9wra` (`category_title`);

--
-- Tablo için indeksler `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`cid`);

--
-- Tablo için indeksler `color_pet`
--
ALTER TABLE `color_pet`
  ADD PRIMARY KEY (`color_id`);

--
-- Tablo için indeksler `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cu_id`),
  ADD UNIQUE KEY `UK_26xl63wwt2q0vhi57e1wbwskk` (`cu_tcnumber`),
  ADD UNIQUE KEY `cu_mail` (`cu_mail`),
  ADD KEY `FKglkhkmh2vyn790ijs6hiqqpi` (`address_id`),
  ADD KEY `FKao2bcjqe9oc9044j8cdtg0vby` (`cu_gr_id`);

--
-- Tablo için indeksler `customer_group`
--
ALTER TABLE `customer_group`
  ADD PRIMARY KEY (`cu_gr_id`),
  ADD UNIQUE KEY `UK_kx0032jqt5x4t8qicvwcsg89r` (`cu_gr_name`);

--
-- Tablo için indeksler `diary`
--
ALTER TABLE `diary`
  ADD PRIMARY KEY (`diary_id`),
  ADD KEY `FK19iwlec3gc5sqmk0a7vx4w5t4` (`cu_id`),
  ADD KEY `FKnhyqnftb1dpf5qrq43m5mog0d` (`us_id`);

--
-- Tablo için indeksler `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`did`);

--
-- Tablo için indeksler `join_pet_customer`
--
ALTER TABLE `join_pet_customer`
  ADD PRIMARY KEY (`jpt_id`),
  ADD KEY `FK3uyq20458seoh35infpm0pdwp` (`cu_id`),
  ADD KEY `FKhj4g08bd3pyhnhx1tboxsye2c` (`pet_id`);

--
-- Tablo için indeksler `join_type_breed_pet`
--
ALTER TABLE `join_type_breed_pet`
  ADD PRIMARY KEY (`jtbp_id`),
  ADD KEY `FK1r8r447jgydjxp9y2paodm33d` (`br_id`),
  ADD KEY `FK8wmgx38jb8gt9e2h0vgy7qppx` (`ty_id`);

--
-- Tablo için indeksler `lab`
--
ALTER TABLE `lab`
  ADD PRIMARY KEY (`lab_id`),
  ADD KEY `FKtdrxfyx6dg4yridbn8shmugbm` (`jpt_id`),
  ADD KEY `FK9p0ocmgbx755bkuhdhlfj6ybt` (`us_id`);

--
-- Tablo için indeksler `payment_in`
--
ALTER TABLE `payment_in`
  ADD PRIMARY KEY (`pin_id`),
  ADD KEY `FKddur8r3p1i8caorao565mrxxa` (`cu_id`);

--
-- Tablo için indeksler `payment_out`
--
ALTER TABLE `payment_out`
  ADD PRIMARY KEY (`pout_id`);

--
-- Tablo için indeksler `pet`
--
ALTER TABLE `pet`
  ADD PRIMARY KEY (`pet_id`),
  ADD KEY `FKhl7tkyjalv2t4siraqtri15wo` (`color_pet_color_id`),
  ADD KEY `FK5kggjwb4bwtna1kv58rlrq652` (`join_type_breed_pet`);

--
-- Tablo için indeksler `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `FK1mtsbur82frn64de7balymq9s` (`category_id`);

--
-- Tablo için indeksler `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchase_id`),
  ADD KEY `FK3s4jktret4nl7m8yhfc8mfrn5` (`product_id`),
  ADD KEY `FK8omm6fki86s9oqk0o9s6w43h5` (`supplier_id`);

--
-- Tablo için indeksler `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`ro_id`);

--
-- Tablo için indeksler `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_id`),
  ADD KEY `FKg7d1nmnivxg6fayyi56vg7uxq` (`cu_id`),
  ADD KEY `FKonrcqwf09u6spb6ty6sh11jh5` (`product_id`);

--
-- Tablo için indeksler `schedule_calendar`
--
ALTER TABLE `schedule_calendar`
  ADD PRIMARY KEY (`sid`);

--
-- Tablo için indeksler `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`store_id`);

--
-- Tablo için indeksler `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`),
  ADD UNIQUE KEY `UK_aof5tqg9b2ya6ybg99y9ebbhy` (`supplier_mail`);

--
-- Tablo için indeksler `type_pet`
--
ALTER TABLE `type_pet`
  ADD PRIMARY KEY (`ty_id`);

--
-- Tablo için indeksler `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`us_id`),
  ADD UNIQUE KEY `UK_ob8kqyqqgmefl0aco34akdtpe` (`email`);

--
-- Tablo için indeksler `users_roles`
--
ALTER TABLE `users_roles`
  ADD KEY `FKt4v0rrweyk393bdgt107vdx0x` (`role_id`),
  ADD KEY `FKgd3iendaoyh04b95ykqise6qh` (`user_id`);

--
-- Tablo için indeksler `user_follow_in`
--
ALTER TABLE `user_follow_in`
  ADD PRIMARY KEY (`user_follow_in_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `breed_pet`
--
ALTER TABLE `breed_pet`
  MODIFY `br_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Tablo için AUTO_INCREMENT değeri `calendar_info`
--
ALTER TABLE `calendar_info`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `city`
--
ALTER TABLE `city`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- Tablo için AUTO_INCREMENT değeri `color_pet`
--
ALTER TABLE `color_pet`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `customer`
--
ALTER TABLE `customer`
  MODIFY `cu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `customer_group`
--
ALTER TABLE `customer_group`
  MODIFY `cu_gr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `diary`
--
ALTER TABLE `diary`
  MODIFY `diary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Tablo için AUTO_INCREMENT değeri `district`
--
ALTER TABLE `district`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=974;

--
-- Tablo için AUTO_INCREMENT değeri `join_pet_customer`
--
ALTER TABLE `join_pet_customer`
  MODIFY `jpt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Tablo için AUTO_INCREMENT değeri `join_type_breed_pet`
--
ALTER TABLE `join_type_breed_pet`
  MODIFY `jtbp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Tablo için AUTO_INCREMENT değeri `lab`
--
ALTER TABLE `lab`
  MODIFY `lab_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `payment_in`
--
ALTER TABLE `payment_in`
  MODIFY `pin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `payment_out`
--
ALTER TABLE `payment_out`
  MODIFY `pout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `pet`
--
ALTER TABLE `pet`
  MODIFY `pet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Tablo için AUTO_INCREMENT değeri `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `purchase`
--
ALTER TABLE `purchase`
  MODIFY `purchase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `role`
--
ALTER TABLE `role`
  MODIFY `ro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `sale`
--
ALTER TABLE `sale`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `schedule_calendar`
--
ALTER TABLE `schedule_calendar`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `store`
--
ALTER TABLE `store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `type_pet`
--
ALTER TABLE `type_pet`
  MODIFY `ty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `user`
--
ALTER TABLE `user`
  MODIFY `us_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `user_follow_in`
--
ALTER TABLE `user_follow_in`
  MODIFY `user_follow_in_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `FK25r6hwihqbeejvuc6v3jdgilh` FOREIGN KEY (`did`) REFERENCES `district` (`did`),
  ADD CONSTRAINT `FK2uftfxae973hl3iuthmvmkoxo` FOREIGN KEY (`cid`) REFERENCES `city` (`cid`);

--
-- Tablo kısıtlamaları `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `FKao2bcjqe9oc9044j8cdtg0vby` FOREIGN KEY (`cu_gr_id`) REFERENCES `customer_group` (`cu_gr_id`),
  ADD CONSTRAINT `FKglkhkmh2vyn790ijs6hiqqpi` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`);

--
-- Tablo kısıtlamaları `diary`
--
ALTER TABLE `diary`
  ADD CONSTRAINT `FK19iwlec3gc5sqmk0a7vx4w5t4` FOREIGN KEY (`cu_id`) REFERENCES `customer` (`cu_id`),
  ADD CONSTRAINT `FKnhyqnftb1dpf5qrq43m5mog0d` FOREIGN KEY (`us_id`) REFERENCES `user` (`us_id`);

--
-- Tablo kısıtlamaları `join_pet_customer`
--
ALTER TABLE `join_pet_customer`
  ADD CONSTRAINT `FK3uyq20458seoh35infpm0pdwp` FOREIGN KEY (`cu_id`) REFERENCES `customer` (`cu_id`),
  ADD CONSTRAINT `FKhj4g08bd3pyhnhx1tboxsye2c` FOREIGN KEY (`pet_id`) REFERENCES `pet` (`pet_id`);

--
-- Tablo kısıtlamaları `join_type_breed_pet`
--
ALTER TABLE `join_type_breed_pet`
  ADD CONSTRAINT `FK1r8r447jgydjxp9y2paodm33d` FOREIGN KEY (`br_id`) REFERENCES `breed_pet` (`br_id`),
  ADD CONSTRAINT `FK8wmgx38jb8gt9e2h0vgy7qppx` FOREIGN KEY (`ty_id`) REFERENCES `type_pet` (`ty_id`);

--
-- Tablo kısıtlamaları `lab`
--
ALTER TABLE `lab`
  ADD CONSTRAINT `FK9p0ocmgbx755bkuhdhlfj6ybt` FOREIGN KEY (`us_id`) REFERENCES `user` (`us_id`),
  ADD CONSTRAINT `FKtdrxfyx6dg4yridbn8shmugbm` FOREIGN KEY (`jpt_id`) REFERENCES `join_pet_customer` (`jpt_id`);

--
-- Tablo kısıtlamaları `payment_in`
--
ALTER TABLE `payment_in`
  ADD CONSTRAINT `FKddur8r3p1i8caorao565mrxxa` FOREIGN KEY (`cu_id`) REFERENCES `customer` (`cu_id`);

--
-- Tablo kısıtlamaları `pet`
--
ALTER TABLE `pet`
  ADD CONSTRAINT `FK5kggjwb4bwtna1kv58rlrq652` FOREIGN KEY (`join_type_breed_pet`) REFERENCES `join_type_breed_pet` (`jtbp_id`),
  ADD CONSTRAINT `FKhl7tkyjalv2t4siraqtri15wo` FOREIGN KEY (`color_pet_color_id`) REFERENCES `color_pet` (`color_id`);

--
-- Tablo kısıtlamaları `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK1mtsbur82frn64de7balymq9s` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);

--
-- Tablo kısıtlamaları `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `FK3s4jktret4nl7m8yhfc8mfrn5` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `FK8omm6fki86s9oqk0o9s6w43h5` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`);

--
-- Tablo kısıtlamaları `sale`
--
ALTER TABLE `sale`
  ADD CONSTRAINT `FKg7d1nmnivxg6fayyi56vg7uxq` FOREIGN KEY (`cu_id`) REFERENCES `customer` (`cu_id`),
  ADD CONSTRAINT `FKonrcqwf09u6spb6ty6sh11jh5` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Tablo kısıtlamaları `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `FKgd3iendaoyh04b95ykqise6qh` FOREIGN KEY (`user_id`) REFERENCES `user` (`us_id`),
  ADD CONSTRAINT `FKt4v0rrweyk393bdgt107vdx0x` FOREIGN KEY (`role_id`) REFERENCES `role` (`ro_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
