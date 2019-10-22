-- Use "exercise_database" database created for this exercrise
	USE	[exercise_database]
	GO

-- utils: delete tables each time wtih just execute, comment out for the 1st time
	DROP TABLE exercise_table1_inv
	DROP TABLE exercise_table1_code
	DROP TABLE exercise_table_new


-- Create a table named exercrise_table1
	CREATE TABLE exercise_table1_inv(
	inv_id int  NOT NULL UNIQUE,
	inv_name varchar(50) NOT NULL,
	inv_info varchar(50) NOT NULL,
	inv_code varchar(50) NULL,
	time_created datetime  NULL,
	CONSTRAINT PK_inv_id PRIMARY KEY(inv_id)
	)


-- Populate the table with some dummy data
	INSERT INTO exercise_table1_inv(inv_id, inv_name, inv_info, inv_code, time_created)
	VALUES ('00001', 'Erichsen', 'Skagen Model 21', '500', '2008-11-11'),
	('00002', 'Sunflower', 'Kids Bike Model 3', '450', '2009-11-11'),
	('00003', 'Sunthower', 'Pizza Maker Model 2', '420', '2009-11-11'),
	('00004', 'Peathower', 'El Funo 2', '150', '2016-11-11'),
	('00005', 'Dandiflower', 'El Camino Model 2', '440', '2019-11-11'),
	('00006', 'Windflower', 'Ven Osley 300', '685', '2011-11-11');

-- Print table1_inv
	SELECT * FROM exercise_table1_inv

-- Alter the table and add a Money Column
	ALTER TABLE exercise_table1_inv
	ADD Price Money


-- Print table1_inv after altering
	SELECT * FROM exercise_table1_inv


	
-- Update two fields in the inv_id=3 record
	UPDATE exercise_table1_inv SET inv_code= 999 WHERE inv_id=3;
	UPDATE exercise_table1_inv SET Price = 999999 WHERE inv_id=3;


--Attempt to add a second table and then join it to the first table
	CREATE TABLE exercise_table1_code(
	inv_code int  NOT NULL UNIQUE,
	inv_code_name varchar (50) NOT NULL,
	inv_code_info varchar (50) NOT NULL,
	CONSTRAINT PK_inv_code PRIMARY KEY(inv_code)
	)
	
	INSERT INTO exercise_table1_code(inv_code, inv_code_name, inv_code_info)
	VALUES ('500', 'Do Not Sale', 'Item under review'),
	('450', 'Special Promo', 'Employee Discount'),
	('440', 'Special Promo', 'Christmas Sales'),
	('420', 'Special Promo', 'BOGO'),
	('685', 'In Transit', 'Item not in store yet'),
	('999', 'Missing Item', 'MISSING');


-- Prints the table
--	SELECT * FROM exercise_table1_inv
	SELECT * FROM exercise_table1_code

-- Join two tables
	SELECT 
		exercise_table1_inv.inv_id, 
		exercise_table1_inv.inv_name,
		exercise_table1_inv.inv_info, 
		exercise_table1_code.inv_code,
		exercise_table1_code.inv_code_name,
		exercise_table1_code.inv_code_info,
		exercise_table1_inv.time_created,
		exercise_table1_inv.Price
	INTO exercise_table_new
	FROM exercise_table1_inv
	INNER JOIN exercise_table1_code ON exercise_table1_inv.inv_code=exercise_table1_code.inv_code;

-- Print the joined tables
	SELECT * FROM exercise_table_new



--delete a row in exercise_table_new
	DELETE FROM exercise_table_new WHERE inv_id=1
	DELETE FROM exercise_table_new WHERE inv_id=3
--print after deleting rows
	SELECT * FROM exercise_table_new

--drop a column in exercise_table_new
	ALTER TABLE exercise_table_new DROP COLUMN inv_info;
--print after dropping column
	SELECT * FROM exercise_table_new


--Print Max Prize
	SELECT MAX(Price) AS LargestPrice
	FROM exercise_table1_inv;


/* this is also a valid comment style */