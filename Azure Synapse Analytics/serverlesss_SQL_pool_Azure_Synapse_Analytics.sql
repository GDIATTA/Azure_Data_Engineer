---------- Analyze NYC Taxi data with a serverless SQL pool

SELECT
    TOP 100 *
FROM
    OPENROWSET(
        BULK 'https://contosolakegauss.dfs.core.windows.net/utilisateurs/NYCTripSmall.parquet',
        FORMAT='PARQUET'
    ) AS [result]

----------- Create data exploration database

CREATE DATABASE DataExplorationDB 
                COLLATE Latin1_General_100_BIN2_UTF8

------ Switch the database context from master to DataExplorationDB 

USE DataExplorationDB

--------- From DataExplorationDB, create utility objects such as credentials and data sources

CREATE EXTERNAL DATA SOURCE ContosoLake
WITH ( LOCATION = 'https://contosolake.dfs.core.windows.net')

--------- create a login for a user in DataExplorationDB that will access external data

CREATE LOGIN data_explorer WITH PASSWORD = 'My Very Strong Password 1234!';


------ create a database user in DataExplorationDB for the above login and grant the ADMINISTER DATABASE BULK OPERATIONS permission

CREATE USER data_explorer FOR LOGIN data_explorer;
GO
GRANT ADMINISTER DATABASE BULK OPERATIONS TO data_explorer;
GO


------- Explore the content of the file using the relative path and the data source

SELECT
    TOP 100 *
FROM
    OPENROWSET(
            BULK '/users/NYCTripSmall.parquet',
            DATA_SOURCE = 'ContosoLake',
            FORMAT='PARQUET'
    ) AS [result]

