    IF  NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'DBNAME')
        BEGIN
            CREATE DATABASE DemoData
        END;
