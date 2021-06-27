DROP DATABASE IF EXISTS EasyCRM;
CREATE DATABASE EasyCRM;
USE EasyCRM;

-- Тип контакта.
DROP TABLE IF EXISTS contact_type;
CREATE TABLE contact_type (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) not null COMMENT 'Тип',
  description VARCHAR(255) COMMENT 'Описание типа'
) COMMENT = 'Тип контакта';

-- TODO: position - справочник должностей?

-- Контакты.
DROP TABLE IF EXISTS contacts;
CREATE TABLE contacts (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) not null COMMENT 'Имя',
  surname VARCHAR(255) not null COMMENT 'Фамилия',
  patronymic VARCHAR(255) COMMENT 'Отчество',
  birthday_at DATE COMMENT 'Дата рождения',
  contact_type_id BIGINT UNSIGNED COMMENT 'ИД типа',
  `position` VARCHAR(255) not null COMMENT 'Должность',
  legal_persons_id BIGINT UNSIGNED COMMENT 'Связь с юрлицом',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата создания',
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Дата изменения',
  FOREIGN KEY (contact_type_id) REFERENCES contact_type(id),
  
  KEY index_of_legal_persons_id(legal_persons_id),
  KEY index_of_contact_type_id(contact_type_id)
) COMMENT = 'Контакты';

-- Данные учётных записей.
DROP TABLE IF EXISTS user_credentials;
CREATE TABLE user_credentials (
	id SERIAL PRIMARY KEY,
	contacts_id BIGINT UNSIGNED COMMENT 'ИД контакта',
	login varchar(100) not null COMMENT 'Логин',
	password_hash varchar(100) DEFAULT NULL COMMENT 'Хеш пароля',
	date_valid_to DATETIME COMMENT 'Действителен до',
	is_active BOOLEAN NOT NULL DEFAULT 0 COMMENT 'Статус учётной записи. 0 - выкл. 1 - вкл.', 
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата создания',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Дата изменения',
    FOREIGN KEY (contacts_id) REFERENCES contacts(id),
	KEY index_of_contacts_id(contacts_id),
	KEY index_of_login(login)
) COMMENT = 'Учётные данные';

-- Тип cредства связи.
DROP TABLE IF EXISTS communications_type;
CREATE TABLE communications_type (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) not null COMMENT 'Тип',
    description VARCHAR(255) COMMENT 'Описание типа'
) COMMENT = 'Тип cредства связи';

-- Средства связи.
DROP TABLE IF EXISTS contact_communications;
CREATE TABLE contact_communications (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) not null COMMENT 'Номер или e-mail',
	communications_type_id BIGINT UNSIGNED COMMENT 'ИД типа cредства связи',
	contacts_id BIGINT UNSIGNED COMMENT 'ИД контакта',
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата создания',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Дата изменения',
    FOREIGN KEY (communications_type_id) REFERENCES communications_type(id),
    FOREIGN KEY (contacts_id) REFERENCES contacts(id),
    
    KEY index_of_communications_type_id(communications_type_id),
    KEY index_of_contacts_id(contacts_id)
) COMMENT = 'Средства связи';

-- Тип юрлица.
DROP TABLE IF EXISTS legal_person_type;
CREATE TABLE legal_person_type (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) not null COMMENT 'Тип',
  description VARCHAR(255) COMMENT 'Описание типа'
) COMMENT = 'Тип юрлица';

-- Юрлицо.
DROP TABLE IF EXISTS legal_persons;
CREATE TABLE legal_persons (
  id SERIAL PRIMARY KEY,
  name VARCHAR(500) not null COMMENT 'Название', 
  registration_address VARCHAR(500) not null COMMENT 'Адрес регистрации',
  description VARCHAR(2000) COMMENT 'Описание деятельности',
  legal_person_type_id BIGINT UNSIGNED COMMENT 'Тип юрлица',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата создания',
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Дата изменения',
  FOREIGN KEY (legal_person_type_id) REFERENCES legal_person_type(id),
  
  KEY index_of_legal_person_type_id(legal_person_type_id),
  KEY index_of_name(name)
) COMMENT = 'Юрлицо';

-- Реквизиты.
DROP TABLE IF EXISTS payment_details;
CREATE TABLE payment_details (
	id SERIAL PRIMARY KEY,
	name VARCHAR(500) not null COMMENT 'Название', 
	description VARCHAR(2000) COMMENT 'Описание',
	/*
	 * Добавить поля реквизитов
	 * */
	legal_persons_id BIGINT UNSIGNED COMMENT 'ИД юрлица',
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата создания',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Дата изменения',
    FOREIGN KEY (legal_persons_id) REFERENCES legal_persons(id),
    
    KEY index_of_legal_persons_id(legal_persons_id)
) COMMENT = 'Платёжные реквизиты';

-- Средства связи юрлица.
DROP TABLE IF EXISTS legal_persons_communications;
CREATE TABLE legal_persons_communications (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) not null COMMENT 'Номер или e-mail',
	communications_type_id BIGINT UNSIGNED COMMENT 'ИД типа cредства связи',
	legal_persons_id BIGINT UNSIGNED COMMENT 'ИД юрлица',
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата создания',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Дата изменения',
    FOREIGN KEY (communications_type_id) REFERENCES communications_type(id),
    FOREIGN KEY (legal_persons_id) REFERENCES legal_persons(id),
    
    KEY index_of_communications_type_id(communications_type_id),
    KEY index_of_legal_persons_id(legal_persons_id)
) COMMENT = 'Средства связи';

-- Договора.
DROP TABLE IF EXISTS contract;
CREATE TABLE contract (
	id SERIAL PRIMARY KEY,
	employee_id BIGINT UNSIGNED COMMENT 'ИД сотрудника',
	`number` VARCHAR(500) not null COMMENT 'Номер договора',
	`date` DATETIME not null,
	name VARCHAR(2000) COMMENT 'Предмет договора',
	amount decimal(10,2) COMMENT 'Сумма договора',
	FOREIGN KEY (employee_id) REFERENCES contacts(id),
	
	KEY index_of_employee_id(employee_id),
	KEY index_of_number(`number`),
	KEY index_of_date(`date`)
) COMMENT = 'Договора';

-- Стороны договора.
DROP TABLE IF EXISTS contract_members;
CREATE TABLE contract_members (
	id SERIAL PRIMARY KEY,
	contract_id BIGINT UNSIGNED COMMENT 'ИД договора',
	legal_persons_id BIGINT UNSIGNED COMMENT 'ИД юрлица',
	FOREIGN KEY (contract_id) REFERENCES contract(id),
	FOREIGN KEY (legal_persons_id) REFERENCES legal_persons(id),
	
	KEY index_of_contract_id(contract_id),
	KEY index_of_legal_persons_id(legal_persons_id)
) COMMENT = 'Стороны договора';

-- Счета.
/*
DROP TABLE IF EXISTS accounts;
CREATE TABLE accounts (
	id SERIAL PRIMARY KEY
) COMMENT = 'Счета';
*/
-- Сделки.
DROP TABLE IF EXISTS dealings;
CREATE TABLE dealings (
	id SERIAL PRIMARY KEY,
	employee_id BIGINT UNSIGNED COMMENT 'ИД сотрудника',
	buyer_id BIGINT UNSIGNED COMMENT 'Покупатель',
	seller_id BIGINT UNSIGNED COMMENT 'Продавец',
	contract_id BIGINT UNSIGNED COMMENT 'ИД договора',
	amount decimal(10,2) COMMENT 'Сумма сделки',
	name VARCHAR(255) not null COMMENT 'Название',
  	description VARCHAR(255) COMMENT 'Описание',
  	
	FOREIGN KEY (contract_id) REFERENCES contract(id),
	FOREIGN KEY (buyer_id) REFERENCES legal_persons(id),
	FOREIGN KEY (seller_id) REFERENCES legal_persons(id),
	
	KEY index_of_employee_id(employee_id),
	KEY index_of_buyer_id(buyer_id),
	KEY index_of_seller_id(seller_id),
	KEY index_of_contract_id(contract_id)
) COMMENT = 'Сделки';

-- Тип активности.
DROP TABLE IF EXISTS activity_type;
CREATE TABLE activity_type (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) not null COMMENT 'Тип',
  description VARCHAR(255) COMMENT 'Описание типа'
) COMMENT = 'Тип активности';

-- Результат активности.
DROP TABLE IF EXISTS activity_result;
CREATE TABLE activity_result (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) not null COMMENT 'Тип',
  description VARCHAR(255) COMMENT 'Описание типа'
) COMMENT = 'Результат активности';

-- Активности по клиенту.
DROP TABLE IF EXISTS activity;
CREATE TABLE activity (
	id SERIAL PRIMARY KEY,
	employee_id BIGINT UNSIGNED COMMENT 'ИД сотрудника',
	start_date DATETIME COMMENT 'Дата начала',
	end_date DATETIME COMMENT 'Дата завершения',
	name VARCHAR(255) not null COMMENT 'Название',
  	description VARCHAR(4000) COMMENT 'Описание',
	activity_type_id BIGINT UNSIGNED COMMENT 'Тип активности',
	activity_result_id BIGINT UNSIGNED COMMENT 'Результат',
	legal_persons_id BIGINT UNSIGNED COMMENT 'ИД юрлица',
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата создания',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Дата изменения',
	FOREIGN KEY (employee_id) REFERENCES contacts(id),
	FOREIGN KEY (legal_persons_id) REFERENCES legal_persons(id),
	FOREIGN KEY (activity_type_id) REFERENCES activity_type(id),
	FOREIGN KEY (activity_result_id) REFERENCES activity_result(id),
	
	KEY index_of_employee_id(employee_id),
	KEY index_of_activity_type_id(activity_type_id),
	KEY index_of_activity_result_id(activity_result_id),
	KEY index_of_legal_persons_id(legal_persons_id)
	
) COMMENT = 'Активности по клиенту';

-- Рассылки.
DROP TABLE IF EXISTS distribution;
CREATE TABLE distribution (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) not null COMMENT 'Название',
  	description VARCHAR(4000) COMMENT 'Описание',
  	header VARCHAR(255) not null COMMENT 'Заголовок',
  	body MEDIUMTEXT not null COMMENT 'Тело сообщения',
  	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата создания',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Дата изменения'
) COMMENT = 'Рассылки';


-- Аудитория рассылки.
DROP TABLE IF EXISTS distribution_target;
CREATE TABLE distribution_target (
	id SERIAL PRIMARY KEY,
	distribution_id BIGINT UNSIGNED COMMENT 'ИД рассылки',
	contacts_id BIGINT UNSIGNED COMMENT 'ИД контакта',
	contact_communications_id BIGINT UNSIGNED COMMENT 'ИД средства связи',
	date_send DATETIME COMMENT 'Дата отправки',
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата создания',
	FOREIGN KEY (distribution_id) REFERENCES distribution(id),
	FOREIGN KEY (contacts_id) REFERENCES contacts(id),
	FOREIGN KEY (contact_communications_id) REFERENCES contact_communications(id),
	KEY index_of_contacts_id(contacts_id),
    KEY index_of_contact_communications_id(contact_communications_id)
) COMMENT = 'Аудитория рассылки';

-- Тип документа.
DROP TABLE IF EXISTS document_types;
CREATE TABLE document_types(
    id SERIAL PRIMARY KEY,
  	name VARCHAR(255) not null COMMENT 'Тип',
  	description VARCHAR(255) COMMENT 'Описание типа'
) COMMENT='Тип приложенных документов';

-- Приложенные документы.
DROP TABLE IF EXISTS document;
CREATE TABLE document(
	id SERIAL PRIMARY KEY COMMENT 'ИД',
    document_types_id BIGINT UNSIGNED NOT NULL COMMENT 'ИД типа документа',  
    contacts_id BIGINT UNSIGNED COMMENT 'ИД контакта',
    legal_persons_id BIGINT UNSIGNED COMMENT 'ИД юрлица',  
  	body text COMMENT 'Описание',
    filename VARCHAR(255) COMMENT 'Имя файла',	
    size INT COMMENT 'Размер файла',
	metadata JSON COMMENT 'Метаданные',
    created_at DATETIME DEFAULT NOW() COMMENT 'Дата создания',
    updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP COMMENT 'Дата изменения',

    FOREIGN KEY (contacts_id) REFERENCES contacts(id),
    FOREIGN KEY (legal_persons_id) REFERENCES legal_persons(id),
    FOREIGN KEY (document_types_id) REFERENCES document_types(id),
    KEY index_of_contacts_id(contacts_id),
    KEY index_of_legal_persons_id(legal_persons_id)
) COMMENT='Документы';

-- Документы по сделке.
DROP TABLE IF EXISTS document_to_dealings;
CREATE TABLE document_to_dealings (
	dealings_id BIGINT UNSIGNED COMMENT 'ИД сделки',
	document_id BIGINT UNSIGNED COMMENT 'ИД документа',
	FOREIGN KEY (dealings_id) REFERENCES dealings(id),
	FOREIGN KEY (document_id) REFERENCES document(id),
	
	KEY index_of_dealings_id(dealings_id),
	KEY index_of_document_id(document_id)
) COMMENT = 'Документы по сделке';

-- Документы по договорам.
DROP TABLE IF EXISTS document_to_contract;
CREATE TABLE document_to_contract (
	contract_id BIGINT UNSIGNED COMMENT 'ИД договора',
	document_id BIGINT UNSIGNED COMMENT 'ИД документа',
	FOREIGN KEY (contract_id) REFERENCES contract(id),
	FOREIGN KEY (document_id) REFERENCES document(id),
	
	KEY index_of_contract_id(contract_id),
	KEY index_of_document_id(document_id)
) COMMENT = 'Документы по договорам';

-- Связь с юрлицом.
ALTER TABLE EasyCRM.contacts 
ADD CONSTRAINT contacts_fk 
FOREIGN KEY (legal_persons_id) REFERENCES EasyCRM.legal_persons(id);


