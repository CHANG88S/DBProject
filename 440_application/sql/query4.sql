use application440;

select T.Transaction_id, T.Transaction_time, SUM(TD.Quantity * P.Price) as Total_price
from Transactions T
join Transaction_Details TD on T.Transaction_id = TD.Transaction_id
join Product P on TD.Product_id = P.Product_id
where T.Customer_id = 2 -- PARAMETER
and T.Transaction_time between '2024-01-01' and '2024-12-31' -- PARAMETER
group by T.Transaction_id;

