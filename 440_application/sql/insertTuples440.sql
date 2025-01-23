use application440;

INSERT INTO Customer (Membership_id, First_name, Last_name, Birthday, Join_date, Phone_number) VALUES
(1, 'Alice', 'Smith', '1990-05-10', '2023-01-15', '555-1234'),
(2, 'Bob', 'Johnson', '1985-03-22', '2022-11-10', '555-5678'),
(3, 'Carol', 'Williams', '1992-07-15', '2024-01-10', '555-9012'),
(4, 'David', 'Brown', '1990-12-25', '2023-06-05', '555-3456'),
(5, 'Emma', 'Jones', '1998-09-17', '2024-02-20', '555-7890'),
(6, 'Frank', 'Garcia', '1987-11-03', '2023-03-12', '555-6543'),
(7, 'Grace', 'Miller', '1995-07-19', '2024-03-01', '555-9876'),
(8, 'Henry', 'Davis', '1993-01-29', '2023-04-18', '555-4321'),
(9, 'Ivy', 'Wilson', '1997-06-08', '2022-08-22', '555-8765'),
(10, 'Jack', 'Taylor', '1990-10-14', '2024-05-14', '555-2109'),
(11, 'Kate', 'Anderson', '1994-03-05', '2023-07-25', '555-3458'),
(12, 'Leo', 'Thomas', '1999-04-23', '2024-08-03', '555-5671'),
(13, 'Mia', 'Harris', '1988-08-13', '2022-10-11', '555-8910'),
(14, 'Noah', 'Martinez', '1996-12-01', '2023-09-19', '555-2345'),
(15, 'Olivia', 'White', '1991-02-22', '2024-06-29', '555-6782');

INSERT INTO Worker (Worker_id, First_name, Last_name, Hire_date, Position, Salary) VALUES
(1, 'David', 'Brown', '2015-06-01', 'Manager', 55000),
(2, 'Emma', 'Jones', '2017-03-15', 'Cashier', 32000),
(3, 'Frank', 'Garcia', '2020-09-05', 'Technician', 45000),
(4, 'Grace', 'Miller', '2018-01-20', 'Supervisor', 50000),
(5, 'Henry', 'Davis', '2021-11-10', 'Cashier', 33000);

INSERT INTO Kiosk (Kiosk_id, Payment_options, Change_available) VALUES
(1, 'Cash, Credit, Debit', 500.00),
(2, 'Credit, Debit', 300.00),
(3, 'Cash, Credit', 700.00),
(4, 'Cash, Credit, Debit, Mobile', 1000.00),
(5, 'Credit, Mobile', 250.00);

INSERT INTO Inventory (Inventory_id, Stock_amount, Restock_amount, Last_restock_date, Inventory_space, Kiosk_id) VALUES
(1, 100, 50, '2024-01-01', 200, 1),
(2, 80, 40, '2024-01-05', 150, 2),
(3, 120, 60, '2024-01-10', 300, 3),
(4, 90, 45, '2024-01-15', 180, 4),
(5, 200, 100, '2024-01-20', 500, 5),
(6, 150, 75, '2024-02-01', 400, 1),
(7, 70, 35, '2024-02-15', 250, 2),
(8, 60, 30, '2024-02-20', 300, 3),
(9, 50, 25, '2024-03-01', 150, 4),
(10, 180, 90, '2024-03-10', 450, 5);

INSERT INTO Product (Product_id, Product_name, Price, Department, Shelf_life, Inventory_id) VALUES
(1, 'Milk', 2.50, 'Dairy', 10, 1),
(2, 'Eggs', 3.00, 'Dairy', 14, 1),
(3, 'Butter', 4.00, 'Dairy', 30, 1),
(4, 'Yogurt', 1.50, 'Dairy', 20, 1),
(5, 'Cheese', 5.00, 'Dairy', 60, 1),
(6, 'Bread', 1.80, 'Bakery', 5, 2),
(7, 'Croissant', 2.50, 'Bakery', 4, 2),
(8, 'Muffin', 3.20, 'Bakery', 3, 2),
(9, 'Bagel', 1.50, 'Bakery', 7, 2),
(10, 'Donut', 1.00, 'Bakery', 3, 2),
(11, 'Apple', 0.50, 'Produce', 7, 3),
(12, 'Banana', 0.30, 'Produce', 5, 3),
(13, 'Orange', 0.80, 'Produce', 10, 3),
(14, 'Grapes', 2.50, 'Produce', 14, 3),
(15, 'Pineapple', 3.00, 'Produce', 10, 3),
(16, 'Chicken Breast', 8.00, 'Meat', 5, 4),
(17, 'Ground Beef', 6.50, 'Meat', 7, 4),
(18, 'Pork Chops', 7.20, 'Meat', 6, 4),
(19, 'Bacon', 4.50, 'Meat', 20, 4),
(20, 'Sausage', 3.00, 'Meat', 14, 4),
(21, 'Pasta', 1.20, 'Pantry', 365, 5),
(22, 'Rice', 0.90, 'Pantry', 365, 5),
(23, 'Cereal', 3.50, 'Pantry', 180, 5),
(24, 'Soup Can', 2.00, 'Pantry', 730, 5),
(25, 'Peanut Butter', 3.80, 'Pantry', 365, 5),
(26, 'Soda', 1.20, 'Beverages', 365, 6),
(27, 'Juice', 2.00, 'Beverages', 30, 6),
(28, 'Energy Drink', 2.50, 'Beverages', 60, 6),
(29, 'Water Bottle', 0.80, 'Beverages', 730, 6),
(30, 'Coffee', 5.00, 'Beverages', 365, 6),
(31, 'Soap', 1.00, 'Household', 730, 7),
(32, 'Shampoo', 3.50, 'Household', 730, 7),
(33, 'Toothpaste', 2.50, 'Household', 730, 7),
(34, 'Detergent', 10.00, 'Household', 730, 7),
(35, 'Paper Towels', 1.50, 'Household', 730, 7),
(36, 'Chocolate Bar', 1.20, 'Snacks', 365, 8),
(37, 'Chips', 1.80, 'Snacks', 180, 8),
(38, 'Cookies', 2.00, 'Snacks', 180, 8),
(39, 'Popcorn', 1.00, 'Snacks', 180, 8),
(40, 'Crackers', 2.50, 'Snacks', 365, 8),
(41, 'Toothbrush', 1.00, 'Health', 730, 9),
(42, 'Vitamins', 10.00, 'Health', 730, 9),
(43, 'Bandages', 2.50, 'Health', 730, 9),
(44, 'Pain Reliever', 5.00, 'Health', 730, 9),
(45, 'Antiseptic', 3.50, 'Health', 730, 9),
(46, 'Dog Food', 15.00, 'Pet', 365, 10),
(47, 'Cat Litter', 10.00, 'Pet', 365, 10),
(48, 'Bird Seed', 8.00, 'Pet', 365, 10),
(49, 'Fish Flakes', 5.00, 'Pet', 365, 10),
(50, 'Hamster Bedding', 12.00, 'Pet', 365, 10);

INSERT INTO Transactions (Transaction_id, Customer_id, Kiosk_id, Transaction_time, Total_price) VALUES
(1, 1, 1, '2024-01-15 10:15:00', 85.40),
(2, 2, 2, '2024-01-16 14:20:00', 43.25),
(3, 3, 3, '2024-01-18 09:50:00', 120.99),
(4, 4, 4, '2024-01-20 16:30:00', 34.10),
(5, 5, 5, '2024-01-22 18:45:00', 210.75),
(6, 6, 1, '2024-01-25 12:10:00', 98.60),
(7, 7, 2, '2024-01-28 08:00:00', 65.30),
(8, 8, 3, '2024-01-30 14:45:00', 75.50),
(9, 9, 4, '2024-02-01 17:25:00', 150.80),
(10, 10, 5, '2024-02-04 11:30:00', 48.90),
(11, 11, 1, '2024-02-08 15:15:00', 130.45),
(12, 12, 2, '2024-02-10 10:50:00', 58.70),
(13, 13, 3, '2024-02-12 13:25:00', 220.15),
(14, 14, 4, '2024-02-15 09:40:00', 99.99),
(15, 15, 5, '2024-02-18 18:00:00', 200.00),
(16, 1, 1, '2024-02-20 12:35:00', 76.80),
(17, 2, 2, '2024-02-22 10:45:00', 45.20),
(18, 3, 3, '2024-02-25 16:50:00', 180.75),
(19, 4, 4, '2024-02-28 19:10:00', 55.30),
(20, 5, 5, '2024-03-01 08:20:00', 125.00);

INSERT INTO Transaction_Details (Detail_id, Transaction_id, Product_id, Quantity) VALUES
(1, 1, 1, 2),
(2, 1, 2, 1),
(3, 2, 3, 3),
(4, 2, 4, 2),
(5, 3, 5, 1),
(6, 3, 6, 4),
(7, 4, 7, 3),
(8, 4, 8, 1),
(9, 5, 9, 5),
(10, 5, 10, 2),
(11, 6, 11, 1),
(12, 6, 12, 3),
(13, 7, 13, 2),
(14, 7, 14, 4),
(15, 8, 15, 1),
(16, 8, 16, 3),
(17, 9, 17, 2),
(18, 9, 18, 5),
(19, 10, 19, 1),
(20, 10, 20, 4),
(21, 11, 21, 2),
(22, 11, 22, 1),
(23, 12, 23, 3),
(24, 12, 24, 2),
(25, 13, 25, 1),
(26, 13, 26, 5),
(27, 14, 27, 4),
(28, 14, 28, 3),
(29, 15, 29, 2),
(30, 15, 30, 1),
(31, 16, 31, 5),
(32, 16, 32, 3),
(33, 17, 33, 4),
(34, 17, 34, 2),
(35, 18, 35, 1),
(36, 18, 36, 3),
(37, 19, 37, 2),
(38, 19, 38, 4),
(39, 20, 39, 5),
(40, 20, 40, 1),
(41, 20, 41, 2),
(42, 20, 42, 1),
(43, 20, 43, 3),
(44, 20, 44, 4),
(45, 20, 45, 2),
(46, 20, 46, 5),
(47, 20, 47, 1),
(48, 20, 48, 3),
(49, 20, 49, 2),
(50, 20, 50, 4);

INSERT INTO Worker_Kiosk_Shift (Shift_id, Worker_id, Kiosk_id, Shift_date, Start_time, End_time) VALUES
(1, 1, 1, '2024-01-05', '08:00:00', '14:00:00'),
(2, 2, 2, '2024-01-05', '14:00:00', '20:00:00'),
(3, 3, 3, '2024-01-06', '08:00:00', '14:00:00'),
(4, 4, 4, '2024-01-06', '14:00:00', '20:00:00'),
(5, 5, 5, '2024-01-07', '08:00:00', '14:00:00'),
(6, 1, 2, '2024-01-07', '14:00:00', '20:00:00'),
(7, 2, 3, '2024-01-08', '08:00:00', '14:00:00'),
(8, 3, 4, '2024-01-08', '14:00:00', '20:00:00'),
(9, 4, 5, '2024-01-09', '08:00:00', '14:00:00'),
(10, 5, 1, '2024-01-09', '14:00:00', '20:00:00');
