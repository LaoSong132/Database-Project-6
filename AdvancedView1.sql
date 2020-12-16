SELECT restaurant_review.restaurant_id, star_rating, description, date, schedule
FROM restaurant_review
INNER JOIN restaurant
ON restaurant_review.restaurant_id = restaurant.restaurant_id
WHERE restaurant.restaurant_id IN (
    SELECT restaurant_id 
    FROM restaurant
    WHERE schedule LIKE "%10pm")
AND star_rating >= 3
ORDER BY star_rating DESC;