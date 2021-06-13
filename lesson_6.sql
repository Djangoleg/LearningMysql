-- 1. Проанализировать запросы, которые выполнялись на занятии, определить возможные корректировки и/или улучшения (JOIN пока не применять).

-- Запрос по получению данных о пользователе, заменить жесткое указание ИД пользователя на users.id.
-- Оригинальный запрос.
select u.firstname,
	   u.lastname,
	   (select p.hometown from profiles p where p.user_id = 62) citi,
	   (select m.filename 
		from media m
		where 
		m.media_type_id  = 1 -- photo
		and m.id  = (select p.media_id 
				     from photos p
				     where p.id = (select p2.photo_id from profiles p2 where p2.user_id = 62))
		and m.user_id = 62) photo
from users u 
where u.id  = 62;

-- Измененнный запрос.
select u.firstname,
	   u.lastname,
	   (select m.filename 
		from media m
		where 
		m.media_type_id  = 1 -- photo
		and m.id  = (select p.media_id 
				     from photos p
				     where p.id = (select p2.photo_id from profiles p2 where p2.user_id = u.id))
		and m.user_id = u.id) photo
from users u 
where u.id  = 62;

-- 2. Пусть задан некоторый пользователь. 
-- Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользователем.

-- Складываем, с группировкой по другу, количество отправленных сообщений пользователя друзьям, с количеством полученных сообщений от друзей.
-- Убираем из выборки сообщения от пользователя или к пользователю без ответа. Это не считается общением.
-- В выборке может быть несколько друзей, с которыми у выбранного пользователя получится одинаковое количество взаимодействий, 
-- поэтому выберем максимально свежую дату последнего взаимодействия.

-- Наш пользователь.
set @mUser = 68;

select sum(sq.cnt) msum, sq.user_id, max(sq.max_created_at) max_created_at
from (
	-- Сколько сообщений написал пользователь 68, кому и когда(max).
	select * from (
		select count(1) cnt, m.to_user_id user_id, max(m.created_at) max_created_at
		from messages m
		where 
		m.from_user_id = @mUser
		-- Друзья
		and m.to_user_id in (
			select case fr.initiator_user_id when @mUser then fr.target_user_id else fr.initiator_user_id end frend_id
			from friend_requests fr 
			where (fr.initiator_user_id = @mUser or fr.target_user_id = @mUser) 
			and fr.status = 'approved'
		)		
		group by m.to_user_id
	) sq1
	
	union all
	
	-- Сколько сообщений получил пользователь 68, от кого и когда(max).
	select * from (
		select count(1) cnt, m.from_user_id user_id, max(m.created_at) max_created_at
		from messages m
		where 
		m.to_user_id  = @mUser
		-- Друзья
		and m.from_user_id in (
			select case fr.initiator_user_id when @mUser then fr.target_user_id else fr.initiator_user_id end frend_id
			from friend_requests fr 
			where (fr.initiator_user_id = @mUser or fr.target_user_id = @mUser) 
			and fr.status = 'approved'
		)
		group by m.from_user_id
	) sq2
) sq
group by sq.user_id
-- Уберем сообщения от пользователя или к пользователю без ответа. Это не считается общением.
-- Возможно, это тоже не супер классное решение. Пользователь 1 (п1) может написать сообщение пользователю 2 (п2). п2 может ответитить - "Не пиши мне больше!". 
-- И добавить п1 в игнор. После чего п1 напишет кучу сообщений п2, не получит ответа, и это взаимодействие попадёт в выборку. Это тоже не общение. 
-- Наверно, здесь лучше приблизительно сравнивать кол-во отправленных и полученных сообщений и если они удовлетворяют требованию их складывать. Но пока так.   
having count(sq.cnt) > 1
order by max_created_at desc, msum desc
limit 1;

-- 3. Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.

select count(1)
from likes l 
where l.target_user_id in (
	-- 10 cамых молодых пользователей.
	select sq.user_id 
    from (
		select p.user_id 
		from profiles p 
		order by p.birthday
		limit 10
	) sq
);

-- 4. Определить кто больше поставил лайков (всего) - мужчины или женщины?

-- Женщины.
select count(1)
into @Female_likes_count
from likes l 
where l.user_id in (
	select p.user_id 
	from profiles p
	where p.gender  = 'F'
);

-- Мужчины.
select count(1)
into @Male_likes_count
from likes l 
where l.user_id in (
	select p.user_id 
	from profiles p
	where p.gender  = 'M'
);

-- Итог.
select case when @Female_likes_count > @Male_likes_count then 'Женщины поставили больше лайков, чем мужчины!' else 
       case when @Female_likes_count < @Male_likes_count then 'Мужчины поставили больше лайков, чем женщины!' else
       case when @Female_likes_count = @Male_likes_count then 'Мужчины и женщины поставили одинаковое количество лайков!' 
       end end end who_is_bigger;
	   
-- 5. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.

/*
 Критерии сравнивания.
1. Кол-во постов.
2. Кол-во лайков.
3. Кол-во загруженных медиа.
4. Кол-во подписок на сообщества.
5. Кол-во отправленных сообщений.
6. Кол-во отправленных запросов дружбы.

Сортировка по сумме значений для каждого пользователя.
 */
      
-- Первое, что приходит в голову. Суммировать активности и по ним отсортировать.
select u.id, 
	   (select count(1) from posts p where p.user_id = u.id) post_count,
	   (select count(1) from likes l where l.user_id = u.id) like_count,
	   (select count(1) from media m where m.user_id = u.id) media_count,
	   (select count(1) from users_communities uc where uc.user_id = u.id) communities_count,
	   (select count(1) from messages m2 where m2.from_user_id = u.id) messages_count,
	   (select count(1) from friend_requests fr where fr.initiator_user_id = u.id) friend_requests_count,
	   
	   (
		   (select count(1) from posts p where p.user_id = u.id) +
		   (select count(1) from likes l where l.user_id = u.id) +
		   (select count(1) from media m where m.user_id = u.id) +
		   (select count(1) from users_communities uc where uc.user_id = u.id) +
		   (select count(1) from messages m2 where m2.from_user_id = u.id) +
		   (select count(1) from friend_requests fr where fr.initiator_user_id = u.id)
	   ) msum
from users u
order by msum
limit 10;

-- Ещё вариант ввести бальную систему - стоимость активности и сортировать по сумме балов.
set @post_cost = 10;
set @like_cost = 1;
set @media_cost = 5;
set @communities_cost = 3;
set @messages_cost = 1;
set @friend_requests_cost = 2;

select u.id, 
	   (select count(1) from posts p where p.user_id = u.id) post_count,
	   (select count(1) from likes l where l.user_id = u.id) like_count,
	   (select count(1) from media m where m.user_id = u.id) media_count,
	   (select count(1) from users_communities uc where uc.user_id = u.id) communities_count,
	   (select count(1) from messages m2 where m2.from_user_id = u.id) messages_count,
	   (select count(1) from friend_requests fr where fr.initiator_user_id = u.id) friend_requests_count,
	   
	   (
		   ((select count(1) from posts p where p.user_id = u.id) * @post_cost) +
		   ((select count(1) from likes l where l.user_id = u.id) * @like_cost) +
		   ((select count(1) from media m where m.user_id = u.id) * @media_cost) +
		   ((select count(1) from users_communities uc where uc.user_id = u.id) * @communities_cost) +
		   ((select count(1) from messages m2 where m2.from_user_id = u.id) * @messages_cost) +
		   ((select count(1) from friend_requests fr where fr.initiator_user_id = u.id) * @friend_requests_cost)
	   ) msum
from users u
order by msum
limit 10;
