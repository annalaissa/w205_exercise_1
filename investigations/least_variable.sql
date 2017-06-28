SELECT MeasureName,
COUNT(MeasureName) AS num_examples,
AVG(Average_Score) AS avg_score,
STDDEV(Average_Score) AS variability
FROM AggregateMeasures3
GROUP BY MeasureName
HAVING num_examples > 100
ORDER BY variability DESC
LIMIT 10;
