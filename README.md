## Retail Data Drift Analysis
### Project Overview

This project analyzes data drift in retail transaction data to detect changes in feature distributions over time.

Data drift can significantly impact model performance in production systems. This analysis identifies whether retail features such as purchase amount, customer behavior, or product categories have shifted across time periods.

The goal is to proactively detect when retraining or monitoring is required.

### Problem Statement

In real-world retail systems, customer behavior evolves over time due to:

Seasonal changes

Pricing updates

Marketing campaigns

External economic factors

If these changes are not detected early, predictive models may become unreliable.

This project evaluates whether key numerical and categorical features have statistically drifted between two time periods.

### Tools & Technologies

Python

Pandas

NumPy

Matplotlib / Seaborn

Scipy (Statistical testing)

### Dataset Description

The dataset contains retail transaction records including:

Customer ID

Quantity

Unit price

Invoice Date 
etc.
The dataset used in this prject was collected from kaggle which contains retail transaction records of an e-commerce website  in the UK over the year 2010-2011

Data was split into:

Reference Period (Past Data)

Current Period (Recent Data)

Drift detection was performed by comparing these two segments.

### Methodology
###  Data Cleaning

Handled missing values

Ensured consistent data types

Removed duplicates

### Feature Distribution Comparison

Histogram comparison

Kernel Density Estimation (KDE)

Summary statistics comparison

### Statistical Testing

Kolmogorov–Smirnov Test for numerical features

Chi-Square Test for categorical features

These tests determine whether distribution changes are statistically significant.

### Key Findings

Certain numerical features showed noticeable distribution shifts.

Seasonal variation influenced purchasing patterns.

Feature drift indicates that predictive models should be monitored regularly.

Some categorical distributions changed significantly, suggesting customer preference shifts.

### Business Insight

The detected data drift suggests:

Models trained on historical retail data may degrade over time.

Continuous monitoring systems should be implemented.

Quarterly retraining may be necessary in dynamic retail environments.

### How to Run the Project
git clone https://github.com/angel-2005-png/retail-data-drift-analysis.git

cd retail-data-drift-analysis

pip install -r requirements.txt

python drift_analysis.py

### Future Improvements

Automate drift alerts

Integrate dashboard for visualization

Add feature importance tracking

Deploy monitoring pipeline
