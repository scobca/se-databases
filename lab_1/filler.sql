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
	(1, 1, '2025-03-01 10:00:00'),
	(2, 1, '2025-03-01 11:32:23'),
	(3, 1, '2025-03-01 08:00:00');
