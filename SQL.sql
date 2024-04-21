-- 1 task --
SELECT c.company_name , first_name ||''|| last_name AS full_name
FROM customers c
JOIN orders o Using(customer_id)
JOIN employees e USING (employee_id)
JOIN shippers sh ON o.ship_via = sh.shipper_id
WHERE c.city = 'London' AND e.city = 'London' AND sh.company_name ='Speedy Express'

-- 2 task -- 
SELECT product_name,units_in_stock,company_name,phone
FROM products
JOIN categories USING (category_id)
JOIN  suppliers USING (supplier_id)
WHERE discontinued = '1'
GROUP BY product_name , units_in_stock,company_name,phone
HAVING SUM (units_in_stock) < 20


-- 3 task --
SELECT contact_name,order_id
FROM orders
LEFT JOIN customers USING(customer_id)
WHERE fax IS NULL

-- 4 task -- 
SELECT contact_name,order_id
FROM customers
RIGHT JOIN orders USING(customer_id)
WHERE fax IS NULL