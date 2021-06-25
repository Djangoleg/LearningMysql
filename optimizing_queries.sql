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

-- Создание процедуры для генерации данных в таблицу users.
DROP PROCEDURE IF EXISTS DataGenerationToUsers;

DELIMITER $$
CREATE PROCEDURE DataGenerationToUsers (
	IN RecordsCount_I INT,
	IN CommitEveryRecords_I INT
)
BEGIN
  DECLARE name_ VARCHAR(255);
  DECLARE birthday_ DATETIME;
  DECLARE counter_ INT DEFAULT 0;
  
  IF (RecordsCount_I > 0) THEN
  
    -- Коммит каждые n записей.
    SET CommitEveryRecords_I = IFNULL(CommitEveryRecords_I, 1000);
  	
    START TRANSACTION;
  	
    WHILE counter_ < RecordsCount_I DO
  	  SET counter_  = counter_  + 1;
  	 
  	  -- Генерация имени.
  	  select elt(floor(rand()*20) + 1, 'James', 'John', 'Robert',	'Michael', 'William', 'David', 'Richard', 'Joseph',
								 'Charles', 'Thomas', 'Amelia', 'Olivia', 'Isla', 'Emily', 'Poppy', 'Ava',
								 'Isabella', 'Jessica', 'Lily', 'Sophie')
	  into name_;
	 
	  -- Генерация даты рождения.
	  select DATE(TIMESTAMPADD(SECOND, FLOOR(RAND() * TIMESTAMPDIFF(SECOND, '1980-01-01 00:00:00', '2010-01-01 00:00:00')), '1980-01-01 00:00:00'))
	  into birthday_;
  	 
  	  INSERT INTO users (name, birthday_at) 
  	  VALUES (name_, birthday_);
  	 
  	  IF counter_ = CommitEveryRecords_I THEN
  	    COMMIT;
  	  END IF;
	
    END WHILE;

	COMMIT;

  ELSE
	SELECT 'Ошибочное значение входного параметра RecordsCount_I';
  END IF;
END$$
DELIMITER ;

-- Если я правильно понял задание. Генерим данные в таблицу users.
call DataGenerationToUsers(1000000000, 1000);
select * from users u;
