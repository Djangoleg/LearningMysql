-- Процедуры.

-- =====================================================
-- Создание или обновление данных контакта. ============
-- =====================================================
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
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
	    
	    set isSuccessfully_o = 0;
        ROLLBACK;
    END;
 
    set isSuccessfully_o = 0;
   
	if contact_id_io is not null then
		
	  -- Проверяем, что такой контакт есть.
	  select count(1)
	  into contact_count_
	  from contacts c
	  where c.id = contact_id_io;
	 
	  if contact_count_ = 1 then
	  
	    START TRANSACTION;

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
			
			select count(1)
			into mpone_count_
			from contact_communications cc 
			where cc.communications_type_id = 1
			and cc.contacts_id = contact_id_io;
			
			if mpone_count_ = 0 then
				insert into contact_communications(name, communications_type_id, contacts_id) values (mpone_i, 1, contact_id_io);
			else
				update contact_communications cc
				set cc.name = mpone_i
				where cc.communications_type_id = 1
				and cc.contacts_id = contact_id_io;
			end if;
		
		end if;
		
		if email_i is not null then
		
		    select count(1)
			into email_count_
			from contact_communications cc 
			where cc.communications_type_id = 1
			and cc.contacts_id = contact_id_io;
		
			if email_count_ = 0 then
				insert into contact_communications(name, communications_type_id, contacts_id) values (email_i, 2, contact_id_io);
			else
				update contact_communications cc
				set cc.name = email_i
				where cc.communications_type_id = 2
				and cc.contacts_id = contact_id_io;
			end if;
		
		end if;
	
	    COMMIT;
	
		set isSuccessfully_o = 1;
	  
	  else
	  
	  	set errorMessage = 'Не найден контакт по переданному contact_id_io';
	  
	  end if;
	  
	else
		
		START TRANSACTION;
		
		insert into contacts (name, surname, patronymic, birthday_at, contact_type_id, `position`, legal_persons_id, created_at, updated_at) 
	    values(name_i, surname_i, patronymic_i, birthday_at_i, contact_type_id_i, position_i, legal_persons_id_i, now(), now());
	    
	    select last_insert_id()
	    into contact_id_io;
	   
	    if mpone_i is not null then
		
			insert into contact_communications(name, communications_type_id, contacts_id) values (mpone_i, 1, contact_id_io); 
		
		end if;
		
		if email_i is not null then
		
			insert into contact_communications(name, communications_type_id, contacts_id) values (email_i, 2, contact_id_io);
		
		end if;
	
	    COMMIT;
	
	    set isSuccessfully_o = 1;
	
	end if;
	
END$$
DELIMITER ;

-- Обновление контакта.
set @contact_id = 3;
call EditOrCreateContact(@contact_id,
						 'Vasya',
						 'Petrov',
						 'Ivanovich',
						 '1985-07-13',
						 2,
						 'Dvornik',
						 57,
						 '79991717170',
						 'test@gmail.com',
						 @isSuccessfully,
						 @errorMessage);

select @contact_id, @isSuccessfully, @errorMessage;

select * from contacts c
where c.id = @contact_id;

select * from contact_communications cc 
where cc.contacts_id = @contact_id
order by cc.contacts_id; 


-- Создание контакта.
set @contact_id = null;
call EditOrCreateContact(@contact_id,
						 'Ivan',
						 'Petrov',
						 'Ivanovich',
						 '1985-07-13',
						 2,
						 'Director',
						 57,
						 '79991717120',
						 'test22@gmail.com',
						 @isSuccessfully,
						 @errorMessage);

select @contact_id, @isSuccessfully, @errorMessage;

select * from contacts c
where c.id = @contact_id;

select * from contact_communications cc 
where cc.contacts_id = @contact_id
order by cc.contacts_id; 

-- =====================================================
-- Проверка логина/пароля при входе в систему. =========
-- =====================================================
DROP PROCEDURE IF EXISTS CheckCredential;
DELIMITER $$
CREATE PROCEDURE CheckCredential (
	in login_i varchar(255),
	in pass_i varchar(255),
	out contact_id_o bigint,    
	out isSuccessfully_o int
)
BEGIN
	
	set contact_id_o = -1;
	set isSuccessfully_o = 0;

	select uc.contacts_id 
	into contact_id_o
	from user_credentials uc 
	where uc.login = login_i
	and uc.password_hash = MD5(pass_i);

	if contact_id_o > 0 then
		set isSuccessfully_o = 1; 
	end if;

END$$
DELIMITER ;	

-- Вариант не успеха.
set @login = 'login';
set @pass = 'pass';	
call CheckCredential(@login, @pass, @contact_id, @isSuccessfully);
select @contact_id, @isSuccessfully;

-- Вариант успеха.
set @login = 'ADMIN';
set @pass = 'ADMIN';	
call CheckCredential(@login, @pass, @contact_id, @isSuccessfully);
select @contact_id, @isSuccessfully;
