# 🏥 HealthTrack – Hospital Performance & Quality Insights

## 🧠 Project by: Pranav J, Honey Mathur, Akash Kushwaha

---

## 📌 Project Description

This project analyzes hospital performance across various dimensions, including hospital types, emergency service availability, patient satisfaction, and ownership patterns. By examining national hospital data, the project uncovers key factors influencing healthcare quality and institutional effectiveness.
**Dataset Source:** [HealthData IQ – Hospital Insights & Patient Analytics]([https://www.kaggle.com/datasets/spscientist/students-performance-in-exams](https://www.kaggle.com/datasets/CMS/hospital-general-information))

---

## 🎯 Problem Statement

Despite advances in healthcare, hospital performance varies widely across states, hospital types, and ownership structures. The goal of this project is to:
- Analyze hospital distribution and performance trends across the U.S.
- Identify patterns in emergency service availability, hospital ratings, and patient satisfaction.
- Provide actionable recommendations for improving healthcare delivery and patient outcomes.

---

## 📖 Table of Contents

1. [Project Overview](#project-overview)
2. [Data Understanding](#data-understanding)
3. [Data Cleaning](#data-cleaning)
4. [Exploratory Data Analysis (EDA)](#eda)
5. [Insights Derived](#insights-derived)
6. [Suggestions](#suggestions)
7. [Challenges Faced](#challenges-faced)
8. [Future Scope](#future-scope)
9. [Final Outcome](#final-outcome)
10. [SQL Analysis File](#sql-analysis-file)
11. [Project Credits](#project-created-by)

---

## 🧩 Project Overview

This analysis focuses on:
- Hospital type distributions
- Emergency service readiness
- State-wise hospital ratings
- Patient satisfaction variations
- Ownership-based performance differences

---

## 🧾 Data Understanding

- Dataset includes thousands of hospital records across multiple states.
- Categorical variables include hospital type, ownership, emergency service availability, patient experience ratings, and national comparisons on care quality.
- Numerical data includes overall hospital ratings.

---

## 🧼 Data Cleaning

- Dropped records with missing county names.
- Filled missing footnote fields with "Unknown."
- Converted hospital ratings to numeric for accurate analysis.
- Added:
  - emergency_available: Binary indicator for emergency services.
  - Grouped state-wise emergency availability rates.
---

## 📊 EDA

### 🏥 Hospital Type Distribution Across States
![alt text](</Images/Distribution of Hospital Types Across States.png>)

### 🚨 Emergency Service Availability by State
![alt text](</Images/Emergency-Service Availability Rate by State.png>)

### ⭐ Top 5 and Bottom 5 States by Hospital Rating
![alt text](</Images/Top 5 and Bottom 5 States by Average Hospital Rating.png>)

### 😊 Patient Satisfaction by Hospital Type
![alt text](</Images/Patient Satisfaction by Hospital Type.png>)

### 📈 Distribution of Hospital Ratings by Type
![alt text](</Images/Distribution of Hospital Ratings by Hospital Types.png>)

### 🔥 Correlation Heatmap
![alt text](</Images/Correlation Heatmap of Numeric Variables.png>)

### 🏛️ Hospital Ownership Distribution Across States
![alt text](</Images/Distribution of Hospital Ownership Types Across States.png>)

### 🏥 Hospital Count by State
![alt text](</Images/Number of Hospitals per State.png>)

---

## 📍 Insights Derived

1. **Hospital Type Distribution**
   - General acute care hospitals are the most common.
   - Specialty hospitals tend to achieve better patient satisfaction scores.

2. **Emergency Service Impact**
   - States with higher emergency service availability typically have better-rated hospitals.

3. **State-Level Performance**
   - Significant disparities exist across states.
   - Top 5 states have consistently higher hospital ratings.

4. **Patient Satisfaction Trends**
   - Specialty hospitals outperform general hospitals in patient experience ratings.
     
5. **Ownership Influence**
   - Private and nonprofit hospitals generally score higher than government hospitals.

6. **Rating Spread**
   - Wide variability in hospital performance even within the same hospital type.

---

## 💡 Suggestions

1. **Expand Emergency Service Capabilities**
   - Increase emergency readiness, especially in lower-performing states.
     
2. **Support for Government Hospitals**
   - Improve infrastructure, staff training, and funding for government-owned facilities.

3. **Enhance Patient Satisfaction**
   - Focus on patient-centric initiatives, especially in general hospitals.

4. **Target Underperforming States**
   - Design state-specific improvement programs using top states as benchmarks.

5. **Adopt Best Practices from Specialty Hospitals**
   - General hospitals can replicate operational standards from specialty hospitals.
  
6. **Continuous Monitoring**
   - Implement real-time dashboards for proactive performance tracking.

---

## ⚠️ Challenges Faced

- Handling missing data while preserving meaningful records.
- Balancing detailed visualizations with simplicity for better readability.
- Designing clear grade/rating comparisons across hospital types and states.

---

## 🚀 Future Scope

- Apply machine learning models to predict hospital performance.
- Expand the dataset to include multi-year trends.
- Build interactive dashboards (Power BI or Tableau) for dynamic performance tracking.
- Integrate additional healthcare quality metrics for deeper insights.

---

## ✅ Final Outcome

This analysis revealed:
- Emergency services, hospital type, and ownership significantly influence performance.
- State-wise and hospital-type-specific trends are critical for healthcare planning.
- Data-driven visualizations help decision-makers quickly understand areas needing improvement.

---
## 🗂️ SQL Analysis File

You can find the SQL queries and logic used for backend analysis in the following file:

📄 [`SQL Analysis File.sql`](https://github.com/PRANAVJ2804/HealthData-IQ-Hospital-Insights-Patient-Analytics/blob/main/Sql%20Files/SQL%20Analysis%20File.sql)

---

## 🎓 Project Created By

**Pranav J**, **Honey Mathur**, and **Akash Kushwaha**
---
