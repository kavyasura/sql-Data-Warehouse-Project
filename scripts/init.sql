--create database 'DatawareHouse'
use master;
go

--drop and recreate the database
if exists (select 1 from sys.databases where name='DataWareHouse')
begin 
 alter database DataWareHouse set single_user with rollback immediate;
 drop database DataWareHouse;
end;
go

--create the'DatawareHouse' database
create database DataWareHouse;
go

use DataWareHouse;
go

--create schemas
create schema bronze;
go

create schema silver;
go

create schema gold;
go



