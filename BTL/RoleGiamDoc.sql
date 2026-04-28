USE QL_ChuoiNhaThuoc;
GO
CREATE LOGIN Login_GiamDoc WITH PASSWORD = '123456';
CREATE USER User_GiamDoc FOR LOGIN Login_GiamDoc;
GO
ALTER ROLE db_datareader ADD MEMBER User_GiamDoc;
GO