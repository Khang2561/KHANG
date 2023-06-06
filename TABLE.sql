
CREATE TABLE HangSX(
	MaHangSX varchar(10) not null,
	TenHangSX VARCHAR(20),
	CONSTRAINT PF_HangSX PRIMARY KEY (MaHangSX)
);

CREATE TABLE NuocSX(
	MaNuocSX varchar(10) not null,
	TenNuocSX VARCHAR(20),
	CONSTRAINT PF_NuocSX PRIMARY KEY (MaNuocSX)
);

CREATE TABLE TheLoai(
	MaTheLoai varchar(10) not null,
	TenTheLoai varchar(20),
	CONSTRAINT PF_TheLoai PRIMARY KEY (MaTheLoai)
);

CREATE TABLE Phim(
	MaPhim VARCHAR(10) NOT NULL,
	TenPhim VARCHAR(50),
	MaNuocSX VARCHAR(10) NOT NULL,
	MaHangSX VARCHAR(10) NOT NULL,
	DaoDien VARCHAR(20),
	MaTheLoai VARCHAR(10) NOT NULL,
	NgayKhoiChieu DATE,
	NgayKetThuc DATE,
	TongThu money  DEFAULT 0,
	CONSTRAINT PK_Phim primary key (MaPhim),
	CONSTRAINT FK_MaHangSX foreign key (MaHangSX) REFERENCES HangSX(MaHangSX),
	CONSTRAINT FK_MaNuocSX foreign key (MaNuocSX) REFERENCES NuocSX(MaNuocSX),
	CONSTRAINT FK_TheLoai foreign key (MaTheLoai) REFERENCES TheLoai(MaTheLoai)
);

CREATE TABLE RAP(
	MaRap varchar(10) not null,
	TenRap varchar(50),
	DiaChi varchar(100),
	DienThoai varchar(10),
	SoPhong varchar(10)  DEFAULT 0,
	TongSoGhe int  DEFAULT 0,
	CONSTRAINT FK_RAP PRIMARY KEY (MaRap)
);
CREATE TABLE GioChieu(
	MaGioChieu varchar(10) not null,
	MaRap varchar(10),
	XuatChieu text,
	CONSTRAINT PK_GioChieu PRIMARY KEY(MaGioChieu),
	CONSTRAINT FK_MaRap FOREIGN KEY(MaRap) references RAP(MaRap)	
);

CREATE TABLE PhongChieu(
	MaPhong varchar(10) not null primary key,
	MaRap varchar(10) not null,
	TenPhong varchar(50),
	TongSoGhe int  DEFAULT 0,
	constraint FK_MARAP1 foreign key (MaRap) references RAP(MaRap)
);


CREATE TABLE Ve(
	MaVe varchar(10) not null primary key,
	MaRap varchar(10) not null,
	MaPhong varchar(10) not null,
	MaShow varchar(10) not null,
	MaGhe varchar(10) not null ,
	TrangThai varchar(10),
	constraint fk_MaPhong foreign key(MaPhong) references PhongChieu(MaPhong),
	constraint fk_MaRap2 foreign key (MaRap) references RAP(MaRap)
);


CREATE TABLE LichChieu(
	MaShow varchar(10) not null,
	MaPhim varchar(10) not null,
	MaRap varchar(10) not null,
	MaPhong varchar(10) not null,
	NgayChieu datE,
	MaGioChieu varchar(10) not null,
	GiaVe money  DEFAULT 0,
	SoVeDaBan int  DEFAULT 0,
	TongTien money  DEFAULT 0,
	CONSTRAINT PF_LichChieu3 primary key (MaShow),
	CONSTRAINT FK_MaPhim3 foreign key (MaPhim) REFERENCES Phim(MaPhim),
	CONSTRAINT FK_MaPhong3 foreign key (MaPhong) REFERENCES PhongChieu(MaPhong),
	constraint fk_MaRap3 foreign key (MaRap) REFERENCES RAP(MaRap),
	constraint fk_MaGioChieu3 foreign key (MaGioChieu) REFERENCES GioChieu(MaGioChieu)
	
	
);
alter table Ve add constraint fk_MaShow3 foreign key (MaShow) references LichChieu(MaShow);


INSERT INTO HangSX (MaHangSX, TenHangSX) VALUES (N'OF11', N'Original Film');
INSERT INTO HangSX (MaHangSX, TenHangSX) VALUES (N'WD12', N'Walt Disney Pictures');
INSERT INTO HangSX (MaHangSX, TenHangSX) VALUES (N'AP13', N'Arunuchai Panupan');
INSERT INTO HangSX (MaHangSX, TenHangSX) VALUES (N'CV14', N'Công ty VAA');
INSERT INTO HangSX (MaHangSX, TenHangSX) VALUES (N'LH15', N'Lý Hải Production');
INSERT INTO HangSX (MaHangSX, TenHangSX) VALUES (N'PQ16', N'ProductionQ');
INSERT INTO HangSX (MaHangSX, TenHangSX) VALUES (N'CH17', N'Creative House');
INSERT INTO HangSX (MaHangSX, TenHangSX) VALUES (N'DD18', N'Phim ảnh Đại Đồng');
INSERT INTO HangSX (MaHangSX, TenHangSX) VALUES (N'DT19', N'Phim ảnh Điện Thông');
INSERT INTO HangSX (MaHangSX, TenHangSX) VALUES (N'VC20', N'Vinod Chopra Films');
SELECT * FROM HangSX
GO;
INSERT INTO NuocSX (MaNuocSX, TenNuocSX) VALUES (N'USA', N'Mỹ');
INSERT INTO NuocSX (MaNuocSX, TenNuocSX) VALUES (N'TL', N'Thái Lan');
INSERT INTO NuocSX (MaNuocSX, TenNuocSX) VALUES (N'VN', N'Việt Nam');
INSERT INTO NuocSX (MaNuocSX, TenNuocSX) VALUES (N'HQ', N'Hàn Quốc');
INSERT INTO NuocSX (MaNuocSX, TenNuocSX) VALUES (N'TQ', N' Trung Quốc');
INSERT INTO NuocSX (MaNuocSX, TenNuocSX) VALUES (N'AD', N'Ấn Độ');
SELECT * FROM NuocSX
GO

INSERT INTO TheLoai (MaTheLoai, TenTheLoai) VALUES (N'AC01', N'Hành động');
INSERT INTO TheLoai (MaTheLoai, TenTheLoai) VALUES (N'AV02', N'Phiêu lưu');
INSERT INTO TheLoai (MaTheLoai, TenTheLoai) VALUES (N'HH03', N'Hài hước');
INSERT INTO TheLoai (MaTheLoai, TenTheLoai) VALUES (N'RM04', N'Lãng mạn');
INSERT INTO TheLoai (MaTheLoai, TenTheLoai) VALUES (N'HD05', N'Hài hành động');
INSERT INTO TheLoai (MaTheLoai, TenTheLoai) VALUES (N'KD06', N'Kinh dị');
INSERT INTO TheLoai (MaTheLoai, TenTheLoai) VALUES (N'TL07', N'Tâm lý');
INSERT INTO TheLoai (MaTheLoai, TenTheLoai) VALUES (N'TC08', N'Tình cảm');
INSERT INTO TheLoai (MaTheLoai, TenTheLoai) VALUES (N'RM09', N'Lãng mạn');
SELECT * FROM TheLoai
GO
set datestyle = DMY;
INSERT INTO Phim (MaPhim, TenPhim, MaHangSX, DaoDien,MaTheLoai,MaNuocSX , NgayKhoiChieu, NgayKetThuc, TongThu) VALUES (N'FF01', N'Fast and Furious 10', N'OF11', N'Louis Leterrier', N'AC01','USA', to_date('19/05/2023', 'dd/mm/yyyy'), to_date('19/06/2023', 'dd/mm/yyyy'), 0 );
INSERT INTO Phim (MaPhim, TenPhim, MaHangSX, DaoDien,MaTheLoai,MaNuocSX , NgayKhoiChieu, NgayKetThuc, TongThu) VALUES (N'LM02', N'The Little Mermaid',  N'WD12', N'Rob Marshall', N'AV02','USA', to_date('26/05/2023', 'dd/mm/yyyy'), to_date('26/07/2023', 'dd/mm/yyyy'), 0);
INSERT INTO Phim (MaPhim, TenPhim, MaHangSX, DaoDien,MaTheLoai,MaNuocSX , NgayKhoiChieu, NgayKetThuc, TongThu) VALUES (N'LD03', N'Love Destiny',  N'AP13', N'Pawat Panangkasri', N'HH03','USA', to_date('19/10/2022', 'dd/mm/yyyy'), to_date('19/11/2022', 'dd/mm/yyyy'), 0);
INSERT INTO Phim (MaPhim, TenPhim, MaHangSX, DaoDien,MaTheLoai,MaNuocSX , NgayKhoiChieu, NgayKetThuc, TongThu) VALUES (N'CB04', N'Cô ba Sài Gòn',  N'CV14', N'Trần Bửu Lộc', N'RM04','VN', to_date('14/10/2017', 'dd/mm/yyyy'), to_date('20/06/2018', 'dd/mm/yyyy'), 0);
INSERT INTO Phim (MaPhim, TenPhim, MaHangSX, DaoDien,MaTheLoai,MaNuocSX , NgayKhoiChieu, NgayKetThuc, TongThu) VALUES (N'LA05', N'Lật mặt 1', N'LH15', N'Lý Hải', N'HD05','VN', to_date('15/05/2015', 'dd/mm/yyyy'), to_date('18/07/2019', 'dd/mm/yyyy'), 0);
INSERT INTO Phim (MaPhim, TenPhim, MaHangSX, DaoDien,MaTheLoai,MaNuocSX , NgayKhoiChieu, NgayKetThuc, TongThu) VALUES (N'MA06', N'Chuyện ma đô thị',  N'PQ16', N'Hong Won Ki', N'KD06','TL', to_date('13/05/2022', 'dd/mm/yyyy'), to_date('13/08/2022', 'dd/mm/yyyy'),0);
INSERT INTO Phim (MaPhim, TenPhim, MaHangSX, DaoDien,MaTheLoai,MaNuocSX , NgayKhoiChieu, NgayKetThuc, TongThu) VALUES (N'MG07', N'Người môi giới',  N'CH17', N'Kore-eda Hirokazu', N'TL07','VN', to_date('14/11/2021', 'dd/mm/yyyy'), to_date('15/08/2022', 'dd/mm/yyyy'), 0);
INSERT INTO Phim (MaPhim, TenPhim, MaHangSX, DaoDien,MaTheLoai,MaNuocSX , NgayKhoiChieu, NgayKetThuc, TongThu) VALUES (N'LN08', N'Lạc lối ở Nga',  N'DD18', N'Zheng Xu', N'TC08', 'AD',to_date('14/05/2020', 'dd/mm/yyyy'), to_date('17/02/2021', 'dd/mm/yyyy'), 0);
INSERT INTO Phim (MaPhim, TenPhim, MaHangSX, DaoDien,MaTheLoai,MaNuocSX , NgayKhoiChieu, NgayKetThuc, TongThu) VALUES (N'HL09', N'Hôn lễ của em',  N'DT19', N'Tian Han', N'RM09','HQ', to_date('16/07/2021', 'dd/mm/yyyy'), to_date('16/09/2021', 'dd/mm/yyyy'), 0);
INSERT INTO Phim (MaPhim, TenPhim, MaHangSX, DaoDien,MaTheLoai,MaNuocSX , NgayKhoiChieu, NgayKetThuc, TongThu)VALUES (N'TT10', N'Tru tiên',  N'DT19', N'Trình Tiểu Đồng', N'AC01','TQ', to_date('24/12/2019', 'dd/mm/yyyy'), to_date('25/12/2020', 'dd/mm/yyyy'),0);
INSERT INTO Phim (MaPhim, TenPhim, MaHangSX, DaoDien,MaTheLoai,MaNuocSX , NgayKhoiChieu, NgayKetThuc, TongThu) VALUES (N'CN11', N'3 chàng ngốc',  N'VC20', N'Rajkumar Hirani', N'HH03','TL', to_date('25/12/2009', 'dd/mm/yyyy'), to_date('21/12/2010', 'dd/mm/yyyy'), 0);

SELECT * FROM Phim
GO

INSERT INTO RAP (MaRap, TenRap, DiaChi,  SoPhong, TongSoGhe) VALUES 
('CGV01', 'CGV Hùng Vương Plaza', 'Hùng Vương, Phường 11, Quận 5, TP.HCM',  0, 0),
('BHD02', 'BHD Star Vũng Tàu', '8 Lê Duẩn, Phường 1, Vũng Tàu', 0, 0),
('GAL03', 'Galaxy Quảng Trị', 'Lô B1, Khu đô thị mới Đông Hà, phường Đông Giang, TP Đông Hà, tỉnh Quảng Trị', 0, 0),
('CGV04', 'CGV Vincom Plaza Hà Tĩnh', 'Số 1 Lê Lợi, phường Đức Thọ, TP Hà Tĩnh',  0, 0)
SELECT * FROM RAP

INSERT INTO GioChieu (MaGioChieu, MaRap, XuatChieu) VALUES 
('GC01', 'CGV01', '8:00'),
('GC02', 'CGV01', '10:00'),
('GC03', 'CGV01', '11:00'),
('GB01', 'BHD02', '8:00'),
('GB02', 'BHD02', '11:00'),
('GG01', 'GAL03', '10:00'),
('GG02', 'GAL03','11:00'),
('GV01', 'CGV04', '8:00'),
('GV02', 'CGV04', '10:00')
SELECT * FROM GioChieu

INSERT INTO PhongChieu (MaPhong, MaRap,TongSoGhe) VALUES ('PC01', 'CGV01',  200);
INSERT INTO PhongChieu (MaPhong, MaRap,TongSoGhe) VALUES ('PC02', 'CGV01',  200);
INSERT INTO PhongChieu (MaPhong, MaRap,TongSoGhe) VALUES ('PC03', 'CGV01',  200);
INSERT INTO PhongChieu (MaPhong, MaRap,TongSoGhe) VALUES('PB01', 'BHD02',  180);
INSERT INTO PhongChieu (MaPhong, MaRap,TongSoGhe) VALUES('PB02', 'BHD02',  200);
INSERT INTO PhongChieu (MaPhong, MaRap,TongSoGhe) VALUES('PG01', 'GAL03',  150);
INSERT INTO PhongChieu (MaPhong, MaRap,TongSoGhe) VALUES('PG02', 'GAL03',  150);
INSERT INTO PhongChieu (MaPhong, MaRap,TongSoGhe) VALUES('PV01', 'CGV04',  200);
INSERT INTO PhongChieu (MaPhong, MaRap,TongSoGhe) VALUES('PV02', 'CGV04',  200);
select * from PhongChieu

INSERT INTO LichChieu (MaShow, MaPhim, MaRap, MaPhong, NgayChieu, MaGioChieu, GiaVe, SoVeDaBan, TongTien) VALUES
('LS01', 'FF01', 'CGV01', 'PC01', '19/05/2023', 'GC01', 100000, 50,0),
('LS02', 'FF01', 'CGV01', 'PC02', '19/05/2023', 'GC01', 100000, 75, 0),
('LS03', 'FF01', 'CGV01', 'PC03', '19/05/2023', 'GC02', 150000, 100, 0),
('LS04', 'FF01', 'CGV01', 'PC01', '20/05/2023', 'GC03', 100000, 25, 0),
('LS05', 'LM02', 'BHD02', 'PB01', '26/05/2023', 'GB01', 120000, 80, 0),
('LS06', 'LM02', 'BHD02', 'PB02', '26/05/2023', 'GB01', 120000, 120, 0),
('LS07', 'LM02', 'GAL03', 'PG01', '26/05/2023', 'GG01', 100000, 50, 0),
('LS08', 'LD03', 'CGV04', 'PV01', '19/10/2022', 'GV01', 80000, 70,0),
('LS09', 'LD03', 'CGV04', 'PV02', '19/10/2022', 'GV02', 80000, 60, 0)
SELECT * FROM LichChieu

INSERT INTO Ve (MaVe, MaRap, MaPhong, MaShow, MaGhe, TrangThai)
VALUES
('V001', 'CGV01', 'PC01', 'LS01', 'G01', 'Đã bán'),
('V002', 'CGV01', 'PC01', 'LS01', 'G02', 'Đã bán'),
('V003', 'CGV01', 'PC01', 'LS01', 'G03', 'Chưa bán'),
('V004', 'CGV01', 'PC01', 'LS01', 'G04', 'Chưa bán'),
('V005', 'CGV01', 'PC01', 'LS01', 'G05', 'Chưa bán'),
('V006', 'CGV01', 'PC01', 'LS01', 'G07', 'Đã bán'),
('V007', 'CGV01', 'PC02', 'LS01', 'A08', 'Đã bán'),
('V008', 'CGV01', 'PC03', 'LS01', 'F09', 'Đã bán'),
('V009', 'CGV01', 'PC01', 'LS01', 'L010', 'Chưa bán'),
('V010', 'CGV01', 'PC01', 'LS01', 'L011', 'Đã bán'),
('V011', 'BHD02', 'PC01', 'LS01', 'G01', 'Đã bán'),
('V012', 'BHD02', 'PC02', 'LS01', 'G02', 'Đã bán'),
('V013', 'BHD02', 'PC03', 'LS01', 'G03', 'Chưa bán'),
('V014', 'BHD02', 'PC01', 'LS01', 'G04', 'Chưa bán'),
('V015', 'BHD02', 'PC02', 'LS01', 'G05', 'Chưa bán'),
('V016', 'BHD02', 'PC03', 'LS01', 'G07', 'Đã bán'),
('V017', 'BHD02', 'PC01', 'LS01', 'A08', 'Đã bán'),
('V018', 'BHD02', 'PC02', 'LS01', 'F09', 'Đã bán'),
('V019', 'BHD02', 'PC03', 'LS01', 'L010', 'Chưa bán'),
('V020', 'BHD02', 'PC01', 'LS01', 'L011', 'Đã bán')
select * from  Ve

INSERT INTO Ve (MaVe, MaRap, MaPhong, MaShow, MaGhe, TrangThai)
VALUES
('V021', 'CGV04', 'PC01', 'LS09', 'G01', 'Đã bán'),
('V022', 'CGV04', 'PC01', 'LS09', 'G02', 'Đã bán'),
('V023', 'CGV04', 'PC01', 'LS09', 'G03', 'Chưa bán'),
('V024', 'CGV04', 'PC01', 'LS09', 'G04', 'Chưa bán'),
('V025', 'CGV04', 'PC01', 'LS09', 'G05', 'Chưa bán'),
('V026', 'CGV04', 'PC01', 'LS09', 'G07', 'Đã bán')
DELETE FROM Ve WHERE MaVe = N'V021'
SELECT * FROM Ve
SELECT * FROM LichChieu
delete PhongChieu
delete LichChieu
select * from RAP
DELETE GioChieu
DELETE RAP
select * from PhongChieu 
-----
