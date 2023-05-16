SELECT `Year`, Title, Reveneu
FROM (
  SELECT `Year`, Title, Reveneu, ROW_NUMBER() OVER (PARTITION BY Year ORDER BY Reveneu DESC) AS Rank
  FROM Movies
) AS RankedMovies
WHERE Rank = 1;
