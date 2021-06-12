-- 1. Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.

select u.name 
from users u 
where EXISTS (select 1 from orders o where o.user_id = u.id);


-- 2. Выведите список товаров products и разделов catalogs, который соответствует товару.

select c.name, p.name 
from products p
join catalogs c on p.catalog_id = c.id; 

-- 3. (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). 
-- Поля from, to и label содержат английские названия городов, поле name — русское. Выведите список рейсов flights с русскими названиями городов.

select f.id, c1.name `from`, c2.name `to`
from flights f 
join cites c1 on f.from = c1.lable 
join cites c2 on f.to = c2.lable
order by f.id;
