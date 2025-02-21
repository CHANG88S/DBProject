use db440;

insert into Customer (Membership_id, First_name, Last_name, Birthday, Join_date, Phone_number) values
(1, 'John', 'Doe', '1990-05-12', '2023-01-10', '555-123-4567'),
(2, 'Jane', 'Smith', '1985-11-23', '2023-02-15', '555-234-5678'),
(3, 'Alice', 'Johnson', '1992-08-19', '2023-03-01', '555-345-6789'),
(4, 'Robert', 'Brown', '1988-01-05', '2023-04-22', '555-456-7890'),
(5, 'Emily', 'Davis', '1995-06-10', '2023-05-18', '555-567-8901'),
(6, 'Michael', 'Miller', '1987-09-30', '2023-06-12', '555-678-9012'),
(7, 'Sarah', 'Wilson', '1993-03-15', '2023-07-08', '555-789-0123'),
(8, 'David', 'Moore', '1989-12-02', '2023-08-20', '555-890-1234'),
(9, 'Laura', 'Taylor', '1991-07-28', '2023-09-03', '555-901-2345'),
(10, 'James', 'Anderson', '1990-04-25', '2023-10-14', '555-012-3456'),
(11, 'Olivia', 'Thomas', '1994-10-05', '2023-11-11', '555-123-0123'),
(12, 'William', 'Harris', '1986-02-22', '2023-12-01', '555-234-1010'),
(13, 'Sophia', 'Martin', '1993-06-18', '2023-12-15', '555-345-2020'),
(14, 'Ethan', 'Garcia', '1988-03-09', '2024-01-05', '555-456-3030'),
(15, 'Emma', 'Martinez', '1996-11-27', '2024-01-20', '555-567-4040');

insert into Worker (Worker_id, First_name, Last_name, Hire_date, Position, Salary) values
(1, 'Alice', 'Reed', '2020-06-15', 'Cashier', 32000.00),
(2, 'Michael', 'Carter', '2019-11-03', 'Manager', 50000.00),
(3, 'Sophia', 'Lee', '2021-01-20', 'Cashier', 35000.00),
(4, 'James', 'White', '2022-04-10', 'Cashier', 36000.00),
(5, 'Emma', 'Brooks', '2023-09-12', 'Cashier', 30000.00);

insert into Kiosk (Kiosk_id, Payment_options, Change_available) values
(1, 'Cash, Credit Card, Mobile Payments', 150.75),
(2, 'Cash, Credit Card', 200.00),
(3, 'Credit Card, Mobile Payments', 0.00),
(4, 'Cash, Mobile Payments', 120.50),
(5, 'Cash, Credit Card, Mobile Payments', 175.25);

insert into Inventory (Inventory_id, Stock_amount, Restock_amount, Last_restock_date, Inventory_space, Kiosk_id) values
(1, 50, 100, '2023-11-01', 200, 1),
(2, 30, 50, '2023-11-10', 150, 2),
(3, 70, 120, '2023-10-20', 250, 3),
(4, 100, 200, '2023-09-15', 300, 4),
(5, 80, 150, '2023-12-01', 220, 5),
(6, 60, 90, '2023-11-25', 180, 1),
(7, 120, 180, '2023-08-30', 400, 2),
(8, 200, 250, '2023-09-10', 500, 3),
(9, 150, 220, '2023-10-01', 350, 4),
(10, 90, 130, '2023-11-18', 280, 5);

insert into Product (Product_id, Product_name, Price, Department, Shelf_life, Inventory_id) values
(1, 'Apple', 1.50, 'Fruits', 30, 1),
(2, 'Banana', 0.75, 'Fruits', 7, 1),
(3, 'Orange', 2.00, 'Fruits', 20, 2),
(4, 'Grapes', 3.50, 'Fruits', 15, 3),
(5, 'Milk', 1.20, 'Dairy', 10, 4),
(6, 'Cheese', 5.00, 'Dairy', 20, 5),
(7, 'Yogurt', 1.80, 'Dairy', 10, 6),
(8, 'Butter', 3.25, 'Dairy', 15, 7),
(9, 'Eggs', 2.50, 'Dairy', 30, 8),
(10, 'Bread', 2.00, 'Bakery', 5, 9),
(11, 'Croissant', 3.00, 'Bakery', 3, 10),
(12, 'Bagel', 1.50, 'Bakery', 7, 1),
(13, 'Pizza Dough', 4.00, 'Bakery', 14, 2),
(14, 'Cereal', 3.75, 'Grocery', 60, 3),
(15, 'Pasta', 2.80, 'Grocery', 120, 4),
(16, 'Rice', 1.90, 'Grocery', 180, 5),
(17, 'Flour', 1.50, 'Grocery', 365, 6),
(18, 'Sugar', 1.30, 'Grocery', 360, 7),
(19, 'Salt', 0.80, 'Grocery', 180, 8),
(20, 'Black Pepper', 2.00, 'Spices', 180, 9),
(21, 'Garlic', 2.50, 'Spices', 30, 10),
(22, 'Cinnamon', 3.00, 'Spices', 60, 1),
(23, 'Paprika', 1.80, 'Spices', 120, 2),
(24, 'Olive Oil', 7.00, 'Oils', 365, 3),
(25, 'Canola Oil', 4.00, 'Oils', 365, 4),
(26, 'Vegetable Oil', 3.50, 'Oils', 365, 5),
(27, 'Vinegar', 2.00, 'Oils', 365, 6),
(28, 'Tomato Sauce', 2.20, 'Canned Goods', 365, 7),
(29, 'Canned Beans', 1.50, 'Canned Goods', 365, 8),
(30, 'Canned Tuna', 2.50, 'Canned Goods', 365, 9),
(31, 'Frozen Peas', 2.80, 'Frozen', 365, 10),
(32, 'Frozen Pizza', 6.00, 'Frozen', 180, 1),
(33, 'Ice Cream', 5.50, 'Frozen', 90, 2),
(34, 'Frozen Vegetables', 3.00, 'Frozen', 365, 3),
(35, 'Chicken Nuggets', 4.50, 'Frozen', 180, 4),
(36, 'Beef Stew', 7.00, 'Frozen', 365, 5),
(37, 'Soda', 1.50, 'Beverages', 180, 6),
(38, 'Juice', 3.00, 'Beverages', 30, 7),
(39, 'Coffee', 4.50, 'Beverages', 180, 8),
(40, 'Tea', 2.20, 'Beverages', 365, 9),
(41, 'Water', 1.00, 'Beverages', 180, 10),
(42, 'Toothpaste', 2.50, 'Health & Beauty', 365, 1),
(43, 'Shampoo', 4.00, 'Health & Beauty', 180, 2),
(44, 'Conditioner', 4.00, 'Health & Beauty', 180, 3),
(45, 'Body Wash', 3.50, 'Health & Beauty', 180, 4),
(46, 'Soap', 1.00, 'Health & Beauty', 365, 5),
(47, 'Detergent', 5.50, 'Household', 365, 6),
(48, 'Paper Towels', 3.00, 'Household', 180, 7),
(49, 'Trash Bags', 2.00, 'Household', 365, 8),
(50, 'Batteries', 4.00, 'Electronics', 365, 9);

insert into Transactions (Transaction_id, Customer_id, Kiosk_id, Product_id, Worker_id, Transaction_time, Quantity, Total_price) values
(1, 1, 1, 1, 3, '2024-01-01 10:00:00', 12, 120.50),
(2, 2, 2, 3, 2, '2024-02-15 12:15:00', 6, 80.00),
(3, 3, 3, 5, 1, '2024-03-10 14:30:00', 2, 30.20),
(4, 4, 4, 7, 4, '2024-04-05 09:00:00', 3, 45.60),
(5, 5, 5, 9, 2, '2024-05-20 16:00:00', 18, 180.00),
(6, 6, 1, 8, 3, '2024-06-18 11:00:00', 4, 42.40),
(7, 7, 2, 10, 1, '2024-07-22 13:30:00', 15, 210.00),
(8, 8, 3, 12, 4, '2024-08-09 15:45:00', 7, 95.50),
(9, 9, 4, 14, 2, '2024-09-14 09:15:00', 10, 138.00),
(10, 10, 5, 16, 1, '2024-10-30 10:00:00', 5, 62.50),
(11, 11, 1, 18, 3, '2024-11-02 11:45:00', 20, 150.00),
(12, 12, 2, 19, 2, '2024-12-11 13:20:00', 8, 112.80),
(13, 13, 3, 21, 4, '2024-01-20 14:30:00', 13, 169.50),
(14, 14, 4, 23, 2, '2024-02-25 16:10:00', 4, 53.60),
(15, 15, 5, 25, 1, '2024-03-12 11:25:00', 9, 132.00),
(16, 1, 1, 27, 3, '2024-04-01 12:00:00', 6, 72.00),
(17, 2, 2, 29, 2, '2024-05-10 14:00:00', 16, 240.00),
(18, 3, 3, 31, 1, '2024-06-21 13:45:00', 8, 112.00),
(19, 4, 4, 33, 4, '2024-07-03 16:20:00', 5, 75.00),
(20, 5, 5, 35, 2, '2024-08-17 13:25:00', 12, 180.00),
(21, 6, 1, 37, 1, '2024-09-10 12:15:00', 14, 196.00),
(22, 7, 2, 39, 3, '2024-10-05 14:30:00', 9, 135.00),
(23, 8, 3, 41, 4, '2024-11-21 16:00:00', 11, 158.00),
(24, 9, 4, 43, 2, '2024-12-02 09:30:00', 7, 98.00),
(25, 10, 5, 45, 1, '2024-01-10 11:00:00', 3, 45.00),
(26, 11, 1, 47, 3, '2024-02-14 13:30:00', 4, 60.00),
(27, 12, 2, 49, 2, '2024-03-22 14:45:00', 18, 250.00),
(28, 13, 3, 50, 1, '2024-04-25 13:15:00', 5, 75.00),
(29, 14, 4, 3, 4, '2024-05-18 10:00:00', 9, 135.00),
(30, 15, 5, 5, 2, '2024-06-06 14:00:00', 13, 195.00),
(31, 1, 1, 7, 3, '2024-07-09 11:10:00', 8, 96.00),
(32, 2, 2, 9, 2, '2024-08-01 12:30:00', 6, 72.00),
(33, 3, 3, 11, 1, '2024-09-15 14:00:00', 4, 48.00),
(34, 4, 4, 13, 4, '2024-10-11 15:15:00', 2, 28.00),
(35, 5, 5, 25, 2, '2024-11-04 10:30:00', 15, 225.00),
(36, 6, 1, 47, 3, '2024-12-07 13:30:00', 3, 54.00),
(37, 7, 2, 39, 1, '2024-01-23 10:45:00', 10, 150.00),
(38, 8, 3, 21, 4, '2024-02-12 12:00:00', 6, 72.00),
(39, 9, 4, 13, 2, '2024-03-27 16:30:00', 8, 116.00),
(40, 10, 5, 45, 1, '2024-04-02 11:45:00', 14, 210.00),
(41, 11, 1, 37, 3, '2024-05-13 10:20:00', 7, 98.00),
(42, 12, 2, 29, 2, '2024-06-19 15:30:00', 9, 135.00),
(43, 13, 3, 11, 1, '2024-07-05 13:10:00', 13, 195.00),
(44, 14, 4, 3, 4, '2024-08-20 12:00:00', 6, 90.00),
(45, 15, 5, 35, 2, '2024-09-22 11:00:00', 10, 150.00);

insert into Worker_Kiosk_Shift (Shift_id, Worker_id, Kiosk_id, Shift_date, Start_time, End_time) values
(1, 1, 1, '2024-01-10', '09:00:00', '17:00:00'),
(2, 1, 2, '2024-01-15', '10:00:00', '18:00:00'),
(3, 1, 3, '2024-02-05', '09:30:00', '17:30:00'),
(4, 1, 4, '2024-03-12', '08:45:00', '16:45:00'),
(5, 1, 5, '2024-04-10', '09:15:00', '17:15:00'),
(6, 2, 1, '2024-01-20', '09:00:00', '17:00:00'),
(7, 2, 2, '2024-02-14', '10:00:00', '18:00:00'),
(8, 2, 3, '2024-03-22', '09:30:00', '17:30:00'),
(9, 2, 4, '2024-04-18', '08:45:00', '16:45:00'),
(10, 2, 5, '2024-05-10', '09:15:00', '17:15:00'),
(11, 3, 1, '2024-01-25', '09:00:00', '17:00:00'),
(12, 3, 2, '2024-02-10', '10:00:00', '18:00:00'),
(13, 3, 3, '2024-03-15', '09:30:00', '17:30:00'),
(14, 3, 4, '2024-04-05', '08:45:00', '16:45:00'),
(15, 3, 5, '2024-05-25', '09:15:00', '17:15:00'),
(16, 4, 1, '2024-01-30', '09:00:00', '17:00:00'),
(17, 4, 2, '2024-02-17', '10:00:00', '18:00:00'),
(18, 4, 3, '2024-03-25', '09:30:00', '17:30:00'),
(19, 4, 4, '2024-04-07', '08:45:00', '16:45:00'),
(20, 4, 5, '2024-05-15', '09:15:00', '17:15:00'),
(21, 5, 1, '2024-02-01', '09:00:00', '17:00:00'),
(22, 5, 2, '2024-03-10', '10:00:00', '18:00:00'),
(23, 5, 3, '2024-04-02', '09:30:00', '17:30:00'),
(24, 5, 4, '2024-05-05', '08:45:00', '16:45:00'),
(25, 5, 5, '2024-06-01', '09:15:00', '17:15:00'),
(26, 1, 1, '2024-06-20', '09:00:00', '17:00:00'),
(27, 1, 2, '2024-07-15', '10:00:00', '18:00:00'),
(28, 1, 3, '2024-08-05', '09:30:00', '17:30:00'),
(29, 1, 4, '2024-09-12', '08:45:00', '16:45:00'),
(30, 1, 5, '2024-10-10', '09:15:00', '17:15:00'),
(31, 2, 1, '2024-07-25', '09:00:00', '17:00:00'),
(32, 2, 2, '2024-08-12', '10:00:00', '18:00:00'),
(33, 2, 3, '2024-09-18', '09:30:00', '17:30:00'),
(34, 2, 4, '2024-10-05', '08:45:00', '16:45:00'),
(35, 2, 5, '2024-11-05', '09:15:00', '17:15:00'),
(36, 3, 1, '2024-06-25', '09:00:00', '17:00:00'),
(37, 3, 2, '2024-08-18', '10:00:00', '18:00:00'),
(38, 3, 3, '2024-09-22', '09:30:00', '17:30:00'),
(39, 3, 4, '2024-10-30', '08:45:00', '16:45:00'),
(40, 3, 5, '2024-11-18', '09:15:00', '17:15:00'),
(41, 4, 1, '2024-07-05', '09:00:00', '17:00:00'),
(42, 4, 2, '2024-08-02', '10:00:00', '18:00:00'),
(43, 4, 3, '2024-09-08', '09:30:00', '17:30:00'),
(44, 4, 4, '2024-10-20', '08:45:00', '16:45:00'),
(45, 4, 5, '2024-11-30', '09:15:00', '17:15:00');
