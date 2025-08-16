
# Job count based on city
SELECT city, COUNT(*) AS job_count
FROM job_market
GROUP BY city
ORDER BY job_count DESC;

# Job count based on state
SELECT state, COUNT(*) AS job_count
FROM job_market
GROUP BY state
ORDER BY job_count DESC;

# Job_market table
SELECT job_title, city, state, monthly_salary
FROM job_market
WHERE monthly_salary IS NOT NULL
ORDER BY monthly_salary desc;

# Average Monthly salary
SELECT job_title, ROUND(AVG(monthly_salary),0) AS avg_salary
FROM job_market
WHERE monthly_salary IS NOT NULL
GROUP BY job_title
ORDER BY avg_salary DESC
LIMIT 50;

# locality wis job count
SELECT locality, COUNT(*) AS job_count
FROM job_market
GROUP BY locality
ORDER BY job_count DESC;


