CREATE DATABASE example;
use example;
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя'
) COMMENT = 'Пользователи';
INSERT INTO users VALUES 
(DEFAULT, 'Иван'),
(DEFAULT, 'Николай'),
(DEFAULT, 'Анна');
select * from users;

-- Для задачи 3 создадим сразу БД sample.
CREATE DATABASE sample;
