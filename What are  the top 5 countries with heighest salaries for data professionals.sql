-- Find the top 5 countries offering the highest total salaries to data professionals


SELECT 
    company_location,                       -- Country where the company is located
    SUM(salary_in_usd) AS salary_by_country,  -- Total salary paid to data professionals in each country
    COUNT(*) AS number_of_employees         -- Count of data professionals employed in each country
FROM 
    Data_Professionals                      -- Source table containing salary and location data
GROUP BY 
    company_location                        -- Aggregate results by country
ORDER BY 
    salary_by_country DESC                  -- Sort from highest to lowest total salary
LIMIT 5;                                    -- Only return the top 5 countries
