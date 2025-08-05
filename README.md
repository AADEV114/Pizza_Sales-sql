Pizza Sales Analytics Project – SQL
In this project, I stepped into the shoes of a data analyst for a fictional pizza restaurant chain. I was given a relational database consisting of four key tables:
-orders: capturing order timestamps and IDs
-order_details: listing pizza quantities per order
-pizzas: linking pizza IDs to sizes and prices
-pizza_types: providing names, categories, and types of pizzas
My objective was to uncover business-critical insights that could help the management understand sales patterns, customer behavior, and revenue drivers.

~I started by calculating the total number of orders using aggregate function Count()
~Then, I computed the total revenue by joining the order_details and pizzas tables and multiplying quantity with price. This gave me the big picture — the scale of our operations and how much we were earning.
~Next, I wanted to know which pizzas were premium-priced. I joined the pizza_types and pizzas tables and sorted by price. This gave me the top 5 highest-priced pizzas, which could be valuable for upselling.
~I analyzed the most commonly ordered pizza size using Count() and grouping it by size. This insight helps in inventory management — we now know which box sizes and crust materials to stock more of.
**~I then looked at the top 5 most ordered pizza types based on quantity by joining pizza_type with pizzas and with order_details and then grouping them and ordering them. This could guide our menu strategy and marketing focus.**
~Using the order_time column, I extracted the hourly distribution of orders usinng MySQL’s HOUR() function to extract hours from time. Turns out, we had a sharp spike in orders during dinner hours — a good insight for staffing and promotions.
~To understand our menu spread, I simply counted the number of pizzas per category (Basically Category Distributiion). This showed whether the menu was balanced or skewed toward certain types.
~I calculated the average number of pizzas sold per day usinng sub-query. To understand how many pizzas we sell on an average day, I first grouped all the orders by their date. Then, for each day, I summed up how many pizzas were ordered by adding up the quantities from each order. Once I had the total pizzas sold per day, I simply took the average across all the days to get the overall daily average. I also rounded it off to a whole number so it's easier to interpret.
~Top 5 revenue generating Pizzas: Similar structure to earlier revenue queries, but ranking by revenue now — ideal for pricing and promotion strategy.
~I wanted to see how much each category of pizza contributes to the total revenue. So, I joined the pizza_types, pizzas, and order_details tables to get the quantity and price for every pizza sold. Then, I calculated the revenue for each category by summing up quantity × price. To get the percentage share, I divided each category’s revenue by the total revenue — which I calculated using a subquery — and multiplied by 100. Finally, I rounded the result and sorted the categories from highest to lowest contribution.
~Then I wanted to understand how the business grows financially over time. So, I first calculated how much revenue we made each day by joining our orders, pizzas, and quantities. Then, I used a window function to get the cumulative revenue — essentially adding up the earnings day by day. This gives us a clear picture of how fast we're growing and whether sales momentum is increasing or slowing down.
~Finally I wanted to find out the top 3 pizzas that earn the most money in each category, like Classic, Veggie, etc. First, I calculated how much each pizza type earned based on how many were sold and their price. Then, I ranked them inside their own categories using SQL’s window function. Then, I filtered the top 3 in each group. This helps us understand customer favorites by category and where most of our revenue comes from.

This project taught me how a business can leverage SQL to tell a story with data. I used joins, aggregations, window functions, and subqueries to explore sales, customer behavior, product performance, and growth trends.
It’s not just about queries — it’s about asking the right questions, and letting the data answer them. Through SQL, I turned raw data into actionable insights, helping the pizzeria better understand its strengths, peak times, top performers, and strategic opportunities.
