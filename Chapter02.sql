/* Select Statement */

SELECT *
FROM farmers_market.product
LIMIT 5;

SELECT product_id, product_name
FROM farmers_market.product
LIMIT 5;

SELECT market_date, vendor_id, booth_number
FROM farmers_market.vendor_booth_assignments
LIMIT 5;

SELECT product_id, product_name
FROM farmers_market.product
ORDER BY product_name
LIMIT 5;

SELECT product_id, product_name
FROM farmers_market.product
ORDER BY product_id DESC
LIMIT 5;

SELECT market_date, vendor_id, booth_number
FROM farmers_market.vendor_booth_assignments
ORDER BY market_date, vendor_id
LIMIT 5;

/*Inline Calculations */
-- Multiplication---------------------------------------------------------------
SELECT market_date,
    customer_id,
    vendor_id,
    quantity,
    cost_to_customer_per_qty
FROM farmers_market.customer_purchases
LIMIT 10;

SELECT market_date,
    customer_id,
    vendor_id,
    quantity,
    cost_to_customer_per_qty,
    quantity * cost_to_customer_per_qty AS price
FROM farmers_market.customer_purchases
LIMIT 10;

-- Rounding---------------------------------------------------------------------
SELECT market_date,
    customer_id,
    vendor_id,
    quantity,
    cost_to_customer_per_qty,
    ROUND(quantity * cost_to_customer_per_qty, 2) AS price
FROM farmers_market.customer_purchases
LIMIT 10;

-- Concatenation----------------------------------------------------------------
SELECT customer_id,
    CONCAT(customer_first_name, " ", customer_last_name) AS customer_name
FROM farmers_market.customer
limit 5;

SELECT customer_id,
    CONCAT(customer_first_name, " ", customer_last_name) AS customer_name
    FROM farmers_market.customer
    ORDER BY customer_last_name, customer_first_name
    LIMIT 5;
    /*this shows a sort by values aren't actually in the table!
    /* this may be because its not possible lol */

SELECT customer_id,
    UPPER(CONCAT(customer_last_name, ", ", customer_first_name)) AS customer_name
    FROM farmers_market.customer
    ORDER BY customer_last_name, customer_first_name
    LIMIT 5;

-- Exercises--------------------------------------------------------------------

-- 1 A query that returns the entire customer table

SELECT *
    FROM farmers_market.customer;

-- 2 All columns and 10 rows from customer, sorted by customer_last_name then
-- first name

SELECT *
    FROM farmers_market.customer
    ORDER BY customer_last_name, customer_first_name
    LIMIT 10;

-- 3 All customer IDs and First Names sorted by First name

SELECT customer_id,
    customer_first_name
    FROM farmers_market.customer
    ORDER BY customer_first_name;
