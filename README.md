# Курсовая работа.
# Разработка БД «Системы управления взаимоотношениями с клиентами» (CRM), для небольшой организации.<br>
Список файлов:<br>
Создание структуры БД EasyCRM - easyCRM.sql<br>
ERDiagram для БД png - er_diagram_easyCRM.png<br>
ERDiagram для БД xml - er_diagram_easyCRM.graphml<br>
Данные для БД EasyCRM - addDataToEasyCRM.sql<br>
Скрипты характерных выборок - commonSelects.sql<br>
Представления - createView.sql<br>
Процедуры - createProcedure.sql<br>
<br>
<br>
Общее предназначение: автоматизация работы с клиентами.<br>
Позволяет решать задачи:<br>
1) Добавление, изменение и хранение данных о клиентах (наименование, реквизиты, адрес, контактные лица, статус отношений).<br>
2) Добавление, изменение и хранение данных о сотрудниках.<br>
3) Ведение взаимодействий с клиентами.<br>
4) Ведение сделок.<br>
5) Ведение договоров.<br>
6) Рассылка оповещений.<br>
<br>
Список таблиц:<br>
1) activity	Активности по клиенту.<br>
2) activity_result	Результат активности.<br>
3) activity_type	Тип активности.<br>
4) communications_type	Тип cредства связи.<br>
5) contact_communications	Средства связи.<br>
6) contact_type	Тип контакта.<br>
7) contacts	Контакты.<br>
8) contract	Договора.<br>
9) contract_members	Стороны договора.<br>
10) dealings	Сделки.<br>
11) distribution	Рассылки.<br>
12) distribution_target	Аудитория рассылки.<br>
13) document	Документы.<br>
14) document_to_contract	Документы по договорам.<br>
15) document_to_dealings	Документы по сделке.<br>
16) document_types	Тип приложенных документов.<br>
17) legal_person_type	Тип юрлица.<br>
18) legal_persons	Юрлицо.<br>
19) legal_persons_communications	Средства связи.<br>
20) payment_details	Платёжные реквизиты.<br>
21) user_credentials	Учётные данные.<br>



