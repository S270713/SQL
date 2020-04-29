-- Создание таблицы people.

CREATE TABLE people (
	id          	SERIAL PRIMARY KEY,
	firstName 	TEXT,	
	surName		TEXT,
	age		INTEGER,
	town		TEXT,
	inn		INTEGER
);
