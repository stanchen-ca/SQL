USE db_oct25

DROP TABLE employeeDB
DROP TABLE departmentDB

CREATE TABLE employeeDB(
employeeID int NOT NULL PRIMARY KEY,
firstName varchar(250),
lastName varchar(250),
age int,
baseSalary money,
phone varchar(20),
departmentName varchar(50),
hiredSince date
)

CREATE TABLE departmentDB(
departmentName varchar(20) PRIMARY KEY,
bonusRate float,
vacationDays int
)


INSERT INTO employeeDB(employeeID,firstName,lastName,age,baseSalary,phone,departmentName,hiredSince)
VALUES(1001,	'Shaniqua',	'Bonney',	35,	63000,	'4033965552',	'Business',	'2015-12-24'),
(1002,	'Pamella',	'Studstill',	38,	60000,	'4037904162',	'HR',	'2010-2-7'),
(1003,	'Elizebeth',	'Desmarais',	28,	27000,	'4035870240',	'Accounting',	'2017-7-8'),
(1004,	'Jessika',	'Bey',	40,	55000,	'4033261343',	'Operation',	'2000-9-7'),
(1005,	'Elina',	'Fulghum',	48,	30000,	'4036806631',	'Business',	'1998-7-16'),
(1006,	'Deborah',	'Strandberg',	29,	49000,	'4037645137',	'Business',	'1998-12-27'),
(1007,	'Bettina',	'Sakai',	34,	49000,	'4032974446',	'Contractors',	'2004-9-13'),
(1008,	'Gilda',	'Mauriello',	28,	41000,	'4034520399',	'Business',	'2012-8-4'),
(1009,	'Glinda',	'Rideaux',	51,	57000,	'4037752676',	'HR',	'2015-6-4'),
(1010,	'Wilhelmina',	'Deshong',	39,	51000,	'4031295725',	'Contractors',	'2014-3-26'),
(1011,	'Lakenya',	'Blankenship',	52,	52000,	'4038385233',	'Contractors',	'2009-3-15'),
(1012,	'Ciera',	'Riviera',	29,	78000,	'4037579244',	'HR',	'2018-3-26'),
(1013,	'Keva',	'Glatt',	24,	77000,	'4033825012',	'Engineering',	'2008-5-26'),
(1014,	'Elisa',	'Egerton',	23,	47000,	'4033280409',	'Contractors',	'2016-8-1'),
(1015,	'Love',	'Gidley',	54,	84000,	'4034976787',	'Engineering',	'2002-10-4'),
(1016,	'Delinda',	'Hanes',	44,	29000,	'4032070598',	'HR',	'2012-6-21'),
(1017,	'Chang',	'Cape',	52,	82000,	'4038462826',	'Operation',	'1998-11-22'),
(1018,	'Niesha',	'Driggs',	34,	65000,	'4037177905',	'Accounting',	'2006-2-21'),
(1019,	'Dorotha',	'Whited',	48,	56000,	'4033730436',	'Engineering',	'2018-8-4'),
(1020,	'Mariela',	'Horace',	51,	31000,	'4037072723',	'Business',	'2009-9-20'),
(1021,	'Ema',	'Schober',	27,	61000,	'4034704691',	'Operation',	'1998-12-8'),
(1022,	'Cherise',	'Cape',	25,	57000,	'4034445989',	'HR',	'2010-9-1'),
(1023,	'Ute',	'Hullinger',	53,	75000,	'4038549874',	'Engineering',	'2009-7-24'),
(1024,	'Rhonda',	'Lasher',	43,	62000,	'4038392768',	'Business',	'2004-9-21'),
(1025,	'Aide',	'Wiggin',	21,	29000,	'4039939301',	'Engineering',	'2010-5-10'),
(1026,	'Janet',	'Awad',	51,	72000,	'4034714108',	'HR',	'2016-7-16'),
(1027,	'Antione',	'Zartman',	32,	31000,	'4031220078',	'HR',	'2013-8-1'),
(1028,	'Cira',	'Gwozdz',	39,	43000,	'4031885617',	'Business',	'2007-6-23'),
(1029,	'Charolette',	'Girardin',	51,	65000,	'4037983622',	'Engineering',	'2007-2-24'),
(1030,	'Nila',	'Warshaw',	29,	26000,	'4034982758',	'HR',	'2012-7-28'),
(1031,	'Shon',	'Hampson',	22,	47000,	'4036663058',	'Contractors',	'2014-4-21'),
(1032,	'Lilly',	'Foxworth',	46,	25000,	'4035204928',	'Engineering',	'2019-5-22'),
(1033,	'Terica',	'Lasher',	24,	59000,	'4038257023',	'Contractors',	'2002-11-2'),
(1034,	'Catarina',	'Vergara',	55,	51000,	'4036283141',	'Business',	'2013-12-5'),
(1035,	'Mariano',	'Bowler',	22,	84000,	'4036985049',	'Business',	'2014-2-23'),
(1036,	'Delsie',	'Saechao',	20,	45000,	'4038539299',	'Business',	'1997-2-17'),
(1037,	'Felicia',	'Sakai',	39,	62000,	'4037320105',	'Engineering',	'1996-3-14'),
(1038,	'Carmela',	'Howlett',	47,	45000,	'4039643511',	'Contractors',	'2012-4-27'),
(1039,	'Marnie',	'Schnabel',	28,	65000,	'4031389633',	'Accounting',	'2004-4-27'),
(1040,	'Lyda',	'Berney',	33,	29000,	'4038924252',	'Business',	'2002-6-5'),
(1041,	'Leatrice',	'Spano',	48,	84000,	'4032147140',	'HR',	'2011-10-20'),
(1042,	'Jennette',	'Engler',	43,	43000,	'4036417122',	'Business',	'2010-10-6'),
(1043,	'Ayesha',	'Haskell',	38,	47000,	'4039894473',	'Operation',	'2007-3-12'),
(1044,	'Debby',	'Tullier',	51,	63000,	'4039448424',	'Contractors',	'1998-1-19'),
(1045,	'Kathlyn',	'Christoff',	19,	55000,	'4036635586',	'Engineering',	'2018-10-9'),
(1046,	'Evelina',	'Crass',	23,	63000,	'4039096373',	'Business',	'2001-3-15'),
(1047,	'Mora',	'Adorno',	51,	49000,	'4033016347',	'Engineering',	'1998-3-1'),
(1048,	'Edith',	'Milo',	19,	46000,	'4034605099',	'Operation',	'2008-8-12'),
(1049,	'Tamela',	'Klock',	31,	50000,	'4037518917',	'HR',	'2014-1-10'),
(1050,	'Georgetta',	'Batten',	55,	38000,	'4037029859',	'HR',	'1999-2-26');




INSERT INTO departmentDB (departmentName,bonusRate,vacationDays)
VALUES('Business',	0.02,	29),
('Operation',	0.13,	28),
('Accounting',	0.11,	27),
('Engineering',	0.02,	17),
('HR',	0.04,	31),
('Contractors',	0,	33);


/*	Use UPDATE STATEMENT to do something: Due to a business loss, management has decided to reduce bonous rates for all employees	*/
UPDATE departmentDB
SET bonusRate=0 WHERE bonusRate < 0.02;
UPDATE departmentDB
SET bonusRate=0.01 WHERE bonusRate BETWEEN 0.02 AND 0.04;
UPDATE departmentDB
SET bonusRate=0.05 WHERE bonusRate>0.05;




SELECT * FROM employeeDB
SELECT * FROM departmentDB
