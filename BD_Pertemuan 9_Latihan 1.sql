-- Anisa Intania Putri
-- 2024071010
-- STUDI KASUS, LATIHAN 1 DAN PERINTAH COMMIT, ROLLBACK, DAN SAVEPOINT

CREATE DATABASE pert9;
USE pert9;

-- STUDI KASUS PERTEMUAN 9
CREATE TABLE Departemen (
NO_DEPT CHAR(15) NOT NULL,
NAMA_DEPT CHAR(35) NOT NULL,
PRIMARY KEY (NO_DEPT)
);

-- Tabel pegawai 
CREATE TABLE PEGAWAI (
NO_PEG CHAR(6) PRIMARY KEY NOT NULL,
NAMA_PEGAWAI CHAR(40) NOT NULL,
NO_HP CHAR(15) NOT NULL,
NO_DEPT CHAR(15) NOT NULL,
FOREIGN KEY (NO_DEPT) REFERENCES DEPARTEMEN (NO_DEPT)
ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE PEGAWAI (
NO_PEG CHAR(5) PRIMARY KEY NOT NULL,
NAMA_PEGAWAI CHAR(40) NOT NULL,
NO_HP CHAR(15) NOT NULL,
NO_PEMIMPIN CHAR(5),
FOREIGN KEY (NO_PEMIMPIN) REFERENCES PEGAWAI(NO_PEG)
ON DELETE RESTRICT ON UPDATE CASCADE
);

SELECT * FROM PEGAWAI;
SELECT * FROM Departemen;

CREATE TABLE dosen (
  id_dosen INT PRIMARY KEY,
  nama_dosen VARCHAR(100) NOT NULL,
  email_dosen VARCHAR(100) UNIQUE
);

-- Tabel kuliah
CREATE TABLE kuliah (
  id_kuliah INT PRIMARY KEY,
  nama_kuliah VARCHAR(100) NOT NULL,
  sks INT,
  id_dosen INT,
  FOREIGN KEY (id_dosen) REFERENCES dosen(id_dosen)
);

-- Isi data Tabel DOSEN
INSERT INTO dosen (id_dosen, nama_dosen, email_dosen)
VALUES
(1, 'Dr. Budi Santoso', 'budi@kampus.ac.id'),
(2, 'Dr. Lina Dewi', 'lina@kampus.ac.id');

-- Isi data Tabel KULIAH
INSERT INTO kuliah (id_kuliah, nama_kuliah, sks, id_dosen)
VALUES
(101, 'Basis Data', 3, 1),
(102, 'Algoritma dan Pemrograman', 3, 1),
(103, 'Jaringan Komputer', 2, 2);

-- Menampilkan hasil data relasi
SELECT 
  dosen.nama_dosen,
  dosen.email_dosen,
  kuliah.nama_kuliah,
  kuliah.sks
FROM kuliah
JOIN dosen ON kuliah.id_dosen = dosen.id_dosen;

-- Perintah COMMIT, ROLLBACK, DAN SAVEPOINT
CREATE TABLE Mahasiswa (
  nim INT PRIMARY KEY,
  nama VARCHAR(50),
  ipk DECIMAL(3,2)
);

INSERT INTO Mahasiswa VALUES
(12345, 'Andi', 3.0),
(12346, 'Budi', 3.2);

-- COMMIT
START TRANSACTION;
BEGIN;
UPDATE Mahasiswa
SET ipk = 3.8
WHERE nim = 12345;
COMMIT;

-- ROLLBACK
START TRANSACTION;
BEGIN;
UPDATE Mahasiswa
SET ipk = 2.5
WHERE nim = 12345;
ROLLBACK;

-- SAVEPOINT
CREATE TABLE MataKuliah (
  kode_matkul INT PRIMARY KEY,
  nama_matkul VARCHAR(100)
) ENGINE=InnoDB;

INSERT INTO MataKuliah VALUES (1234, 'Basis Data 1');
START TRANSACTION;

UPDATE MataKuliah
SET nama_matkul = 'Pengantar Sistem Basis Data'
WHERE kode_matkul = 1234;

COMMIT;

-- Cek hasil perubahan
SELECT * FROM MataKuliah;