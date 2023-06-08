--How many rows are in the data_analyst_jobs table? 
SELECT COUNT(*)
FROM data_analyst_jobs;

--Write a query to look at just the first 10 rows. What company is associated with the job posting on the 10th row?
SELECT *
FROM data_analyst_jobs
LIMIT 10;

--How many postings are in Tennessee? How many are there in either Tennessee or Kentucky?
SELECT COUNT(location)
FROM data_analyst_jobs
WHERE location = 'TN';

SELECT COUNT(location)
FROM data_analyst_jobs
WHERE location IN ('TN','KY');

--How many postings in Tennessee have a star rating above 4?
SELECT COUNT (*)
FROM data_analyst_jobs
WHERE location IN ('TN')  
AND star_rating > 4;

--How many postings in the dataset have a review count between 500 and 1000?
SELECT COUNT(*)
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;

--Find the name of each company and its average star rating for all companies that have more than 5000 reviews across all locations. How many companies are there with more than 5000 reviews across all locations?
SELECT company, AVG(star_rating) AS average_rating
FROM data_analyst_jobs
GROUP BY company
HAVING SUM(review_count) > 5000;

SELECT COUNT(company) AS company_count
FROM data_analyst_jobs
GROUP BY company
HAVING SUM(review_count) > 5000;

--Add the code to order the query in #9 from highest to lowest average star rating. Which company with more than 5000 reviews across all locations in the dataset has the highest star rating? What is that rating?
SELECT company, AVG(star_rating) AS average_rating
FROM data_analyst_jobs
GROUP BY company
HAVING SUM(review_count) > 5000
ORDER BY average_rating DESC;

SELECT company, AVG(star_rating) AS average_rating
FROM data_analyst_jobs
GROUP BY company
HAVING SUM(review_count) > 5000
ORDER BY average_rating DESC
LIMIT 1;

--Find all the job titles that contain the word ‘Analyst’. How many different job titles are there?
SELECT title
FROM data_analyst_jobs
WHERE title LIKE '%analyst%';

SELECT COUNT(title)
FROM data_analyst_jobs
WHERE title LIKE '%analyst%';

--How many different job titles do not contain either the word ‘Analyst’ or the word ‘Analytics’? What word do these positions have in common?
SELECT Count(title) AS title_count
FROM data_analyst_jobs
WHERE title NOT LIKE '%analyst%'
AND title NOT LIKE '%analytics%';



