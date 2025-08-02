-- Analyze how different types of employment impact average salary


SELECT 
    employment_type,                                 -- Identify the type of employment (e.g., FT, PT, Contract, etc.)
    AVG(salary_in_usd) AS avg_salary_by_of_employment_type  -- Calculate the average salary for each employment type
FROM 
    Data_Professionals                               -- Source table containing salary and employment details
GROUP BY 
    employment_type                                  -- Group the data by employment type
ORDER BY 
    avg_salary_by_of_employment_type DESC;           -- Sort results from highest to lowest average salary