-- Count the number of data professionals grouped by their job title

SELECT 
    job_title AS data_profession,         -- Rename job_title column to data_profession for clarity
    COUNT(*) AS num_of_data_profession    -- Count how many professionals hold each title
FROM 
    Data_Professionals                    -- Source table containing job and employee info
GROUP BY 
    job_title                             -- Aggregate counts by job title
ORDER BY 
    num_of_data_profession DESC;          -- Sort the output in descending order of count