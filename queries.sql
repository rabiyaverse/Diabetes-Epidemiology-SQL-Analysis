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

-- Diabetes Prevalence by BMI Category
SELECT 
    CASE 
        WHEN TRY_CAST(Glucose AS FLOAT) < 100 THEN '<100 (Normal)'
        WHEN TRY_CAST(Glucose AS FLOAT) BETWEEN 100 AND 125 THEN '100–125 (Impaired)'
        WHEN TRY_CAST(Glucose AS FLOAT) >= 126 THEN '≥126 (High)'
        ELSE 'Missing'
    END AS glucose_category,

    COUNT(*) AS n_total,
    SUM(CASE WHEN Outcome = 1 THEN 1 ELSE 0 END) AS diabetes_n,

    ROUND(
        100.0 * SUM(CASE WHEN Outcome = 1 THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS diabetes_percent

FROM diabetes_dataset
WHERE Glucose IS NOT NULL
GROUP BY 
    CASE 
        WHEN TRY_CAST(Glucose AS FLOAT) < 100 THEN '<100 (Normal)'
        WHEN TRY_CAST(Glucose AS FLOAT) BETWEEN 100 AND 125 THEN '100–125 (Impaired)'
        WHEN TRY_CAST(Glucose AS FLOAT) >= 126 THEN '≥126 (High)'
        ELSE 'Missing'
    END
ORDER BY glucose_category;
