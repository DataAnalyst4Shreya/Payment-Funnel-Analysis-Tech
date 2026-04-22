-- =============================================
-- SUBSCRIPTION PAYMENT FUNNEL ANALYSIS BY YEAR
-- =============================================
-- Categorizing subscription payment funnel stages and analyzing trends by order year

WITH max_status_reached AS
(
SELECT
     subscription_id,
     max(status_id) AS max_status
FROM
    public.payment_status_log
GROUP BY
    1
)
,
payment_funnel_stages AS
(
SELECT
     subs.subscription_id,
     DATE_TRUNC('year',order_date) AS order_year,
     current_payment_status,
     max_status,
     CASE
         WHEN max_status = 1 THEN 'Payment Widget Opened'
         WHEN max_status = 2 THEN 'Payment Entered'
         WHEN max_status = 3 AND current_payment_status = 0 THEN 'User Error with Payment Submission'
         WHEN max_status = 3 AND current_payment_status != 0 THEN 'Payment Submission'
         WHEN max_status = 4 AND current_payment_status = 0 THEN 'Payment Processing Error with Vendor'
         WHEN max_status = 4 AND current_payment_status != 0 THEN 'Payment Success w/ Vendor'
         WHEN max_status = 5 THEN 'Complete'
         WHEN max_status IS NULL THEN 'User Has Not Started Payment Process'
         END AS payment_funnel_stage
FROM
    public.subscriptions subs
LEFT JOIN
    max_status_reached m
    ON subs.subscription_id = m.subscription_id
)

SELECT
     payment_funnel_stage,
     order_year,
     COUNT(*) AS num_subs
FROM
    payment_funnel_stages
GROUP BY
    1,2
ORDER BY
    2 DESC
