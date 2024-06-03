-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 03 2024 г., 13:54
-- Версия сервера: 5.7.39
-- Версия PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ItSchool`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Diploma`
--

CREATE TABLE `Diploma` (
  `id_diploma` int(11) NOT NULL,
  `id_specialization` int(11) DEFAULT NULL,
  `id_student` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `result` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diploma_number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Diploma`
--

INSERT INTO `Diploma` (`id_diploma`, `id_specialization`, `id_student`, `date`, `result`, `diploma_number`) VALUES
(1, 1, 1, '2024-04-01', 'Отлично', 111),
(2, 2, 2, '2024-04-05', 'Хорошо', 222),
(3, 3, 3, '2024-04-10', 'Отлично', 333),
(4, 4, 4, '2024-04-15', 'Хорошо', 444),
(5, 5, 5, '2024-04-20', 'Отлично', 555);

-- --------------------------------------------------------

--
-- Структура таблицы `History`
--

CREATE TABLE `History` (
  `id_history` int(11) NOT NULL,
  `RecordId` int(11) DEFAULT NULL,
  `TableName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Operation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CreatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `History`
--

INSERT INTO `History` (`id_history`, `RecordId`, `TableName`, `Operation`, `CreatedAt`) VALUES
(1, 1, 'Student', 'Добавлен студент: Петров Иван', '2024-03-25 16:58:06'),
(2, 2, 'Student', 'Добавлен студент: Сидорова Анна', '2024-03-25 16:58:06'),
(3, 3, 'Student', 'Добавлен студент: Иванов Дмитрий', '2024-03-25 16:58:06'),
(4, 4, 'Student', 'Добавлен студент: Попов Александр', '2024-03-25 16:58:06'),
(5, 5, 'Student', 'Добавлен студент: Соколова Елена', '2024-03-25 16:58:06'),
(6, 6, 'Student', 'Добавлен студент: Иванов Иван', '2024-03-25 16:59:57'),
(7, 1, 'Student', 'Обновлена информация о студенте: Петров Иван на Петров Петр', '2024-03-25 17:05:10'),
(8, 7, 'Student', 'Добавлен студент: Иванов Петр', '2024-04-05 08:30:38'),
(9, 7, 'Student', 'Удален студент: Иванов Петр', '2024-04-05 08:32:18');

-- --------------------------------------------------------

--
-- Структура таблицы `Homework`
--

CREATE TABLE `Homework` (
  `id_homework` int(11) NOT NULL,
  `id_lecture` int(11) DEFAULT NULL,
  `id_student` int(11) DEFAULT NULL,
  `description` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `assessment` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Homework`
--

INSERT INTO `Homework` (`id_homework`, `id_lecture`, `id_student`, `description`, `start_date`, `end_date`, `assessment`) VALUES
(1, 1, 1, 'Написать программу на языке программирования', '2024-02-05', '2024-02-15', 90),
(2, 2, 2, 'Создать дизайн в стиле минимализм', '2024-02-10', '2024-02-20', 85),
(3, 3, 3, 'Настройка сетевых протоколов', '2024-02-15', '2024-02-25', 92),
(4, 4, 4, 'Провести статистический анализ данных', '2024-02-20', '2024-03-01', 88),
(5, 5, 5, 'Разработать криптографический протокол', '2024-02-25', '2024-03-10', 95);

-- --------------------------------------------------------

--
-- Структура таблицы `Lecture`
--

CREATE TABLE `Lecture` (
  `id_lecture` int(11) NOT NULL,
  `id_course` int(11) DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Lecture`
--

INSERT INTO `Lecture` (`id_lecture`, `id_course`, `title`, `theme`, `description`, `duration`) VALUES
(1, 1, 'Введение в язык программирования', 'Основы программирования', 'Лекция по введению в язык программирования', '1 час'),
(2, 2, 'Цветовая палитра', 'Графический дизайн', 'Лекция по цветовой палитре в дизайне', '45 минут'),
(3, 3, 'TCP/IP протоколы', 'Сетевые технологии', 'Лекция по сетевым протоколам', '1.5 часа'),
(4, 4, 'Основы статистики', 'Анализ данных', 'Лекция по основам статистики', '1.5 часа'),
(5, 5, 'Принципы криптографии', 'Информационная безопасность', 'Лекция по принципам криптографии', '2 часа');

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `medicalinfo`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `medicalinfo` (
`employee_id` int(11)
,`Сотрудник` varchar(152)
,`Размер оклада` decimal(10,2)
,`Размер больничных` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Структура таблицы `Payment`
--

CREATE TABLE `Payment` (
  `id_payment` int(11) NOT NULL,
  `id_specialization` int(11) DEFAULT NULL,
  `id_teacher` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `payment_method` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inn` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Payment`
--

INSERT INTO `Payment` (`id_payment`, `id_specialization`, `id_teacher`, `amount`, `date`, `payment_method`, `bank`, `inn`, `account_number`) VALUES
(1, 1, 1, '15000.00', '2024-01-15', 'Карта', 'Сбербанк', '1234567890', '9876543210'),
(2, 2, 2, '12000.00', '2024-01-20', 'Наличные', 'Альфа-Банк', '9876543210', '1234567890'),
(3, 3, 3, '18000.00', '2024-01-25', 'Перевод', 'ВТБ', '1234567890', '9876543210'),
(4, 4, 4, '16000.00', '2024-02-01', 'Карта', 'Газпромбанк', '9876543210', '1234567890'),
(5, 5, 5, '20000.00', '2024-02-05', 'Наличные', 'Райффайзенбанк', '9876543210', '1234567890');

-- --------------------------------------------------------

--
-- Структура таблицы `Schedule`
--

CREATE TABLE `Schedule` (
  `id_schedule` int(11) NOT NULL,
  `id_lecture` int(11) DEFAULT NULL,
  `id_teacher` int(11) DEFAULT NULL,
  `id_student` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Schedule`
--

INSERT INTO `Schedule` (`id_schedule`, `id_lecture`, `id_teacher`, `id_student`, `date`) VALUES
(1, 1, 1, 1, '2024-02-10'),
(2, 2, 2, 2, '2024-02-15'),
(3, 3, 3, 3, '2024-02-20'),
(4, 4, 4, 4, '2024-02-25'),
(5, 5, 5, 5, '2024-03-01');

-- --------------------------------------------------------

--
-- Структура таблицы `Specialization`
--

CREATE TABLE `Specialization` (
  `id_specialization` int(11) NOT NULL,
  `id_diploma` int(11) DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `difficulty_level` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Specialization`
--

INSERT INTO `Specialization` (`id_specialization`, `id_diploma`, `title`, `description`, `difficulty_level`) VALUES
(1, 1, 'Программирование', 'Специализация по программированию', 2),
(2, 2, 'Дизайн', 'Специализация по дизайну', 1),
(3, 1, 'Сетевые технологии', 'Специализация по сетевым технологиям', 3),
(4, 2, 'Анализ данных', 'Специализация по анализу данных', 2),
(5, 1, 'Информационная безопасность', 'Специализация по информационной безопасности', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `Student`
--

CREATE TABLE `Student` (
  `id_student` int(11) NOT NULL,
  `id_course` int(11) DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patronymic` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Student`
--

INSERT INTO `Student` (`id_student`, `id_course`, `last_name`, `first_name`, `patronymic`, `birth_date`, `email`) VALUES
(1, 1, 'Петров', 'Петр', 'Александрович', '1998-03-25', 'ivan_petrov@example.com'),
(2, 2, 'Сидорова', 'Анна', 'Сергеевна', '1999-07-12', 'anna_sidorova@example.com'),
(3, 3, 'Иванов', 'Дмитрий', 'Павлович', '1997-11-05', 'dmitry_ivanov@example.com'),
(4, 4, 'Попов', 'Александр', 'Михайлович', '1996-05-18', 'alexander_popov@example.com'),
(5, 5, 'Соколова', 'Елена', 'Алексеевна', '1995-09-30', 'elena_sokolova@example.com'),
(6, 1, 'Иванов', 'Иван', 'Иванович', '2000-01-01', 'ivanov@gmail.com');

--
-- Триггеры `Student`
--
DELIMITER $$
CREATE TRIGGER `StudentDELETE` AFTER DELETE ON `Student` FOR EACH ROW BEGIN
    INSERT INTO History (RecordId, TableName, Operation, CreatedAt)
    VALUES (OLD.id_student, 'Student', CONCAT('Удален студент: ', OLD.last_name, ' ', OLD.first_name), NOW());
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `StudentINSERT` AFTER INSERT ON `Student` FOR EACH ROW BEGIN
    INSERT INTO History (RecordId, TableName, Operation, CreatedAt)
    VALUES (NEW.id_student, 'Student', CONCAT('Добавлен студент: ', NEW.last_name, ' ', NEW.first_name), NOW());
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `StudentUPDATE` AFTER UPDATE ON `Student` FOR EACH ROW BEGIN
    IF OLD.last_name = NEW.last_name AND OLD.first_name = NEW.first_name THEN
        INSERT INTO History (RecordId, TableName, Operation, CreatedAt)
        VALUES (OLD.id_student, 'Student', CONCAT('Обновлена информация о студенте: ', OLD.last_name, ' ', OLD.first_name), NOW());
    ELSE
        INSERT INTO History (RecordId, TableName, Operation, CreatedAt)
        VALUES (OLD.id_student, 'Student', CONCAT('Обновлена информация о студенте: ', OLD.last_name, ' ', OLD.first_name, ' на ', NEW.last_name, ' ', NEW.first_name), NOW());
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `Teacher`
--

CREATE TABLE `Teacher` (
  `id_teacher` int(11) NOT NULL,
  `id_lecture` int(11) DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patronymic` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `work_experience` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vacation_start` date DEFAULT NULL,
  `vacation_end` date DEFAULT NULL,
  `medical_start` date DEFAULT NULL,
  `medical_end` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Teacher`
--

INSERT INTO `Teacher` (`id_teacher`, `id_lecture`, `last_name`, `first_name`, `patronymic`, `birth_date`, `work_experience`, `vacation_start`, `vacation_end`, `medical_start`, `medical_end`) VALUES
(1, 1, 'Иванов', 'Петр', 'Сергеевич', '1980-05-15', '10 лет', '2024-05-01', '2024-05-10', '2024-04-01', '2024-04-10'),
(2, 2, 'Смирнова', 'Ольга', 'Андреевна', '1985-08-20', '8 лет', '2024-05-02', '2024-05-11', '2024-03-15', '2024-03-25'),
(3, 3, 'Козлов', 'Анатолий', 'Иванович', '1975-12-10', '12 лет', '2024-05-03', '2024-05-12', '2024-04-10', '2024-04-20'),
(4, 4, 'Попова', 'Мария', 'Дмитриевна', '1982-03-20', '9 лет', '2024-05-04', '2024-05-13', '2024-04-20', '2024-05-01'),
(5, 5, 'Соколов', 'Алексей', 'Анатольевич', '1978-07-05', '11 лет', '2024-05-05', '2024-05-14', '2024-04-05', '2024-04-15');

-- --------------------------------------------------------

--
-- Структура таблицы `Test`
--

CREATE TABLE `Test` (
  `id_test` int(11) NOT NULL,
  `id_specialization` int(11) DEFAULT NULL,
  `id_student` int(11) DEFAULT NULL,
  `number_tasks` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `result` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Test`
--

INSERT INTO `Test` (`id_test`, `id_specialization`, `id_student`, `number_tasks`, `date`, `result`) VALUES
(1, 1, 1, 20, '2024-03-01', 'Пройдено'),
(2, 2, 2, 15, '2024-03-05', 'Пройдено'),
(3, 3, 3, 25, '2024-03-10', 'Пройдено'),
(4, 4, 4, 18, '2024-03-15', 'Пройдено'),
(5, 5, 5, 22, '2024-03-20', 'Пройдено');

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `vacationinfo`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `vacationinfo` (
`employee_id` int(11)
,`Сотрудник` varchar(152)
,`Размер оклада` decimal(10,2)
,`Размер отпускных` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Структура таблицы `Сertificate`
--

CREATE TABLE `Сertificate` (
  `id_certificate` int(11) NOT NULL,
  `id_course` int(11) DEFAULT NULL,
  `id_student` int(11) DEFAULT NULL,
  `result` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate_number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Сertificate`
--

INSERT INTO `Сertificate` (`id_certificate`, `id_course`, `id_student`, `result`, `certificate_number`) VALUES
(1, 1, 1, 'Отлично', 12345),
(2, 2, 2, 'Хорошо', 67890),
(3, 3, 3, 'Отлично', 54321),
(4, 4, 4, 'Хорошо', 98765),
(5, 5, 5, 'Отлично', 13579);

-- --------------------------------------------------------

--
-- Структура таблицы `Сourse`
--

CREATE TABLE `Сourse` (
  `id_course` int(11) NOT NULL,
  `id_specialization` int(11) DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Сourse`
--

INSERT INTO `Сourse` (`id_course`, `id_specialization`, `title`, `duration`) VALUES
(1, 1, 'Основы программирования', '3 месяца'),
(2, 2, 'Графический дизайн', '2 месяца'),
(3, 3, 'Сетевые протоколы', '4 месяца'),
(4, 4, 'Статистика и вероятности', '3 месяца'),
(5, 5, 'Основы криптографии', '2.5 месяца');

-- --------------------------------------------------------

--
-- Структура для представления `medicalinfo`
--
DROP TABLE IF EXISTS `medicalinfo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `medicalinfo`  AS SELECT `t`.`id_teacher` AS `employee_id`, concat(`t`.`last_name`,' ',`t`.`first_name`,' ',`t`.`patronymic`) AS `Сотрудник`, `p`.`amount` AS `Размер оклада`, `CalculMedical`(`t`.`id_teacher`,`p`.`amount`,`t`.`medical_start`,`t`.`medical_end`) AS `Размер больничных` FROM (`teacher` `t` join `payment` `p` on((`t`.`id_teacher` = `p`.`id_teacher`)))  ;

-- --------------------------------------------------------

--
-- Структура для представления `vacationinfo`
--
DROP TABLE IF EXISTS `vacationinfo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `vacationinfo`  AS SELECT `t`.`id_teacher` AS `employee_id`, concat(`t`.`last_name`,' ',`t`.`first_name`,' ',`t`.`patronymic`) AS `Сотрудник`, `p`.`amount` AS `Размер оклада`, `CalculPay`(`t`.`id_teacher`,`p`.`amount`,`t`.`vacation_start`,`t`.`vacation_end`) AS `Размер отпускных` FROM (`teacher` `t` join `payment` `p` on((`t`.`id_teacher` = `p`.`id_teacher`)))  ;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Diploma`
--
ALTER TABLE `Diploma`
  ADD PRIMARY KEY (`id_diploma`),
  ADD KEY `id_specialization` (`id_specialization`),
  ADD KEY `id_student` (`id_student`);

--
-- Индексы таблицы `History`
--
ALTER TABLE `History`
  ADD PRIMARY KEY (`id_history`);

--
-- Индексы таблицы `Homework`
--
ALTER TABLE `Homework`
  ADD PRIMARY KEY (`id_homework`),
  ADD KEY `id_lecture` (`id_lecture`),
  ADD KEY `id_student` (`id_student`);

--
-- Индексы таблицы `Lecture`
--
ALTER TABLE `Lecture`
  ADD PRIMARY KEY (`id_lecture`),
  ADD KEY `id_course` (`id_course`);

--
-- Индексы таблицы `Payment`
--
ALTER TABLE `Payment`
  ADD PRIMARY KEY (`id_payment`),
  ADD KEY `id_specialization` (`id_specialization`),
  ADD KEY `id_student` (`id_teacher`);

--
-- Индексы таблицы `Schedule`
--
ALTER TABLE `Schedule`
  ADD PRIMARY KEY (`id_schedule`),
  ADD KEY `id_lecture` (`id_lecture`),
  ADD KEY `id_teacher` (`id_teacher`),
  ADD KEY `id_student` (`id_student`);

--
-- Индексы таблицы `Specialization`
--
ALTER TABLE `Specialization`
  ADD PRIMARY KEY (`id_specialization`);

--
-- Индексы таблицы `Student`
--
ALTER TABLE `Student`
  ADD PRIMARY KEY (`id_student`),
  ADD KEY `id_course` (`id_course`);

--
-- Индексы таблицы `Teacher`
--
ALTER TABLE `Teacher`
  ADD PRIMARY KEY (`id_teacher`),
  ADD KEY `id_lecture` (`id_lecture`);

--
-- Индексы таблицы `Test`
--
ALTER TABLE `Test`
  ADD PRIMARY KEY (`id_test`),
  ADD KEY `id_specialization` (`id_specialization`),
  ADD KEY `id_student` (`id_student`);

--
-- Индексы таблицы `Сertificate`
--
ALTER TABLE `Сertificate`
  ADD PRIMARY KEY (`id_certificate`),
  ADD KEY `id_course` (`id_course`),
  ADD KEY `id_student` (`id_student`);

--
-- Индексы таблицы `Сourse`
--
ALTER TABLE `Сourse`
  ADD PRIMARY KEY (`id_course`),
  ADD KEY `id_specialization` (`id_specialization`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `History`
--
ALTER TABLE `History`
  MODIFY `id_history` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Diploma`
--
ALTER TABLE `Diploma`
  ADD CONSTRAINT `diploma_ibfk_1` FOREIGN KEY (`id_specialization`) REFERENCES `Specialization` (`id_specialization`),
  ADD CONSTRAINT `diploma_ibfk_2` FOREIGN KEY (`id_student`) REFERENCES `Student` (`id_student`);

--
-- Ограничения внешнего ключа таблицы `Homework`
--
ALTER TABLE `Homework`
  ADD CONSTRAINT `homework_ibfk_1` FOREIGN KEY (`id_lecture`) REFERENCES `Lecture` (`id_lecture`),
  ADD CONSTRAINT `homework_ibfk_2` FOREIGN KEY (`id_student`) REFERENCES `Student` (`id_student`);

--
-- Ограничения внешнего ключа таблицы `Lecture`
--
ALTER TABLE `Lecture`
  ADD CONSTRAINT `lecture_ibfk_1` FOREIGN KEY (`id_course`) REFERENCES `Сourse` (`id_course`);

--
-- Ограничения внешнего ключа таблицы `Payment`
--
ALTER TABLE `Payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`id_specialization`) REFERENCES `Specialization` (`id_specialization`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`id_teacher`) REFERENCES `Student` (`id_student`);

--
-- Ограничения внешнего ключа таблицы `Schedule`
--
ALTER TABLE `Schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`id_lecture`) REFERENCES `Lecture` (`id_lecture`),
  ADD CONSTRAINT `schedule_ibfk_2` FOREIGN KEY (`id_teacher`) REFERENCES `Teacher` (`id_teacher`),
  ADD CONSTRAINT `schedule_ibfk_3` FOREIGN KEY (`id_student`) REFERENCES `Student` (`id_student`);

--
-- Ограничения внешнего ключа таблицы `Student`
--
ALTER TABLE `Student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`id_course`) REFERENCES `Сourse` (`id_course`);

--
-- Ограничения внешнего ключа таблицы `Teacher`
--
ALTER TABLE `Teacher`
  ADD CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`id_lecture`) REFERENCES `Lecture` (`id_lecture`);

--
-- Ограничения внешнего ключа таблицы `Test`
--
ALTER TABLE `Test`
  ADD CONSTRAINT `test_ibfk_1` FOREIGN KEY (`id_specialization`) REFERENCES `Specialization` (`id_specialization`),
  ADD CONSTRAINT `test_ibfk_2` FOREIGN KEY (`id_student`) REFERENCES `Student` (`id_student`);

--
-- Ограничения внешнего ключа таблицы `Сertificate`
--
ALTER TABLE `Сertificate`
  ADD CONSTRAINT `сertificate_ibfk_1` FOREIGN KEY (`id_course`) REFERENCES `Сourse` (`id_course`),
  ADD CONSTRAINT `сertificate_ibfk_2` FOREIGN KEY (`id_student`) REFERENCES `Student` (`id_student`);

--
-- Ограничения внешнего ключа таблицы `Сourse`
--
ALTER TABLE `Сourse`
  ADD CONSTRAINT `сourse_ibfk_1` FOREIGN KEY (`id_specialization`) REFERENCES `Specialization` (`id_specialization`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
