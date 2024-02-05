-- Add your SQL here
-- SELECT * FROM movies;
-- ALTER TABLE movies
-- CHANGE COLUMN id Movie_ID VARCHAR(255);
-- RENAME COLUMN name TO Movie_Title VARCHAR(255); 
-- RENAME COLUMN INT TO Rating;

WITH cte AS (
    SELECT Movie_ID, Movie_Title, Rating,
        DENSE_RANK() OVER (ORDER BY Rating DESC) dr
    FROM movies
    WHERE genre = 'horror' 
    AND year <= 1985  
)
SELECT Movie_ID, Movie_Title, Rating
FROM cte
WHERE dr <= 3 
ORDER BY Rating DESC;
