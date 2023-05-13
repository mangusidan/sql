Create database ThucTap;
Use ThucTap; 
Create table Khoa(makhoa char(10), tenkhoa char(30), dienthoai char(10));
Create table GiangVien(magv int, hotengv char(30), luong decimal(5,2), makhoa char(10));
Create table SinhVien(masv int, hotensv char(30), makhoa char(10), namsinh int, quequan char(30));
Create table DeTai(madt char(10), tendt char(30), kinhphi int, noithuctap char(30));
Create table HuongDan(masv int, madt char(10), magv int, ketqua decimal(5,2));

INSERT INTO Khoa VALUES ('Geo','Dia ly va QLTN',3855413), ('Math','Toan',3855411), ('Bio','Cong nghe Sinh hoc',3855412);

INSERT INTO GiangVien VALUES (11,'Thanh Binh',700,'Geo'),(12,'Thu Huong',500,'Math'), (13,'Chu Vinh',650,'Geo'), (14,'Le Thi Ly',500,'Bio'), (15,'Tran Son',900,'Math');

INSERT INTO SinhVien VALUES (1,'Le Van Son','Bio',1990,'Nghe An'), (2,'Nguyen Thi Mai','Geo',1990,'Thanh Hoa'), (3,'Bui Xuan Duc','Math',1992,'Ha Noi'), (4,'Nguyen Van Tung','Bio',null,'Ha Tinh'), (5,'Le Khanh Linh','Bio',1989,'Ha Nam'), (6,'Tran Khac Trong','Geo',1991,'Thanh Hoa'), (7,'Le Thi Van','Math',null,'null'), (8,'Hoang Van Duc','Bio',1992,'Nghe An');

INSERT INTO DeTai VALUES ('Dt01','GIS',100,'Nghe An'), ('Dt02','ARC GIS',500,'Nam Dinh'), ('Dt03','Spatial DB',100, 'Ha Tinh'), ('Dt04','MAP',300,'Quang Binh' );

INSERT INTO HuongDan VALUES (1,'Dt01',13,8), (2,'Dt03',14,0), (3,'Dt03',12,10), (5,'Dt04',14,7), (6,'Dt01',13,Null), (7,'Dt04',11,10), (8,'Dt03',15,6);

select * from SinhVien
where hotensv like 'Le%';

select * from GiangVien
where hotengv like '%Thi%' and  makhoa = 'Bio';


SELECT gv.magv,gv.hotengv,k.tenkhoa
FROM GiangVien as gv JOIN Khoa as k
ON gv.makhoa = k.makhoa
WHERE gv.magv IN (
SELECT hd.magv
FROM HuongDan as hd
GROUP BY hd.magv
HAVING COUNT(hd.magv)>1);


SELECT dt.madt,dt.tendt
FROM DeTai as dt
WHERE dt.madt in (
SELECT hd.madt
FROM HuongDan as hd
GROUP BY hd.madt
HAVING COUNT(hd.madt) > 1);