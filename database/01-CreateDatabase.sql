/*
 * Environment Promotion Automation
 * Project #89 - Complete Database Implementation
 * SQL Server 2008/2012
 * Technology: SSIS
 * Created: 2014
 */

USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'PromotionETL')
BEGIN
    ALTER DATABASE PromotionETL SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE PromotionETL;
END
GO

CREATE DATABASE PromotionETL
ON PRIMARY
(
    NAME = 'PromotionETL_Data',
    FILENAME = 'C:\SQLData\PromotionETL_Data.mdf',
    SIZE = 100MB,
    MAXSIZE = 5GB,
    FILEGROWTH = 10MB
)
LOG ON
(
    NAME = 'PromotionETL_Log',
    FILENAME = 'C:\SQLData\PromotionETL_Log.ldf',
    SIZE = 50MB,
    MAXSIZE = 1GB,
    FILEGROWTH = 5MB
);
GO

ALTER DATABASE PromotionETL SET RECOVERY SIMPLE;
ALTER DATABASE PromotionETL SET AUTO_UPDATE_STATISTICS ON;
GO

USE PromotionETL;
GO

PRINT 'Database PromotionETL created successfully';
PRINT 'Project: Environment Promotion Automation';
PRINT 'Description: DEV/PROD ETL promotion';
GO
