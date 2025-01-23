use application440;

select P.Product_name, TD.Quantity, P.Price, (TD.Quantity * P.Price) as Total_price
from Transactions T
join Transaction_Details TD on T.Transaction_id = TD.Transaction_id
join Product P on TD.Product_id = P.Product_id
where T.Customer_id = 1 -- PARAMETER
and T.Transaction_id = (
    select MAX(Transaction_id)
    from Transactions
    where Customer_id = 1 -- PARAMETER
);

