-- 2. Добавить необходимую таблицу/таблицы для того, чтобы можно было использовать лайки для медиафайлов, постов и пользователей.

-- Добавлена таблица posts по заданию 2.
DROP TABLE IF EXISTS posts;
CREATE TABLE posts(
	id SERIAL COMMENT 'ИД',
    user_id BIGINT UNSIGNED NOT NULL COMMENT 'ИД пользователя',
    title text COMMENT 'Заголовок поста',
    created_at DATETIME DEFAULT NOW() COMMENT 'Дата создания',
    updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP COMMENT 'Дата изменения',

	FOREIGN KEY (user_id) REFERENCES users(id)
) COMMENT='Посты пользователя';

DROP TABLE IF EXISTS post_to_media;
CREATE TABLE post_to_media(
	posts_id BIGINT UNSIGNED NOT NULL COMMENT 'ИД поста',
	media_id BIGINT UNSIGNED NOT NULL COMMENT 'ИД медиа',
	
	UNIQUE KEY uk_post_to_media_posts_id_media_id (posts_id, media_id),
	FOREIGN KEY (posts_id) REFERENCES posts(id),
	FOREIGN KEY (media_id) REFERENCES media(id),
	INDEX idx_post_to_media_posts_id(posts_id)
) COMMENT='Содержимое постов';

-- Изменено по заданию 2. Можно лайкнуть либо всё, либо что-то одно: CHECK (media_id is not null or posts_id is not null or target_user_id is not null)
DROP TABLE IF EXISTS likes;
CREATE TABLE likes(
	id SERIAL COMMENT 'ИД',
    user_id BIGINT UNSIGNED NOT NULL COMMENT 'ИД пользователя',
    media_id BIGINT UNSIGNED NULL COMMENT 'ИД медиа',
    posts_id BIGINT UNSIGNED NULL COMMENT 'ИД поста',
    target_user_id BIGINT UNSIGNED NULL COMMENT 'ИД пользователя которого лайкнули',
    created_at DATETIME DEFAULT NOW() COMMENT 'Дата создания',
    
    CHECK (media_id is not null or posts_id is not null or target_user_id is not null)    
) COMMENT='Отметки нравится';

ALTER TABLE vk.likes 
ADD CONSTRAINT likes_fk 
FOREIGN KEY (media_id) REFERENCES vk.media(id);

ALTER TABLE vk.likes 
ADD CONSTRAINT likes_fk_1 
FOREIGN KEY (user_id) REFERENCES vk.users(id);

ALTER TABLE vk.likes 
ADD CONSTRAINT likes_fk_2 
FOREIGN KEY (posts_id) REFERENCES vk.posts(id);

ALTER TABLE vk.likes 
ADD CONSTRAINT likes_fk_3
FOREIGN KEY (target_user_id) REFERENCES vk.users(id);