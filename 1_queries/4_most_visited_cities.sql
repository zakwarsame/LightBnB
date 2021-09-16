SELECT
    properties.city,
    count(reservations.*) as total_reservations
FROM
    properties
    JOIN reservations ON properties.id = reservations.property_id
GROUP BY
    properties.city
ORDER BY
    total_reservations DESC;