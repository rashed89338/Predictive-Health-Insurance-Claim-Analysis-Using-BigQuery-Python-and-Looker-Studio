# Predictive Health Insurance Claim Analysis Using BigQuery, Python, and Looker Studio

## Project Overview

This project presents an end-to-end health insurance claim analysis and predictive modeling workflow using Google Cloud Platform, BigQuery, Python, machine learning, and Looker Studio.

The goal of this project is to analyze health insurance claim patterns, identify important risk factors, and build regression models to predict insurance claim amounts. The project includes cloud-based data storage, SQL querying, Python-based machine learning, feature importance analysis, and interactive dashboard visualization.

## Live Project Links

- **Google Cloud / BigQuery Project:** [View BigQuery Project](https://console.cloud.google.com/bigquery?ws=!1m7!1m6!12m5!1m3!1sproject-ef2a3aed-6b63-4885-9aa!2sus-central1!3s2beff5d4-66c7-47bf-9966-6a6a46b803bc!2e1)
- **Looker Studio Dashboard:** [View Dashboard](https://datastudio.google.com/reporting/ea25ea18-d8bc-4ee5-86ed-6ccc55218521)

## Tools and Technologies

- Google Cloud Platform
- Google BigQuery
- SQL
- Google Colab
- Python
- Pandas
- Scikit-learn
- Statsmodels
- Matplotlib
- Looker Studio
- Machine Learning
- Data Visualization

## Dataset

The dataset contains **15,000 health insurance records**. The target variable for predictive modeling is `claim`.

### Variables Used

- `age`
- `sex`
- `weight`
- `bmi`
- `hereditary_diseases`
- `no_of_dependents`
- `smoker`
- `city`
- `bloodpressure`
- `diabetes`
- `regular_ex`
- `job_title`
- `claim`

## Project Workflow

1. Uploaded the health insurance dataset to Google BigQuery.
2. Used SQL to inspect and query the data.
3. Connected BigQuery with Google Colab.
4. Loaded the dataset into Python using the BigQuery client.
5. Checked missing values and data types.
6. Cleaned missing values using median and mode imputation.
7. Built regression models to predict insurance claim amounts.
8. Compared model performance using MAE, RMSE, and R².
9. Generated feature importance using Random Forest.
10. Built an interactive Looker Studio dashboard.

## Data Cleaning

Missing values were found in two columns:

| Column | Missing Values |
|---|---:|
| age | 396 |
| bmi | 956 |

The target variable `claim` had no missing values.

Cleaning steps included:

- Dropping rows only if the target variable was missing
- Filling numeric missing values with median
- Filling categorical missing values with mode
- Encoding categorical variables using one-hot encoding
- Splitting the dataset into training and testing sets

## Machine Learning Models

Since `claim` is a numeric variable, this project used regression models.

Models tested:

- Linear Regression
- Random Forest Regressor
- Gradient Boosting Regressor

## Model Performance

| Model | MAE | RMSE | R² |
|---|---:|---:|---:|
| Linear Regression | 3,879.75 | 5,919.53 | 0.7624 |
| Random Forest | 543.93 | 2,248.28 | 0.9657 |
| Gradient Boosting | 2,749.18 | 4,539.92 | 0.8602 |

## Best Model

The best-performing model was:

**Random Forest Regressor**

Performance:

- **MAE:** 543.93
- **RMSE:** 2,248.28
- **R²:** 0.9657

The Random Forest model explained approximately **96.57%** of the variation in health insurance claim amounts.

## Feature Importance

The Random Forest feature importance results showed that the most important predictors were:

| Rank | Feature | Importance |
|---:|---|---:|
| 1 | smoker | 0.6026 |
| 2 | age | 0.1131 |
| 3 | bmi | 0.1098 |

## Key Insights

- Smoking status was the strongest predictor of insurance claim amount.
- Age and BMI were also important factors in predicting claim costs.
- Diabetes, blood pressure, hereditary diseases, number of dependents, and weight contributed to claim variation, but their effects were smaller compared with smoking.
- Random Forest performed better than Linear Regression and Gradient Boosting.
- The dashboard shows claim patterns by smoking status, diabetes, BMI, hereditary disease, blood pressure, city, and other risk factors.

## Looker Studio Dashboard

The Looker Studio dashboard includes multiple pages:

### Page 1: Main Dashboard

- Total records
- Average claim
- Average BMI
- Average age
- Average claim by smoker
- Average claim by diabetes
- BMI vs claim by smoking status
- Smoker distribution pie chart
- Interactive filters for sex, smoker, diabetes, and city

### Page 2: Risk Factor Analysis

- Average claim by hereditary disease
- Average claim by blood pressure
-Geographic Analysis
- Insurance claim map by U.S. city



