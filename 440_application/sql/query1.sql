use application440;

select C.First_name, C.Last_name, SUM(TD.Quantity * P.Price) as Total_spent
from Transactions T
join Transaction_Details TD on T.Transaction_id = TD.Transaction_id
join Product P on TD.Product_id = P.Product_id
join Customer C on T.Customer_id = C.Membership_id
where T.Transaction_time between '2024-01-15 00:00:00' and '2024-03-15 23:59:59'  -- PARAMETER
group by C.Membership_id
order by Total_spent desc;
