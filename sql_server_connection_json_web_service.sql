Declare @RESULT as varchar(MAX)
Declare @JSON as varchar(MAX)
Declare @Object as int
Declare @ResponseText as varchar(8000)
Declare @HResult int
Declare @Source varchar(255), @Desc varchar(255)
Declare @Body as varchar(8000) =''
Declare @URL as varchar(MAX)
set @URL ='https://nominatim.openstreetmap.org/?addressdetails=1&q=Ataturk%20Olimpiyat%20Stadyumu&format=json&limit=1';
Exec SP_OACreate 'MSXML2.XMLHTTP', @Object OUT;
Exec SP_OAMethod @Object, 'Open', NULL, 'GET',@URL, 'false'
Exec SP_OAMethod @Object, 'setRequestHeader', NULL, 'Content-Type', 'application-json'
Exec SP_OAMethod @Object, 'send', NULL
Exec SP_OAMethod @Object, 'ResponseText', @ResponseText OUTPUT
Set @JSON = @ResponseText
select @JSON