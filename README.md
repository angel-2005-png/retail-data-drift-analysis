# Retail Sales Analysis & Drift Detection

##  Project Overview
This project analyzes historical retail transaction data to monitor revenue behavior, customer spending patterns, and detect distribution drift over time. 

The objective is to simulate a real-world business analytics workflow where:
- Revenue trends are monitored
- High-value customers are identified
- Model performance is evaluated on future data
- Feature drift is detected across time periods



## Tech Stack
- Python (Pandas, NumPy)
- Scikit-learn (Logistic Regression)
- Scipy (KS Test for drift detection)
- Matplotlib (Revenue visualization)
- SQL (Revenue aggregation & segmentation queries)



### Key Analysis Performed

### Revenue Analysis
- Total revenue calculation
- Monthly revenue trend visualization
- Revenue by country
- Top 10 customers by revenue
- Average order value

### High-Value Order Classification
- Defined high-value orders using 75th percentile threshold
- Built logistic regression model
- Evaluated model performance on future time batches

### Drift Detection
- Compared training data with future data
- Used Kolmogorov–Smirnov (KS) test
- Identified statistically significant feature distribution shifts



## Project Structure

retail-sales-drift-analysis/

analysis.py              # End-to-end analysis pipeline

queries.sql              # Business SQL queries


 requirements.txt         # Python dependencies
Readme.txt


### Business Relevance

This project demonstrates:
- Time-based data splitting
- Behavioral change monitoring
- Revenue analytics
- Model stability evaluation
- Basic model monitoring workflow

It simulates how analysts monitor changing customer behavior in retail environments.

## How to Run

1. Install dependencies:
   pip install -r requirements.txt

2. Run:
   python analysis.py

---

## Future Improvements
- Dashboard integration (Power BI / Tableau)
- Automated drift alerts
- Feature importance analysis
- Model retraining pipeline
