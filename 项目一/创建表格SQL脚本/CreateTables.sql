

PRINT '';
PRINT '*** Creating Table DimDate';
GO

CREATE TABLE DimDate 
(
    DateKey INT PRIMARY KEY,
    Date DATE NOT NULL,
    Day INT NOT NULL,
    Month INT NOT NULL,
    Quarter INT NOT NULL,
    Year INT NOT NULL
)
Go

PRINT '';
PRINT '*** Creating Table DimLocation';
GO

CREATE TABLE DimLocation
(
    Beat int PRIMARY KEY,
    Zone int,
    City varchar(50),
    County varchar(50),
    State varchar(50),
    Country varchar(50)
)
Go

PRINT '';
PRINT '*** Creating Table DimCrime';
GO

CREATE TABLE DimCrime
(
    CrimeID int PRIMARY KEY IDENTITY,
    CrimeName varchar(50),
    SeverityOfCrime varchar(50)
)
Go

PRINT '';
PRINT '*** Creating Table FactCrime';
GO

CREATE TABLE FactCrime
(
    DateKey INT NOT NULL,
    Beat INT NOT NULL,
    CrimeID INT NOT NULL,
    CrimeCount INT NOT NULL
)
Go

PRINT '';
PRINT '*** Add relation between fact table foreign keys to Primary keys of Dimensions';
GO

AlTER TABLE FactCrime ADD CONSTRAINT 
FK_DateKey FOREIGN KEY (DateKey)REFERENCES DimDate(DateKey);
AlTER TABLE FactCrime ADD CONSTRAINT 
FK_Beat FOREIGN KEY (Beat)REFERENCES DimLocation(Beat);
AlTER TABLE FactCrime ADD CONSTRAINT 
FK_CrimeID FOREIGN KEY (CrimeID)REFERENCES DimCrime(CrimeID);
Go