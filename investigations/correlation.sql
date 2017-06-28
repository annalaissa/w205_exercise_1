CREATE table Correlation AS
SELECT Surveys6.HospitalName,
AVG(Procedures2.Score) AS avg_score,
AVG(Surveys6.StarRating) AS avg_rating
FROM Surveys6
INNER JOIN Procedures2 ON Surveys6.HospitalName = Procedures2.HospitalName
GROUP BY Surveys6.HospitalName
HAVING avg_score IS NOT NULL
AND avg_rating IS NOT NULL
ORDER BY avg_score DESC;

SELECT CORR(avg_score, avg_rating)
FROM Correlation;
