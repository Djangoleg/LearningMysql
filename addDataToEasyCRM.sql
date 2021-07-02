-- 1. Заполняем типы.
insert into contact_type(name, description)
values('Сотрудник', 'Наш сотрудник'),('Клиент', null);

insert into communications_type(name)
values('Мобильный телефон'), ('Рабочий телефон'), ('e-mail');

insert into legal_person_type(name)
values('Наша компания'), ('Клиент'),('Партнёр');

insert into activity_type(name)
values('Звонок'), ('Встреча'),('Заключение договора');

insert into document_types(name)
values('Договор');

insert into activity_result(name)
values('Назначена встреча'), ('Заключен договор'), ('Отказ клиента');
/*
select * from communications_type;
select * from legal_person_type;
select * from activity_type;
select * from document_types;
select * from activity_result;
*/
-- Заполнение остальных данных.




