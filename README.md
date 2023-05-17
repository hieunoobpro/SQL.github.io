# SQL.github.io
SQL code
1. Lấy ra thông tin của sinh viên có tuổi lớn hơn 20 và nhỏ hơn 30
\nSELECT * FROM `tbl_sinhvien` WHERE tuoi > 20 AND tuoi < 30
2. Lấy ra thông tin của sinh viên có tuổi bé hơn 20 hoặc lớn hơn 30
\nSELECT * FROM `tbl_sinhvien` WHERE tuoi < 20 AND tuoi > 30
3. Lấy ra thông tin của sinh viên có tuổi cao nhất lớp
\nSELECT * FROM tbl_sinhvien WHERE tuoi = (SELECT MAX(tuoi) FROM tbl_sinhvien);
