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

SELECT * FROM StudentRecords;
