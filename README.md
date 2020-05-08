# SQL

QUIRIES:
-- Запросы к таблицам people, clientsBank.
-- Структура таблицы people:         id, firstName, surName, age, town, inn.
-- Структура таблицы clientsBank:    id, firstName, surName, inn, account, sumDeposit, sumCredit.

-- Запрос: группировка клиентов по городам с указанием общей суммы депозитов и кредитов, а также условием (HAVING) после группировки и соответственно отображением городов, где общий объем депозитов превышает 9000.
SELECT people.town, SUM(clientsbank.sumdeposit) AS deposit, SUM(clientsbank.sumcredit) AS credit FROM clientsbank, people WHERE people.inn = clientsbank.inn GROUP BY people.town HAVING SUM(sumdeposit) > 9000;
-- Запрос: выводим клиентов, с указанием города, а также информацию по объему их депозитов и кредитов, при условии, что у данных клентов сумма депозита превышает сумму кредита.
SELECT people.surname, people.town, clientsbank.sumdeposit, clientsbank.sumcredit FROM people JOIN clientsbank ON people.inn=clientsbank.inn WHERE clientsbank.sumdeposit>clientsbank.sumcredit;
-- Запросы: FULL [OUTER] JOIN.
SELECT people.surname, clientsbank.account FROM people FULL OUTER JOIN clientsbank ON people.inn=clientsbank.inn;
-- Запросы: RIGHT [OUTER] JOIN.
SELECT people.surname, clientsbank.account FROM people RIGHT OUTER JOIN clientsbank ON people.inn=clientsbank.inn;
-- Запросы: LEFT [OUTER] JOIN.
SELECT people.surname, clientsbank.account FROM people LEFT OUTER JOIN clientsbank ON people.inn=clientsbank.inn;
-- Запросы: CROSS JOIN (декартово произведение).
SELECT people.surname, clientsbank.account FROM people CROSS JOIN clientsbank;
-- Запросы: [INNER] JOIN.
SELECT people.firstname, people.surname, people.age, people.town, clientsbank.account, clientsbank.sumdeposit,clientsbank.sumcredit FROM people, clientsbank WHERE people.inn=clientsbank.inn;
