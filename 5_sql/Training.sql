-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 28, 2018 at 11:13 PM
-- Server version: 5.6.37
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Training`
--

-- --------------------------------------------------------

--
-- Table structure for table `Course`
--

CREATE TABLE `Course` (
  `course_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Course`
--

INSERT INTO `Course` (`course_id`, `name`, `description`) VALUES
(1, 'HTML', 'Test 1'),
(2, 'JS', 'Test 2'),
(3, 'CSS', 'Test 3'),
(4, 'PHP', 'Test 4'),
(5, 'SQL', 'Test 5');

-- --------------------------------------------------------

--
-- Table structure for table `History`
--

CREATE TABLE `History` (
  `history_id` int(10) UNSIGNED NOT NULL,
  `trainee_id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `History`
--

INSERT INTO `History` (`history_id`, `trainee_id`, `course_id`, `start`, `end`, `status`) VALUES
(1, 1, 1, 1524960000, 1527552000, 1),
(2, 2, 2, 1527552000, 1530230400, 1),
(3, 7, 1, 1525219200, 1527724800, 0),
(4, 15, 2, 1525219200, 1527724800, 1),
(5, 5, 3, 1525219200, 1527724800, 1),
(6, 9, 4, 1525219200, 1527724800, 0),
(7, 11, 5, 1525219200, 1527724800, 1),
(8, 4, 4, 1525219200, 1527724800, 1),
(9, 13, 5, 1525219200, 1527724800, 0),
(10, 1, 1, 1525219200, 1527724800, 1),
(11, 9, 5, 1525219200, 1527724800, 1),
(12, 20, 1, 1525219200, 1527724800, 1),
(13, 2, 1, 1525219200, 1527724800, 0),
(14, 12, 3, 1525219200, 1527724800, 1),
(15, 2, 4, 1525219200, 1527724800, 0),
(16, 7, 1, 1525219200, 1527724800, 0),
(17, 15, 3, 1525219200, 1527724800, 1),
(18, 14, 2, 1525219200, 1527724800, 0),
(19, 6, 4, 1525219200, 1527724800, 0),
(20, 16, 1, 1525219200, 1527724800, 0),
(21, 8, 4, 1527897600, 1530489600, 1),
(22, 13, 5, 1527897600, 1530489600, 1),
(23, 5, 4, 1527897600, 1530489600, 1),
(24, 11, 1, 1527897600, 1530489600, 0),
(25, 8, 2, 1527897600, 1530489600, 1),
(26, 10, 2, 1527897600, 1530489600, 1),
(27, 3, 3, 1527897600, 1530489600, 1),
(28, 1, 5, 1527897600, 1530489600, 1),
(29, 8, 3, 1527897600, 1530489600, 0),
(30, 12, 5, 1527897600, 1530489600, 1),
(31, 2, 2, 1527897600, 1530489600, 1),
(32, 16, 2, 1527897600, 1530489600, 1),
(33, 12, 5, 1527897600, 1530489600, 1),
(34, 17, 3, 1527897600, 1530489600, 1),
(35, 16, 3, 1527897600, 1530489600, 0),
(36, 4, 2, 1527897600, 1530489600, 0),
(37, 19, 1, 1527897600, 1530489600, 0),
(38, 14, 1, 1527897600, 1530489600, 1),
(39, 12, 3, 1527897600, 1530489600, 1),
(40, 16, 3, 1527897600, 1530489600, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Trainee`
--

CREATE TABLE `Trainee` (
  `trainee_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Trainee`
--

INSERT INTO `Trainee` (`trainee_id`, `name`, `email`) VALUES
(1, 'Орехова Раиса Георгиевна', 'test1@test.com'),
(2, 'Марков Феофан Никитевич', 'test2@test.com'),
(3, 'Брежнев Вениамин Федотович', 'test3@test.com'),
(4, 'Валуева Инна Евгениевна', 'test4@test.com'),
(5, 'Янушко Дементий Ульянович', 'test5@test.com'),
(6, 'Толстокожев Герман Карлович', 'test6@test.com'),
(7, 'Квасникова Ариадна Василиевна', 'test7@test.com'),
(8, 'Еськова Татьяна Филипповна', 'test8@test.com'),
(9, 'Николина Всеслава Ираклиевна', 'test9@test.com'),
(10, 'Набиуллина Любава Святославовна', 'test10@test.com'),
(11, 'Семянин Потап Никонович', 'test11@test.com'),
(12, 'Чукреева Алина Николаевна', 'test12@test.com'),
(13, 'Самошина Эльвира Вячеславовна', 'test13@test.com'),
(14, 'Новикова Ангелина Георгиевна', 'test14@test.com'),
(15, 'Бердяева Вера Павеловна', 'test15@test.com'),
(16, 'Самохина Яна Вячеславовна', 'test16@test.com'),
(17, 'Голубова Елена Леонидовна', 'test17@test.com'),
(18, 'Каналина Марианна Анатолиевна', 'test18@test.com'),
(19, 'Грибалева Анфиса Ефимовна', 'test19@test.com'),
(20, 'Абоймова Полина Тимофеевна', 'test20@test.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Course`
--
ALTER TABLE `Course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `History`
--
ALTER TABLE `History`
  ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `Trainee`
--
ALTER TABLE `Trainee`
  ADD PRIMARY KEY (`trainee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Course`
--
ALTER TABLE `Course`
  MODIFY `course_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `History`
--
ALTER TABLE `History`
  MODIFY `history_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `Trainee`
--
ALTER TABLE `Trainee`
  MODIFY `trainee_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
