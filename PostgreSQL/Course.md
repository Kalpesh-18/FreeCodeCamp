# Relational Databases by building a MarioDB

"psql --username=freecodecamp --dbname=postgres" use this command to connect to postgres terminal

\l - to list all the databases

CREATE DATABASE database_name;

\c database_name

\d - display all the tables in database
\d table_name - view more details

SERIAL makes column an INT with NOT NULL constraint and automatically increments
NUMERIC(4, 1) - 4 digits and 1 digit has to be at right of decimal

CREATE TABLE table_name();
ALTER TABLE table_name ADD COLUMN column_name DATATYPE;
ALTER TABLE table_name ADD COLUMN column_name DATATYPE SERIAL;
ALTER TABLE table_name ADD COLUMN column_name DATATYPE NOT NULL;
ALTER TABLE table_name DROP COLUMN column_name DATATYPE;

VARCHAR is short string of words VARCHAR(30) means max-length of string is 30

ALTER TABLE table_name RENAME COLUMN column_name TO new_name;

INSERT INTO TABLE table_name(column1, column2) VALUES(1, 'Sam'), ('2', 'Dam');

SELECT * FROM column_name;
SELECT * FROM column_name ORDER BY character_id;

DELETE FROM table_name WHERE username='xyz';

DROP TABLE table_name;

ALTER DATABASE db_name RENAME to new_db_name;

DROP DATABASE db_name;

UPDATE table_name SET column_name='Orange' WHERE condition='Daisy';

DELETE FROM table_name WHERE condition;

ALTER TABLE table_name ADD PRIMARY KEY(column_name); Primary key uniquely identifies a row, only one pk per table
ALTER TABLE table_name ADD PRIMARY KEY(column_name1, column_name2); Composite Primary key
ALTER TABLE table_name DROP CONSTRAINT characters_pkey;

ALTER TABLE table_name ADD COLUMN column_name DATATYPE CONSTRAINT REFERENCES table_name(column_name);
ALTER TABLE table_name ADD COLUMN column_name INT NOT NULL UNIQUE;

ALTER TABLE table_name ADD UNIQUE(column_name);

ALTER TABLE table_name ALTER COLUMN column_name SET NOT NULL;

CREATE TABLE table_name(column_name DATATYPE CONSTRAINT);
CREATE TABLE table_name(column_name SERIAL PRIMARY KEY);

ALTER TABLE table_name ADD FOREIGN KEY(column_name) REFERENCES table_name(column_name);

SELECT columns FROM table1 FULL JOIN table2 ON table1.colname = table2.colname FULL JOIN table3 ON table1.colname = table3.colname