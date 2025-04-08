-- Calculates the Pearson correlation between hapiness_score and all numeric variables

SELECT 
    -- Correlation with sleep_hours
    ROUND((
        COUNT(*) * SUM(CAST(sleep_hours AS FLOAT) * CAST(hapiness_score AS FLOAT)) - 
        SUM(CAST(sleep_hours AS FLOAT)) * SUM(CAST(hapiness_score AS FLOAT))
    ) /
    (
        SQRT(COUNT(*) * SUM(CAST(sleep_hours AS FLOAT) * CAST(sleep_hours AS FLOAT)) - 
        POWER(SUM(CAST(sleep_hours AS FLOAT)), 2)) *
        SQRT(COUNT(*) * SUM(CAST(hapiness_score AS FLOAT) * CAST(hapiness_score AS FLOAT)) - 
        POWER(SUM(CAST(hapiness_score AS FLOAT)), 2))
    ), 4) AS correlation_sleep_hapiness,

    -- Correlation with screen_time_day
    ROUND((
        COUNT(*) * SUM(CAST(screen_time_day AS FLOAT) * CAST(hapiness_score AS FLOAT)) - 
        SUM(CAST(screen_time_day AS FLOAT)) * SUM(CAST(hapiness_score AS FLOAT))
    ) /
    (
        SQRT(COUNT(*) * SUM(CAST(screen_time_day AS FLOAT) * CAST(screen_time_day AS FLOAT)) - 
        POWER(SUM(CAST(screen_time_day AS FLOAT)), 2)) *
        SQRT(COUNT(*) * SUM(CAST(hapiness_score AS FLOAT) * CAST(hapiness_score AS FLOAT)) - 
        POWER(SUM(CAST(hapiness_score AS FLOAT)), 2))
    ), 4) AS correlation_screen_hapiness,

    -- Correlation with social_interaction_score
    ROUND((
        COUNT(*) * SUM(CAST(social_interaction_score AS FLOAT) * CAST(hapiness_score AS FLOAT)) - 
        SUM(CAST(social_interaction_score AS FLOAT)) * SUM(CAST(hapiness_score AS FLOAT))
    ) /
    (
        SQRT(COUNT(*) * SUM(CAST(social_interaction_score AS FLOAT) * CAST(social_interaction_score AS FLOAT)) - 
        POWER(SUM(CAST(social_interaction_score AS FLOAT)), 2)) *
        SQRT(COUNT(*) * SUM(CAST(hapiness_score AS FLOAT) * CAST(hapiness_score AS FLOAT)) - 
        POWER(SUM(CAST(hapiness_score AS FLOAT)), 2))
    ), 4) AS correlation_social_hapiness,

    -- Correlation with work_hours_week
    ROUND((
        COUNT(*) * SUM(CAST(work_hours_week AS FLOAT) * CAST(hapiness_score AS FLOAT)) - 
        SUM(CAST(work_hours_week AS FLOAT)) * SUM(CAST(hapiness_score AS FLOAT))
    ) /
    (
        SQRT(COUNT(*) * SUM(CAST(work_hours_week AS FLOAT) * CAST(work_hours_week AS FLOAT)) - 
        POWER(SUM(CAST(work_hours_week AS FLOAT)), 2)) *
        SQRT(COUNT(*) * SUM(CAST(hapiness_score AS FLOAT) * CAST(hapiness_score AS FLOAT)) - 
        POWER(SUM(CAST(hapiness_score AS FLOAT)), 2))
    ), 4) AS correlation_work_hapiness,

    -- Correlation with age
    ROUND((
        COUNT(*) * SUM(CAST(age AS FLOAT) * CAST(hapiness_score AS FLOAT)) - 
        SUM(CAST(age AS FLOAT)) * SUM(CAST(hapiness_score AS FLOAT))
    ) /
    (
        SQRT(COUNT(*) * SUM(CAST(age AS FLOAT) * CAST(age AS FLOAT)) - 
        POWER(SUM(CAST(age AS FLOAT)), 2)) *
        SQRT(COUNT(*) * SUM(CAST(hapiness_score AS FLOAT) * CAST(hapiness_score AS FLOAT)) - 
        POWER(SUM(CAST(hapiness_score AS FLOAT)), 2))
    ), 4) AS correlation_age_hapiness

FROM lifestyle
WHERE 
    sleep_hours IS NOT NULL AND
    screen_time_day IS NOT NULL AND
    social_interaction_score IS NOT NULL AND
    work_hours_week IS NOT NULL AND
    age IS NOT NULL AND
    hapiness_score IS NOT NULL;
