CREATE table HospitalsRankedByOverallScore2 AS
SELECT
Procedures2.HospitalName,
COUNT(Procedures2.MeasureName) AS num_measures,
AVG(Procedures2.Score) AS avg_score,
AVG(Surveys6.StarRating) AS StarRating
FROM Procedures2
INNER JOIN Surveys6 ON Procedures2.ProviderID = Surveys6.ProviderID
WHERE Procedures2.Score IS NOT NULL
GROUP BY HospitalName
HAVING num_measures > 27
ORDER BY avg_score DESC
LIMIT 231;

CREATE table AggregateMeasures3 AS
SELECT
HospitalName,
MeasureName,
AVG(Score) AS Average_Score,
FROM Procedures2
WHERE Score IS NOT NULL
GROUP BY HospitalName, MeasureName;

CREATE table Variability AS
SELECT
HospitalName,
AVG(average_score),
COUNT(MeasureName),
STDDEV(average_score) as Variability
FROM AggregateMeasures3
GROUP BY HospitalName
ORDER BY Variability ASC;

SELECT HospitalsRankedByOverallScore2.HospitalName, 
HospitalsRankedByOverallScore2.avg_score,
HospitalsRankedByOverallScore2.StarRating,
Variability.Variability,
HospitalsRankedByOverallScore2.num_measures
FROM HospitalsRankedByOverallScore2
INNER JOIN Variability ON HospitalsRankedByOverallScore2.HospitalName = Variability.HospitalName
ORDER BY Variability ASC
LIMIT 10;
