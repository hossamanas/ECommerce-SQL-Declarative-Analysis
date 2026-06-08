-- 1. Create Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL,
    City VARCHAR(50),
    JoinDate DATE
);

-- 2. Create Products Table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    Price DECIMAL(10, 2) NOT NULL
);

-- 3. Create Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    OrderDate DATE,
    Quantity INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- ========================================================
-- Insert Sample Data
-- ========================================================

INSERT INTO Customers VALUES 
(1, 'Ahmed Ali', 'Cairo', '2025-01-15'),
(2, 'Sara Omar', 'Alexandria', '2025-02-10'),
(3, 'Moustafa Hassan', 'Cairo', '2025-03-05'),
(4, 'Layla Nour', 'Giza', '2025-04-20'),
(5, 'Ziad Mahmoud', 'Alexandria', '2025-05-12');

INSERT INTO Products VALUES 
(101, 'Laptop Pro', 'Electronics', 1200.00),
(102, 'Wireless Mouse', 'Electronics', 25.00),
(103, 'Mechanical Keyboard', 'Electronics', 80.00),
(104, 'Running Shoes', 'Apparel', 90.00),
(105, 'Sports Jacket', 'Apparel', 120.00),
(106, 'Coffee Maker', 'Home Appliances', 150.00);

INSERT INTO Orders VALUES 
(1001, 1, 101, '2026-01-10', 1),
(1002, 1, 102, '2026-01-12', 2),
(1003, 2, 104, '2026-02-15', 1),
(1004, 3, 101, '2026-03-01', 1),
(1005, 4, 106, '2026-04-18', 1),
(1006, 2, 105, '2026-05-02', 2),
(1007, 5, 103, '2026-05-20', 1),
(1008, 3, 102, '2026-06-01', 3);
