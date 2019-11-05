
CREATE DATABASE ExamReview;
/*
This is a a simple db to review & prep for final exam
*/

USE ExamReview

CREATE TABLE mytable(
   ID           INTEGER  NOT NULL PRIMARY KEY 
  ,FirstName    VARCHAR(5) NOT NULL
  ,LastName     VARCHAR(8) NOT NULL
  ,Phone_Number VARCHAR(10) NOT NULL
);
INSERT INTO mytable(ID,FirstName,LastName,Phone_Number) VALUES (1001,'Joe','Smith','4039054562');
INSERT INTO mytable(ID,FirstName,LastName,Phone_Number) VALUES (1002,'John','Davidson','4039054563');
INSERT INTO mytable(ID,FirstName,LastName,Phone_Number) VALUES (1003,'Chris','Allan','4039054564');
INSERT INTO mytable(ID,FirstName,LastName,Phone_Number) VALUES (1004,'Dan','Gryzb','4039054565');
INSERT INTO mytable(ID,FirstName,LastName,Phone_Number) VALUES (1005,'David','Illion','4039054566');
INSERT INTO mytable(ID,FirstName,LastName,Phone_Number) VALUES (1006,'Emma','DeWanga','4039054567');
INSERT INTO mytable(ID,FirstName,LastName,Phone_Number) VALUES (1007,'Jane','Tills','4039054568');


CREATE TABLE mytable2(
   ID         INTEGER  NOT NULL PRIMARY KEY 
  ,Department VARCHAR(4) NOT NULL
  ,Grade      VARCHAR(1) NOT NULL
);
INSERT INTO mytable2(ID,Department,Grade) VALUES (1001,'HR','1');
INSERT INTO mytable2(ID,Department,Grade) VALUES (1002,'ENG','3');
INSERT INTO mytable2(ID,Department,Grade) VALUES (1003,'HR','4');
INSERT INTO mytable2(ID,Department,Grade) VALUES (1004,'SALE','5');
INSERT INTO mytable2(ID,Department,Grade) VALUES (1005,'MAN','4');
INSERT INTO mytable2(ID,Department,Grade) VALUES (1006,'MAN','2');
INSERT INTO mytable2(ID,Department,Grade) VALUES (1007,'HR','1');









SELECT * FROM mytable;
SELECT * FROM mytable2;


