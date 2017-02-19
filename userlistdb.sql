-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 19 2017 г., 17:19
-- Версия сервера: 5.5.50
-- Версия PHP: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `userlistdb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `nameCountry` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `country`
--

INSERT INTO `country` (`nameCountry`) VALUES
('Belgium'),
('France'),
('Germany'),
('Russia'),
('Ukraine'),
('USA');

-- --------------------------------------------------------

--
-- Структура таблицы `usertbl`
--

CREATE TABLE IF NOT EXISTS `usertbl` (
  `id` int(11) NOT NULL,
  `login` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `real_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `age` date NOT NULL,
  `nameCountry` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `sessiondate` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `usertbl`
--

INSERT INTO `usertbl` (`id`, `login`, `email`, `real_name`, `password`, `age`, `nameCountry`, `sessiondate`) VALUES
(13, 'admin', 'tomrual@mail.ru', 'admin', 'admin', '0000-00-00', 'Germany', 0),
(14, 'tolia', 'tomrual@mail.ru', 'tolia', 'tolia', '2017-02-09', 'France', 0),
(27, 'wadwa', 'tomrual@mail.ru', 'awdw', 'qwer', '2017-02-03', 'Belgium', 0),
(31, 'wad', 'tomrual96@gmail.com', 'wdwa', 'qwer', '2017-02-11', 'Belgium', 0),
(32, 'admin', 'tomrual@mail.ru', 'wewe', 'wqewqe', '2017-02-09', 'Belgium', 0),
(33, 'admin', 'awdwa@wdw', 'awd', 'wadwa', '2017-02-10', 'Belgium', 0),
(34, 'tolia', 'tomrual@mail.ru', 'awdwa', 'adsad', '2017-02-01', 'Belgium', 0),
(35, 'admin', 'awdwa@wdw', 'wadaw', 'wadwa', '2017-02-09', 'Belgium', 0),
(37, 'admin', 'tomrual@mail.ru', 'wad', 'wad', '2017-02-01', 'France', 0),
(39, 'admin', 'tomrual@mail.ru', 'wada', 'admin', '2017-02-09', 'Belgium', 0),
(40, 'DD', 'tomrual@mail.ru', 'DD', 'DD', '2017-02-15', 'Belgium', 0),
(41, 'GGG', 'awdwa@wdw', 'FE', '1234', '2017-02-15', 'Belgium', 0),
(42, 'df', 'awswa@wdw', 'df', 'dfg', '2017-02-16', 'Belgium', 0),
(43, 'vadia', 'vadia@mail.ru', 'vadia', 'awesd', '2017-02-10', 'Belgium', 0),
(44, 'fgf', 'tomrual96@gmail.comr', 'fgf', 'fgfg', '2017-02-03', 'Belgium', 0),
(47, 'dfd', 'awdwsa@wdw', 'dfdf', 'dfgh', '2017-02-24', 'Belgium', 1487408746),
(48, 'апр', 'tomffrual@mail.ru', 'апр', 'апро', '2017-02-16', 'Belgium', 1487413673);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`nameCountry`),
  ADD KEY `nameCountry` (`nameCountry`);

--
-- Индексы таблицы `usertbl`
--
ALTER TABLE `usertbl`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`real_name`),
  ADD KEY `country` (`nameCountry`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `usertbl`
--
ALTER TABLE `usertbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
