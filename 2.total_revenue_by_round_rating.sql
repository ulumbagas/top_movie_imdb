SELECT ROUND(Rating) AS Round_Rating, SUM(Reveneu) AS Total_Reveneu FROM movies
WHERE Budget !='Unknown' AND Income !='Unknown'
GROUP BY Round_Rating 
ORDER BY Round_Rating ASC
