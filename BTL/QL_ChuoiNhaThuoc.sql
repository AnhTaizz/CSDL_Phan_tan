-- ==========================================================
-- 1. TẠO DATABASE
-- ==========================================================
CREATE DATABASE QL_ChuoiNhaThuoc;
GO
USE QL_ChuoiNhaThuoc;
GO


-- ==========================================================
-- 2. TẠO CÁC BẢNG DANH MỤC ĐỘC LẬP (Không có khóa ngoại)
-- ==========================================================


-- Bảng Khu Vực
CREATE TABLE KhuVuc (
    MaKV VARCHAR(10) PRIMARY KEY,
    TenKV NVARCHAR(50) NOT NULL,
    MoTa NVARCHAR(255)
);


-- Bảng Nhóm Thuốc
CREATE TABLE NhomThuoc (
    MaNhom VARCHAR(10) PRIMARY KEY,
    TenNhom NVARCHAR(100) NOT NULL
);


-- Bảng Hoạt Chất
CREATE TABLE HoatChat (
    MaHC VARCHAR(10) PRIMARY KEY,
    TenHC NVARCHAR(100) NOT NULL,
    ChongChiDinh NVARCHAR(500)
);


-- Bảng Khách Hàng
CREATE TABLE KhachHang (
    MaKH VARCHAR(10) PRIMARY KEY,
    TenKH NVARCHAR(100) NOT NULL,
    SoDienThoai VARCHAR(15) UNIQUE,
    DiemTichLuy INT DEFAULT 0
);


-- Bảng Bác Sĩ
CREATE TABLE BacSi (
    MaBS VARCHAR(10) PRIMARY KEY,
    TenBS NVARCHAR(100) NOT NULL,
    NoiCongTac NVARCHAR(255),
    ChungChiHanhNghe VARCHAR(50) UNIQUE
);


-- ==========================================================
-- 3. TẠO CÁC BẢNG PHỤ THUỘC LEVEL 1
-- ==========================================================


-- Bảng Chi Nhánh
CREATE TABLE ChiNhanh (
    MaCN VARCHAR(10) PRIMARY KEY,
    MaKV VARCHAR(10) NOT NULL,
    TenCN NVARCHAR(100) NOT NULL,
    DiaChi NVARCHAR(255),
    SoDienThoai VARCHAR(15),
    TrangThaiHoatDong BIT DEFAULT 1, -- 1: Đang hoạt động, 0: Đóng cửa
    CONSTRAINT FK_ChiNhanh_KhuVuc FOREIGN KEY (MaKV) REFERENCES KhuVuc(MaKV)
);


-- Bảng Thuốc
CREATE TABLE Thuoc (
    MaThuoc VARCHAR(10) PRIMARY KEY,
    MaNhom VARCHAR(10) NOT NULL,
    TenThuoc NVARCHAR(150) NOT NULL,
    DonViTinh NVARCHAR(20) NOT NULL, -- Hộp, Vỉ, Viên, Lọ...
    CanKeDon BIT DEFAULT 0, -- 0: OTC (Không kê đơn), 1: ETC (Kê đơn)
    GiaNhap DECIMAL(18, 2) NOT NULL,
    GiaBanLe DECIMAL(18, 2) NOT NULL,
    NhaCungCap NVARCHAR(150),
    CONSTRAINT FK_Thuoc_NhomThuoc FOREIGN KEY (MaNhom) REFERENCES NhomThuoc(MaNhom)
);


-- Bảng Nhân Viên
CREATE TABLE NhanVien (
    MaNV VARCHAR(10) PRIMARY KEY,
    MaCN VARCHAR(10) NOT NULL,
    TenNV NVARCHAR(100) NOT NULL,
    ChucVu NVARCHAR(50), -- Dược sĩ, Cửa hàng trưởng...
    LuongCoBan DECIMAL(18, 2),
    SoTaiKhoan VARCHAR(20),
    MatKhauHash VARCHAR(255) NOT NULL, -- Mật khẩu mã hóa để login hệ thống
    CONSTRAINT FK_NhanVien_ChiNhanh FOREIGN KEY (MaCN) REFERENCES ChiNhanh(MaCN)
);


-- ==========================================================
-- 4. TẠO CÁC BẢNG PHỤ THUỘC LEVEL 2 & CÁC BẢNG TRUNG GIAN
-- ==========================================================


-- Bảng Thành Phần Thuốc (Trung gian giữa Thuoc và HoatChat)
CREATE TABLE ThanhPhanThuoc (
    MaThuoc VARCHAR(10) NOT NULL,
    MaHC VARCHAR(10) NOT NULL,
    HamLuong NVARCHAR(50) NOT NULL, -- VD: 500mg, 250ml
    PRIMARY KEY (MaThuoc, MaHC),
    CONSTRAINT FK_TPT_Thuoc FOREIGN KEY (MaThuoc) REFERENCES Thuoc(MaThuoc),
    CONSTRAINT FK_TPT_HoatChat FOREIGN KEY (MaHC) REFERENCES HoatChat(MaHC)
);


-- Bảng Lô Thuốc
CREATE TABLE LoThuoc (
    MaLo VARCHAR(20) PRIMARY KEY,
    MaThuoc VARCHAR(10) NOT NULL,
    SoLoSX VARCHAR(50) NOT NULL, -- Mã lô in trên vỏ hộp từ nhà máy
    NgaySanXuat DATE NOT NULL,
    HanSuDung DATE NOT NULL,
    CONSTRAINT FK_LoThuoc_Thuoc FOREIGN KEY (MaThuoc) REFERENCES Thuoc(MaThuoc),
    CONSTRAINT CHK_HanSuDung CHECK (HanSuDung > NgaySanXuat) -- HSD phải lớn hơn NSX
);


-- Bảng Tồn Kho (Trung gian giữa ChiNhanh và LoThuoc)
CREATE TABLE TonKho (
    MaCN VARCHAR(10) NOT NULL,
    MaLo VARCHAR(20) NOT NULL,
    SoLuongTon INT NOT NULL DEFAULT 0,
    PRIMARY KEY (MaCN, MaLo),
    CONSTRAINT FK_TonKho_ChiNhanh FOREIGN KEY (MaCN) REFERENCES ChiNhanh(MaCN),
    CONSTRAINT FK_TonKho_LoThuoc FOREIGN KEY (MaLo) REFERENCES LoThuoc(MaLo),
    CONSTRAINT CHK_SoLuongTon CHECK (SoLuongTon >= 0) -- Không cho phép tồn kho âm
);


-- ==========================================================
-- 5. TẠO CÁC BẢNG NGHIỆP VỤ NHẬP / XUẤT HÀNG
-- ==========================================================


-- Bảng Phiếu Nhập Kho
CREATE TABLE PhieuNhapKho (
    MaPhieuNhap VARCHAR(20) PRIMARY KEY,
    MaCN VARCHAR(10) NOT NULL,
    NgayNhap DATETIME DEFAULT GETDATE(),
    TongGiaTri DECIMAL(18, 2) DEFAULT 0,
    CONSTRAINT FK_PhieuNhap_ChiNhanh FOREIGN KEY (MaCN) REFERENCES ChiNhanh(MaCN)
);


-- Bảng Chi Tiết Nhập Kho
CREATE TABLE ChiTietNhapKho (
    MaPhieuNhap VARCHAR(20) NOT NULL,
    MaLo VARCHAR(20) NOT NULL,
    SoLuongNhap INT NOT NULL,
    DonGiaNhap DECIMAL(18, 2) NOT NULL,
    PRIMARY KEY (MaPhieuNhap, MaLo),
    CONSTRAINT FK_CTNK_PhieuNhap FOREIGN KEY (MaPhieuNhap) REFERENCES PhieuNhapKho(MaPhieuNhap),
    CONSTRAINT FK_CTNK_LoThuoc FOREIGN KEY (MaLo) REFERENCES LoThuoc(MaLo),
    CONSTRAINT CHK_SoLuongNhap CHECK (SoLuongNhap > 0)
);


-- Bảng Hóa Đơn (Bán hàng)
CREATE TABLE HoaDon (
    MaHD VARCHAR(20) PRIMARY KEY,
    MaCN VARCHAR(10) NOT NULL,
    MaNV VARCHAR(10) NOT NULL,
    MaKH VARCHAR(10) NULL, -- Khách vãng lai không cần nhập mã
    MaBS VARCHAR(10) NULL, -- Chỉ cần khi bán thuốc ETC (kê đơn)
    NgayTao DATETIME DEFAULT GETDATE(),
    TongTien DECIMAL(18, 2) DEFAULT 0,
    PhuongThucThanhToan NVARCHAR(50) DEFAULT N'Tiền mặt',
    CONSTRAINT FK_HoaDon_ChiNhanh FOREIGN KEY (MaCN) REFERENCES ChiNhanh(MaCN),
    CONSTRAINT FK_HoaDon_NhanVien FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV),
    CONSTRAINT FK_HoaDon_KhachHang FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH),
    CONSTRAINT FK_HoaDon_BacSi FOREIGN KEY (MaBS) REFERENCES BacSi(MaBS)
);


-- Bảng Chi Tiết Hóa Đơn
CREATE TABLE ChiTietHoaDon (
    MaHD VARCHAR(20) NOT NULL,
    MaLo VARCHAR(20) NOT NULL, -- Bán chính xác lô nào để trừ tồn kho lô đó
    SoLuong INT NOT NULL,
    DonGiaBan DECIMAL(18, 2) NOT NULL, -- Lưu cứng giá tại thời điểm bán
    PRIMARY KEY (MaHD, MaLo),
    CONSTRAINT FK_CTHD_HoaDon FOREIGN KEY (MaHD) REFERENCES HoaDon(MaHD),
    CONSTRAINT FK_CTHD_LoThuoc FOREIGN KEY (MaLo) REFERENCES LoThuoc(MaLo),
    CONSTRAINT CHK_SoLuongBan CHECK (SoLuong > 0)
);
GO
