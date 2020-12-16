SELECT restaurant_review.restaurant_id, restaurant_name, (star_rating) AS `Average Rating`, restaurant.schedule, location
FROM restaurant_review
INNER JOIN restaurant
ON restaurant_review.restaurant_id = restaurant.restaurant_id
WHERE restaurant.restaurant_id IN (
    SELECT restaurant_id 
    FROM restaurant
    WHERE schedule LIKE "9AM%")
AND star_rating >= 3
GROUP BY restaurant_id
ORDER BY AVG(star_rating) DESC;
