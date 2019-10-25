USE db_oct25

DROP TABLE employeeDB
DROP TABLE departmentDB

CREATE TABLE employeeDB(
/*	Use IDENTITY(10001,1) to enter a auto-assign ID starting at 10001,
increament of 1 each time a new employee is entered.	*/ 
employeeID int IDENTITY(10001,1) PRIMARY KEY, 
firstName varchar(250),
lastName varchar(250),
age int,
baseSalary money,
phone varchar(20),
departmentName varchar(50),
hiredSince date,
vacDays int
)

CREATE TABLE departmentDB(
departmentName varchar(20) PRIMARY KEY,
bonusRate float,
vacpYear int
)


INSERT INTO employeeDB(firstName,lastName,age,baseSalary,phone,departmentName,hiredSince,vacDays)
VALUES(	'Shaniqua',	'Bonney',	44,	53000,	'4031808759',	'Operation',	'2017-1-19',	37),
(	'Pamella',	'Studstill',	34,	57000,	'4031740986',	'Operation',	'2003-1-3',	25),
(	'Elizebeth',	'Desmarais',	44,	30000,	'4033526337',	'Accounting',	'2006-3-5',	32),
(	'Jessika',	'Bey',	49,	66000,	'4036116526',	'HR',	'2008-8-11',	35),
(	'Elina',	'Fulghum',	19,	46000,	'4039807707',	'Engineering',	'1999-7-24',	2),
(	'Deborah',	'Strandberg',	49,	68000,	'4036034950',	'Business',	'2019-4-19',	25),
(	'Bettina',	'Sakai',	19,	45000,	'4033505491',	'Engineering',	'1999-5-28',	2),
(	'Gilda',	'Mauriello',	46,	67000,	'4039891585',	'Operation',	'2006-8-2',	39),
(	'Glinda',	'Rideaux',	41,	41000,	'4032095720',	'Business',	'2006-3-18',	36),
(	'Wilhelmina',	'Deshong',	18,	64000,	'4036878392',	'Business',	'1996-5-19',	29),
(	'Lakenya',	'Blankenship',	42,	56000,	'4037634291',	'Engineering',	'2009-11-6',	34),
(	'Ciera',	'Riviera',	41,	63000,	'4034264988',	'Accounting',	'2005-1-6',	34),
(	'Keva',	'Glatt',	33,	28000,	'4035849935',	'Engineering',	'2010-6-11',	36),
(	'Elisa',	'Egerton',	52,	79000,	'4035530746',	'Contractors',	'2001-8-1',	6),
(	'Love',	'Gidley',	34,	83000,	'4032222958',	'Engineering',	'2014-8-28',	20),
(	'Delinda',	'Hanes',	29,	37000,	'4031591537',	'Business',	'2000-11-22',	4),
(	'Chang',	'Cape',	27,	47000,	'4036000097',	'Engineering',	'1998-7-20',	5),
(	'Niesha',	'Driggs',	46,	42000,	'4036223370',	'Operation',	'2013-3-28',	10),
(	'Dorotha',	'Whited',	25,	67000,	'4039170586',	'Contractors',	'2000-10-5',	35),
(	'Mariela',	'Horace',	55,	58000,	'4035423143',	'HR',	'2012-4-4',	37),
(	'Ema',	'Schober',	52,	37000,	'4032717861',	'HR',	'2008-8-4',	35),
(	'Cherise',	'Cape',	54,	57000,	'4031119985',	'HR',	'2004-9-28',	5),
(	'Ute',	'Hullinger',	45,	56000,	'4032307490',	'Business',	'2008-8-3',	23),
(	'Rhonda',	'Lasher',	41,	30000,	'4032329498',	'HR',	'2019-9-18',	22),
(	'Aide',	'Wiggin',	35,	85000,	'4035865163',	'Business',	'2018-12-23',	35),
(	'Janet',	'Awad',	26,	48000,	'4035981233',	'Engineering',	'2018-11-28',	13),
(	'Antione',	'Zartman',	55,	77000,	'4031137883',	'Operation',	'2012-8-15',	8),
(	'Cira',	'Gwozdz',	22,	44000,	'4039180664',	'HR',	'2003-12-16',	10),
(	'Charolette',	'Girardin',	46,	40000,	'4035499295',	'Business',	'2015-1-3',	19),
(	'Nila',	'Warshaw',	38,	67000,	'4037143162',	'HR',	'2009-4-1',	16),
(	'Shon',	'Hampson',	34,	49000,	'4032775360',	'Contractors',	'2000-1-13',	4),
(	'Lilly',	'Foxworth',	51,	82000,	'4033811190',	'Business',	'2013-1-18',	10),
(	'Terica',	'Lasher',	38,	63000,	'4031507609',	'Contractors',	'2016-10-24',	25),
(	'Catarina',	'Vergara',	38,	46000,	'4035599598',	'Operation',	'1997-3-9',	30),
(	'Mariano',	'Bowler',	47,	49000,	'4035897566',	'Engineering',	'2017-3-2',	21),
(	'Delsie',	'Saechao',	18,	75000,	'4035783619',	'HR',	'1996-8-23',	21),
(	'Felicia',	'Sakai',	26,	65000,	'4032084575',	'Business',	'2012-6-28',	9),
(	'Carmela',	'Howlett',	43,	65000,	'4036136739',	'HR',	'2015-12-19',	23),
(	'Marnie',	'Schnabel',	34,	61000,	'4033708913',	'Contractors',	'2000-8-13',	37),
(	'Lyda',	'Berney',	20,	52000,	'4033007735',	'Business',	'1997-5-15',	24),
(	'Leatrice',	'Spano',	20,	77000,	'4039068917',	'Operation',	'2001-5-18',	32),
(	'Jennette',	'Engler',	37,	59000,	'4031389132',	'HR',	'2007-1-21',	13),
(	'Ayesha',	'Haskell',	49,	26000,	'4031034367',	'Contractors',	'2019-5-4',	7),
(	'Debby',	'Tullier',	21,	58000,	'4038432640',	'Accounting',	'2014-9-4',	22),
(	'Kathlyn',	'Christoff',	27,	54000,	'4034157811',	'Contractors',	'2018-4-25',	5),
(	'Evelina',	'Crass',	30,	57000,	'4032915718',	'Business',	'2015-6-12',	13),
(	'Mora',	'Adorno',	20,	30000,	'4031707439',	'HR',	'2012-5-8',	5),
(	'Edith',	'Milo',	29,	30000,	'4032639695',	'Business',	'2002-10-3',	32),
(	'Tamela',	'Klock',	19,	47000,	'4031899734',	'Business',	'1998-2-13',	13),
(	'Georgetta',	'Batten',	34,	60000,	'4031736740',	'Operation',	'2010-2-14',	10);



INSERT INTO departmentDB (departmentName,bonusRate,vacpYear)
VALUES('Business',	0.17,	33),
('Operation',	0.15,	13),
('Accounting',	0.09,	21),
('Engineering',	0.18,	12),
('HR',	0.17,	30),
('Contractors',	0.14,	28),
('Temp Contractors',	0,	0),
('Internship',	0,	0);




/*	Use UPDATE STATEMENT to do something: Due to a business loss, management has decided to reduce bonous rates for all employees	*/
UPDATE departmentDB
SET bonusRate=0 WHERE bonusRate < 0.02;
UPDATE departmentDB
SET bonusRate=0.01 WHERE bonusRate BETWEEN 0.02 AND 0.04;
UPDATE departmentDB
SET bonusRate=0.05 WHERE bonusRate>0.05;

/*	Contractor policies has changed, contractors' accumulated vacation days needs to be set back to 0	*/
UPDATE employeeDB
SET vacDays=0 where departmentName='Contractors';


/*	We have a Business new hire David Smith, age 25, salaried at 40,000, he signed his contracts on Oct 25, 2019 */
INSERT INTO employeeDB(firstName,lastName,age,baseSalary,phone,departmentName,hiredSince,vacDays)
VALUES('David',	'Smith',	25,	40000,	'4038145108',	'Business',	'2019-10-25',	0);

/*	We have Hired a consultant Roger Cyath, age 33, salaried at 180,000, he signed his contracts on Oct 21, 2019 */
INSERT INTO employeeDB(firstName,lastName,age,baseSalary,phone,departmentName,hiredSince,vacDays)
VALUES('Roger',	'Cyath',	33,	180000,	'4032155256',	'Consultant',	'2019-10-21',	0);



/*	Practicing JOIN statements:
Join the two tables by using the following commands:
	INNER JOIN 
	LEFT OUTER JOIN 
	RIGHT OUTER JOIN
	FULL OUTER JOIN		*/

/*	INNER JOIN, only both records matched in LEFT table and RIGHT table is included	*/
SELECT employeeID,firstName,lastName,age,baseSalary,phone,employeeDB.departmentName,bonusRate,hiredSince,vacpYear,vacDays
FROM employeeDB
INNER JOIN departmentDB
ON employeeDB.departmentName = departmentDB.departmentName;


/*	LEFT OUTER JOIN, everything from the left table is included	*/
SELECT employeeID,firstName,lastName,age,baseSalary,phone,departmentDB.departmentName,bonusRate,hiredSince,vacpYear,vacDays
FROM employeeDB
LEFT JOIN departmentDB
ON employeeDB.departmentName = departmentDB.departmentName;

/*	RIGHT OUTER JOIN, all criterias from right table is included	*/

SELECT employeeID,firstName,lastName,age,baseSalary,phone,departmentDB.departmentName,bonusRate,hiredSince,vacpYear,vacDays
FROM employeeDB
RIGHT JOIN departmentDB
ON employeeDB.departmentName = departmentDB.departmentName;


SELECT employeeID,firstName,lastName,age,baseSalary,phone,departmentDB.departmentName,bonusRate,hiredSince,vacpYear,vacDays
FROM employeeDB
FULL OUTER JOIN departmentDB
ON employeeDB.departmentName = departmentDB.departmentName;



SELECT * FROM employeeDB
SELECT * FROM departmentDB
