INSERT INTO Roles (description)
VALUES 
	('Главный герой'),
	('Старейшина'),
	('Член Совета'),
	('Наставник'),
	('Друг');

INSERT INTO Culture (description)
VALUES 
	('Диаспарская'),
	('Лизская');

INSERT INTO Town (name, description, culture_id)
VALUES
	('Диаспар', 'Город с вечной жизнью и передовой технологией', 1),
	('Лиз', 'Долина с натуральным хозяйством и телепатией', 2);

INSERT INTO Human (name, role_id, town_id) 
VALUES 
	('Олвин', 1, 1),
	('Сирэйнис', 2, 2),
	('Хилвар', 5, 2);

INSERT INTO Council (name)
VALUES
	('Совет Диаспара');

INSERT INTO Meetings (human_id, council_id, meeting_date) 
VALUES
	(1, 1, '4123-01-01');
