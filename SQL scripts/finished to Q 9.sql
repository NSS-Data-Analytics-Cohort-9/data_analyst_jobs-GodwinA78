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

--Find the name of each company and its average star rating for all companies that have more than 5000 reviews across all locations. How many companies are there with more than 5000 reviews across all locations

SELECT company, location, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
WHERE star_rating > 5000
GROUP BY company;












