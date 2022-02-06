SELECT *
FROM met.met_data
LIMIT 10;

#How many pieces are in the American Decorative Art collection?
SELECT COUNT(*)
FROM met.met_data;

#Celery was considered a luxurious snack in the Victorian era (around the 1800s). Wealthy families served stalks of it in intricate glass vases.
#Count the number of pieces where the category includes ‘celery’.

SELECT COUNT(*)
FROM met.met_data
WHERE category LIKE '%celery%';

#Finding the title and medium of the oldest piece(s) in the collection.

SELECT title, medium, date
FROM met.met_data
ORDER BY date
LIMIT 1;

#Not every American decoration is from the Americas… where are they are coming from?
#Finding the top 10 countries with the most pieces in the collection.

SELECT country, COUNT(*)
FROM met.met_data
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;

#Find the categories HAVING more than 100 pieces.

SELECT category, COUNT(*)
FROM met.met_data
GROUP BY 1
HAVING COUNT(*) > 100;

#Count the number of pieces where the medium contains ‘gold’ or ‘silver’.
SELECT medium, COUNT(*)
FROM met.met_data
WHERE medium LIKE '%gold%'
  OR medium LIKE '%silver%'
GROUP BY 1
ORDER BY 2 DESC;