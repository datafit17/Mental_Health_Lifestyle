
-- Convert categorical variables to numeric variables to allow mathematical comparisons and correlations:

-- Assign numerical scores to stress_level (Low = 1, Moderate = 2, High = 3)
SELECT 
    *,
    CASE 
        WHEN stress_level = 'Low' THEN 1
        WHEN stress_level = 'Moderate' THEN 2
        WHEN stress_level = 'High' THEN 3
        ELSE NULL
    END AS stress_score
FROM lifestyle;
GO

-- Assign numerical scores to exercise_level (Low = 1, Moderate = 2, High = 3)
SELECT 
    *,
    CASE 
        WHEN exercise_level = 'Low' THEN 1
        WHEN exercise_level = 'Moderate' THEN 2
        WHEN exercise_level = 'High' THEN 3
        ELSE NULL
    END AS exercise_score
FROM lifestyle;
GO