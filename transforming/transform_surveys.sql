CREATE table Surveys6 AS
SELECT
HCAHPS_Hospital2.ProviderID,
HCAHPS_Hospital2.HospitalName,
HCAHPS_Hospital2.MeasureID,
HCAHPS_Hospital2.StarRating,
Hospitals2.State
FROM HCAHPS_Hospital2, Hospitals2
WHERE HCAHPS_Hospital2.Question = 'Overall hospital rating - star rating'
AND HCAHPS_Hospital2.ProviderID = Hospitals2.ProviderID;
