/*
====================================================
Criar Banco de Dados e Schemas
====================================================

Objetivo do Script:
    Este script cria um novo banco de dados chamado 'DataWarehouse' após verificar se ele já existe.
    Se o banco de dados existir, ele é removido e recriado. Além disso, o script cria três schemas
    dentro do banco: 'bronze', 'silver' e 'gold'.

AVISO:
    Executar este script apagará completamente o banco de dados 'DataWarehouse', caso exista.
    Todos os dados serão permanentemente excluídos. Proceda com cautela
    e certifique-se de ter backups adequados antes de executar este script.
*/

USE master;
GO

-- Apaga o banco de dados 'DataWarehouse', se existir
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Cria o banco de dados 'DataWarehouse'
CREATE DATABASE DataWarehouse;
GO

-- Seleciona o novo banco para criar os schemas
USE DataWarehouse;
GO

-- Cria o schema 'bronze'
CREATE SCHEMA bronze;
GO

-- Cria o schema 'silver'
CREATE SCHEMA silver;
GO

-- Cria o schema 'gold'
CREATE SCHEMA gold;
GO
