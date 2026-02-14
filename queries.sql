-- View the whole table
SELECT *
FROM diabetes_dataset

-- Outcome distribution
-- Outcome: 0 = no diabetes, 1 = diabetes
SELECT
  outcome,
  COUNT(*) AS n
FROM diabetes_dataset
GROUP BY outcome;

-- Descriptive statistics by diabetes outcome
SELECT
    outcome,
    COUNT(*) AS n_participants,
    AVG(TRY_CAST(age AS FLOAT)) AS mean_age,
    AVG(TRY_CAST(bmi AS FLOAT)) AS mean_bmi,
    AVG(TRY_CAST(glucose AS FLOAT)) AS mean_glucose,
    AVG(TRY_CAST(bloodpressure AS FLOAT)) AS mean_bp
FROM dbo.diabetes_dataset
WHERE
    TRY_CAST(age AS FLOAT) IS NOT NULL
    AND TRY_CAST(bmi AS FLOAT) IS NOT NULL
GROUP BY outcome;

-- Mean BMI and sample size by diabetes outcome
SELECT
    outcome,
    COUNT(*) AS n_participants,
    AVG(TRY_CAST(bmi AS FLOAT)) AS mean_bmi
FROM dbo.diabetes_dataset
WHERE TRY_CAST(bmi AS FLOAT) IS NOT NULL
GROUP BY outcome;

-- Mean glucose level by diabetes outcome
SELECT
    outcome,
    ROUND(AVG(TRY_CAST(glucose AS FLOAT)), 1) AS mean_glucose
FROM diabetes_dataset
GROUP BY outcome;

-- Mean blood pressure by diabetes outcome 
SELECT 
  outcome,
  round(avg(try_cast(BloodPressure as float)), 1) as mean_bloodpressure 
from diabetes_dataset
group by outcome;

-- Mean age by diabetes outcome 
SELECT
    outcome,
    ROUND(AVG(TRY_CAST(age AS FLOAT)), 1) AS mean_age
FROM diabetes_dataset
GROUP BY outcome;
