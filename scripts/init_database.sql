USE master;
GO 

--Creating DataBase "DataWarehouse"
CREATE DATABASE DataWarehouse;

/*
-- Drop and recreate the 'DataWarehouse' database
-- Us the Below Command with caution as it will delete any existing database named as 'DataWarehouse' & create a new one 
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO
*/

USE DataWarehouse;
GO
----Creating Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO 
CREATE SCHEMA gold;
GO
