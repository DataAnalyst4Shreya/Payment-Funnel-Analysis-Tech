# Executive Summary:

This project focuses on analyzing the payment funnel of a Tech Company to determine the root cause and potential solutions. A significant number of subscriptions remain unpaid which indicates potential friction in the online payment process and has largely impacted the revenue negatively. This analysis identifies pain points within the payment portal and provides actionable recommendations to improve the conversion rate of successful payments using SQL and visualizations in a HEX Data Science Notebook to build a product funnel analysis.

Using SQL and data visualizations, I extracted and analyzed subscription data to evaluate the payment funnel. I leveraged Common Table Expressions (CTEs) and aggregate functions to measure conversion rates across each stage, and used CASE statements to categorize users based on their progress through the funnel. The analysis revealed that the greatest revenue opportunity lies in increasing the number of users who successfully complete the payment process along the “happy path.” 

Based on these insights, I recommend the following actions to improve payment success rates and increase overall subscription conversion:

1) Add multiple payment options and implement smart retry logic to reduce failures from vendor-related issues.

2) Simplify the payment checkout flow process and introduce real-time validation to minimize user errors.

3) Improve error messaging to clearly explain payment failures and guide users to resolution.

4) Strengthen value messaging and introduce targeted incentives to reduce drop-offs to competitors.
   
5) Implement funnel monitoring dashboards to continuously track drop-off points and quickly detect new issues affecting conversion.


# Business Problem:

Completed orders are essential for this Tech Company as they directly drive subscription revenue. The Finance team has identified a gap between initiated subscriptions and successfully paid subscriptions, indicating significant revenue leakage in the payment process. As a result, they have engaged the Product team to investigate potential friction points within the online payment workflow that may be preventing users from completing their purchases.

The goal of this analysis is to identify where users are dropping off in the payment funnel, uncover the underlying causes of conversion loss. These insights will inform targeted improvements to the payment experience aimed at increasing the subscription conversion rate (% of subscriptions that are successfully converting to a paid subscription) and ensuring majority users successfully complete the “happy path” from initiation to paid subscription.

<img width="64" height="98" alt="image" src="https://github.com/user-attachments/assets/6a45a2fe-c8b3-4823-9cb1-ffc8174dc966" />



# Methodology:

1) SQL query that extracts, cleans, and transforms the data from the database.

2) Build a dashboard in HEX Data Science Notebook that tracks the number of subscriptions in each payment funnel stage.

3) N/A A funnel analysis in Python to simulate changes and determine the best areas of opportunity.

**Exploratory Data Analysis (EDA)**

Conducted initial data exploration using SQL to understand the structure and quality of the subscription dataset. This included checking for missing values, duplicates, and inconsistencies in key fields such as subscription status and payment outcomes. High-level analysis was performed to identify overall trends and establish a baseline understanding of user behavior and payment performance.

**Product Funnel Analysis**

Defined the key stages of the payment funnel, from checkout initiation to successful subscription payment. Used SQL techniques, including Common Table Expressions (CTEs) and aggregate functions, to calculate conversion rates at each stage. CASE statements were applied to categorize users based on their progress through the funnel. Drop-off rates were measured to identify critical friction points, and further segmentation was performed to analyze root causes such as payment errors and user behavior.

**Data Visualization**

Developed visualizations to effectively communicate insights and highlight key findings. Bar charts were used to compare subscriptions with and without payment errors, while funnel visualizations illustrated conversion rates across each stage of the payment process. Dashboards were created in Microsoft Power BI to present insights in a clear, actionable format for business stakeholders.


# Skills:

SQL: CTEs, Joins, Case, aggregate functions

Power BI: Dax, writing functions, ETL, calculated columns, data visualization, data modeling (N/A)

Python: Pandas, Matplotlib, Numpy, Writing functions, building a product funnel, statistics (N/A)

---
SQL
CTEs, CASE, subqueries, window functions
Note: Window functions are in bonus code solution
Data visualization
Data Wrangling
Data Cleaning
Data Science Notebook
Snowflake Data warehouse
If you used other skills on your own (Python, Statistics, etc.) add them here!


# Results & Business Recommendation:






# Next Steps:
