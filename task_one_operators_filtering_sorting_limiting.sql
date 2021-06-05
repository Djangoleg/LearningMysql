-- 1. Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.
update users 
set created_at = now(),
    updated_at = now();
	
-- 2. Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы типом VARCHAR 
--    и в них долгое время помещались значения в формате 20.10.2017 8:10. 
--    Необходимо преобразовать поля к типу DATETIME, сохранив введённые ранее значения.

-- Add the new column.
alter table users add created_at_new DATETIME COMMENT 'Дата создания';
alter table users add updated_at_new DATETIME COMMENT 'Дата изменения';

-- Update the new column from the old column.
update users 
set created_at_new = STR_TO_DATE(created_at, '%d.%m.%Y %H:%i'),
    updated_at_new = STR_TO_DATE(updated_at, '%d.%m.%Y %H:%i');
   
-- Drop old column. 
alter table users drop created_at;
alter table users drop updated_at;

-- Rename new column.
ALTER TABLE users RENAME COLUMN created_at_new TO created_at,
                  RENAME COLUMN updated_at_new TO updated_at;

-- 3. В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 
--    0, если товар закончился и выше нуля, если на складе имеются запасы. Необходимо отсортировать записи таким образом, 
--    чтобы они выводились в порядке увеличения значения value. Однако нулевые запасы должны выводиться в конце, после всех записей.

select value
from storehouses_products
order by value > 0 desc, value;

-- 4. (по желанию) Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае. Месяцы заданы в виде списка английских названий (may, august).
select u.*
from users u 
where 
LOWER(DATE_FORMAT(u.birthday_at, '%M')) in ('may', 'august');


-- 5. (по желанию) Из таблицы catalogs извлекаются записи при помощи запроса. SELECT * FROM catalogs WHERE id IN (5, 1, 2); Отсортируйте записи в порядке, заданном в списке IN.
select * 
from catalogs where 
id in (5, 1, 2)
order by id = 5 desc, id;
