/*
 1. Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах 
 users, catalogs и products в таблицу logs помещается время и дата создания записи, название таблицы, идентификатор первичного ключа и содержимое поля name.
 */

-- Создание таблицы logs типа Archive.
DROP table IF EXISTS logs;
create table logs (
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата создания записи',
	table_name VARCHAR(255) COMMENT 'Название таблицы',
	id_field BIGINT UNSIGNED COMMENT 'Идентификатор первичного ключа',
	name_field VARCHAR(255) COMMENT 'Содержимое поля name'
) COMMENT = 'Лог таблиц users, catalogs и products' ENGINE=Archive;

-- Создание триггера для таблицы users.
DROP TRIGGER IF EXISTS tr_ai_users;
DELIMITER $$
CREATE TRIGGER tr_ai_users after insert ON users
FOR EACH ROW BEGIN
  
  -- Логируем вставку.
  insert into logs(created_at, table_name, id_field, name_field)
  values(now(), 'users', NEW.id, NEW.name);
 
END$$   
DELIMITER ;

-- Создание триггера для таблицы catalogs.
DROP TRIGGER IF EXISTS tr_ai_catalogs;
DELIMITER $$
CREATE TRIGGER tr_ai_catalogs after insert ON catalogs
FOR EACH ROW BEGIN
  
  -- Логируем вставку.
  insert into logs(created_at, table_name, id_field, name_field)
  values(now(), 'catalogs', NEW.id, NEW.name);
 
END$$   
DELIMITER ;

-- Создание триггера для таблицы products.
DROP TRIGGER IF EXISTS tr_ai_products;
DELIMITER $$
CREATE TRIGGER tr_ai_products after insert ON products
FOR EACH ROW BEGIN
  
  -- Логируем вставку.
  insert into logs(created_at, table_name, id_field, name_field)
  values(now(), 'products', NEW.id, NEW.name);
 
END$$   
DELIMITER ;

-- 2. (по желанию) Создайте SQL-запрос, который помещает в таблицу users миллион записей.
