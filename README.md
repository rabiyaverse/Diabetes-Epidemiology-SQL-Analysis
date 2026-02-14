# Diabetes-Epidemiology-SQL-Analysis
Practical epidemiology project using SQL on a Kaggle diabetes dataset to analyse how metabolic risk factors relate to diabetes outcomes, with exposure categorisation, stratified analyses, and crude association measures.

## Background
This project uses SQL to conduct descriptive and analytic epidemiological analyses
of diabetes risk factors in a cross-sectional dataset.

## 🎯 Research Objective
To examine the association between metabolic risk factors 
(BMI, glucose, blood pressure, insulin, and pregnancies) 
and diabetes status in a cross-sectional dataset using SQL.

## 📊 Dataset Overview
The dataset includes 768 individuals and variables such as:
- Age
- BMI
- Glucose
- Insulin
- Blood pressure
- Skin thickness
- Pregnancies
- Diabetes outcome (0 = no, 1 = yes)

## 📊 Descriptive Characteristics of the Study Population

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


## ❤️ BMI by Diabetes Outcome

The mean body mass index (BMI) differed between participants with and without diabetes as shown in Table 1. 

| Outcome | n_participants | Mean BMI |
|--------|----------------|----------|
| 0 (No diabetes) | 500 | 30.30 |
| 1 (Diabetes) | 268 | 35.14 |

Table 2. BMI by Diabetes Outcome 

This finding suggests a higher average BMI among individuals with diabetes in this dataset, consistent with established evidence linking obesity to increased risk of type 2 diabetes.

## 📊 Mean Glucose by Diabetes Outcome

| Outcome | Mean Glucose |
|--------:|-------------:|
| 1 (Diabetes) | 141.3 |
| 0 (No diabetes) | 110.0 |

Participants with diabetes had a substantially higher mean glucose level (141.3)
compared to those without diabetes (110.0), demonstrating a strong association
between elevated glucose and diabetes status.

## 🧪 Methods
Epidemiological analyses conducted using SQL include:
- Descriptive statistics
- Exposure categorisation (e.g. BMI groups)
- Outcome comparisons (diabetes vs no diabetes)
- Preliminary risk factor exploration

## 🔍 Key Skills Demonstrated
- SQL for health data analysis  
- Descriptive and analytic epidemiology  
- Chronic disease risk factor assessment  
- Clear communication of public health findings


## Contact  
For questions or collaboration, please contact:  
**Rabiyatul Adawiyah** – rabiyatuladawiyahnasution@gmail.com
