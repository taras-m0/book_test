-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 01 2017 г., 21:19
-- Версия сервера: 5.5.25
-- Версия PHP: 5.4.29

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- База данных: `testdb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `author`
--

CREATE TABLE IF NOT EXISTS `author` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author` varchar(192) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `author` (`author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=107 ;

--
-- Дамп данных таблицы `author`
--

INSERT INTO `author` (`id`, `author`) VALUES
(65, 'Александр Беляев'),
(27, 'Александр Грибоедов'),
(70, 'Александр Грин'),
(22, 'Александр Дюма'),
(88, 'Александр Островский'),
(15, 'Александр Пушкин'),
(51, 'Алексей Толстой'),
(23, 'Антон Чехов'),
(42, 'Антуан де Сент-Экзюпери'),
(43, 'Аркадий и Борис Стругацкие'),
(33, 'Артур Конан Дойль'),
(54, 'Борис Васильев'),
(83, 'Борис Пастернак'),
(61, 'Вениамин Каверин'),
(21, 'Виктор Гюго'),
(46, 'Габриэль Гарсиа Маркес'),
(56, 'Даниель Дефо'),
(62, 'Джек Лондон'),
(26, 'Джордж Оруэлл'),
(87, 'Жюль Верн'),
(25, 'Иван Гончаров'),
(19, 'Иван Тургенев'),
(16, 'Илья Ильф, Евгений Петров'),
(47, 'Иоганн Вольфганг фон Гёте'),
(69, 'Кен Кизи'),
(2, 'Лев Толстой'),
(85, 'Маргарет Митчелл'),
(66, 'Марк Твен'),
(68, 'Мигель Сервантес'),
(1, 'Михаил Булгаков'),
(18, 'Михаил Лермонтов'),
(35, 'Михаил Шолохов'),
(14, 'Николай Гоголь'),
(104, 'Олдос Хаксли'),
(82, 'Роберт Льюис Стивенсон'),
(36, 'Рэй Брэдбери'),
(52, 'Станислав Лем'),
(81, 'Теодор Драйзер'),
(50, 'Уильям Шекспир'),
(3, 'Федор Достоевский'),
(86, 'Фрэнсис Скотт Фицджеральд'),
(20, 'Эрих Мария Ремарк'),
(34, 'Эрнест Хемингуэй'),
(76, 'Ярослав Гашек');

-- --------------------------------------------------------

--
-- Структура таблицы `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `book` varchar(192) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `book` (`book`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=107 ;

--
-- Дамп данных таблицы `book`
--

INSERT INTO `book` (`id`, `book`) VALUES
(26, '1984'),
(36, '451 градус по Фаренгейту'),
(54, 'А зори здесь тихие'),
(70, 'Алые паруса'),
(81, 'Американская трагедия'),
(12, 'Анна Каренина'),
(45, 'Бедные люди'),
(31, 'Белая гвардия'),
(99, 'Белые ночи'),
(62, 'Белый Клык'),
(88, 'Бесприданница'),
(17, 'Бесы'),
(105, 'Борис Годунов'),
(4, 'Братья Карамазовы'),
(86, 'Великий Гэтсби'),
(48, 'Вечера на хуторе близ Диканьки'),
(92, 'Вишневый сад'),
(2, 'Война и мир'),
(24, 'Воскресение'),
(57, 'Гамлет'),
(18, 'Герой нашего времени'),
(27, 'Горе от ума'),
(22, 'Граф Монте-Кристо'),
(61, 'Два капитана'),
(16, 'Двенадцать стульев'),
(89, 'Дворянское гнездо'),
(100, 'Дети капитана Гранта'),
(58, 'Детство. Отрочество. Юность'),
(83, 'Доктор Живаго'),
(80, 'Драма на охоте'),
(44, 'Дубровский'),
(15, 'Евгений Онегин'),
(79, 'Записки из Мёртвого дома'),
(78, 'Записки из подполья'),
(59, 'Записки охотника'),
(41, 'Золотой теленок'),
(37, 'Игрок'),
(11, 'Идиот'),
(95, 'Кавказский пленник'),
(94, 'Казаки'),
(28, 'Капитанская дочка'),
(42, 'Маленький принц'),
(63, 'Мартин Иден'),
(1, 'Мастер и Маргарита'),
(106, 'Медный всадник'),
(14, 'Мёртвые души'),
(49, 'На западном фронте без перемен'),
(104, 'О дивный новый мир'),
(25, 'Обломов'),
(82, 'Остров сокровищ'),
(21, 'Отверженные'),
(93, 'Отец Сергий'),
(19, 'Отцы и дети'),
(29, 'Палата № 6'),
(71, 'Петербургские повести'),
(51, 'Пётр Первый'),
(43, 'Пикник на обочине'),
(101, 'Пиковая дама'),
(38, 'По ком звонит колокол'),
(55, 'Повести Белкина'),
(73, 'Подросток'),
(76, 'Похождения бравого солдата Швейка во время мировой войны'),
(3, 'Преступление и наказание'),
(77, 'Приключения Гекльберри Финна'),
(66, 'Приключения Тома Сойера'),
(33, 'Приключения Шерлока Холмса'),
(74, 'Принц и нищий'),
(69, 'Пролетая над гнездом кукушки'),
(98, 'Прощай, оружие!'),
(23, 'Рассказы'),
(39, 'Ревизор'),
(56, 'Робинзон Крузо'),
(50, 'Ромео и Джульетта'),
(97, 'Рудин'),
(102, 'Руслан и Людмила'),
(96, 'Севастопольские рассказы'),
(72, 'Село Степанчиково и его обитатели'),
(84, 'Собака Баскервилей'),
(13, 'Собачье сердце'),
(53, 'Собор Парижской Богоматери'),
(52, 'Солярис'),
(34, 'Старик и море'),
(46, 'Сто лет одиночества'),
(91, 'Судьба человека'),
(87, 'Таинственный остров'),
(30, 'Тарас Бульба'),
(35, 'Тихий Дон'),
(75, 'Три мушкетера'),
(20, 'Три товарища'),
(32, 'Триумфальная арка'),
(64, 'Трудно быть богом'),
(85, 'Унесённые ветром'),
(40, 'Униженные и оскорблённые'),
(47, 'Фауст'),
(60, 'Хаджи-Мурат'),
(68, 'Хитроумный идальго Дон Кихот Ламанчский'),
(90, 'Хождение по мукам'),
(65, 'Человек-амфибия'),
(67, 'Черный обелиск'),
(103, 'Шинель');

-- --------------------------------------------------------

--
-- Структура таблицы `book2author`
--

CREATE TABLE IF NOT EXISTS `book2author` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `book_id` int(10) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `book2author` (`book_id`,`author_id`),
  KEY `book_id` (`book_id`),
  KEY `author_id` (`author_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=104 ;

--
-- Дамп данных таблицы `book2author`
--

INSERT INTO `book2author` (`id`, `book_id`, `author_id`) VALUES
(4, 1, 1),
(5, 2, 2),
(6, 3, 3),
(7, 4, 3),
(8, 11, 3),
(9, 12, 2),
(10, 13, 1),
(11, 14, 14),
(12, 15, 15),
(13, 16, 16),
(14, 17, 3),
(15, 18, 18),
(16, 19, 19),
(17, 20, 20),
(18, 21, 21),
(19, 22, 22),
(20, 23, 23),
(21, 24, 2),
(22, 25, 25),
(23, 26, 26),
(24, 27, 27),
(25, 28, 15),
(26, 29, 23),
(27, 30, 14),
(28, 31, 1),
(29, 32, 20),
(30, 33, 33),
(31, 34, 34),
(32, 35, 35),
(33, 36, 36),
(34, 37, 3),
(35, 38, 34),
(36, 39, 14),
(37, 40, 3),
(38, 41, 16),
(39, 42, 42),
(40, 43, 43),
(41, 44, 15),
(42, 45, 3),
(43, 46, 46),
(44, 47, 47),
(45, 48, 14),
(46, 49, 20),
(47, 50, 50),
(48, 51, 51),
(49, 52, 52),
(50, 53, 21),
(51, 54, 54),
(52, 55, 15),
(53, 56, 56),
(54, 57, 50),
(55, 58, 2),
(56, 59, 19),
(57, 60, 2),
(58, 61, 61),
(59, 62, 62),
(60, 63, 62),
(61, 64, 43),
(62, 65, 65),
(63, 66, 66),
(64, 67, 20),
(65, 68, 68),
(66, 69, 69),
(67, 70, 70),
(68, 71, 14),
(69, 72, 3),
(70, 73, 3),
(71, 74, 66),
(72, 75, 22),
(73, 76, 76),
(74, 77, 66),
(75, 78, 3),
(76, 79, 3),
(77, 80, 23),
(78, 81, 81),
(79, 82, 82),
(80, 83, 83),
(81, 84, 33),
(82, 85, 85),
(83, 86, 86),
(84, 87, 87),
(85, 88, 88),
(86, 89, 19),
(87, 90, 51),
(88, 91, 35),
(89, 92, 23),
(90, 93, 2),
(91, 94, 2),
(92, 95, 2),
(93, 96, 2),
(94, 97, 19),
(95, 98, 34),
(96, 99, 3),
(97, 100, 87),
(98, 101, 15),
(99, 102, 15),
(100, 103, 14),
(101, 104, 104),
(102, 105, 15),
(103, 106, 15);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `book2author`
--
ALTER TABLE `book2author`
  ADD CONSTRAINT `book2author_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book2author_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;