-- Analyze salary distribution across experience levels and job titles


SELECT 
    job_title AS data_profession,          -- Rename job_title to data_profession for readability
    experience_level,                      -- Include experience level in the analysis
    AVG(salary_in_usd) AS avg_salary,      -- Calculate average salary for each job title and experience level
    COUNT(job_title) AS num_of_data_profession  -- Count how many professionals share the same title and experience level
FROM 
    Data_Professionals                     -- Source table containing salary, job, and experience info
GROUP BY 
    job_title,                             -- Group results by job title
    experience_level                       -- Also group by experience level to get a more granular view
ORDER BY 
    experience_level,                      -- Order results by experience level for progressive readability
    avg_salary;                            -- Within each level, sort by average salary