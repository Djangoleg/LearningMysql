-- Представления.

-- Контакты, пользователи системы.
create view VwSystemUsers 
AS
select CONCAT(c.name, ' ',c.surname) user_name,
	   (select cc.name from contact_communications cc where cc.contacts_id = c.id and cc.communications_type_id = 1 limit 1) mob_phone,
	   uc.login,
	   uc.is_active, 
	   uc.date_valid_to
from contacts c 
join user_credentials uc on c.id = uc.contacts_id; 

-- Договора, ответственные и контактные лица.
create view VwContractWithOwner 
AS
select c.id, 
	   c.name, 
	   c.`number`, 
	   CONCAT(c2.name, ' ', c2.surname) owner_name,
	   (select cc.name from contact_communications cc where cc.contacts_id = c2.id and cc.communications_type_id = 1 limit 1) owner_phone,
	   c.amount contract_amount,
	   CONCAT(c3.name, ' ', c3.surname) client_name,
	   (select cc.name from contact_communications cc where cc.contacts_id = c3.id and cc.communications_type_id = 1 limit 1) client_phone
from contract c 
join contacts c2 on c.employee_id = c2.id
join (select cm.contract_id, cm.legal_persons_id 
	  from contract_members cm
	  where cm.legal_persons_id <> 101) cmem on c.id  = cmem.contract_id
left join contacts c3 on cmem.legal_persons_id = c3.legal_persons_id;


