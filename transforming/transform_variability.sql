CREATE table Variability AS
SELECT
HospitalName,
AVG(average_score),
COUNT(MeasureName),
STDDEV(average_score) as Variability
FROM AggregateMeasures3
GROUP BY HospitalName
ORDER BY Variability ASC;
