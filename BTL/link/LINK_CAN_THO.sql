EXEC sp_addlinkedserver
   @server = N'TRAM_CAN_THO', 
   @srvproduct = N'',
   @provider = N'MSOLEDBSQL', 
   @datasrc = N'26.150.122.80',
   @provstr = N'Encrypt=yes;TrustServerCertificate=yes;';
GO
EXEC sp_addlinkedsrvlogin 
   @rmtsrvname = N'TRAM_CAN_THO', 
   @useself = N'FALSE', 
   @rmtuser = N'sa', 
   @rmtpassword = N'123456'; 
GO
EXEC sp_serveroption @server='TRAM_CAN_THO', @optname='rpc', @optvalue='TRUE';
EXEC sp_serveroption @server='TRAM_CAN_THO', @optname='rpc out', @optvalue='TRUE';
GO