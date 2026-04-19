USE QL_ChuoiNhaThuoc;
GO

-- ==========================================================
-- 0. XÓA DATA CŨ
-- ==========================================================
DELETE FROM ChiTietHoaDon; DELETE FROM HoaDon;
DELETE FROM ChiTietNhapKho; DELETE FROM PhieuNhapKho;
DELETE FROM TonKho; DELETE FROM LoThuoc;
DELETE FROM ThanhPhanThuoc; DELETE FROM Thuoc;
DELETE FROM NhanVien; DELETE FROM ChiNhanh;
DELETE FROM KhuVuc; DELETE FROM NhomThuoc; 
DELETE FROM HoatChat; DELETE FROM KhachHang; DELETE FROM BacSi;
GO

-- ==========================================================
-- 1. TỪ ĐIỂN DỮ LIỆU (NHÂN BẢN TOÀN PHẦN)
-- ==========================================================
-- Bảng Khu Vực (Chốt 3 dòng để cấu hình Replication)
INSERT INTO KhuVuc (MaKV, TenKV, MoTa) VALUES 
('MB', N'Miền Bắc', N'Trạm gốc & Phân phối Bắc Bộ'),
('MT', N'Miền Trung', N'Trạm phân phối Trung Bộ'),
('MN', N'Miền Nam', N'Trạm phân phối Nam Bộ');
GO

-- Bảng Nhóm Thuốc
INSERT INTO NhomThuoc (MaNhom, TenNhom) VALUES 
('NT01', N'Kháng sinh'), ('NT02', N'Giảm đau, hạ sốt'), ('NT03', N'Vitamin & Khoáng chất'),
('NT04', N'Thuốc ho, cảm cúm'), ('NT05', N'Tiêu hóa, dạ dày'), ('NT06', N'Tim mạch'),
('NT07', N'Tiểu đường'), ('NT08', N'Dị ứng, da liễu'), ('NT09', N'Xương khớp'), ('NT10', N'Thực phẩm chức năng');
GO

-- Bảng Hoạt Chất
INSERT INTO HoatChat (MaHC, TenHC) VALUES 
('HC01', N'Paracetamol'), ('HC02', N'Ibuprofen'), ('HC03', N'Amoxicillin'), ('HC04', N'Azithromycin'), ('HC05', N'Vitamin C'),
('HC06', N'Omeprazole'), ('HC07', N'Metformin'), ('HC08', N'Loratadine'), ('HC09', N'Diclofenac'), ('HC10', N'Ginkgo Biloba');
GO

-- Bảng Thuốc (30 dòng tên thật)
INSERT INTO Thuoc (MaThuoc, MaNhom, TenThuoc, DonViTinh, CanKeDon, GiaNhap, GiaBanLe) VALUES 
('TH01', 'NT01', N'Amoxicillin 500mg', N'Vỉ', 1, 10000, 15000), ('TH02', 'NT01', N'Augmentin 1g', N'Hộp', 1, 150000, 180000),
('TH03', 'NT02', N'Panadol Extra', N'Hộp', 0, 50000, 65000), ('TH04', 'NT02', N'Efferalgan 500mg', N'Hộp', 0, 40000, 55000),
('TH05', 'NT03', N'Vitamin C 1000mg', N'Lọ', 0, 120000, 150000), ('TH06', 'NT03', N'Canxi Corbiere', N'Hộp', 0, 110000, 140000),
('TH07', 'NT04', N'Prospan 100ml', N'Chai', 0, 60000, 80000), ('TH08', 'NT04', N'Decolgen', N'Hộp', 0, 30000, 45000),
('TH09', 'NT05', N'Nexium 40mg', N'Hộp', 1, 300000, 350000), ('TH10', 'NT05', N'Smecta', N'Hộp', 0, 90000, 115000),
('TH11', 'NT06', N'Concor 5mg', N'Hộp', 1, 120000, 150000), ('TH12', 'NT06', N'Amlodipine 5mg', N'Vỉ', 1, 15000, 22000),
('TH13', 'NT07', N'Glucophage 850mg', N'Hộp', 1, 80000, 110000), ('TH14', 'NT07', N'Diamicron MR 30mg', N'Hộp', 1, 150000, 185000),
('TH15', 'NT08', N'Clarityne 10mg', N'Hộp', 0, 70000, 95000), ('TH16', 'NT08', N'Telfast HD 180mg', N'Hộp', 0, 100000, 130000),
('TH17', 'NT09', N'Celebrex 200mg', N'Hộp', 1, 350000, 400000), ('TH18', 'NT09', N'Voltaren 50mg', N'Hộp', 1, 200000, 250000),
('TH19', 'NT10', N'Boganic', N'Hộp', 0, 80000, 105000), ('TH20', 'NT10', N'Hoạt Huyết Dưỡng Não', N'Hộp', 0, 90000, 110000),
('TH21', 'NT01', N'Zinnat 500mg', N'Hộp', 1, 250000, 300000), ('TH22', 'NT02', N'Ibuprofen 400mg', N'Vỉ', 0, 12000, 18000),
('TH23', 'NT03', N'Sắt Ferrovit', N'Hộp', 0, 60000, 85000), ('TH24', 'NT04', N'Bisolvon 8mg', N'Hộp', 0, 45000, 60000),
('TH25', 'NT05', N'Oresol 245', N'Hộp', 0, 30000, 40000), ('TH26', 'NT06', N'Lipanthyl 145mg', N'Hộp', 1, 220000, 270000),
('TH27', 'NT07', N'Amaryl 2mg', N'Hộp', 1, 140000, 170000), ('TH28', 'NT08', N'Aerius 5mg', N'Hộp', 1, 160000, 195000),
('TH29', 'NT09', N'Glucosamine 1500mg', N'Lọ', 0, 450000, 550000), ('TH30', 'NT10', N'Omega 3 Fish Oil', N'Lọ', 0, 250000, 320000);
GO

-- Bảng Khách Hàng (30 dòng)
INSERT INTO KhachHang (MaKH, TenKH, SoDienThoai, DiemTichLuy) VALUES 
('KH01', N'Nguyễn Văn Tuấn', '0981234561', 150), ('KH02', N'Trần Thị Mai', '0971234562', 50),
('KH03', N'Lê Hoàng Anh', '0961234563', 0), ('KH04', N'Phạm Quang Dũng', '0931234564', 200),
('KH05', N'Hoàng Thị Lan', '0901234565', 120), ('KH06', N'Vũ Văn Quyết', '0911234566', 10),
('KH07', N'Đặng Thị Bích', '0941234567', 0), ('KH08', N'Bùi Văn Hải', '0881234568', 350),
('KH09', N'Đỗ Thị Ngọc', '0891234569', 20), ('KH10', N'Hồ Văn Khoa', '0861234570', 40),
('KH11', N'Ngô Thị Thanh', '0981234571', 100), ('KH12', N'Dương Văn Minh', '0971234572', 500),
('KH13', N'Lý Thị Thu', '0961234573', 0), ('KH14', N'Vương Văn Long', '0931234574', 180),
('KH15', N'Trịnh Thị Phương', '0901234575', 80), ('KH16', N'Mai Văn Quốc', '0911234576', 0),
('KH17', N'Đinh Thị Tâm', '0941234577', 90), ('KH18', N'Tô Văn Uy', '0881234578', 110),
('KH19', N'Khúc Thị Vy', '0891234579', 0), ('KH20', N'Phan Văn Xuân', '0861234580', 250),
('KH21', N'Chu Thị Yến', '0981234581', 100), ('KH22', N'Đào Văn Tài', '0971234582', 0),
('KH23', N'Lâm Thị Bích', '0961234583', 30), ('KH24', N'Trương Văn Cường', '0931234584', 70),
('KH25', N'Tạ Thị Dung', '0901234585', 0), ('KH26', N'Phí Văn Em', '0911234586', 400),
('KH27', N'Cao Thị Gấm', '0941234587', 0), ('KH28', N'Lương Văn Hùng', '0881234588', 10),
('KH29', N'Hà Thị Kiều', '0891234589', 5), ('KH30', N'Bạch Văn Long', '0861234590', 60);
GO

-- ==========================================================
-- 2. DỮ LIỆU PHÂN MẢNH: CHI NHÁNH & NHÂN VIÊN
-- ==========================================================
-- Chi nhánh (10 Bắc, 10 Trung, 10 Nam)
INSERT INTO ChiNhanh (MaCN, MaKV, TenCN, DiaChi, TrangThaiHoatDong) VALUES 
-- Miền Bắc
('CN_MB01', 'MB', N'Nhà thuốc Cầu Giấy', N'123 Cầu Giấy, Hà Nội', 1), ('CN_MB02', 'MB', N'Nhà thuốc Hai Bà Trưng', N'456 Trần Khát Chân, Hà Nội', 1),
('CN_MB03', 'MB', N'Nhà thuốc Hải Phòng', N'Lê Lợi, Ngô Quyền, HP', 1), ('CN_MB04', 'MB', N'Nhà thuốc Hạ Long', N'Bãi Cháy, Quảng Ninh', 1),
('CN_MB05', 'MB', N'Nhà thuốc Từ Sơn', N'Từ Sơn, Bắc Ninh', 1), ('CN_MB06', 'MB', N'Nhà thuốc Hải Dương', N'TP Hải Dương', 1),
('CN_MB07', 'MB', N'Nhà thuốc Hưng Yên', N'Phố Hiến, Hưng Yên', 1), ('CN_MB08', 'MB', N'Nhà thuốc Thái Bình', N'Tiền Hải, Thái Bình', 1),
('CN_MB09', 'MB', N'Nhà thuốc Nam Định', N'Hải Hậu, Nam Định', 1), ('CN_MB10', 'MB', N'Nhà thuốc Vĩnh Phúc', N'Phúc Yên, Vĩnh Phúc', 1),
-- Miền Trung
('CN_MT01', 'MT', N'Nhà thuốc Hải Châu', N'Nguyễn Văn Linh, Đà Nẵng', 1), ('CN_MT02', 'MT', N'Nhà thuốc Sơn Trà', N'Phạm Văn Đồng, Đà Nẵng', 1),
('CN_MT03', 'MT', N'Nhà thuốc TP Vinh', N'Lê Lợi, Nghệ An', 1), ('CN_MT04', 'MT', N'Nhà thuốc Thanh Hóa', N'TP Thanh Hóa', 1),
('CN_MT05', 'MT', N'Nhà thuốc Hương Thủy', N'Hương Thủy, Thừa Thiên Huế', 1), ('CN_MT06', 'MT', N'Nhà thuốc Hội An', N'Hội An, Quảng Nam', 1),
('CN_MT07', 'MT', N'Nhà thuốc Quảng Ngãi', N'Bình Sơn, Quảng Ngãi', 1), ('CN_MT08', 'MT', N'Nhà thuốc Quy Nhơn', N'Quy Nhơn, Bình Định', 1),
('CN_MT09', 'MT', N'Nhà thuốc Phú Yên', N'Tuy Hòa, Phú Yên', 1), ('CN_MT10', 'MT', N'Nhà thuốc Nha Trang', N'Trần Phú, Khánh Hòa', 1),
-- Miền Nam
('CN_MN01', 'MN', N'Nhà thuốc Quận 1', N'Nguyễn Huệ, Q1, TP.HCM', 1), ('CN_MN02', 'MN', N'Nhà thuốc Gò Vấp', N'Quang Trung, Gò Vấp, TP.HCM', 1),
('CN_MN03', 'MN', N'Nhà thuốc Ninh Kiều', N'Ninh Kiều, Cần Thơ', 1), ('CN_MN04', 'MN', N'Nhà thuốc Biên Hòa', N'Biên Hòa, Đồng Nai', 1),
('CN_MN05', 'MN', N'Nhà thuốc Dĩ An', N'Dĩ An, Bình Dương', 1), ('CN_MN06', 'MN', N'Nhà thuốc Vũng Tàu', N'Bãi Sau, Vũng Tàu', 1),
('CN_MN07', 'MN', N'Nhà thuốc Tân An', N'Tân An, Long An', 1), ('CN_MN08', 'MN', N'Nhà thuốc Mỹ Tho', N'Mỹ Tho, Tiền Giang', 1),
('CN_MN09', 'MN', N'Nhà thuốc Bến Tre', N'Châu Thành, Bến Tre', 1), ('CN_MN10', 'MN', N'Nhà thuốc Phú Quốc', N'Dương Đông, Kiên Giang', 1);
GO

-- Nhân viên (Khớp 1-1 với Chi nhánh ở trên)
INSERT INTO NhanVien (MaNV, MaCN, TenNV, ChucVu, LuongCoBan, MatKhauHash) VALUES 
('NV_MB01', 'CN_MB01', N'Lê Thị Hương', N'Cửa hàng trưởng', 15000000, 'hash123'), ('NV_MB02', 'CN_MB02', N'Trần Văn Long', N'Dược sĩ', 10000000, 'hash123'),
('NV_MB03', 'CN_MB03', N'Nguyễn Thị Thu', N'Cửa hàng trưởng', 14000000, 'hash123'), ('NV_MB04', 'CN_MB04', N'Phạm Văn Tâm', N'Dược sĩ', 9000000, 'hash123'),
('NV_MB05', 'CN_MB05', N'Hoàng Thị Yến', N'Cửa hàng trưởng', 13000000, 'hash123'), ('NV_MB06', 'CN_MB06', N'Vũ Văn Quyết', N'Dược sĩ', 9500000, 'hash123'),
('NV_MB07', 'CN_MB07', N'Đặng Thị Mai', N'Cửa hàng trưởng', 14000000, 'hash123'), ('NV_MB08', 'CN_MB08', N'Bùi Văn Tùng', N'Dược sĩ', 9000000, 'hash123'),
('NV_MB09', 'CN_MB09', N'Đỗ Thị Hoa', N'Cửa hàng trưởng', 12000000, 'hash123'), ('NV_MB10', 'CN_MB10', N'Hồ Văn Bách', N'Dược sĩ', 9500000, 'hash123'),

('NV_MT01', 'CN_MT01', N'Ngô Thị Trà', N'Cửa hàng trưởng', 15000000, 'hash123'), ('NV_MT02', 'CN_MT02', N'Dương Văn Tiến', N'Dược sĩ', 10000000, 'hash123'),
('NV_MT03', 'CN_MT03', N'Lý Thị Ngọc', N'Cửa hàng trưởng', 14000000, 'hash123'), ('NV_MT04', 'CN_MT04', N'Vương Văn Thành', N'Dược sĩ', 9500000, 'hash123'),
('NV_MT05', 'CN_MT05', N'Trịnh Thị Lệ', N'Cửa hàng trưởng', 13000000, 'hash123'), ('NV_MT06', 'CN_MT06', N'Mai Văn Đại', N'Dược sĩ', 9000000, 'hash123'),
('NV_MT07', 'CN_MT07', N'Đinh Thị Châu', N'Cửa hàng trưởng', 14000000, 'hash123'), ('NV_MT08', 'CN_MT08', N'Tô Văn Cường', N'Dược sĩ', 9000000, 'hash123'),
('NV_MT09', 'CN_MT09', N'Khúc Thị Luyến', N'Cửa hàng trưởng', 12000000, 'hash123'), ('NV_MT10', 'CN_MT10', N'Phan Văn Phát', N'Dược sĩ', 9500000, 'hash123'),

('NV_MN01', 'CN_MN01', N'Chu Thị Hà', N'Cửa hàng trưởng', 16000000, 'hash123'), ('NV_MN02', 'CN_MN02', N'Đào Văn Hiếu', N'Dược sĩ', 11000000, 'hash123'),
('NV_MN03', 'CN_MN03', N'Lâm Thị Tuyết', N'Cửa hàng trưởng', 15000000, 'hash123'), ('NV_MN04', 'CN_MN04', N'Trương Văn Nam', N'Dược sĩ', 10000000, 'hash123'),
('NV_MN05', 'CN_MN05', N'Tạ Thị Quyên', N'Cửa hàng trưởng', 14000000, 'hash123'), ('NV_MN06', 'CN_MN06', N'Phí Văn Hưng', N'Dược sĩ', 9500000, 'hash123'),
('NV_MN07', 'CN_MN07', N'Cao Thị Hằng', N'Cửa hàng trưởng', 14000000, 'hash123'), ('NV_MN08', 'CN_MN08', N'Lương Văn Toàn', N'Dược sĩ', 9500000, 'hash123'),
('NV_MN09', 'CN_MN09', N'Hà Thị Thảo', N'Cửa hàng trưởng', 13000000, 'hash123'), ('NV_MN10', 'CN_MN10', N'Bạch Văn Lâm', N'Dược sĩ', 10000000, 'hash123');
GO

-- ==========================================================
-- 3. KHO HÀNG (MÃ LÔ TỪ 01-30)
-- ==========================================================
INSERT INTO LoThuoc (MaLo, MaThuoc, SoLoSX, NgaySanXuat, HanSuDung) VALUES 
('LO01', 'TH01', 'SX001', '2024-01-01', '2026-01-01'), ('LO02', 'TH02', 'SX002', '2024-01-15', '2026-01-15'),
('LO03', 'TH03', 'SX003', '2024-02-01', '2027-02-01'), ('LO04', 'TH04', 'SX004', '2024-02-20', '2027-02-20'),
('LO05', 'TH05', 'SX005', '2024-03-10', '2025-12-31'), ('LO06', 'TH06', 'SX006', '2024-03-25', '2026-03-25'),
('LO07', 'TH07', 'SX007', '2024-04-05', '2026-04-05'), ('LO08', 'TH08', 'SX008', '2024-04-15', '2026-04-15'),
('LO09', 'TH09', 'SX009', '2024-05-01', '2027-05-01'), ('LO10', 'TH10', 'SX010', '2024-05-20', '2026-05-20'),
('LO11', 'TH11', 'SX011', '2024-06-01', '2026-06-01'), ('LO12', 'TH12', 'SX012', '2024-06-15', '2026-06-15'),
('LO13', 'TH13', 'SX013', '2024-07-10', '2027-07-10'), ('LO14', 'TH14', 'SX014', '2024-07-25', '2027-07-25'),
('LO15', 'TH15', 'SX015', '2024-08-05', '2026-08-05'), ('LO16', 'TH16', 'SX016', '2024-08-20', '2026-08-20'),
('LO17', 'TH17', 'SX017', '2024-09-01', '2027-09-01'), ('LO18', 'TH18', 'SX018', '2024-09-15', '2027-09-15'),
('LO19', 'TH19', 'SX019', '2024-10-01', '2026-10-01'), ('LO20', 'TH20', 'SX020', '2024-10-20', '2026-10-20'),
('LO21', 'TH21', 'SX021', '2024-11-05', '2026-11-05'), ('LO22', 'TH22', 'SX022', '2024-11-25', '2026-11-25'),
('LO23', 'TH23', 'SX023', '2024-12-10', '2027-12-10'), ('LO24', 'TH24', 'SX024', '2024-12-25', '2027-12-25'),
('LO25', 'TH25', 'SX025', '2025-01-05', '2027-01-05'), ('LO26', 'TH26', 'SX026', '2025-01-20', '2027-01-20'),
('LO27', 'TH27', 'SX027', '2025-02-01', '2027-02-01'), ('LO28', 'TH28', 'SX028', '2025-02-15', '2027-02-15'),
('LO29', 'TH29', 'SX029', '2025-03-01', '2027-03-01'), ('LO30', 'TH30', 'SX030', '2025-03-20', '2027-03-20');
GO

-- Tồn kho (Rải đều 5 lô thuốc HOT cho 30 chi nhánh để test JOIN và Transaction)
INSERT INTO TonKho (MaCN, MaLo, SoLuongTon)
SELECT c.MaCN, l.MaLo, 100 FROM ChiNhanh c CROSS JOIN (SELECT MaLo FROM LoThuoc WHERE MaLo IN ('LO01', 'LO02', 'LO03', 'LO04', 'LO05')) l;

-- Set chi nhánh Cầu Giấy gần hết Panadol (LO03) để test cảnh báo
UPDATE TonKho SET SoLuongTon = 5 WHERE MaCN = 'CN_MB01' AND MaLo = 'LO03';
GO

-- ==========================================================
-- 4. GIAO DỊCH BÁN HÀNG (30 HÓA ĐƠN)
-- ==========================================================
-- 10 Hóa đơn Miền Bắc
INSERT INTO HoaDon (MaHD, MaCN, MaNV, MaKH, NgayTao, TongTien) VALUES 
('HD_MB01', 'CN_MB01', 'NV_MB01', 'KH01', GETDATE(), 150000), ('HD_MB02', 'CN_MB02', 'NV_MB02', 'KH02', GETDATE(), 180000),
('HD_MB03', 'CN_MB03', 'NV_MB03', 'KH03', GETDATE(), 65000),  ('HD_MB04', 'CN_MB04', 'NV_MB04', 'KH04', GETDATE(), 55000),
('HD_MB05', 'CN_MB05', 'NV_MB05', 'KH05', GETDATE(), 150000), ('HD_MB06', 'CN_MB06', 'NV_MB06', 'KH06', GETDATE(), 140000),
('HD_MB07', 'CN_MB07', 'NV_MB07', 'KH07', GETDATE(), 80000),  ('HD_MB08', 'CN_MB08', 'NV_MB08', 'KH08', GETDATE(), 45000),
('HD_MB09', 'CN_MB09', 'NV_MB09', 'KH09', GETDATE(), 350000), ('HD_MB10', 'CN_MB10', 'NV_MB10', 'KH10', GETDATE(), 115000);

-- 10 Hóa đơn Miền Trung
INSERT INTO HoaDon (MaHD, MaCN, MaNV, MaKH, NgayTao, TongTien) VALUES 
('HD_MT01', 'CN_MT01', 'NV_MT01', 'KH11', GETDATE(), 150000), ('HD_MT02', 'CN_MT02', 'NV_MT02', 'KH12', GETDATE(), 22000),
('HD_MT03', 'CN_MT03', 'NV_MT03', 'KH13', GETDATE(), 110000), ('HD_MT04', 'CN_MT04', 'NV_MT04', 'KH14', GETDATE(), 185000),
('HD_MT05', 'CN_MT05', 'NV_MT05', 'KH15', GETDATE(), 95000),  ('HD_MT06', 'CN_MT06', 'NV_MT06', 'KH16', GETDATE(), 130000),
('HD_MT07', 'CN_MT07', 'NV_MT07', 'KH17', GETDATE(), 400000), ('HD_MT08', 'CN_MT08', 'NV_MT08', 'KH18', GETDATE(), 250000),
('HD_MT09', 'CN_MT09', 'NV_MT09', 'KH19', GETDATE(), 105000), ('HD_MT10', 'CN_MT10', 'NV_MT10', 'KH20', GETDATE(), 110000);

-- 10 Hóa đơn Miền Nam
INSERT INTO HoaDon (MaHD, MaCN, MaNV, MaKH, NgayTao, TongTien) VALUES 
('HD_MN01', 'CN_MN01', 'NV_MN01', 'KH21', GETDATE(), 300000), ('HD_MN02', 'CN_MN02', 'NV_MN02', 'KH22', GETDATE(), 18000),
('HD_MN03', 'CN_MN03', 'NV_MN03', 'KH23', GETDATE(), 85000),  ('HD_MN04', 'CN_MN04', 'NV_MN04', 'KH24', GETDATE(), 60000),
('HD_MN05', 'CN_MN05', 'NV_MN05', 'KH25', GETDATE(), 40000),  ('HD_MN06', 'CN_MN06', 'NV_MN06', 'KH26', GETDATE(), 270000),
('HD_MN07', 'CN_MN07', 'NV_MN07', 'KH27', GETDATE(), 170000), ('HD_MN08', 'CN_MN08', 'NV_MN08', 'KH28', GETDATE(), 195000),
('HD_MN09', 'CN_MN09', 'NV_MN09', 'KH29', GETDATE(), 550000), ('HD_MN10', 'CN_MN10', 'NV_MN10', 'KH30', GETDATE(), 320000);

-- Chi tiết hóa đơn (Mua lộn xộn các lô 01, 02, 03, 04, 05)
INSERT INTO ChiTietHoaDon (MaHD, MaLo, SoLuong, DonGiaBan) VALUES 
('HD_MB01', 'LO01', 2, 75000), ('HD_MB02', 'LO02', 1, 180000), ('HD_MB03', 'LO03', 1, 65000), ('HD_MB04', 'LO04', 1, 55000), ('HD_MB05', 'LO05', 1, 150000),
('HD_MB06', 'LO01', 1, 140000), ('HD_MB07', 'LO02', 1, 80000), ('HD_MB08', 'LO03', 1, 45000), ('HD_MB09', 'LO04', 2, 175000), ('HD_MB10', 'LO05', 1, 115000),
('HD_MT01', 'LO01', 1, 150000), ('HD_MT02', 'LO02', 1, 22000), ('HD_MT03', 'LO03', 1, 110000), ('HD_MT04', 'LO04', 1, 185000), ('HD_MT05', 'LO05', 1, 95000),
('HD_MT06', 'LO01', 1, 130000), ('HD_MT07', 'LO02', 2, 200000), ('HD_MT08', 'LO03', 1, 250000), ('HD_MT09', 'LO04', 1, 105000), ('HD_MT10', 'LO05', 1, 110000),
('HD_MN01', 'LO01', 2, 150000), ('HD_MN02', 'LO02', 1, 18000), ('HD_MN03', 'LO03', 1, 85000), ('HD_MN04', 'LO04', 1, 60000), ('HD_MN05', 'LO05', 1, 40000),
('HD_MN06', 'LO01', 1, 270000), ('HD_MN07', 'LO02', 1, 170000), ('HD_MN08', 'LO03', 1, 195000), ('HD_MN09', 'LO04', 1, 550000), ('HD_MN10', 'LO05', 1, 320000);
GO