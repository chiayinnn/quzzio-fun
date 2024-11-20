-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2024-11-20 23:12:02
-- 服务器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `quizzio_db`
--

-- --------------------------------------------------------

--
-- 表的结构 `answers`
--

CREATE TABLE `answers` (
  `Ans_ID` int(11) NOT NULL,
  `Ques_ID` int(11) DEFAULT NULL,
  `Option` varchar(255) NOT NULL,
  `Is_correct` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `answers`
--

INSERT INTO `answers` (`Ans_ID`, `Ques_ID`, `Option`, `Is_correct`) VALUES
(1, 1, 'Beutiful', 0),
(2, 1, 'Bueatiful', 0),
(3, 1, 'Beautifull', 0),
(4, 1, 'Beautiful', 1),
(5, 2, 'Children', 1),
(6, 2, 'Childs', 0),
(7, 2, 'Childs', 0),
(8, 2, 'Childen', 0),
(9, 3, 'Red', 1),
(10, 3, 'Book', 0),
(11, 3, 'Chair', 0),
(12, 3, 'Run', 0),
(13, 4, 'Play', 0),
(14, 4, 'Played', 1),
(15, 4, 'Playd', 0),
(16, 4, 'Playen', 0),
(17, 5, 'Is', 0),
(18, 5, 'Sleeping', 0),
(19, 5, 'The cat', 1),
(20, 5, 'The', 0),
(21, 6, 'Friend', 1),
(22, 6, 'Fren', 0),
(23, 6, 'Freind', 0),
(24, 6, 'Frend', 0),
(25, 7, 'I eated lunch yesterday', 0),
(26, 7, 'I ate lunch yesterday', 1),
(27, 7, 'I eating lunch yesterday', 0),
(28, 7, 'I eat lunch yesterday', 0),
(29, 8, 'Short', 0),
(30, 8, 'Big', 0),
(31, 8, 'Tall', 0),
(32, 8, 'Small', 1),
(33, 9, 'House', 1),
(34, 9, 'Quickly', 0),
(35, 9, 'Happy', 0),
(36, 9, 'Run', 0),
(37, 10, 'Mouse', 0),
(38, 10, 'Mices', 0),
(39, 10, 'Mice', 1),
(40, 10, 'Mouses', 0),
(41, 11, 'Me and her went to the store.', 0),
(42, 11, 'She and I went to the store.', 1),
(43, 11, 'She and me went to the store.', 0),
(44, 11, 'She went with I to the store.', 0),
(45, 12, 'Necesary', 0),
(46, 12, 'Necessary', 1),
(47, 12, 'Necessay', 0),
(48, 12, 'Neccessary', 0),
(49, 13, 'Bright', 1),
(50, 13, 'Brighten', 0),
(51, 13, 'Brightly', 0),
(52, 13, 'Brightly', 0),
(53, 14, 'Happyer', 0),
(54, 14, 'Happyest', 0),
(55, 14, 'Happier', 1),
(56, 14, 'More happy', 0),
(57, 15, 'Its raining; lets go inside.', 0),
(58, 15, 'It\'s raining, let\'s go inside.', 0),
(59, 15, 'Its raining, lets go inside.', 0),
(60, 15, 'It\'s raining; let\'s go inside.', 1),
(61, 16, 'Disappear', 1),
(62, 16, 'Disapear', 0),
(63, 16, 'Dissappeer', 0),
(64, 16, 'Dissapear', 0),
(65, 17, 'Neither of them were coming to the party.', 0),
(66, 17, 'Neither them is coming to the party.', 0),
(67, 17, 'Neither of them is coming to the party.', 1),
(68, 17, 'Neither of them are coming to the party.', 0),
(69, 18, 'Over', 0),
(70, 18, 'Un-', 1),
(71, 18, 'Pre-', 0),
(72, 18, 'Re-', 0),
(73, 19, 'Indicate', 0),
(74, 19, 'Inflate', 0),
(75, 19, 'PIncrease', 0),
(76, 19, 'Exclude', 1),
(77, 20, 'The team were winning.', 0),
(78, 20, 'The team is winning.', 1),
(79, 20, 'The team are winning.', 0),
(80, 20, 'The team be winning.', 0),
(81, 21, 'Acommodate', 0),
(82, 21, 'Acomodate', 0),
(83, 21, 'Accommodate', 1),
(84, 21, 'Acommoddate', 0),
(85, 22, 'Who did you give the book?', 0),
(86, 22, 'Whom did you give the book to?', 0),
(87, 22, 'To whom did you give the book?', 1),
(88, 22, 'Who did you give the book to?', 0),
(89, 23, 'Grievous', 1),
(90, 23, 'Grevous', 0),
(91, 23, 'Grivous', 0),
(92, 23, 'Grevious', 0),
(93, 24, 'Scarce', 0),
(94, 24, 'Small', 0),
(95, 24, 'Short', 0),
(96, 24, 'Plentiful', 1),
(97, 25, 'The cake is being eaten.', 0),
(98, 25, 'The cake was eaten by the children.', 1),
(99, 25, 'The children were eating cake.', 0),
(100, 25, 'The children ate the cake.', 0),
(101, 26, 'The book that I read, last week was thrilling.', 0),
(102, 26, 'The book; that I read last week, was thrilling.', 0),
(103, 26, 'The book that I read last week was thrilling.', 1),
(104, 26, 'The book, that I read last week, was thrilling.', 0),
(105, 27, 'Wealthy', 0),
(106, 27, 'Kind and generous', 1),
(107, 27, 'Cautious', 0),
(108, 27, 'Intelligent', 0),
(109, 28, 'Buy', 0),
(110, 28, 'Beer', 0),
(111, 28, 'Bare', 1),
(112, 28, 'Bore', 0),
(113, 29, 'Crises', 1),
(114, 29, 'Crisis\'s', 0),
(115, 29, 'Crisis', 0),
(116, 29, 'Crisises', 0),
(117, 30, 'He ran quickly to catch the bus.', 0),
(118, 30, 'She was clearly confused by the directions.', 1),
(119, 30, 'He spoke with an angry tone.', 0),
(120, 30, 'She quietly entered the room.', 0),
(121, 31, 'Daffodil', 0),
(122, 31, 'Rafflesia', 1),
(123, 31, 'Hibiscus', 0),
(124, 31, 'Coconut', 0),
(125, 32, '10', 0),
(126, 32, '16', 0),
(127, 32, '13', 1),
(128, 32, '20', 0),
(129, 33, 'east, west', 1),
(130, 33, 'south, north', 0),
(131, 33, 'west, east', 0),
(132, 33, 'north, south', 0),
(133, 34, 'Africa', 0),
(134, 34, 'Europe', 0),
(135, 34, 'South America', 0),
(136, 34, 'Asia', 1),
(137, 35, 'Rain', 0),
(138, 35, 'Sunshine', 0),
(139, 35, 'Haze', 1),
(140, 35, 'Storm', 0),
(141, 36, 'Johor', 0),
(142, 36, 'Kelantan', 0),
(143, 36, 'Selangor.', 0),
(144, 36, 'Pahang', 1),
(145, 37, 'Sailing', 1),
(146, 37, 'Cycling', 0),
(147, 37, 'Snowboarding', 0),
(148, 37, 'Skating', 0),
(149, 38, 'President', 0),
(150, 38, 'Governor', 0),
(151, 38, 'Prime Minister', 1),
(152, 38, 'Sultan', 0),
(153, 39, 'Tells us where people and places are.', 1),
(154, 39, 'Tells us what makes an area special and what makes it different from every other area.', 0),
(155, 39, 'Tells how people, goods, resources, and ideas move from one place to another.', 0),
(156, 39, 'All of the above.', 0),
(157, 40, 'Location', 0),
(158, 40, 'Movement', 0),
(159, 40, 'Place', 0),
(160, 40, 'Human-Environment Interaction', 1),
(161, 41, 'France', 0),
(162, 41, 'Russia', 0),
(163, 41, 'India', 0),
(164, 41, 'China', 1),
(165, 42, 'Mount Everest', 1),
(166, 42, 'Mount Kilimanjaro', 0),
(167, 42, 'Mauna Kea', 0),
(168, 42, 'Mount Kinabalu', 0),
(169, 43, '4,283m', 0),
(170, 43, '4,123m', 0),
(171, 43, '4,095m', 1),
(172, 43, '4,692m', 0),
(173, 44, 'Kinabatangan', 0),
(174, 44, 'Rajang', 1),
(175, 44, 'Pahang', 0),
(176, 44, 'Perak', 0),
(177, 45, '30', 0),
(178, 45, '51', 0),
(179, 45, '12', 0),
(180, 45, '7', 1),
(181, 46, 'Royal Town', 1),
(182, 46, 'Capital city', 0),
(183, 46, 'Municipal council', 0),
(184, 46, 'District council', 0),
(185, 47, 'Arau ---> Johor Bahru', 0),
(186, 47, 'Bukit Kayu Hitam ---> Singapore', 0),
(187, 47, 'Bukit Kayu Hitam ---> Johor Bahru', 1),
(188, 47, 'Kangar ---> Johor Bahru', 0),
(189, 48, '6', 0),
(190, 48, '5', 1),
(191, 48, '4', 0),
(192, 48, '7', 0),
(193, 49, '4', 1),
(194, 49, '1', 0),
(195, 49, '100', 0),
(196, 49, '14', 0),
(197, 50, 'North, West', 0),
(198, 50, 'East, West', 1),
(199, 50, 'North, South', 0),
(200, 50, 'East, South', 0),
(201, 51, 'South China Sea', 1),
(202, 51, 'Arabian Sea', 0),
(203, 51, 'Black Sea', 0),
(204, 51, 'Caribbean Sea', 0),
(205, 52, 'Asia', 0),
(206, 52, 'Europe', 0),
(207, 52, 'Australia', 0),
(208, 52, 'Africa', 1),
(209, 53, '32,433 km', 0),
(210, 53, '40,075 km', 1),
(211, 53, '50,575 km', 0),
(212, 53, '100,323 km', 0),
(213, 54, 'Seremban, Kuala Pilah, Port Dickson, Muar', 0),
(214, 54, 'Kuantan, Temerloh, Pekan, Kemaman', 0),
(215, 54, 'Teluk Intan, Seri Manjung, Kuala Kangsar, Taiping', 1),
(216, 54, 'Kangar, Kota Bahru, Kulim, Kuah', 0),
(217, 55, '330,000 km²', 1),
(218, 55, '600,000 km²', 0),
(219, 55, '430,000 km²', 0),
(220, 55, '280,000 km²', 0),
(221, 56, 'Landforms', 0),
(222, 56, 'Physical Features', 0),
(223, 56, 'Geographic Features', 0),
(224, 56, 'Features of Physical Geography', 1),
(225, 57, 'Asia', 0),
(226, 57, 'North America', 0),
(227, 57, 'Africa', 1),
(228, 57, 'South America', 0),
(229, 58, 'Asia', 1),
(230, 58, 'Antarctica', 0),
(231, 58, 'Africa', 0),
(232, 58, 'Russia', 0),
(233, 59, 'Location', 0),
(234, 59, 'Language', 1),
(235, 59, 'Movement', 0),
(236, 59, 'Human-Environment Interaction', 0),
(237, 60, 'distance between objects or places', 0),
(238, 60, 'distance between land masses and water on a map', 0),
(239, 60, 'distance between latitude and longitude lines on map', 0),
(240, 60, 'distance on a map in relation to actual distance on Earth', 1),
(241, 61, 'Abraham Lincoln', 0),
(242, 61, 'George Washington', 1),
(243, 61, 'John Adams', 0),
(244, 61, 'Thomas Jefferson', 0),
(245, 62, 'Japan', 0),
(246, 62, 'China', 1),
(247, 62, 'India', 0),
(248, 62, 'Egypt', 0),
(249, 63, 'Romans', 0),
(250, 63, 'Aztecs', 0),
(251, 63, 'Egyptians', 1),
(252, 63, 'Greeks', 0),
(253, 64, 'Apollo 11', 1),
(254, 64, 'Voyager 1', 0),
(255, 64, 'Challenger', 0),
(256, 64, 'Skylab', 0),
(257, 65, 'July 4', 0),
(258, 65, 'August 31', 1),
(259, 65, 'September 16', 0),
(260, 65, 'December 25', 0),
(261, 66, 'The Crescent and Star', 0),
(262, 66, 'The National Flag', 0),
(263, 66, 'Jalur Gemilang (Stripes of Glory)', 1),
(264, 66, 'The Malayan Star', 0),
(265, 67, 'Mahathir Mohamad', 0),
(266, 67, 'Tunku Abdul Rahman', 0),
(267, 67, 'Abdullah Badawi', 1),
(268, 67, 'Najib Razak', 0),
(269, 68, 'Petronas Twin Towers', 1),
(270, 68, 'Tokyo Tower', 0),
(271, 68, 'Statue of Liberty', 0),
(272, 68, 'Sydney Opera House', 0),
(273, 69, '10', 0),
(274, 69, '13', 1),
(275, 69, '14', 0),
(276, 69, '16', 0),
(277, 70, 'Rose', 0),
(278, 70, 'Sunflower', 0),
(279, 70, 'Orchid', 0),
(280, 70, 'Hibiscus', 1),
(281, 71, 'Charles V', 0),
(282, 71, 'Edward lll', 1),
(283, 71, 'Louis XIV', 0),
(284, 71, 'Henry VIII', 0),
(285, 72, '395 AD', 0),
(286, 72, '410 AD', 0),
(287, 72, '476 AD', 1),
(288, 72, '533 AD', 0),
(289, 73, 'Harry Truman', 0),
(290, 73, 'Dwight Eisenhower', 0),
(291, 73, 'John F. Kennedy', 1),
(292, 73, 'Richard Nixon', 0),
(293, 74, 'Guadalcanal', 0),
(294, 74, 'Pearl Harbor', 1),
(295, 74, 'Midway', 0),
(296, 74, 'Coral Sea', 0),
(297, 75, 'The Duke of Wellington', 1),
(298, 75, 'George Washington', 0),
(299, 75, 'Augustus', 0),
(300, 75, 'Claremont Day', 0),
(301, 76, 'Franklin D. Roosevelt', 0),
(302, 76, 'Harry Truman', 0),
(303, 76, 'Winston Churchill', 1),
(304, 76, 'Joseph Stalin', 0),
(305, 77, 'Emancipation Proclamation', 0),
(306, 77, 'Bill of Rights', 0),
(307, 77, 'Gettysburg Address', 1),
(308, 77, 'Declaration of Independence', 0),
(309, 78, 'Athens', 0),
(310, 78, 'Sparta', 0),
(311, 78, 'Macedonia', 1),
(312, 78, 'Pompeii', 0),
(313, 79, 'Rome', 0),
(314, 79, 'Venice', 0),
(315, 79, 'Florence', 1),
(316, 79, 'Milan', 0),
(317, 80, 'Ignatius of Loyola', 1),
(318, 80, 'Thomas Aquinas', 0),
(319, 80, 'Martin Luther', 0),
(320, 80, 'John Calvin', 0),
(321, 81, 'Charles Darwin', 0),
(322, 81, 'Carl Linnaeus', 1),
(323, 81, 'Aristotle', 0),
(324, 81, 'Albert Einstein', 0),
(325, 82, 'France', 0),
(326, 82, 'United Kingdom', 1),
(327, 82, 'United States', 0),
(328, 82, 'Germany', 0),
(329, 83, 'Cusco', 1),
(330, 83, 'Lima', 0),
(331, 83, 'Potosi', 0),
(332, 83, 'Machu Picchu', 0),
(333, 84, 'Bacon', 0),
(334, 84, 'More', 1),
(335, 84, 'Machiavelli', 0),
(336, 84, 'Locke', 0),
(337, 85, 'Alexander Fleming', 1),
(338, 85, 'Louis Pasteur', 0),
(339, 85, 'Robert Koch', 0),
(340, 85, 'Edward Jenner', 0),
(341, 86, 'Grand Canal', 0),
(342, 86, 'Great Wall', 1),
(343, 86, 'Terracotta Army', 0),
(344, 86, 'Porcelain Tower', 0),
(345, 87, 'Charles II', 0),
(346, 87, 'James II', 0),
(347, 87, 'William III', 1),
(348, 87, 'Mary I', 0),
(349, 88, 'Brezhnev', 0),
(350, 88, 'Malenkov', 0),
(351, 88, 'Khrushchev', 1),
(352, 88, 'Stalin', 0),
(353, 89, 'Napoleon', 1),
(354, 89, 'Duke of Wellington', 0),
(355, 89, 'Metternich', 0),
(356, 89, 'Archduke Charles', 0),
(357, 90, 'World War I', 0),
(358, 90, 'American Civil War', 0),
(359, 90, 'The Great Depression', 1),
(360, 90, 'American Revolutionary War', 0),
(361, 91, '10', 0),
(362, 91, '11', 0),
(363, 91, '12', 0),
(364, 91, '13', 1),
(365, 92, '8', 1),
(366, 92, '9', 0),
(367, 92, '10', 0),
(368, 92, '11', 0),
(369, 93, '10', 0),
(370, 93, '11', 0),
(371, 93, '12', 1),
(372, 93, '13', 0),
(373, 94, '9', 0),
(374, 94, '10', 1),
(375, 94, '11', 0),
(376, 94, '12', 0),
(377, 95, '10', 0),
(378, 95, '11', 0),
(379, 95, '20', 0),
(380, 95, '21', 1),
(381, 96, '5', 0),
(382, 96, '4', 0),
(383, 96, '3', 1),
(384, 96, '2', 0),
(385, 97, '15', 0),
(386, 97, '16', 1),
(387, 97, '17', 0),
(388, 97, '18', 0),
(389, 98, '40', 1),
(390, 98, '35', 0),
(391, 98, '30', 0),
(392, 98, '25', 0),
(393, 99, '18', 1),
(394, 99, '21', 0),
(395, 99, '24', 0),
(396, 99, '27', 0),
(397, 100, '4', 0),
(398, 100, '8', 0),
(399, 100, '16', 0),
(400, 100, '20', 1),
(401, 101, '7', 1),
(402, 101, '14', 0),
(403, 101, '21', 0),
(404, 101, '24', 0),
(405, 102, '5', 0),
(406, 102, '10', 1),
(407, 102, '15', 0),
(408, 102, '20', 0),
(409, 103, '2', 0),
(410, 103, '4', 1),
(411, 103, '6', 0),
(412, 103, '8', 0),
(413, 104, '12', 0),
(414, 104, '15', 0),
(415, 104, '18', 1),
(416, 104, '21', 0),
(417, 105, '10 cm', 0),
(418, 105, '15 cm', 0),
(419, 105, '20 cm', 0),
(420, 105, '25 cm', 1),
(421, 106, '4 cm²', 0),
(422, 106, '8 cm²', 0),
(423, 106, '12 cm²', 1),
(424, 106, '16 cm²', 0),
(425, 107, '15.84 cm', 0),
(426, 107, '16.84 cm', 0),
(427, 107, '17.84 cm', 0),
(428, 107, '18.84 cm', 1),
(429, 108, '100 liters', 0),
(430, 108, '150 liters', 1),
(431, 108, '200 liters', 0),
(432, 108, '250 liters', 0),
(433, 109, '3 hours', 1),
(434, 109, '4 hours', 0),
(435, 109, '5 hours', 0),
(436, 109, '6 hours', 0),
(437, 110, '20', 0),
(438, 110, '30', 0),
(439, 110, '40', 0),
(440, 110, '50', 1),
(441, 111, 'x=2 or x=-2', 0),
(442, 111, 'x=2 or x=-3', 0),
(443, 111, 'x=3 or x=-3', 1),
(444, 111, 'x=3 or x=-2', 0),
(445, 112, 'x=-1', 0),
(446, 112, 'x=-3', 1),
(447, 112, 'x=-5', 0),
(448, 112, 'x=-7', 0),
(449, 113, 'x=2 or x=-2', 1),
(450, 113, 'x=3 or x=-3', 0),
(451, 113, 'x=4 or x=-4', 0),
(452, 113, 'x=3 or x=-3', 0),
(453, 114, 'x=2 or x=1', 0),
(454, 114, 'x=3 or x=4', 0),
(455, 114, 'x=2 or x=4', 0),
(456, 114, 'x=1 or x=3', 1),
(457, 115, '0.25', 0),
(458, 115, '0.50', 1),
(459, 115, '0.75', 0),
(460, 115, '0.90', 0),
(461, 116, '0.525', 1),
(462, 116, '0.866', 0),
(463, 116, '0.335', 0),
(464, 116, '0.535', 0),
(465, 117, '0.33', 0),
(466, 117, '0.31', 0),
(467, 117, '0.32', 1),
(468, 117, '0.40', 0),
(469, 118, '30', 1),
(470, 118, '45', 0),
(471, 118, '60', 0),
(472, 118, '90', 0),
(473, 119, '2x+2', 0),
(474, 119, '4x+8', 0),
(475, 119, '3x+9', 0),
(476, 119, '6x+2', 1),
(477, 120, '2x', 0),
(478, 120, 'x^2', 1),
(479, 120, '2', 0),
(480, 120, 'x', 0),
(481, 121, 'O₂', 0),
(482, 121, 'H₂O', 1),
(483, 121, 'CO₂', 0),
(484, 121, 'N₂', 0),
(485, 122, 'Mars', 1),
(486, 122, 'Venus', 0),
(487, 122, 'Jupiter', 0),
(488, 122, 'Saturn', 0),
(489, 123, 'Oxygen', 0),
(490, 123, 'Nitrogen', 0),
(491, 123, 'Carbon Dioxide', 1),
(492, 123, 'Helium', 0),
(493, 124, 'Magnetism', 0),
(494, 124, 'Gravity', 1),
(495, 124, 'Friction', 0),
(496, 124, 'Inertia', 0),
(497, 125, '6', 0),
(498, 125, '8', 1),
(499, 125, '10', 0),
(500, 125, '12', 0),
(501, 126, 'Electron', 0),
(502, 126, 'Nucleus', 1),
(503, 126, 'Proton', 0),
(504, 126, 'Neutron', 0),
(505, 127, 'Respiration', 0),
(506, 127, 'Digestion', 0),
(507, 127, 'Photosynthesis', 1),
(508, 127, 'Fermentation', 0),
(509, 128, '0°C', 0),
(510, 128, '50°C', 0),
(511, 128, '100°C', 1),
(512, 128, '200°C', 0),
(513, 129, 'Worm', 0),
(514, 129, 'Chameleon', 1),
(515, 129, 'Zebra', 0),
(516, 129, 'Snake', 0),
(517, 130, 'Heart', 0),
(518, 130, 'Brain', 1),
(519, 130, 'Lungs', 0),
(520, 130, 'Liver', 0),
(521, 131, 'Helium', 0),
(522, 131, 'Hydrogen', 1),
(523, 131, 'Oxygen', 0),
(524, 131, 'Nitrogen', 0),
(525, 132, 'Nucleus', 0),
(526, 132, 'Endoplasmic Reticulum', 0),
(527, 132, 'Ribosome', 0),
(528, 132, 'Mitochondria', 1),
(529, 133, 'Nitrogen', 1),
(530, 133, 'Carbon Dioxide', 0),
(531, 133, 'Oxygen', 0),
(532, 133, 'Hydrogen', 0),
(533, 134, 'Albert Einstein', 0),
(534, 134, 'Isaac Newton', 1),
(535, 134, 'Galileo Galilei', 0),
(536, 134, 'Marie Curie', 0),
(537, 135, 'Arteries', 1),
(538, 135, 'Veins', 0),
(539, 135, 'Capillaries', 0),
(540, 135, 'Nerves', 0),
(541, 136, 'Brain', 0),
(542, 136, 'Heart', 0),
(543, 136, 'Skin', 1),
(544, 136, 'Liver', 0),
(545, 137, 'Louis Pasteur', 0),
(546, 137, 'Nikola Tesla', 0),
(547, 137, 'Gregor Mendel', 0),
(548, 137, 'Charles Darwin', 1),
(549, 138, 'Cerebrum', 0),
(550, 138, 'Cerebellum', 1),
(551, 138, 'Brainstem', 0),
(552, 138, 'Medulla', 0),
(553, 139, 'Joule', 0),
(554, 139, 'Newton', 1),
(555, 139, 'Watt', 0),
(556, 139, 'Pascal', 0),
(557, 140, 'Earth', 0),
(558, 140, 'Mars', 0),
(559, 140, 'Saturn', 1),
(560, 140, 'Venus', 0),
(561, 141, 'Francium', 0),
(562, 141, 'Astatine', 1),
(563, 141, 'Radon', 0),
(564, 141, 'Polonium', 0),
(565, 142, 'Refraction', 1),
(566, 142, 'Reflection', 0),
(567, 142, 'Dispersion', 0),
(568, 142, 'Diffraction', 0),
(569, 143, 'Nitrogen', 1),
(570, 143, 'Carbon Dioxide', 0),
(571, 143, 'Oxygen', 0),
(572, 143, 'Argon', 0),
(573, 144, '3.5 billion years', 0),
(574, 144, '4.5 billion years', 1),
(575, 144, '5.5 billion years', 0),
(576, 144, '6.5 billion years', 0),
(577, 145, 'Neutron', 0),
(578, 145, 'Electron', 0),
(579, 145, 'Proton', 1),
(580, 145, 'Positron', 0),
(581, 146, 'X-rays', 0),
(582, 146, 'Gamma rays', 1),
(583, 146, 'Ultraviolet light', 0),
(584, 146, 'Radio waves', 0),
(585, 147, 'Newton’s Law', 0),
(586, 147, 'Charles\'s Law', 0),
(587, 147, 'Boyle’s Law', 1),
(588, 147, 'Bernoulli\'s Law', 0),
(589, 148, 'Calcium', 0),
(590, 148, 'Aluminum', 0),
(591, 148, 'Iron', 0),
(592, 148, 'Silicon', 1),
(593, 149, 'Hydrogen', 1),
(594, 149, 'Carbon', 0),
(595, 149, 'Oxygen', 0),
(596, 149, 'Helium', 0),
(597, 150, '5', 0),
(598, 150, '7', 1),
(599, 150, '9', 0),
(600, 150, '12', 0);

-- --------------------------------------------------------

--
-- 表的结构 `question`
--

CREATE TABLE `question` (
  `Ques_ID` int(11) NOT NULL,
  `Quiz_ID` int(11) DEFAULT NULL,
  `Question` text NOT NULL,
  `Answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `question`
--

INSERT INTO `question` (`Ques_ID`, `Quiz_ID`, `Question`, `Answer`) VALUES
(1, 1, 'Which word is spelled correctly?', 'Beautiful'),
(2, 1, 'Which is the correct plural form of \"child\"?', 'Children'),
(3, 1, 'Which of these words is a color?', 'Red'),
(4, 1, 'Choose the correct past tense of \"play\".', 'Played'),
(5, 1, '\"The cat is sleeping.\" What is the subject of this sentence?', 'The cat'),
(6, 1, 'Which word is spelled correctly?.', 'Friend'),
(7, 1, 'What is the correct way to say \"I eat lunch yesterday\"?', 'I ate lunch yesterday'),
(8, 1, 'What is the opposite of \"big\"?', 'Small'),
(9, 1, 'Which word is a noun?', 'House'),
(10, 1, 'What is the plural form of \"mouse\"?', 'Mice'),
(11, 2, 'Which sentence is grammatically correct?', 'She and I went to the store.'),
(12, 2, 'Choose the correct spelling.', 'Necessary'),
(13, 2, 'Which of these words is an adjective?', 'Bright'),
(14, 2, 'What is the comparative form of \"happy\"?', 'Happier'),
(15, 2, 'Select the correctly punctuated sentence.', 'It\'s raining;let\'s go inside.'),
(16, 2, 'Which of these words is spelled correctly?	', 'Disappear'),
(17, 2, 'Choose the correct sentence.', 'Neither of them is coming to the party.'),
(18, 2, 'Which prefix means \"not\"?', 'Un-'),
(19, 2, 'What is the opposite of \"include\"?', 'Exclude'),
(20, 2, 'Choose the sentence with correct subject-verb agreement.', 'The team is winning.'),
(21, 3, 'Which of these words is spelled correctly?', 'Accommodate'),
(22, 3, 'Choose the correct sentence.', 'To whom did you give the book?'),
(23, 3, 'Select the correct word: \"He made a __________ mistake.\"', 'Grievous'),
(24, 3, 'What is the correct synonym for \"abundant\"?', 'Plentiful'),
(25, 3, 'Which sentence is in passive voice?', 'The cake was eaten by the children.'),
(26, 3, 'Choose the sentence with correct punctuation.', 'The book that I read last week was thrilling.'),
(27, 3, 'What is the meaning of the word \"benevolent\"?', 'Kind and generous'),
(28, 3, 'Which word is a homonym of \"bear\"?	', 'Bare'),
(29, 3, 'What is the correct plural form of \"crisis\"?', 'Crises'),
(30, 3, 'Which sentence uses an oxymoron?', 'She was clearly confused by the directions.'),
(31, 4, 'What is the name of Malaysia\'s biggest flower?', 'Rafflesia'),
(32, 4, 'How many states are there in Malaysia?', '13'),
(33, 4, 'The Sun rises in the __________ and sets in the ____________.', 'east, west'),
(34, 4, 'Malaysia is located in which continent?', 'Asia'),
(35, 4, 'Which of the following is caused by human activity?', 'Haze'),
(36, 4, 'Which state is Cameron Highlands in?', 'Pahang.'),
(37, 4, 'Windy it is good for ___________?', 'Sailing'),
(38, 4, 'What do we call the head of the government in Malaysia?', 'Prime Minister'),
(39, 4, 'What is location?', 'Tells us where people and places are.'),
(40, 4, 'Cutting down trees to build houses is an example of which?', 'Human-Environment Interaction'),
(41, 5, 'Which country has the most people living in it?', 'China'),
(42, 5, 'What is the name of the tallest land mountain in the world?', 'Mount Everest'),
(43, 5, 'How tall is Mount Kinabalu?', '4,095m'),
(44, 5, 'Which is the longest river in Malaysia?', 'Rajang'),
(45, 5, 'How many continents are there in the world?', '7'),
(46, 5, 'Kuala Kangsar is the _________ of Perak.', 'Royal Town'),
(47, 5, 'Which of these states the north end to the south end of North-South Express Highway?', 'Bukit Kayu Hitam ---> Johor Bahru'),
(48, 5, 'How many oceans are there in the world?', '5'),
(49, 5, 'How many hemispheres are there in the world?', '4'),
(50, 5, 'Lines of Longitude are measured ___________ and ___________ from the Prime Meridian.', 'East, West'),
(51, 6, 'What sea separates mainland Malaysia and the island of Borneo?', 'South China Sea'),
(52, 6, 'What is the hottest continent on Earth?', 'Africa'),
(53, 6, 'What\'s the circumference of Earth?', '40,075 km'),
(54, 6, 'Which towns are listed as towns from the same state?', 'Teluk Intan, Seri Manjung, Kuala Kangsar, Taiping'),
(55, 6, 'How big is Malaysia?', '330,000 km²'),
(56, 6, 'Mountain Ranges, deserts, and bodies of water are all examples of what?', 'Features of Physical Geography'),
(57, 6, 'On what continent would you find the country of Egypt?', 'Africa'),
(58, 6, 'Which continent is the largest?', 'Asia'),
(59, 6, 'Which is NOT one of the Five Themes of Geography?', 'Language'),
(60, 6, 'What is map scale?', 'distance on a map in relation to actual distance on Earth'),
(61, 7, 'Who was the first president of the United States?', 'George Washington'),
(62, 7, 'Which country is known for building the Great Wall?', 'China'),
(63, 7, 'What ancient civilization built pyramids as tombs for their kings?', 'Egyptians'),
(64, 7, 'What was the name of the first manned moon landing mission?', 'Apollo 11'),
(65, 7, 'When is Malaysia\'s Independence Day?', 'August 31'),
(66, 7, 'What is the name of Malaysia\'s national flag?', 'Jalur Gemilang (Stripes of Glory)'),
(67, 7, 'Who was Malaysia\'s first Prime Minister?', 'Abdullah Badawi'),
(68, 7, 'What is the iconic building in Kuala Lumpur?', 'Petronas Twin Towers'),
(69, 7, 'How many states are there in Malaysia?', '13'),
(70, 7, 'What is Malaysia\'s national flower?', 'Hibiscus'),
(71, 8, 'Which monarch initiated the \"Hundred Years\' War\"?', 'Edward lll'),
(72, 8, 'In what year did the Roman Empire officially fall?', '476 AD'),
(73, 8, 'Who was the U.S. president during the Cuban Missile Crisis?', 'John F. Kennedy'),
(74, 8, 'Which U.S. naval base was attacked by Japan during World War II?', 'Pearl Harbor'),
(75, 8, 'Who defeated Napoleon at the Battle of Waterloo?', 'The Duke of Wellington'),
(76, 8, 'Who coined the term \"Iron Curtain\"?', 'Winston Churchill'),
(77, 8, 'What famous speech did Abraham Lincoln give during the American Civil War?', 'Gettysburg Address'),
(78, 8, 'Where was Alexander the Great born?', 'Macedonia'),
(79, 8, 'What was the main cultural center of the Renaissance?', 'Florence'),
(80, 8, 'Who founded the Jesuit Order in 1534?', 'Ignatius of Loyola'),
(81, 9, 'Who first classified humans as Homo sapiens?', 'Carl Linnaeus'),
(82, 9, 'The \"Bill of Rights\" is a constitutional document of which country?', 'United Kingdom'),
(83, 9, 'What was the capital of the Inca Empire?', 'Cusco'),
(84, 9, 'Who wrote the book \"Utopia\"?', 'More'),
(85, 9, 'Who discovered penicillin?', 'Alexander Fleming'),
(86, 9, 'What massive construction did Emperor Qin Shi Huang of China order?', 'Great Wall'),
(87, 9, 'The \"Glorious Revolution\" brought which monarch to power?', 'William III'),
(88, 9, 'Who was the Soviet leader during the Cuban Missile Crisis?', 'Khrushchev'),
(89, 9, 'The Holy Roman Empire was dissolved in 1806 due to the invasion of whom?', 'Napoleon'),
(90, 9, 'The \"New Deal\" by Franklin D. Roosevelt was primarily in response to what?', 'The Great Depression'),
(91, 10, '5 + 8 = ?', '13'),
(92, 10, '15 - 7 = ?', '8'),
(93, 10, '6 + 6 = ?', '12'),
(94, 10, '20 - 10 = ?', '10'),
(95, 10, '7 × 3 = ?', '21'),
(96, 10, '9 ÷ 3 = ?', '3'),
(97, 10, '4 × 4 = ?', '16'),
(98, 10, 'A train has 5 coaches, and each coach has 8 seats. How many seats are there?', '40'),
(99, 10, 'Ben buys 3 packs of markers, with 6 markers in each. How many markers does he have?', '18'),
(100, 10, 'Mia reads 4 pages per day. How many pages will she read in 5 days?', '20'),
(101, 11, 'Solve for x: 2x=14', '7'),
(102, 11, 'Solve for x: x−3=7', '10'),
(103, 11, 'Solve for x: 3x+4=16', '4'),
(104, 11, 'Solve for x: x/2=9', '18'),
(105, 11, 'What is the perimeter of a rectangle with length 8 cm and width 5 cm?', '25 cm'),
(106, 11, 'Calculate the area of a triangle with base 6 cm and height 4 cm.', '12 cm²'),
(107, 11, 'Find the circumference of a circle with radius 3 cm (use π = 3.14).', '18.84 cm'),
(108, 11, 'If a tank holds 200,000 ml of water and is filled to 75%, how many liters are in the tank?', '150 liters'),
(109, 11, 'A train travels at 80 km/h. How long will it take to travel 240 km?', '3 hours'),
(110, 11, 'A factory produces 250 items in 5 hours. How many items are produced per hour?', '50'),
(111, 12, 'Solve for x: x^2−9=0', 'x=3 or x=-3'),
(112, 12, 'Solve for x: x^2+6x+9=0', 'x=-3'),
(113, 12, 'Solve for x: 2x^2−8=0', 'x=2 or x=-2'),
(114, 12, 'Solve for x: 3x^2−12x+9=0', 'x=1 or x=3'),
(115, 12, 'Find sin(30°).', '0.50'),
(116, 12, 'Find cos(45°).', '0.525'),
(117, 12, 'Find tan(60°).', '0.32'),
(118, 12, 'Solve for θ: sin(θ) = 0.5', '30'),
(119, 12, 'Find the derivative of f(x)=3x^2+2x−5.', '6x+2'),
(120, 12, 'Find the integral of f(x)=2x.', 'x^2'),
(121, 13, 'What is the chemical symbol for water?', 'H₂O'),
(122, 13, 'What planet is known as the \"Red Planet\"?', 'Mars'),
(123, 13, 'What gas do plants absorb from the atmosphere?', 'Carbon Dioxide'),
(124, 13, 'What force keeps us grounded on Earth?', 'Gravity'),
(125, 13, 'How many legs does a spider have?', '8'),
(126, 13, 'What is the center of an atom called?', 'Nucleus'),
(127, 13, 'What is the process by which plants make their food?', 'Photosynthesis'),
(128, 13, 'What is the boiling point of water in Celsius?', '100°C'),
(129, 13, 'Which animal is known for its ability to change colors?', 'Chameleon'),
(130, 13, 'Which part of the human body controls all activities?', 'Brain'),
(131, 14, 'Which element has the atomic number 1?', 'Hydrogen'),
(132, 14, 'What organelle is known as the \"powerhouse of the cell\"?', 'Mitochondria'),
(133, 14, 'What is the main gas found in the air we breathe?', 'Nitrogen'),
(134, 14, 'Who proposed the three laws of motion?', 'Isaac Newton'),
(135, 14, 'What type of blood vessel carries blood away from the heart?', 'Arteries'),
(136, 14, 'What is the largest organ in the human body?', 'Skin'),
(137, 14, 'Which scientist is known for the theory of evolution by natural selection?', 'Charles Darwin'),
(138, 14, 'What part of the brain regulates balance and coordination?', 'Cerebellum'),
(139, 14, 'What is the unit of force in the International System of Units (SI)?', 'Newton'),
(140, 14, 'Which planet has the most moons?', 'Saturn'),
(141, 15, 'What is the rarest naturally occurring element on Earth?', 'Astatine'),
(142, 15, 'What is the term for the bending of light as it passes through different materials?', 'Refraction'),
(143, 15, 'What is the most abundant gas in Earth’s atmosphere?', 'Nitrogen'),
(144, 15, 'What is the approximate age of the Earth?', '4.5 billion years'),
(145, 15, 'Which particle in an atom has a positive charge?', 'Proton'),
(146, 15, 'Which type of electromagnetic radiation has the shortest wavelength?', 'Gamma rays'),
(147, 15, 'What law states that the volume of gas varies inversely with pressure?', 'Boyle’s Law'),
(148, 15, 'What is the second most abundant element in the Earth’s crust?', 'Silicon'),
(149, 15, 'What is the main component of the Sun?', 'Hydrogen'),
(150, 15, 'What is the pH level of pure water?', '7');

-- --------------------------------------------------------

--
-- 表的结构 `quiz`
--

CREATE TABLE `quiz` (
  `Quiz_ID` int(11) NOT NULL,
  `Subject_ID` int(11) DEFAULT NULL,
  `Quiz_Code` varchar(200) NOT NULL,
  `Difficulty` enum('Beginner','Intermediate','Advanced') NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `Created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `quiz`
--

INSERT INTO `quiz` (`Quiz_ID`, `Subject_ID`, `Quiz_Code`, `Difficulty`, `Title`, `Image`, `Created_by`) VALUES
(1, 1, 'QZI-1-99', 'Beginner', 'Check Your Spelling Quiz', '/Images/English_1.png', 2),
(2, 1, 'QZI-2-68', 'Intermediate', 'Grammar and Sentence Structure Test', '/Images/English_2.png', 2),
(3, 1, 'QZI-3-41', 'Advanced', 'Comprehensive Spelling and Grammar Challenge', '/Images/English_3.png', NULL),
(4, 2, 'QZI-4-02', 'Beginner', 'Malaysia\'s Geography Facts Quiz', '/Images/Geo_1.png', NULL),
(5, 2, 'QZI-5-88', 'Intermediate', 'Global Geography Essentials', '/Images/Geo_2.png', NULL),
(6, 2, 'QZI-6-34', 'Advanced', 'In-Depth World Geography Quiz', '/Images/Geo_3.png', NULL),
(7, 3, 'QZI-7-09', 'Beginner', 'Fundamental of History', '/Images/History_1.png', NULL),
(8, 3, 'QZI-8-41', 'Intermediate', 'World History Overview', '/Images/History_2.png', NULL),
(9, 3, 'QZI-9-78', 'Advanced', 'Detailed Exploration of Global History', '/Images/History_3.png', NULL),
(10, 4, 'QZI-10-67', 'Beginner', 'Basic Arithmetic and Number Operations', '/Images/Math_1.png', NULL),
(11, 4, 'QZI-11-02', 'Intermediate', 'Algebra and Geometry Essentials', '/Images/Math_2.png', NULL),
(12, 4, 'QZI-12-09', 'Advanced', 'Advanced Mathematics Challenges', '/Images/Math_3.png', NULL),
(13, 5, 'QZI-13-41', 'Beginner', 'Basic Concepts of Science for Young Learners', '/Images/Science_1.png', NULL),
(14, 5, 'QZI-14-77', 'Intermediate', 'Intermediate Concepts and Theories', '/Images/Science_2.png', NULL),
(15, 5, 'QZI-15-65', 'Advanced', 'Advanced Science Challenge', '/Images/Science_3.png', NULL);

--
-- 触发器 `quiz`
--
DELIMITER $$
CREATE TRIGGER `Quiz_Code` AFTER INSERT ON `quiz` FOR EACH ROW BEGIN
    UPDATE quiz
    SET quiz_code = CONCAT('QZI-', NEW.quiz_id, '-', LPAD(FLOOR(RAND() * 100), 2, '0'))
    WHERE quiz_id = NEW.quiz_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `subject`
--

CREATE TABLE `subject` (
  `Subject_ID` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `subject`
--

INSERT INTO `subject` (`Subject_ID`, `SubjectName`) VALUES
(1, 'English'),
(2, 'Geography'),
(3, 'History'),
(4, 'Mathematics'),
(5, 'Science');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `user_ID` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `FirstName` varchar(15) NOT NULL,
  `LastName` varchar(15) NOT NULL,
  `role` enum('Student','Teacher') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`user_ID`, `username`, `password`, `FirstName`, `LastName`, `role`) VALUES
(1, 'Chiayinnn', 'test123', 'Lee', 'Chia Yin', 'Student'),
(2, 'Janey', 'janey123', 'Yap', 'Janey', 'Teacher');

--
-- 转储表的索引
--

--
-- 表的索引 `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`Ans_ID`),
  ADD KEY `Ques_ID` (`Ques_ID`);

--
-- 表的索引 `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`Ques_ID`),
  ADD KEY `Quiz_ID` (`Quiz_ID`);

--
-- 表的索引 `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`Quiz_ID`),
  ADD KEY `Subject_ID` (`Subject_ID`),
  ADD KEY `fk_quiz_created_by` (`Created_by`);

--
-- 表的索引 `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`Subject_ID`),
  ADD UNIQUE KEY `SubjectName` (`SubjectName`);

--
-- 表的索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_ID`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `answers`
--
ALTER TABLE `answers`
  MODIFY `Ans_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=601;

--
-- 使用表AUTO_INCREMENT `question`
--
ALTER TABLE `question`
  MODIFY `Ques_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- 使用表AUTO_INCREMENT `quiz`
--
ALTER TABLE `quiz`
  MODIFY `Quiz_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 使用表AUTO_INCREMENT `subject`
--
ALTER TABLE `subject`
  MODIFY `Subject_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `user_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 限制导出的表
--

--
-- 限制表 `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`Ques_ID`) REFERENCES `question` (`Ques_ID`);

--
-- 限制表 `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`Quiz_ID`) REFERENCES `quiz` (`Quiz_ID`);

--
-- 限制表 `quiz`
--
ALTER TABLE `quiz`
  ADD CONSTRAINT `fk_quiz_created_by` FOREIGN KEY (`Created_by`) REFERENCES `user` (`user_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `quiz_ibfk_1` FOREIGN KEY (`Subject_ID`) REFERENCES `subject` (`Subject_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
