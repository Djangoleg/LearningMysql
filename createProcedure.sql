-- Процедуры.

-- Создание или обновление данных контакта.
DROP PROCEDURE IF EXISTS EditOrCreateContact;
DELIMITER $$
CREATE PROCEDURE EditOrCreateContact (
	inout contact_id_io bigint,
	in name_i varchar(255),
    in surname_i varchar(255),
    in patronymic_i varchar(255),
    in birthday_at_i date,
    in contact_type_id_i int,
    in position_i varchar(255),
    in legal_persons_id_i int,
    in mpone_i varchar(255),
    in email_i varchar(255),
    out isSuccessfully_o int,
    out errorMessage varchar(255)
)
BEGIN
  DECLARE contact_count_ INT DEFAULT 0;
  DECLARE mpone_count_ INT DEFAULT 0;
  DECLARE email_count_ INT DEFAULT 0;

    set isSuccessfully_o = 0;
   
	if contact_id_io is not null then
		
	  -- Проверяем, что такой контакт есть.
	  select count(1)
	  into contact_count_
	  from contacts c
	  where c.id = contact_id_io;
	 
	  if contact_count_ = 1 then

	    update contacts c
	    set c.name = IFNULL(name_i, c.name),
	    	c.surname = IFNULL(name_i, c.surname),
	    	c.patronymic = IFNULL(patronymic_i, c.patronymic),
	    	c.birthday_at = IFNULL(birthday_at_i, c.birthday_at),
	    	c.contact_type_id = IFNULL(contact_type_id_i, c.contact_type_id),
	    	c.`position` = IFNULL(position_i, c.`position`),
	    	c.legal_persons_id = IFNULL(legal_persons_id_i, c.legal_persons_id) 
	    where c.id = contact_id_io;
	    
		if mpone_i is not null then
		
			insert into contact_communications(name, communications_type_id, contacts_id) values (mpone_i, 1, contact_id_io)
			on duplicate key
			update name = mpone_i; 
		
		end if;
		
		if email_i is not null then
		
			insert into contact_communications(name, communications_type_id, contacts_id) values (email_i, 2, contact_id_io)
			on duplicate key
			update name = email_i;  
		
		end if;
	
		set isSuccessfully_o = 1;
	  
	  else
	  
	  	set errorMessage = 'Не найден контакт по переданному contact_id_io';
	  
	  end if;
	  
	else
	
		insert into contacts (name, surname, patronymic, birthday_at, contact_type_id, `position`, legal_persons_id, created_at, updated_at) 
	    values(name_i, surname_i, patronymic_i, birthday_at_i, contact_type_id_i, position_i, legal_persons_id_i, now(), now());
	    
	    select last_insert_id()
	    into contact_id_io;
	   
	    if mpone_i is not null then
		
			insert into contact_communications(name, communications_type_id, contacts_id) values (mpone_i, 1, contact_id_io)
			on duplicate key
			update name = mpone_i; 
		
		end if;
		
		if email_i is not null then
		
			insert into contact_communications(name, communications_type_id, contacts_id) values (email_i, 2, contact_id_io)
			on duplicate key
			update name = email_i;  
		
		end if;
	
	    set isSuccessfully_o = 1;
	
	end if;
	
END$$
DELIMITER ;

/*
select * from contacts c;
select * from contact_communications cc order by ; 
select * from legal_persons l;

call Greeting(@out_welcome_phrase);
SELECT @out_welcome_phrase;

inout contact_id bigint,
in name_i varchar(255),
in surname_i varchar(255),
in patronymic_i varchar(255),
in birthday_at_i date,

in contact_type_id_i int,
in position_i varchar(255),

in legal_persons_id_i int,

in mpone_i varchar(255),
in email_i varchar(255),

out isSuccessfully_o int,
out errorMessage varchar(255)
*/
set @contact_id = 1;
call EditOrCreateContact(@contact_id,
						 'Vasya',
						 'Petrov',
						 'Ivanovich',
						 '1985-07-13',
						 2,
						 'Dvornik',
						 67,
						 '79991712810',
						 'kr.oleg@gmail.com',
						 @isSuccessfully,
						 @errorMessage);

select @contact_id, @isSuccessfully, @errorMessage;

select * from contacts c;
select * from contact_communications cc order by cc.contacts_id; 