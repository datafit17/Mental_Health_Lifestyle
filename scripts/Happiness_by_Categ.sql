-- AVERAGE hapiness_score FOR EACH CATEGORICAL VARIABLE:

-- Average hapiness_score by gender
SELECT gender, ROUND(AVG(hapiness_score),2) AS AVG_hapiness FROM lifestyle GROUP BY gender ORDER BY AVG_hapiness DESC;
GO

-- Average hapiness_score by exercise level
SELECT exercise_level, ROUND(AVG(hapiness_score),2) AS AVG_hapiness FROM lifestyle GROUP BY exercise_level ORDER BY AVG_hapiness DESC;
GO

-- Average hapiness_score by diet type
SELECT diet_type, ROUND(AVG(hapiness_score),2) AS AVG_hapiness FROM lifestyle GROUP BY diet_type ORDER BY AVG_hapiness DESC;
GO

-- Average hapiness_score by stress level
SELECT stress_level, ROUND(AVG(hapiness_score),2) AS AVG_hapiness FROM lifestyle GROUP BY stress_level ORDER BY AVG_hapiness DESC;
GO

-- Average hapiness_score by mental health condition
SELECT mental_health_condition, ROUND(AVG(hapiness_score),2) AS AVG_hapiness FROM lifestyle GROUP BY mental_health_condition ORDER BY AVG_hapiness DESC;
GO