-- Anisa Intania Putri
-- QUIZ PERTEMUAN 5

CREATE DATABASE Quiz5;
USE Quiz5;

CREATE TABLE invoices (
id INT AUTO_INCREMENT PRIMARY KEY,
Total DECIMAL (10,2)
);

INSERT INTO invoices (Total) VALUES 
(1.98), (3.96),(5.94),(8.91),(13.86),(0.99),(1.98),(1.98),(3.96),
(5.94),(8.91),(13.86),(0.99),(1.98),(1.98),(3.96),(5.94),(8.91),
(13.86),(0.99),(1.98),(1.98),(3.96),(5.94),(8.91)
;
SELECT * FROM invoices;

-- Contoh
SELECT total %0.75 FROM invoices;

-- QUIZ 5 QUERY
-- 1. Tambahkan 0.25 cent service fee ke setiap nilai Total
SELECT id, Total, Total + 0.25 AS TotalBaru
FROM invoices;

-- 2. Kurangi 0.15 cent untuk diskon dari setiap nilai Total
SELECT id, Total, Total - 0.15 AS DiskonTotal
FROM invoices;

-- 3. Gandakan setiap nilai Total
SELECT id, Total, Total * 2 AS DoubelTotal
FROM invoices;

-- 4. Kurangi 50% (bagi 2) dari setiap nilai Total
SELECT id, Total, Total / 2 AS SetengahTotal
FROM invoices;

-- 5. Gunakan modulus untuk sisa pembagian 2
SELECT id, Total, Total % 2 AS Remainder
FROM invoices;