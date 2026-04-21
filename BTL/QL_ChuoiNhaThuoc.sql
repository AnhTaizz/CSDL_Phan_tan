-- ==========================================================
-- 1. Tạo database
-- ==========================================================
CREATE DATABASE QL_ChuoiNhaThuoc;
GO
USE QL_ChuoiNhaThuoc;
GO

-- ==========================================================
-- 2. Tạo các bảng danh mục độc lập (Không khóa ngoại)
-- ==========================================================

-- Bảng nhóm thuốc
CREATE TABLE NhomThuoc (
    MaNhom VARCHAR(10) PRIMARY KEY,
    TenNhom NVARCHAR(100) NOT NULL
);

-- Bảng hoạt chất
CREATE TABLE HoatChat (
    MaHC VARCHAR(10) PRIMARY KEY,
    TenHC NVARCHAR(100) NOT NULL,
    ChongChiDinh NVARCHAR(500)
);

-- Bảng khách hàng
CREATE TABLE KhachHang (
    MaKH VARCHAR(10) PRIMARY KEY,
    TenKH NVARCHAR(100) NOT NULL,
    SoDienThoai VARCHAR(15) UNIQUE,
    DiemTichLuy INT DEFAULT 0
);

-- Bảng bác sĩ
CREATE TABLE BacSi (
    MaBS VARCHAR(10) PRIMARY KEY,
    TenBS NVARCHAR(100) NOT NULL,
    NoiCongTac NVARCHAR(255),
    ChungChiHanhNghe VARCHAR(50) UNIQUE
);

-- ==========================================================
-- 3. Tạo các bảng phụ thuộc level 1
-- ==========================================================

-- Bảng chi nhánh (Đã tích hợp KhuVuc)
CREATE TABLE ChiNhanh (
    MaCN VARCHAR(10) PRIMARY KEY,
    TenCN NVARCHAR(100) NOT NULL,
    KhuVuc NVARCHAR(50) NOT NULL, 
    DiaChi NVARCHAR(255),
    SoDienThoai VARCHAR(15),
    TrangThaiHoatDong BIT DEFAULT 1
);

-- Bảng thuốc
CREATE TABLE Thuoc (
    MaThuoc VARCHAR(10) PRIMARY KEY,
    MaNhom VARCHAR(10) NOT NULL,
    TenThuoc NVARCHAR(150) NOT NULL,
    DonViTinh NVARCHAR(20) NOT NULL, 
    CanKeDon BIT DEFAULT 0, 
    GiaNhap DECIMAL(18, 2) NOT NULL,
    GiaBanLe DECIMAL(18, 2) NOT NULL,
    NhaCungCap NVARCHAR(150),
    CONSTRAINT FK_Thuoc_NhomThuoc FOREIGN KEY (MaNhom) REFERENCES NhomThuoc(MaNhom)
);

-- Bảng nhân viên
CREATE TABLE NhanVien (
    MaNV VARCHAR(10) PRIMARY KEY,
    MaCN VARCHAR(10) NOT NULL,
    TenNV NVARCHAR(100) NOT NULL,
    ChucVu NVARCHAR(50), 
    LuongCoBan DECIMAL(18, 2),
    SoTaiKhoan VARCHAR(20),
    MatKhauHash VARCHAR(255) NOT NULL, 
    CONSTRAINT FK_NhanVien_ChiNhanh FOREIGN KEY (MaCN) REFERENCES ChiNhanh(MaCN)
);

-- ==========================================================
-- 4. Tạo các bảng phụ thuộc level 2 & trung gian
-- ==========================================================

-- Bảng thành phần thuốc 
CREATE TABLE ThanhPhanThuoc (
    MaThuoc VARCHAR(10) NOT NULL,
    MaHC VARCHAR(10) NOT NULL,
    HamLuong NVARCHAR(50) NOT NULL, 
    PRIMARY KEY (MaThuoc, MaHC),
    CONSTRAINT FK_TPT_Thuoc FOREIGN KEY (MaThuoc) REFERENCES Thuoc(MaThuoc),
    CONSTRAINT FK_TPT_HoatChat FOREIGN KEY (MaHC) REFERENCES HoatChat(MaHC)
);

-- Bảng lô thuốc
CREATE TABLE LoThuoc (
    MaLo VARCHAR(20) PRIMARY KEY,
    MaThuoc VARCHAR(10) NOT NULL,
    SoLoSX VARCHAR(50) NOT NULL, 
    NgaySanXuat DATE NOT NULL,
    HanSuDung DATE NOT NULL,
    CONSTRAINT FK_LoThuoc_Thuoc FOREIGN KEY (MaThuoc) REFERENCES Thuoc(MaThuoc),
    CONSTRAINT CHK_HanSuDung CHECK (HanSuDung > NgaySanXuat) 
);

-- Bảng tồn kho 
CREATE TABLE TonKho (
    MaCN VARCHAR(10) NOT NULL,
    MaLo VARCHAR(20) NOT NULL,
    SoLuongTon INT NOT NULL DEFAULT 0,
    PRIMARY KEY (MaCN, MaLo),
    CONSTRAINT FK_TonKho_ChiNhanh FOREIGN KEY (MaCN) REFERENCES ChiNhanh(MaCN),
    CONSTRAINT FK_TonKho_LoThuoc FOREIGN KEY (MaLo) REFERENCES LoThuoc(MaLo),
    CONSTRAINT CHK_SoLuongTon CHECK (SoLuongTon >= 0) 
);

-- ==========================================================
-- 5. Tạo các bảng nghiệp vụ nhập / xuất hàng
-- ==========================================================

-- Bảng phiếu nhập kho (Chuẩn hóa 1-N với Chi Nhánh)
CREATE TABLE PhieuNhapKho (
    MaPhieuNhap VARCHAR(20) PRIMARY KEY,
    MaCN VARCHAR(10) NOT NULL,
    NgayNhap DATETIME DEFAULT GETDATE(),
    TongGiaTri DECIMAL(18, 2) DEFAULT 0,
    CONSTRAINT FK_PhieuNhap_ChiNhanh FOREIGN KEY (MaCN) REFERENCES ChiNhanh(MaCN)
);

-- Bảng chi tiết nhập kho
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

-- Bảng hóa đơn
CREATE TABLE HoaDon (
    MaHD VARCHAR(20) PRIMARY KEY,
    MaCN VARCHAR(10) NOT NULL,
    MaNV VARCHAR(10) NOT NULL,
    MaKH VARCHAR(10) NULL, 
    MaBS VARCHAR(10) NULL, 
    NgayTao DATETIME DEFAULT GETDATE(),
    TongTien DECIMAL(18, 2) DEFAULT 0,
    PhuongThucThanhToan NVARCHAR(50) DEFAULT N'Tiền mặt',
    CONSTRAINT FK_HoaDon_ChiNhanh FOREIGN KEY (MaCN) REFERENCES ChiNhanh(MaCN),
    CONSTRAINT FK_HoaDon_NhanVien FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV),
    CONSTRAINT FK_HoaDon_KhachHang FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH),
    CONSTRAINT FK_HoaDon_BacSi FOREIGN KEY (MaBS) REFERENCES BacSi(MaBS)
);

-- Bảng chi tiết hóa đơn
CREATE TABLE ChiTietHoaDon (
    MaHD VARCHAR(20) NOT NULL,
    MaLo VARCHAR(20) NOT NULL, 
    SoLuong INT NOT NULL,
    DonGiaBan DECIMAL(18, 2) NOT NULL, 
    PRIMARY KEY (MaHD, MaLo),
    CONSTRAINT FK_CTHD_HoaDon FOREIGN KEY (MaHD) REFERENCES HoaDon(MaHD),
    CONSTRAINT FK_CTHD_LoThuoc FOREIGN KEY (MaLo) REFERENCES LoThuoc(MaLo),
    CONSTRAINT CHK_SoLuongBan CHECK (SoLuong > 0)
);
GO
