# SQL.github.io
SQL code

1. Lấy ra thông tin của sinh viên có tuổi lớn hơn 20 và nhỏ hơn 30: 
<p> SELECT * FROM `tbl_sinhvien` WHERE tuoi > 20 AND tuoi < 30 </p> 
2. Lấy ra thông tin của sinh viên có tuổi bé hơn 20 hoặc lớn hơn 30: 
<p> SELECT * FROM `tbl_sinhvien` WHERE tuoi < 20 AND tuoi > 30 </p>
3. Lấy ra thông tin của sinh viên có tuổi cao nhất lớp: 
 <p>SELECT * FROM tbl_sinhvien WHERE tuoi = (SELECT MAX(tuoi) FROM tbl_sinhvien); </p>
