-- Average, min, and max salary by job title, experience level and company size


-- Retrieve average, minimum, and maximum salary metrics
-- Grouped by job title from the Data_Professionals table


SELECT 
    job_title AS data_profession,            -- Rename job_title to data_profession for readability
    AVG(salary_in_usd) AS average_salary,    -- Calculate average salary for each job title
    MIN(salary_in_usd) AS minimum_salary,    -- Find minimum salary for each job title
    MAX(salary_in_usd) AS maximum_salary,    -- Find maximum salary for each job title
    COUNT(*) AS num_of_data_profession       -- Count number of entries for each job title
FROM 
    Data_Professionals                        -- Source table containing salary and job info
GROUP BY 
    job_title                                 -- Group results by job title
ORDER BY 
    average_salary DESC;                      -- Sort results by average salary in descending order