-- Создание таблицы clientsBank.

CREATE TABLE clientsBank (
	id          	SERIAL PRIMARY KEY,
	firstName 	TEXT,	
	surName		TEXT,
	inn		INTEGER,
	account		INTEGER,
	sumDeposit	INTEGER,
	sumCredit	INTEGER	
);
