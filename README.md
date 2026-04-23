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

### 1. Subscriptions By Payment Funnel Stages By Year

<img width="578" height="365" alt="subscriptions by payment funnel by year" src="https://github.com/user-attachments/assets/a5fbb593-653f-49ad-a75e-07d751710080" />

- This visualization shows how users progress through different funnel stages over the years.
  
- It helps understand the overall distribution and trend of user movement across stages each year.
  
- From 2029 until 2022, the company was working towards improving the Saas product before launching it for
  payment subscriptions hence we don't see data for that period.
  
- The year-wise trend shows that majority of the subscribers have not started the payment process yet
  
- Line chart shows that the "Payment Processing Error with Vendor" has been happening consistently over the years.


### 2. Subscriptions Without Payment Error vs Subscriptions with Payment Error

<img width="554" height="362" alt="Subscriptions Without Payment Error vs Subscriptions with Payment Error" src="https://github.com/user-attachments/assets/49b409c2-f36c-4827-8d5c-0cd4703a2a89" />

- The visualization showcases a grouped column chart consisting of using binary columns where 1 = no error and 0 = error.

- Bar Chart shows that 2,990,873 subscribtions experienced payment error.
 
- The data presentation also shows that 623,191 subscriptions did not face any payment error.
  
- The visual analytics helps us understand that majority number of subscriptions faced error during payment process which is not good for user experience.
  

**Business Recommendations:**

- Optimize payment gateway reliability to reduce transaction failures
  
- Reduce friction on the enter payment page by considering alternative payment methods to improve completion rate.
  Eg: Apple Pay, Google Pay, or other payment methods that don't require entering in a credit card every time. This
  will help reduce user errors due to incorrect payment info. Include options that have fewer steps and faster processing.

- Reach out to the 3rd party payment processing vendor and inquire about the errors on their side and determine a
  plan to reduce those in the future.

- Work with the product manager to increase the number of subscriptions that are opening the payment portal and
  attempting to pay. Since a large number of subscriptions aren't even going into the payment portal, we're losing a
  large number of opportunities at the beginning of the funnel, so maybe we can set up payment reminders or have
  customer service agent call them to encourage payment.


# Next Steps:

- Investigate the error breakdown further to determine which errors are most common (user errors or vendor errors).
  
- Find out why subscriptions aren't even starting the payment process. Is it a process issue on our side? Are customers forgetting?
  
- Conduct qualitative research by speaking to existing customers and potential customers can be a great way to get more insights about customer behavior to take corrective actions accordingly.

- Perform Market Intelligence to discover competitors having similar or related subscription based Saas products can also be useful to make improvements in the payment funnel stages. Understanding the payment funnel of other companies can be a great learning for taking future course of action.

- Integrate current-day technology like AI tools in the user journey to encourage customers for converting into paid subscriptions.
