select SUM(total_price) AS Total_Revenue from pizza_sales

SELECT SUM(total_price)/ COUNT(DISTINCT order_id) AS AVG_Order_Value from pizza_sales

SELECT SUM(quantity) AS Total_pizza_sold from pizza_sales

select count(Distinct order_id) as Total_orders from pizza_sales 

select cast(SUM(quantity)AS DECIMAL(10,2 ))/ count(distinct order_id) from pizza_sales

select DATENAME (DW, order_date)as order_day, COUNT(DISTINCT order_id) as total_orders 
from pizza_sales Group BY DATENAME(DW, order_date)

select DATENAME(MONTH, order_date) AS month_name, count(DISTINCT order_id) AS total_orders
from pizza_sales
Group BY DATENAME(MONTH, order_date)
ORDER BY total_orders DESC

select pizza_category, sum(total_price) as total_sales, sum(total_price)*100/ (select sum(total_price) from pizza_sales where MONTH(order_date) = 1) AS total_percent_sales
from pizza_sales 
where MONTH(order_date) = 1
Group By pizza_category

select pizza_size, sum(total_price) as total_sales, sum(total_price)*100/ (select sum(total_price) from pizza_sales where MONTH(order_date) = 1) AS total_percent_sales
from pizza_sales 
where DATEPART(quarter, order_date) = 1
Group By pizza_size
ORDER BY total_percent_sales DESC

select top 5 pizza_name, sum(total_price) AS total_revenue from pizza_sales
Group BY pizza_name

select top 5 pizza_name,Count(distinct order_id) AS total_quantity from pizza_sales
Group BY pizza_name
order by total_quantity DESC

select top 5 pizza_name,sum(quantity) AS total_quantity from pizza_sales
Group BY pizza_name
order by total_quantity DESC

