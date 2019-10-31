/*	Query_CreateStudentRecords	*/
USE CourseReviewProject

/*
The goal of this Query is to create a studentRecords, 
this table is generated from selecting distinct records
of studentID,First_name,Lastname From the source dataset
*/

SELECT * FROM gradeRecordModuleV;

SELECT DISTINCT studentID,First_name,Lastname 
	INTO StudentRecords
	FROM gradeRecordModuleV;

/*	Examining the discrepencies	*/

SELECT COUNT (DISTINCT studentID)
	FROM StudentRecords;

SELECT COUNT (studentID)
	FROM StudentRecords;

SELECT * FROM StudentRecords 
	WHERE studentID IN (SELECT studentID 
	FROM StudentRecords 
	GROUP BY studentID having count(studentID)>1)

/*	
While examining the records, we've found that there are
discrepencies in the student ID records
-----
studentID	First_name	Lastname
35932		Lynde		Ducker
*35932		Tallulah	Lynes		<--(to be removed)
47058		Chen		Dumbleton
*47058		Jaye		Margett		<--(to be removed)
64698		Aurea		Longea
*64698		Claudian	Burree		<--(to be removed)
-----
*/


/*
Intended operations:
In order to fix these discrepencies, 
1. I'll first remove the second repeating student ID entry.
2. Appliy identity constraint to studentID column
3. Add the three removed entries back to the table 
*/


/*	Storing entries with discrepencies in Table discrepenciesEntries	*/
SELECT	studentID,First_name,Lastname 
	INTO discrepenciesEntries
	FROM StudentRecords
	WHERE (studentID=35932 AND Lastname='Lynes') OR
	(studentID=47058 AND Lastname='Margett') OR
	(studentID=64698 AND Lastname='Burree');
SELECT * FROM discrepenciesEntries;


/*	Delete entries with discrepencies from StudentRecords	*/
DELETE FROM StudentRecords WHERE studentID=35932 AND Lastname='Lynes';
DELETE FROM StudentRecords WHERE studentID=47058 AND Lastname='Margett';
DELETE FROM StudentRecords WHERE studentID=64698 AND Lastname='Burree';


/*	Apply PRIMARY constraints to studentID in StudentRecords	*/
ALTER TABLE StudentRecords ADD CONSTRAINT pk_StudentRecords PRIMARY KEY(studentID);

/*	Re-applying the deleted records from the table at the next avaliable ID number
The method I used to auto generate a unique ID is: (SELECT MAX(studentID)+1 FROM studentRecords) ;
*/

INSERT INTO studentRecords(studentID,First_name,Lastname) VALUES((SELECT MAX(studentID)+1 FROM studentRecords),'Tallulah','Lynes');
INSERT INTO studentRecords(studentID,First_name,Lastname) VALUES((SELECT MAX(studentID)+1 FROM studentRecords),'Jaye','Margett');
INSERT INTO studentRecords(studentID,First_name,Lastname) VALUES((SELECT MAX(studentID)+1 FROM studentRecords),'Claudian','Burree');


SELECT * FROM StudentRecords;
