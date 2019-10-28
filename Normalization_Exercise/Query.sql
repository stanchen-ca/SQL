-- Dataset extracted from https://www.kaggle.com/pavansubhasht/ibm-hr-analytics-attrition-dataset/download
use normalization_practice
-- ALTER TABLE HREmployeeAttrition ADD employeeID int IDENTITY(10001,1);
-- SELECT * FROM HREmployeeAttrition;

DROP Table NormalizeTable;
DROP Table normalizeBusiness;
DROP Table normalizeDepartment;
DROP Table normalizeEducationField;

SELECT employeeID,BusinessTravel,Department,EducationField 
INTO NormalizeTable
FROM HREmployeeAttrition;

SELECT * FROM NormalizeTable;


SELECT DISTINCT BusinessTravel
INTO normalizeBusiness
FROM NormalizeTable;
ALTER TABLE NormalizeBusiness ADD businessID int IDENTITY(1,1);
SELECT * FROM normalizeBusiness;



SELECT DISTINCT Department
INTO normalizeDepartment
FROM NormalizeTable;
ALTER TABLE normalizeDepartment ADD departmentID int IDENTITY(1,1);
SELECT * FROM normalizeDepartment;


SELECT DISTINCT EducationField
INTO normalizeEducationField
FROM NormalizeTable;
ALTER TABLE normalizeEducationField ADD educationFieldID int IDENTITY(1,1);
SELECT * FROM normalizeEducationField;



SELECT NormalizeTable.employeeID, normalizeBusiness.businessID, normalizeDepartment.departmentID, normalizeEducationField.educationFieldID
FROM (((NormalizeTable
INNER JOIN normalizeBusiness ON NormalizeTable.BusinessTravel=normalizeBusiness.BusinessTravel)
INNER JOIN normalizeDepartment ON NormalizeTable.Department=normalizeDepartment.Department)
INNER JOIN normalizeEducationField ON NormalizeTable.EducationField=normalizeEducationField.EducationField);
