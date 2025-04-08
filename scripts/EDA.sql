--GENERAL OVERVIEW:

-- Count the total number of records in the 'lifestyle' table
SELECT COUNT(*) AS total_records FROM lifestyle;
GO

-- Display a preview of the first 10 records in the table to understand the data structure
SELECT TOP 10 * FROM lifestyle;
GO

--DATA QUALITY CHECK:

-- Check for NULL values in each column to assess data completeness
SELECT 
    COUNT(*) AS total,
    SUM(CASE WHEN country IS NULL THEN 1 ELSE 0 END) AS null_country,
    SUM(CASE WHEN age IS NULL THEN 1 ELSE 0 END) AS null_age,
    SUM(CASE WHEN gender IS NULL THEN 1 ELSE 0 END) AS null_gender,
    SUM(CASE WHEN exercise_level IS NULL THEN 1 ELSE 0 END) AS null_exercise_level,
    SUM(CASE WHEN diet_type IS NULL THEN 1 ELSE 0 END) AS null_diet_type,
    SUM(CASE WHEN sleep_hours IS NULL THEN 1 ELSE 0 END) AS null_sleep_hours,
    SUM(CASE WHEN stress_level IS NULL THEN 1 ELSE 0 END) AS null_stress_level,
    SUM(CASE WHEN mental_health_condition IS NULL THEN 1 ELSE 0 END) AS null_mental_health_condition,
    SUM(CASE WHEN work_hours_week IS NULL THEN 1 ELSE 0 END) AS null_work_hours_week,
    SUM(CASE WHEN screen_time_day IS NULL THEN 1 ELSE 0 END) AS null_screen_time_day,
    SUM(CASE WHEN social_interaction_score IS NULL THEN 1 ELSE 0 END) AS null_social_interaction_score,
    SUM(CASE WHEN hapiness_score IS NULL THEN 1 ELSE 0 END) AS null_hapiness_score
FROM lifestyle;
GO

-- BASIC STATISTICS FOR NUMERIC COLUMNS:

-- Calculate basic statistics (min, max, average) for numeric variables to get an overview of data distribution
SELECT 
    MIN(age) AS min_age, MAX(age) AS max_age, ROUND(AVG(age), 1) AS avg_age,
    MIN(sleep_hours) AS min_sleep, MAX(sleep_hours) AS max_sleep, ROUND(AVG(sleep_hours), 1) AS avg_sleep,
    MIN(work_hours_week) AS min_work, MAX(work_hours_week) AS max_work, ROUND(AVG(work_hours_week), 1) AS avg_work,
    MIN(screen_time_day) AS min_screen, MAX(screen_time_day) AS max_screen, ROUND(AVG(screen_time_day), 1) AS avg_screen,
    MIN(social_interaction_score) AS min_social, MAX(social_interaction_score) AS max_social, ROUND(AVG(social_interaction_score), 1) AS avg_social,
    MIN(hapiness_score) AS min_hap, MAX(hapiness_score) AS max_hap, ROUND(AVG(hapiness_score), 1) AS avg_hap
FROM lifestyle;
GO

-- FREQUENCY DISTRIBUTION FOR CATEGORICAL COLUMNS:

-- Count the number of records by gender to analyze gender distribution
SELECT gender, COUNT(*) AS count FROM lifestyle GROUP BY gender ORDER BY count DESC;
GO

-- Count the number of records by exercise level to see how active people are
SELECT exercise_level, COUNT(*) AS count FROM lifestyle GROUP BY exercise_level ORDER BY count DESC;
GO

-- Count the number of records by diet type to understand dietary habits
SELECT diet_type, COUNT(*) AS count FROM lifestyle GROUP BY diet_type ORDER BY count DESC;
GO

-- Count the number of records by stress level to examine stress prevalence
SELECT stress_level, COUNT(*) AS count FROM lifestyle GROUP BY stress_level ORDER BY count DESC;
GO

-- Count the number of records by mental health condition to assess reported mental health issues
SELECT mental_health_condition, COUNT(*) AS count FROM lifestyle GROUP BY mental_health_condition ORDER BY count DESC;
GO


