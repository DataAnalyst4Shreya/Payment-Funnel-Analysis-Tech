# Executive Summary

This project focuses on analyzing the payment funnel of a Tech Company to determine the root cause and potential solutions. A significant number of subscriptions remain unpaid which indicates potential friction in the online payment process and has largely impacted the revenue negatively. This analysis identifies pain points within the payment portal and provides actionable recommendations to improve the conversion rate of successful payments using SQL and visualizations in a HEX Data Science Notebook to build a product funnel analysis.

Using SQL and data visualizations, I extracted and analyzed subscription data to evaluate the payment funnel. I leveraged Common Table Expressions (CTEs) and aggregate functions to measure conversion rates across each stage, and used CASE statements to categorize users based on their progress through the funnel. The analysis revealed that the greatest revenue opportunity lies in increasing the number of users who successfully complete the payment process along the “happy path.” 

Based on these insights, I recommend the following actions to improve payment success rates and increase overall subscription conversion:

1) Add multiple payment options and implement smart retry logic to reduce failures from vendor-related issues.

2) Simplify the payment checkout flow process and introduce real-time validation to minimize user errors.

3) Improve error messaging to clearly explain payment failures and guide users to resolution.

4) Strengthen value messaging and introduce targeted incentives to reduce drop-offs to competitors.
   
5) Implement funnel monitoring dashboards to continuously track drop-off points and quickly detect new issues affecting conversion.


# Business Problem

The finance team has noticed that many subscriptions haven't been paid for, so they've reached out to the product team to understand if there are any frictions points in the online payment portal so they can increase the conversion rate (% of subscriptions that are successfully converting to a paid subscription).

*** Include visualization here or anything needed to support your explanation


