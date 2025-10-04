CREATE DATABASE marketplace1;
USE marketplace1;

-- Membuat table USER
CREATE TABLE USER (
    User_id INT AUTO_INCREMENT PRIMARY KEY, 	-- AUTO ADA SAAT INPUT
    Nama VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Role ENUM('Penjual', 'Pembeli') NOT NULL
);
SELECT * FROM user;

-- Tabel Kategori Produk (yg input penjual)
CREATE TABLE Kategori (
    Kategori_id INT AUTO_INCREMENT PRIMARY KEY, 		-- AUTO ADA SAAT INPUT
    Nama_kategori VARCHAR(100) NOT NULL,
    Deskripsi TEXT,
    Tanggal_input DATETIME DEFAULT CURRENT_TIMESTAMP 	-- AUTO ADA SAAT INPUT
);
SELECT * FROM kategori;

-- Tabel Produk (yg input penjual)
CREATE TABLE Produk (
    Produk_id INT AUTO_INCREMENT PRIMARY KEY,         	-- AUTO ADA SAAT INPUT
    User_id INT NOT NULL,           				  	-- penjual
    Kategori_id INT NOT NULL,       				  	-- kategori produk
    Nama_produk VARCHAR(150) NOT NULL,
    Harga DECIMAL(12,2) NOT NULL,
    Stok INT NOT NULL,
    Tanggal_upload DATETIME DEFAULT CURRENT_TIMESTAMP, 	-- AUTO ADA SAAT PENJUAL INPUT
    FOREIGN KEY (User_id) REFERENCES User(User_id),
    FOREIGN KEY (Kategori_id) REFERENCES Kategori(Kategori_id)
);
SELECT * FROM produk;

-- Tabel Pesanan (yg input pembeli)
CREATE TABLE Pesanan (
    Pesanan_id INT AUTO_INCREMENT PRIMARY KEY, 			-- AUTO ADA SAAT INPUT
    User_id INT NOT NULL,         						-- pembeli
    Produk_id INT NOT NULL,       						-- produk yang dibeli
    Jumlah_barang INT NOT NULL,
    Total_harga DECIMAL(12,2) NOT NULL,
    status ENUM('Menunggu', 'Diproses', 'Dikirim', 'Selesai', 'Dibatalkan') DEFAULT 'Menunggu', -- AUTO ADA SAAT PEMBELI INPUT
    Tanggal_pesanan DATETIME DEFAULT CURRENT_TIMESTAMP,	-- AUTO ADA SAAT INPUT
    FOREIGN KEY (User_id) REFERENCES User(User_id),
    FOREIGN KEY (Produk_id) REFERENCES Produk(Produk_id)
);
SELECT * FROM pesanan;
ALTER TABLE Pesanan RENAME COLUMN Jumlah TO Harga;
ALTER TABLE Pesanan RENAME COLUMN Jumlah TO Jumlah_barang;
ALTER TABLE Pesanan RENAME COLUMN status TO Status;

-- Tabel Pembayaran (sistem)
CREATE TABLE Pembayaran (
    Pembayaran_id INT AUTO_INCREMENT PRIMARY KEY, 				-- AUTO ADA SAAT INPUT
    Pesanan_id INT NOT NULL,
    Metode ENUM('Transfer Bank', 'E-Wallet', 'COD') NOT NULL,
    Harga DECIMAL(12,2) NOT NULL,
    Status ENUM('Menunggu', 'Berhasil', 'Gagal') DEFAULT 'Menunggu',
    Tanggal_bayar DATETIME DEFAULT CURRENT_TIMESTAMP, 			-- AUTO ADA SAAT INPUT
    FOREIGN KEY (Pesanan_id) REFERENCES Pesanan(Pesanan_id)
);
SELECT * FROM pembayaran;

-- User
INSERT INTO User (Nama, Email, Role) VALUES
('Anisa Intania', 'anisa@olshop.com', 'Penjual'),
('Siti Aminah', 'siti@gmail.com', 'Pembeli'),
('Andi Wijaya', 'andi@fashion.com', 'Penjual');
SELECT * FROM user;
INSERT INTO User (Nama, Email, Role) VALUES
('Karine', 'karine@gmail.com', 'Pembeli'),
('Nela', 'nela@gmail.com', 'Pembeli');

-- Kategori
INSERT INTO Kategori (Nama_kategori, Deskripsi) VALUES
('Elektronik', 'Produk elektronik seperti HP, laptop, dan lainnya'),
('Fashion', 'Pakaian, sepatu, tas, dan aksesoris'),
('Makanan', 'Makanan ringan, minuman, dan kebutuhan dapur');
SELECT * FROM kategori;

-- Produk
INSERT INTO Produk (User_id, Kategori_id, Nama_produk, Harga, Stok) VALUES
(1, 1, 'Laptop ASUS VivoBook', 8500000, 5),
(1, 1, 'Smartphone Samsung A14', 3200000, 10),
(3, 2, 'Kaos Polos Hitam', 75000, 30),
(3, 2, 'Sepatu Sneakers Putih', 250000, 15),
(1, 3, 'Keripik Kentang', 15000, 50);
SELECT * FROM produk;

-- Pesanan
INSERT INTO Pesanan (User_id, Produk_id, Jumlah_barang, Total_harga) VALUES
(2, 1, 1, 8500000),   -- Siti pesan 1 laptop
(2, 3, 2, 150000),    -- Siti pesan 2 kaos
(2, 5, 3, 45000);      -- Siti pesan 3 keripik
SELECT * FROM pesanan;

-- Pembayaran
INSERT INTO Pembayaran (Pesanan_id, Metode, Harga, Status) VALUES
(1, 'Transfer Bank', 8500000, 'Berhasil'),
(2, 'E-Wallet', 150000, 'Berhasil'),
(3, 'COD', 45000, 'Berhasil');
SELECT * FROM pembayaran;
ROLLBACK;

-- Cari User
SELECT * FROM User
WHERE Role = 'Penjual'; -- Cari semua penjual
SELECT * FROM User
WHERE Role = 'Pembeli'; -- Cari semua pembeli

-- Cari produk berdasarkan kategori (Ex: Elektronik)
SELECT p.Nama_produk, p.Harga, p.Stok
FROM Produk p
JOIN Kategori k ON p.Kategori_id = k.Kategori_id
WHERE k.Nama_kategori = 'Elektronik';

-- Cara cek stok dann harga barang
SELECT Nama_produk, Stok, Harga FROM Produk;

-- Barang yg harganya kurang dr 50 ribu
SELECT * FROM Produk WHERE Harga < 50000;
SELECT Nama_produk, Harga FROM Produk WHERE Harga < 100000;

-- Cek apasaja yg dipesan oleh siti / user 2
SELECT * FROM Pesanan WHERE User_id = 2;
-- Cek apasaja yg dijual oleh anisa / user 1
SELECT * FROM Produk WHERE User_id = 1;

-- Cara update status pesanan 
UPDATE Pesanan
SET Status = 'Diproses'
WHERE Pesanan_id = 1;
SELECT Pesanan_id, Status FROM pesanan;

-- Hitung total belanja siti/ user 2
SELECT SUM(Total_harga) AS Total_belanja
FROM pesanan
WHERE User_id=2;

-- Memberikan diskon
SELECT Produk_id, Harga, Harga - 5000 AS Harga_diskon 
FROM produk;

-- Menampilkan status pembayaran setiap pesanan
SELECT Pesanan_id, Metode, Harga, Status, Tanggal_bayar FROM pembayaran;