# SQL.github.io
SQL code



CREATE DATABASE quanlysinhdiem ;
USE quanlysinhdiem;
CREATE TABLE tbl_sinhvien(
   id int PRIMARY KEY AUTO_INCREMENT,
   ten varchar(30),
   tuoi int,
   gioiTinh int(1),
   maLop varchar(10)
);
CREATE TABLE tbl_giaovien(
   id int PRIMARY KEY AUTO_INCREMENT,
   ten varchar(30),
   tuoi int,
   gioiTinh int(1),
   soNamKN int
);
CREATE TABLE tbl_diem(
   id int PRIMARY KEY AUTO_INCREMENT,
   maSV varchar(30),
   diemToan int(10),
   diemLy int(10),
   diemHoa int(10)
);
INSERT INTO tbl_giaovien (ten,tuoi,gioiTinh,soNamKN) VALUES
('Nguyen Duy Cong',41,1,19),
('Tran Thi Thu ',45,0,10),
('Nguyen Cong Tru',31,1,9),
('Bui Van Dung',35,0,12) ,
('Nguyen Duc Huy',55,1,23) ,
('Ngo Duc Dat',43,1,20),
('Nguyen Hoai Xuan',30,0,4),
('Nguyen Duy Linh',45,1,12) ,
('Nguyen Trung Hung',42,1,14) ,
('Nguyen Duc Long',51,1,20);
INSERT INTO tbl_sinhvien (ten,tuoi,gioiTinh,maLop) VALUES
('Nguyen Duy Anh',21,1,19),
('Nguyen Duy Binh',25,1,19),
('Nguyen Cong Nam',21,1,10),
('Tran Thi Thu Hien ',25,0,10),
('Ngo Gia Khanh ',21,1,10) ,
('Nguyen Duy Hieu',21,1,19),
('Dinh Huyen Tram',21,0,19),
('Ngo Duc Anh',21,1,19) ,
('Nguyen Thuy Kieu',21,0,19) ,
('Le Van Loi',22,1,10);
INSERT INTO tbl_diem (maSV, diemToan, diemLy, diemHoa) VALUES
(1AH, 5,7,9),
(2BC, 8,10,9),
(3EG, 9,8,7),
(4LK, 6,7,9),
(5TL, 7,7,8),
(6HL, 8,9,9),
(7DH, 9,8,6),
(8TH, 8,5,9),
(9LP, 7,9,6),
(1QW, 9,8,9)
