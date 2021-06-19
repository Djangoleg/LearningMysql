-- 1. В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. 
-- Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.

start transaction;

insert into sample.users(id, name, birthday_at, created_at, updated_at)
select * from eshop.users u 
where u.id  = 1;

delete from eshop.users u
where u.id  = 1;

commit;

-- 2. Создайте представление, которое выводит название name товарной позиции из таблицы products и 
-- соответствующее название каталога name из таблицы catalogs.

create view VwProductsAndCatalog 
AS
select p.name product_name, c.name catalog_name 
from products p
join catalogs c on p.catalog_id  = c.id;

select * from VwProductsAndCatalog;


 -- 3. (по желанию) Пусть имеется таблица с календарным полем created_at. 
 -- В ней размещены разряженые календарные записи за август 2018 года '2018-08-01', '2016-08-04', '2018-08-16' и 2018-08-17. 
 -- Составьте запрос, который выводит полный список дат за август, 
 -- выставляя в соседнем поле значение 1, если дата присутствует в исходном таблице и 0, если она отсутствует.
 

-- Подготовка. Создадим процедуру, которая будет заполнять временную таблицу числами - дни месяца.
DROP PROCEDURE IF EXISTS MyDays;
DELIMITER $$
CREATE PROCEDURE MyDays (
	IN DayCount_I INT
)
BEGIN
  DECLARE counter INT DEFAULT 0;
  
  DROP TABLE IF EXISTS tempDayOfmonyh;
  CREATE TEMPORARY TABLE tempDayOfmonyh (id INT); 
 
  IF (DayCount_I > 0) THEN
  	
    START TRANSACTION;
  	
    WHILE counter < DayCount_I DO
  	  SET counter  = counter  + 1;
  	  INSERT INTO tempDayOfmonyh(id)
  	  VALUES(counter);
	END WHILE;

	COMMIT;

  ELSE
	SELECT 'Ошибочное значение входного параметра DayCount_I';
  END IF;
END$$
DELIMITER ;

-- Создадим таблицу с полем created_at.
DROP TABLE IF EXISTS MyTestTableWithDate;
CREATE TABLE MyTestTableWithDate (created_at DATETIME);
insert into MyTestTableWithDate (created_at)
values ('2018-08-01'),
	   ('2016-08-04'), 
	   ('2018-08-16'), 
	   ('2018-08-17');

-- Количество дней в августе.
set @DayCount = 31
call MyDays(@DayCount);

-- Запрос, который выводит полный список дат за август, 
-- выставляя в соседнем поле значение 1, если дата присутствует в исходном таблице и 0, если она отсутствует.
select  date_format(t.created_at, '%Y-%m-%d') month_date,
	   STR_TO_DATE(CONCAT('2018-08-', CAST(d.id as CHAR(5))), '%Y-%m-%d') full_month_date,
	   case when t.created_at is null then 0 else 1 end IsDateExist
from tempDayOfmonyh d
left join MyTestTableWithDate t on date_format(t.created_at, '%Y-%m-%d') = STR_TO_DATE(CONCAT('2018-08-', CAST(d.id as CHAR(5))), '%Y-%m-%d')
order by d.id;

-- Удаление временной таблицы.
DROP TABLE IF EXISTS tempDayOfmonyh;

-- 4. (по желанию) Пусть имеется любая таблица с календарным полем created_at. 
-- Создайте запрос, который удаляет устаревшие записи из таблицы, оставляя только 5 самых свежих записей.

-- Создадим таблицу с полем created_at.
DROP TABLE IF EXISTS MyTestTableWithDate;
CREATE TABLE MyTestTableWithDate (created_at DATETIME);
insert into MyTestTableWithDate (created_at)
values ('2018-08-01'),
	   ('2018-08-02'), 
	   ('2018-08-03'), 
	   ('2018-08-04'),
	   ('2018-08-05'),
	   ('2018-08-06'), 
	   ('2018-08-07'), 
	   ('2018-08-08');

delete from MyTestTableWithDate t
where t.created_at not in (
	select sq.created_at 
	from (select tt.created_at from MyTestTableWithDate tt
		  order by tt.created_at
		  limit 5) sq
);

select * from MyTestTableWithDate;
