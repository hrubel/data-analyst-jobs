/*question1 = 1,893 */

SELECT COUNT (*)
FROM data_analyst_jobs;

/*question2 = ExxonMobil */

SELECT *
FROM data_analyst_jobs
LIMIT 10;

/*question3=TN-21 KY=6 */

SELECT COUNT (*)
FROM data_analyst_jobs
WHERE location = 'TN' OR location= 'KY'
GROUP BY location;

/*question4 =3 */

SELECT location, star_rating
FROM data_analyst_jobs
WHERE star_rating > 4
AND location LIKE 'TN';

/*question5= 151 */

SELECT COUNT (review_count)
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 and 1000;

/*question6= NE */

SELECT location AS state, AVG (star_rating)::NUMERIC(10,2) AS avg_rating
FROM data_analyst_jobs
GROUP BY location
ORDER BY AVG(star_rating) DESC;

/*question7= 1,893 */

SELECT COUNT(DISTINCT(title))
FROM data_analyst_jobs;

/*question8= 376*/

SELECT COUNT(DISTINCT(title))
FROM data_analyst_jobs
WHERE Location ='CA';

/*question9=?*/

SELECT DISTINCT(company), ROUND(AVG(star_rating),2) AS avg_rating
FROM data_analyst_jobs
WHERE review_count > 5000
GROUP BY company;

/*question10= */

SELECT company, ROUND(AVG(star_rating),2) AS avg_rating
FROM data_analyst_jobs
WHERE (star_rating IS NOT null AND review_count>5000)
GROUP BY company
ORDER BY avg_rating DESC;

/*question11= 1636*/

SELECT COUNT(DISTINCT(title))
FROM data_analyst_jobs
WHERE LOWER(title) LIKE '%analyst%';

/*question12=39 */

SELECT title
FROM data_analyst_jobs
WHERE LOWER(title) NOT LIKE '%analy%'
AND title IS NOT NULL;

/*BONUS= Banks and Finanicial Services
	Consulting and Business Services
	Internet and Software
	Heath Care*/

SELECT domain, COUNT(title) AS hard_to_fill
FROM data_analyst_jobs
WHERE days_since_posting > 21
AND domain IS NOT NULL
AND skill LIKE '%SQL%'
GROUP BY domain
ORDER BY hard_to_fill DESC
LIMIT 4;

SELECT*
FROM data_analyst_jobs
 