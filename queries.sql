-- Outcome distribution
-- Outcome: 0 = no diabetes, 1 = diabetes

SELECT
  outcome,
  COUNT(*) AS n
FROM diabetes_dataset
GROUP BY outcome;
