
:setvar SqlSamplesSourceDataPath "\\uniwa.uwa.edu.au\userhome\Students1\23715251\project1\"

:setvar DatabaseName "[rongchuan07]"


BULK INSERT [dbo].[DimDate]
FROM '$(SqlSamplesSourceDataPath)DimDate.csv'
WITH (
  FORMAT = 'CSV',
  FIELDTERMINATOR = ',',
  ROWTERMINATOR = '\n'
);

BULK INSERT [dbo].[DimLocation]
FROM '$(SqlSamplesSourceDataPath)DimLocation.csv'
WITH (
  FORMAT = 'CSV',
  FIELDTERMINATOR = ',',
  ROWTERMINATOR = '\n'
);

BULK INSERT [dbo].[DimCrime]
FROM '$(SqlSamplesSourceDataPath)DimCrime.csv'
WITH (
  FORMAT = 'CSV',
  FIELDTERMINATOR = ',',
  ROWTERMINATOR = '\n'
);
