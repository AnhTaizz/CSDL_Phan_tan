USE QL_ChuoiNhaThuoc;
GO

-- ==========================================================
-- 1. DANH MỤC DÙNG CHUNG (TỪ ĐIỂN DỮ LIỆU) - QUY MÔ LỚN
-- ==========================================================

-- 1.1. Nhóm Thuốc
INSERT INTO NhomThuoc (MaNhom, TenNhom) VALUES 
('NT_KS', N'Thuốc kháng sinh'),
('NT_GD', N'Thuốc giảm đau, hạ sốt, chống viêm'),
('NT_SP', N'Thực phẩm chức năng & Vitamin'),
('NT_TM', N'Thuốc tim mạch, huyết áp'),
('NT_DD', N'Thuốc tiêu hóa, dạ dày'),
('NT_DU', N'Thuốc chống dị ứng'),
('NT_HH', N'Thuốc hô hấp, ho, cảm');

-- 1.2. Hoạt Chất
INSERT INTO HoatChat (MaHC, TenHC, ChongChiDinh) VALUES 
('HC_AMX', N'Amoxicillin', N'Mẫn cảm với Penicillin'),
('HC_PAR', N'Paracetamol', N'Người suy gan nặng'),
('HC_VITC', N'Vitamin C', N'Người sỏi thận'),
('HC_AML', N'Amlodipine', N'Huyết áp thấp nghiêm trọng'),
('HC_OME', N'Omeprazole', N'Phụ nữ cho con bú'),
('HC_LOR', N'Loratadine', N'Trẻ em dưới 2 tuổi'),
('HC_IBU', N'Ibuprofen', N'Người loét dạ dày tiến triển'),
('HC_B12', N'Vitamin B12', N'Bệnh nhân ung thư'),
('HC_SAL', N'Salbutamol', N'Nhồi máu cơ tim cấp');

-- 1.3. Khách Hàng (Tập dữ liệu đa dạng)
INSERT INTO KhachHang (MaKH, TenKH, SoDienThoai, DiemTichLuy) VALUES 
('KH_001', N'Nguyễn Văn An', '0901111222', 150),
('KH_002', N'Trần Thị Bình', '0903333444', 50),
('KH_003', N'Lê Hoàng Cường', '0905555666', 0),
('KH_004', N'Phạm Thu Hương', '0907777888', 200),
('KH_005', N'Đỗ Minh Tuấn', '0912222333', 10),
('KH_006', N'Vũ Bích Ngọc', '0914444555', 450),
('KH_007', N'Hoàng Quốc Việt', '0916666777', 120),
('KH_008', N'Lý Lan Anh', '0918888999', 80),
('KH_009', N'Tạ Đình Phong', '0981111222', 30),
('KH_010', N'Bùi Thanh Trúc', '0983333444', 500);

-- 1.4. Bác Sĩ (Mở rộng)
INSERT INTO BacSi (MaBS, TenBS, NoiCongTac, ChungChiHanhNghe) VALUES 
('BS_001', N'Phạm Đức Minh', N'Bệnh viện Bạch Mai', 'CCHN-10001'),
('BS_002', N'Hoàng Thanh Trà', N'Bệnh viện Chợ Rẫy', 'CCHN-10002'),
('BS_003', N'Lê Quang Thọ', N'Bệnh viện Đa Khoa Đà Nẵng', 'CCHN-10003'),
('BS_004', N'Trần Mai Phương', N'Bệnh viện Việt Tiệp', 'CCHN-10004'),
('BS_005', N'Nguyễn Hữu Trí', N'Bệnh viện Đa Khoa Cần Thơ', 'CCHN-10005');

-- ==========================================================
-- 2. CHI NHÁNH & THUỐC (LEVEL 1)
-- ==========================================================

-- 2.1. Chi Nhánh (5 Node Phân mảnh)
INSERT INTO ChiNhanh (MaCN, TenCN, KhuVuc, DiaChi, SoDienThoai, TrangThaiHoatDong) VALUES 
('CN_HN', N'Nhà thuốc Trung tâm Hà Nội', N'Miền Bắc', N'122 Hoàng Quốc Việt, Cầu Giấy, Hà Nội', '0241111222', 1),
('CN_HP', N'Nhà thuốc Trung tâm Hải Phòng', N'Miền Bắc', N'12 Lạch Tray, Ngô Quyền, Hải Phòng', '0225111222', 1),
('CN_DN', N'Nhà thuốc Trung tâm Đà Nẵng', N'Miền Trung', N'45 Lê Duẩn, Hải Châu, Đà Nẵng', '0236111222', 1),
('CN_HCM', N'Nhà thuốc Trung tâm TP.HCM', N'Miền Nam', N'102 Cống Quỳnh, Quận 1, TP.HCM', '0281111222', 1),
('CN_CT', N'Nhà thuốc Trung tâm Cần Thơ', N'Miền Tây', N'30 Ninh Kiều, Cần Thơ', '0292111222', 1);

-- 2.2. Thuốc (Tăng cường số lượng lên 10 loại)
INSERT INTO Thuoc (MaThuoc, MaNhom, TenThuoc, DonViTinh, CanKeDon, GiaNhap, GiaBanLe, NhaCungCap) VALUES 
('TH_001', 'NT_KS', N'Amoxicillin 500mg', N'Hộp', 1, 45000, 60000, N'Dược Hậu Giang'),
('TH_002', 'NT_GD', N'Panadol Extra', N'Hộp', 0, 50000, 65000, N'GSK'),
('TH_003', 'NT_SP', N'Blackmores Vitamin C 1000mg', N'Lọ', 0, 120000, 150000, N'Blackmores'),
('TH_004', 'NT_TM', N'Amlodipine 5mg', N'Vỉ', 1, 15000, 25000, N'Domesco'),
('TH_005', 'NT_DD', N'Omeprazole 20mg', N'Vỉ', 1, 20000, 35000, N'Traphaco'),
('TH_006', 'NT_DU', N'Loratadine 10mg', N'Hộp', 0, 30000, 45000, N'Imexpharm'),
('TH_007', 'NT_GD', N'Ibuprofen 400mg', N'Hộp', 1, 40000, 55000, N'Domesco'),
('TH_008', 'NT_SP', N'Vitamin 3B', N'Hộp', 0, 25000, 40000, N'Dược Hậu Giang'),
('TH_009', 'NT_KS', N'Augmentin 1g', N'Hộp', 1, 180000, 220000, N'GSK'),
('TH_010', 'NT_HH', N'Ventolin Inhaler (Salbutamol)', N'Lọ', 1, 85000, 110000, N'GSK');

-- 2.3. Nhân Viên (Phủ dày đặc các chi nhánh)
INSERT INTO NhanVien (MaNV, MaCN, TenNV, ChucVu, LuongCoBan, SoTaiKhoan, MatKhauHash) VALUES 
-- Hà Nội (4 người)
('NV_HN01', 'CN_HN', N'Đinh Văn Hà', N'Cửa hàng trưởng', 15000000, '0123456701', 'hash_123'),
('NV_HN02', 'CN_HN', N'Bùi Thị Thu', N'Dược sĩ', 10000000, '0123456702', 'hash_123'),
('NV_HN03', 'CN_HN', N'Ngô Tấn Tài', N'Dược sĩ', 10000000, '0123456703', 'hash_123'),
('NV_HN04', 'CN_HN', N'Phan Quang', N'Thu ngân', 8000000, '0123456704', 'hash_123'),
-- Hải Phòng (3 người)
('NV_HP01', 'CN_HP', N'Lê Viết Trí', N'Cửa hàng trưởng', 14500000, '0123456705', 'hash_123'),
('NV_HP02', 'CN_HP', N'Phạm Thu Thủy', N'Dược sĩ', 10500000, '0123456706', 'hash_123'),
('NV_HP03', 'CN_HP', N'Trần Lực', N'Bảo vệ', 7000000, '0123456707', 'hash_123'),
-- Đà Nẵng (3 người)
('NV_DN01', 'CN_DN', N'Võ Tấn Phát', N'Cửa hàng trưởng', 14000000, '0123456708', 'hash_123'),
('NV_DN02', 'CN_DN', N'Lê Xuân', N'Dược sĩ', 9500000, '0123456709', 'hash_123'),
('NV_DN03', 'CN_DN', N'Hoàng Yến', N'Thu ngân', 7500000, '0123456710', 'hash_123'),
-- HCM (4 người)
('NV_HCM01', 'CN_HCM', N'Nguyễn Trọng Đại', N'Cửa hàng trưởng', 16000000, '0123456711', 'hash_123'),
('NV_HCM02', 'CN_HCM', N'Lý Hải Yến', N'Dược sĩ', 11000000, '0123456712', 'hash_123'),
('NV_HCM03', 'CN_HCM', N'Trương Mỹ Lan', N'Dược sĩ', 11000000, '0123456713', 'hash_123'),
('NV_HCM04', 'CN_HCM', N'Vũ Đại Mạc', N'Kho vận', 9000000, '0123456714', 'hash_123'),
-- Cần Thơ (3 người)
('NV_CT01', 'CN_CT', N'Trần Thanh Phong', N'Cửa hàng trưởng', 13000000, '0123456715', 'hash_123'),
('NV_CT02', 'CN_CT', N'Mai Hữu Phương', N'Dược sĩ', 9000000, '0123456716', 'hash_123'),
('NV_CT03', 'CN_CT', N'Lâm Tâm Như', N'Thu ngân', 7000000, '0123456717', 'hash_123');


-- ==========================================================
-- 3. BẢNG TRUNG GIAN & LÔ THUỐC, TỒN KHO
-- ==========================================================

-- 3.1. Thành Phần Thuốc
INSERT INTO ThanhPhanThuoc (MaThuoc, MaHC, HamLuong) VALUES 
('TH_001', 'HC_AMX', '500mg'),
('TH_002', 'HC_PAR', '500mg'),
('TH_003', 'HC_VITC', '1000mg'),
('TH_004', 'HC_AML', '5mg'),
('TH_005', 'HC_OME', '20mg'),
('TH_006', 'HC_LOR', '10mg'),
('TH_007', 'HC_IBU', '400mg'),
('TH_008', 'HC_B12', '50mcg'),
('TH_009', 'HC_AMX', '875mg'),
('TH_010', 'HC_SAL', '100mcg/liều');

-- 3.2. Lô Thuốc (Nhiều lô cho cùng 1 loại thuốc để test cận Date)
INSERT INTO LoThuoc (MaLo, MaThuoc, SoLoSX, NgaySanXuat, HanSuDung) VALUES 
('LO_001', 'TH_001', 'AMX_A1', '2025-01-10', '2027-01-10'),
('LO_002', 'TH_001', 'AMX_B2', '2026-02-15', '2028-02-15'),
('LO_003', 'TH_002', 'PAN_A1', '2025-05-01', '2028-05-01'),
('LO_004', 'TH_002', 'PAN_B2', '2026-01-20', '2029-01-20'),
('LO_005', 'TH_003', 'VIT_C1', '2025-12-01', '2027-12-01'),
('LO_006', 'TH_004', 'AML_A1', '2026-03-01', '2028-03-01'),
('LO_007', 'TH_005', 'OME_A1', '2025-11-15', '2027-11-15'),
('LO_008', 'TH_006', 'LOR_A1', '2026-02-10', '2029-02-10'),
('LO_009', 'TH_007', 'IBU_A1', '2025-08-20', '2027-08-20'),
('LO_010', 'TH_008', 'B12_A1', '2026-04-01', '2028-04-01'),
('LO_011', 'TH_009', 'AUG_A1', '2025-10-10', '2027-10-10'),
('LO_012', 'TH_010', 'VEN_A1', '2026-01-05', '2028-01-05');

-- 3.3. Tồn Kho (Rải đều lô thuốc ra khắp các miền)
INSERT INTO TonKho (MaCN, MaLo, SoLuongTon) VALUES 
('CN_HN', 'LO_001', 500), ('CN_HN', 'LO_003', 400), ('CN_HN', 'LO_005', 200), ('CN_HN', 'LO_007', 300), ('CN_HN', 'LO_011', 100),
('CN_HP', 'LO_001', 200), ('CN_HP', 'LO_004', 350), ('CN_HP', 'LO_006', 150), ('CN_HP', 'LO_008', 200),
('CN_DN', 'LO_002', 400), ('CN_DN', 'LO_003', 300), ('CN_DN', 'LO_009', 250), ('CN_DN', 'LO_010', 100),
('CN_HCM', 'LO_002', 800), ('CN_HCM', 'LO_004', 600), ('CN_HCM', 'LO_005', 500), ('CN_HCM', 'LO_006', 400), ('CN_HCM', 'LO_012', 200),
('CN_CT', 'LO_002', 300), ('CN_CT', 'LO_004', 250), ('CN_CT', 'LO_008', 150), ('CN_CT', 'LO_010', 200), ('CN_CT', 'LO_012', 100);


-- ==========================================================
-- 4. GIAO DỊCH (PHIẾU NHẬP & HÓA ĐƠN)
-- ==========================================================

-- 4.1. Phiếu Nhập Kho (Nhiều đợt nhập)
INSERT INTO PhieuNhapKho (MaPhieuNhap, MaCN, NgayNhap, TongGiaTri) VALUES 
('PN_HN01', 'CN_HN', '2026-01-15', 56500000),
('PN_HN02', 'CN_HN', '2026-03-10', 24000000),
('PN_HP01', 'CN_HP', '2026-02-05', 31500000),
('PN_DN01', 'CN_DN', '2026-01-20', 43000000),
('PN_HCM01', 'CN_HCM', '2026-01-18', 142000000),
('PN_HCM02', 'CN_HCM', '2026-04-01', 17000000),
('PN_CT01', 'CN_CT', '2026-02-25', 39000000);

-- 4.2. Chi Tiết Nhập Kho
INSERT INTO ChiTietNhapKho (MaPhieuNhap, MaLo, SoLuongNhap, DonGiaNhap) VALUES 
('PN_HN01', 'LO_001', 500, 45000), ('PN_HN01', 'LO_003', 400, 50000), ('PN_HN01', 'LO_005', 200, 120000),
('PN_HN02', 'LO_007', 300, 20000), ('PN_HN02', 'LO_011', 100, 180000),
('PN_HP01', 'LO_001', 200, 45000), ('PN_HP01', 'LO_004', 350, 50000), ('PN_HP01', 'LO_006', 150, 15000),
('PN_DN01', 'LO_002', 400, 45000), ('PN_DN01', 'LO_003', 300, 50000), ('PN_DN01', 'LO_009', 250, 40000),
('PN_HCM01', 'LO_002', 800, 45000), ('PN_HCM01', 'LO_004', 600, 50000), ('PN_HCM01', 'LO_005', 500, 120000), ('PN_HCM01', 'LO_006', 400, 15000),
('PN_HCM02', 'LO_012', 200, 85000),
('PN_CT01', 'LO_002', 300, 45000), ('PN_CT01', 'LO_004', 250, 50000), ('PN_CT01', 'LO_008', 150, 30000);

-- 4.3. Hóa Đơn Bán Hàng (Dày đặc để test thống kê doanh thu)
INSERT INTO HoaDon (MaHD, MaCN, MaNV, MaKH, MaBS, NgayTao, TongTien, PhuongThucThanhToan) VALUES 
('HD_HN01', 'CN_HN', 'NV_HN02', 'KH_001', 'BS_001', '2026-04-10 08:30:00', 340000, N'Chuyển khoản'),
('HD_HN02', 'CN_HN', 'NV_HN03', 'KH_002', NULL, '2026-04-11 09:15:00', 130000, N'Tiền mặt'),
('HD_HN03', 'CN_HN', 'NV_HN02', NULL, NULL, '2026-04-15 14:20:00', 65000, N'Tiền mặt'),
('HD_HP01', 'CN_HP', 'NV_HP02', 'KH_003', NULL, '2026-04-12 10:00:00', 110000, N'Chuyển khoản'),
('HD_HP02', 'CN_HP', 'NV_HP02', 'KH_004', 'BS_004', '2026-04-16 16:45:00', 85000, N'Tiền mặt'),
('HD_DN01', 'CN_DN', 'NV_DN02', 'KH_005', 'BS_003', '2026-04-10 11:00:00', 115000, N'Chuyển khoản'),
('HD_DN02', 'CN_DN', 'NV_DN03', 'KH_006', NULL, '2026-04-14 08:50:00', 150000, N'Quẹt thẻ'),
('HD_HCM01', 'CN_HCM', 'NV_HCM02', 'KH_007', NULL, '2026-04-10 13:30:00', 300000, N'Chuyển khoản'),
('HD_HCM02', 'CN_HCM', 'NV_HCM03', 'KH_008', 'BS_002', '2026-04-12 15:20:00', 230000, N'Chuyển khoản'),
('HD_HCM03', 'CN_HCM', 'NV_HCM02', 'KH_010', NULL, '2026-04-18 19:10:00', 450000, N'Quẹt thẻ'),
('HD_CT01', 'CN_CT', 'NV_CT02', 'KH_009', 'BS_005', '2026-04-11 07:45:00', 170000, N'Tiền mặt'),
('HD_CT02', 'CN_CT', 'NV_CT03', NULL, NULL, '2026-04-15 20:00:00', 45000, N'Tiền mặt');

-- 4.4. Chi Tiết Hóa Đơn
INSERT INTO ChiTietHoaDon (MaHD, MaLo, SoLuong, DonGiaBan) VALUES 
('HD_HN01', 'LO_001', 2, 60000), ('HD_HN01', 'LO_011', 1, 220000),
('HD_HN02', 'LO_003', 2, 65000),
('HD_HN03', 'LO_003', 1, 65000),
('HD_HP01', 'LO_004', 1, 65000), ('HD_HP01', 'LO_008', 1, 45000),
('HD_HP02', 'LO_001', 1, 60000), ('HD_HP02', 'LO_006', 1, 25000),
('HD_DN01', 'LO_002', 1, 60000), ('HD_DN01', 'LO_009', 1, 55000),
('HD_DN02', 'LO_003', 1, 150000), -- Vitamin C
('HD_HCM01', 'LO_005', 2, 150000),
('HD_HCM02', 'LO_002', 2, 60000), ('HD_HCM02', 'LO_012', 1, 110000),
('HD_HCM03', 'LO_005', 3, 150000),
('HD_CT01', 'LO_002', 1, 60000), ('HD_CT01', 'LO_012', 1, 110000),
('HD_CT02', 'LO_008', 1, 45000);
GO