# Restaurant-Inspection-project-Data cleaning & Analysis

## Project Overview
This project focuses on the cleaning and analysis of Restaurant Health Inspection data from New York City (NYC). The dataset contains detailed information on restaurant inspections, including restaurant identifiers, cuisine types, inspection outcomes, food safety grades, violation descriptions, and inspection records across various neighborhoods in New York City.

An initial assessment of the dataset revealed several data quality issues, including missing values, duplicate records, inconsistent entries, irregular formatting, and other discrepancies that could affect the accuracy of subsequent analysis.To ensure the dataset was reliable and analysis-ready, a comprehensive data cleaning process was carried out using Microsoft Excel. This involved removing duplicates, standardizing text formats, handling missing values, correcting irregular patterns, and improving overall data consistency.

The cleaned dataset provides a solid foundation for exploring inspection trends, identifying common food safety violations, evaluating restaurant performance, and gaining insights into public health compliance across NYC restaurants.

## Dataset Information
**Dataset Name:** NYC Restaurant Health Inspection Dataset

**Source:** New York City Open Data

**File Format:** CSV (.csv)

**Number of Records:** [285,184]

**Number of Features:** [26]

| Column Name | Description |
|------------|-------------|
| CAMIS | Unique identifier assigned to each restaurant |
| DBA | Restaurant name (Doing Business As) |
| BORO | Borough where the restaurant is located |
| BUILDING | Building number of the restaurant address |
| STREET | Street name of the restaurant |
| ZIPCODE | ZIP code of the restaurant location |
| PHONE | Restaurant contact number |
| CUISINE DESCRIPTION | Type of cuisine served |
| INSPECTION DATE | Date when the inspection was conducted |
| ACTION | Action taken after inspection |
| VIOLATION CODE | Code representing a specific health violation |
| VIOLATION DESCRIPTION | Description of the health violation |
| CRITICAL FLAG | Indicates whether the violation is critical |
| SCORE | Inspection score assigned to the restaurant |
| GRADE | Restaurant grade (A, B, C, etc.) |
| GRADE DATE | Date the grade was issued |

### Dataset Scope

The dataset contains restaurant inspection records collected by the New York City Department of Health and Mental Hygiene (DOHMH). It includes information on restaurant locations, inspection outcomes, food safety violations, grades, and regulatory actions across the five boroughs of New York City.

## Data Cleaning Process
To ensure data quality and reliability, several cleaning operations were performed in **Microsoft Excel** to address duplicates, missing values, inconsistent formatting, and irregular records.

### 1. Duplicate Removal
- Identified duplicate records in the **CAMIS** column.
- Removed duplicate entries using Excel's **Remove Duplicates** feature.

### 2. Text Standardization
The following columns contained extra spaces, mixed letter cases, and inconsistent values:

- **DBA**
- **STREET**

Cleaning techniques applied:
- Used the `TRIM()` function to remove leading and trailing spaces.
- Used the `UPPER()` function to standardize text formatting.
- Applied filtering tools to identify and remove inconsistent records.

### 3. Handling Missing Values
Missing values were replaced with appropriate placeholders to maintain data completeness.

| Column | Missing Value Replacement |
|--------|---------------------------|
| ZIPCODE | `0` |
| PHONE NUMBER | `0` |
| CUISINE DESCRIPTION | `any` |
| ACTION | `Not yet inspected` |
| VIOLATION CODE | `Not available` |
| VIOLATION DESCRIPTION | `Not available` |
| SCORE | `00` |
| GRADE | `Not available` |
| GRADE DATE | `Not issued` |

### 4. Correcting Irregular Data Patterns
The following columns contained irregular or inconsistent data patterns:

- **BORO (LOCATION)**
- **BUILDING**
- **PHONE NUMBER**

Cleaning actions performed:
- Reviewed records using Excel filtering tools.
- Used **Find and Replace** to remove irregular patterns.
- Deleted inconsistent records where necessary.
- Filled missing values in the **BUILDING** column.

### 5. Data Validation
The following columns were inspected and found to have no missing values or inconsistencies:

- **INSPECTION DATE**
- **CRITICAL**

No cleaning actions were required for these fields.

---

## Cleaning Outcome

After the cleaning process:

- Duplicate records were removed.
- Text fields were standardized.
- Missing values were handled appropriately.
- Inconsistent and irregular records were corrected.
- Dataset completeness, consistency, and accuracy were significantly improved.

## Exploratory Data Analysis
The following questions guided the exploratory analysis:

- What are the most common cuisine types in NYC?
- Which borough has the highest number of restaurants?
- What are the most frequent health code violations?
- How are restaurant grades distributed?
- Are certain cuisine categories associated with higher inspection scores?
- How have inspection activities changed over time?

The results of these analyses are presented in the visualization and findings sections.

## Key Findings
- Manhattan has the MOST critical flag for violation
- The Bangladeshi cuisine has LOWEST average inspection score among all listed cuisine types
- Inspection scores worsened noticeable after 2020

## Tools Used
- Microsoft Excel
- SQL 
- Power BI

## Recommendations
- Intensify inspections in High-risk zip codes
- Targeted food safety training -Bangladeshi cuisine
- Address Post-2020 recovery gaps
- Stricter enforcement and policy reform.

## Dashboard
 <img width="1366" height="768" alt="Dashboard_preview" src="https://github.com/user-attachments/assets/12eecfb2-c374-437a-842a-e9bfc247a3c3" />
 <img width="1366" height="768" alt="Dashboard_preview2" src="https://github.com/user-attachments/assets/0e1c2c33-f8fc-4f2e-abc4-4a423ad0afa1" />

 


