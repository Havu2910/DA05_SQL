--bai tap 1
SELECT a.Continent, 
ROUND(AVG(b.Population), 0) AS average_city_populations
FROM CITY AS b
INNER JOIN COUNTRY AS a
ON b.CountryCode = a.Code
GROUP BY a.Continent
--bai tap 2
SELECT a.Continent, 
ROUND(AVG(b.Population), 0) AS average_city_populations
FROM CITY AS b
INNER JOIN COUNTRY AS a
ON b.CountryCode = a.Code
GROUP BY a.Continent
--bai tap 3

-- bai 4
SELECT a.customer_id
FROM customer_contracts as a
left join products as b
on a.product_id=b.product_id
GROUP BY a.customer_id
having count (DISTINCT product_category) >= (select (count (DISTINCT product_category)) from products)
-- bai 5
select emp.employee_id, emp.name,
count (reports_to) as reports_count,
round(avg(emp.age),0) as average_age
from employees as emp
join employees as mng
ON emp.reports_to = mng.employee_id
group by emp.employee_id, emp.name
order by mng.employee_id
-- bai tap 6
select a.product_name,
SUM(b.unit) as unit
from products as a
join orders as b
on a.product_id = b.product_id 
WHERE MONTH(b.order_date) = 2
AND YEAR(b.order_date) = 2020
group by a.product_name
having SUM(b.unit)>=100 
-- bai 7
SELECT a.page_id 
FROM pages as a
left join page_likes as b
on a.page_id = b.page_id 
where b.liked_date is null
order by a.page_id
