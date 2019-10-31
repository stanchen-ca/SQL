/*	Query_CreateGradeTable	*/
USE CourseReviewProject
SELECT * FROM gradeRecordModuleV;

/*	Create a GradeTable from the master dataset and examine it	*/
SELECT DISTINCT Grade 
INTO tempGradeTable
FROM gradeRecordModuleV 
ORDER BY Grade ASC;

/*	After examining the dataset, found the following entries are missing from this table
Missing Letter Grades:
A
A+
B
Therefore, we need to add these three entries to the newly created GradeTable
*/

INSERT INTO tempGradeTable(Grade)
VALUES('A'),
('A+'),
('B');

/*
Now, we'll generate a new grade table with complete entries,
and after verifying the correctness of the gradetable, we will remove/drop
the temp grade table from the database.
*/

CREATE TABLE GradeTable(
gradeID INT IDENTITY(1,1) PRIMARY KEY,
Grade VARCHAR(50)
);
INSERT INTO GradeTable
SELECT Grade FROM tempGradeTable
ORDER BY Grade ASC;

SELECT * FROM tempGradeTable;
SELECT * FROM GradeTable;
DROP TABLE tempGradeTable;

