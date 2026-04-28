EXEC sp_addlinkedserver
   @server = N'TRAM_DA_NANG', 
   @srvproduct = N'',
   @provider = N'MSOLEDBSQL', 
   @datasrc = N'26.130.228.212\MSSQLSERVER01',
   @provstr = N'Encrypt=yes;TrustServerCertificate=yes;';
GO
EXEC sp_addlinkedsrvlogin 
   @rmtsrvname = N'TRAM_DA_NANG', 
   @useself = N'FALSE', 
   @rmtuser = N'sa', 
   @rmtpassword = N'123456'; 
GO
EXEC sp_serveroption @server='TRAM_DA_NANG', @optname='rpc', @optvalue='TRUE';
EXEC sp_serveroption @server='TRAM_DA_NANG', @optname='rpc out', @optvalue='TRUE';
GO