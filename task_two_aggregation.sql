-- 1. Подсчитайте средний возраст пользователей в таблице users.

select avg(timestampdiff(year, u.birthday_at, now())) avg_age
from users u;

-- 2. Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. Следует учесть, что необходимы дни недели текущего года, а не года рождения.

-- Вернет количество дней рождения по дням недели.
select date_format( 
		str_to_date(concat(date_format(p.birthday, '%d'), '.' ,date_format(p.birthday, '%m'), '.', date_format(now(), '%y')), '%d.%m.%y'), '%a') daysofweek,
	count(1) dayscount
from users u 
join profiles p on u.id = p.user_id and p.birthday is not null
group by date_format( 
	str_to_date(concat(date_format(p.birthday, '%d'), '.' ,date_format(p.birthday, '%m'), '.', date_format(now(), '%y')), '%d.%m.%y'), '%a');

-- Ещё вариант с временной таблицей.
create temporary table tempDaysOfweek (id varchar(3)); 
insert into tempDaysOfweek(id)
values('Mon'),
	  ('Thu'),
	  ('Wed'),
	  ('Tue'),
	  ('Fri'),
	  ('Sat'),
	  ('Sun');
commit;

-- Вернёт количество дней рождения по дням недели с Пн по Вс, если в какой-то из дней ДР нет, будет 0.
select t.id, IFNULL(sq.dayscount, 0) 
from tempDaysOfweek t
left join (
		select date_format(
				str_to_date(concat(date_format(u.birthday_at, '%d'), '.' ,date_format(u.birthday_at, '%m'), '.', date_format(now(), '%y')), '%d.%m.%y'), '%a') daysofweek,
			count(1) dayscount
		from users u 
		group by date_format( 
			str_to_date(concat(date_format(u.birthday_at, '%d'), '.' ,date_format(u.birthday_at, '%m'), '.', date_format(now(), '%y')), '%d.%m.%y'), '%a')
	) sq on t.id = sq.daysofweek;

-- После выполнения запроса удаляем временную таблицу.
DROP TABLE tempDaysOfweek;

-- 3. (по желанию) Подсчитайте произведение чисел в столбце таблицы.

-- Нашел решение в интернете. В идеале обработать null и 0.

create temporary table tempMultiply  (id int(10)); 
insert into tempMultiply(id)
values(1),
	  (2),
	  (3),
	  (4),
	  (5);
commit;		

select ROUND(EXP(SUM(LOG(id))),1) from tempMultiply;

DROP TABLE tempMultiply;
