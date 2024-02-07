-- Add your SQL here
-- SELECT * FROM movies;
-- ALTER TABLE movies
-- -- -- -- RENAME COLUMN Movie_ID TO id VARCHAR(255);
-- RENAME COLUMN Rating TO imdb_rating; 
-- RENAME COLUMN INT TO Rating;

SELECT id AS 'Movie_ID',
    name AS 'Movie_Title',
    imdb_rating AS 'Rating'
FROM movies 
WHERE genre = 'horror' 
    AND year <= 1985
ORDER BY imdb_rating DESC 
LIMIT 3;

-- First way I tried and worked but overly complicated.

-- WITH cte AS (
--     SELECT Movie_ID, Movie_Title, Rating,
--         DENSE_RANK() OVER (ORDER BY Rating DESC) dr
--     FROM movies
--     WHERE genre = 'horror' 
--     AND year <= 1985  
-- )
-- SELECT Movie_ID, Movie_Title, Rating
-- FROM cte
-- WHERE dr <= 3 
-- ORDER BY Rating DESC;
