# Diabetes-Epidemiology-SQL-Analysis
Practical epidemiology project using SQL on a Kaggle diabetes dataset to analyse how metabolic risk factors relate to diabetes outcomes, with exposure categorisation, stratified analyses, and crude association measures. This project uses SQL to conduct descriptive and analytic epidemiological analyses
of diabetes risk factors in a cross-sectional dataset.

## Research Objective
To examine the association between metabolic risk factors 
(BMI, glucose, blood pressure, insulin, and pregnancies) 
and diabetes status in a cross-sectional dataset using SQL.

## Dataset Overview
The dataset includes 768 individuals and variables such as:
- Age
- BMI
- Glucose
- Insulin
- Blood pressure
- Skin thickness
- Pregnancies
- Diabetes outcome (0 = no, 1 = yes)

## Descriptive Characteristics of the Study Population

### Outcome Distribution

| Outcome | n | Percentage (%) |
|--------|----:|---------------:|
| No diabetes (0) | 500 | 65.1 |
| Diabetes (1) | 268 | 34.9 |

## Descriptive Characteristics of the Study Population

| Variable | Mean | SD |
|---------|-----:|---:|
| Age (years) | 33.2 | 11.8 |
| BMI (kg/m²) | 32.0 | 7.9 |
| Glucose | 120.9 | 32.0 |
| Blood Pressure | 69.1 | 19.4 |
| **Total participants** | **768** | — |

Table 1. Descriptive Characteristics of the Study Population

The study population consisted of 768 participants with a mean age of 33.2 years (SD = 11.8). The mean BMI was 32.0 kg/m² (SD = 7.9), indicating that, on average, participants were in the obese range. Mean glucose levels were 120.9, with substantial variability across the sample. Blood pressure also showed wide dispersion, suggesting heterogeneity in cardiometabolic risk profiles within the population.


##  BMI by Diabetes Outcome

The mean body mass index (BMI) differed between participants with and without diabetes as shown in Table 1. 

| Outcome | n_participants | Mean BMI |
|--------|----------------|----------|
| 0 (No diabetes) | 500 | 30.30 |
| 1 (Diabetes) | 268 | 35.14 |

Table 2. BMI by Diabetes Outcome 

This finding suggests a higher average BMI among individuals with diabetes in this dataset, consistent with established evidence linking obesity to increased risk of type 2 diabetes.

## Mean Glucose by Diabetes Outcome

| Outcome | Mean Glucose |
|--------:|-------------:|
| 1 (Diabetes) | 141.3 |
| 0 (No diabetes) | 110.0 |

Table 3 Glucose by Diabetes Outcome
Participants with diabetes had a substantially higher mean glucose level (141.3)
compared to those without diabetes (110.0), demonstrating a strong association
between elevated glucose and diabetes status.

## Mean Blood Pressure by Diabetes Outcome

| Outcome | Mean Blood Pressure |
|--------:|-------------------:|
| 1 (Diabetes) | 70.8 |
| 0 (No diabetes) | 68.2 |

Table 4  Blood Pressure by Diabetes Outcome

Participants with diabetes had slightly higher mean blood pressure
(70.8) compared to those without diabetes (68.2). The magnitude of
difference was modest relative to glucose and BMI.

## Mean Age by Diabetes Outcome

| Outcome | Mean Age |
|--------:|-------------------:|
| 1 (Diabetes) | 37.1 |
| 0 (No diabetes) | 31.2 |

Table 5 Mean Age by Diabetes Outcome 

## BMI Categories and Diabetes Prevalence

To examine the association between Body Mass Index (BMI) and diabetes, BMI was categorised into clinically meaningful groups:

- **Normal:** <25  
- **Overweight:** 25–29.9  
- **Obese:** ≥30  

### Cross-Tabulation Results

| BMI Category | n | Diabetes (n) | Diabetes (%) |
|--------------|----|--------------|--------------|
| <25 (Normal) | 106 | 7 | 6.6% |
| 25–29.9 (Overweight) | 179 | 40 | 22.35% |
| ≥30 (Obese) | 472 | 219 | 46.4% |

### Interpretation

A clear **dose–response relationship** is observed. Diabetes prevalence increases progressively across BMI categories:

- Only **6.6%** of individuals with normal BMI had diabetes.
- Prevalence increases to **22.35%** among overweight individuals.
- It rises sharply to **46.4%** among individuals with obesity.

This represents nearly a **sevenfold difference in prevalence** between the normal and obese groups (46.4% vs 6.6%), indicating a strong positive association between higher BMI and diabetes in this dataset.

### Public Health Insight

The findings are consistent with established epidemiological evidence that higher BMI is a major risk factor for type 2 diabetes. The observed gradient strengthens the biological plausibility of this association.

## Age Groups and Diabetes Prevalence

To explore the relationship between age and diabetes, age was categorised into meaningful life-stage groups:

- 21–29 years  
- 30–39 years  
- 40–49 years  
- ≥50 years  

### Cross-Tabulation Results

| Age Group | n | Diabetes (n) | Diabetes (%) |
|------------|----|--------------|--------------|
| 21–29 | 396 | 84 | 21.21% |
| 30–39 | 165 | 76 | 46.06% |
| 40–49 | 118 | 65 | 55.08% |
| ≥50 | 89 | 43 | 48.31% |

### Interpretation

A strong age-related gradient is observed in diabetes prevalence:

- In the youngest group (21–29 years), diabetes prevalence is **21.21%**.
- Prevalence increases sharply to **46.06%** in the 30–39 group.
- It peaks at **55.08%** in individuals aged 40–49.
- Among those aged ≥50, prevalence remains high at **48.31%**.

Overall, diabetes prevalence more than doubles between the youngest and middle-aged groups, indicating a strong positive association between increasing age and diabetes in this dataset.

### Public Health Insight

The findings are consistent with established epidemiological evidence that age is a major non-modifiable risk factor for type 2 diabetes. The increasing prevalence across age groups supports the importance of early screening and preventive interventions before middle adulthood.
## Methods
Epidemiological analyses conducted using SQL include:
- Descriptive statistics
- Exposure categorisation (e.g. BMI groups)
- Outcome comparisons (diabetes vs no diabetes)
- Preliminary risk factor exploration

## Key Skills Demonstrated
- SQL for health data analysis  
- Descriptive and analytic epidemiology  
- Chronic disease risk factor assessment  
- Clear communication of public health findings


## Contact  
For questions or collaboration, please contact:  
**Rabiyatul Adawiyah** – rabiyatuladawiyahnasution@gmail.com
