Use [rongchuan07]
Go

CREATE TABLE All_Data (
    crime VARCHAR(255) NOT NULL,
    date Varchar(50) NOT NULL,
    beat Varchar(50) NOT NULL,
    city VARCHAR(255) NOT NULL,
    county VARCHAR(255) NOT NULL,
    state VARCHAR(255) NOT NULL,
    country VARCHAR(255) NOT NULL
)
Go

BULK INSERT All_Data
FROM '\\uniwa.uwa.edu.au\userhome\Students1\23715251\project1\all_data.csv'
WITH (FIRSTROW = 2, FIELDTERMINATOR = ',', ROWTERMINATOR='\n');

