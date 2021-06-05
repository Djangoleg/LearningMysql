-- 1. Повторить все действия по доработке БД vk.

-- Удалён constraint для таблицы vk.profiles. FOREIGN KEY по полю photo_id ссылка на поле id таблицы photos
ALTER TABLE vk.profiles 
drop constraint profiles_fk_1;

-- Добавлен constraint для таблицы vk.profiles. FOREIGN KEY по полю photo_id ссылка на поле id таблицы photos.
ALTER TABLE vk.profiles 
ADD CONSTRAINT profiles_fk_1 
FOREIGN KEY (photo_id) REFERENCES photos(id);
