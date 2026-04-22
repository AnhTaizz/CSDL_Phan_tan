USE QL_ChuoiNhaThuoc;
GO

-- ==========================================================
-- PHẦN 2: CHÈN MOCK DATA (DỮ LIỆU MẪU ĐỂ TEST HỆ THỐNG)
-- ==========================================================

-- 1. Nhóm Thuốc, Hoạt Chất, Nhà Cung Cấp
INSERT INTO NhomThuoc (MaNhom, TenNhom) VALUES 
('NT_KS', N'Thuốc kháng sinh'), ('NT_GD', N'Thuốc giảm đau, hạ sốt'),
('NT_SP', N'Thực phẩm chức năng'), ('NT_TM', N'Thuốc tim mạch'),
('NT_DD', N'Thuốc tiêu hóa, dạ dày'), ('NT_DU', N'Thuốc chống dị ứng'),
('NT_HH', N'Thuốc hô hấp, ho');

INSERT INTO HoatChat (MaHC, TenHC, ChongChiDinh) VALUES 
('HC_AMX', N'Amoxicillin', N'Mẫn cảm với Penicillin'), ('HC_PAR', N'Paracetamol', N'Người suy gan nặng'),
('HC_VITC', N'Vitamin C', N'Người sỏi thận'), ('HC_AML', N'Amlodipine', N'Huyết áp thấp'),
('HC_OME', N'Omeprazole', N'Phụ nữ cho con bú'), ('HC_LOR', N'Loratadine', N'Trẻ em dưới 2 tuổi'),
('HC_IBU', N'Ibuprofen', N'Loét dạ dày tiến triển'), ('HC_SAL', N'Salbutamol', N'Nhồi máu cơ tim');

INSERT INTO NhaCungCap (MaNCC, TenNCC, DiaChi, SoDienThoai) VALUES 
('NCC_DHG', N'Công ty Dược Hậu Giang', N'288 Bis Nguyễn Văn Cừ, Cần Thơ', '02923891433'),
('NCC_GSK', N'GlaxoSmithKline Pharma', N'Kumho Asiana, Quận 1, TP.HCM', '02838248888'),
('NCC_TRA', N'Traphaco', N'75 Yên Ninh, Ba Đình, Hà Nội', '18006612'),
('NCC_DOM', N'Domesco', N'66 Quốc lộ 30, Đồng Tháp', '02773852278');

-- 2. Khách Hàng & Bác Sĩ
INSERT INTO KhachHang (MaKH, TenKH, SoDienThoai, DiemTichLuy, MaCN_MoThe) VALUES 
('KH_001', N'Nguyễn Văn An', '0901111222', 150, 'CN_HN'), ('KH_002', N'Trần Thị Bình', '0903333444', 50, 'CN_HN'),
('KH_003', N'Đỗ Minh Tuấn', '0912222333', 10, 'CN_HN'), ('KH_004', N'Lý Lan Anh', '0918888999', 80, 'CN_HP'),
('KH_005', N'Lê Hoàng Cường', '0905555666', 0, 'CN_HP'), ('KH_006', N'Phạm Thu Hương', '0907777888', 200, 'CN_DN'),
('KH_007', N'Vũ Bích Ngọc', '0914444555', 450, 'CN_DN'), ('KH_008', N'Hoàng Quốc Việt', '0916666777', 120, 'CN_HCM'),
('KH_009', N'Tạ Đình Phong', '0981111222', 30, 'CN_HCM'), ('KH_010', N'Bùi Thanh Trúc', '0983333444', 500, 'CN_HCM'),
('KH_011', N'Nguyễn Tấn Đạt', '0991111333', 75, 'CN_CT'), ('KH_012', N'Trần Ngọc Nga', '0992222444', 320, 'CN_CT');

INSERT INTO BacSi (MaBS, TenBS, NoiCongTac, ChungChiHanhNghe) VALUES 
('BS_001', N'Phạm Đức Minh', N'Bệnh viện Bạch Mai', 'CCHN-10001'), ('BS_002', N'Hoàng Thanh Trà', N'Bệnh viện Chợ Rẫy', 'CCHN-10002'),
('BS_003', N'Lê Quang Thọ', N'Bệnh viện Đa Khoa Đà Nẵng', 'CCHN-10003'), ('BS_004', N'Trần Mai Phương', N'Bệnh viện Việt Tiệp', 'CCHN-10004'),
('BS_005', N'Nguyễn Hữu Trí', N'Bệnh viện Đa Khoa Cần Thơ', 'CCHN-10005');

-- 3. Chi Nhánh, Thuốc & Nhân Viên
INSERT INTO ChiNhanh (MaCN, TenCN, KhuVuc, DiaChi, SoDienThoai) VALUES 
('CN_HN', N'Nhà thuốc Trung tâm Hà Nội', N'Miền Bắc', N'122 Hoàng Quốc Việt, Hà Nội', '0241111222'),
('CN_HP', N'Nhà thuốc Trung tâm Hải Phòng', N'Miền Bắc', N'12 Lạch Tray, Hải Phòng', '0225111222'),
('CN_DN', N'Nhà thuốc Trung tâm Đà Nẵng', N'Miền Trung', N'45 Lê Duẩn, Đà Nẵng', '0236111222'),
('CN_HCM', N'Nhà thuốc Trung tâm TP.HCM', N'Miền Nam', N'102 Cống Quỳnh, TP.HCM', '0281111222'),
('CN_CT', N'Nhà thuốc Trung tâm Cần Thơ', N'Miền Tây', N'30 Ninh Kiều, Cần Thơ', '0292111222');

INSERT INTO Thuoc (MaThuoc, MaNhom, MaNCC, TenThuoc, DonViTinh, CanKeDon, GiaNhap, GiaBanLe) VALUES 
('TH_001', 'NT_KS', 'NCC_DHG', N'Amoxicillin 500mg', N'Hộp', 1, 45000, 60000),
('TH_002', 'NT_GD', 'NCC_GSK', N'Panadol Extra', N'Hộp', 0, 50000, 65000),
('TH_003', 'NT_SP', 'NCC_TRA', N'Vitamin C 1000mg', N'Lọ', 0, 120000, 150000),
('TH_004', 'NT_TM', 'NCC_DOM', N'Amlodipine 5mg', N'Vỉ', 1, 15000, 25000),
('TH_005', 'NT_DD', 'NCC_TRA', N'Omeprazole 20mg', N'Vỉ', 1, 20000, 35000),
('TH_006', 'NT_DU', 'NCC_DHG', N'Loratadine 10mg', N'Hộp', 0, 30000, 45000),
('TH_007', 'NT_GD', 'NCC_DOM', N'Ibuprofen 400mg', N'Hộp', 1, 40000, 55000),
('TH_008', 'NT_HH', 'NCC_GSK', N'Ventolin Inhaler', N'Lọ', 1, 85000, 110000);

INSERT INTO NhanVien (MaNV, MaCN, TenNV, ChucVu, LuongCoBan, SoTaiKhoan, MatKhauHash) VALUES 
('NV_HN01', 'CN_HN', N'Đinh Văn Hà', N'Cửa hàng trưởng', 15000000, '0123456701', 'hash_123'),
('NV_HN02', 'CN_HN', N'Bùi Thị Thu', N'Dược sĩ', 10000000, '0123456702', 'hash_123'),
('NV_HP01', 'CN_HP', N'Lê Viết Trí', N'Cửa hàng trưởng', 14500000, '0123456705', 'hash_123'),
('NV_DN01', 'CN_DN', N'Võ Tấn Phát', N'Cửa hàng trưởng', 14000000, '0123456708', 'hash_123'),
('NV_DN02', 'CN_DN', N'Lê Xuân', N'Dược sĩ', 9500000, '0123456709', 'hash_123'),
('NV_HCM01', 'CN_HCM', N'Nguyễn Trọng Đại', N'Cửa hàng trưởng', 16000000, '0123456711', 'hash_123'),
('NV_HCM02', 'CN_HCM', N'Lý Hải Yến', N'Dược sĩ', 11000000, '0123456712', 'hash_123'),
('NV_CT01', 'CN_CT', N'Trần Thanh Phong', N'Cửa hàng trưởng', 13000000, '0123456715', 'hash_123');

-- 4. Bảng Trung Gian & Lô Thuốc, Tồn Kho
INSERT INTO ThanhPhanThuoc (MaThuoc, MaHC, HamLuong) VALUES 
('TH_001', 'HC_AMX', '500mg'), ('TH_002', 'HC_PAR', '500mg'), ('TH_003', 'HC_VITC', '1000mg'),
('TH_004', 'HC_AML', '5mg'), ('TH_005', 'HC_OME', '20mg'), ('TH_006', 'HC_LOR', '10mg'),
('TH_007', 'HC_IBU', '400mg'), ('TH_008', 'HC_SAL', '100mcg/lieu');

INSERT INTO LoThuoc (MaLo, MaThuoc, SoLoSX, NgaySanXuat, HanSuDung) VALUES 
('LO_001', 'TH_001', 'AMX_A1', '2025-01-10', '2027-01-10'), ('LO_002', 'TH_002', 'PAN_A1', '2025-05-01', '2028-05-01'),
('LO_003', 'TH_003', 'VIT_C1', '2025-12-01', '2027-12-01'), ('LO_004', 'TH_004', 'AML_A1', '2026-03-01', '2028-03-01'),
('LO_005', 'TH_005', 'OME_A1', '2025-11-15', '2027-11-15'), ('LO_006', 'TH_006', 'LOR_A1', '2026-02-10', '2029-02-10'),
('LO_007', 'TH_007', 'IBU_A1', '2025-08-20', '2027-08-20'), ('LO_008', 'TH_008', 'VEN_A1', '2026-01-05', '2028-01-05');

INSERT INTO TonKho (MaCN, MaLo, SoLuongTon) VALUES 
('CN_HN', 'LO_001', 500), ('CN_HN', 'LO_002', 400), ('CN_HN', 'LO_003', 200),
('CN_HP', 'LO_001', 200), ('CN_HP', 'LO_004', 350), ('CN_HP', 'LO_006', 150),
('CN_DN', 'LO_002', 400), ('CN_DN', 'LO_005', 300), ('CN_DN', 'LO_007', 250),
('CN_HCM', 'LO_002', 800), ('CN_HCM', 'LO_004', 600), ('CN_HCM', 'LO_008', 200),
('CN_CT', 'LO_003', 300), ('CN_CT', 'LO_006', 250), ('CN_CT', 'LO_008', 100);

-- 5. Giao Dịch Cục Bộ & CHÉO VÙNG
INSERT INTO PhieuNhapKho (MaPhieuNhap, MaCN, NgayNhap, TongGiaTri) VALUES 
('PN_HN01', 'CN_HN', '2026-01-15', 56500000), ('PN_HCM01', 'CN_HCM', '2026-01-18', 142000000);

INSERT INTO ChiTietNhapKho (MaPhieuNhap, MaLo, SoLuongNhap, DonGiaNhap) VALUES 
('PN_HN01', 'LO_001', 500, 45000), ('PN_HN01', 'LO_002', 400, 50000),
('PN_HCM01', 'LO_002', 800, 45000), ('PN_HCM01', 'LO_004', 600, 50000);

INSERT INTO HoaDon (MaHD, MaCN, MaNV, MaKH, MaBS, NgayTao, TongTien, PhuongThucThanhToan) VALUES 
-- Giao dịch nội bộ (Khách ở đâu mua ở đó)
('HD_HN01', 'CN_HN', 'NV_HN02', 'KH_001', 'BS_001', '2026-04-10 08:30:00', 340000, N'Chuyển khoản'),
('HD_HP01', 'CN_HP', 'NV_HP01', 'KH_004', NULL, '2026-04-12 10:00:00', 110000, N'Chuyển khoản'),
('HD_HCM01', 'CN_HCM', 'NV_HCM02', 'KH_008', NULL, '2026-04-10 13:30:00', 300000, N'Chuyển khoản'),
('HD_CT01', 'CN_CT', 'NV_CT01', 'KH_011', 'BS_005', '2026-04-11 07:45:00', 170000, N'Tiền mặt'),

-- 🔥 GIAO DỊCH CHÉO VÙNG (Để test Linked Server & Merge Replication) 🔥
-- Khách KH_003 (Mở thẻ ở Hà Nội) bay vào Đà Nẵng mua thuốc
('HD_DN_CHEO_01', 'CN_DN', 'NV_DN02', 'KH_003', NULL, '2026-04-18 09:00:00', 65000, N'Tiền mặt'),
-- Khách KH_005 (Mở thẻ ở Hải Phòng) đi công tác và mua hàng tại TP.HCM, dùng đơn của bác sĩ Bạch Mai
('HD_HCM_CHEO_01', 'CN_HCM', 'NV_HCM02', 'KH_005', 'BS_001', '2026-04-19 14:30:00', 110000, N'Quẹt thẻ');

INSERT INTO ChiTietHoaDon (MaHD, MaLo, SoLuong, DonGiaBan) VALUES 
('HD_HN01', 'LO_001', 2, 60000), 
('HD_HP01', 'LO_004', 1, 65000), 
('HD_HCM01', 'LO_002', 2, 65000),
('HD_CT01', 'LO_008', 1, 110000),
-- Chi tiết hóa đơn chéo vùng
('HD_DN_CHEO_01', 'LO_002', 1, 65000), -- KH_003 mua Panadol ở Đà Nẵng
('HD_HCM_CHEO_01', 'LO_008', 1, 110000); -- KH_005 mua Ventolin ở TP.HCM
GO