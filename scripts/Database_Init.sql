/*
=============================================================
Create Database
=============================================================
Script Purpose:
    This script creates a new database named 'Mental_Health_Lifestyle' after checking if it already exists. 
    If the database exists, it is dropped and recreated.
	
WARNING:
    Running this script will drop the entire 'Mental_Health_Lifestyle' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

USE master;
GO

-- Drop and recreate the 'Mental_Health_Lifestyle' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Mental_Health_Lifestyle')
BEGIN
    ALTER DATABASE Mental_Health_Lifestyle SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE Mental_Health_Lifestyle;
END;
GO

-- Create the 'Mental_Health_Lifestyle' database
CREATE DATABASE Mental_Health_Lifestyle;
GO

USE Mental_Health_Lifestyle;
GO

-- Create a table named 'lifestyle' to store information related to 
-- people's lifestyle habits, mental health, and overall well-being.

CREATE TABLE lifestyle(
	person_id int,
	country nvarchar(50),
	age int,
	gender nvarchar(50),
	exercise_level nvarchar(50),
	diet_type nvarchar(50),
	sleep_hours float,
	stress_level nvarchar(50),
	mental_health_condition nvarchar(50),
	work_hours_week int,
	screen_time_day float,
	social_interaction_score float,
	hapiness_score float
);
GO

/*
	Import data from a CSV file into the 'lifestyle' table using BULK INSERT.
	This command loads data efficiently from the specified file path.
	It skips the first row (assumed to be headers), uses a comma as the field delimiter,
	and applies a table-level lock for faster performance during the import.
*/

BULK INSERT lifestyle
FROM 'C:\Users\Omar\Desktop\Proyectos\Mental Health and Lifestyle Habits\Mental_Health_Lifestyle_Dataset.csv'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
);
GO