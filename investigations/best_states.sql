SELECT Procedures2.State, 
avg(Procedures2.Score) AS avg_score, 
sum(Procedures2.Score), 
count(Procedures2.State) AS num_examples,
avg(Surveys6.StarRating)
FROM Procedures2
INNER JOIN Surveys6 ON Procedures2.ProviderID = Surveys6.ProviderID
WHERE Procedures2.Score IS NOT NULL
GROUP BY Procedures2.State
HAVING num_examples > 200
ORDER BY avg_score DESC;
