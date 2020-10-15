CREATE DATABASE best_service;

USE best_service;

CREATE TABLE tbl_data_toko(
id_toko INT PRIMARY KEY AUTO_INCREMENT,
nama_toko VARCHAR(100) UNIQUE NOT NULL,
logo_toko VARCHAR(200),
alamat_toko VARCHAR(200) NOT NULL,
no_telp VARCHAR(20) UNIQUE
);

CREATE TABLE tbl_jabatan(
id_jabatan VARCHAR(10) PRIMARY KEY NOT NULL,
nama_jabatan VARCHAR(100),
status_jabatan BOOLEAN
);

CREATE TABLE tbl_bank(
id_bank VARCHAR(5) PRIMARY KEY NOT NULL,
nama_bank VARCHAR(20) UNIQUE,
status_bank BOOLEAN
);

CREATE TABLE tbl_karyawan(
id_karyawan VARCHAR(10) PRIMARY KEY NOT NULL,
id_jabatan VARCHAR(10) NOT NULL,
nik VARCHAR(20) UNIQUE NOT NULL,
nama_karyawan VARCHAR(200) NOT NULL,
alamat VARCHAR(200),
no_hp VARCHAR(20) UNIQUE,
email VARCHAR(50) UNIQUE,
username VARCHAR(20) UNIQUE,
pass VARCHAR(50),
no_rek VARCHAR(20) UNIQUE,
id_bank VARCHAR(5),
status_karyawan BOOLEAN,
CONSTRAINT FOREIGN KEY (id_jabatan) REFERENCES tbl_jabatan(id_jabatan),
CONSTRAINT FOREIGN KEY (id_bank) REFERENCES tbl_bank(id_bank)
);

CREATE TABLE tbl_faktur(
id_faktur VARCHAR(10) PRIMARY KEY NOT NULL,
tipe_bayar ENUM("Tunai","Kredit"),
status_faktur BOOLEAN
);

CREATE TABLE tbl_barang(
id_barang VARCHAR(10) PRIMARY KEY NOT NULL,
nama_barang VARCHAR(200),
tipe_barang VARCHAR(100),
keterangan VARCHAR(50),
status_barang BOOLEAN
);

CREATE TABLE tbl_gudang(
id_gudang VARCHAR(20) PRIMARY KEY NOT NULL,
nama_gudang VARCHAR(100),
alamat VARCHAR(200),
keterangan VARCHAR(10),
status_gudang BOOLEAN
);

CREATE TABLE tbl_suplier(
id_suplier VARCHAR(10) PRIMARY KEY NOT NULL,
nama_suplier VARCHAR(200),
alamat VARCHAR(200),
no_telp VARCHAR(20) UNIQUE,
no_rek VARCHAR(20) UNIQUE,
id_bank VARCHAR(5),
CONSTRAINT FOREIGN KEY (id_bank) REFERENCES tbl_bank(id_bank)
);

CREATE TABLE tbl_pelanggan(
id_pelanggan INT PRIMARY KEY AUTO_INCREMENT,
nik VARCHAR(20) UNIQUE,
nama_pelanggan VARCHAR(200),
alamat VARCHAR(200),
no_telp VARCHAR(20),
status_pelanggan BOOLEAN
);
