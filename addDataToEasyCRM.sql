-- 1. Заполняем типы.
insert into contact_type(id, name, description)
values(1, 'Сотрудник', 'Наш сотрудник'),(2, 'Клиент', null);

insert into communications_type(id, name)
values(1, 'Мобильный телефон'), (2, 'e-mail'), (3, 'Рабочий телефон');

insert into legal_person_type(id, name)
values(1, 'Наша компания'), (2, 'Клиент'), (3, 'Партнёр');

insert into activity_type(id, name)
values(1, 'Звонок'), (2, 'Встреча'), (3, 'Заключение договора');

insert into document_types(id, name)
values(1, 'Договор');

insert into activity_result(id, name)
values(1, 'Назначена встреча'), (2, 'Заключен договор'), (3, 'Отказ клиента');
/*
select * from communications_type;
select * from legal_person_type;
select * from activity_type;
select * from document_types;
select * from activity_result;
*/
-- Заполнение остальных данных.
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('1', 'Jaylin', 'Ankunding', NULL, '2009-12-28', '', '1985-07-13 02:04:02', '1991-05-02 10:38:40');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('2', 'Corbin', 'Gusikowski', NULL, '2017-11-06', '', '2006-01-06 07:20:56', '1989-12-20 22:38:30');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('3', 'Alexander', 'Larson', NULL, '2000-05-15', '', '2016-12-26 15:56:26', '2019-03-22 10:51:57');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('4', 'Sigrid', 'Schuster', NULL, '1998-02-24', '', '1986-08-23 09:38:48', '2012-09-28 00:28:29');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('5', 'Herminio', 'Connelly', NULL, '1986-08-17', '', '2017-05-21 19:00:07', '2010-05-20 19:44:43');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('6', 'Bailey', 'Dooley', NULL, '1975-03-17', '', '2008-02-29 18:50:32', '1998-11-29 03:41:39');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('7', 'Vernie', 'Hansen', NULL, '2020-02-27', '', '1991-02-22 07:03:31', '1975-09-04 09:38:41');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('8', 'Emelia', 'Sawayn', NULL, '2016-07-28', '', '2002-06-06 08:55:36', '1970-01-09 22:40:24');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('9', 'Flo', 'Nolan', NULL, '2012-09-28', '', '1996-12-08 12:20:50', '1993-03-18 02:55:14');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('10', 'Corine', 'King', NULL, '1970-03-27', '', '2016-01-28 20:43:58', '1972-04-25 02:30:46');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('11', 'Murphy', 'Rodriguez', NULL, '2012-04-27', '', '2013-04-20 21:45:15', '1980-07-27 04:25:32');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('12', 'Maybelle', 'Barrows', NULL, '2002-02-21', '', '1988-11-09 16:54:45', '2017-03-25 00:47:07');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('13', 'Kiarra', 'Lubowitz', NULL, '2004-05-27', '', '1984-04-06 03:44:30', '1972-09-02 17:14:06');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('14', 'Chance', 'Wyman', NULL, '1976-02-17', '', '2000-07-15 16:07:36', '1989-10-06 02:41:07');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('15', 'Kamren', 'Gulgowski', NULL, '1987-05-26', '', '1990-02-12 05:30:16', '1986-04-03 20:53:15');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('16', 'Jolie', 'Kovacek', NULL, '1988-06-05', '', '1988-02-12 21:43:49', '1997-03-20 23:09:37');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('17', 'Elroy', 'Braun', NULL, '1973-07-15', '', '2006-02-12 04:42:31', '2013-09-29 05:05:19');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('18', 'Rosa', 'Emard', NULL, '1970-04-28', '', '2017-12-05 04:08:54', '1989-05-13 03:31:21');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('19', 'Elta', 'Veum', NULL, '1973-09-05', '', '2017-10-05 05:24:25', '2006-08-14 18:14:43');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('20', 'Gaston', 'Schulist', NULL, '2013-04-07', '', '1989-04-27 07:57:08', '2004-01-14 06:50:36');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('21', 'Clarabelle', 'Aufderhar', NULL, '1985-11-26', '', '1989-02-14 11:31:45', '1985-01-19 14:08:47');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('22', 'Dejuan', 'Zulauf', NULL, '1999-03-27', '', '2007-04-02 14:42:08', '2020-10-03 21:58:34');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('23', 'Tate', 'Roberts', NULL, '2007-08-13', '', '1992-08-11 15:02:03', '1987-10-27 07:16:23');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('24', 'Norwood', 'Ondricka', NULL, '1970-02-08', '', '1993-12-04 22:32:09', '1989-11-10 03:09:28');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('25', 'Cortney', 'Marquardt', NULL, '2006-08-25', '', '2011-04-26 10:39:18', '1977-06-01 10:54:09');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('26', 'Sylvan', 'Ritchie', NULL, '1984-10-08', '', '2008-06-12 07:55:50', '1973-05-12 05:24:33');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('27', 'Samantha', 'Bednar', NULL, '1984-02-28', '', '1985-12-14 12:04:45', '2016-12-16 08:41:51');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('28', 'Larry', 'O\'Conner', NULL, '2019-12-21', '', '1974-06-17 12:50:50', '2000-12-29 14:17:55');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('29', 'Ona', 'Aufderhar', NULL, '1991-04-20', '', '2011-04-20 02:03:08', '1974-02-15 07:07:24');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('30', 'Jarret', 'Lesch', NULL, '1974-07-14', '', '2003-07-13 02:25:22', '2002-03-08 03:16:11');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('31', 'Sven', 'Vandervort', NULL, '1992-01-28', '', '1982-03-16 19:04:07', '1987-02-19 22:14:20');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('32', 'Magnus', 'Wyman', NULL, '1992-08-15', '', '2001-09-02 15:14:17', '2021-03-11 09:05:17');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('33', 'Mara', 'Kerluke', NULL, '1998-04-04', '', '1999-07-13 17:29:57', '1994-01-31 03:38:56');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('34', 'Andy', 'Bergnaum', NULL, '2021-04-03', '', '1997-12-15 11:40:01', '1983-04-18 21:11:33');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('35', 'Sid', 'Ernser', NULL, '1992-12-21', '', '1991-03-05 14:22:57', '1981-08-02 06:27:45');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('36', 'Nelle', 'Gaylord', NULL, '2020-05-13', '', '2020-01-06 15:32:10', '1983-11-17 16:07:24');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('37', 'Sammie', 'Murazik', NULL, '2002-11-01', '', '1971-12-19 09:11:55', '2004-10-31 05:29:17');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('38', 'Bryana', 'Kutch', NULL, '2020-06-16', '', '2010-03-15 02:38:28', '1995-10-28 10:08:02');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('39', 'Grover', 'Daniel', NULL, '2001-07-08', '', '2012-01-01 20:10:07', '1988-07-10 17:09:37');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('40', 'Geoffrey', 'Hand', NULL, '1974-01-05', '', '2013-02-10 17:37:31', '1993-07-20 08:26:44');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('41', 'Elise', 'Steuber', NULL, '1991-10-27', '', '1987-01-18 23:47:24', '2012-06-26 12:21:07');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('42', 'Kimberly', 'Daugherty', NULL, '1977-07-28', '', '1980-10-06 13:01:59', '1999-11-08 03:01:58');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('43', 'Jordi', 'Will', NULL, '1981-05-08', '', '2014-07-14 22:00:56', '1994-08-22 06:46:10');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('44', 'Santino', 'Toy', NULL, '2003-07-06', '', '1975-05-13 21:46:04', '1997-06-17 23:33:18');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('45', 'Reynold', 'Stiedemann', NULL, '1976-12-26', '', '1998-06-02 22:51:37', '1982-06-12 23:47:45');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('46', 'Bret', 'Marks', NULL, '1972-10-12', '', '2002-11-24 08:34:29', '1986-09-26 02:37:42');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('47', 'Filiberto', 'Hahn', NULL, '2013-08-05', '', '1990-06-16 07:51:54', '2015-05-19 18:47:58');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('48', 'Larissa', 'Jacobs', NULL, '1998-04-07', '', '1988-09-24 08:35:28', '2001-04-29 16:56:34');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('49', 'Veronica', 'Gusikowski', NULL, '1991-05-09', '', '1984-11-17 01:57:12', '1986-04-27 04:14:17');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('50', 'Nina', 'Osinski', NULL, '1987-06-18', '', '2020-02-29 00:34:35', '1985-08-01 03:01:45');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('51', 'Zack', 'Eichmann', NULL, '1983-09-05', '', '2000-02-12 18:17:25', '1975-03-20 14:20:52');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('52', 'Kaitlin', 'Balistreri', NULL, '2000-06-05', '', '2007-04-13 20:58:56', '2009-11-04 22:56:14');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('53', 'Dangelo', 'Daugherty', NULL, '1997-09-04', '', '1987-05-25 07:30:27', '2016-03-21 13:19:19');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('54', 'Virgil', 'Hermiston', NULL, '2020-01-15', '', '1971-01-24 22:42:55', '1984-07-12 12:34:03');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('55', 'Bryce', 'Lehner', NULL, '2016-06-06', '', '1974-06-19 19:09:34', '1971-12-08 06:47:50');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('56', 'Ken', 'Kerluke', NULL, '1996-06-06', '', '1974-02-18 10:49:28', '2002-04-10 16:47:33');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('57', 'Darron', 'Erdman', NULL, '1978-06-03', '', '1998-09-24 18:12:46', '1974-12-26 14:20:06');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('58', 'Gilberto', 'Grady', NULL, '1976-01-31', '', '1978-02-06 04:58:55', '1970-01-11 19:47:15');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('59', 'Wade', 'Thompson', NULL, '1973-09-10', '', '2014-04-21 17:03:07', '2001-09-28 17:33:57');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('60', 'Jensen', 'Konopelski', NULL, '1979-04-15', '', '2001-09-18 14:01:34', '2010-12-07 13:02:36');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('61', 'Darrell', 'Treutel', NULL, '1979-10-12', '', '2000-04-17 04:57:09', '1988-04-21 02:01:53');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('62', 'Kamille', 'Yost', NULL, '1989-08-15', '', '1991-08-08 11:22:53', '1991-10-07 14:09:02');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('63', 'Clemmie', 'Hackett', NULL, '2001-12-03', '', '1985-07-21 00:36:20', '2016-01-13 04:30:05');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('64', 'Selina', 'Schuster', NULL, '2020-03-29', '', '1987-01-18 15:41:40', '2005-07-21 06:26:29');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('65', 'Carolina', 'Abbott', NULL, '2008-12-23', '', '2017-05-08 18:33:57', '1975-02-01 21:34:24');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('66', 'Stacy', 'Lindgren', NULL, '1976-08-28', '', '1998-01-01 11:12:36', '1992-04-13 21:00:01');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('67', 'Rhett', 'Fay', NULL, '1974-10-25', '', '1993-02-11 03:31:08', '1974-06-11 21:44:19');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('68', 'Alfonso', 'Roob', NULL, '1981-10-20', '', '2013-07-14 11:56:36', '1984-06-17 06:03:53');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('69', 'Sabina', 'Hahn', NULL, '2020-08-20', '', '1998-08-27 08:39:39', '1976-11-16 09:48:25');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('70', 'Forrest', 'Hirthe', NULL, '1994-12-12', '', '1987-10-16 02:26:10', '2004-09-28 03:45:39');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('71', 'Clement', 'Sawayn', NULL, '1972-07-30', '', '1995-10-26 23:54:18', '1994-08-11 16:46:10');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('72', 'Deshaun', 'Blick', NULL, '2021-06-08', '', '1989-07-12 18:13:25', '1995-10-14 07:10:41');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('73', 'Eula', 'Mann', NULL, '1995-01-23', '', '1994-05-12 11:22:12', '2015-07-02 17:55:33');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('74', 'Lea', 'Stanton', NULL, '2001-07-07', '', '2004-09-21 14:58:59', '1976-10-20 21:29:31');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('75', 'Simone', 'Koepp', NULL, '1974-07-25', '', '1987-06-08 03:41:45', '1982-10-29 06:34:10');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('76', 'Otis', 'Reichert', NULL, '1982-03-20', '', '2008-06-09 06:36:12', '1985-06-13 21:39:51');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('77', 'Coby', 'Gaylord', NULL, '2001-09-17', '', '1979-12-04 21:41:02', '1970-04-01 06:07:37');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('78', 'Meta', 'Paucek', NULL, '1985-01-29', '', '1999-02-24 10:31:21', '2000-01-19 01:31:13');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('79', 'Omari', 'Botsford', NULL, '1977-08-04', '', '1970-05-31 12:20:40', '2001-06-10 00:35:05');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('80', 'Raoul', 'Hoeger', NULL, '2007-05-05', '', '1975-07-25 09:17:22', '1983-11-23 17:11:01');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('81', 'Hillard', 'Stoltenberg', NULL, '1971-03-20', '', '1988-11-22 17:24:39', '1980-02-19 11:34:34');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('82', 'Alize', 'Lynch', NULL, '2018-07-29', '', '2013-07-19 02:55:12', '1977-05-20 09:17:50');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('83', 'Casper', 'Wilkinson', NULL, '2014-01-13', '', '1995-11-28 19:36:09', '2005-07-26 05:14:18');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('84', 'Lorenza', 'Greenholt', NULL, '2000-05-02', '', '1985-09-09 08:19:36', '2009-08-06 13:29:21');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('85', 'Dusty', 'Powlowski', NULL, '2002-07-24', '', '1990-03-29 14:58:38', '1997-03-10 13:38:37');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('86', 'Bobbie', 'Prosacco', NULL, '1973-02-24', '', '2019-02-28 03:34:27', '1984-11-28 13:06:39');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('87', 'Keely', 'Legros', NULL, '1976-12-02', '', '2014-01-19 01:58:22', '1995-08-19 17:43:54');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('88', 'Darian', 'Aufderhar', NULL, '1973-07-14', '', '1978-04-11 22:25:10', '1992-02-28 00:34:20');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('89', 'Kaycee', 'Tremblay', NULL, '1997-11-12', '', '1973-09-05 17:09:57', '1971-06-27 20:10:05');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('90', 'Sienna', 'Reinger', NULL, '2003-01-03', '', '1997-10-03 22:17:45', '1999-10-05 06:34:54');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('91', 'Sigmund', 'Glover', NULL, '1991-07-15', '', '1988-09-04 00:22:15', '2007-06-27 15:42:41');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('92', 'Ellen', 'Dooley', NULL, '2007-11-04', '', '1999-05-22 05:14:26', '1973-07-25 08:50:54');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('93', 'Katheryn', 'Skiles', NULL, '2013-07-24', '', '2011-07-15 14:26:06', '2021-01-24 20:05:15');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('94', 'Jermaine', 'Watsica', NULL, '1983-04-10', '', '1982-06-21 08:04:31', '1993-07-20 15:29:26');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('95', 'Elvie', 'Hegmann', NULL, '2011-01-09', '', '1974-09-24 02:14:32', '1972-03-20 17:49:44');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('96', 'Lempi', 'Tremblay', NULL, '1993-11-08', '', '1987-08-04 08:10:52', '1984-01-19 12:34:48');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('97', 'Carson', 'Osinski', NULL, '1990-01-19', '', '1972-11-21 16:09:34', '1997-08-24 14:39:25');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('98', 'Korbin', 'Bartell', NULL, '2005-02-23', '', '2019-02-17 15:01:28', '2005-02-21 02:59:02');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('99', 'Will', 'Hoppe', NULL, '2000-11-28', '', '1984-06-05 06:06:06', '1995-10-05 15:39:21');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`) VALUES ('100', 'Lacey', 'Thiel', NULL, '2010-10-22', '', '1980-06-02 08:03:12', '1988-07-26 08:46:54');
INSERT INTO `contacts` (`id`, `name`, `surname`, `patronymic`, `birthday_at`, `position`, `created_at`, `updated_at`, `contact_type_id`) VALUES ('101', 'ADMIN', 'ADMIN', NULL, '1981-12-17', '', now(), null, 1);

update contacts c
set contact_type_id = FLOOR(RAND() * (2)) + 1
where c.id <> 101;

INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('1', 'qui', '915 Jedediah Brooks Apt. 756\nNorth Lavern, MI 87255', 'Sunt nihil voluptatem dolorem. Sint eligendi modi odio nihil velit. Quam velit qui expedita in molestias quod voluptas culpa. Qui voluptas velit officiis est non rerum consequatur.', '1989-05-14 07:32:28', '1971-12-22 19:32:55');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('2', 'delectus', '138 Schiller Motorway Suite 698\nDouglasberg, CT 10749-0255', 'Explicabo sed sit necessitatibus et et eum. Quia est inventore similique ea quasi repellat. Et laborum possimus nisi nisi id aspernatur aspernatur tempora.', '1981-01-21 04:24:15', '2001-06-22 10:45:47');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('3', 'modi', '3873 Haven Junction Suite 380\nGreenfeldermouth, LA 18155-8395', 'Numquam non animi ducimus enim reiciendis sed deleniti. Nam quo illum in ut. Corrupti sapiente soluta voluptas et eveniet et.', '1983-08-19 22:34:51', '1992-07-05 02:29:51');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('4', 'dolorum', '7401 Hoppe Land Apt. 619\nUllrichberg, AZ 85173-9774', 'Sit in aut ipsa inventore molestias vel. A eos velit ut placeat distinctio ut laborum. Voluptatem sint officiis quas velit commodi doloremque. Dicta occaecati eaque voluptatem explicabo illum.', '1981-03-24 22:34:30', '1976-03-25 09:10:15');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('5', 'quas', '652 Hayes Turnpike\nAddisonville, KY 91177-0806', 'Magnam porro possimus dignissimos ex iure aspernatur voluptates. Quod et dolores consectetur nisi dolor occaecati. Et debitis est at facere.', '1983-01-03 12:32:47', '1984-02-23 02:17:20');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('6', 'eum', '2850 Lenora Estates\nPort Alfredomouth, KS 24396', 'Et voluptates consectetur expedita dolores corrupti. Consequuntur autem ut ea facere eligendi modi. Fugit ut reprehenderit quia necessitatibus facere magnam.', '1979-05-24 00:08:07', '1999-05-25 08:45:49');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('7', 'vel', '508 Greenfelder Way Suite 580\nStefanieton, NC 92388', 'Qui ut unde eius dolor voluptate. Dolore et sit veritatis nihil consequatur aut. Error aspernatur est id reprehenderit voluptas.', '1987-05-14 02:15:15', '1983-03-22 07:41:26');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('8', 'optio', '1957 Haley Coves\nLake Lois, SC 66334', 'Placeat alias placeat praesentium blanditiis non eveniet molestias. Corrupti autem harum eos vel. Deserunt asperiores voluptas nemo repellendus voluptatem voluptas reiciendis aut. Quo excepturi nesciunt delectus. Rerum ratione blanditiis quos voluptatem perspiciatis quibusdam omnis.', '2017-05-30 07:57:51', '2012-05-10 02:54:08');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('9', 'ut', '32744 Koepp Highway\nRippinberg, DE 84888', 'Nostrum ea eligendi nulla qui et ipsam cumque. Deleniti porro qui laborum. Quaerat vel fugiat quaerat mollitia tenetur deserunt neque vel. Ad quis et voluptatem eos. Aliquam quia dolor nesciunt aperiam commodi ullam et.', '2012-12-05 01:21:11', '1985-02-21 21:04:49');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('10', 'quam', '52604 Suzanne Knoll\nWyattview, WI 10174', 'Quia velit et libero et accusamus illo alias eum. Id aut excepturi ea ratione maxime aperiam quisquam blanditiis. Et dolores et quia dicta a et.', '2004-12-18 01:37:51', '1995-03-02 14:32:40');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('11', 'illum', '809 Marina Extensions\nWest Aricborough, MS 43603', 'Dolores qui consequatur necessitatibus est odio ratione. Omnis expedita aliquid iusto reprehenderit. Non quidem veniam non quae. Qui reprehenderit molestiae expedita at tempore esse. Et esse vero quidem voluptatem ut sit.', '1984-10-23 12:18:04', '1984-10-26 07:11:18');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('12', 'velit', '3850 Botsford Extensions Apt. 345\nGreenborough, MA 11695-7290', 'Et eum quis autem quas ab aut earum. Incidunt qui mollitia illum earum voluptas. Autem sunt fugiat corrupti aut.', '1999-12-16 06:02:39', '1978-08-15 20:37:02');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('13', 'laboriosam', '19636 Orn Trafficway Suite 225\nNorth Thomasmouth, GA 88259-7279', 'Sint veniam odio iste facere voluptatem deserunt fugit. Sunt libero facere sit ad ducimus repellat. Ducimus ipsam esse illo ullam perferendis mollitia.', '2013-03-14 14:53:40', '1998-11-02 10:18:40');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('14', 'vel', '114 Jaime Walks\nRoycestad, NH 66117', 'Totam incidunt distinctio excepturi aut illo iste ipsa ex. Dolorem alias in velit. Id quae est non in et laborum.', '2003-05-21 18:40:39', '2001-07-21 01:39:39');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('15', 'ullam', '6081 Porter Cape Apt. 340\nNorth Orvilleburgh, SC 15421', 'Facere eum nemo non ut itaque. Sed eos nam tempore fuga nam commodi. Rerum sed dolorem rerum inventore vitae. Qui voluptas ratione quo omnis ad sit vitae.', '2000-06-05 19:23:13', '2015-01-04 04:22:24');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('16', 'nobis', '8361 Nitzsche Islands\nChamplintown, RI 94776-2407', 'Mollitia ipsa ducimus natus natus modi alias sed suscipit. Deleniti unde deleniti blanditiis.', '2001-12-12 23:34:37', '2004-06-08 06:08:08');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('17', 'itaque', '17345 Hope Mission Suite 797\nLangborough, WY 90443-7078', 'Labore enim quia laborum consequuntur. Voluptatum et ut atque fugit. Vel nobis numquam eius nisi tempora. Nihil quia consequatur fugiat voluptas cupiditate. Dolores ullam molestiae nihil eveniet voluptatem placeat.', '1988-10-06 09:40:55', '2002-12-22 06:45:05');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('18', 'quis', '7807 Rick Ramp Apt. 050\nSchimmelborough, ND 22822', 'Et unde cupiditate qui tenetur nulla. Et quo nostrum ut ullam et. Quod similique qui reiciendis. Labore laudantium earum facilis et porro dolorem. Dolore quidem quo cupiditate sit itaque maiores.', '1976-08-12 23:43:41', '1995-02-09 01:25:23');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('19', 'incidunt', '338 Wehner Summit\nWest Doyle, IN 05290-0885', 'Quia debitis omnis maxime optio sunt sequi ipsam. Odit distinctio soluta suscipit voluptatem repudiandae molestiae eius eos. Numquam ratione quo necessitatibus harum.', '1982-03-21 06:51:31', '2013-03-08 01:53:29');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('20', 'ut', '771 Gisselle Cape Apt. 501\nBeatricemouth, DC 04640', 'Corporis animi quos est eaque labore sint nostrum. Voluptatem velit iure aut nemo magnam. Recusandae esse consequatur deserunt esse. Quaerat repudiandae est autem est minus maxime.', '1971-07-08 02:04:52', '2003-01-20 05:33:30');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('21', 'consequatur', '32409 Joey Falls Suite 562\nLake Jailynport, OH 43265-9011', 'Ut ad voluptatem nesciunt odio cum autem. Earum unde harum et maiores excepturi. In sunt nihil quis et totam reiciendis ut. In omnis dolorem explicabo eos natus.', '1991-01-15 23:11:42', '2006-12-15 05:14:10');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('22', 'non', '930 Rohan Glen\nPacochaton, MT 44102-4880', 'Dolore minima odit ad. Odit inventore nobis suscipit sed impedit facere dolores sunt. Quae dolorem doloremque fugiat dolores autem ducimus voluptas. Voluptas praesentium rerum aut.', '1988-04-20 00:21:56', '2013-11-21 12:33:46');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('23', 'natus', '9829 Megane Estate\nElenorchester, SD 84928', 'Recusandae consectetur dignissimos qui quod recusandae. Et aut voluptas et necessitatibus labore molestias. Et eos ut aut molestiae et quia illo.', '2018-05-24 04:41:12', '1982-02-10 09:59:33');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('24', 'et', '46502 Crooks Viaduct Apt. 084\nWest Wilma, AL 72458-4031', 'Minima rerum qui autem placeat vero quia. A autem praesentium qui eaque ea temporibus. Nulla expedita ut libero dolores rem numquam. Earum veritatis voluptate possimus eveniet.', '1973-04-26 02:49:32', '1990-02-05 03:50:29');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('25', 'quo', '876 McCullough Grove\nAmiehaven, NJ 15308', 'Accusamus maxime rerum officiis eos autem unde modi. Omnis consectetur tenetur non eum. Ex ut quia a dolorem perferendis quaerat. Enim vitae tenetur asperiores aspernatur quia maiores vel praesentium.', '1981-07-24 17:03:29', '1996-12-10 13:50:07');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('26', 'quas', '3546 Harrison Parkway Apt. 058\nSouth Reeceburgh, SD 68096', 'Consectetur ea hic veritatis quia nobis. Veritatis delectus cupiditate quisquam alias autem saepe nihil.', '2018-06-13 11:43:51', '1985-02-07 22:18:01');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('27', 'totam', '188 Leannon Shores\nSouth Roscoe, RI 24476', 'Distinctio doloribus doloremque inventore et quas perspiciatis nihil dolore. Enim consequatur facere et excepturi. Tempora sapiente ducimus nostrum numquam.', '2021-06-01 21:27:24', '2021-01-06 16:51:23');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('28', 'et', '84748 Lueilwitz Spur\nPort Anaville, NM 52767-0985', 'Qui ad id quidem occaecati alias. Dolor voluptas eos aperiam voluptatem quibusdam. Enim reiciendis quam omnis et dicta aut dolorum. Totam harum voluptas ut debitis porro illum ad.', '1992-06-15 16:22:09', '2017-12-19 19:52:57');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('29', 'adipisci', '816 Susan Ports\nAlexandreachester, TX 14378', 'Id accusantium illo doloribus rerum. A est aut quidem sed magni. Ut consectetur accusamus animi magnam. Architecto voluptatibus sunt doloribus.', '1987-12-13 14:13:44', '1978-04-25 20:56:58');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('30', 'eum', '5610 Laurence Fort\nPort Alysonhaven, OH 93106', 'Nihil et quis tempora expedita suscipit facere accusamus voluptatem. Harum culpa quo soluta atque accusamus qui quia. Nihil numquam natus et qui aliquid.', '1990-11-27 00:56:38', '2021-06-17 15:46:55');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('31', 'sunt', '0433 Lavina Haven\nAlexachester, WV 99021-7439', 'Sit explicabo suscipit aut ut suscipit consequuntur distinctio nostrum. Possimus iusto velit at omnis deleniti et ut. Cum ut consequuntur rerum necessitatibus quo fugit. Nesciunt cupiditate ut est voluptatibus.', '1979-06-29 16:13:53', '1973-12-03 22:34:24');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('32', 'et', '2840 Salvador Lights\nBartolettiberg, IA 39911', 'Placeat ut eveniet eos rerum hic voluptas. Repudiandae provident accusantium ex temporibus quisquam adipisci eveniet. Aut est sapiente quia facere delectus ducimus impedit sint. Sunt harum accusamus ut.', '1994-06-05 21:28:43', '1987-11-13 01:05:03');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('33', 'est', '889 Stark Port\nNorth Michaelfort, IA 03623', 'Ex unde quis tenetur. Et totam ut eaque laboriosam. Dolorem et et quia explicabo. Quia neque cupiditate dolor rerum ipsam qui fugiat.', '1996-04-13 01:23:13', '2015-05-17 17:26:28');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('34', 'ut', '6744 Hilton Vista Apt. 017\nEast Floyd, TX 77564', 'Ut commodi rerum nulla sit. Quae nemo adipisci molestias ex sit. Nihil eos dolorem asperiores enim velit sapiente. Distinctio beatae sed debitis maxime.', '2010-09-15 08:44:01', '2007-04-09 19:27:22');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('35', 'reprehenderit', '24573 Weissnat Mountain\nWest Babyton, DC 50078', 'Atque magnam consequatur pariatur voluptatem possimus aut blanditiis. Dolore delectus consectetur consectetur qui. Aut consequatur sit a consequatur quia quod deserunt.', '2020-07-30 09:46:20', '1981-05-24 18:46:04');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('36', 'porro', '873 Balistreri Station Suite 202\nLake Mosehaven, TX 86187', 'Sed deserunt amet voluptates tempora deserunt voluptatem tenetur optio. Voluptas quas aut voluptas similique ullam. Nesciunt unde officiis laborum ullam. Architecto eum eveniet in a qui nesciunt.', '1989-02-07 16:49:37', '2011-06-14 03:33:19');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('37', 'omnis', '4578 Tromp Mountain\nNikolausberg, AR 17556-8666', 'Ratione ut repudiandae qui deleniti sed quos nisi impedit. Similique ut provident alias autem itaque ratione. Exercitationem et ut cum. Deleniti repellendus vero aut expedita.', '2007-05-11 17:43:32', '2008-09-03 22:26:07');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('38', 'aliquam', '9221 Gregory Avenue Apt. 818\nMarquardtfort, VA 57857', 'Illo voluptatibus quia perspiciatis architecto. Error eos qui aperiam ut quod quo. Voluptas praesentium expedita aut eum qui.', '2002-08-13 21:00:37', '2010-01-25 22:36:48');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('39', 'ipsa', '8610 Brekke Loop Apt. 770\nLillieside, OR 09508', 'Debitis et aut aliquam et. Aut in consequatur cumque. Accusamus voluptate enim occaecati est quia magni.', '2014-02-11 08:03:21', '1979-02-13 09:14:44');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('40', 'fugiat', '21987 Armstrong Bridge\nRatkemouth, CO 86808', 'Accusantium ipsum quibusdam et tempora aliquid. Atque dolor illum omnis hic eos. Odio quas sint eaque consequatur tempora quod.', '2019-05-24 22:52:03', '1984-01-28 03:37:31');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('41', 'omnis', '6006 Torrance Underpass Suite 652\nNew Tatum, NV 08428-2912', 'Libero consequuntur expedita amet sed. Architecto quidem aliquid provident iste. Ullam dolor rerum aut pariatur ipsa rerum voluptatem. Qui ad deserunt beatae dolore quibusdam quia.', '1979-02-15 21:37:11', '2016-08-11 17:07:41');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('42', 'odio', '346 Richard Court\nPort Travis, AL 97789-3939', 'Quas consequatur maxime aliquam. Placeat odio sint est. Sapiente iusto exercitationem error.', '1971-06-16 07:32:42', '2001-10-14 12:57:29');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('43', 'et', '99398 Hintz Prairie\nFeeneymouth, IL 95956', 'Voluptatem sapiente ipsam facilis recusandae rerum quo perspiciatis. Quisquam qui et ducimus odit. Laudantium ut nam est dolorem porro neque. Sunt qui ut et voluptatum sit quis quae.', '2008-01-23 03:34:06', '1980-05-05 23:41:50');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('44', 'aut', '5274 Khalid Wall Suite 428\nChloefurt, TN 64985-7644', 'Voluptatem corporis consequatur rerum voluptas velit consectetur. Quam pariatur non atque aspernatur veritatis suscipit. Officia sint molestiae sed incidunt.', '1984-12-31 15:48:33', '1992-10-17 20:39:58');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('45', 'rerum', '397 Bianka Falls\nSouth Janet, MI 46818', 'Quibusdam et rem dolores voluptatem voluptatibus ea doloremque. Ut distinctio labore reprehenderit vitae dolores. Aut incidunt commodi ea. Sed quasi consequatur debitis consequatur.', '2019-11-02 09:51:17', '2010-01-21 18:34:20');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('46', 'nam', '18004 Aisha Burg\nNew Laurenport, VT 65460', 'Delectus qui quia et impedit quam. Quo aperiam dolore ducimus ratione minus architecto.', '2017-03-04 07:30:03', '1972-10-31 20:54:24');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('47', 'illum', '177 Amya Pines\nNew Arlieville, OR 31302', 'Omnis quia unde aut. Quam facere sequi et. Officiis aut laborum in quia.', '2000-10-25 03:05:39', '1990-09-30 15:13:11');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('48', 'temporibus', '122 Deckow Shoals\nPort Milton, OH 92591', 'Sed qui facilis dolorem amet et aperiam. Suscipit accusantium neque quis ut autem nulla. Ex nemo minima nemo omnis repellat. Qui impedit enim vel explicabo dolorum voluptates.', '1999-09-11 07:57:16', '1991-07-03 03:23:45');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('49', 'reiciendis', '96727 Boyer Green Suite 885\nLake Amira, TX 17088-6577', 'Eos quae voluptates nihil accusantium. Velit earum ipsam soluta repudiandae quod. Iure autem quo voluptates fugit culpa ut.', '1995-04-09 04:41:19', '1989-10-08 08:34:32');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('50', 'dignissimos', '8084 Cole Locks Suite 874\nSouth Haileymouth, GA 04814-6987', 'Similique facere aut numquam. Dolores autem aut voluptatem necessitatibus at corporis. Quia quo quia optio. Ipsam dolorem aperiam quod omnis ipsam est non. Rerum excepturi ea aut et voluptas eos.', '2015-07-26 17:05:04', '2002-03-21 17:49:00');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('51', 'qui', '2907 Koepp Plain\nLednerland, NY 16764-9320', 'Sit quia corporis aut incidunt nulla et voluptas saepe. Ex magnam a natus quia provident non modi. Nisi deleniti totam possimus.', '2001-08-21 09:10:25', '1972-11-11 10:16:56');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('52', 'mollitia', '761 Osinski Brooks\nSchuppeton, NY 75440', 'Vel dolorem et cupiditate aut quia est excepturi. Adipisci dolor est corrupti dolorem.', '1998-06-29 17:23:12', '2000-04-28 01:29:53');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('53', 'earum', '8857 Krystel Island Suite 222\nNorth Darian, WV 39997', 'Earum quis consequatur aperiam ipsum reiciendis. Voluptatem sequi eum voluptas ex rerum tempore. Vitae harum nobis repellendus aliquam non nihil quia id. Et voluptatem quidem error inventore ea est libero nihil.', '2010-08-22 08:14:35', '2004-02-27 08:49:03');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('54', 'modi', '045 Fahey Corner Suite 208\nEast Dallas, MA 51253-1183', 'Pariatur mollitia dolorem non dicta sed expedita cum atque. Placeat et aut voluptates inventore voluptas est porro. Qui qui magnam voluptatem consequatur. At natus non numquam provident placeat.', '1984-02-11 00:09:04', '2007-07-07 06:29:19');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('55', 'et', '082 Zander Stravenue Suite 819\nLake Frankie, WY 11123', 'Iste quo saepe fugit provident. Inventore eum quis qui fuga. Voluptatem iste accusamus tenetur labore.', '2007-01-01 10:52:16', '1991-01-31 19:28:16');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('56', 'odit', '218 Feeney Alley Suite 344\nKrajcikside, OH 80333-3323', 'Beatae delectus tempore reiciendis assumenda distinctio rerum cupiditate. Enim accusamus voluptatem ipsum asperiores. Quia voluptatem repellat ut ducimus ex odio aperiam. Placeat qui et molestiae at. Ex aut libero laborum ea dignissimos.', '1974-07-28 06:19:04', '1983-03-26 05:16:07');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('57', 'voluptatum', '96722 O\'Keefe Cove\nWest Ryan, TN 38980-6573', 'Eius repellat ab alias corporis cupiditate qui non. Culpa quas facere voluptatem vel. Reiciendis omnis labore rem ut corrupti. Aut et maiores voluptatem et et esse.', '1979-02-19 05:58:24', '2002-05-14 03:06:51');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('58', 'voluptatibus', '61670 Powlowski Court Suite 057\nKrajcikburgh, GA 08899-0750', 'Maxime sint et ut et quia rerum eligendi. Sunt totam magnam est officiis quos cupiditate. Delectus et ipsum rerum alias non.', '2005-02-06 09:56:33', '1998-04-18 04:52:08');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('59', 'quod', '6547 Prohaska Pine Suite 238\nEast Lolaberg, MS 90995', 'Et pariatur in voluptas autem porro sapiente. Perferendis sunt aperiam laboriosam suscipit qui odit explicabo qui. Voluptatem est itaque laboriosam consequatur deserunt voluptates et. Maxime voluptatem fugit error repellat.', '1988-05-21 11:11:40', '2012-09-17 11:57:59');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('60', 'aut', '68017 Laurie Estate\nHartmannport, UT 23023-1385', 'Magnam at laboriosam velit error reiciendis laborum aut. Et autem cumque in odit reprehenderit velit. Voluptas aspernatur qui molestiae eum velit fugit exercitationem. Porro consequatur voluptates accusantium delectus velit reiciendis natus dolorem. Quos minima repellendus commodi natus commodi et.', '1995-01-28 12:04:22', '2001-04-21 19:04:53');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('61', 'accusantium', '37455 Dejuan Falls Apt. 907\nWest Gail, OR 06976', 'Nulla cum deserunt consequatur amet animi. Corrupti cum autem et itaque vel perferendis.', '1974-10-11 16:33:27', '2006-02-23 21:01:36');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('62', 'nisi', '37445 Mosciski Bypass Apt. 386\nEast Keeganville, TN 22547-2902', 'Mollitia possimus in qui necessitatibus. In sed quia minus dolorem voluptatem qui quos. Non saepe architecto quas quod possimus.', '2014-11-13 14:06:32', '1997-06-20 20:11:23');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('63', 'quae', '0501 Annabel Isle Apt. 183\nEast Damarisville, TN 57535', 'Quaerat recusandae iusto qui voluptas qui doloremque fuga. Est sunt optio qui sed atque voluptate aliquid. Sed explicabo magnam doloremque quos.', '1989-02-17 10:03:44', '1997-05-13 03:53:07');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('64', 'explicabo', '75306 Alysson Knolls Apt. 587\nLake Josue, PA 83990', 'Suscipit beatae commodi est voluptates velit voluptas rem. Repellendus aperiam recusandae debitis rem aut. Architecto rerum temporibus amet neque est ducimus inventore.', '1972-06-15 01:49:51', '2006-10-02 02:29:04');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('65', 'eveniet', '051 Muller Fields Apt. 171\nChamplinville, CA 49856-4343', 'Dolor dolor quisquam exercitationem. Et sunt doloribus assumenda consequatur sint mollitia. Est soluta cupiditate illum debitis.', '1988-10-21 22:47:31', '2014-08-29 06:23:52');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('66', 'quam', '9896 Destini Field\nKiehnmouth, OK 73705', 'Dolore quod sint corrupti voluptatem. Sit numquam delectus est. Nisi labore delectus accusantium deserunt est vel. Repellendus ea est aut sed.', '1972-09-05 15:12:13', '2010-04-07 03:53:47');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('67', 'vel', '9372 Beier Point\nGaretttown, SD 69200-7119', 'Et possimus quam voluptatem animi sit. Architecto ea voluptatem dolor aliquam cumque. Voluptas enim facere quas id et. Libero sint suscipit vel laboriosam eum.', '2011-03-02 01:21:12', '2011-03-09 03:51:10');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('68', 'ratione', '24690 Schulist Cape\nBernadettemouth, NC 49202', 'Autem laborum repellat perferendis dolorem consectetur eaque. Qui et doloremque voluptatum tempora nesciunt. Nisi molestias mollitia velit sunt.', '1982-10-02 18:12:21', '2010-05-19 02:39:53');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('69', 'ipsum', '058 Bartoletti Stravenue Apt. 346\nElliestad, SD 04612-5384', 'Cum facilis nisi et tenetur consequatur qui. Eum est natus sit totam pariatur ab pariatur soluta. Labore sed error consequatur.', '2014-07-19 20:13:29', '1992-08-23 21:37:48');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('70', 'iure', '6356 Eliza Bypass\nMcLaughlinburgh, NH 70348-8597', 'Quia optio repellendus qui dolores sed nisi accusamus. Quibusdam reprehenderit nostrum eos blanditiis blanditiis sit vel. Sunt exercitationem vel veritatis voluptatem in et et omnis. Unde sapiente ut facere blanditiis iure sequi.', '2003-09-26 05:51:34', '1983-09-04 07:56:37');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('71', 'quia', '3661 D\'Amore Alley\nBodestad, AR 19679-6072', 'Temporibus molestiae maxime mollitia eos maiores expedita ea debitis. Laudantium totam molestiae in ex ab saepe. Pariatur neque accusantium eveniet vitae ut enim nulla.', '1980-04-29 11:29:10', '1974-10-22 06:56:54');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('72', 'ratione', '29442 Eveline Ranch\nPort Lula, ME 89056', 'Ullam voluptas sunt in optio eos nihil tenetur. Voluptatibus ducimus quis ut quos consequatur est. Vero error consequatur ab sed totam.', '2012-07-29 04:26:33', '1978-12-15 21:59:40');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('73', 'culpa', '5152 Paris Skyway\nSouth Nasir, MI 86562', 'Et autem omnis accusantium non. Sunt nemo fugiat sit aperiam vero.', '2005-03-30 16:20:44', '1972-01-04 22:58:53');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('74', 'laborum', '3647 Sauer Radial\nMcCulloughmouth, WA 69221', 'Qui in aut non non. Ea et deleniti aut. Maiores qui officiis similique libero nisi accusamus.', '1987-06-04 02:51:50', '2004-11-15 04:35:28');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('75', 'quas', '5448 Clair Station Suite 254\nBartolettihaven, MD 34979', 'Ad pariatur ab vel assumenda. Ratione ducimus aliquam voluptas id quia quae error. Pariatur tenetur est at amet voluptas. Molestiae at a et omnis itaque blanditiis inventore.', '2021-02-02 15:22:37', '1985-12-17 19:19:24');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('76', 'odio', '44063 Tillman Roads Suite 830\nRaphaelfurt, KY 61362-3832', 'Ut hic quia odit qui dolore vitae. Harum qui et sit consequatur molestias ut totam quaerat. Aut voluptate hic magni deserunt provident minus in ut.', '1975-08-04 08:17:09', '1976-03-10 11:04:13');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('77', 'animi', '7151 Gulgowski Streets Apt. 751\nGastonstad, WI 27276-5595', 'Dolore fuga nobis dolor consectetur eaque. Nobis quia nobis fugit maiores.', '1998-04-10 23:21:39', '1989-11-18 02:46:08');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('78', 'numquam', '8737 Mable Gateway Suite 754\nAnnamouth, ID 60414-8412', 'Reprehenderit et architecto reprehenderit. Laudantium qui qui earum error dolor id. Soluta qui ex enim natus fuga eos voluptatem et. Ea dicta eos nesciunt tenetur omnis fugiat odit ut.', '2009-03-20 01:38:10', '2008-01-24 03:57:32');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('79', 'nulla', '5849 Torphy Radial Apt. 351\nEast Clemenstown, TX 69720', 'Occaecati et possimus nostrum nam. Natus odit amet dolore eaque expedita.', '1992-02-20 15:50:12', '1977-06-24 10:39:19');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('80', 'omnis', '5327 Dagmar Drive\nWest Gustavestad, IN 97731', 'Consequatur ut in dolor aut alias qui necessitatibus. Et molestiae maiores officiis. Harum culpa occaecati sint dicta voluptatibus sunt vel. Est fugiat aliquam quo dolorem numquam quo. Rerum et numquam ipsum.', '2015-02-09 03:55:10', '2009-07-27 02:09:26');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('81', 'dolorem', '8000 Jerrold Lodge Apt. 740\nBorerbury, WA 27122', 'Officia ut ipsa doloremque et. Ipsam libero sed sequi fugit eveniet fuga. Nostrum rerum blanditiis totam sint vitae voluptatem. Quas cupiditate harum eos voluptas ea voluptatem. Voluptate quia quis qui tenetur.', '2011-05-20 02:06:19', '1970-07-13 10:46:04');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('82', 'quo', '291 Sylvester Road\nGleichnermouth, CO 43925-5948', 'Quidem ea provident accusantium corrupti. Exercitationem omnis recusandae dolore dolor ea deserunt laborum. Amet harum est consectetur assumenda.', '1981-05-07 07:48:54', '1972-08-23 21:20:55');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('83', 'temporibus', '94387 Alexandro Isle\nNelsonberg, AL 31436', 'Modi aliquid architecto et qui. Accusamus fugit labore et. Officia eius eveniet enim. Voluptas velit ab voluptatem odio neque.', '2007-07-08 08:34:20', '1983-11-10 11:58:45');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('84', 'cumque', '6220 Dangelo Rapid Apt. 958\nDorianhaven, FL 55006', 'Aut praesentium dolorem voluptatem voluptatem placeat dolor accusantium. Aut eum quaerat voluptatem nobis sit voluptatem.', '1987-12-21 07:33:31', '1982-07-08 17:51:02');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('85', 'minima', '57547 Nona Keys\nRhiannonchester, NY 39244', 'Sit enim excepturi numquam molestiae corporis rerum voluptatem. Dolor quidem aut non sunt quo tenetur molestias.', '2013-08-07 03:47:27', '2019-09-29 16:06:23');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('86', 'doloribus', '76828 Winona Groves Suite 295\nSouth Willowbury, LA 53208', 'Ea doloremque molestiae dolorem totam reprehenderit est maxime quas. Esse commodi dignissimos ea molestiae quibusdam. Ipsa architecto at est dolorem esse. Perferendis enim numquam et mollitia animi molestiae possimus ea.', '2005-02-05 09:39:14', '1981-12-25 01:02:04');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('87', 'expedita', '5163 Feest Forge Suite 674\nEast Elbert, TX 90486-3738', 'Fugiat suscipit aut accusamus et iure qui dignissimos. Magni illum harum ipsum saepe. Rem dignissimos quod ut eius non consequatur. Et saepe quisquam perspiciatis quis necessitatibus corrupti.', '2011-09-14 17:40:36', '2019-09-23 23:05:24');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('88', 'ea', '3192 Schmitt Trace Apt. 402\nWest Hayleeburgh, CO 58494-2172', 'Iste nisi et assumenda. Accusantium placeat rerum quam fugiat. Rerum id a quidem aliquid facere accusamus. Suscipit ab voluptatem assumenda.', '1983-01-02 21:48:42', '1977-08-24 14:00:19');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('89', 'mollitia', '451 Harris Pine\nPort Claudefurt, MS 93176-3577', 'Repellat sint veritatis ea. Molestias sunt facilis voluptas aperiam vel dolor. Aut animi commodi quis beatae impedit numquam.', '1999-12-10 18:38:41', '1999-04-14 11:22:02');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('90', 'maxime', '680 Ondricka Ville Apt. 298\nDanialmouth, OR 61670-6922', 'Et totam ipsa ea debitis et odit totam. Cumque quia excepturi eaque optio. Fuga quos voluptatem qui provident ad dolores dolorem. Est magnam velit aperiam ut aut consequatur.', '2016-01-07 21:37:28', '2009-06-06 04:27:23');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('91', 'excepturi', '18403 Desmond Shores\nLinnietown, RI 49272', 'Voluptatum libero ut quia nam blanditiis sint totam. Ab non est tempora est. Et iste nobis beatae. Doloribus laborum qui et rerum eaque quasi. Maiores non nostrum qui hic esse mollitia et.', '1979-11-02 00:17:06', '1982-03-01 12:35:05');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('92', 'ab', '2779 Antwan Road\nSouth Eladiotown, DC 50690-1048', 'Facilis reiciendis sed voluptatem eveniet dicta. Eum sapiente sed aut quos animi. Sed occaecati ut labore ratione et. Sint velit pariatur temporibus nemo.', '2014-11-23 00:35:28', '1993-01-25 18:29:34');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('93', 'animi', '79122 Bernardo Corner Apt. 517\nAdahfurt, SD 19727', 'Similique quia quis sunt repudiandae. Dolore consequatur qui aut quis amet ea officiis. Explicabo est rem officia eveniet sequi quaerat rerum.', '1995-12-19 07:27:22', '1992-02-14 21:10:16');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('94', 'animi', '77234 Jenkins Street\nProsaccomouth, UT 74530', 'Aut distinctio explicabo ratione omnis impedit blanditiis. Mollitia laborum eius nesciunt quasi nesciunt et. Excepturi dignissimos corrupti beatae molestiae aliquam ut omnis.', '1996-03-03 02:11:21', '2000-12-07 07:12:51');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('95', 'tenetur', '69486 Rempel Stream\nSouth Maybelleview, CT 09816-7786', 'Molestiae accusantium et et quod aut quae voluptatem. Recusandae ut consequatur nesciunt nesciunt eaque. Est natus corporis amet atque.', '1987-01-16 15:00:16', '2009-04-28 14:15:57');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('96', 'libero', '082 Haley Common\nKiehnport, KS 30746-8625', 'Eligendi omnis asperiores excepturi rem. Ut soluta fuga earum alias reprehenderit maiores omnis dolorem. Fuga adipisci voluptas numquam accusantium vel deserunt at. Sit iure quis doloremque molestias dolor autem et quia. Ut error dolore laudantium corrupti quia ipsam perferendis.', '2020-03-28 19:30:12', '1988-02-17 15:33:45');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('97', 'non', '75079 Ahmed Landing\nNew Karlmouth, NC 06335-4593', 'Ab explicabo esse quod eum. Illum maiores repudiandae a sunt qui dignissimos. Aut non accusantium nam sed.', '1976-05-27 18:50:38', '1987-07-31 20:27:22');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('98', 'recusandae', '35862 Libbie Shoals Suite 907\nPort Adolfo, FL 32013-4145', 'Natus quia sit iste reprehenderit omnis est. Qui vel commodi unde voluptatem voluptatem. Ea rerum voluptas sunt optio dicta in numquam.', '1973-01-01 06:47:12', '2017-11-25 02:50:19');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('99', 'necessitatibus', '532 Talon Wall Suite 133\nSouth Kyra, UT 99816-5022', 'Quidem autem expedita est laborum sit. Et velit voluptatem voluptas sequi eaque sit. Ad quo autem quisquam earum quia voluptates enim. Dolores pariatur modi molestiae eum cumque officiis.', '1976-03-06 05:57:17', '1992-11-26 23:08:13');
INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`) VALUES ('100', 'ut', '29818 Laury Islands\nLamontchester, NV 79440', 'Tempora modi excepturi amet reiciendis non nisi. Possimus velit atque non quis. Harum impedit harum harum qui eum ut molestiae.', '1971-04-29 00:57:42', '2007-10-15 08:44:20');

INSERT INTO `legal_persons` (`id`, `name`, `registration_address`, `description`, `created_at`, `updated_at`, `legal_person_type_id`) VALUES ('101', 'Наша компания', 'Адрес', null, now(), now(), 1);

update legal_persons l
set legal_person_type_id = FLOOR(RAND() * (2)) + 2
where l.id <> 101;

-- Свяжем контакт с юрлицом.
update contacts c 
set c.legal_persons_id = FLOOR(1 + RAND() * (100-1))
where c.id <> 101;

update contacts c 
set c.legal_persons_id = 101
where c.id = 101;

update contacts c
set c.contact_type_id = (select ct.id from contact_type ct where ct.name = 'Клиент')
where c.legal_persons_id <> 101;


-- Средства связи контакта. Мобильный телефон.
insert into contact_communications(name,communications_type_id,contacts_id,created_at)
select concat('79', substring(cast(3 + (rand() * 10) % 7 AS char(50)), 1, 1), right(left(trim(cast(rand() AS char(50))), 11), 8)) phone,
	   1,
	   c.id,
	   now()
from contacts c;

-- Средства связи контакта. e-mail.
insert into contact_communications(name,communications_type_id,contacts_id,created_at)
select concat(c.name, c.surname, '@', elt(floor(rand()*6) + 1, 'gmail.com', 'mail.ru', 'rambler.ru', 'bk.ru', 'ya.ru', 'yandex.ru')) email,
	   2,
	   c.id,
	   now()
from contacts c;

-- Средства связи юрлица. Мобильный телефон.
insert into legal_persons_communications(name,communications_type_id,legal_persons_id,created_at)
select concat('79', substring(cast(3 + (rand() * 10) % 7 AS char(50)), 1, 1), right(left(trim(cast(rand() AS char(50))), 11), 8)) phone,
	   1,
	   c.id,
	   now()
from legal_persons c;

-- Средства связи юрлица. e-mail.
insert into legal_persons_communications(name,communications_type_id,legal_persons_id,created_at)
select concat(c.name, '_', c.id, '@', c.name, '.', elt(floor(rand()*3) + 1, 'com', 'ru', 'by')) email,
	   1,
	   c.id,
	   now()
from legal_persons c;

-- Активности.
insert into activity(employee_id,
					 start_date,
					 name,
					 activity_type_id,
					 activity_result_id,
					 legal_persons_id,
					 created_at,
					 updated_at)
select (select c.id 
		from contacts c
		where c.contact_type_id = 1 -- Сотрудник
		order by rand()
		limit 1) emp,
		DATE(TIMESTAMPADD(SECOND, FLOOR(RAND() * TIMESTAMPDIFF(SECOND, '2020-01-01 00:00:00', now())), '2020-01-01 00:00:00')) start_date,
		(select concat('Test activity ', name) 
		 from activity_type
		 order by rand()
		 limit 1) name,
		FLOOR(RAND() * (3)) + 1 activity_type, 
		FLOOR(RAND() * (3)) + 1 activity_result, 
		l.id legal_persons_id,
		now(),
		now()
from legal_persons l;

insert into activity(employee_id,
					 start_date,
					 name,
					 activity_type_id,
					 activity_result_id,
					 legal_persons_id,
					 created_at,
					 updated_at)
select (select c.id 
		from contacts c
		where c.contact_type_id = 1 -- Сотрудник
		order by rand()
		limit 1), 
		DATE(TIMESTAMPADD(SECOND, FLOOR(RAND() * TIMESTAMPDIFF(SECOND, '2020-01-01 00:00:00', now())), '2020-01-01 00:00:00')) start_date,
		(select concat('Test activity ', name) 
		 from activity_type
		 order by rand()
		 limit 1) name,
		FLOOR(RAND() * (3)) + 1 activity_type, 
		FLOOR(RAND() * (3)) + 1 activity_result,
		1,
		now(),
		now();

update activity a
set a.end_date = DATE(DATE_ADD(a.start_date, INTERVAL 1 HOUR));

-- Данные учётных записей.
insert into user_credentials(contacts_id,
							 login,
							 password_hash,
							 date_valid_to,
							 is_active,
							 created_at,
							 updated_at)
select c.id, c.name, MD5(c.name), DATE(DATE_ADD(now(), INTERVAL 1 YEAR)) valid, 1, now(), now() 
from contacts c
where
c.contact_type_id = 1;

-- Рассылки.
insert into distribution(name,
						description,
						header,
						body,
						created_at,
						updated_at)
values('Тестовая рассылка 1', 'Тестовая рассылка 1', 'Поздравляем!', 'Поздравляем c новым годом и рождеством!', now(), now()),
	  ('Тестовая рассылка 2', 'Тестовая рассылка 2', 'Акция!', 'При покупке 2-х гвоздей, молоток в подарок!', now(), now()),
	  ('Тестовая рассылка 3', 'Тестовая рассылка 3', 'Распродажа!', 'Сегодня продаём весь ассортимент со скидкой 5%', now(), now());

-- Аудитория расылки.
insert into distribution_target(distribution_id,
								contacts_id,
								communications_type_id,
								name,
								date_send,
								created_at)
select 1, 
	   c.id,  
	   1, -- Мобильный телефон.
	   (select cc.name 
		from contact_communications cc 
		where
		cc.communications_type_id = 1 -- Мобильный телефон.
		and cc.contacts_id = c.id
		limit 1) client_number, -- Номер.
		now(),
		now()
from contacts c
join contact_communications cc on c.id = cc.contacts_id 
  and cc.communications_type_id = 1
where c.contact_type_id = 2; -- Клиент

insert into distribution_target(distribution_id,
								contacts_id,
								communications_type_id,
								name,
								date_send,
								created_at)
select 2, 
	   c.id,  
	   2, -- email.
	   (select cc.name 
		from contact_communications cc 
		where
		cc.communications_type_id = 2 -- email.
		and cc.contacts_id = c.id
		limit 1) client_number, -- Номер.
		now(),
		now()
from contacts c
where c.contact_type_id = 2; -- Клиент

insert into distribution_target(distribution_id,
								contacts_id,
								communications_type_id,
								name,
								date_send,
								created_at)
select 3, 
	   c.id,  
	   2, -- email.
	   (select cc.name 
		from contact_communications cc 
		where
		cc.communications_type_id = 2 -- email.
		and cc.contacts_id = c.id
		limit 1) client_number, -- Номер.
		now(),
		now()
from contacts c
where c.contact_type_id = 2; -- Клиент

-- Договора.
insert into contract(employee_id,
					 `number`,
					 `date`,
					 name,
					 amount)
select (select c.id 
		from contacts c
		where c.contact_type_id = 1 -- Сотрудник
		order by rand()
		limit 1) emp,
		concat('№ ', FLOOR(100 + RAND() * (1000)), '_', lp.id) con_number,
		DATE(TIMESTAMPADD(SECOND, FLOOR(RAND() * TIMESTAMPDIFF(SECOND, '2020-01-01 00:00:00', now())), '2020-01-01 00:00:00')) start_date,
		'Test contract ',
		FLOOR(100000 + RAND() * (10000000)) amount
from legal_persons lp 
where lp.legal_person_type_id = 2; -- Клиент

-- Стороны договоров.
insert into contract_members(contract_id, legal_persons_id)
select ctr.id, 101 
from contract ctr
order by  ctr.id;

insert into contract_members(contract_id, legal_persons_id)
select ctr.id, (select lp.id legal_persons_id 
				from legal_persons lp 
				where lp.legal_person_type_id = 2 and lp.id <> 101
				order by rand()
				limit 1) client
from contract ctr
order by  ctr.id;

-- Сделки.
insert into dealings(employee_id,
					 buyer_id,
					 seller_id,
					 contract_id,
					 amount,
					 name)		
select (select c.id 
		from contacts c
		where c.contact_type_id = 1 -- Сотрудник
		order by rand()
		limit 1) emp,
		cm.legal_persons_id,
		101,
		cm.contract_id,
		FLOOR(100000 + RAND() * (10000000)) amount,
		'Test dealings'
from contract_members cm
where cm.legal_persons_id <> 101;

-- Платёжные реквизиты.
insert into payment_details(name,
							description,
							legal_persons_id,
							created_at,
							updated_at)
select 'Тестовые реквизиты', CONCAT('Тестовые реквизиты клиента: ', lp.name), lp.id, now(), now() 
from legal_persons lp;

-- Документы.
insert into document(document_types_id,
					 contacts_id,
					 legal_persons_id,
					 body,
					 filename,
					 `size`,
					 metadata,
					 created_at,
					 updated_at)
select 1, 
	   ct.employee_id, 
	   (select cm.legal_persons_id 
	    from contract_members cm
	    where cm.legal_persons_id <> 101
	    and cm.contract_id = ct.id
	    limit 1) legal_persons_id, 
		'Тестовый договор поставки',  
	   (select concat('contract_', cm.legal_persons_id, '.pdf') 
	    from contract_members cm
	    where cm.legal_persons_id <> 101
	    and cm.contract_id = ct.id
	    limit 1),  
	    FLOOR(1000 + RAND() * (10000)), 
	    null, 
	    now(), 
	    now()
from contract ct; 

insert into document_to_dealings(document_id, dealings_id)
select doc.id, (select d.id 
				from dealings d
				order by rand()
				limit 1) 
from document doc
order by doc.id
limit 25;

insert into document_to_contract(document_id, contract_id)
select doc.id, (select d.id 
				from contract d
				order by rand()
				limit 1)  
from document doc
order by doc.id desc
limit 25;
