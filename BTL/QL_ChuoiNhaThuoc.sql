-- ==========================================================
-- ĐỒ ÁN: CƠ SỞ DỮ LIỆU PHÂN TÁN CHUỖI NHÀ THUỐC
-- BẢN CHUẨN KHỞI TẠO TẠI TRẠM GỐC (PUBLISHER - HÀ NỘI)
-- Tích hợp sẵn kiến trúc Merge Replication & Linked Server
-- ==========================================================

CREATE DATABASE QL_ChuoiNhaThuoc;
GO
USE QL_ChuoiNhaThuoc;
GO

-- ==========================================================
-- PHẦN 1: TẠO BẢNG (15 BẢNG)
-- ==========================================================

-- 1. Bảng nhóm thuốc (Nhân bản 100%)
CREATE TABLE NhomThuoc (
    MaNhom VARCHAR(10) PRIMARY KEY,
    TenNhom NVARCHAR(100) NOT NULL
);

-- 2. Bảng hoạt chất (Nhân bản 100%)
CREATE TABLE HoatChat (
    MaHC VARCHAR(10) PRIMARY KEY,
    TenHC NVARCHAR(100) NOT NULL,
    ChongChiDinh NVARCHAR(500)
);

-- 3. Bảng nhà cung cấp (MỚI THÊM - Nhân bản 100%)
CREATE TABLE NhaCungCap (
    MaNCC VARCHAR(10) PRIMARY KEY,
    TenNCC NVARCHAR(150) NOT NULL,
    DiaChi NVARCHAR(255),
    SoDienThoai VARCHAR(15),
    Email VARCHAR(100)
);

-- 4. Bảng khách hàng (PHÂN MẢNH THEO MaCN_MoThe)
CREATE TABLE KhachHang (
    MaKH VARCHAR(10) PRIMARY KEY,
    TenKH NVARCHAR(100) NOT NULL,
    SoDienThoai VARCHAR(15) UNIQUE,
    DiemTichLuy INT DEFAULT 0,
    MaCN_MoThe VARCHAR(10) NOT NULL DEFAULT 'CN_HN' -- Mỏ neo phân mảnh
);

-- 5. Bảng bác sĩ (Nhân bản 100% - Phục vụ ETC offline)
CREATE TABLE BacSi (
    MaBS VARCHAR(10) PRIMARY KEY,
    TenBS NVARCHAR(100) NOT NULL,
    NoiCongTac NVARCHAR(255),
    ChungChiHanhNghe VARCHAR(50) UNIQUE
);

-- 6. Bảng chi nhánh (Phân mảnh ngang)
CREATE TABLE ChiNhanh (
    MaCN VARCHAR(10) PRIMARY KEY,
    TenCN NVARCHAR(100) NOT NULL,
    KhuVuc NVARCHAR(50) NOT NULL, 
    DiaChi NVARCHAR(255),
    SoDienThoai VARCHAR(15),
    TrangThaiHoatDong BIT DEFAULT 1
);

-- 7. Bảng thuốc (Nhân bản 100% - Đã nối khóa ngoại với NhaCungCap)
CREATE TABLE Thuoc (
    MaThuoc VARCHAR(10) PRIMARY KEY,
    MaNhom VARCHAR(10) NOT NULL,
    MaNCC VARCHAR(10) NOT NULL, 
    TenThuoc NVARCHAR(150) NOT NULL,
    DonViTinh NVARCHAR(20) NOT NULL, 
    CanKeDon BIT DEFAULT 0, 
    GiaNhap DECIMAL(18, 2) NOT NULL,
    GiaBanLe DECIMAL(18, 2) NOT NULL,
    CONSTRAINT FK_Thuoc_NhomThuoc FOREIGN KEY (MaNhom) REFERENCES NhomThuoc(MaNhom),
    CONSTRAINT FK_Thuoc_NhaCungCap FOREIGN KEY (MaNCC) REFERENCES NhaCungCap(MaNCC)
);

-- 8. Bảng nhân viên (Phân mảnh ngang)
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

-- 9. Bảng thành phần thuốc (Nhân bản 100%)
CREATE TABLE ThanhPhanThuoc (
    MaThuoc VARCHAR(10) NOT NULL,
    MaHC VARCHAR(10) NOT NULL,
    HamLuong NVARCHAR(50) NOT NULL, 
    PRIMARY KEY (MaThuoc, MaHC),
    CONSTRAINT FK_TPT_Thuoc FOREIGN KEY (MaThuoc) REFERENCES Thuoc(MaThuoc),
    CONSTRAINT FK_TPT_HoatChat FOREIGN KEY (MaHC) REFERENCES HoatChat(MaHC)
);

-- 10. Bảng lô thuốc (Nhân bản 100%)
CREATE TABLE LoThuoc (
    MaLo VARCHAR(20) PRIMARY KEY,
    MaThuoc VARCHAR(10) NOT NULL,
    SoLoSX VARCHAR(50) NOT NULL, 
    NgaySanXuat DATE NOT NULL,
    HanSuDung DATE NOT NULL,
    CONSTRAINT FK_LoThuoc_Thuoc FOREIGN KEY (MaThuoc) REFERENCES Thuoc(MaThuoc),
    CONSTRAINT CHK_HanSuDung CHECK (HanSuDung > NgaySanXuat) 
);

-- 11. Bảng tồn kho (Phân mảnh ngang theo MaCN)
CREATE TABLE TonKho (
    MaCN VARCHAR(10) NOT NULL,
    MaLo VARCHAR(20) NOT NULL,
    SoLuongTon INT NOT NULL DEFAULT 0,
    PRIMARY KEY (MaCN, MaLo),
    CONSTRAINT FK_TonKho_ChiNhanh FOREIGN KEY (MaCN) REFERENCES ChiNhanh(MaCN),
    CONSTRAINT FK_TonKho_LoThuoc FOREIGN KEY (MaLo) REFERENCES LoThuoc(MaLo),
    CONSTRAINT CHK_SoLuongTon CHECK (SoLuongTon >= 0) 
);

-- 12. Bảng phiếu nhập kho (Phân mảnh ngang theo MaCN)
CREATE TABLE PhieuNhapKho (
    MaPhieuNhap VARCHAR(20) PRIMARY KEY,
    MaCN VARCHAR(10) NOT NULL,
    NgayNhap DATETIME DEFAULT GETDATE(),
    TongGiaTri DECIMAL(18, 2) DEFAULT 0,
    CONSTRAINT FK_PhieuNhap_ChiNhanh FOREIGN KEY (MaCN) REFERENCES ChiNhanh(MaCN)
);

-- 13. Bảng chi tiết nhập kho (Phân mảnh bắc cầu qua Join Filter với PhieuNhapKho)
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

-- 14. Bảng hóa đơn (Phân mảnh ngang theo MaCN)
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

-- 15. Bảng chi tiết hóa đơn (Phân mảnh bắc cầu qua Join Filter với HoaDon)
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


