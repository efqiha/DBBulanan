CREATE DATABASE dbbulanan;

CREATE TABLE anggota_keluarga (
    id_anggota_keluarga INT PRIMARY KEY AUTO_INCREMENT,
    nama VARCHAR(255) NOT NULL,
    hubungan VARCHAR(50) NOT NULL,
    tgl_lahir DATE,
    ket_keluarga TEXT
);

CREATE TABLE pengeluaran (
    id_pengeluaran INT PRIMARY KEY AUTO_INCREMENT,
    id_anggota_keluarga INT NOT NULL,
    tgl_pengeluaran DATE NOT NULL,
    kategori_pengeluaran VARCHAR(100) NOT NULL,
    jumlah_pengeluaran DECIMAL(10,2) NOT NULL,
    ket_pengeluaran TEXT,
    FOREIGN KEY (id_anggota_keluarga) REFERENCES anggota_keluarga(id_anggota_keluarga)
);

CREATE TABLE pendapatan (
    id_pendapatan INT PRIMARY KEY AUTO_INCREMENT,
    id_anggota_keluarga INT NOT NULL,
    tgl_pendapatan DATE NOT NULL,
    sumber_pendapatan VARCHAR(100) NOT NULL,
    jumlah_pendapatan DECIMAL(10,2) NOT NULL,
    ket_pendapatan TEXT,
    FOREIGN KEY (id_anggota_keluarga) REFERENCES anggota_keluarga(id_anggota_keluarga)
);

CREATE TABLE tabungan (
    id_tabungan INT PRIMARY KEY AUTO_INCREMENT,
    id_anggota_keluarga INT NOT NULL,
    tgl_tabungan DATE NOT NULL,
    jumlah_tabungan DECIMAL(10,2) NOT NULL,
    ket_tabungan TEXT,
    FOREIGN KEY (id_anggota_keluarga) REFERENCES anggota_keluarga(id_anggota_keluarga)
);

SELECT * FROM anggota_keluarga;
SELECT * FROM pengeluaran;
SELECT * FROM pendapatan;
SELECT * FROM tabungan;

INSERT INTO anggota_keluarga(nama, hubungan, tgl_lahir) VALUES(
    'Faqih',
    'Ayah',
    '1996-03-06'
    ),
    (
    'Tschya',
    'Ibu',
    '1996-08-19'
    ),
    (
    'Sinarmas',
    'Anak',
    '2028-05-14'
    );

INSERT INTO pengeluaran (id_anggota_keluarga, tgl_pengeluaran, kategori_pengeluaran, jumlah_pengeluaran, ket_pengeluaran)
VALUES(
    1, '2024-05-01',
    'Groceries',
    100.00,
    'Belanja bulanan'
    ),
    (
    2,
    '2024-05-02',
    'Entertainment',
    50.00,
    'Tiket nonton bioskop'
    ),
    (
    3,
    '2024-05-03',
    'School supplies',
    25.00,
    'Perlengkapan sekolah'
    );

INSERT INTO pendapatan (id_anggota_keluarga, tgl_pendapatan, sumber_pendapatan, jumlah_pendapatan, ket_pendapatan)
VALUES(
    1, 
    '2024-05-15', 
    'Gaji bulanan', 
    5000.00, ''
    ),
    (
    2, 
    '2024-05-20', 
    'Freelance project', 
    1000.00, ''
    ),
    (
    3, 
    '2024-05-25', 
    'Uang jajan anak', 
    200.00, 
    'Diberikan oleh orang tua'
    );

INSERT INTO tabungan (id_anggota_keluarga, tgl_tabungan, jumlah_tabungan, ket_tabungan)
VALUES(
    1, 
    '2024-05-31', 
    200.00, 
    'Tabungan bulanan'
    ),
    (
    2, 
    '2024-05-28', 
    150.00, 
    'Setoran tambahan'
    ),
    (
    3, 
    '2024-05-10', 
    50.00, 
    'Tabungan anak'
    );
