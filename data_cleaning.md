# 🧹 Data Cleaning & Structure Audit

## Initial Data Type Inspection

The dataset was imported from CSV, resulting in multiple
numeric variables being stored as VARCHAR.

| Column Name | Initial Data Type |
|-------------|------------------|
| Glucose | decimal |
| BloodPressure | varchar |
| SkinThickness | varchar |
| Insulin | varchar |
| BMI | varchar |
| DiabetesPedigreeFunction | varchar |
| Age | varchar |
| Outcome | varchar |

## Cleaning Actions Taken

- Converted BMI to FLOAT
- Converted Glucose to DECIMAL(10,2)
- Identified additional variables requiring type conversion
- Replaced biologically implausible zero values with NULL

## Rationale

Correct data types are essential to:
- Perform valid statistical aggregation (AVG, SUM)
- Ensure proper logical comparisons
- Avoid incorrect string-based comparisons
