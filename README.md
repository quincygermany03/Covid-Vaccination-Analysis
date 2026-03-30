# COVID-Vaccination-Analysis-SQL-Tableau

## Executive Summary
This project analyzes COVID-19 vaccination patterns across patient populations using SQL-based data pipelines and Tableau visualization. It identifies active patients and evaluates vaccination compliance across demographic groups including age, race, and geographic location.

Unlike simple descriptive analysis, this approach:
- Filters clinically relevant populations using encounter data  
- Derives patient-level features through SQL transformations  
- Tracks earliest vaccination events using aggregation logic  
- Produces structured datasets for downstream analytics  

The result is a clean, analysis-ready dataset that supports demographic insights and healthcare decision-making.

---

## Dashboard Preview


<img width="900" height="3300" alt="Dashboard 1" src="https://github.com/user-attachments/assets/f201cdd5-c80d-4fb9-b0b8-ced8cd4f2fff" />

---



## Business / Healthcare Motivation
Understanding vaccination patterns is critical for improving public health outreach and identifying disparities in care access.

Key questions:
- Which demographic groups have lower vaccination rates?  
- How does vaccination vary across race and county?  
- What proportion of active patients are vaccinated?  

This framework enables:
- Data-driven public health interventions  
- Identification of underserved populations  
- Scalable analytics for healthcare reporting  

---

## Data
Time Period: 2019–2020  
Granularity: Patient-level  

### Sources
- Patient demographic data (`patients`)  
- Clinical encounters (`encounters`)  
- Immunization records (`immunizations`)  

---

## Processing
- Filtered active patients with encounters in timeframe  
- Excluded deceased patients  
- Applied age eligibility filter (≥ 6 months)  
- Extracted earliest COVID vaccination date per patient  
- Joined demographic and vaccination datasets  
- Created binary vaccination indicator (1 = vaccinated, 0 = not)  

---

## Analytical Approach

### Cohort Definition
Active patients defined by:
- Encounter activity (2019–2020)  
- Alive status  
- Age eligibility  

### Feature Engineering
- Earliest vaccination date using `MIN()`  
- Binary vaccination flag using `CASE WHEN`  
- Patient-level dataset via `LEFT JOIN`  

### Core SQL Concepts
- Common Table Expressions (CTEs)  
- Joins and subqueries  
- Aggregation functions  
- Conditional logic  

---

## Key Results
- Vaccination status successfully derived for all active patients  
- Dataset structured for demographic analysis and visualization  
- Enabled breakdowns by age, race, and county  
- Created foundation for Tableau dashboard insights  

---

## Interpretation
This dataset allows analysts to quantify vaccination uptake and identify disparities across populations. It supports further analysis such as compliance rates, geographic trends, and demographic segmentation.

---

## Tech Stack
- PostgreSQL (Data extraction, cleaning, transformation)  
- SQL (CTEs, joins, aggregation, feature engineering)  
- Tableau (Dashboard visualization)  

---

## Notes
- Data used is synthetic/sample data for portfolio purposes  
- Project demonstrates end-to-end data pipeline development from raw data to visualization  
