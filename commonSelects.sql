-- Скрипт характерных выборок.

-- Сотрудники компании.
select count(1)
from contacts c 
where c.contact_type_id = (select ct.id from contact_type ct where ct.name = 'Сотрудник');

-- Клиенты компании.
select count(1)
from contacts c 
where c.contact_type_id = (select ct.id from contact_type ct where ct.name = 'Клиент');

-- Сколько активностей было произведено по каждому клиенту.
select l.id, l.name, count(a.id) 
from legal_persons l
left join activity a on l.id = a.legal_persons_id 
group by l.id, l.name
order by l.id;

-- Сколько активностей с типом звонок, закончилось результатом "Назначена встреча".
select count(1) 
from activity a 
where a.activity_type_id = 1 -- Звонок.
and a.activity_result_id = 1; -- Назначена встреча.

-- Сколько активностей с типом "Встреча", закончилось результатом "Заключен договор".
select count(1) 
from activity a 
where a.activity_type_id = 1 -- Встреча.
and a.activity_result_id = 2; -- Заключен договор.

-- Сколько активностей с типом "Встреча", закончилось результатом "Отказ клиента".
select count(1) 
from activity a 
where a.activity_type_id = 1 -- Встреча.
and a.activity_result_id = 3; -- Отказ клиента.

-- Список юрлиц клиентов, с кем есть договор.
select * 
from legal_persons l
where l.legal_person_type_id  = 2 -- Клиент
and EXISTS (select 1 from contract_members cm where cm.legal_persons_id = l.id)
order by l.id;

-- Скольким клиентам было отправлено СМС для "Тестовая рассылка 1".
select count(1) from (
select dt.contacts_id 
from distribution_target dt
join distribution d on dt.distribution_id = d.id and d.name = 'Тестовая рассылка 1'
where 
dt.communications_type_id = (select ct.id from communications_type ct where ct.name = 'Мобильный телефон')
and dt.date_send is not null
group by dt.contacts_id
) sq;

-- Скольким клиентам было отправлено e-mail для "Тестовая рассылка 2".
select count(1) from (
select dt.contacts_id 
from distribution_target dt
join distribution d on dt.distribution_id = d.id and d.name = 'Тестовая рассылка 2'
where 
dt.communications_type_id = (select ct.id from communications_type ct where ct.name = 'e-mail')
and dt.date_send is not null
group by dt.contacts_id
) sq;

-- Список документов по договорам.
select c.name, c.`number`, c.`date`, d.filename 
from document d 
join document_to_contract dc on d.id = dc.document_id
join contract c on dc.contract_id = c.id
order by c.id;

-- Список документов по сделкам.
select c.name, d.filename 
from document d 
join document_to_dealings dc on d.id = dc.document_id
join dealings c on dc.dealings_id = c.id
order by c.id;
