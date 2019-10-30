/*
Logic Steps
1. Populate a database with some data 
2. Bakcup the database
3. Restore the database
*/


USE backupRestore
DROP TABLE mytable
CREATE TABLE mytable(
   employeeID INTEGER  NOT NULL PRIMARY KEY 
  ,firstName  VARCHAR(10) NOT NULL
  ,lastName   VARCHAR(11) NOT NULL
  ,age        INTEGER  NOT NULL
  ,baseSalary FLOAT NOT NULL
  ,phone      VARCHAR(10) NOT NULL
  ,department VARCHAR(11) NOT NULL
  ,hiredSince DATE  NOT NULL
  ,vacDays    INTEGER  NOT NULL
);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1001,'Shaniqua','Bonney',18,49000,'4035301553','HR','2001-10-27',33);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1002,'Pamella','Studstill',36,77000,'4036043537','Business','2018-5-9',32);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1003,'Elizebeth','Desmarais',20,37000,'4033428623','Accounting','2002-6-9',38);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1004,'Jessika','Bey',44,66000,'4038304795','Accounting','2008-5-17',40);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1005,'Elina','Fulghum',23,57000,'4034875018','Business','2012-11-18',37);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1006,'Deborah','Strandberg',31,37000,'4035698694','Contractors','2007-12-26',20);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1007,'Bettina','Sakai',30,42000,'4038934381','Contractors','1998-3-25',27);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1008,'Gilda','Mauriello',27,25000,'4039677414','Engineering','2016-11-15',28);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1009,'Glinda','Rideaux',47,83000,'4037428804','Contractors','2004-8-27',29);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1010,'Wilhelmina','Deshong',26,50000,'4036313551','HR','1995-1-25',1);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1011,'Lakenya','Blankenship',41,63000,'4034150767','Engineering','1995-12-23',21);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1012,'Ciera','Riviera',48,64000,'4039661360','HR','2005-10-12',7);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1013,'Keva','Glatt',29,27000,'4031778888','Accounting','2003-1-25',6);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1014,'Elisa','Egerton',42,60000,'4032736325','Engineering','2010-4-3',25);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1015,'Love','Gidley',28,43000,'4033444518','Operation','2004-4-26',0);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1016,'Delinda','Hanes',44,54000,'4035637304','Operation','2016-1-26',17);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1017,'Chang','Cape',22,69000,'4032298935','Accounting','2005-1-14',19);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1018,'Niesha','Driggs',18,49000,'4037662122','Contractors','1995-6-24',11);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1019,'Dorotha','Whited',45,72000,'4032090862','Business','2017-11-3',40);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1020,'Mariela','Horace',18,78000,'4036730188','Contractors','1999-8-28',16);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1021,'Ema','Schober',40,34000,'4034733496','Operation','2005-10-7',7);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1022,'Cherise','Cape',25,55000,'4031969796','HR','2005-11-1',18);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1023,'Ute','Hullinger',50,50000,'4036884194','Contractors','2010-2-8',1);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1024,'Rhonda','Lasher',27,38000,'4035483325','Engineering','2019-8-16',28);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1025,'Aide','Wiggin',43,26000,'4035684496','Contractors','2016-9-2',26);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1026,'Janet','Awad',29,57000,'4036829394','Engineering','2000-4-3',25);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1027,'Antione','Zartman',36,73000,'4035343152','HR','2011-9-10',0);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1028,'Cira','Gwozdz',18,53000,'4038257580','Contractors','2013-7-2',17);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1029,'Charolette','Girardin',51,58000,'4036023971','Engineering','2004-9-12',31);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1030,'Nila','Warshaw',22,28000,'4034410774','Engineering','1995-4-22',5);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1031,'Shon','Hampson',41,33000,'4032035079','Business','2019-1-1',17);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1032,'Lilly','Foxworth',24,85000,'4036431191','Business','2017-8-12',19);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1033,'Terica','Lasher',47,80000,'4037305174','Contractors','2007-1-26',23);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1034,'Catarina','Vergara',40,27000,'4033465226','Business','2001-9-28',4);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1035,'Mariano','Bowler',28,66000,'4036720361','HR','2001-6-16',10);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1036,'Delsie','Saechao',52,77000,'4032753834','Contractors','2005-12-25',31);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1037,'Felicia','Sakai',34,72000,'4039905152','Business','2014-4-17',28);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1038,'Carmela','Howlett',33,65000,'4038770244','Contractors','2010-10-7',3);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1039,'Marnie','Schnabel',48,40000,'4035137300','Business','2011-7-20',40);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1040,'Lyda','Berney',53,56000,'4033277342','Engineering','2013-7-12',5);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1041,'Leatrice','Spano',32,27000,'4034012364','Business','2014-4-21',23);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1042,'Jennette','Engler',48,82000,'4039426901','HR','2019-3-2',37);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1043,'Ayesha','Haskell',46,80000,'4031698806','Operation','2011-2-7',23);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1044,'Debby','Tullier',55,44000,'4033272371','Operation','1999-1-12',31);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1045,'Kathlyn','Christoff',33,85000,'4039417742','Business','1996-2-14',37);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1046,'Evelina','Crass',22,37000,'4035539110','Accounting','2015-10-6',38);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1047,'Mora','Adorno',37,57000,'4032309285','Business','2018-5-26',0);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1048,'Edith','Milo',39,64000,'4031405257','Engineering','2017-4-14',12);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1049,'Tamela','Klock',34,75000,'4039098393','Engineering','1995-2-28',1);
INSERT INTO mytable(employeeID,firstName,lastName,age,baseSalary,phone,department,hiredSince,vacDays) VALUES (1050,'Georgetta','Batten',26,30000,'4031666476','Business','2009-1-12',15);



SELECT * FROM mytable;
