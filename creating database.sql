    
USE master
 GO
 CREATE DATABASE MyDB 
 ON PRIMARY
 ( NAME='MyDB_Primary',
 FILENAME=
 'c:\shweta\MyDB_Prm.mdf',
 SIZE=4MB,
 MAXSIZE=10MB,
 FILEGROWTH=1MB),


 FILEGROUP MyDB_FG1
 ( NAME = 'MyDB_FG1_Dat1',
 FILENAME =
 'c:\shweta\MyDB_FG1_1.ndf',
 SIZE = 1MB,
 MAXSIZE=10MB,
 FILEGROWTH=1MB),


 ( NAME = 'MyDB_FG1_Dat2',
 FILENAME =
 'c:\shweta\MyDB_FG1_2.ndf',
 SIZE = 1MB,
 MAXSIZE=10MB,
 FILEGROWTH=1MB)
 LOG ON
 ( NAME='MyDB_log',
 FILENAME =
 'c:\shweta\MyDB.ldf',
 SIZE=1MB,
 MAXSIZE=10MB,
 FILEGROWTH=1MB)
 GO


alter database MyDB

modify filegroup MyDB_FG1 default
 go


