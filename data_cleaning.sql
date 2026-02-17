-- 1️⃣ Data Type Audit

SELECT 
    COLUMN_NAME,
    DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'diabetes_dataset';

-- Convert Numeric Variables Stored as VARCHAR

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

--  ## 2️⃣ Handling Implausible Values

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

-- Calculate percentage missing 
SELECT
  COUNT(*) AS total_rows,
  SUM(CASE WHEN Insulin IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS insulin_missing_pct,
  SUM(CASE WHEN SkinThickness IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS skin_missing_pct
FROM dbo.diabetes_dataset;

-- 3️⃣ Validation Checks
SELECT 
    MIN(BMI) AS min_bmi, MAX(BMI) AS max_bmi,
    MIN(Glucose) AS min_glucose, MAX(Glucose) AS max_glucose,
    MIN(BloodPressure) AS min_bp, MAX(BloodPressure) AS max_bp,
    MIN(Pregnancies) as min_pre, MAX(Pregnancies) as max_pre,
    MIN(Age) AS min_age, MAX(Age) AS max_age
FROM dbo.diabetes_dataset;


