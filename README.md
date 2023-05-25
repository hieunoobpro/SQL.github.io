# SQL.github.io
SQL code



<p>CREATE DATABASE quanlythuctap;
<p>USE quanlythuctap;
<p>CREATE TABLE tbl_khoa (
<p>  id INT PRIMARY KEY AUTO_INCREMENT,
<p> maKhoa VARCHAR(10) NOT NULL,
<p>  tenKhoa VARCHAR(30) NOT NULL,
<p>  sdt VARCHAR(20) NOT NULL
);
<p>CREATE TABLE tbl_giangvien (
<p>  id INT PRIMARY KEY AUTO_INCREMENT,
<p>  maGV VARCHAR(10)  NOT NULL,
<p>  tenGV VARCHAR(100) NOT NULL,
<p>  luong INT NOT NULL,
<p>  maKhoa VARCHAR(10) NOT NULL
);
<p>CREATE TABLE tbl_sinhvien (
<p>  id INT PRIMARY KEY AUTO_INCREMENT,
<p>  maSV INT NOT NULL,
<p>  tenSV VARCHAR(100) NOT NULL,
<p>  maKhoa VARCHAR(10) NOT NULL,
<p>  namSinh INT DEFAULT NULL,
<p>  queQuan VARCHAR(50)
);
<p>CREATE TABLE tbl_huongdan (
<p>  id INT PRIMARY KEY AUTO_INCREMENT,
<p>  maSV INT NOT NULL,
<p>  maDT VARCHAR(10) NOT NULL,
<p>  maGV INT NOT NULL,
<p> ketQua VARCHAR(10)  DEFAULT NULL		
);
<p>CREATE TABLE tbl_detai (
 <p> id INT PRIMARY KEY AUTO_INCREMENT,
  <p>maDT VARCHAR(10) NOT NULL,
 <p> tenDT VARCHAR(50) NOT NULL,
 <p> kinhPhi INT NOT NULL,
 <p> noiThucTap VARCHAR(50) NOT NULL
);
<p>INSERT INTO tbl_giangvien (maGV, tenGV, luong, maKhoa) VALUES
<p>(1, 'Nguyen Van A', 678989898, '1T'),
<p>(2, 'Tran Quang B', 560000000, '2D'),
<p>(3, 'Ho Van C', 587000000, '3C'),
<p>(4, 'Ngo Thi D', 6400000, '2D'),
<p>(5, 'Le Van E', 64400000, '1T'),
<p>(6, 'Do Thanh F', 875500000, '3C'),
<p>(7, 'Tran Van G', 80000000, '1T'),
<p>(8, 'Nguyen Van H', 878000000, '5S');

<p>INSERT INTO tbl_khoa (maKhoa, tenKhoa, sdt) VALUES
<p>('1T', 'Toan', '099987565'),
<p>('2D', 'Dia ly', '09554765757'),
<p>('3C', 'CNTT', '099987945'),
<p>('4H', 'Hoa', '096574535'),
<p>('5S', 'Su', '8832454535'),
<p>('6G', 'GDQP', '0988456632');
<p>INSERT INTO tbl_sinhvien (maSV, tenSV, maKhoa, namSinh, queQuan) VALUES
<p>(1, 'Nguyen Van A', '1T', 2002, 'Ha Noi'),
<p>(2, 'Tran Dai B', '2D', 2001, ‘Ha Noi'),
<p>(3, 'Pham Van C', '2D', 2002, 'Ha Noi'),
<p>(4, 'Nguyen Van D', '3C', 2002, 'Hai Phong'),
<p>(5, 'Le Thi Emin', '1T', 1999, 'Ha Noi'),
<p>(6, 'Tran Van Faker', '5S', 1999, 'Ha Noi'),
<p>(7, 'Vo Thi G', '6G', 2000, 'Ha Noi'),
<p>(8, 'Nguyen Duy H', '1T', 2002, 'Ha Noi');
<p>INSERT INTO tbl_detai (maDT, tenDT, kinhPhi, noiThucTap) VALUES
<p>('TN', 'Trieu Nguyen', 5000000, 'Ha Noi'),
<p>('TD', 'Trieu Dinh', 8000000, 'Ha Noi'),
<p>('TTL','Trieu Tien Le', 6000000, 'Ha Noi'),
<p>('TH', 'Trieu Ho', 7000000, 'Hai Phong'),
<p>('THL', 'Trieu Hau Le', 9000000, 'Ha Noi');

<p>INSERT INTO tbl_huongdan (maSV, maDT, maGV, ketQua) VALUES
<p>(1, 'TN' , 1, ‘Tot’),
<p>(2, 'TD', 2, ‘Kha’),
<p>(3, 'TTL', 3, ‘Tot’),
<p>(5, 'THL', 5, ‘Kha’);
<p>1.
SELECT tbl_giangvien.maGV,tbl_giangvien.tenGV,tbl_khoa.tenKhoa FROM tbl_giangvien JOIN tbl_khoa ON tbl_giangvien.maKhoa = tbl_khoa.maKhoa;
<p>2. SELECT tbl_giangvien.maGV,tbl_giangvien.tenGV,tbl_khoa.tenKhoa FROM tbl_giangvien JOIN tbl_khoa ON tbl_giangvien.maKhoa = tbl_khoa.maKhoa WHERE tbl_khoa.tenKhoa= "Dia Ly";
<p>3.
SELECT COUNT(*) AS soSinhVien FROM tbl_sinhvien JOIN tbl_khoa ON tbl_sinhvien.maKhoa = tbl_khoa.maKhoa WHERE tbl_khoa.tenKhoa= "CNTT";
<p>4.
SELECT tbl_sinhvien.maSV,tbl_sinhvien.tenSV,tbl_sinhvien.namSinh FROM tbl_sinhvien JOIN tbl_khoa ON tbl_sinhvien.maKhoa = tbl_khoa.maKhoa WHERE tbl_khoa.tenKhoa= "Toan";
<p>5.
SELECT COUNT(*) AS soGiangVien FROM tbl_giangvien JOIN tbl_khoa ON tbl_giangvien.maKhoa = tbl_khoa.maKhoa WHERE tbl_khoa.tenKhoa= "CNTT";
<p>6.
SELECT tbl_sinhvien.* FROM tbl_sinhvien LEFT JOIN tbl_huongdan ON tbl_sinhvien.maSV = tbl_huongdan.maSV WHERE tbl_huongdan.maSV IS NULL;
<p>7.
SELECT tbl_khoa.maKhoa, tbl_khoa.tenKhoa, COUNT(tbl_giangvien.id) AS soGiangVien FROM tbl_giangvien JOIN tbl_khoa ON tbl_giangvien.maKhoa = tbl_khoa.maKhoa GROUP BY tbl_khoa.maKhoa;
<p>8.
SELECT tbl_khoa.sdt FROM tbl_khoa JOIN tbl_sinhvien ON tbl_sinhvien.maKhoa = tbl_khoa.maKhoa WHERE tbl_sinhvien.tenSV = "Nguyen Van A";

