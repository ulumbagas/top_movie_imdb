SELECT Case 
	when `Month`='January' Then 1
	when `Month`='February' Then 2
	when `Month`='March' Then 3
	when `Month`='April' Then 4
	when `Month`='May' Then 5
	when `Month`='June' Then 6
	when `Month`='July' Then 7
	when `Month`='August' Then 8
	when `Month`='September' Then 9
	when `Month`='October' Then 10
	when `Month`='November' Then 11
	ELSE 12 END AS NO,
`Month`,SUM(Reveneu) FROM movies
WHERE `Month` != 'NaN'
GROUP BY `Month`
ORDER BY No