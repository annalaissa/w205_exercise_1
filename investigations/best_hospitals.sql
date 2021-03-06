SELECT HospitalsRankedByOverallScore2.HospitalName, 
HospitalsRankedByOverallScore2.avg_score,
HospitalsRankedByOverallScore2.StarRating,
Variability.Variability,
HospitalsRankedByOverallScore2.num_measures
FROM HospitalsRankedByOverallScore2
INNER JOIN Variability ON HospitalsRankedByOverallScore2.HospitalName = Variability.HospitalName
ORDER BY Variability ASC
LIMIT 10;
