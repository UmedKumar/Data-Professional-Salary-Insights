-- Analyze job title growth trends across years to identify which roles are expanding most rapidly


SELECT 
    work_year,                                -- The year of employment or job data
    job_title AS data_profession,             -- Rename job_title for clarity
    COUNT(job_title) AS num_of_data_professionals  -- Count of professionals per job title per year
FROM 
    Data_Professionals                        -- Source table with yearly job and professional data
GROUP BY 
    work_year,                                -- Group results by year
    job_title                                 -- Also group by job title to track changes over time
ORDER BY 
    work_year,                                -- Organize chronologically
    num_of_data_professionals DESC;           -- Within each year, show titles with highest count first