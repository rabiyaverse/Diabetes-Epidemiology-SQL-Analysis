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

## Calculate Percentage Missing

After recoding implausible zero values to NULL, the proportion of missing data was evaluated.

| Variable | Missing (%) |
|----------|-------------|
| Insulin | 48.7% |
| SkinThickness | 29.6% |

### Interpretation

Nearly half of the insulin values (48.7%) were missing, and approximately one-third
of skin thickness measurements (29.6%) were missing. 

This substantial missingness may limit the reliability of analyses involving
these variables and should be interpreted with caution.

Variables such as BMI and Glucose demonstrated minimal missingness and were
considered more robust for primary analyses.

## 3️⃣ Validation Checks

After correcting data types and handling missing values, minimum and maximum
values were inspected to ensure biological plausibility.

| Variable | Minimum | Maximum | Assessment |
|----------|---------|---------|------------|
| BMI | 18.2 | 67.1 | Within plausible human range (severe obesity possible) |
| Glucose | 44 | 199 | Within physiologically plausible limits |
| BloodPressure | 24 | 122 | Mostly plausible; one very low value noted |
| Pregnancies | 0 | 9 | Realistic reproductive range |
| Age | 21 | 81 | Appropriate adult age range |

### Interpretation

All variables fall within clinically reasonable ranges.  
A very low blood pressure value (24 mmHg) was observed but retained,
as isolated extreme values were minimal and not clearly erroneous.

No additional range-based exclusions were required.


