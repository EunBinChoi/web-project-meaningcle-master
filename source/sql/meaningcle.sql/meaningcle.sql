-- phpMyAdmin SQL Dump
-- version 3.2.3
-- http://www.phpmyadmin.net
--
-- 호스트: localhost
-- 처리한 시간: 17-06-12 17:08 
-- 서버 버전: 5.1.41
-- PHP 버전: 5.2.12

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 데이터베이스: `meaningcle`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `basket`
--

CREATE TABLE IF NOT EXISTS `basket` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(500) NOT NULL,
  `item` varchar(500) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- 테이블의 덤프 데이터 `basket`
--

INSERT INTO `basket` (`idx`, `user`, `item`) VALUES
(18, '', '3'),
(17, 'eunbin544', '3'),
(22, '', '50'),
(23, '', '30'),
(19, 'eunbin544', '2'),
(21, 'd', '33');

-- --------------------------------------------------------

--
-- 테이블 구조 `bicycle`
--

CREATE TABLE IF NOT EXISTS `bicycle` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(500) CHARACTER SET utf8 NOT NULL,
  `rental_fee` int(200) NOT NULL,
  `type` varchar(500) CHARACTER SET utf8 NOT NULL,
  `area` varchar(500) CHARACTER SET utf8 NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `route` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- 테이블의 덤프 데이터 `bicycle`
--

INSERT INTO `bicycle` (`idx`, `model`, `rental_fee`, `type`, `area`, `description`, `route`, `lat`, `lng`) VALUES
(1, '20 SUNSET CLASSIC', 10000, '미니벨로', '서울특별시 강서구', '20 SUNSET CLASSIC 입니다.', 'bike/mini_01.jpg', 37.550979, 126.849538),
(2, 'SPAZZO 20', 10000, '미니벨로', '경기도 안양시 동안구', 'SPAZZO 20 입니다.', 'bike/mini_02.jpg', 37.392584, 126.95145),
(3, 'MACMILLAN 20', 10000, '미니벨로', '충청남도 천안시 동남구', 'MACMILLAN 20 입니다.', 'bike/mini_03.jpg', 36.806991, 127.150335),
(4, 'HILARIS 16', 10000, '미니벨로', '대전광역시 유성구', 'HILARIS 16 입니다.', 'bike/mini_04.jpg', 36.362216, 127.356133),
(5, 'M1', 10000, '미니벨로', '경기도 수원시 장안구', 'M1 입니다.', 'bike/mini_05.jpg', 37.303818, 127.009919),
(6, 'GREENITY', 10000, '전기자전거', '전라남도 여수시 종화동', 'GREENITY 입니다.', 'bike/electric_01.jpg', 34.738886, 127.74961),
(7, 'NIMO', 30000, '전기자전거', '전라북도 전주시 완산구', 'NIMO 입니다.', 'bike/electric_02.jpg', 35.812111, 127.11992),
(8, 'INNOZEN', 30000, '전기자전거', '부산광역시 중구', 'INNOZEN 입니다.', 'bike/electric_03.jpg', 35.106146, 129.032342),
(9, 'COMMUTE', 50000, '전기자전거', '서울특별시 강남구', 'COMMUTE 입니다.', 'bike/electric_04.jpg', 37.517236, 127.047325),
(10, 'SPADE', 30000, '전기자전거', '경기도 성남시 수정구', 'SPADE 입니다.', 'bike/electric_05.jpg', 37.450246, 127.14554),
(11, 'DISTRICT NINE', 20000, '픽시', '서울특별시 도봉구', 'DISTRICT NINE 입니다.', 'bike/fixie_01.jpg', 37.668774, 127.047071),
(12, 'BLAZE', 20000, '픽시', '서울특별시 동대문구', 'BLAZE 입니다.', 'bike/fixie_02.jpg', 37.574368, 127.040019),
(13, 'TOCHIKA 520', 20000, '픽시', '서울특별시 강북구', 'TOCHIKA 520 입니다.', 'bike/fixie_03.jpg', 37.63961, 127.025657),
(14, 'TOCHIKA 480', 25000, '픽시', '대전광역시 서구', 'TOCHIKA 480 입니다.', 'bike/fixie_04.jpg', 36.354522, 127.383603),
(15, 'NEWURBAN', 15000, '픽시', '제주특별자치도 제주시', 'NEWURBAN 입니다.', 'bike/fixie_05.jpg', 33.499621, 126.531188),
(16, 'OBDOS M-XT', 21000, '전문 MTB', '충청북도 충주시 성내동', 'OBDOS M-XT 입니다.', 'bike/mtb_01.jpg', 36.970577, 127.935721),
(17, 'MAX M675', 16000, '전문 MTB', '경기도 부천시 원미동', 'MAX M675 입니다.', 'bike/mtb_02.jpg', 37.495126, 126.792473),
(18, 'LOOKSON A650', 11000, '전문 MTB', '전라남도 여수시 수정동', 'LOOKSON A650 입니다.', 'bike/mtb_03.jpg', 34.741791, 127.753686),
(20, 'TW3900XC', 9500, '전문 MTB', '경상북도 경주시 서부동', 'TW3900XC 입니다.', 'bike/mtb_05.jpg', 35.847258, 129.20852),
(21, 'ANM AE20R', 20000, '로드', '경기도 가평군 설악면', 'ANM AE20R 입니다.', 'bike/load_01.jpg', 37.676152, 127.4947),
(22, 'COBRA2', 20000, '로드', '경기도 가평군 가평읍', 'COBRA2 입니다.', 'bike/load_02.jpg', 37.825311, 127.51654),
(23, 'COBERO', 16000, '로드', '부산광역시 부산진구', 'COBERO 입니다.', 'bike/load_03.jpg', 35.163001, 129.053172),
(25, 'AMERICA EAGLE', 38000, '로드', '충청남도 공주시 반죽동', 'AMERICA EAGLE 입니다.', 'bike/load_05.jpg', 36.453902, 127.119495),
(26, 'EDO 21', 9500, '하이브리드', '강원도 평창군 평창읍', 'EDO 21 입니다.', 'bike/hybrid_01.jpg', 37.368858, 128.397183),
(28, 'TURNVERY', 16500, '하이브리드', '전라북도 고창군 고창읍', 'TURNVERY 입니다.', 'bike/hybrid_03.jpg', 35.434452, 126.703077),
(29, 'ONOFF', 22000, '하이브리드', '충청남도 당진시 읍내동', 'ONOFF 입니다.', 'bike/hybrid_04.jpg', 36.894343, 126.633659),
(30, 'YANUS', 26000, '하이브리드', '인천광역시 동구', 'YANUS 입니다.', 'bike/hybrid_05.jpg', 37.473818, 126.643339),
(31, 'ANM S', 5000, '아동용', '인천광역시 중구', 'ANM S 입니다.', 'bike/kids_01.jpg', 37.473734, 126.62148),
(32, 'APEXS', 6000, '아동용', '울산광역시 남구', 'APEXS 입니다.', 'bike/kids_02.jpg', 35.543683, 129.329802),
(33, 'SEVOLE', 7000, '아동용', '강원도 춘천시 봉의동', 'SEVOLE 입니다.', 'bike/kids_03.jpg', 37.886203, 127.731057),
(34, 'XSIDER', 7500, '아동용', '전라남도 목포시 용당동', 'XSIDER 입니다.', 'bike/kids_04.jpg', 34.804345, 126.397743),
(35, 'BUTTONS', 5500, '아동용', '경상북도 안동시 삼산동', 'BUTTONS 입니다.', 'bike/kids_05.jpg', 36.565703, 128.731552),
(40, 'F1', 16000, '미니벨로', '대구광역시 남구 이천동', 'F1 입니다.', 'bike/mini_06.jpg', 35.852446, 128.60294),
(41, 'V1', 12000, '미니벨로', '충청북도 청주시 상당구', 'V1 입니다.', 'bike/mini_07.jpg', 36.632, 127.492988),
(42, 'ENOVATUS 20', 21000, '전기자전거', '전라북도 익산시 창인동2가', 'ENOVATUS 20 입니다.', 'bike/electric_06.jpg', 35.940265, 126.946148),
(43, 'VOLTEXS', 13000, '픽시', '충청남도 서산시 읍내동', 'VOLTEXS 입니다.', 'bike/fixie_06.jpg', 36.782558, 126.444723),
(44, 'FURIOUS', 22000, '하이브리드', '충청남도 아산시 실옥동', 'FURIOUS 입니다.', 'bike/hybrid_06.jpg', 36.7916, 126.989276),
(45, 'TOPONE', 11000, '하이브리드', '서울특별시 용산구 후암동', 'TOPONE 입니다.', 'bike/hybrid_07.jpg', 37.550045, 126.979015),
(46, 'SPEEDER', 8000, '하이브리드', '서울특별시 종로구 청운동', 'SPEEDER 입니다.', 'bike/hybrid_08.jpg', 37.588552, 126.967913),
(47, 'JIANTPK', 16000, '아동용', '서울특별시 성동구 상왕십리동', 'JIANTPK 입니다.', 'bike/kids_06.jpg', 37.568395, 127.024423),
(48, 'JIANTBL', 12000, '아동용', '서울특별시 구로구 구로동', 'JIANTBL 입니다.', 'bike/kids_07.jpg', 37.486441, 126.890838),
(49, 'VELOX JR', 23500, '로드', '서울특별시 구로구 신도림동', 'VELOX JR 입니다.', 'bike/load_06.jpg', 37.508752, 126.88176),
(50, 'TANK 10', 25000, '전문 MTB', '서울특별시 금천구 가산동', 'TANK 10 입니다.', 'bike/mtb_06.jpg', 37.476758, 126.889339);

-- --------------------------------------------------------

--
-- 테이블 구조 `free`
--

CREATE TABLE IF NOT EXISTS `free` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `id` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `nick` char(10) NOT NULL,
  `subject` char(100) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `is_html` char(1) DEFAULT NULL,
  `file_name_0` char(40) DEFAULT NULL,
  `file_name_1` char(40) DEFAULT NULL,
  `file_name_2` char(40) DEFAULT NULL,
  `file_name_3` char(40) DEFAULT NULL,
  `file_name_4` char(40) DEFAULT NULL,
  `file_copied_0` char(30) DEFAULT NULL,
  `file_copied_1` char(30) DEFAULT NULL,
  `file_copied_2` char(30) DEFAULT NULL,
  `file_copied_3` char(30) DEFAULT NULL,
  `file_copied_4` char(30) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=58 ;

--
-- 테이블의 덤프 데이터 `free`
--

INSERT INTO `free` (`num`, `id`, `name`, `nick`, `subject`, `content`, `regist_day`, `hit`, `is_html`, `file_name_0`, `file_name_1`, `file_name_2`, `file_name_3`, `file_name_4`, `file_copied_0`, `file_copied_1`, `file_copied_2`, `file_copied_3`, `file_copied_4`) VALUES
(40, '', '', '', 'dabd', 'D', '2017-06-11 (01:08)', 0, '', '', '', '', NULL, NULL, '', '', '', NULL, NULL),
(41, '', '', '', 'd', 'd', '2017-06-11 (01:10)', 0, '', '', '', '', NULL, NULL, '', '', '', NULL, NULL),
(42, '', '', '', 'd', 'd', '2017-06-11 (01:11)', 0, '', '', '', '', NULL, NULL, '', '', '', NULL, NULL),
(39, '', '', '', 'Dd', 'D', '2017-06-11 (01:05)', 6, '', '', '', '', NULL, NULL, '', '', '', NULL, NULL),
(38, '', '', '', 'D', 'D', '2017-06-11 (01:05)', 1, '', '', '', '', NULL, NULL, '', '', '', NULL, NULL),
(37, '', '', '', 'dabd', 'D', '2017-06-11 (01:04)', 0, '', '', '', '', NULL, NULL, '', '', '', NULL, NULL),
(36, '', '', '', 'D', 'D', '2017-06-11 (01:03)', 0, '', '', '', '', NULL, NULL, '', '', '', NULL, NULL),
(35, '', '', '', 'D', 'D', '2017-06-11 (01:03)', 0, '', '', '', '', NULL, NULL, '', '', '', NULL, NULL),
(34, '', '', '', 'ddd', 'D', '2017-06-11 (01:03)', 0, '', '', '', '', NULL, NULL, '', '', '', NULL, NULL),
(33, '', '', '', 'ã…‡', 'ã…‡', '2017-06-11 (00:54)', 2, '', '', '', '', NULL, NULL, '', '', '', NULL, NULL),
(32, '', '', '', 'd', 'd', '2017-06-11 (00:29)', 1, '', '', '', '', NULL, NULL, '', '', '', NULL, NULL),
(31, '', '', '', 'ddddd', 'd', '2017-06-11 (00:27)', 0, '', '', '', '', NULL, NULL, '', '', '', NULL, NULL),
(30, '', '', '', 'ì•ˆë…•í•˜ì„¸ìš”! ë°˜ê°‘ìŠµë‹ˆë‹¤!', 'ì¢‹ì€ ì‚¬ì´íŠ¸ë¥¼ ì•Œê²Œ ë˜ì–´ ê¸€ì„ ì˜¬ë¦½ë‹ˆë‹¤.\r\nì¢‹ì€ ìžì „ê±° ì—¬í–‰ì§€ ì•Œë ¤ì£¼ì„¸ìš”~~~!! ì†Œí†µí•´ìš”~~', '2017-06-10 (23:40)', 3, '', '', '', '', NULL, NULL, '', '', '', NULL, NULL),
(29, '', '', '', 'ì•ˆë…•í•˜ì„¸ìš”! ì €ëŠ” 30ëŒ€ ìžì „ê±° íƒ€ê¸°ë¥¼ ì¢‹ì•„í•˜ëŠ” ê¹€ê·¼í˜¸ìž…ë‹ˆë‹¤.', 'ì•ˆë…•í•˜ì„¸ìš”! ì €ëŠ” 30ëŒ€ ìžì „ê±° íƒ€ê¸°ë¥¼ ì¢‹ì•„í•˜ëŠ” ê¹€ê·¼í˜¸ë¼ê³  í•©ë‹ˆë‹¤.\r\nì´ë²ˆì— ì´ ì‚¬ì´íŠ¸ë¥¼ ì•Œê²Œ ë˜ì–´ ì •ë§ ê¸°ì©ë‹ˆë‹¤!\r\nìžì „ê±°ë¥¼ ì¢‹ì•„í•˜ëŠ” ì‚¬ëžŒë“¤ë¼ë¦¬ ì¢‹ì€ ì •ë³´ ê³µìœ í•´ì£¼ì…¨ìœ¼ë©´ ì¢‹ê² ìŠµë‹ˆë‹¤!\r\n', '2017-06-10 (23:10)', 16, '', '', '', '', NULL, NULL, '', '', '', NULL, NULL),
(28, '', '', '', 'ì•ˆë…•í•˜ì„¸ìš”! ì €ëŠ” ìžì „ê±° íƒ€ëŠ” ê²ƒì„ ì¢‹ì•„í•˜ëŠ” ìµœì€ë¹ˆì´ë¼ê³  í•©ë‹ˆë‹¤.', 'ì•ˆë…•í•˜ì„¸ìš”! ì €ëŠ” ìžì „ê±° íƒ€ëŠ” ê²ƒì„ ì¢‹ì•„í•˜ëŠ” ìµœì€ë¹ˆì´ë¼ê³  í•©ë‹ˆë‹¤.\r\nì¸í„°ë„· ì„œí•‘ì„ í•˜ë‹¤ê°€ ì´ëŸ° ì¢‹ì€ í™ˆíŽ˜ì´ì§€ê°€ ìžˆì–´ ê¸€ì„ ì˜¬ë¦½ë‹ˆë‹¤.\r\nìžì „ê±°ë¥¼ ì¢‹ì•„í•˜ì§€ë§Œ ìƒˆë¡œìš´ ì—¬í–‰ì— ë„ì „í•  ë•Œ ë‹¤ë¥¸ ì¢…ë¥˜ì˜ ìžì „ê±°ë“¤ì´ í•„ìš”í•œë°,\r\nì´ë¥¼ ì œëˆìœ¼ë¡œ ëª¨ë‘ êµ¬ë§¤í•˜ëŠ” ê²ƒì´ ë§¤ë²ˆ ë¶€ë‹´ìŠ¤ëŸ½ê²Œ ëŠê»´ì¡ŒìŠµë‹ˆë‹¤. \r\ní•˜ì§€ë§Œ ì´ê³³ì—ì„œ ë ŒíŠ¸ë¥¼ í•˜ë©´ ì¢‹ê² ë‹¤ëŠ” ìƒê°ì´ ë“¤ì—ˆìŠµë‹ˆë‹¤.\r\nì •ë§ ì¢‹ì€ í™ˆíŽ˜ì´ì§€ ê°™ë„¤ìš”! ì‚¬ì§„ì€ ìµœê·¼ì— ì‚° ì œ ìžì „ê±° ì‚¬ì§„ìž…ë‹ˆë‹¤! ', '2017-06-10 (21:16)', 13, '', 'hybrid_02.jpg', '', '', NULL, NULL, '2017_06_10_21_16_43_0.jpg', '', '', NULL, NULL),
(43, '', '', '', 'dddd', 'd', '2017-06-11 (01:11)', 2, '', '', '', '', NULL, NULL, '', '', '', NULL, NULL),
(44, '', '', '', 'd', 'd', '2017-06-11 (01:20)', 0, '', '', '', '', NULL, NULL, '', '', '', NULL, NULL),
(45, '', '', '', 'ã…‡', 'ã…‡', '2017-06-11 (01:29)', 0, '', '', '', '', NULL, NULL, '', '', '', NULL, NULL),
(46, '', '', '', 'ã…‡', 'ã…‡', '2017-06-11 (01:30)', 0, '', '', '', '', NULL, NULL, '', '', '', NULL, NULL),
(47, '', '', '', 'ã…‡', 'ã…‡', '2017-06-11 (01:32)', 4, '', '', '', '', NULL, NULL, '', '', '', NULL, NULL),
(48, '', '', '', 'ddd', 'D', '2017-06-11 (02:01)', 0, '', '', '', '', NULL, NULL, '', '', '', NULL, NULL),
(49, '', '', '', 'G', 'G', '2017-06-11 (02:05)', 0, '', '', '', '', NULL, NULL, '', '', '', NULL, NULL),
(50, '', '', '', 'D', 'D', '2017-06-11 (02:05)', 0, '', '', '', '', NULL, NULL, '', '', '', NULL, NULL),
(51, '', '', '', 'D', 'D', '2017-06-11 (02:08)', 1, '', '', '', '', NULL, NULL, '', '', '', NULL, NULL),
(52, '', '', '', 'D', 'D', '2017-06-11 (02:08)', 0, '', '', '', '', NULL, NULL, '', '', '', NULL, NULL),
(53, '', '', '', 'D', 'D', '2017-06-11 (02:09)', 0, '', '', '', '', NULL, NULL, '', '', '', NULL, NULL),
(54, '', '', '', 'D', 'D', '2017-06-11 (02:09)', 9, '', '', '', '', NULL, NULL, '', '', '', NULL, NULL),
(55, '', '', '', 'dddD', 'D', '2017-06-11 (02:21)', 0, '', '', '', '', NULL, NULL, '', '', '', NULL, NULL),
(56, '', '', '', 'D', 'D', '2017-06-11 (02:21)', 3, '', '', '', '', NULL, NULL, '', '', '', NULL, NULL),
(57, '', '', '', 'D', 'D', '2017-06-11 (02:26)', 0, '', '', '', '', NULL, NULL, '', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- 테이블 구조 `free_ripple`
--

CREATE TABLE IF NOT EXISTS `free_ripple` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL,
  `id` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `nick` char(10) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- 테이블의 덤프 데이터 `free_ripple`
--


-- --------------------------------------------------------

--
-- 테이블 구조 `love`
--

CREATE TABLE IF NOT EXISTS `love` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(500) NOT NULL,
  `item` varchar(500) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- 테이블의 덤프 데이터 `love`
--

INSERT INTO `love` (`idx`, `user`, `item`) VALUES
(12, 'eunbin544', '3'),
(8, '', '5'),
(6, '', '31'),
(10, 'd', '4'),
(13, '', '3');

-- --------------------------------------------------------

--
-- 테이블 구조 `survey`
--

CREATE TABLE IF NOT EXISTS `survey` (
  `ans1` int(11) DEFAULT NULL,
  `ans2` int(11) DEFAULT NULL,
  `ans3` int(11) DEFAULT NULL,
  `ans4` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `survey`
--

INSERT INTO `survey` (`ans1`, `ans2`, `ans3`, `ans4`) VALUES
(9, 1, 3, 2);

-- --------------------------------------------------------

--
-- 테이블 구조 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `Id` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PhoneNum` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `user`
--

INSERT INTO `user` (`Id`, `Password`, `Name`, `Email`, `PhoneNum`) VALUES
('d', 'd', 'd', 'ddocarillo', 'd'),
('dd', 'd', 'd', 'ddocarillo@gmail.com', 'd'),
('eunbin544', 'd', '최은빈', 'soojin1220@naver.com', '01012345678');
