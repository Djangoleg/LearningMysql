# Создание дампа БД example
sudo mysqldump example > example.sql

# Замена в файле с дампом название БД с example на sample.
sed -i 's/example/sample/g' example.sql

# Проверка, что всё заменилось.
cat example.sql | grep "example"

# Восстановление в новую БД sample.
sudo mysql sample < example.sql

# Прверка переноса таблицы users
sudo mysql
mysql> select * from sample.users;
+----+----------------+
| id | name           |
+----+----------------+
|  1 | Иван           |
|  2 | Николай        |
|  3 | Анна           |
+----+----------------+
3 rows in set (0,00 sec)
