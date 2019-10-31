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

SELECT * FROM Course_Records_1101;
SELECT * FROM GradeTable;
SELECT * FROM StudentRecords;
