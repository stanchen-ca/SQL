/*	Query_CreateCourse_Records_1101	*/
USE CourseReviewProject

/*
In this Query, the objective is to
1. examine the contents from tables: 
	-gradeRecordModuleV
	-GradeTable
	-StudentRecords
2. perform a threeway inner join to create a table Course_Records_1101
*/
SELECT * FROM gradeRecordModuleV;
SELECT * FROM GradeTable;
SELECT * FROM StudentRecords;

SELECT 
	StudentRecords.studentID, 
	gradeRecordModuleV.Midterm_exam, 
	gradeRecordModuleV.Finalexam,
	gradeRecordModuleV.Cw1,	
	gradeRecordModuleV.Cw2,
	gradeRecordModuleV.Totalpoints,
	gradeRecordModuleV.Studentaverage,
	GradeTable.gradeID
INTO 
	Course_Records_1101
FROM 
	gradeRecordModuleV
INNER JOIN	StudentRecords
ON	gradeRecordModuleV.studentID=StudentRecords.studentID
INNER JOIN	GradeTable
ON	gradeRecordModuleV.Grade=GradeTable.Grade;






CREATE CLUSTERED INDEX [idx_Course_Records_1101] ON [Course_Records_1101]
(
studentID ASC
);



SELECT * FROM Course_Records_1101;
SELECT * FROM GradeTable;
SELECT * FROM StudentRecords;
SELECT * FROM Course_Info_Table;

ALTER TABLE Course_Records_1101	ADD courseID INT;
UPDATE Course_Records_1101 SET courseID=1101; 

CREATE TABLE EnrollmentRecords
(
studentID INT,
courseID INT
);

CREATE TABLE Course_Info_Table
(
courseID INT PRIMARY KEY,
courseName VARCHAR(50),
instructor VARCHAR(50)
);

INSERT INTO Course_Info_Table
VALUES(1101,'Introduction to SQL','Arta F.');



ALTER TABLE Course_Records_1101 ADD CONSTRAINT PK_Course_Records_1101 PRIMARY KEY (studentID);
-- Adding establishing foreign key relationships
ALTER TABLE Course_Records_1101 ADD CONSTRAINT FK_studentID FOREIGN KEY (studentID) REFERENCES StudentRecords(studentID);
ALTER TABLE Course_Records_1101 ADD CONSTRAINT FK_gradeID FOREIGN KEY (gradeID) REFERENCES GradeTable(gradeID);
ALTER TABLE Course_Records_1101 ADD CONSTRAINT FK_courseID FOREIGN KEY (courseID) REFERENCES Course_Info_Table(courseID);

