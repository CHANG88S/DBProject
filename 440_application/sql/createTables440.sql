create schema if not exists application440;
use application440;

-- Customer table
create table Customer (
    Membership_id int auto_increment primary key,
    First_name varchar(50),
    Last_name varchar(50),
    Birthday date,
    Join_date date,
    Phone_number varchar(15)
);

-- Worker table
create table Worker (
    Worker_id int auto_increment primary key,
    First_name varchar(50),
    Last_name varchar(50),
    Hire_date date,
    Position varchar(50),
    Salary decimal(10, 2)
);

-- Kiosk table
create table Kiosk (
    Kiosk_id int auto_increment primary key,
    Payment_options varchar(255),
    Change_available decimal(10, 2)
);

-- Inventory table
create table Inventory (
    Inventory_id int auto_increment primary key,
    Stock_amount int,
    Restock_amount int,
    Last_restock_date date,
    Inventory_space int,
    Kiosk_id int,
    foreign key (Kiosk_id) references Kiosk(Kiosk_id)
);

-- Product table
create table Product (
    Product_id int auto_increment primary key,
    Product_name varchar(100),
    Price decimal(10, 2),
    Department varchar(50),
    Shelf_life int,
    Inventory_id int,
    foreign key (Inventory_id) references Inventory(Inventory_id)
);

-- Transactions table (Header information)
create table Transactions (
    Transaction_id int auto_increment primary key,
    Customer_id int,
    Kiosk_id int,
    Transaction_time datetime,
    Total_price decimal(10, 2),
    foreign key (Customer_id) references Customer(Membership_id),
    foreign key (Kiosk_id) references Kiosk(Kiosk_id)
);


-- Transaction_Detail table (Product-level details)
create table Transaction_Details (
    Detail_id int auto_increment primary key,
    Transaction_id int,
    Product_id int,
    Quantity int,
    foreign key (Transaction_id) references Transactions(Transaction_id),
    foreign key (Product_id) references Product(Product_id)
);


-- Worker shifts table
create table Worker_Kiosk_Shift (
    Shift_id int auto_increment primary key,
    Worker_id int,
    Kiosk_id int,
    Shift_date date,
    Start_time time,
    End_time time,
    foreign key (Worker_id) references Worker(Worker_id),
    foreign key (Kiosk_id) references Kiosk(Kiosk_id)
);
