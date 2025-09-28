-- Membuat database
CREATE DATABASE smartcity;
USE smartcity;

-- Membuat table USER
CREATE TABLE USER (
    User_id INT AUTO_INCREMENT PRIMARY KEY,
    Nama VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Role ENUM('Warga', 'Admin', 'Petugas') NOT NULL
);
-- Menampilkan table user
SELECT * FROM USER; 

-- Membuat table CATEGORY
CREATE TABLE CATEGORY (
    Category_id INT AUTO_INCREMENT PRIMARY KEY,
    Nama_kategori VARCHAR(100) NOT NULL,
    Deskripsi TEXT
);
-- Menampilkan table category
SELECT * FROM category;

-- Membuat table LOCATION
CREATE TABLE LOCATION (
    Location_id INT AUTO_INCREMENT PRIMARY KEY,
    Nama_lokasi VARCHAR(100) NOT NULL,
    Alamat TEXT
);
-- Menampilkan table location
SELECT * FROM location;

-- Membuat table COMPLAINT
CREATE TABLE COMPLAINT (
    Complaint_id INT AUTO_INCREMENT PRIMARY KEY,
    User_id INT NOT NULL,
    Category_id INT NULL,
    Location_id INT NULL,
    Judul VARCHAR(200) NOT NULL,
    Deskripsi TEXT,
    Status ENUM('Baru', 'Diproses', 'Selesai') DEFAULT 'Baru',
    Created_at DATETIME DEFAULT CURRENT_TIMESTAMP,

    -- Membuat Foreign Keys
    CONSTRAINT fk_Complaint_User FOREIGN KEY (User_id) 
        REFERENCES USER(User_id)
        ON DELETE CASCADE ON UPDATE CASCADE,

    CONSTRAINT fk_Complaint_Category FOREIGN KEY (Category_id) 
        REFERENCES CATEGORY(Category_id)
        ON DELETE SET NULL ON UPDATE CASCADE,

    CONSTRAINT fk_Complaint_Location FOREIGN KEY (Location_id) 
        REFERENCES LOCATION(Location_id)
        ON DELETE SET NULL ON UPDATE CASCADE
);
-- Menampilkan table complaint
SELECT * FROM COMPLAINT;

-- Contoh insert untuk menambahkan data ke table USER
INSERT INTO USER (Nama, Email, Role) VALUES
('Andi Saputra', 'andi@gmail.com', 'Warga'),
('Budi Santoso', 'budi@gmail.com', 'Petugas'),
('Citra Lestari', 'citra@gmail.com', 'Admin');
SELECT * FROM USER; -- Menampilkan table

-- Contoh insert untuk menambahkan data ke table CATEGORY
INSERT INTO CATEGORY (Nama_kategori, Deskripsi) VALUES
('Jalan Rusak', 'Laporan mengenai kerusakan jalan umum'),
('Sampah', 'Laporan penumpukan atau sampah tidak terangkut'),
('Lampu Jalan', 'Laporan lampu jalan mati atau bermasalah');
SELECT * FROM category; -- Menampilkan table

-- Contoh insert untuk menambahkan data ke table LOCATION
INSERT INTO LOCATION (Nama_lokasi, Alamat) VALUES
('Jl. Merdeka', 'Jl. Merdeka No. 10, Jakarta'),
('Taman Kota', 'Taman Kota Blok A, Jakarta'),
('Pasar Tradisional', 'Jl. Raya Pasar, Jakarta');
SELECT * FROM location;

-- Contoh insert untuk menambahkan data ke table COMPLAINT
INSERT INTO COMPLAINT (User_id, Category_id, Location_id, Judul, Deskripsi, status)
VALUES
(1, 1, 1, 'Jalan Berlubang', 'Terdapat lubang besar di tengah jalan Merdeka.', 'Baru'),
(2, 2, 2, 'Sampah Menumpuk', 'Sampah di Taman Kota sudah 3 hari tidak diangkut.', 'Diproses'),
(3, 3, 3, 'Lampu Mati', 'Lampu jalan di dekat pasar tidak menyala sejak seminggu.', 'Selesai');
SELECT * FROM complaint; -- Menampilkan table