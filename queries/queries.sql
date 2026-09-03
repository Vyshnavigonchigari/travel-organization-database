-- =========================================================
-- TRAVEL ORGANIZATION DATABASE
-- SQL QUERIES
-- =========================================================


-- =========================================================
-- 1. BASIC SELECT QUERIES
-- =========================================================

-- 1. Display all countries
SELECT *
FROM countries;


-- 2. Display all tour packages
SELECT *
FROM tour_packages;


-- 3. Display all customers
SELECT *
FROM customers;


-- 4. Display all bookings
SELECT *
FROM bookings;


-- 5. Display all payments
SELECT *
FROM payments;


-- =========================================================
-- 2. SELECT SPECIFIC COLUMNS
-- =========================================================

-- 6. Display customer names with contact details
SELECT
    customer_name,
    email,
    phone_number
FROM customers;


-- 7. Display package name, duration and price
SELECT
    package_name,
    duration_days,
    package_price
FROM tour_packages;


-- 8. Display flight number and route
SELECT
    flight_number,
    departure_city,
    arrival_city
FROM flights;


-- 9. Display guide names and languages spoken
SELECT
    guide_name,
    language_spoken
FROM tour_guides;



-- =========================================================
-- 3. FILTERING DATA
-- =========================================================

-- 10. Find packages having duration more than 6 days
SELECT
    package_id,
    package_name,
    duration_days,
    package_price
FROM tour_packages
WHERE duration_days > 6;


-- 11. Find packages costing more than 50,000
SELECT
    package_name,
    package_price
FROM tour_packages
WHERE package_price > 50000;


-- 12. Find confirmed bookings
SELECT *
FROM bookings
WHERE booking_status = 'Confirmed';


-- 13. Find pending bookings
SELECT *
FROM bookings
WHERE booking_status = 'Pending';


-- 14. Find customers from a particular city
SELECT
    customer_name,
    city
FROM customers
WHERE city = 'Mumbai';


-- =========================================================
-- 4. AND / OR / IN / BETWEEN
-- =========================================================

-- 15. Find packages costing between 30,000 and 60,000
SELECT
    package_name,
    package_price
FROM tour_packages
WHERE package_price BETWEEN 30000 AND 60000;


-- 16. Find confirmed bookings for 2 or more people
SELECT *
FROM bookings
WHERE booking_status = 'Confirmed'
  AND number_of_people >= 2;


-- 17. Find pending or cancelled bookings
SELECT *
FROM bookings
WHERE booking_status IN ('Pending', 'Cancelled');


-- 18. Find customers from selected cities
SELECT
    customer_name,
    city
FROM customers
WHERE city IN ('Mumbai', 'Delhi', 'Bangalore', 'Chennai');


-- =========================================================
-- 5. SORTING DATA
-- =========================================================

-- 19. Display packages from highest price to lowest
SELECT
    package_name,
    package_price
FROM tour_packages
ORDER BY package_price DESC;


-- 20. Display packages from shortest to longest duration
SELECT
    package_name,
    duration_days
FROM tour_packages
ORDER BY duration_days ASC;


-- 21. Display customers alphabetically
SELECT
    customer_name,
    city
FROM customers
ORDER BY customer_name ASC;


-- =========================================================
-- 6. LIMIT
-- =========================================================

-- 22. Find the top 3 most expensive tour packages
SELECT
    package_name,
    package_price
FROM tour_packages
ORDER BY package_price DESC
LIMIT 3;


-- =========================================================
-- 7. DISTINCT
-- =========================================================

-- 23. Display all payment methods used
SELECT DISTINCT
    payment_method
FROM payments;


-- =========================================================
-- 8. DATE FILTERING
-- =========================================================

-- 24. Find bookings made in the current month
SELECT
    booking_id,
    customer_id,
    package_id,
    booking_date,
    number_of_people,
    booking_status
FROM bookings
WHERE YEAR(booking_date) = YEAR(CURDATE())
  AND MONTH(booking_date) = MONTH(CURDATE());



-- =========================================================
-- 9. AGGREGATE FUNCTIONS
-- =========================================================

-- 25. Find the total payment amount received
SELECT
    SUM(payment_amount) AS total_payment_amount
FROM payments
WHERE payment_status = 'Completed';


-- 26. Find the average package price
SELECT
    AVG(package_price) AS average_package_price
FROM tour_packages;


-- 27. Find the highest package price
SELECT
    MAX(package_price) AS highest_package_price
FROM tour_packages;


-- 28. Find the lowest package price
SELECT
    MIN(package_price) AS lowest_package_price
FROM tour_packages;


-- 29. Find the total number of bookings
SELECT
    COUNT(*) AS total_bookings
FROM bookings;


-- 30. Find the total number of customers
SELECT
    COUNT(*) AS total_customers
FROM customers;


-- 31. Find the total number of tour packages
SELECT
    COUNT(*) AS total_packages
FROM tour_packages;


-- =========================================================
-- 10. GROUP BY
-- =========================================================

-- 32. Find the number of bookings for each package
SELECT
    package_id,
    COUNT(*) AS booking_count
FROM bookings
GROUP BY package_id;


-- 33. Find the number of bookings for each booking status
SELECT
    booking_status,
    COUNT(*) AS booking_count
FROM bookings
GROUP BY booking_status;


-- 34. Find the number of customers in each city
SELECT
    city,
    COUNT(*) AS customer_count
FROM customers
GROUP BY city;


-- 35. Find the number of payments for each payment method
SELECT
    payment_method,
    COUNT(*) AS payment_count
FROM payments
GROUP BY payment_method;


-- 36. Display total revenue generated by each package
SELECT
    tp.package_id,
    tp.package_name,
    SUM(tp.package_price * b.number_of_people) AS total_revenue
FROM tour_packages tp
JOIN bookings b
    ON tp.package_id = b.package_id
WHERE b.booking_status = 'Confirmed'
GROUP BY
    tp.package_id,
    tp.package_name;


-- 37. Show all countries and number of packages available in each country
SELECT
    c.country_name,
    COUNT(tp.package_id) AS package_count
FROM countries c
LEFT JOIN tour_packages tp
    ON c.country_id = tp.country_id
GROUP BY
    c.country_id,
    c.country_name;


-- 38. Show customers who booked more than one package
SELECT
    customer_id,
    COUNT(DISTINCT package_id) AS package_count
FROM bookings
GROUP BY customer_id
HAVING COUNT(DISTINCT package_id) > 1;

-- 39. Find the most booked package
SELECT
    tp.package_id,
    tp.package_name,
    COUNT(b.booking_id) AS booking_count
FROM tour_packages tp
JOIN bookings b
    ON tp.package_id = b.package_id
GROUP BY
    tp.package_id,
    tp.package_name
ORDER BY booking_count DESC
LIMIT 1;


-- 40. Find total revenue country-wise
SELECT
    c.country_name,
    SUM(tp.package_price * b.number_of_people) AS total_revenue
FROM countries c
JOIN tour_packages tp
    ON c.country_id = tp.country_id
JOIN bookings b
    ON tp.package_id = b.package_id
WHERE b.booking_status = 'Confirmed'
GROUP BY
    c.country_id,
    c.country_name
ORDER BY total_revenue DESC;


-- 41. Find hotels linked to multiple packages
SELECT
    h.hotel_id,
    h.hotel_name,
    COUNT(ph.package_id) AS package_count
FROM hotels h
JOIN package_hotels ph
    ON h.hotel_id = ph.hotel_id
GROUP BY
    h.hotel_id,
    h.hotel_name
HAVING COUNT(ph.package_id) > 1;

-- 42. Display payment amount by payment status
SELECT
    payment_status,
    SUM(payment_amount) AS total_amount
FROM payments
GROUP BY payment_status;


-- 43. Find the number of bookings made by customers from each city
SELECT
    c.city,
    COUNT(b.booking_id) AS booking_count
FROM customers c
JOIN bookings b
    ON c.customer_id = b.customer_id
GROUP BY c.city
ORDER BY booking_count DESC;


-- =========================================================
-- 11. JOIN QUERIES
-- =========================================================

-- 44. Display customer names along with booking details
SELECT
    c.customer_name,
    b.booking_id,
    b.booking_date,
    b.number_of_people,
    b.booking_status
FROM customers c
JOIN bookings b
    ON c.customer_id = b.customer_id;


--45. Show package name and country name together
SELECT
    tp.package_name,
    c.country_name
FROM tour_packages tp
JOIN countries c
    ON tp.country_id = c.country_id;


--46. Display hotel names for each package
SELECT
    tp.package_name,
    h.hotel_name
FROM tour_packages tp
JOIN package_hotels ph
    ON tp.package_id = ph.package_id
JOIN hotels h
    ON ph.hotel_id = h.hotel_id;


--47. Display guide names assigned to packages
SELECT
    tp.package_name,
    tg.guide_name
FROM tour_packages tp
JOIN package_guides pg
    ON tp.package_id = pg.package_id
JOIN tour_guides tg
    ON pg.guide_id = tg.guide_id;


--48. Show customer names with payment status
SELECT
    c.customer_name,
    b.booking_id,
    p.payment_status
FROM customers c
JOIN bookings b
    ON c.customer_id = b.customer_id
JOIN payments p
    ON b.booking_id = p.booking_id;


--49. Show all customers who booked luxury packages
SELECT DISTINCT
    c.customer_name,
    tp.package_name,
    tp.package_type
FROM customers c
JOIN bookings b
    ON c.customer_id = b.customer_id
JOIN tour_packages tp
    ON b.package_id = tp.package_id
WHERE tp.package_type = 'Luxury';


--50. Display flight details for each package
SELECT
    tp.package_name,
    f.flight_number,
    f.departure_city,
    f.arrival_city,
    f.airline_name
FROM tour_packages tp
JOIN package_flights pf
    ON tp.package_id = pf.package_id
JOIN flights f
    ON pf.flight_id = f.flight_id;


--51.Display package, hotel and country together
SELECT
    tp.package_name,
    c.country_name,
    h.hotel_name,
    h.city
FROM tour_packages tp
JOIN countries c
    ON tp.country_id = c.country_id
JOIN package_hotels ph
    ON tp.package_id = ph.package_id
JOIN hotels h
    ON ph.hotel_id = h.hotel_id;


--52. Display complete booking details
SELECT
    b.booking_id,
    c.customer_name,
    tp.package_name,
    b.booking_date,
    b.number_of_people,
    b.booking_status,
    p.payment_amount,
    p.payment_method,
    p.payment_status
FROM bookings b
JOIN customers c
    ON b.customer_id = c.customer_id
JOIN tour_packages tp
    ON b.package_id = tp.package_id
LEFT JOIN payments p
    ON b.booking_id = p.booking_id;


--53. Display packages with their country and assigned guides
SELECT
    tp.package_name,
    c.country_name,
    tg.guide_name
FROM tour_packages tp
JOIN countries c
    ON tp.country_id = c.country_id
JOIN package_guides pg
    ON tp.package_id = pg.package_id
JOIN tour_guides tg
    ON pg.guide_id = tg.guide_id;


--54. Display packages with their hotels and flights
SELECT
    tp.package_name,
    h.hotel_name,
    f.flight_number
FROM tour_packages tp
LEFT JOIN package_hotels ph
    ON tp.package_id = ph.package_id
LEFT JOIN hotels h
    ON ph.hotel_id = h.hotel_id
LEFT JOIN package_flights pf
    ON tp.package_id = pf.package_id
LEFT JOIN flights f
    ON pf.flight_id = f.flight_id;


-- =========================================================
-- 12. SUBQUERIES
-- =========================================================

-- 55. Display customers who have not made any payments
SELECT
    customer_id,
    customer_name
FROM customers
WHERE customer_id NOT IN (
    SELECT b.customer_id
    FROM bookings b
    JOIN payments p
        ON b.booking_id = p.booking_id
);

-- 56. Find packages that do not have assigned guides
SELECT
    package_id,
    package_name
FROM tour_packages
WHERE package_id NOT IN (
    SELECT package_id
    FROM package_guides
);

-- 57. Find the second highest package price
SELECT
    MAX(package_price) AS second_highest_price
FROM tour_packages
WHERE package_price < (
    SELECT MAX(package_price)
    FROM tour_packages
);


-- 58. Display the package with the second highest price
SELECT
    package_name,
    package_price
FROM tour_packages
WHERE package_price = (
    SELECT MAX(package_price)
    FROM tour_packages
    WHERE package_price < (
        SELECT MAX(package_price)
        FROM tour_packages
    )
);

-- 59. Find customers whose payment amount is
--     above the average payment amount
SELECT DISTINCT
    c.customer_id,
    c.customer_name,
    p.payment_amount
FROM customers c
JOIN bookings b
    ON c.customer_id = b.customer_id
JOIN payments p
    ON b.booking_id = p.booking_id
WHERE p.payment_amount > (
    SELECT AVG(payment_amount)
    FROM payments
);


-- 60. Find the most expensive tour package
SELECT
    package_name,
    package_price
FROM tour_packages
WHERE package_price = (
    SELECT MAX(package_price)
    FROM tour_packages
);

-- 61. Find packages priced above the average package price
SELECT
    package_name,
    package_price
FROM tour_packages
WHERE package_price > (
    SELECT AVG(package_price)
    FROM tour_packages
);


-- 62. Find customers who booked the most expensive package
SELECT DISTINCT
    c.customer_name,
    tp.package_name,
    tp.package_price
FROM customers c
JOIN bookings b
    ON c.customer_id = b.customer_id
JOIN tour_packages tp
    ON b.package_id = tp.package_id
WHERE tp.package_price = (
    SELECT MAX(package_price)
    FROM tour_packages
);

-- 63. Find packages having more bookings than the average number of bookings per package
SELECT
    package_id,
    COUNT(*) AS booking_count
FROM bookings
GROUP BY package_id
HAVING COUNT(*) > (
    SELECT AVG(booking_count)
    FROM (
        SELECT
            package_id,
            COUNT(*) AS booking_count
        FROM bookings
        GROUP BY package_id
    ) AS package_bookings
);


-- 64. Find customers who made more than one booking
SELECT
    customer_id,
    customer_name
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM bookings
    GROUP BY customer_id
    HAVING COUNT(*) > 1
);


-- 65. Display monthly booking trends
SELECT
    YEAR(booking_date) AS booking_year,
    MONTH(booking_date) AS booking_month,
    COUNT(*) AS booking_count
FROM bookings
GROUP BY YEAR(booking_date), MONTH(booking_date)
ORDER BY booking_year, booking_month;


-- 66. Find duplicate cities from customers table
SELECT
    city,
    COUNT(*) AS customer_count
FROM customers
GROUP BY city
HAVING COUNT(*) > 1;


-- 67. Rank tour packages based on price
SELECT
    package_name,
    package_price,
    RANK() OVER (ORDER BY package_price DESC) AS price_rank
FROM tour_packages;


-- 68. Rank packages based on number of bookings
SELECT
    tp.package_name,
    COUNT(b.booking_id) AS booking_count,
    RANK() OVER (ORDER BY COUNT(b.booking_id) DESC) AS booking_rank
FROM tour_packages tp
LEFT JOIN bookings b
    ON tp.package_id = b.package_id
GROUP BY tp.package_id, tp.package_name;


-- 70. Display monthly bookings with running total
WITH MonthlyBookings AS (
    SELECT
        YEAR(booking_date) AS booking_year,
        MONTH(booking_date) AS booking_month,
        COUNT(*) AS booking_count
    FROM bookings
    GROUP BY YEAR(booking_date), MONTH(booking_date)
)
SELECT
    booking_year,
    booking_month,
    booking_count,
    SUM(booking_count) OVER (
        ORDER BY booking_year, booking_month
    ) AS running_total
FROM MonthlyBookings
ORDER BY booking_year, booking_month;


-- 71. Find the package generating the highest revenue
SELECT
    tp.package_name,
    SUM(tp.package_price * b.number_of_people) AS total_revenue
FROM tour_packages tp
JOIN bookings b
    ON tp.package_id = b.package_id
WHERE b.booking_status = 'Confirmed'
GROUP BY tp.package_id, tp.package_name
ORDER BY total_revenue DESC
LIMIT 1;


-- 72. Find guides assigned to more than one package
SELECT
    tg.guide_id,
    tg.guide_name,
    COUNT(pg.package_id) AS package_count
FROM tour_guides tg
JOIN package_guides pg
    ON tg.guide_id = pg.guide_id
GROUP BY tg.guide_id, tg.guide_name
HAVING COUNT(pg.package_id) > 1;


-- 73. Find packages having no bookings
SELECT
    tp.package_id,
    tp.package_name
FROM tour_packages tp
LEFT JOIN bookings b
    ON tp.package_id = b.package_id
WHERE b.booking_id IS NULL;


-- 74. Find customers who have cancelled bookings
SELECT DISTINCT
    c.customer_id,
    c.customer_name
FROM customers c
JOIN bookings b
    ON c.customer_id = b.customer_id
WHERE b.booking_status = 'Cancelled';


-- 75. Display booking count and total people for each package
SELECT
    tp.package_name,
    COUNT(b.booking_id) AS booking_count,
    COALESCE(SUM(b.number_of_people), 0) AS total_people
FROM tour_packages tp
LEFT JOIN bookings b
    ON tp.package_id = b.package_id
GROUP BY tp.package_id, tp.package_name
ORDER BY booking_count DESC;


-- 76. Find average number of people per booking for each package
SELECT
    tp.package_name,
    AVG(b.number_of_people) AS average_people_per_booking
FROM tour_packages tp
JOIN bookings b
    ON tp.package_id = b.package_id
GROUP BY tp.package_id, tp.package_name
ORDER BY average_people_per_booking DESC;


-- 77. Display complete booking report
SELECT
    b.booking_id,
    c.customer_name,
    c.city,
    tp.package_name,
    tp.package_type,
    tp.duration_days,
    b.booking_date,
    b.number_of_people,
    b.booking_status,
    p.payment_amount,
    p.payment_method,
    p.payment_status
FROM bookings b
JOIN customers c
    ON b.customer_id = c.customer_id
JOIN tour_packages tp
    ON b.package_id = tp.package_id
LEFT JOIN payments p
    ON b.booking_id = p.booking_id
ORDER BY b.booking_date DESC;