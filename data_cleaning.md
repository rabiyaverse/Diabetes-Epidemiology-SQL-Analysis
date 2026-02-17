# 🧹 Data Cleaning & Structure Audit

##  1️⃣ Data Type Audit

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


## 2️⃣ Handling Implausible Values

The dataset contained zero values for variables where zero is
physiologically impossible:

- BMI
- Glucose
- BloodPressure
- SkinThickness
- Insulin

These zero values were recoded to NULL to properly represent missing data
and prevent bias in statistical calculations.

## Missing Data Summary

The following number of zero values were recoded to NULL:

- BMI: 11 records
- Glucose: 5 records
- BloodPressure: 35 records
- SkinThickness: 227 records
- Insulin: 374 records

Insulin and SkinThickness demonstrated substantial missingness,
which may limit their reliability in analytic comparisons.

