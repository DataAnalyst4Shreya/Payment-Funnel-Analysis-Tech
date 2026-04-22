-- =====================================
-- 1. DATASET OVERVIEW
-- =====================================
-- Total records and unique entities

SELECT
    COUNT(*) AS total_subscriptions,
    COUNT(DISTINCT subscription_id) AS unique_subscriptions
FROM
    public.subscriptions;

-- =====================================
-- 2. ACTIVE VS INACTIVE DISTRIBUTION
-- =====================================

-- Distribution of active vs inactive subscriptions

SELECT
    active,
    COUNT(*) AS total_subscriptions,
    ROUND(COUNT(*) * 100/ SUM(COUNT(*)) OVER (), 2) AS percentage
FROM 
    public.subscriptions
GROUP BY 
    active;

-- =====================================
-- 3. PAYMENT STATUS DISTRIBUTION
-- =====================================
-- Payment status distribution

SELECT 
    current_payment_status, 
    def.description,
    COUNT(*) AS num_subs
FROM 
    public.subscriptions sub
JOIN
    public.payment_status_log psl
    ON sub.subscription_id = psl.subscription_id
JOIN
    public.payment_status_definitions def
    ON psl.status_id = def.status_id
GROUP BY 
    current_payment_status,
    description
ORDER BY 
    3 DESC;

-- ======================================
-- 4. MONTHLY SUBSCRIPTION TREND ANALYSIS
-- ======================================
-- Monthly subscription trend

SELECT
    DATE_TRUNC('month', order_date) AS month,
    COUNT(*) AS total_subscriptions
FROM 
    public.subscriptions
GROUP BY 
    1
ORDER BY 
    1;

-- ==============================================
-- 5. MONTHLY CANCELLATION (CHURN) TREND ANALYSIS
-- ==============================================

-- Analyzing monthly cancellation trends to identify how subscription churn changes over time

SELECT 
      DATE_TRUNC('month', cancel_date) AS month, 
      COUNT(*) AS cancellations 
FROM 
      public.subscriptions 
WHERE 
      cancel_date IS NOT NULL 
GROUP BY 
      1 
ORDER BY 
      1;

-- =====================================
-- 6. UPGRADE BEHAVIOR ANALYSIS
-- =====================================

-- Analysis of subscription upgrades

SELECT
    upgraded_sub,
    COUNT(*) AS total_subscriptions,
    ROUND(COUNT(*) * 100 / SUM(COUNT(*)) OVER (), 2) AS percentage
FROM 
    public.subscriptions
GROUP BY 
    upgraded_sub
ORDER BY 
    total_subscriptions DESC;

-- ===============================================
-- 7. SUBSCRIPTION-LEVEL PAYMENT STATUS VALIDATION
-- ===============================================
-- Check Payment Status for Subscription_ID = 12622. Shows 'Happy Path' of user journey

SELECT
     *
FROM
    public.payment_status_log psl
JOIN
    public.payment_status_definitions def
    ON psl.status_id = def.status_id
WHERE 
     subscription_id = '12622'
ORDER BY
    subscription_id,
    movement_date;

  
-- Check Payment Status for Subscription_ID = 38844. Shows 'Error Path' of user journey due to user error

SELECT
     *
FROM
    public.payment_status_log psl
JOIN
    public.payment_status_definitions def
    ON psl.status_id = def.status_id
WHERE 
     subscription_id = '38844'
ORDER BY
    subscription_id,
    movement_date;

-- ================================================================
-- 8. LATEST PAYMENT STATUS PER SUBSCRIPTION (USING MAX STATUS_ID)
-- ================================================================
-- Check latest payment status record per subscription using max(status_id)

SELECT
     subscription_id,
     max(status_id) AS max_status
FROM
    public.payment_status_log
GROUP BY
    1;
