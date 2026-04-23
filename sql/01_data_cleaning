-- =====================================
-- 1. DUPLICATE HANDLING
-- =====================================
-- Identify duplicate subscription_ids

SELECT 
    subscription_id, 
    COUNT(*)
FROM 
    public.subscriptions
GROUP BY 
    subscription_id
HAVING 
     COUNT(*) > 1;

-- =====================================
-- 2. MISSING VALUE HANDLING
-- =====================================
-- Inspect rows with missing critical fields

SELECT 
    subscription_id
FROM 
    public.subscriptions
WHERE 
    subscription_id IS NULL
    or current_payment_status IS NULL;

-- =====================================
-- 3. DATA STANDARDIZATION
-- =====================================
-- Standardized order_date to DATE data type to ensure accurate time-based aggregation and trend analysis

SELECT 
      order_date,
      CAST(order_date AS DATE) AS order_date_clean
FROM
      subscriptions;

-- =====================================
-- FINAL NOTE
-- =====================================

-- Data cleaning steps were applied within individual queries.
-- No separate cleaned dataset was created.
