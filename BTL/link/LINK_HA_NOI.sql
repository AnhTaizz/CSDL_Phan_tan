IF EXISTS (SELECT * FROM sys.servers WHERE name = N'TRAM_HN')
    EXEC sp_dropserver N'TRAM_HN', 'droplogins';
GO

EXEC sp_addlinkedserver
   @server = N'TRAM_HN', 
   @srvproduct = N'', 
   @provider = N'MSOLEDBSQL', 
   @datasrc = N'26.239.35.82', 
   @provstr = N'Encrypt=yes;TrustServerCertificate=yes;';
GO

EXEC sp_addlinkedsrvlogin 
   @rmtsrvname = N'TRAM_HN', 
   @useself = N'FALSE', 
   @rmtuser = N'sa',        
   @rmtpassword = N'123456'; 
GO

EXEC sp_serveroption @server='TRAM_HN', @optname='rpc', @optvalue='TRUE';
EXEC sp_serveroption @server='TRAM_HN', @optname='rpc out', @optvalue='TRUE';
GO