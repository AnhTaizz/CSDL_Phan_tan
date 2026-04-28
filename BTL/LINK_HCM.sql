IF EXISTS (SELECT * FROM sys.servers WHERE name = N'TRAM_HCM')
    EXEC sp_dropserver N'TRAM_HCM', 'droplogins';
GO
EXEC sp_addlinkedserver
   @server = N'TRAM_HCM', 
   @srvproduct = N'26.84.61.159\SQLEXPRESS',
   @provider = N'MSOLEDBSQL', 
   @datasrc = N'26.84.61.159',
   @provstr = N'Encrypt=yes;TrustServerCertificate=yes;';
GO
EXEC sp_addlinkedsrvlogin 
   @rmtsrvname = N'TRAM_HCM', 
   @useself = N'FALSE', 
   @rmtuser = N'QLCN', 
   @rmtpassword = N'123456'; 
GO
EXEC sp_serveroption @server='TRAM_HCM', @optname='rpc', @optvalue='TRUE';
EXEC sp_serveroption @server='TRAM_HCM', @optname='rpc out', @optvalue='TRUE';
GO