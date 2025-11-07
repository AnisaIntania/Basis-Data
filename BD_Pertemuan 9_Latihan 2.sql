-- Anisa Intania Putri
-- 2024071010
-- Latihan 2

CREATE DATABASE db_dosen_kuliah;
USE db_dosen_kuliah;

-- Data definition language
CREATE TABLE dosen (
  id_dosen INT PRIMARY KEY,
  nama_depan_dosen VARCHAR(50) NOT NULL,
  nama_belakang_dosen VARCHAR(50) NOT NULL,
  email_dosen VARCHAR(100) UNIQUE
);

CREATE TABLE kuliah (
  id_kuliah INT PRIMARY KEY,
  nama_kuliah VARCHAR(100) NOT NULL,
  no_dept VARCHAR(20)
);

CREATE TABLE dosen_kuliah (
  id_dosen INT,
  id_kuliah INT,
  PRIMARY KEY (id_dosen, id_kuliah),
  FOREIGN KEY (id_dosen) REFERENCES dosen(id_dosen),
  FOREIGN KEY (id_kuliah) REFERENCES kuliah(id_kuliah)
);

-- Data manipulation language
INSERT INTO dosen (id_dosen, nama_depan_dosen, nama_belakang_dosen, email_dosen)
VALUES
(1, 'Budi', 'Santoso', 'budi@kampus.ac.id'),
(2, 'Lina', 'Dewi', 'lina@kampus.ac.id'),
(3, 'Andi', 'Saputra', 'andi@kampus.ac.id');

INSERT INTO kuliah (id_kuliah, nama_kuliah, no_dept)
VALUES
(101, 'Basis Data', 'D01'),
(102, 'Pemrograman Web', 'D02'),
(103, 'Jaringan Komputer', 'D03');

INSERT INTO dosen_kuliah (id_dosen, id_kuliah)
VALUES
(1, 101),
(1, 102),
(2, 103),
(3, 101);

-- Menampilkan data relasi 
SELECT 
  CONCAT(d.nama_depan_dosen, ' ', d.nama_belakang_dosen) AS nama_dosen,
  d.email_dosen,
  k.nama_kuliah,
  k.no_dept
FROM dosen d
JOIN dosen_kuliah dk ON d.id_dosen = dk.id_dosen
JOIN kuliah k ON dk.id_kuliah = k.id_kuliah;

-- Menampilkan Table 
SELECT * FROM dosen;
SELECT * FROM dosen_kuliah;
SELECT * FROM kuliah;