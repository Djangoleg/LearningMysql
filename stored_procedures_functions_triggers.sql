-- 1. Создайте хранимую функцию hello(), которая будет возвращать приветствие, 
-- в зависимости от текущего времени суток. С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", 
-- с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".

DROP PROCEDURE IF EXISTS Greeting;
DELIMITER $$
CREATE PROCEDURE Greeting (
	OUT out_welcome_phrase varchar(100)
)
BEGIN
	DECLARE dateNow datetime DEFAULT now();
	
	if dateNow >= STR_TO_DATE(concat(date_format(now(), '%d.%m.%Y'), ' 06:00:00'), '%d.%m.%Y %H:%i:%s') and
		dateNow < STR_TO_DATE(concat(date_format(now(), '%d.%m.%Y'), ' 12:00:00'), '%d.%m.%Y %H:%i:%s') 
	then set out_welcome_phrase = 'Доброе утро';

	elseif dateNow >= STR_TO_DATE(concat(date_format(now(), '%d.%m.%Y'), ' 12:00:00'), '%d.%m.%Y %H:%i:%s') and
			dateNow < STR_TO_DATE(concat(date_format(now(), '%d.%m.%Y'), ' 18:00:00'), '%d.%m.%Y %H:%i:%s') 
	    then set out_welcome_phrase = 'Добрый день';
	   
	elseif dateNow >= STR_TO_DATE(concat(date_format(now(), '%d.%m.%Y'), ' 18:00:00'), '%d.%m.%Y %H:%i:%s') and
			dateNow <= STR_TO_DATE(concat(date_format(now(), '%d.%m.%Y'), ' 23:59:59'), '%d.%m.%Y %H:%i:%s') 
		then set out_welcome_phrase = 'Добрый вечер';
		
	elseif dateNow >= STR_TO_DATE(concat(date_format(now(), '%d.%m.%Y'), ' 00:00:00'), '%d.%m.%Y %H:%i:%s') and
			dateNow < STR_TO_DATE(concat(date_format(now(), '%d.%m.%Y'), ' 06:00:00'), '%d.%m.%Y %H:%i:%s') 
		then set out_welcome_phrase = 'Доброй ночи';

	end if;

END$$
DELIMITER ;

call Greeting(@out_welcome_phrase);
SELECT @out_welcome_phrase;

-- 2. В таблице products есть два текстовых поля: name с названием товара и description с его описанием. 
-- Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. 
-- Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. 
-- При попытке присвоить полям NULL-значение необходимо отменить операцию.

-- СОздание таблицы.
DROP TABLE IF EXISTS products;
CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название',
  desription TEXT COMMENT 'Описание',
  price DECIMAL (11,2) COMMENT 'Цена',
  catalog_id INT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_catalog_id (catalog_id)
) COMMENT = 'Товарные позиции';

-- Создание триггера перед обновлением.
DROP TRIGGER IF EXISTS tr_bu_products;
DELIMITER $$
CREATE TRIGGER tr_bu_products before update ON products
FOR EACH ROW BEGIN
  if (NEW.name is null and NEW.desription is null) 
  then
    signal sqlstate '45000' set message_text = 'MyTriggerError: Trying to update a negative value in tr_bu_products: name is null and desription is null';		
  end if;
END$$   
DELIMITER ;

-- Создание триггера перед вставкой.
DROP TRIGGER IF EXISTS tr_bi_products;
DELIMITER $$
CREATE TRIGGER tr_bi_products before insert ON products
FOR EACH ROW BEGIN
  if (NEW.name is null and NEW.desription is null) then
    signal sqlstate '45000' set message_text = 'MyTriggerError: Trying to insert a negative value in tr_bi_products: name is null and desription is null';
  end if;
END$$   
DELIMITER ;

-- Сработает.
INSERT INTO products
  (name, desription, price, catalog_id)
VALUES
  ('Intel Core i3-8100', null, 7890.00, 1),
  (null, 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', 12700.00, 1);
 
select * from products;

-- Выдаст ошибку.
INSERT INTO products
  (name, desription, price, catalog_id)
VALUES
  (null, null, 7890.00, 1);

-- 3. (по желанию) Напишите хранимую функцию для вычисления произвольного числа Фибоначчи. 
-- Числами Фибоначчи называется последовательность в которой число равно сумме двух предыдущих чисел. 
-- Вызов функции FIBONACCI(10) должен возвращать число 55.

drop function if exists Fibonacci;
DELIMITER $$
CREATE FUNCTION Fibonacci(
	in_number int
) 
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    DECLARE fibonacci_number int;
	
   	WITH RECURSIVE fibonacci (n, fib_n, next_fib_n) AS
	(
	  SELECT 1, 0, 1
	  UNION ALL
	  SELECT n + 1, next_fib_n, fib_n + next_fib_n
	    FROM fibonacci WHERE n < in_number
	)
	SELECT f.next_fib_n 
	into fibonacci_number
	FROM fibonacci f
	order by f.next_fib_n desc
	limit 1;
    
	-- return the customer level
	RETURN (fibonacci_number);
END$$
DELIMITER ;

select Fibonacci(9);
