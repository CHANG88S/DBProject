SELECT 
    P.Product_name,
    P.Department,
    I.Stock_amount,
    I.Restock_amount,
    I.Last_restock_date,
    W.First_name AS Worker_First_Name,
    W.Last_name AS Worker_Last_Name
FROM 
    Inventory I
JOIN 
    Product P ON I.Product_id = P.Product_id
JOIN 
    Worker W ON I.Worker_id = W.Worker_id
WHERE 
    I.Last_restock_date IS NOT NULL
	AND I.Stock_amount < 300 -- Parameter
    AND P.Department = 'Meat' -- Parameter
ORDER BY 
    I.Last_restock_date DESC;
