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
--1/ cập nhập số vé đã bán và tổng doanh thu mà lịch chiếu đó đã bán 
CREATE OR REPLACE FUNCTION SoVeDaBan() 
RETURNS TRIGGER AS
$$
BEGIN
	UPDATE LichChieu 
	SET SoVeDaBan = (SELECT COUNT(*) FROM Ve WHERE Ve.MaShow = NEW.MaShow AND TrangThai ='Đã bán');
	UPDATE LichChieu
	SET TongTien = (GiaVe * SoVeDaBan);
	RETURN NEW;
END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER SoVeDaBan_trigger
AFTER INSERT OR UPDATE OR DELETE ON Ve
FOR EACH ROW 
EXECUTE FUNCTION SoVeDaBan();
--2/ Cập nhập tổng doanh thu và số vé đã bán 
CREATE OR REPLACE FUNCTION SoPhongRap() 
RETURNS TRIGGER AS
$$
BEGIN
	UPDATE RAP
	SET TongSoGhe = RAP.TongSoGhe + (SELECT TongSoGhe FROM NEW JOIN PhongChieu ON NEW.MaPhong=PhongChieu.MaPhong WHERE PhongChieu.MaRap = RAP.MaRap);
	UPDATE RAP 
	SET SoPhong = ( SELECT COUNT(MaPhong) FROM PhongChieu WHERE MaRap = NEW.MaRap) 
	WHERE RAP.MaRap = NEW.MaRap;
	RETURN NEW;
END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER SoPhongRap_trigger
AFTER INSERT OR UPDATE OR DELETE ON PhongChieu
FOR EACH ROW 
EXECUTE FUNCTION SoPhongRap();
--3 Ngày chiếu của phim đó phải sau ngày phát hành và trước ngày kết thúc của phim 
CREATE OR REPLACE FUNCTION UTG_INSERT_CheckDateLichChieu() 
RETURNS TRIGGER AS
$$
DECLARE 
	idDinhDang VARCHAR(50);
	ThoiGianChieu DATE;
	NgayKhoiChieu DATE;
	NgayKetThuc DATE;
BEGIN
	SELECT MaPhim INTO idDinhDang FROM NEW;
	SELECT NgayChieu INTO ThoiGianChieu FROM NEW;

	SELECT P.NgayKhoiChieu, P.NgayKetThuc
	INTO NgayKhoiChieu, NgayKetThuc
	FROM Phim P JOIN LichChieu LC ON P.MaPhim = LC.MaPhim
	WHERE LC.MaPhim = idDinhDang;

	IF ( ThoiGianChieu > NgayKetThuc or ThoiGianChieu < NgayKhoiChieu) THEN
		RAISE EXCEPTION 'Lịch Chiếu lớn hơn hoặc bằng Ngày Khởi Chiếu và nhỏ hơn hoặc bằng Ngày Kết Thúc';
	END IF;
	
	RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER UTG_INSERT_CheckDateLichChieu_trigger 
AFTER INSERT OR UPDATE ON LichChieu
FOR EACH ROW 
EXECUTE FUNCTION UTG_INSERT_CheckDateLichChieu();

-- store procedure 
--1/ thêm tên phim vào danh sách 
CREATE OR REPLACE PROCEDURE AddPhim
(
    _MaPhim VARCHAR(10),
    _TenPhim VARCHAR(50),
    _MaHangSX VARCHAR(10),
    _DaoDien VARCHAR(20),
    _MaTheLoai VARCHAR(10),
	_MaNuocSX VARCHAR(10),
    _NgayKhoiChieu TIMESTAMP,
    _NgayKetThuc TIMESTAMP,
    _TongThu MONEY
)
LANGUAGE plpgsql
AS $$
BEGIN
    -- Kiểm tra xem Mã hãng sản xuất có tồn tại trong bảng HangSX chưa
    -- Kiểm tra tính hợp lệ của các tham số đầu vào
    IF NOT EXISTS (SELECT * FROM NuocSX WHERE MaNuocSX = _MaNuocSX)
    THEN
        RAISE EXCEPTION 'Mã nước sản xuất không tồn tại';
    END IF;
    
    IF NOT EXISTS (SELECT * FROM HangSX WHERE MaHangSX = _MaHangSX)
    THEN
        RAISE EXCEPTION 'Mã hãng sản xuất không tồn tại';
    END IF;
    
    IF NOT EXISTS (SELECT * FROM TheLoai WHERE MaTheLoai = _MaTheLoai)
    THEN
        RAISE EXCEPTION 'Mã thể loại không tồn tại';
    END IF;

    IF EXISTS (SELECT * FROM Phim WHERE MaPhim = _MaPhim)
    THEN
        RAISE EXCEPTION 'Phim đã tồn tại';
    END IF;

    INSERT INTO Phim (MaPhim, TenPhim, MaHangSX, DaoDien, MaTheLoai, MaNuocSX, NgayKhoiChieu, NgayKetThuc, TongThu)
    VALUES (_MaPhim, _TenPhim, _MaHangSX, _DaoDien, _MaTheLoai, _MaNuocSX, _NgayKhoiChieu, _NgayKetThuc, _TongThu);
    RAISE NOTICE 'Dữ liệu đã được thêm vào thành công';
END;
$$;
-- 2/Nhập vào tên phim xuất ra các rạp có chiếu phim, xuất phim, ngày khởi chiếu 
CREATE OR REPLACE FUNCTION TimVe(_TenPhim VARCHAR(50))
RETURNS TABLE(TenPhim VARCHAR(50), TenRap VARCHAR(50), DiaChi VARCHAR(100), NgayChieu TIMESTAMP, GiaVe MONEY, SoVeConTrong INTEGER)
AS $$
BEGIN
    IF NOT EXISTS (SELECT * FROM Phim WHERE TenPhim = _TenPhim)
    THEN
        RAISE EXCEPTION 'Tên phim không có xuất chiếu trong các hệ thống rạp';
    END IF;
    
    RETURN QUERY 
    SELECT Phim.TenPhim, RAP.TenRap, RAP.DiaChi, LichChieu.NgayChieu, LichChieu.GiaVe, COUNT(Ve.MaVe) AS SoVeConTrong
    FROM Ve
    LEFT JOIN LichChieu ON Ve.MaShow = LichChieu.MaShow
    LEFT JOIN Phim ON Phim.MaPhim = LichChieu.MaPhim
    LEFT JOIN RAP ON LichChieu.MaRap = RAP.MaRap
    WHERE Phim.TenPhim = _TenPhim AND Ve.TrangThai = 'Trong'
    GROUP BY Phim.TenPhim, RAP.TenRap, RAP.DiaChi, LichChieu.NgayChieu, LichChieu.GiaVe;
END;
$$ LANGUAGE plpgsql;
--3/Nhập vào mã phim vè xuất ra các thông tin chi tiết của vé để in ra vé 
CREATE OR REPLACE FUNCTION VE_THONGTIN_pro(_MaVe VARCHAR(10))
RETURNS TABLE(MaVe VARCHAR(10), MaPhong VARCHAR(10), NgayChieu TIMESTAMP, MaGhe VARCHAR(10), GiaVe MONEY, XuatChieu TIME, TenRap VARCHAR(50), MaRap VARCHAR(10), DiaChi VARCHAR(100), TenPhim VARCHAR(50))
AS $$
BEGIN
    RETURN QUERY SELECT VE.MaVe, LC.MaPhong, LC.NgayChieu, MaGhe, LC.GiaVe, GC.XuatChieu, RAP.TenRap, RAP.MaRap, RAP.DiaChi, P.TenPhim
    FROM Ve
    LEFT JOIN LichChieu LC ON LC.MaShow = Ve.MaShow
    LEFT JOIN GioChieu GC ON GC.MaGioChieu = LC.MaGioChieu
    LEFT JOIN RAP ON LC.MaRap = RAP.MaRap
    LEFT JOIN Phim P ON P.MaPhim = LC.MaPhim
    WHERE Ve.TrangThai = 'Đã bán' AND Ve.MaVe = _MaVe;
END;
$$ LANGUAGE plpgsql;


