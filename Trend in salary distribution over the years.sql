-- Analyzing the trend in salary over the years for different data professional roles


SELECT 
    work_year,                                      -- The year in which the data was recorded
    job_title AS data_profession,                   -- The specific job title within data-related roles
    AVG(salary_in_usd) AS average_salary            -- Average salary in USD for each role per year
FROM 
    Data_Professionals
GROUP BY 
    work_year, 
    job_title                                       -- Grouping by year and job title to get average salary per role per year
ORDER BY 
    work_year ASC,                                  -- Sorting chronologically
    average_salary ASC;                             -- Within each year, sorting by lowest to highest average salary
