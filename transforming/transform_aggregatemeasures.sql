CREATE table AggregateMeasures3 AS
SELECT
HospitalName,
MeasureName,
AVG(Score) AS Average_Score,
FROM Procedures2
WHERE Score IS NOT NULL
GROUP BY HospitalName, MeasureName;

