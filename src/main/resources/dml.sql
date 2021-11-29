-- --------------------------------------------------------------------------
-- + inserting data into a table "Law_offices"
-- --------------------------------------------------------------------------
insert into Law_offices (name, address) values
	('Маслов, Гашинский и партнеры', 'улица Пушкина, дом 10'),
	('Белорусская республиканская коллегия адвокатов', 'улица Коллекторная, дом 10'),
	('Минская городская коллегия адвокатов', 'улица Захарова, дом 506'),
	('Специализированная юридическая консультация "Белинюрколлегия"', 'улица Богдановича, дом 70'),
	('Юридическая консультация № 2 Ленинского района', 'улица Ульяновская, дом 4');
 
-- --------------------------------------------------------------------------
-- + inserting data into a table "Lawyers"
-- --------------------------------------------------------------------------
insert into Lawyers (law_office_id, surname, `name`, patronymic, dob, experience_since) values 
	(1, 'Зубенко', 'Михаил', 'Петрович', str_to_date('01-01-2000', '%d-%m-%Y'), str_to_date('10-10-2008', '%d-%m-%Y')),
	(1, 'Карзан', 'Валентина', 'Михайловна', str_to_date('15-09-1988', '%d-%m-%Y'), str_to_date('04-02-2007', '%d-%m-%Y')),
	(2, 'Король', 'Юрий', 'Викторович', str_to_date('15-05-1987', '%d-%m-%Y'), str_to_date('05-05-2014', '%d-%m-%Y')),                    
	(3, 'Чижик', 'Евгений', 'Колягович', str_to_date('09-05-1988', '%d-%m-%Y'), str_to_date('10-05-2000', '%d-%m-%Y')),
	(4, 'Переселяк', 'Илья', 'Сергеевич', str_to_date('25-02-2003', '%d-%m-%Y'), str_to_date('01-09-2019', '%d-%m-%Y'));
 
-- --------------------------------------------------------------------------
-- + inserting data into a table "Lawyer_activity_spheres"
-- --------------------------------------------------------------------------
insert into Lawyer_activity_spheres (name) values 
	('Гражданское право'),
	('Уголовное право'),
	('Семейное право'),
	('Трудовое право'),
	('Наследственное право'),
	('Жилищное право'),
	('Административное право'),
	('Страховое право');

-- --------------------------------------------------------------------------
-- + inserting data into a table "Orientations" 
-- --------------------------------------------------------------------------
insert into Orientations (lawyer_id, activity_sphere_id) values
	(1, 1),
	(1, 2),
	(2, 1),
	(2, 4),
	(2, 5),
	(3, 4),
	(3, 5),
	(4, 2),
	(4, 5),
	(4, 6),
	(5, 1),
	(5, 2);

-- --------------------------------------------------------------------------
-- + inserting data into a table "Service_types" 
-- --------------------------------------------------------------------------
insert into Service_types (name) values 
	('Консультация'),
	('Подача иска'),
	('Защита в суде'),
	('Подача аппеляции'),
	('Подача заявления');

-- --------------------------------------------------------------------------
-- + inserting data into a table "Clients" with patronymic
-- --------------------------------------------------------------------------
insert into Clients (surname, `name`, patronymic, dob, telephone) values
	('Гурский', 'Алексей', 'Никитович', str_to_date('22-04-2004', '%d-%m-%Y'), '333-33-33'),
	('Сергун', 'Егор', 'Егорович', str_to_date('23-08-2002', '%d-%m-%Y'), '666-66-66'),
	('Клундук', 'Даниил', 'Евгеньевич', str_to_date('30-06-2004', '%d-%m-%Y'), '222-22-22'),
	('Чижик', 'Владислав', 'Артемович', str_to_date('14-07-2006', '%d-%m-%Y'), '111-11-11'),
	('Гурский', 'Иван', 'Матвеевич', str_to_date('14-05-1998', '%d-%m-%Y'), '888-88-88');

-- --------------------------------------------------------------------------
-- + inserting data into a table "Clients" without patronymic
-- --------------------------------------------------------------------------
insert into Clients (surname, `name`, dob, telephone) values
	('Егоров', 'Алексей', str_to_date('22-07-2004', '%d-%m-%Y'), '333-33-33'),
	('Матвеев', 'Егор', str_to_date('28-08-2010', '%d-%m-%Y'), '555-35-35');

-- --------------------------------------------------------------------------
-- + inserting data into a table "Client_folders" 
-- --------------------------------------------------------------------------
insert into Client_folders (client_id, `status`) values
	(1, 'ACTIVE'),
	(2, 'ACTIVE'),
	(3, 'ARCHIVED'),
	(4, 'ACTIVE'),
	(5, 'ACTIVE'),
	(6, 'ARCHIVED'),
	(7, 'ARCHIVED');

-- --------------------------------------------------------------------------
-- + inserting data into a table "Paperwork_types" 
-- --------------------------------------------------------------------------
insert into Paperwork_types (name) values
	('Заявление'),
	('Иск'),
	('Дело'),
	('Аппеляционный иск'),
	('Заявление об ускорении рассмотрения дела'),
	('Заявление о вызове свидетелей'),
	('Кассационная жалоба на приговор суда'),
	('Ходатайство об исключении недопустимого доказательства'),
	('Ходатайтво об изменении квалификации предъявленного обвинения'),
	('Заявление о привлечении третьего лица'),
	('Жалоба'),
	('Заявление об отводе судьи');

-- --------------------------------------------------------------------------
-- + inserting data into a table "Court_types" 
-- --------------------------------------------------------------------------
insert into Court_types (name) values
	('Верховный'),
	('Кассационный'),
	('Аппеляционный'),
	('Районный'),
	('Городской');

-- --------------------------------------------------------------------------
-- + inserting data into a table "Judges" 
-- --------------------------------------------------------------------------
insert into Judges (surname, name, patronymic, dob, experience_since) values
	('Ажгинь', 'Данила', 'Ярославов', str_to_date('17-04-2000', '%d-%m-%Y'), str_to_date('15-07-2012', '%d-%m-%Y')),
	('Бельский', 'Артем', 'Русланов', str_to_date('01-06-2001', '%d-%m-%Y'), str_to_date('30-11-2014', '%d-%m-%Y')),
	('Сороко', 'Полина', 'Севастьянова', str_to_date('08-03-1999', '%d-%m-%Y'), str_to_date('17-05-2018', '%d-%m-%Y')),
	('Яроцкий', 'Яков', 'Артемов', str_to_date('12-06-1999', '%d-%m-%Y'), str_to_date('07-07-2017', '%d-%m-%Y')),
	('Емельянова', 'Елизавета', 'Дмитриевна', str_to_date('06-06-1997', '%d-%m-%Y'), str_to_date('14-07-2020', '%d-%m-%Y'));

-- --------------------------------------------------------------------------
-- + inserting data into a table "Courts" 
-- --------------------------------------------------------------------------
insert into Courts (court_type_id, name, address) values
	(4, 'Суд Заводского района г.Минска', '220107, г. Минск, пр. Партизанский, 75а'),
	(4, 'Суд Ленинского района г. Минска', '220027, г. Минск, ул. Семашко, 33'),
	(3, 'Минский областной суд', '220050, г. Минск, ул. Свердлова, 3'),
	(1, 'Верховный Суд Республики Беларусь', '220030, г. Минск, ул. Ленина, 28'),
	(1, 'Минский городской суд', '220092, г. Минск, ул. Дунина-Марцинкевича 1');

-- --------------------------------------------------------------------------
-- + inserting data into a table "Paperworks" 
-- --------------------------------------------------------------------------
insert into Paperworks (type_id, client_folder_id, court_id, judge_id, title, url) values
	(1, 2, 1, 1, 'Кража конфет из автомата', 'file:///askomar/paperworks/1.docx'),
	(2, 3, 3, 2, 'Ударила мужа сковородой', 'file:///askomar/paperworks/2.docx'),
	(3, 4, 2, 4, 'Просверлил дырку в потолке к соседу', 'file:///askomar/paperworks/3.doc'),
	(4, 2, 5, 3, 'Налепил жевачку в лифте на кнопку', 'file:///askomar/paperworks/4.doc'),
	(1, 2, 1, 1, 'Удалил базу данных', 'file:///askomar/paperworks/5.docx'),
	(4, 2, 5, 3, 'Спал на паре', 'file:///askomar/paperworks/6.doc'),
	(4, 2, 5, 3, 'Дали слишком горячий чай', 'file:///askomar/paperworks/7.doc'),
	(1, 2, 5, 4, 'Преподаватель поставил слишком низкую отметку', 'file:///askomar/paperworks/8.doc'),
	(4, 2, 2, 3, 'Наступил на ногу в метро', 'file:///askomar/paperworks/9.docx'),
	(3, 2, 5, 3, 'Забирало НЛО из зоны 51', 'file:///askomar/paperworks/10.docx');

-- --------------------------------------------------------------------------
-- + inserting data into table "Services" with paperwork
-- --------------------------------------------------------------------------
insert into Services (type_id, lawyer_id, paperwork_id, cost) values
	(3, 2, 3, 40000.00),
	(1, 1, 1, 2000.00),
	(4, 2, 2, 500.00),
	(2, 2, 4, 500000.00);
	
-- --------------------------------------------------------------------------
-- + inserting data into table "Services" without paperwork
-- --------------------------------------------------------------------------
insert into Services (type_id, lawyer_id, cost) values
	(1, 2, 100.00),
	(1, 1, 100.00),
	(1, 2, 20.00),
	(1, 2, 800.00);	