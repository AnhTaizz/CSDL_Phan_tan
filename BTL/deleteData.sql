USE QL_ChuoiNhaThuoc;
GO

-- Tắt kiểm tra khóa ngoại tạm thời (nếu muốn xóa nhanh)
EXEC sp_MSforeachtable "ALTER TABLE ? NOCHECK CONSTRAINT ALL";
GO

-- 1. Xóa bảng con trước
DELETE FROM ChiTietHoaDon;
DELETE FROM HoaDon;

DELETE FROM ChiTietNhapKho;
DELETE FROM PhieuNhapKho;

DELETE FROM TonKho;
DELETE FROM LoThuoc;
DELETE FROM ThanhPhanThuoc;

DELETE FROM NhanVien;

-- 2. Xóa bảng trung gian / phụ thuộc
DELETE FROM Thuoc;
DELETE FROM ChiNhanh;

-- 3. Xóa bảng độc lập
DELETE FROM KhachHang;
DELETE FROM BacSi;

DELETE FROM NhaCungCap;
DELETE FROM HoatChat;
DELETE FROM NhomThuoc;

GO

-- Bật lại constraint
EXEC sp_MSforeachtable "ALTER TABLE ? CHECK CONSTRAINT ALL";
GO