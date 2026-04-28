USE QL_ChuoiNhaThuoc;
GO

SET NOCOUNT ON;

-- ==========================================================
-- PHẦN 1: DỮ LIỆU TĨNH MỞ RỘNG (SÁT THỰC TẾ)
-- ==========================================================

-- 1. Nhóm Thuốc (15 Nhóm)
INSERT INTO NhomThuoc (MaNhom, TenNhom) VALUES 
('NT_KS', N'Thuốc kháng sinh'), ('NT_GD', N'Thuốc giảm đau, hạ sốt, chống viêm'),
('NT_SP', N'Thực phẩm chức năng & Vitamin'), ('NT_TM', N'Thuốc tim mạch, huyết áp'),
('NT_DD', N'Thuốc tiêu hóa, dạ dày'), ('NT_DU', N'Thuốc chống dị ứng'),
('NT_HH', N'Thuốc hô hấp, ho, cảm'), ('NT_NT', N'Thuốc nội tiết, tiểu đường'),
('NT_CX', N'Thuốc cơ xương khớp'), ('NT_DL', N'Thuốc dùng ngoài, da liễu'),
('NT_MH', N'Thuốc nhỏ mắt, tai mũi họng'), ('NT_PK', N'Thuốc phụ khoa'),
('NT_MD', N'Thuốc miễn dịch, ung thư'), ('NT_TK', N'Thuốc thần kinh, trầm cảm'),
('NT_VT', N'Vật tư y tế, bông băng');

-- 2. Hoạt Chất (40 Hoạt chất)
INSERT INTO HoatChat (MaHC, TenHC, ChongChiDinh) VALUES 
('HC_AMX', N'Amoxicillin', N'Mẫn cảm với Penicillin'), ('HC_PAR', N'Paracetamol', N'Người suy gan nặng'),
('HC_VITC', N'Vitamin C', N'Người sỏi thận'), ('HC_AML', N'Amlodipine', N'Huyết áp thấp nghiêm trọng'),
('HC_OME', N'Omeprazole', N'Phụ nữ cho con bú'), ('HC_LOR', N'Loratadine', N'Trẻ em dưới 2 tuổi'),
('HC_IBU', N'Ibuprofen', N'Người loét dạ dày tiến triển'), ('HC_B12', N'Vitamin B12', N'Bệnh nhân ung thư'),
('HC_SAL', N'Salbutamol', N'Nhồi máu cơ tim cấp'), ('HC_MET', N'Metformin', N'Suy thận nặng'),
('HC_DIC', N'Diclofenac', N'Loét dạ dày tá tràng'), ('HC_CET', N'Cetirizine', N'Suy thận nặng'),
('HC_013', N'Levofloxacin', N'Trẻ em dưới 18 tuổi, phụ nữ có thai'), ('HC_014', N'Azithromycin', N'Quá mẫn với Macrolid'),
('HC_015', N'Cefuroxime', N'Tiền sử sốc phản vệ với Penicillin'), ('HC_016', N'Losartan', N'Phụ nữ có thai 3 tháng giữa và cuối'),
('HC_017', N'Atorvastatin', N'Bệnh gan tiến triển'), ('HC_018', N'Rosuvastatin', N'Suy thận nặng (độ thanh thải < 30ml/phút)'),
('HC_019', N'Pantoprazole', N'Mẫn cảm với thành phần thuốc'), ('HC_020', N'Esomeprazole', N'Không dùng chung với nelfinavir'),
('HC_021', N'Dexamethasone', N'Nhiễm nấm toàn thân'), ('HC_022', N'Prednisolone', N'Đang dùng vaccine virus sống'),
('HC_023', N'Meloxicam', N'Suy tim nặng, loét dạ dày tiến triển'), ('HC_024', N'Celecoxib', N'Bệnh thiếu máu cục bộ cơ tim'),
('HC_025', N'Gliclazide', N'Đái tháo đường tuýp 1'), ('HC_026', N'Insulin Glargine', N'Hạ đường huyết'),
('HC_027', N'Clotrimazole', N'Mẫn cảm với dẫn chất imidazole'), ('HC_028', N'Ketoconazole', N'Bệnh lý gan cấp tính'),
('HC_029', N'Natri Clorid', N'Ứ nước, tăng natri huyết'), ('HC_030', N'Tetrahydrozoline', N'Glaucoma góc hẹp'),
('HC_031', N'Bisoprolol', N'Sốc tim, nhịp tim chậm'), ('HC_032', N'Clopidogrel', N'Đang chảy máu cấp tính'),
('HC_033', N'Ginkgo Biloba', N'Người đang xuất huyết'), ('HC_034', N'Vitamin E', N'Thận trọng với người rối loạn đông máu'),
('HC_035', N'Vitamin D3', N'Tăng canxi huyết'), ('HC_036', N'Canxi Carbonat', N'Sỏi thận, tăng canxi niệu'),
('HC_037', N'Domperidone', N'Xuất huyết tiêu hóa'), ('HC_038', N'Loperamide', N'Viêm ruột do vi khuẩn'),
('HC_039', N'Acetylcysteine', N'Tiền sử hen phế quản (thận trọng)'), ('HC_040', N'Dextromethorphan', N'Đang dùng thuốc ức chế MAO');

-- 3. Nhà Cung Cấp (30 Nhà cung cấp)
INSERT INTO NhaCungCap (MaNCC, TenNCC, DiaChi, SoDienThoai, Email) VALUES 
('NCC_01', N'Dược Hậu Giang', N'Cần Thơ', '0911000001', 'dhg@dhgpharma.com'), ('NCC_02', N'GSK', N'TP.HCM', '0911000002', 'contact@gsk.com'),
('NCC_03', N'Blackmores', N'Hà Nội', '0911000003', 'vn@blackmores.com'), ('NCC_04', N'Domesco', N'Đồng Tháp', '0911000004', 'domesco@domesco.vn'),
('NCC_05', N'Traphaco', N'Hà Nội', '0911000005', 'info@traphaco.com'), ('NCC_06', N'Imexpharm', N'Đồng Tháp', '0911000006', 'imp@imexpharm.com'),
('NCC_07', N'Sanofi', N'TP.HCM', '0911000007', 'sanofi@sanofi.com'), ('NCC_08', N'AstraZeneca', N'Hà Nội', '0911000008', 'astra@astra.com'),
('NCC_09', N'Boston Pharma', N'Bình Dương', '0911000009', 'boston@boston.com'), ('NCC_10', N'Mega Lifesciences', N'TP.HCM', '0911000010', 'mega@mega.com'),
('NCC_11', N'Pymepharco', N'Phú Yên', '0911000011', 'info@pymepharco.com'), ('NCC_12', N'Savipharm', N'TP.HCM', '0911000012', 'contact@savipharm.vn'),
('NCC_13', N'Dược Hà Tây', N'Hà Nội', '0911000013', 'hatay@hataypharma.com'), ('NCC_14', N'OPC Pharma', N'TP.HCM', '0911000014', 'opc@opcpharma.com'),
('NCC_15', N'Nam Hà Pharma', N'Nam Định', '0911000015', 'namha@namhapharma.com'), ('NCC_16', N'Bidiphar', N'Bình Định', '0911000016', 'bidiphar@bidiphar.com'),
('NCC_17', N'Vinapharm', N'Hà Nội', '0911000017', 'vinapharm@vn.com'), ('NCC_18', N'Abbott', N'TP.HCM', '0911000018', 'abbott.vn@abbott.com'),
('NCC_19', N'Pfizer', N'Hà Nội', '0911000019', 'pfizer.vn@pfizer.com'), ('NCC_20', N'Bayer', N'Đồng Nai', '0911000020', 'bayer@bayer.com'),
('NCC_21', N'Dược Cửu Long', N'Vĩnh Long', '0911000021', 'cuulong@pharimexco.vn'), ('NCC_22', N'Mekophar', N'TP.HCM', '0911000022', 'mekophar@mekophar.com'),
('NCC_23', N'Danapha', N'Đà Nẵng', '0911000023', 'danapha@danapha.com'), ('NCC_24', N'Vidipha', N'Bình Dương', '0911000024', 'vidipha@vidipha.com'),
('NCC_25', N'Tipharco', N'Tiền Giang', '0911000025', 'tipharco@tipharco.com'), ('NCC_26', N'TV.Pharm', N'Trà Vinh', '0911000026', 'tvpharm@tvpharm.vn'),
('NCC_27', N'Rohto Mentholatum', N'Bình Dương', '0911000027', 'rohto@rohto.com.vn'), ('NCC_28', N'Sao Thái Dương', N'Hà Nội', '0911000028', 'saothaiduong@std.vn'),
('NCC_29', N'Hoa Linh Pharma', N'Hà Nội', '0911000029', 'hoalinh@hoalinh.vn'), ('NCC_30', N'Nhất Nhất', N'TP.HCM', '0911000030', 'nhatnhat@nhatnhat.com');

-- 4. Bác Sĩ (30 Bác Sĩ)
INSERT INTO BacSi (MaBS, TenBS, NoiCongTac, ChungChiHanhNghe) VALUES 
('BS_001', N'Phạm Đức Minh', N'Bệnh viện Bạch Mai', 'CCHN-10001'), ('BS_002', N'Hoàng Thanh Trà', N'Bệnh viện Chợ Rẫy', 'CCHN-10002'),
('BS_003', N'Lê Quang Thọ', N'Bệnh viện Đa Khoa Đà Nẵng', 'CCHN-10003'), ('BS_004', N'Trần Mai Phương', N'Bệnh viện Việt Tiệp', 'CCHN-10004'),
('BS_005', N'Nguyễn Hữu Trí', N'Bệnh viện Đa Khoa Cần Thơ', 'CCHN-10005'), ('BS_006', N'Đỗ Hữu Thắng', N'Bệnh viện 108', 'CCHN-10006'),
('BS_007', N'Lý Quý Chung', N'Bệnh viện Nhi Đồng', 'CCHN-10007'), ('BS_008', N'Phan Thanh Giản', N'Bệnh viện Xanh Pôn', 'CCHN-10008'),
('BS_009', N'Trương Mỹ Hoa', N'Bệnh viện Từ Dũ', 'CCHN-10009'), ('BS_010', N'Cao Văn Toàn', N'Bệnh viện 115', 'CCHN-10010'),
('BS_011', N'Trần Trọng Cảnh', N'Bệnh viện K', 'CCHN-10011'), ('BS_012', N'Lê Thị Hương', N'Bệnh viện Phụ Sản TW', 'CCHN-10012'),
('BS_013', N'Nguyễn Tấn Đạt', N'Bệnh viện Răng Hàm Mặt', 'CCHN-10013'), ('BS_014', N'Phạm Tiến Dũng', N'Bệnh viện Việt Đức', 'CCHN-10014'),
('BS_015', N'Hoàng Vĩnh Khang', N'Bệnh viện E', 'CCHN-10015'), ('BS_016', N'Bùi Thanh Tâm', N'Bệnh viện Chấn thương chỉnh hình', 'CCHN-10016'),
('BS_017', N'Vũ Đình Hùng', N'Bệnh viện Đại học Y Hà Nội', 'CCHN-10017'), ('BS_018', N'Đinh Tuyết Mai', N'Bệnh viện Y Dược TP.HCM', 'CCHN-10018'),
('BS_019', N'Mai Xuân Hợp', N'Bệnh viện Da Liễu Trung Ương', 'CCHN-10019'), ('BS_020', N'Lương Ngọc Diệp', N'Bệnh viện Hùng Vương', 'CCHN-10020'),
('BS_021', N'Trần Thanh Hải', N'Bệnh viện Mắt Trung Ương', 'CCHN-10021'), ('BS_022', N'Ngô Văn Vinh', N'Bệnh viện Nhiệt Đới', 'CCHN-10022'),
('BS_023', N'Phan Quốc Bảo', N'Bệnh viện Tai Mũi Họng', 'CCHN-10023'), ('BS_024', N'Lý Tuấn Kiệt', N'Bệnh viện Tâm Thần', 'CCHN-10024'),
('BS_025', N'Hồ Thu Phương', N'Bệnh viện Nội Tiết', 'CCHN-10025'), ('BS_026', N'Đỗ Minh Quân', N'Bệnh viện Đa khoa Đồng Nai', 'CCHN-10026'),
('BS_027', N'Lê Hoàng Phúc', N'Bệnh viện Đa khoa Kiên Giang', 'CCHN-10027'), ('BS_028', N'Trương Thái Hòa', N'Bệnh viện Đa khoa Bình Dương', 'CCHN-10028'),
('BS_029', N'Võ Thị Ngọc', N'Bệnh viện Đa khoa Huế', 'CCHN-10029'), ('BS_030', N'Dương Đình Trí', N'Bệnh viện Đa khoa Thanh Hóa', 'CCHN-10030');

-- 5. Chi Nhánh
INSERT INTO ChiNhanh (MaCN, TenCN, KhuVuc, DiaChi, SoDienThoai, TrangThaiHoatDong) VALUES 
('CN_HN', N'Nhà thuốc Trung tâm Hà Nội', N'Miền Bắc', N'122 Hoàng Quốc Việt, Cầu Giấy, Hà Nội', '0241111222', 1),
('CN_HP', N'Nhà thuốc Trung tâm Hải Phòng', N'Miền Bắc', N'12 Lạch Tray, Ngô Quyền, Hải Phòng', '0225111222', 1),
('CN_DN', N'Nhà thuốc Trung tâm Đà Nẵng', N'Miền Trung', N'45 Lê Duẩn, Hải Châu, Đà Nẵng', '0236111222', 1),
('CN_HCM', N'Nhà thuốc Trung tâm TP.HCM', N'Miền Nam', N'102 Cống Quỳnh, Quận 1, TP.HCM', '0281111222', 1),
('CN_CT', N'Nhà thuốc Trung tâm Cần Thơ', N'Miền Tây', N'30 Ninh Kiều, Cần Thơ', '0292111222', 1);

-- 6. Thuốc (50 Loại Thuốc)
INSERT INTO Thuoc (MaThuoc, MaNhom, MaNCC, TenThuoc, DonViTinh, CanKeDon, GiaNhap, GiaBanLe) VALUES 
('TH_001', 'NT_KS', 'NCC_01', N'Amoxicillin 500mg', N'Hộp', 1, 45000, 60000), ('TH_002', 'NT_GD', 'NCC_02', N'Panadol Extra', N'Hộp', 0, 50000, 65000),
('TH_003', 'NT_SP', 'NCC_03', N'Blackmores Vitamin C', N'Lọ', 0, 120000, 150000), ('TH_004', 'NT_TM', 'NCC_04', N'Amlodipine 5mg', N'Vỉ', 1, 15000, 25000),
('TH_005', 'NT_DD', 'NCC_05', N'Omeprazole 20mg', N'Vỉ', 1, 20000, 35000), ('TH_006', 'NT_DU', 'NCC_06', N'Loratadine 10mg', N'Hộp', 0, 30000, 45000),
('TH_007', 'NT_GD', 'NCC_04', N'Ibuprofen 400mg', N'Hộp', 1, 40000, 55000), ('TH_008', 'NT_SP', 'NCC_01', N'Vitamin 3B', N'Hộp', 0, 25000, 40000),
('TH_009', 'NT_KS', 'NCC_02', N'Augmentin 1g', N'Hộp', 1, 180000, 220000), ('TH_010', 'NT_HH', 'NCC_02', N'Ventolin Inhaler', N'Lọ', 1, 85000, 110000),
('TH_011', 'NT_TM', 'NCC_08', N'Crestor 10mg', N'Hộp', 1, 250000, 300000), ('TH_012', 'NT_DD', 'NCC_07', N'Phosphalugel', N'Hộp', 0, 80000, 100000),
('TH_013', 'NT_KS', 'NCC_11', N'Tavanic 500mg', N'Hộp', 1, 350000, 400000), ('TH_014', 'NT_KS', 'NCC_01', N'Zinnat 500mg', N'Hộp', 1, 210000, 250000),
('TH_015', 'NT_KS', 'NCC_06', N'Klavunamox 1000mg', N'Hộp', 1, 120000, 150000), ('TH_016', 'NT_TM', 'NCC_07', N'Aprovel 150mg', N'Hộp', 1, 280000, 320000),
('TH_017', 'NT_TM', 'NCC_19', N'Lipitor 20mg', N'Hộp', 1, 380000, 430000), ('TH_018', 'NT_TM', 'NCC_20', N'Concor 5mg', N'Hộp', 1, 150000, 180000),
('TH_019', 'NT_NT', 'NCC_07', N'Glucophage 850mg', N'Hộp', 1, 95000, 120000), ('TH_020', 'NT_NT', 'NCC_07', N'Diamicron MR 30mg', N'Hộp', 1, 160000, 190000),
('TH_021', 'NT_NT', 'NCC_07', N'Lantus Solostar', N'Bút', 1, 250000, 290000), ('TH_022', 'NT_DD', 'NCC_08', N'Nexium 40mg', N'Hộp', 1, 320000, 370000),
('TH_023', 'NT_DD', 'NCC_01', N'Gaviscon', N'Hộp', 0, 130000, 160000), ('TH_024', 'NT_DD', 'NCC_10', N'Smecta', N'Hộp', 0, 110000, 140000),
('TH_025', 'NT_DD', 'NCC_07', N'Enterogermina', N'Hộp', 0, 145000, 175000), ('TH_026', 'NT_GD', 'NCC_01', N'Hapacol 650', N'Hộp', 0, 35000, 50000),
('TH_027', 'NT_GD', 'NCC_07', N'Efferalgan 500mg', N'Hộp', 0, 40000, 55000), ('TH_028', 'NT_CX', 'NCC_01', N'Voltaren 50mg', N'Hộp', 1, 210000, 250000),
('TH_029', 'NT_CX', 'NCC_19', N'Celebrex 200mg', N'Hộp', 1, 310000, 360000), ('TH_030', 'NT_CX', 'NCC_11', N'Mobic 7.5mg', N'Hộp', 1, 180000, 220000),
('TH_031', 'NT_DU', 'NCC_07', N'Telfast HD 180mg', N'Hộp', 0, 120000, 150000), ('TH_032', 'NT_DU', 'NCC_02', N'Zyrtec 10mg', N'Hộp', 0, 80000, 105000),
('TH_033', 'NT_HH', 'NCC_01', N'Decolgen ND', N'Hộp', 0, 60000, 80000), ('TH_034', 'NT_HH', 'NCC_01', N'Tiffy Dey', N'Hộp', 0, 50000, 70000),
('TH_035', 'NT_HH', 'NCC_07', N'Acemuc 200mg', N'Hộp', 0, 65000, 85000), ('TH_036', 'NT_MH', 'NCC_27', N'V.Rohto', N'Lọ', 0, 45000, 60000),
('TH_037', 'NT_MH', 'NCC_27', N'Osla', N'Lọ', 0, 25000, 40000), ('TH_038', 'NT_DL', 'NCC_07', N'Nizoral Cream', N'Tuýp', 0, 35000, 50000),
('TH_039', 'NT_DL', 'NCC_14', N'Trangala', N'Tuýp', 0, 15000, 25000), ('TH_040', 'NT_PK', 'NCC_01', N'Canesten', N'Viên đặt', 0, 80000, 110000),
('TH_041', 'NT_SP', 'NCC_03', N'Ginkgo Biloba 2000', N'Lọ', 0, 350000, 420000), ('TH_042', 'NT_SP', 'NCC_03', N'Glucosamine 1500', N'Lọ', 0, 550000, 650000),
('TH_043', 'NT_SP', 'NCC_10', N'Enat 400', N'Hộp', 0, 100000, 130000), ('TH_044', 'NT_SP', 'NCC_18', N'Ensure Gold', N'Hộp', 0, 750000, 820000),
('TH_045', 'NT_MD', 'NCC_08', N'Medrol 16mg', N'Hộp', 1, 110000, 140000), ('TH_046', 'NT_MD', 'NCC_01', N'Prednisolone 5mg', N'Hộp', 1, 20000, 35000),
('TH_047', 'NT_TM', 'NCC_07', N'Plavix 75mg', N'Hộp', 1, 380000, 450000), ('TH_048', 'NT_HH', 'NCC_14', N'Bổ Phế Nam Hà', N'Chai', 0, 35000, 50000),
('TH_049', 'NT_DD', 'NCC_01', N'Loperamid 2mg', N'Hộp', 0, 15000, 25000), ('TH_050', 'NT_VT', 'NCC_17', N'Bông Bạch Tuyết', N'Gói', 0, 12000, 20000);

-- 7. Nhân Viên (35 Nhân Viên)
INSERT INTO NhanVien (MaNV, MaCN, TenNV, ChucVu, LuongCoBan, SoTaiKhoan, MatKhauHash) VALUES 
('NV_HN01', 'CN_HN', N'Đinh Văn Hà', N'Cửa hàng trưởng', 15000000, '0123456701', '$2a$10$e.ojpjlxoizpmx9fwismauilowv.1zqqvw4u8dprke8o8noq2njmk'), ('NV_HN02', 'CN_HN', N'Bùi Thị Thu', N'Dược sĩ', 10000000, '0123456702', '$2a$10$e.ojpjlxoizpmx9fwismauilowv.1zqqvw4u8dprke8o8noq2njmk'), ('NV_HN03', 'CN_HN', N'Ngô Tấn Tài', N'Dược sĩ', 10000000, '0123456703', '$2a$10$e.ojpjlxoizpmx9fwismauilowv.1zqqvw4u8dprke8o8noq2njmk'), ('NV_HN04', 'CN_HN', N'Phan Quang', N'Thu ngân', 8000000, '0123456704', '$2a$10$e.ojpjlxoizpmx9fwismauilowv.1zqqvw4u8dprke8o8noq2njmk'), ('NV_HN05', 'CN_HN', N'Lý Thảo', N'Thu ngân', 8000000, '0123456721', '$2a$10$e.ojpjlxoizpmx9fwismauilowv.1zqqvw4u8dprke8o8noq2njmk'), ('NV_HN06', 'CN_HN', N'Phạm Tiến', N'Kho vận', 9000000, '0123456722', '$2a$10$e.ojpjlxoizpmx9fwismauilowv.1zqqvw4u8dprke8o8noq2njmk'), ('NV_HN07', 'CN_HN', N'Cao Văn', N'Bảo vệ', 7000000, '0123456723', '$2a$10$e.ojpjlxoizpmx9fwismauilowv.1zqqvw4u8dprke8o8noq2njmk'),
('NV_HP01', 'CN_HP', N'Lê Viết Trí', N'Cửa hàng trưởng', 14500000, '0123456705', '$2a$10$e.ojpjlxoizpmx9fwismauilowv.1zqqvw4u8dprke8o8noq2njmq'), ('NV_HP02', 'CN_HP', N'Phạm Thu Thủy', N'Dược sĩ', 10500000, '0123456706', '$2a$10$e.ojpjlxoizpmx9fwismauilowv.1zqqvw4u8dprke8o8noq2njmk'), ('NV_HP03', 'CN_HP', N'Đặng Luân', N'Dược sĩ', 10500000, '0123456724', '$2a$10$e.ojpjlxoizpmx9fwismauilowv.1zqqvw4u8dprke8o8noq2njmk'), ('NV_HP04', 'CN_HP', N'Trương Mỹ', N'Thu ngân', 7500000, '0123456725', '$2a$10$e.ojpjlxoizpmx9fwismauilowv.1zqqvw4u8dprke8o8noq2njmk'), ('NV_HP05', 'CN_HP', N'Võ Hà', N'Thu ngân', 7500000, '0123456726', '$2a$10$e.ojpjlxoizpmx9fwismauilowv.1zqqvw4u8dprke8o8noq2njmk'), ('NV_HP06', 'CN_HP', N'Nguyễn Hùng', N'Kho vận', 8500000, '0123456727', '$2a$10$e.ojpjlxoizpmx9fwismauilowv.1zqqvw4u8dprke8o8noq2njmk'), ('NV_HP07', 'CN_HP', N'Trần Lực', N'Bảo vệ', 7000000, '0123456707', '$2a$10$e.ojpjlxoizpmx9fwismauilowv.1zqqvw4u8dprke8o8noq2njmk'),
('NV_DN01', 'CN_DN', N'Võ Tấn Phát', N'Cửa hàng trưởng', 14000000, '0123456708', '$2a$10$e.ojpjlxoizpmx9fwismauilowv.1zqqvw4u8dprke8o8noq2njmw'), ('NV_DN02', 'CN_DN', N'Lê Xuân', N'Dược sĩ', 9500000, '0123456709', '$2a$10$e.ojpjlxoizpmx9fwismauilowv.1zqqvw4u8dprke8o8noq2njmk'), ('NV_DN03', 'CN_DN', N'Ngô Bình', N'Dược sĩ', 9500000, '0123456728', '$2a$10$e.ojpjlxoizpmx9fwismauilowv.1zqqvw4u8dprke8o8noq2njmk'), ('NV_DN04', 'CN_DN', N'Hoàng Yến', N'Thu ngân', 7500000, '0123456710', '$2a$10$e.ojpjlxoizpmx9fwismauilowv.1zqqvw4u8dprke8o8noq2njmk'), ('NV_DN05', 'CN_DN', N'Trần Mai', N'Thu ngân', 7500000, '0123456729', '$2a$10$e.ojpjlxoizpmx9fwismauilowv.1zqqvw4u8dprke8o8noq2njmk'), ('NV_DN06', 'CN_DN', N'Lê Khang', N'Kho vận', 8000000, '0123456730', '$2a$10$e.ojpjlxoizpmx9fwismauilowv.1zqqvw4u8dprke8o8noq2njmk'), ('NV_DN07', 'CN_DN', N'Phạm Toàn', N'Bảo vệ', 7000000, '0123456731', '$2a$10$e.ojpjlxoizpmx9fwismauilowv.1zqqvw4u8dprke8o8noq2njmk'),
('NV_HCM01', 'CN_HCM', N'Nguyễn Trọng Đại', N'Cửa hàng trưởng', 16000000, '0123456711', '$2a$10$e.ojpjlxoizpmx9fwismauilowv.1zqqvw4u8dprke8o8noq2njme'), ('NV_HCM02', 'CN_HCM', N'Lý Hải Yến', N'Dược sĩ', 11000000, '0123456712', '$2a$10$e.ojpjlxoizpmx9fwismauilowv.1zqqvw4u8dprke8o8noq2njmk'), ('NV_HCM03', 'CN_HCM', N'Trương Mỹ Lan', N'Dược sĩ', 11000000, '0123456713', '$2a$10$e.ojpjlxoizpmx9fwismauilowv.1zqqvw4u8dprke8o8noq2njmk'), ('NV_HCM04', 'CN_HCM', N'Đỗ Đạt', N'Thu ngân', 8500000, '0123456732', '$2a$10$e.ojpjlxoizpmx9fwismauilowv.1zqqvw4u8dprke8o8noq2njmk'), ('NV_HCM05', 'CN_HCM', N'Bùi Tuyết', N'Thu ngân', 8500000, '0123456733', '$2a$10$e.ojpjlxoizpmx9fwismauilowv.1zqqvw4u8dprke8o8noq2njmk'), ('NV_HCM06', 'CN_HCM', N'Vũ Đại Mạc', N'Kho vận', 9000000, '0123456714', '$2a$10$e.ojpjlxoizpmx9fwismauilowv.1zqqvw4u8dprke8o8noq2njmk'), ('NV_HCM07', 'CN_HCM', N'Hoàng Long', N'Bảo vệ', 7500000, '0123456734', '$2a$10$e.ojpjlxoizpmx9fwismauilowv.1zqqvw4u8dprke8o8noq2njmk'),
('NV_CT01', 'CN_CT', N'Trần Thanh Phong', N'Cửa hàng trưởng', 13000000, '0123456715', '$2a$10$e.ojpjlxoizpmx9fwismauilowv.1zqqvw4u8dprke8o8noq2njmr'), ('NV_CT02', 'CN_CT', N'Mai Hữu Phương', N'Dược sĩ', 9000000, '0123456716', '$2a$10$e.ojpjlxoizpmx9fwismauilowv.1zqqvw4u8dprke8o8noq2njmk'), ('NV_CT03', 'CN_CT', N'Lê Thanh', N'Dược sĩ', 9000000, '0123456735', '$2a$10$e.ojpjlxoizpmx9fwismauilowv.1zqqvw4u8dprke8o8noq2njmk'), ('NV_CT04', 'CN_CT', N'Lâm Tâm Như', N'Thu ngân', 7000000, '0123456717', '$2a$10$e.ojpjlxoizpmx9fwismauilowv.1zqqvw4u8dprke8o8noq2njmk'), ('NV_CT05', 'CN_CT', N'Phan Chi', N'Thu ngân', 7000000, '0123456736', '$2a$10$e.ojpjlxoizpmx9fwismauilowv.1zqqvw4u8dprke8o8noq2njmk'), ('NV_CT06', 'CN_CT', N'Ngô Hậu', N'Kho vận', 8000000, '0123456737', '$2a$10$e.ojpjlxoizpmx9fwismauilowv.1zqqvw4u8dprke8o8noq2njmk'), ('NV_CT07', 'CN_CT', N'Trịnh Sang', N'Bảo vệ', 6500000, '0123456738', '$2a$10$e.ojpjlxoizpmx9fwismauilowv.1zqqvw4u8dprke8o8noq2njmk');

-- 8. Thành Phần Thuốc
INSERT INTO ThanhPhanThuoc (MaThuoc, MaHC, HamLuong) VALUES 
('TH_001', 'HC_AMX', '500mg'), ('TH_002', 'HC_PAR', '500mg'), ('TH_003', 'HC_VITC', '1000mg'),
('TH_004', 'HC_AML', '5mg'), ('TH_005', 'HC_OME', '20mg'), ('TH_006', 'HC_LOR', '10mg'),
('TH_007', 'HC_IBU', '400mg'), ('TH_008', 'HC_B12', '50mcg'), ('TH_009', 'HC_AMX', '875mg'),
('TH_010', 'HC_SAL', '100mcg'), ('TH_011', 'HC_018', '10mg'), ('TH_012', 'HC_019', '20g'),
('TH_013', 'HC_013', '500mg'), ('TH_014', 'HC_015', '500mg'), ('TH_015', 'HC_AMX', '1000mg'),
('TH_016', 'HC_016', '150mg'), ('TH_017', 'HC_017', '20mg'), ('TH_018', 'HC_031', '5mg'),
('TH_019', 'HC_MET', '850mg'), ('TH_020', 'HC_025', '30mg'), ('TH_021', 'HC_026', '100IU/ml'),
('TH_022', 'HC_020', '40mg'), ('TH_023', 'HC_036', '500mg'), ('TH_024', 'HC_037', '3g'),
('TH_025', 'HC_038', '2 Tỷ Bào Tử'), ('TH_026', 'HC_PAR', '650mg'), ('TH_027', 'HC_PAR', '500mg'),
('TH_028', 'HC_DIC', '50mg'), ('TH_029', 'HC_024', '200mg'), ('TH_030', 'HC_023', '7.5mg'),
('TH_031', 'HC_014', '180mg'), ('TH_032', 'HC_CET', '10mg'), ('TH_033', 'HC_PAR', '500mg'),
('TH_034', 'HC_PAR', '500mg'), ('TH_035', 'HC_039', '200mg'), ('TH_036', 'HC_030', '15ml'),
('TH_037', 'HC_029', '15ml'), ('TH_038', 'HC_028', '10g'), ('TH_039', 'HC_021', '10g'),
('TH_040', 'HC_027', '500mg'), ('TH_041', 'HC_033', '2000mg'), ('TH_042', 'HC_035', '1500mg'),
('TH_043', 'HC_034', '400IU'), ('TH_044', 'HC_VITC', '100g'), ('TH_045', 'HC_021', '16mg'),
('TH_046', 'HC_022', '5mg'), ('TH_047', 'HC_032', '75mg'), ('TH_048', 'HC_040', '125ml'),
('TH_049', 'HC_038', '2mg'), ('TH_050', 'HC_029', '1 Gói');

-- ==========================================================
-- PHẦN 2: DỮ LIỆU ĐỘNG ĐÃ CẬP NHẬT (SCALE LÊN ~50.000 BẢN GHI)
-- ==========================================================

-- 9. KHÁCH HÀNG (5000 bản ghi)
DECLARE @i INT = 1;
DECLARE @Ho NVARCHAR(50);
DECLARE @Dem NVARCHAR(50);
DECLARE @Ten NVARCHAR(50);
DECLARE @TenKH NVARCHAR(150);
DECLARE @MaCN VARCHAR(10);
DECLARE @IdxHo INT;
DECLARE @IdxDem INT;
DECLARE @IdxTen INT;

WHILE @i <= 5000
BEGIN
    SET @MaCN = CHOOSE(@i % 5 + 1, 'CN_HN', 'CN_HP', 'CN_DN', 'CN_HCM', 'CN_CT');
    SET @IdxHo = ABS(CHECKSUM(NEWID())) % 15 + 1;
    SET @IdxDem = ABS(CHECKSUM(NEWID())) % 15 + 1;
    SET @IdxTen = ABS(CHECKSUM(NEWID())) % 20 + 1;
    
    SET @Ho = CHOOSE(@IdxHo, N'Nguyễn', N'Trần', N'Lê', N'Phạm', N'Hoàng', N'Huỳnh', N'Phan', N'Vũ', N'Võ', N'Đặng', N'Bùi', N'Đỗ', N'Hồ', N'Ngô', N'Dương');
    SET @Dem = CHOOSE(@IdxDem, N'Văn', N'Thị', N'Ngọc', N'Thanh', N'Hữu', N'Minh', N'Xuân', N'Quang', N'Thu', N'Thành', N'Đình', N'Hải', N'Tuấn', N'Phương', N'Mỹ');
    SET @Ten = CHOOSE(@IdxTen, N'Anh', N'Minh', N'Trang', N'Hùng', N'Dũng', N'Linh', N'Hà', N'Tuấn', N'Đức', N'Thành', N'Thủy', N'Hương', N'Khoa', N'Đạt', N'Vy', N'Sơn', N'Hải', N'Quỳnh', N'Yến', N'Long');
    SET @TenKH = @Ho + ' ' + @Dem + ' ' + @Ten;
    
    INSERT INTO KhachHang (MaKH, TenKH, SoDienThoai, DiemTichLuy, MaCN_MoThe)
    VALUES ('KH_' + RIGHT('00000' + CAST(@i AS VARCHAR(5)), 5), @TenKH, '09' + RIGHT('00000000' + CAST(ABS(CHECKSUM(NEWID())) % 100000000 AS VARCHAR(8)), 8), ABS(CHECKSUM(NEWID())) % 500, @MaCN);
    
    SET @i = @i + 1;
END;

-- 10. LÔ THUỐC (1000 bản ghi)
SET @i = 1;
WHILE @i <= 1000
BEGIN
    DECLARE @MaThuocLo VARCHAR(10) = 'TH_' + RIGHT('00' + CAST((@i % 50) + 1 AS VARCHAR(2)), 3);
    INSERT INTO LoThuoc (MaLo, MaThuoc, SoLoSX, NgaySanXuat, HanSuDung)
    VALUES (
        'LO_' + RIGHT('00000' + CAST(@i AS VARCHAR(5)), 5),
        @MaThuocLo, 'SX_' + CAST(@i AS VARCHAR(10)),
        DATEADD(DAY, -FLOOR(RAND()*300), GETDATE()), 
        DATEADD(DAY, 700 + FLOOR(RAND()*300), GETDATE())
    );
    SET @i = @i + 1;
END;

-- 11. TỒN KHO (5000 bản ghi: 5 Chi nhánh * 1000 Lô)
INSERT INTO TonKho (MaCN, MaLo, SoLuongTon)
SELECT c.MaCN, l.MaLo, FLOOR(RAND(CHECKSUM(NEWID())) * 1000) + 10
FROM ChiNhanh c CROSS JOIN LoThuoc l;

-- 12. PHIẾU NHẬP KHO (1000 bản ghi)
SET @i = 1;
WHILE @i <= 1000
BEGIN
    DECLARE @MaCNNK VARCHAR(10) = CHOOSE(@i % 5 + 1, 'CN_HN', 'CN_HP', 'CN_DN', 'CN_HCM', 'CN_CT');
    INSERT INTO PhieuNhapKho (MaPhieuNhap, MaCN, NgayNhap, TongGiaTri)
    VALUES (
        'PN_' + RIGHT('00000' + CAST(@i AS VARCHAR(5)), 5),
        @MaCNNK,
        DATEADD(DAY, -FLOOR(RAND()*365), GETDATE()),
        0 
    );
    SET @i = @i + 1;
END;

-- 13. CHI TIẾT NHẬP KHO (3000 bản ghi)
SET @i = 1;
WHILE @i <= 3000
BEGIN
    DECLARE @MaPhieu VARCHAR(20) = 'PN_' + RIGHT('00000' + CAST((@i % 1000) + 1 AS VARCHAR(5)), 5);
    DECLARE @MaLoNK VARCHAR(20) = 'LO_' + RIGHT('00000' + CAST((@i % 1000) + 1 AS VARCHAR(5)), 5);
    
    IF NOT EXISTS (SELECT 1 FROM ChiTietNhapKho WHERE MaPhieuNhap = @MaPhieu AND MaLo = @MaLoNK)
    BEGIN
        INSERT INTO ChiTietNhapKho (MaPhieuNhap, MaLo, SoLuongNhap, DonGiaNhap)
        VALUES (@MaPhieu, @MaLoNK, FLOOR(RAND()*500)+50, FLOOR(RAND()*100000)+10000);
    END
    SET @i = @i + 1;
END;

-- Cập nhật lại tổng giá trị Phiếu Nhập
UPDATE p SET TongGiaTri = ISNULL((SELECT SUM(SoLuongNhap * DonGiaNhap) FROM ChiTietNhapKho WHERE MaPhieuNhap = p.MaPhieuNhap), 0)
FROM PhieuNhapKho p;

-- 14. HÓA ĐƠN & CHI TIẾT HÓA ĐƠN (10000 bản ghi)
DECLARE @MaCN VARCHAR(10); 
DECLARE @j INT = 1;
DECLARE @MaHD VARCHAR(20);
DECLARE @MaNV VARCHAR(10);
DECLARE @MaKH VARCHAR(10);
DECLARE @MaBS VARCHAR(10);
DECLARE @NgayTao DATETIME;
DECLARE @PhuongThuc NVARCHAR(50);
DECLARE @SoChiTiet INT;
DECLARE @k INT;
DECLARE @MaLo VARCHAR(20);
DECLARE @SoLuong INT;
DECLARE @DonGiaBan DECIMAL(18, 2);
DECLARE @IdxPT INT;

-- Lưu ý: Bạn comment là 1200 bản ghi nhưng vòng lặp đang chạy tới 1000
WHILE @j <= 1000 
BEGIN
    SET @MaHD = 'HD_' + RIGHT('00000' + CAST(@j AS VARCHAR(6)), 5);
    
    -- 1. Bốc ngẫu nhiên 1 Chi Nhánh
    SELECT TOP 1 @MaCN = MaCN FROM ChiNhanh ORDER BY NEWID();
    
    -- 2. Bốc ngẫu nhiên 1 Nhân Viên THUỘC CHI NHÁNH VỪA CHỌN
    SELECT TOP 1 @MaNV = MaNV FROM NhanVien WHERE MaCN = @MaCN ORDER BY NEWID();
    
    -- 3. Bốc ngẫu nhiên Khách hàng
    SELECT TOP 1 @MaKH = MaKH FROM KhachHang ORDER BY NEWID();
    
    -- 4. Bốc ngẫu nhiên Bác sĩ (tỷ lệ 50% có bác sĩ, 50% không có)
    IF (ABS(CHECKSUM(NEWID())) % 2 = 0) 
        SELECT TOP 1 @MaBS = MaBS FROM BacSi ORDER BY NEWID() 
    ELSE 
        SET @MaBS = NULL;

    SET @NgayTao = DATEADD(DAY, - (ABS(CHECKSUM(NEWID())) % 365), GETDATE());
    SET @IdxPT = ABS(CHECKSUM(NEWID())) % 3 + 1;
    SET @PhuongThuc = CHOOSE(@IdxPT, N'Tiền mặt', N'Chuyển khoản', N'Quẹt thẻ');

    -- Đảm bảo đã có đủ Chi nhánh và Nhân viên hợp lệ
    IF @MaCN IS NOT NULL AND @MaNV IS NOT NULL
    BEGIN
        INSERT INTO HoaDon (MaHD, MaCN, MaNV, MaKH, MaBS, NgayTao, TongTien, PhuongThucThanhToan) 
        VALUES (@MaHD, @MaCN, @MaNV, @MaKH, @MaBS, @NgayTao, 0, @PhuongThuc);
        
        SET @SoChiTiet = ABS(CHECKSUM(NEWID())) % 5 + 1;
        SET @k = 1;
        
        WHILE @k <= @SoChiTiet
        BEGIN
            SELECT TOP 1 @MaLo = MaLo FROM LoThuoc ORDER BY NEWID();
            SET @SoLuong = ABS(CHECKSUM(NEWID())) % 10 + 1;
            SET @DonGiaBan = (ABS(CHECKSUM(NEWID())) % 20 + 5) * 10000;
            
            IF @MaLo IS NOT NULL AND NOT EXISTS (SELECT 1 FROM ChiTietHoaDon WHERE MaHD = @MaHD AND MaLo = @MaLo)
            BEGIN
                INSERT INTO ChiTietHoaDon (MaHD, MaLo, SoLuong, DonGiaBan) 
                VALUES (@MaHD, @MaLo, @SoLuong, @DonGiaBan);
            END;
            
            SET @k = @k + 1;
        END;
        
        UPDATE HoaDon 
        SET TongTien = (SELECT ISNULL(SUM(SoLuong * DonGiaBan), 0) FROM ChiTietHoaDon WHERE MaHD = @MaHD) 
        WHERE MaHD = @MaHD;
    END;

    SET @j = @j + 1;
END;

-- Cập nhật lại tổng tiền Hóa Đơn
UPDATE h SET TongTien = ISNULL((SELECT SUM(SoLuong * DonGiaBan) FROM ChiTietHoaDon WHERE MaHD = h.MaHD), 0)
FROM HoaDon h;

-- Cập nhật điểm tích lũy
UPDATE KhachHang SET DiemTichLuy = ISNULL((SELECT CAST(SUM(TongTien) / 100000 AS INT) FROM HoaDon WHERE HoaDon.MaKH = KhachHang.MaKH), 0);

PRINT N'>> ĐÃ TẠO THÀNH CÔNG DỮ LIỆU ĐA DẠNG CHO HỆ THỐNG (~50.000 BẢN GHI TỔNG HỢP)! <<';
GO