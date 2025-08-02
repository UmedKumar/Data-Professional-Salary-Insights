-- Discover which company size pays the highest average salary for each job title


SELECT 
    job_title AS data_profession,            -- Rename job_title for better readability
    company_size,                            -- Include company size (e.g. Small, Medium, Large)
    AVG(salary_in_usd) AS avg_salary         -- Calculate the average salary for each title-company_size pair
FROM 
    Data_Professionals                       -- Source table with job, salary, and company data
GROUP BY 
    job_title,                               -- Group by job title
    company_size                             -- And by company size to compare salary across organization scales
ORDER BY 
    job_title,                               -- Organize the output by job title
    avg_salary DESC;                         -- For each title, sort company sizes by descending average salary