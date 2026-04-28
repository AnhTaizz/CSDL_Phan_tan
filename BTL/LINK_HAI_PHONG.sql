EXEC sp_addlinkedserver
   @server = N'TRAM_HAI_PHONG', 
   @srvproduct = N'',
   @provider = N'MSOLEDBSQL', 
   @datasrc = N'26.230.193.124\MIEN_BAC',
   @provstr = N'Encrypt=yes;TrustServerCertificate=yes;';
GO
EXEC sp_addlinkedsrvlogin 
   @rmtsrvname = N'TRAM_HAI_PHONG', 
   @useself = N'FALSE', 
   @rmtuser = N'sa', 
   @rmtpassword = N'11'; 
GO
EXEC sp_serveroption @server='TRAM_HAI_PHONG', @optname='rpc', @optvalue='TRUE';
EXEC sp_serveroption @server='TRAM_HAI_PHONG', @optname='rpc out', @optvalue='TRUE';
GO