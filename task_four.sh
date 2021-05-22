# Задача 4. 
# Создайте дамп единственной таблицы help_keyword базы данных mysql. 
# Причем добейтесь того, чтобы дамп содержал только первые 100 строк таблицы.
sudo mysqldump -p mysql help_keyword --where="1=1 ORDER BY help_keyword_id LIMIT 100" > help_keyword.sql
