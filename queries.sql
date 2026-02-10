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

-- Mean BMI and sample size by diabetes outcome
SELECT
    outcome,
    COUNT(*) AS n_participants,
    AVG(TRY_CAST(bmi AS FLOAT)) AS mean_bmi
FROM dbo.diabetes_dataset
WHERE TRY_CAST(bmi AS FLOAT) IS NOT NULL
GROUP BY outcome;

-- 
