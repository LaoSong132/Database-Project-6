SELECT driver_id AS `Driver ID`, person.person_name as Name, AVG(star_rating) as `Average Rating`,
CASE WHEN AVG(star_rating) >= 4 THEN 'Great'
	WHEN AVG(star_rating) >= 3 AND AVG(star_rating) < 4 THEN 'Moderate'
    WHEN AVG(star_rating) < 3 THEN 'Poor'
    ELSE 'Not Available' END AS `Rating Grade`
FROM driver_review
INNER JOIN person
ON person.person_id = driver_review.person_id
GROUP BY driver_id
ORDER BY driver_id;