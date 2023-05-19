# SQL.github.io
SQL code



<p>CREATE DATABASE quanlysinhdiem ;</p>
<p>USE quanlysinhdiem;</p>
<p>CREATE TABLE tbl_sinhvien(
   <p>id int PRIMARY KEY AUTO_INCREMENT,
   <p>ten varchar(30),
   <p>tuoi int,
   <p>gioiTinh int(1),
   <p>maLop varchar(10)
);
<p>CREATE TABLE tbl_giaovien(
   <p>id int PRIMARY KEY AUTO_INCREMENT,
   <p>ten varchar(30),
   <p>tuoi int,
   <p>gioiTinh int(1),
   <p>soNamKN int
);
<p>CREATE TABLE tbl_diem(
   <p>id int PRIMARY KEY AUTO_INCREMENT,
   <p>maSV varchar(30),
   <p>diemToan int(10),
   <p>diemLy int(10),
   <p>diemHoa int(10)
);
<p>INSERT INTO tbl_giaovien (ten,tuoi,gioiTinh,soNamKN) VALUES
<p>('Nguyen Duy Cong',41,1,19),
<p>('Tran Thi Thu ',45,0,10),
<p>('Nguyen Cong Tru',31,1,9),
<p>('Bui Van Dung',35,0,12) ,
<p>('Nguyen Duc Huy',55,1,23) ,
<p>('Ngo Duc Dat',43,1,20),
<p>('Nguyen Hoai Xuan',30,0,4),
<p>('Nguyen Duy Linh',45,1,12) ,
<p>('Nguyen Trung Hung',42,1,14) ,
<p>('Nguyen Duc Long',51,1,20);
<p>INSERT INTO tbl_sinhvien (ten,tuoi,gioiTinh,maLop) VALUES
<p>('Nguyen Duy Anh',21,1,19),
<p>('Nguyen Duy Binh',25,1,19),
<p>('Nguyen Cong Nam',21,1,10),
<p>('Tran Thi Thu Hien ',25,0,10),
<p>('Ngo Gia Khanh ',21,1,10) ,
<p>('Nguyen Duy Hieu',21,1,19),
<p>('Dinh Huyen Tram',21,0,19),
<p>('Ngo Duc Anh',21,1,19) ,
<p>('Nguyen Thuy Kieu',21,0,19) ,
<p>('Le Van Loi',22,1,10);
<p>INSERT INTO tbl_diem (maSV, diemToan, diemLy, diemHoa) VALUES
<p>(1AH, 5,7,9),
<p>(2BC, 8,10,9),
<p>(3EG, 9,8,7),
<p>(4LK, 6,7,9),
<p>(5TL, 7,7,8),
<p>(6HL, 8,9,9),
<p>(7DH, 9,8,6),
<p>(8TH, 8,5,9),
<p>(9LP, 7,9,6),
<p>(1QW, 9,8,9)</p>
