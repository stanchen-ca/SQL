/* Dataset extracted from https://www.kaggle.com/pavansubhasht/ibm-hr-analytics-attrition-dataset/download */

USE normalization_practice
ALTER TABLE HREmployeeAttrition ADD employeeID int IDENTITY(10001,1);
SELECT * FROM HREmployeeAttrition;

/* Create a simplieifed version of the source data for the purpose for the practice
This create a first normal form simplifiedTable as a starting point. */
SELECT employeeID,BusinessTravel,Department,EducationField 
INTO simplifiedTable
FROM HREmployeeAttrition;
SELECT * FROM simplifiedTable;

/* Create a table with distinct BusinessTravel entries to normalize this entry */
SELECT DISTINCT BusinessTravel
INTO normalizeBusiness
FROM simplifiedTable;
ALTER TABLE NormalizeBusiness 

/* Add column businessID and set it as primary key for this table; */
ADD businessID int IDENTITY(1,1);
ALTER TABLE NormalizeBusiness 

/*	Add constraint to set businessID as primary key.	*/
ADD CONSTRAINT PK_NormalizeBusiness PRIMARY KEY (businessID);
SELECT * FROM normalizeBusiness;

/*	Normalizing the Department column
First, select distinct values from the department column*/ 
SELECT DISTINCT Department
INTO normalizeDepartment
FROM simplifiedTable;
ALTER TABLE normalizeDepartment 
ADD departmentID int IDENTITY(1,1);

ALTER TABLE normalizeDepartment 
ADD CONSTRAINT PK_normalizeDepartment PRIMARY KEY (departmentID);
SELECT * FROM normalizeDepartment;

/*	Perform the same normalizing procedures for EducationField	*/
SELECT DISTINCT EducationField
INTO normalizeEducationField
FROM simplifiedTable;
ALTER TABLE normalizeEducationField 
ADD educationFieldID int IDENTITY(1,1);
ALTER TABLE normalizeEducationField 
ADD CONSTRAINT PK_normalizeEducationField PRIMARY KEY (educationFieldID) ;
SELECT * FROM normalizeEducationField;


/*	Using inner join to connect a new normalized table with ids of previously normalized columns	*/
SELECT simplifiedTable.employeeID, normalizeBusiness.businessID, normalizeDepartment.departmentID, normalizeEducationField.educationFieldID
INTO normalizedTable 
FROM simplifiedTable
INNER JOIN normalizeBusiness 
ON simplifiedTable.BusinessTravel=normalizeBusiness.BusinessTravel
INNER JOIN normalizeDepartment 
ON simplifiedTable.Department=normalizeDepartment.Department
INNER JOIN normalizeEducationField 
ON simplifiedTable.EducationField=normalizeEducationField.EducationField;

-- Setting employeeID as primary key
ALTER TABLE normalizedTable ADD CONSTRAINT PK_normalizedTable PRIMARY KEY (employeeID);
-- Adding establishing foreign key relationships
ALTER TABLE normalizedTable ADD CONSTRAINT FK_businessID FOREIGN KEY (businessID) REFERENCES normalizeBusiness(businessID);
ALTER TABLE normalizedTable ADD CONSTRAINT FK_departmentID FOREIGN KEY (departmentID) REFERENCES normalizeDepartment(departmentID);
ALTER TABLE normalizedTable ADD CONSTRAINT FK_educationFieldID FOREIGN KEY (educationFieldID) REFERENCES normalizeEducationField(educationFieldID);


SELECT * FROM normalizedTable;


/*	Create a View as a normalized view that contains all the information from where we started.	*/
CREATE VIEW [normalizedView] AS
SELECT normalizedTable.employeeID, normalizeBusiness.BusinessTravel, normalizeDepartment.Department, normalizeEducationField.EducationField
FROM normalizedTable 
INNER JOIN normalizeBusiness 
ON normalizedTable.businessID=normalizeBusiness.businessID
INNER JOIN normalizeDepartment
ON normalizedTable.departmentID=normalizeDepartment.departmentID
INNER JOIN normalizeEducationField
ON normalizedTable.educationFieldID=normalizeEducationField.educationFieldID;


SELECT * FROM [normalizedview];
