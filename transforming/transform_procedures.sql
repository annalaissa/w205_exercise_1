CREATE TABLE Procedures2 (
MeasureName string,
MeasureID string,
Score decimal(3,2),
ProviderID string,
HospitalName string,
State string);



INSERT INTO Procedures2
select HAI_Hospital2.MeasureName, 
HAI_Hospital2.MeasureID, 
HAI_Hospital2.Score, 
HAI_Hospital2.ProviderID, 
HAI_Hospital2.HospitalName,
Hospitals2.State
FROM HAI_Hospital2
INNER JOIN Hospitals2 ON HAI_Hospital2.ProviderID = Hospitals2.ProviderID;



INSERT INTO Procedures2
select Timely_Effective_Care_Hospital2.MeasureName, 
Timely_Effective_Care_Hospital2.MeasureID, 
Timely_Effective_Care_Hospital2.Score, 
Timely_Effective_Care_Hospital2.ProviderID, 
Timely_Effective_Care_Hospital2.HospitalName,
Hospitals2.State
FROM Timely_Effective_Care_Hospital2
INNER JOIN Hospitals2 ON Timely_Effective_Care_Hospital2.ProviderID = Hospitals2.ProviderID;



INSERT INTO Procedures2
select Readmissions_and_deaths_Hospital2.MeasureName, 
Readmissions_and_deaths_Hospital2.MeasureID, 
Readmissions_and_deaths_Hospital2.Score, 
Readmissions_and_deaths_Hospital2.ProviderID, 
Readmissions_and_deaths_Hospital2.HospitalName,
Hospitals2.State
FROM Readmissions_and_deaths_Hospital2
INNER JOIN Hospitals2 ON Readmissions_and_deaths_Hospital2.ProviderID = Hospitals2.ProviderID;



INSERT INTO Procedures2
select Outpatient_Imaging_Efficiency_Hospital2.MeasureName, 
Outpatient_Imaging_Efficiency_Hospital2.MeasureID, 
Outpatient_Imaging_Efficiency_Hospital2.Score, 
Outpatient_Imaging_Efficiency_Hospital2.ProviderID, 
Outpatient_Imaging_Efficiency_Hospital2.HospitalName,
Hospitals2.State
FROM Outpatient_Imaging_Efficiency_Hospital2
INNER JOIN Hospitals2 ON Outpatient_Imaging_Efficiency_Hospital2.ProviderID = Hospitals2.ProviderID;
