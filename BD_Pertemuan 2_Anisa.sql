-- LATIHAN SQL PERTEMUAN 2
-- Anisa Intania Putri

CREATE DATABASE latihan1; -- Membuat database
USE latihan1; -- Masuk ke database

-- Latihan SQL (1):  Membuat table employee 
CREATE TABLE employee (
id_emp VARCHAR (5),
name_emp VARCHAR (50),
age int
);

-- Menampilkan tabel yang telah dibuat
SELECT * FROM employee;

-- Menambahkan data dengan perintah INSERT jalankan 2x 
INSERT INTO employee (id_emp, name_emp, age) 
VALUES ('123', 'Budi', 21);
INSERT INTO employee (id_emp, name_emp, age) 
VALUES ('123', 'Budi', 21);

-- Latihan SQL (2): Menampilkan data yang telah di-INSERT dengan perintah SELECT
SELECT * FROM employee;

-- Mengubah data baris ke-2
UPDATE employee 
SET id_emp = 234, name_emp = 'Dani', age = 23
WHERE id_emp = 123 AND name_emp = 'Budi'
LIMIT 1;
SELECT * FROM employee;

-- Latihan SQL (3): Buat id_emp pada table Employee menjadi Primary Key dg perintah ALTER TABLE
ALTER TABLE employee 
ADD PRIMARY KEY (id_emp);

-- Tampilkan struktur table Employee 
DESCRIBE employee;

-- Tambahkan data berikut 
INSERT INTO employee (id_emp, name_emp, age) 
VALUES ('123', 'Arief', 24);

-- Apa yang terjadi? Apa kesimpulan yang bisa didapat?
-- Error Code: 1062. Duplicate entry '123' for key 'employee.PRIMARY'
-- Data Arief tidak masuk karena id_empnya sama seperti budi 
-- id_emp memiliki PRIMARY KEY maka tidak bisa memiliki duplikat

-- Latihan SQL (4): Menambahkan data 
INSERT INTO employee (id_emp, name_emp, age) 
VALUES ('134', 'Arief', 24);
INSERT INTO employee (id_emp, name_emp, age) 
VALUES ('144', 'Intan', 20);
INSERT INTO employee (id_emp, name_emp, age) 
VALUES ('155', 'Ayu', 21); 
SELECT * FROM employee;

-- Latihan SQL (4): Menghapus data dengan kondisi WHERE
DELETE FROM employee WHERE id_emp = '123'; -- Menghapus berdasarkan id_emp
DELETE FROM employee WHERE name_emp = 'Intan'; -- Menghapus berdasarkan nama
DELETE FROM employee WHERE age = 21; -- Menghapus berdasarkan usia

-- Apa yang terjadi? Apa kesimpulan yang bisa didapat?
-- Tidak ada baris yang terhapus, karena memang tidak ada data dengan id_emp = 123.

-- Menampilkan tabel 
SELECT * FROM employee;
-- Setelah semua perintah dijalankan, 
-- data yang tersisa hanyalah dat Arief 

-- Latihan SQL (5): Menambahkan data 
INSERT INTO employee (id_emp, name_emp, age) 
VALUES ('211', 'Mulya', 21);
INSERT INTO employee (id_emp, name_emp, age) 
VALUES ('212', 'Dewi', 22);
INSERT INTO employee (id_emp, name_emp, age) 
VALUES ('213', 'Ayu', 23);

-- Menampilkan hasil penambahan 
SELECT * FROM employee;

-- Menghapus semua data
DELETE FROM employee;

-- Menampilkan data, apakah data masih muncul? TIDAK
SELECT * FROM employee;

-- Membatalkan penghapusan data
ROLLBACK;

-- Latihan SQL (6): Menambahkan data 
INSERT INTO employee (id_emp, name_emp, age) 
VALUES ('123', 'Budi B', 21);
INSERT INTO employee (id_emp, name_emp, age) 
VALUES ('234', 'Dani', 23);
INSERT INTO employee (id_emp, name_emp, age) 
VALUES ('134', 'Budi A', 24);
INSERT INTO employee (id_emp, name_emp, age) 
VALUES ('144', 'Intan', 20);
INSERT INTO employee (id_emp, name_emp, age) 
VALUES ('155', 'Budi W', 25);

-- Menampilkan data dengan nama 'Budi' dan usia di atas 21 tahun
SELECT * FROM Employee 
WHERE name_emp = 'Budi' AND age > 21;

-- Menampilkan data dengan usia antara 22-24 tahun
SELECT * FROM Employee WHERE age BETWEEN 22 AND 24;

-- Latihan SQL (7): Menambahkan kolom 'gol'
ALTER TABLE employee
ADD gol VARCHAR (5);

-- Mengisi kolom gol
UPDATE employee
SET gol = CASE
    WHEN id_emp = '123' THEN 'I'
    WHEN id_emp = '234' THEN 'II'
    WHEN id_emp = '134' THEN 'III'
    WHEN id_emp = '144' THEN 'II'
    WHEN id_emp = '155' THEN 'I'
END;

-- Apa yang terjadi jika mengubah data tanpa menggunakan WHERE condition?
-- Kalau WHERE tidak dipakai, perintah UPDATE atau DELETE akan memengaruhi semua baris di tabel, 
-- sehingga seluruh data bisa berubah atau terhapus sekaligus.

-- SELECT 
SELECT * FROM Employee WHERE age BETWEEN 22 AND 24; -- BETWEEN NUMERIK
SELECT * FROM employee WHERE age NOT BETWEEN 22 AND 24; -- NOT BETWEEN
SELECT * FROM employee WHERE id_emp BETWEEN '100' AND '150'; -- BETWEEN VARCHAR
SELECT * FROM employee WHERE name_emp NOT IN ('Budi B', 'Intan', 'Dani'); -- NOT IN
SELECT * FROM Employee WHERE gol IN ('I', 'II'); -- IN
SELECT * FROM Employee WHERE name_emp LIKE 'Budi%'; -- LIKE

-- Latihan SQL (8): Buat table lain dengan struktur sama
CREATE TABLE Employee_temp (
    id INT,
    name_nya VARCHAR(50),
    department VARCHAR(50)
);
SELECT * FROM employee_temp;

-- Menggunakan SELECT untuk menambahkan data dari tabel lain
INSERT INTO Employee_temp (id, name_nya, department) VALUES
(1, 'Andi', 'IT'),
(2, 'Budi', 'HR'),
(3, 'Citra', 'Finance'),
(4, 'Dewi', 'IT');
SELECT * FROM employee_temp;

-- Pake WHERE condition untuk data yang di insert
INSERT INTO Employee (id, name_nya, department)
SELECT id, name_nya, department
FROM Employee_temp
WHERE department = 'IT';

-- Latihan SQL (9): Menambahkan data ke kolom tertentu
INSERT INTO Employee (id_emp, name_emp) VALUES ('214', 'Siti');
SELECT * FROM employee;
ROLLBACK;
SELECT * FROM employee;

-- Bagaimana cara membatalkan operasi INSERT INTO?
-- Membatalkan operasi INSERT INTO dengan ROLLBACK
ROLLBACK;

-- Latihan SQL (10): Membuat tabel golongan
CREATE TABLE Golongan (
    gol VARCHAR(5),
    gol_name VARCHAR(50)
);

-- Mengisi data golongan
INSERT INTO Golongan (gol, gol_name) 
VALUES ('I', 'Golongan I');
INSERT INTO Golongan (gol, gol_name) 
VALUES ('II', 'Golongan II');
INSERT INTO Golongan (gol, gol_name) 
VALUES ('III', 'Golongan III');
INSERT INTO Golongan (gol, gol_name) 
VALUES ('IV', 'Golongan IV');
SELECT * FROM Golongan;

-- Menambahkan Foreign Key dari Employee ke Golongan
ALTER TABLE Employee
ADD CONSTRAINT fk_golongan
FOREIGN KEY (gol) REFERENCES Golongan(gol);

-- Latihan SQL (11): Menampilkan nama golongan untuk setiap employee
SELECT Employee.id_emp, Employee.name_emp, Employee.age, Golongan.gol_name
FROM Employee
JOIN Golongan ON Employee.gol = Golongan.gol;














