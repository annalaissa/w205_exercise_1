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
