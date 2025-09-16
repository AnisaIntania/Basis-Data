-- WHERE + Operator
SELECT * FROM Customer WHERE Country = 'Mexico';
SELECT * FROM Product WHERE Price >= 20;
SELECT * FROM Product WHERE Price BETWEEN 18 AND 22;
SELECT * FROM Customer WHERE City IN ('Berlin','London');
SELECT * FROM Customer WHERE City LIKE 'M%';

-- AND, OR, NOT
SELECT * FROM Customer WHERE Country = 'Germany' AND City = 'Berlin';
SELECT * FROM Customer WHERE Country = 'Germany' OR Country = 'Mexico';
SELECT * FROM Customer WHERE NOT Country = 'UK';

-- IS NULL
SELECT CustomerName, ContactName, Address
FROM Customer
WHERE Address IS NULL;

-- MIN / MAX
SELECT MIN(Price) AS SmallestPrice FROM Product;
SELECT MAX(Price) AS LargestPrice FROM Product;

-- ORDER BY + LIMIT
SELECT * FROM Product ORDER BY Price ASC;
SELECT * FROM Product ORDER BY Price DESC;
SELECT * FROM Product ORDER BY Price DESC LIMIT 3;

-- GROUP BY + Aggregate
SELECT Country, COUNT(*) AS jumlah_customer
FROM Customer
GROUP BY Country;

SELECT CategoryID, AVG(Price) AS avg_price
FROM Product
GROUP BY CategoryID;

-- ALIAS
SELECT CustomerName AS Customer, ContactName AS "Contact Person"
FROM Customer;

SELECT ProductID AS ID, ProductName AS NamaProduk, Price AS Harga
FROM Product;

-- DISTINCT
SELECT DISTINCT Country FROM Customer;
SELECT COUNT(DISTINCT Country) FROM Customer;

-- CASE
SELECT ProductName, Price,
CASE
    WHEN Price > 20 THEN 'Mahal'
    WHEN Price = 20 THEN 'Sedang'
    ELSE 'Murah'
END AS KategoriHarga
FROM Product;

-- DML (INSERT, UPDATE, DELETE)
INSERT INTO Customer (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (6, 'Cardinal', 'Oscar Hansen', 'Stavanger 12', 'Stavanger', '4001', 'Norway');

UPDATE Customer
SET City = 'Frankfurt'
WHERE CustomerID = 1;

DELETE FROM Customer WHERE CustomerID = 6;

-- TCL (Transaction)
START TRANSACTION;
UPDATE Product SET Price = Price + 5 WHERE CategoryID = 1;
SAVEPOINT before_delete;
DELETE FROM Customer WHERE Country = 'Mexico';
ROLLBACK TO before_delete;
COMMIT;