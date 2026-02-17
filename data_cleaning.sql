-- step 1: check the data type first

SELECT 
    COLUMN_NAME,
    DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'diabetes_dataset';

-- step 2: Convert Numeric Variables Stored as VARCHAR

ALTER TABLE dbo.diabetes_dataset
ALTER COLUMN BMI FLOAT;

ALTER TABLE dbo.diabetes_dataset
ALTER COLUMN BloodPressure INT;

ALTER TABLE dbo.diabetes_dataset
ALTER COLUMN SkinThickness INT;

ALTER TABLE dbo.diabetes_dataset
ALTER COLUMN Insulin INT;

ALTER TABLE dbo.diabetes_dataset
ALTER COLUMN Age INT;

ALTER TABLE dbo.diabetes_dataset
ALTER COLUMN Outcome INT;

--  step 3: Handle Implausible Zero Values

UPDATE dbo.diabetes_dataset
SET BMI = NULL
WHERE BMI = 0;

UPDATE dbo.diabetes_dataset
SET Glucose = NULL
WHERE Glucose = 0;

UPDATE dbo.diabetes_dataset
SET BloodPressure = NULL
WHERE BloodPressure = 0;

UPDATE dbo.diabetes_dataset
SET SkinThickness = NULL
WHERE SkinThickness = 0;

UPDATE dbo.diabetes_dataset
SET Insulin = NULL
WHERE Insulin = 0;
