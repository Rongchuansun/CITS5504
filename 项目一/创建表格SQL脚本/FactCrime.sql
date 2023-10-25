INSERT INTO rongchuan07.dbo.FactCrime (DateKey, Beat, CrimeID, CrimeCount)
SELECT 
    dd.DateKey, 
    dl.Beat, 
    dc.CrimeID, 
    COUNT(*) AS TotalCount
FROM 
    rongchuan07.dbo.All_Data ad
    JOIN rongchuan07.dbo.DimDate dd ON ad.Date = dd.Date
    JOIN rongchuan07.dbo.DimLocation dl ON ad.Beat = dl.Beat
    JOIN rongchuan07.dbo.DimCrime dc ON ad.Crime = dc.CrimeName
GROUP BY 
    dd.DateKey, 
    dl.Beat, 
    dc.CrimeID
