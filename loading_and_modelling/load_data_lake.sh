for file in ~/hospital_compare/Hospital_Revised_Flatfiles/*; do sed -i '1d' "$file"; done
for f in ~/hospital_compare/Hospital_Revised_Flatfiles/*; do mv "$f" "${f// /_}"; done
hdfs dfs -mkdir /user/w205/hospital_compare/
hdfs dfs -put ~/hospital_compare/Hospital_Revised_Flatfiles/ /user/w205/hospital_compare/
hdfs dfs -put Timely_and_Effective_Care_-_Hospital.csv /user/w205/hospital_compare/Timely_and_Effective_Care_-_Hospital/Timely_and_Effective_Care_-_Hospital.csv
hdfs dfs -put Healthcare_Associated_Infections_-_Hospital.csv /user/w205/hospital_compare/Healthcare_Associated_Infections_-_Hospital/Healthcare_Associated_Infections_-_Hospital.csv
hdfs dfs -put Readmissions_and_Deaths_-_Hospital.csv /user/w205/hospital_compare/Readmissions_and_Deaths_-_Hospital/Readmissions_and_Deaths_-_Hospital.csv
hdfs dfs -put Outpatient_Imaging_Efficiency_-_Hospital.csv /user/w205/hospital_compare/Outpatient_Imaging_Efficiency_-_Hospital/Outpatient_Imaging_Efficiency_-_Hospital.csv
hdfs dfs -put HCAHPS_-_Hospital.csv /user/w205/hospital_compare/HCAHPS_-_Hospital/HCAHPS_-_Hospital.csv
hdfs dfs -put Hospital_General_Information.csv /user/w205/hospital_compare/Hospital_General_Information/Hospital_General_Information.csv
hdfs dfs -put Measure_Dates.csv /user/w205/hospital_compare/Measure_Dates/Measure_Dates.csv
