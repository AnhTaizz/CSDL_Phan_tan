USE QL_ChuoiNhaThuoc;
GO

-- ==========================================================
-- 1. INSERT CÁC BẢNG DANH MỤC ĐỘC LẬP
-- ==========================================================

-- Bảng Khu Vực (30 bản ghi)
INSERT INTO KhuVuc (MaKV, TenKV, MoTa) VALUES 
('KV01', N'Hà Nội', N'Khu vực thủ đô'), ('KV02', N'Hồ Chí Minh', N'Khu vực trung tâm phía Nam'),
('KV03', N'Đà Nẵng', N'Khu vực miền Trung'), ('KV04', N'Hải Phòng', N'Thành phố cảng'),
('KV05', N'Cần Thơ', N'Đồng bằng sông Cửu Long'), ('KV06', N'Đồng Nai', N'Khu vực Đông Nam Bộ'),
('KV07', N'Bình Dương', N'Khu vực công nghiệp'), ('KV08', N'Quảng Ninh', N'Khu vực ven biển miền Bắc'),
('KV09', N'Nghệ An', N'Khu vực Bắc Trung Bộ'), ('KV10', N'Thanh Hóa', N'Khu vực Bắc Trung Bộ'),
('KV11', N'Bắc Ninh', NULL), ('KV12', N'Hải Dương', NULL), ('KV13', N'Hưng Yên', NULL),
('KV14', N'Thái Bình', NULL), ('KV15', N'Nam Định', NULL), ('KV16', N'Ninh Bình', NULL),
('KV17', N'Hà Nam', NULL), ('KV18', N'Vĩnh Phúc', NULL), ('KV19', N'Phú Thọ', NULL),
('KV20', N'Thái Nguyên', NULL), ('KV21', N'Bắc Giang', NULL), ('KV22', N'Quảng Nam', NULL),
('KV23', N'Quảng Ngãi', NULL), ('KV24', N'Bình Định', NULL), ('KV25', N'Phú Yên', NULL),
('KV26', N'Khánh Hòa', NULL), ('KV27', N'Bà Rịa - Vũng Tàu', NULL), ('KV28', N'Long An', NULL),
('KV29', N'Tiền Giang', NULL), ('KV30', N'Bến Tre', NULL);
GO

-- Bảng Nhóm Thuốc (30 bản ghi)
INSERT INTO NhomThuoc (MaNhom, TenNhom) VALUES 
('NT01', N'Kháng sinh'), ('NT02', N'Giảm đau, hạ sốt'), ('NT03', N'Vitamin & Khoáng chất'),
('NT04', N'Thuốc ho, cảm cúm'), ('NT05', N'Tiêu hóa, dạ dày'), ('NT06', N'Tim mạch'),
('NT07', N'Tiểu đường'), ('NT08', N'Dị ứng'), ('NT09', N'Xương khớp'), ('NT10', N'Mắt, tai, mũi'),
('NT11', N'Thực phẩm chức năng'), ('NT12', N'Mỹ phẩm'), ('NT13', N'Vật tư y tế'),
('NT14', N'Da liễu'), ('NT15', N'Hô hấp'), ('NT16', N'Huyết áp'), ('NT17', N'Kháng viêm'),
('NT18', N'Chống đông máu'), ('NT19', N'Tránh thai'), ('NT20', N'Hệ thần kinh'),
('NT21', N'Tiết niệu'), ('NT22', N'Gan mật'), ('NT23', N'Dinh dưỡng y học'),
('NT24', N'Mẹ và bé'), ('NT25', N'Sát khuẩn'), ('NT26', N'Thuốc mỡ'),
('NT27', N'Thuốc đặt'), ('NT28', N'Đông y'), ('NT29', N'Chống nấm'), ('NT30', N'Khác');
GO

-- Bảng Hoạt Chất (30 bản ghi)
INSERT INTO HoatChat (MaHC, TenHC, ChongChiDinh) VALUES 
('HC01', N'Paracetamol', N'Suy gan nặng'), ('HC02', N'Ibuprofen', N'Loét dạ dày tá tràng'),
('HC03', N'Amoxicillin', N'Mẫn cảm với Penicillin'), ('HC04', N'Azithromycin', N'Tiền sử dị ứng Macrolid'),
('HC05', N'Vitamin C', N'Sỏi thận oxalate'), ('HC06', N'Omeprazole', N'Trẻ em dưới 1 tuổi'),
('HC07', N'Metformin', N'Suy thận nặng'), ('HC08', N'Loratadine', N'Phụ nữ cho con bú'),
('HC09', N'Diclofenac', N'Suy tim ứ huyết'), ('HC10', N'Aspirin', N'Bệnh ưa chảy máu'),
('HC11', N'Cefuroxime', NULL), ('HC12', N'Levofloxacin', NULL), ('HC13', N'Vitamin B1', NULL),
('HC14', N'Vitamin B6', NULL), ('HC15', N'Vitamin B12', NULL), ('HC16', N'Canxi Carbonat', NULL),
('HC17', N'Sắt Fumarat', NULL), ('HC18', N'Kẽm Gluconat', NULL), ('HC19', N'Loperamide', NULL),
('HC20', N'Domperidone', NULL), ('HC21', N'Simvastatin', NULL), ('HC22', N'Amlodipine', NULL),
('HC23', N'Losartan', NULL), ('HC24', N'Glimepiride', NULL), ('HC25', N'Cetirizine', NULL),
('HC26', N'Salbutamol', NULL), ('HC27', N'Meloxicam', NULL), ('HC28', N'Prednisolone', NULL),
('HC29', N'Erythromycin', NULL), ('HC30', N'Clotrimazole', NULL);
GO

-- Bảng Khách Hàng (30 bản ghi)
INSERT INTO KhachHang (MaKH, TenKH, SoDienThoai, DiemTichLuy) VALUES 
('KH01', N'Nguyễn Văn An', '0901234561', 100), ('KH02', N'Trần Thị Bình', '0901234562', 50),
('KH03', N'Lê Hoàng Châu', '0901234563', 0), ('KH04', N'Phạm Quang Duy', '0901234564', 200),
('KH05', N'Hoàng Thị Én', '0901234565', 150), ('KH06', N'Vũ Văn Phong', '0901234566', 10),
('KH07', N'Đặng Thị Giang', '0901234567', 0), ('KH08', N'Bùi Văn Hải', '0901234568', 300),
('KH09', N'Đỗ Thị Inh', '0901234569', 20), ('KH10', N'Hồ Văn Khoa', '0901234570', 40),
('KH11', N'Ngô Thị Lan', '0901234571', 0), ('KH12', N'Dương Văn Minh', '0901234572', 500),
('KH13', N'Lý Thị Nụ', '0901234573', 0), ('KH14', N'Vương Văn Oai', '0901234574', 120),
('KH15', N'Trịnh Thị Phương', '0901234575', 80), ('KH16', N'Mai Văn Quốc', '0901234576', 0),
('KH17', N'Đinh Thị Tâm', '0901234577', 90), ('KH18', N'Tô Văn Uý', '0901234578', 110),
('KH19', N'Khúc Thị Vy', '0901234579', 0), ('KH20', N'Phan Văn Xuân', '0901234580', 250),
('KH21', N'Chu Thị Yến', '0901234581', 100), ('KH22', N'Đào Văn Anh', '0901234582', 0),
('KH23', N'Lâm Thị Bích', '0901234583', 30), ('KH24', N'Trương Văn Cường', '0901234584', 70),
('KH25', N'Tạ Thị Dung', '0901234585', 0), ('KH26', N'Phí Văn Em', '0901234586', 400),
('KH27', N'Cao Thị Gấm', '0901234587', 0), ('KH28', N'Lương Văn Hùng', '0901234588', 10),
('KH29', N'Hà Thị Kiều', '0901234589', 5), ('KH30', N'Bạch Văn Long', '0901234590', 60);
GO

-- Bảng Bác Sĩ (30 bản ghi)
INSERT INTO BacSi (MaBS, TenBS, NoiCongTac, ChungChiHanhNghe) VALUES 
('BS01', N'BS. Nguyễn Nhật Anh', N'Bệnh viện Bạch Mai', 'CCHN1001'), ('BS02', N'BS. Trần Văn Bảo', N'Bệnh viện Chợ Rẫy', 'CCHN1002'),
('BS03', N'BS. Lê Thị Cẩm', N'Bệnh viện Đại học Y', 'CCHN1003'), ('BS04', N'BS. Phạm Văn Đạt', N'Bệnh viện 108', 'CCHN1004'),
('BS05', N'BS. Hoàng Thị Giang', N'Bệnh viện Nhi Đồng', 'CCHN1005'), ('BS06', N'BS. Vũ Văn Hùng', N'Phòng khám An Khang', 'CCHN1006'),
('BS07', N'BS. Đặng Thị Hương', N'Bệnh viện Từ Dũ', 'CCHN1007'), ('BS08', N'BS. Bùi Văn Kiên', N'Bệnh viện Xanh Pôn', 'CCHN1008'),
('BS09', N'BS. Đỗ Thị Lan', N'Bệnh viện Phụ Sản HN', 'CCHN1009'), ('BS10', N'BS. Hồ Văn Mạnh', N'Bệnh viện E', 'CCHN1010'),
('BS11', N'BS. Ngô Thị Nga', NULL, 'CCHN1011'), ('BS12', N'BS. Dương Văn Phong', NULL, 'CCHN1012'),
('BS13', N'BS. Lý Thị Quỳnh', NULL, 'CCHN1013'), ('BS14', N'BS. Vương Văn Rạng', NULL, 'CCHN1014'),
('BS15', N'BS. Trịnh Thị Sen', NULL, 'CCHN1015'), ('BS16', N'BS. Mai Văn Tú', NULL, 'CCHN1016'),
('BS17', N'BS. Đinh Thị Uyên', NULL, 'CCHN1017'), ('BS18', N'BS. Tô Văn Việt', NULL, 'CCHN1018'),
('BS19', N'BS. Khúc Thị Xuyên', NULL, 'CCHN1019'), ('BS20', N'BS. Phan Văn Y', NULL, 'CCHN1020'),
('BS21', N'BS. Chu Thị Anh', NULL, 'CCHN1021'), ('BS22', N'BS. Đào Văn Bình', NULL, 'CCHN1022'),
('BS23', N'BS. Lâm Thị Cúc', NULL, 'CCHN1023'), ('BS24', N'BS. Trương Văn Doanh', NULL, 'CCHN1024'),
('BS25', N'BS. Tạ Thị Én', NULL, 'CCHN1025'), ('BS26', N'BS. Phí Văn Giang', NULL, 'CCHN1026'),
('BS27', N'BS. Cao Thị Hạnh', NULL, 'CCHN1027'), ('BS28', N'BS. Lương Văn Khang', NULL, 'CCHN1028'),
('BS29', N'BS. Hà Thị Lệ', NULL, 'CCHN1029'), ('BS30', N'BS. Bạch Văn Minh', NULL, 'CCHN1030');
GO

-- ==========================================================
-- 2. INSERT CÁC BẢNG PHỤ THUỘC LEVEL 1
-- ==========================================================

-- Bảng Chi Nhánh (30 bản ghi - Mapped 1-to-1 tới KV01-KV30 để đơn giản hóa)
INSERT INTO ChiNhanh (MaCN, MaKV, TenCN, DiaChi, SoDienThoai, TrangThaiHoatDong) VALUES 
('CN01', 'KV01', N'Nhà thuốc Hà Nội 1', N'123 Cầu Giấy', '0241234561', 1), ('CN02', 'KV02', N'Nhà thuốc HCM 1', N'456 Quận 1', '0281234562', 1),
('CN03', 'KV03', N'Nhà thuốc Đà Nẵng 1', N'789 Hải Châu', '0231234563', 1), ('CN04', 'KV04', N'Nhà thuốc Hải Phòng 1', N'101 Ngô Quyền', '0221234564', 1),
('CN05', 'KV05', N'Nhà thuốc Cần Thơ 1', N'102 Ninh Kiều', '0291234565', 1), ('CN06', 'KV06', N'Nhà thuốc Đồng Nai 1', N'Biên Hòa', '0251234566', 1),
('CN07', 'KV07', N'Nhà thuốc Bình Dương 1', N'Thủ Dầu Một', '0271234567', 1), ('CN08', 'KV08', N'Nhà thuốc Quảng Ninh 1', N'Hạ Long', '0201234568', 1),
('CN09', 'KV09', N'Nhà thuốc Nghệ An 1', N'TP Vinh', '0238123456', 1), ('CN10', 'KV10', N'Nhà thuốc Thanh Hóa 1', N'TP Thanh Hóa', '0237123456', 0),
('CN11', 'KV11', N'Nhà thuốc CN11', N'Địa chỉ 11', '0240000011', 1), ('CN12', 'KV12', N'Nhà thuốc CN12', N'Địa chỉ 12', '0240000012', 1),
('CN13', 'KV13', N'Nhà thuốc CN13', N'Địa chỉ 13', '0240000013', 1), ('CN14', 'KV14', N'Nhà thuốc CN14', N'Địa chỉ 14', '0240000014', 1),
('CN15', 'KV15', N'Nhà thuốc CN15', N'Địa chỉ 15', '0240000015', 1), ('CN16', 'KV16', N'Nhà thuốc CN16', N'Địa chỉ 16', '0240000016', 1),
('CN17', 'KV17', N'Nhà thuốc CN17', N'Địa chỉ 17', '0240000017', 1), ('CN18', 'KV18', N'Nhà thuốc CN18', N'Địa chỉ 18', '0240000018', 0),
('CN19', 'KV19', N'Nhà thuốc CN19', N'Địa chỉ 19', '0240000019', 1), ('CN20', 'KV20', N'Nhà thuốc CN20', N'Địa chỉ 20', '0240000020', 1),
('CN21', 'KV21', N'Nhà thuốc CN21', N'Địa chỉ 21', '0240000021', 1), ('CN22', 'KV22', N'Nhà thuốc CN22', N'Địa chỉ 22', '0240000022', 1),
('CN23', 'KV23', N'Nhà thuốc CN23', N'Địa chỉ 23', '0240000023', 1), ('CN24', 'KV24', N'Nhà thuốc CN24', N'Địa chỉ 24', '0240000024', 1),
('CN25', 'KV25', N'Nhà thuốc CN25', N'Địa chỉ 25', '0240000025', 1), ('CN26', 'KV26', N'Nhà thuốc CN26', N'Địa chỉ 26', '0240000026', 1),
('CN27', 'KV27', N'Nhà thuốc CN27', N'Địa chỉ 27', '0240000027', 1), ('CN28', 'KV28', N'Nhà thuốc CN28', N'Địa chỉ 28', '0240000028', 1),
('CN29', 'KV29', N'Nhà thuốc CN29', N'Địa chỉ 29', '0240000029', 1), ('CN30', 'KV30', N'Nhà thuốc CN30', N'Địa chỉ 30', '0240000030', 1);
GO

-- Bảng Thuốc (30 bản ghi - Mapped 1-to-1 tới NT01-NT30)
INSERT INTO Thuoc (MaThuoc, MaNhom, TenThuoc, DonViTinh, CanKeDon, GiaNhap, GiaBanLe, NhaCungCap) VALUES 
('TH01', 'NT01', N'Amoxicillin 500mg', N'Vỉ', 1, 10000, 15000, N'Dược Hậu Giang'),
('TH02', 'NT02', N'Panadol Extra', N'Hộp', 0, 50000, 65000, N'GSK'),
('TH03', 'NT03', N'Vitamin C 1000mg', N'Lọ', 0, 120000, 150000, N'Blackmores'),
('TH04', 'NT04', N'Siro Ho Bổ Phế', N'Chai', 0, 30000, 45000, N'Nam Dược'),
('TH05', 'NT05', N'Omeprazole 20mg', N'Hộp', 1, 20000, 30000, N'Traphaco'),
('TH06', 'NT06', N'Amlodipine 5mg', N'Vỉ', 1, 15000, 22000, N'Stada'),
('TH07', 'NT07', N'Metformin 850mg', N'Hộp', 1, 40000, 60000, N'Sanofi'),
('TH08', 'NT08', N'Loratadine 10mg', N'Vỉ', 0, 8000, 12000, N'Imexpharm'),
('TH09', 'NT09', N'Diclofenac 50mg', N'Vỉ', 1, 10000, 15000, N'Domesco'),
('TH10', 'NT10', N'Thuốc Nhỏ Mắt V.Rohto', N'Lọ', 0, 45000, 55000, N'Rohto'),
('TH11', 'NT11', N'Viên Uống Dầu Cá', N'Lọ', 0, 200000, 250000, N'Healthy Care'),
('TH12', 'NT12', N'Kem Trị Mụn Decumar', N'Tuýp', 0, 60000, 75000, N'CVI'),
('TH13', 'NT13', N'Khẩu Trang Y Tế', N'Hộp', 0, 20000, 35000, N'Tanaphar'),
('TH14', 'NT14', N'Kem Bôi Da Yoosun', N'Tuýp', 0, 25000, 35000, N'Đại Bắc'),
('TH15', 'NT15', N'Bình Xịt Ventolin', N'Chai', 1, 120000, 150000, N'GSK'),
('TH16', 'NT16', N'Losartan 50mg', N'Hộp', 1, 35000, 50000, N'Stada'),
('TH17', 'NT17', N'Meloxicam 7.5mg', N'Vỉ', 1, 12000, 18000, N'Hasan'),
('TH18', 'NT18', N'Aspirin 81mg', N'Hộp', 1, 25000, 35000, N'Bayer'),
('TH19', 'NT19', N'Viên Tránh Thai Marvelon', N'Vỉ', 0, 55000, 70000, N'Organon'),
('TH20', 'NT20', N'Ginkgo Biloba 120mg', N'Hộp', 0, 150000, 200000, N'Nature Way'),
('TH21', 'NT21', N'Thuốc Lợi Tiểu Furosemide', N'Vỉ', 1, 5000, 10000, N'Vidipha'),
('TH22', 'NT22', N'Bổ Gan Boganic', N'Hộp', 0, 80000, 105000, N'Traphaco'),
('TH23', 'NT23', N'Sữa Ensure Gold', N'Hộp', 0, 750000, 820000, N'Abbott'),
('TH24', 'NT24', N'Vitamin Tổng Hợp Cho Bầu', N'Lọ', 0, 300000, 350000, N'Elevit'),
('TH25', 'NT25', N'Cồn Y Tế 70 Độ', N'Chai', 0, 8000, 12000, N'Vĩnh Phúc'),
('TH26', 'NT26', N'Thuốc Mỡ Tetracycline', N'Tuýp', 0, 5000, 8000, N'Traphaco'),
('TH27', 'NT27', N'Thuốc Đặt Phụ Khoa Neo', N'Hộp', 1, 110000, 140000, N'Mebiphar'),
('TH28', 'NT28', N'Hoạt Huyết Dưỡng Não', N'Hộp', 0, 90000, 110000, N'Traphaco'),
('TH29', 'NT29', N'Kem Bôi Nấm Nizoral', N'Tuýp', 0, 40000, 50000, N'Janssen'),
('TH30', 'NT30', N'Nước Muối Sinh Lý', N'Chai', 0, 3000, 5000, N'Vĩnh Phúc');
GO

-- Bảng Nhân Viên (30 bản ghi - Mapped 1-to-1 tới CN01-CN30)
INSERT INTO NhanVien (MaNV, MaCN, TenNV, ChucVu, LuongCoBan, SoTaiKhoan, MatKhauHash) VALUES 
('NV01', 'CN01', N'Lê Thị Hương', N'Cửa hàng trưởng', 15000000, '01234567801', 'hash_pass_1'),
('NV02', 'CN02', N'Trần Văn Long', N'Dược sĩ', 10000000, '01234567802', 'hash_pass_2'),
('NV03', 'CN03', N'Nguyễn Thị Thu', N'Dược sĩ', 10000000, '01234567803', 'hash_pass_3'),
('NV04', 'CN04', N'Phạm Văn Tâm', N'Cửa hàng trưởng', 15000000, '01234567804', 'hash_pass_4'),
('NV05', 'CN05', N'Hoàng Thị Yến', N'Dược sĩ', 9000000, '01234567805', 'hash_pass_5'),
('NV06', 'CN06', N'Vũ Văn Quyết', N'Dược sĩ', 9500000, '01234567806', 'hash_pass_6'),
('NV07', 'CN07', N'Đặng Thị Mai', N'Cửa hàng trưởng', 14000000, '01234567807', 'hash_pass_7'),
('NV08', 'CN08', N'Bùi Văn Tùng', N'Dược sĩ', 10000000, '01234567808', 'hash_pass_8'),
('NV09', 'CN09', N'Đỗ Thị Hoa', N'Dược sĩ', 9000000, '01234567809', 'hash_pass_9'),
('NV10', 'CN10', N'Hồ Văn Bách', N'Dược sĩ', 9500000, '01234567810', 'hash_pass_10'),
('NV11', 'CN11', N'Ngô Thị Trà', N'Dược sĩ', 9000000, '01234567811', 'hash_pass_11'),
('NV12', 'CN12', N'Dương Văn Tiến', N'Cửa hàng trưởng', 15000000, '01234567812', 'hash_pass_12'),
('NV13', 'CN13', N'Lý Thị Ngọc', N'Dược sĩ', 9500000, '01234567813', 'hash_pass_13'),
('NV14', 'CN14', N'Vương Văn Thành', N'Dược sĩ', 9500000, '01234567814', 'hash_pass_14'),
('NV15', 'CN15', N'Trịnh Thị Lệ', N'Dược sĩ', 10000000, '01234567815', 'hash_pass_15'),
('NV16', 'CN16', N'Mai Văn Đại', N'Cửa hàng trưởng', 16000000, '01234567816', 'hash_pass_16'),
('NV17', 'CN17', N'Đinh Thị Châu', N'Dược sĩ', 9000000, '01234567817', 'hash_pass_17'),
('NV18', 'CN18', N'Tô Văn Cường', N'Dược sĩ', 9000000, '01234567818', 'hash_pass_18'),
('NV19', 'CN19', N'Khúc Thị Luyến', N'Dược sĩ', 9500000, '01234567819', 'hash_pass_19'),
('NV20', 'CN20', N'Phan Văn Phát', N'Cửa hàng trưởng', 15000000, '01234567820', 'hash_pass_20'),
('NV21', 'CN21', N'Chu Thị Hà', N'Dược sĩ', 9500000, '01234567821', 'hash_pass_21'),
('NV22', 'CN22', N'Đào Văn Hiếu', N'Dược sĩ', 10000000, '01234567822', 'hash_pass_22'),
('NV23', 'CN23', N'Lâm Thị Tuyết', N'Dược sĩ', 9000000, '01234567823', 'hash_pass_23'),
('NV24', 'CN24', N'Trương Văn Nam', N'Cửa hàng trưởng', 14000000, '01234567824', 'hash_pass_24'),
('NV25', 'CN25', N'Tạ Thị Quyên', N'Dược sĩ', 9500000, '01234567825', 'hash_pass_25'),
('NV26', 'CN26', N'Phí Văn Hưng', N'Dược sĩ', 10000000, '01234567826', 'hash_pass_26'),
('NV27', 'CN27', N'Cao Thị Hằng', N'Dược sĩ', 9000000, '01234567827', 'hash_pass_27'),
('NV28', 'CN28', N'Lương Văn Toàn', N'Cửa hàng trưởng', 15000000, '01234567828', 'hash_pass_28'),
('NV29', 'CN29', N'Hà Thị Thảo', N'Dược sĩ', 9500000, '01234567829', 'hash_pass_29'),
('NV30', 'CN30', N'Bạch Văn Lâm', N'Dược sĩ', 10000000, '01234567830', 'hash_pass_30');
GO

-- ==========================================================
-- 3. INSERT CÁC BẢNG PHỤ THUỘC LEVEL 2 & TRUNG GIAN
-- ==========================================================

-- Bảng Thành Phần Thuốc (30 bản ghi - Mapped 1-to-1 TH01-TH30 tới HC01-HC30)
INSERT INTO ThanhPhanThuoc (MaThuoc, MaHC, HamLuong) VALUES 
('TH01', 'HC03', '500mg'), ('TH02', 'HC01', '500mg'), ('TH03', 'HC05', '1000mg'),
('TH04', 'HC19', '250ml'), ('TH05', 'HC06', '20mg'), ('TH06', 'HC22', '5mg'),
('TH07', 'HC07', '850mg'), ('TH08', 'HC08', '10mg'), ('TH09', 'HC09', '50mg'),
('TH10', 'HC13', '0.05%'), ('TH11', 'HC15', '1000mg'), ('TH12', 'HC25', '15g'),
('TH13', 'HC18', 'Free'), ('TH14', 'HC27', '20g'), ('TH15', 'HC26', '100mcg'),
('TH16', 'HC23', '50mg'), ('TH17', 'HC27', '7.5mg'), ('TH18', 'HC10', '81mg'),
('TH19', 'HC28', '0.15mg'), ('TH20', 'HC14', '120mg'), ('TH21', 'HC02', '40mg'),
('TH22', 'HC16', '200mg'), ('TH23', 'HC17', '400g'), ('TH24', 'HC15', '30viên'),
('TH25', 'HC04', '500ml'), ('TH26', 'HC29', '5g'), ('TH27', 'HC30', '100mg'),
('TH28', 'HC13', '40mg'), ('TH29', 'HC30', '10g'), ('TH30', 'HC16', '500ml');
GO

-- Bảng Lô Thuốc (30 bản ghi - Mapped 1-to-1 tới TH01-TH30)
INSERT INTO LoThuoc (MaLo, MaThuoc, SoLoSX, NgaySanXuat, HanSuDung) VALUES 
('LO01', 'TH01', 'SX_001', '2023-01-15', '2026-01-15'), ('LO02', 'TH02', 'SX_002', '2023-02-10', '2026-02-10'),
('LO03', 'TH03', 'SX_003', '2023-03-20', '2025-03-20'), ('LO04', 'TH04', 'SX_004', '2023-04-05', '2025-04-05'),
('LO05', 'TH05', 'SX_005', '2023-05-12', '2026-05-12'), ('LO06', 'TH06', 'SX_006', '2023-06-18', '2026-06-18'),
('LO07', 'TH07', 'SX_007', '2023-07-22', '2026-07-22'), ('LO08', 'TH08', 'SX_008', '2023-08-30', '2025-08-30'),
('LO09', 'TH09', 'SX_009', '2023-09-14', '2026-09-14'), ('LO10', 'TH10', 'SX_010', '2023-10-01', '2025-10-01'),
('LO11', 'TH11', 'SX_011', '2023-11-11', '2026-11-11'), ('LO12', 'TH12', 'SX_012', '2023-12-25', '2025-12-25'),
('LO13', 'TH13', 'SX_013', '2024-01-05', '2027-01-05'), ('LO14', 'TH14', 'SX_014', '2024-02-14', '2026-02-14'),
('LO15', 'TH15', 'SX_015', '2024-03-08', '2026-03-08'), ('LO16', 'TH16', 'SX_016', '2024-04-12', '2027-04-12'),
('LO17', 'TH17', 'SX_017', '2024-05-19', '2027-05-19'), ('LO18', 'TH18', 'SX_018', '2024-06-20', '2027-06-20'),
('LO19', 'TH19', 'SX_019', '2024-07-07', '2026-07-07'), ('LO20', 'TH20', 'SX_020', '2024-08-15', '2026-08-15'),
('LO21', 'TH21', 'SX_021', '2024-09-02', '2027-09-02'), ('LO22', 'TH22', 'SX_022', '2024-10-10', '2026-10-10'),
('LO23', 'TH23', 'SX_023', '2024-11-20', '2025-11-20'), ('LO24', 'TH24', 'SX_024', '2024-12-01', '2026-12-01'),
('LO25', 'TH25', 'SX_025', '2025-01-15', '2027-01-15'), ('LO26', 'TH26', 'SX_026', '2025-02-28', '2027-02-28'),
('LO27', 'TH27', 'SX_027', '2025-03-10', '2027-03-10'), ('LO28', 'TH28', 'SX_028', '2025-04-20', '2027-04-20'),
('LO29', 'TH29', 'SX_029', '2025-05-05', '2027-05-05'), ('LO30', 'TH30', 'SX_030', '2025-06-01', '2028-06-01');
GO

-- Bảng Tồn Kho (30 bản ghi - Mapped 1-to-1 CN01-CN30 tới LO01-LO30)
INSERT INTO TonKho (MaCN, MaLo, SoLuongTon) VALUES 
('CN01', 'LO01', 150), ('CN02', 'LO02', 200), ('CN03', 'LO03', 50),
('CN04', 'LO04', 300), ('CN05', 'LO05', 120), ('CN06', 'LO06', 80),
('CN07', 'LO07', 400), ('CN08', 'LO08', 250), ('CN09', 'LO09', 100),
('CN10', 'LO10', 60),  ('CN11', 'LO11', 180), ('CN12', 'LO12', 220),
('CN13', 'LO13', 350), ('CN14', 'LO14', 90),  ('CN15', 'LO15', 110),
('CN16', 'LO16', 75),  ('CN17', 'LO17', 210), ('CN18', 'LO18', 130),
('CN19', 'LO19', 140), ('CN20', 'LO20', 160), ('CN21', 'LO21', 190),
('CN22', 'LO22', 230), ('CN23', 'LO23', 270), ('CN24', 'LO24', 310),
('CN25', 'LO25', 15),  ('CN26', 'LO26', 85),  ('CN27', 'LO27', 105),
('CN28', 'LO28', 55),  ('CN29', 'LO29', 145), ('CN30', 'LO30', 175);
GO

-- ==========================================================
-- 4. INSERT CÁC BẢNG NGHIỆP VỤ (NHẬP/XUẤT)
-- ==========================================================

-- Bảng Phiếu Nhập Kho (30 bản ghi)
INSERT INTO PhieuNhapKho (MaPhieuNhap, MaCN, NgayNhap, TongGiaTri) VALUES 
('PN01', 'CN01', '2024-01-01', 1500000), ('PN02', 'CN02', '2024-01-05', 10000000),
('PN03', 'CN03', '2024-01-10', 6000000), ('PN04', 'CN04', '2024-01-15', 9000000),
('PN05', 'CN05', '2024-01-20', 2400000), ('PN06', 'CN06', '2024-01-25', 1200000),
('PN07', 'CN07', '2024-02-01', 16000000), ('PN08', 'CN08', '2024-02-05', 2000000),
('PN09', 'CN09', '2024-02-10', 1000000), ('PN10', 'CN10', '2024-02-15', 2700000),
('PN11', 'CN11', '2024-02-20', 36000000), ('PN12', 'CN12', '2024-02-25', 13200000),
('PN13', 'CN13', '2024-03-01', 7000000), ('PN14', 'CN14', '2024-03-05', 2250000),
('PN15', 'CN15', '2024-03-10', 13200000), ('PN16', 'CN16', '2024-03-15', 2625000),
('PN17', 'CN17', '2024-03-20', 2520000), ('PN18', 'CN18', '2024-03-25', 3250000),
('PN19', 'CN19', '2024-04-01', 7700000), ('PN20', 'CN20', '2024-04-05', 24000000),
('PN21', 'CN21', '2024-04-10', 950000), ('PN22', 'CN22', '2024-04-15', 18400000),
('PN23', 'CN23', '2024-04-20', 202500000), ('PN24', 'CN24', '2024-04-25', 93000000),
('PN25', 'CN25', '2024-05-01', 120000), ('PN26', 'CN26', '2024-05-05', 425000),
('PN27', 'CN27', '2024-05-10', 11550000), ('PN28', 'CN28', '2024-05-15', 4950000),
('PN29', 'CN29', '2024-05-20', 5800000), ('PN30', 'CN30', '2024-05-25', 525000);
GO

-- Bảng Chi Tiết Nhập Kho (30 bản ghi - Mapped 1-to-1 PN01-PN30 tới LO01-LO30)
INSERT INTO ChiTietNhapKho (MaPhieuNhap, MaLo, SoLuongNhap, DonGiaNhap) VALUES 
('PN01', 'LO01', 150, 10000), ('PN02', 'LO02', 200, 50000), ('PN03', 'LO03', 50, 120000),
('PN04', 'LO04', 300, 30000), ('PN05', 'LO05', 120, 20000), ('PN06', 'LO06', 80, 15000),
('PN07', 'LO07', 400, 40000), ('PN08', 'LO08', 250, 8000), ('PN09', 'LO09', 100, 10000),
('PN10', 'LO10', 60, 45000), ('PN11', 'LO11', 180, 200000), ('PN12', 'LO12', 220, 60000),
('PN13', 'LO13', 350, 20000), ('PN14', 'LO14', 90, 25000), ('PN15', 'LO15', 110, 120000),
('PN16', 'LO16', 75, 35000), ('PN17', 'LO17', 210, 12000), ('PN18', 'LO18', 130, 25000),
('PN19', 'LO19', 140, 55000), ('PN20', 'LO20', 160, 150000), ('PN21', 'LO21', 190, 5000),
('PN22', 'LO22', 230, 80000), ('PN23', 'LO23', 270, 750000), ('PN24', 'LO24', 310, 300000),
('PN25', 'LO25', 15, 8000), ('PN26', 'LO26', 85, 5000), ('PN27', 'LO27', 105, 110000),
('PN28', 'LO28', 55, 90000), ('PN29', 'LO29', 145, 40000), ('PN30', 'LO30', 175, 3000);
GO

-- Bảng Hóa Đơn (30 bản ghi - Trộn lẫn thông tin nhân viên, khách hàng và bác sĩ)
INSERT INTO HoaDon (MaHD, MaCN, MaNV, MaKH, MaBS, NgayTao, TongTien, PhuongThucThanhToan) VALUES 
('HD01', 'CN01', 'NV01', 'KH01', 'BS01', '2024-06-01', 30000, N'Tiền mặt'),
('HD02', 'CN02', 'NV02', 'KH02', NULL, '2024-06-02', 130000, N'Chuyển khoản'),
('HD03', 'CN03', 'NV03', 'KH03', NULL, '2024-06-03', 150000, N'Tiền mặt'),
('HD04', 'CN04', 'NV04', 'KH04', NULL, '2024-06-04', 90000, N'Quẹt thẻ'),
('HD05', 'CN05', 'NV05', 'KH05', 'BS05', '2024-06-05', 60000, N'Tiền mặt'),
('HD06', 'CN06', 'NV06', 'KH06', 'BS06', '2024-06-06', 44000, N'Chuyển khoản'),
('HD07', 'CN07', 'NV07', 'KH07', 'BS07', '2024-06-07', 120000, N'Tiền mặt'),
('HD08', 'CN08', 'NV08', 'KH08', NULL, '2024-06-08', 36000, N'Tiền mặt'),
('HD09', 'CN09', 'NV09', 'KH09', 'BS09', '2024-06-09', 45000, N'Chuyển khoản'),
('HD10', 'CN10', 'NV10', 'KH10', NULL, '2024-06-10', 55000, N'Tiền mặt'),
('HD11', 'CN11', 'NV11', 'KH11', NULL, '2024-06-11', 250000, N'Chuyển khoản'),
('HD12', 'CN12', 'NV12', 'KH12', NULL, '2024-06-12', 150000, N'Tiền mặt'),
('HD13', 'CN13', 'NV13', 'KH13', NULL, '2024-06-13', 70000, N'Quẹt thẻ'),
('HD14', 'CN14', 'NV14', 'KH14', NULL, '2024-06-14', 35000, N'Tiền mặt'),
('HD15', 'CN15', 'NV15', 'KH15', 'BS15', '2024-06-15', 300000, N'Chuyển khoản'),
('HD16', 'CN16', 'NV16', 'KH16', 'BS16', '2024-06-16', 100000, N'Tiền mặt'),
('HD17', 'CN17', 'NV17', 'KH17', 'BS17', '2024-06-17', 54000, N'Chuyển khoản'),
('HD18', 'CN18', 'NV18', 'KH18', 'BS18', '2024-06-18', 70000, N'Tiền mặt'),
('HD19', 'CN19', 'NV19', 'KH19', NULL, '2024-06-19', 140000, N'Tiền mặt'),
('HD20', 'CN20', 'NV20', 'KH20', NULL, '2024-06-20', 200000, N'Chuyển khoản'),
('HD21', 'CN21', 'NV21', 'KH21', 'BS21', '2024-06-21', 50000, N'Tiền mặt'),
('HD22', 'CN22', 'NV22', 'KH22', NULL, '2024-06-22', 105000, N'Tiền mặt'),
('HD23', 'CN23', 'NV23', 'KH23', NULL, '2024-06-23', 820000, N'Quẹt thẻ'),
('HD24', 'CN24', 'NV24', 'KH24', NULL, '2024-06-24', 350000, N'Chuyển khoản'),
('HD25', 'CN25', 'NV25', 'KH25', NULL, '2024-06-25', 24000, N'Tiền mặt'),
('HD26', 'CN26', 'NV26', 'KH26', NULL, '2024-06-26', 16000, N'Tiền mặt'),
('HD27', 'CN27', 'NV27', 'KH27', 'BS27', '2024-06-27', 280000, N'Chuyển khoản'),
('HD28', 'CN28', 'NV28', 'KH28', NULL, '2024-06-28', 110000, N'Tiền mặt'),
('HD29', 'CN29', 'NV29', 'KH29', NULL, '2024-06-29', 50000, N'Tiền mặt'),
('HD30', 'CN30', 'NV30', 'KH30', NULL, '2024-06-30', 25000, N'Chuyển khoản');
GO

-- Bảng Chi Tiết Hóa Đơn (30 bản ghi - Mapped 1-to-1 HD01-HD30 tới LO01-LO30)
INSERT INTO ChiTietHoaDon (MaHD, MaLo, SoLuong, DonGiaBan) VALUES 
('HD01', 'LO01', 2, 15000), ('HD02', 'LO02', 2, 65000), ('HD03', 'LO03', 1, 150000),
('HD04', 'LO04', 2, 45000), ('HD05', 'LO05', 2, 30000), ('HD06', 'LO06', 2, 22000),
('HD07', 'LO07', 2, 60000), ('HD08', 'LO08', 3, 12000), ('HD09', 'LO09', 3, 15000),
('HD10', 'LO10', 1, 55000), ('HD11', 'LO11', 1, 250000), ('HD12', 'LO12', 2, 75000),
('HD13', 'LO13', 2, 35000), ('HD14', 'LO14', 1, 35000), ('HD15', 'LO15', 2, 150000),
('HD16', 'LO16', 2, 50000), ('HD17', 'LO17', 3, 18000), ('HD18', 'LO18', 2, 35000),
('HD19', 'LO19', 2, 70000), ('HD20', 'LO20', 1, 200000), ('HD21', 'LO21', 5, 10000),
('HD22', 'LO22', 1, 105000), ('HD23', 'LO23', 1, 820000), ('HD24', 'LO24', 1, 350000),
('HD25', 'LO25', 2, 12000), ('HD26', 'LO26', 2, 8000), ('HD27', 'LO27', 2, 140000),
('HD28', 'LO28', 1, 110000), ('HD29', 'LO29', 1, 50000), ('HD30', 'LO30', 5, 5000);
GO