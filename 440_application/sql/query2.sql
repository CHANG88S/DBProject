use application440;

select K.Kiosk_id, SUM(TD.Quantity * P.Price) as Total_profit
from Transactions T
join Transaction_Details TD on T.Transaction_id = TD.Transaction_id
join Product P on TD.Product_id = P.Product_id
join Kiosk K on T.Kiosk_id = K.Kiosk_id
where T.Transaction_time between '2024-01-01' and '2024-12-31' -- PARAMETER
group by K.Kiosk_id
order by Total_profit desc;
