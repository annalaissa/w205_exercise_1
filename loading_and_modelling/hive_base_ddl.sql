DROP TABLE Timely_Effective_Care_Hospital2;
CREATE EXTERNAL TABLE Timely_Effective_Care_Hospital2(ProviderID string,
HospitalName string,
Address string,
City string,
State string,
ZipCode string,
County string,
Phone string,
Condition string,
MeasureID string,
MeasureName string,
Score Decimal(3,2),
Sample string,
Footnote string,
MeasureStartDate string,
MeasureEndDate string
)
ROW FORMAT SERDE'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar" = ",",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/Timely_and_Effective_Care_-_Hospital/Timely_and_Effective_Care_-_Hospital.csv';



DROP TABLE HAI_Hospital2;
CREATE EXTERNAL TABLE HAI_Hospital2(ProviderID string,
HospitalName string,
Address string,
City string,
State string,
ZipCode string,
County string,
Phone string,
MeasureName string,
MeasureID string,
ComparedToNational string,
Score Decimal(3,2),
Footnote string,
MeasureStartDate string,
MeasureEndDate string
)
ROW FORMAT SERDE'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar" = ",",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/Healthcare_Associated_Infections_-_Hospital/';





DROP TABLE Readmissions_and_deaths_Hospital2;
CREATE EXTERNAL TABLE Readmissions_and_deaths_Hospital2(ProviderID string,
HospitalName string,
Address string,
City string,
State string,
ZipCode string,
County string,
Phone string,
MeasureName string,
MeasureID string,
ComparedToNational string,
Denominator string,
Score Decimal(3,2),
LowEstimate string,
HighEstimate string,
Footnote string,
MeasureStartDate string,
MeasureEndDate string
)
ROW FORMAT SERDE'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar" = ",",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/Readmissions_and_Deaths_-_Hospital/';




DROP TABLE Outpatient_Imaging_Efficiency_Hospital2;
CREATE EXTERNAL TABLE Outpatient_Imaging_Efficiency_Hospital2(ProviderID string,
HospitalName string,
Address string,
City string,
State string,
ZipCode string,
County string,
Phone string,
MeasureID string,
MeasureName string,
Score Decimal(3,2),
Footnote string,
MeasureStartDate string,
MeasureEndDate string
)
ROW FORMAT SERDE'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar" = ",",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/Outpatient_Imaging_Efficiency_-_Hospital/';



DROP TABLE HCAHPS_Hospital2;
CREATE EXTERNAL TABLE HCAHPS_Hospital2(ProviderID string,
HospitalName string,
Address string,
City string,
State string,
ZipCode string,
County string,
Phone string,
MeasureID string,
Question string,
AnswerDesc string,
StarRating Decimal(3,2),
StarFootnote string,
AnswerPercent string,
AnswerPercentFN string,
NumCompleted string,
NumCompletedFN string,
ResponseRate string,
ResponseRateFN string,
MeasureStartDate string,
MeasureEndDate string
)
ROW FORMAT SERDE'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar" = ",",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/HCAHPS_-_Hospital/';



DROP TABLE Hospital_General_Information2;
CREATE EXTERNAL TABLE Hospital_General_Information2(ProviderID string,
HospitalName string,
Address string,
City string,
State string,
ZipCode string,
County string,
Phone string,
HospitalType string,
HospitalOwnership string,
Emergency string
)
ROW FORMAT SERDE'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar" = ",",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/Hospital_General_Information/';


DROP TABLE Measure_Dates2;
CREATE EXTERNAL TABLE Measure_Dates2(Measure_Name string,
Measure_ID string,
Measure_Start_Quarter string,
Measure_Start_Date string,
Measure_End_Quarter string,
Measure_End_Date string
)
ROW FORMAT SERDE'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar" = ",",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/Measure_Dates/';
