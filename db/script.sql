CREATE DATABASE examendb;
GO

-- Utilizar la base de datos creada
USE examendb;
GO

-- Crear una tabla
CREATE TABLE datos (
    id INT IDENTITY(1,1) PRIMARY KEY,
    nombre NVARCHAR(50) NOT NULL
);
GO
-- Insertar datos en la tabla
INSERT INTO datos (nombre) VALUES ('cesar');
INSERT INTO datos (nombre) VALUES ('pacho');
INSERT INTO datos (nombre) VALUES ('teves');
GO 
SELECT * FROM datos;


/* -- Create a database
CREATE DATABASE examendb;

-- Disable caching (Note: SQL Server doesn't use the same caching mechanism as MySQL)
-- You don't need to set this in SQL Server.

-- Use the created database
USE examendb;

-- Create a table
CREATE TABLE datos (
    id INT IDENTITY(1,1) PRIMARY KEY,
    nombre NVARCHAR(50) NOT NULL
);

-- Insert data into the table
INSERT INTO datos (nombre) VALUES ('cesar');
INSERT INTO datos (nombre) VALUES ('pacho');
INSERT INTO datos (nombre) VALUES ('teves'); */
