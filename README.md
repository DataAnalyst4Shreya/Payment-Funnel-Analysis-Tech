# Executive Summary:

This project analyzes a SaaS subscription payment funnel to identify conversion drop-offs and optimization opportunities. A significant number of subscriptions remain unpaid which indicates potential friction in the online payment process and has largely impacted the revenue negatively. This analysis identifies pain points within the payment portal and provides actionable recommendations to improve the conversion rate of successful payments using SQL and visualizations in a HEX Data Science Notebook to build a subscription funnel analysis.

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

<img width="812" height="323" alt="payment_funnel_analysis_ss" src="https://github.com/user-attachments/assets/b95ecd29-bafe-4cbb-b161-a4bddc153f8c" />


# Methodology:

1) Developed SQL queries to extract, clean, and transform raw subscription data, enabling structured analysis of the payment funnel.

2) Built a funnel tracking dashboard in Hex to visualize subscription counts across payment stages.

3) Mapped the end-to-end subscription payment funnel using Lucidchart to define user flow and key conversion stages.

**Exploratory Data Analysis (EDA)**

Conducted initial data exploration using SQL to understand the structure and quality of the subscription dataset. This included checking for missing values, duplicates, and inconsistencies in the subscription dataset. Queried subscription IDs across both successful (‘happy path’) and failed (‘error path’) journeys to reconstruct end-to-end user flows and understand payment behavior. Performed high-level analysis to uncover initial trends and establish a baseline understanding of user engagement and payment performance.

**Product Funnel Analysis**

Defined the key stages of the payment funnel, from checkout initiation to successful subscription payment. Used SQL techniques, including Common Table Expressions (CTEs) and aggregate functions, to calculate conversion rates at each stage. CASE statements were applied to categorize users based on their progress through the funnel. Drop-off rates were measured to identify critical friction points, and further segmentation was performed to analyze root causes such as payment errors and user behavior. Computed conversion rates and workflow conversion rates to develop a comprehensive understanding of user flow and payment performance across the funnel.

**Data Visualization**

Developed visualizations to effectively communicate insights and highlight key findings. Bar charts were used to compare subscriptions with and without payment errors, while funnel visualizations illustrated conversion rates across each stage of the payment process. Built line charts to analyze trends in subscription flow across funnel stages over time, identifying patterns in user progression and drop-off behavior. Dashboards were created in Hex Data Science Notebook to present insights in a clear, actionable format for business stakeholders.


# Skills & Tools Used:

**SQL:** CTEs, JOINs, CASE statements, aggregate functions, and subqueries for data extraction, transformation, and funnel analysis

**Data Wrangling & Cleaning:** Processed raw subscription data by handling missing values, duplicates, and inconsistencies to ensure data quality

**Data Modeling:** Designed data flow and structured subscription funnel stages using Lucidchart

**Data Visualization:** Built bar and line charts to analyze trends, funnel progression, and user behavior patterns

**Data Analysis Notebook:** Performed exploratory analysis and dashboarding using Hex

**Data Warehouse:** Queried and analyzed structured datasets stored in Snowflake


# Results & Business Recommendation:






# Next Steps:
