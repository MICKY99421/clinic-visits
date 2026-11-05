
# Clinic Visits Analytics — Portfolio Project

## Project Overview

This project analyses clinic visit activity, patient waiting times,
visit types, emergency visits and consultation fee revenue.

The objective is to help clinic administrators understand operational
performance and identify opportunities to improve patient flow.

## Business Questions

1. How many patient visits did the hospital record?
2. What is the typical patient waiting time?
3. Which department has the highest average waiting time?
4. Which visit type has the longest average waiting time?
5. Are waiting times improving or worsening over time?

## Tools Used

- PostgreSQL and DBeaver — database querying and exploration
- Python and pandas — data cleaning and quality checks
- Power BI Desktop — data modelling, measures and visualisation
- Git and GitHub — version control and project documentation

## Dashboard Highlights

- Total patient visits: 25,000
- Average waiting time: 105.90 minutes
- Median waiting time: 106 minutes
- Emergency visit rate: 14.45%
- Consultation fee revenue: GH₵755,945

These figures reflect the current dashboard and should be
reconciled with the source-data validation results.

## Project Workflow

1. Understand the business problem.
2. Explore and profile the source data.
3. Check data quality and document issues.
4. Clean and validate the data.
5. Model the data in Power BI.
6. Create measures and dashboard visuals.
7. Interpret findings and develop recommendations.

## Repository Structure

- `sql/` — SQL scripts
- `notebooks/` — Python notebooks
- `dashboard/` — Power BI report
- `presentation/` — project presentation
- `screenshots/` — dashboard images
- `data_quality_notes.md` — data-quality documentation

## Data Privacy

No confidential patient data, private credentials or unauthorised
database extracts should be published in this repository.

## Limitations

Department and visit-type findings must be interpreted using the
validated data. Conclusions about waiting-time trends require
verification of the complete monthly series.

## Recommendations

Use the dashboard to monitor waiting times by department and visit
type, investigate persistent delays, and track performance over time.
