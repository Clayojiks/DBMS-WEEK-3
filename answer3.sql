-- USE aghakan_db;

-- quiz 1.1 BASIC AGG FUNCTIONS
SELECT COUNT(*) 
AS total_admissions
FROM admissions;

-- quiz 1.2
SELECT AVG(DATEDIFF(discharge_date,admission_date))
AS average_length_of_stay
FROM admissions,discharges;

-- quiz 2.1 GROUPING DATA
SELECT primary_diagnosis, COUNT(*) AS total_admissions
FROM admissions
GROUP BY primary_diagnosis;

-- quiz 2.2
SELECT service, AVG(DATEDIFF(discharge_date, admission_date)) 
AS average_length_of_stay 
FROM admissions,discharges
GROUP BY service;

-- quiz 3.1 COMBINING AGG AND FILTERING
SELECT service, COUNT(*) AS total_admissions
FROM admissions
GROUP BY service
Having COUNT(*) > 5;

-- quiz 3.2
SELECT primary_diagnosis, AVG(DATEDIFF(discharge_date,admission_date))
AS length_of_stay
FROM admissions,discharges
WHERE primary_diagnosis = 'Stroke';

-- quiz 4.1 ADVANCED GROUPING AND SUMMARIZING
SELECT acuity, COUNT(*) AS total_visits
FROM ed_visits
GROUP BY acuity;

-- quiz 4.2
SELECT primary_diagnosis,service, COUNT(*)
AS total_admissions
FROM admissions
GROUP BY primary_diagnosis,service;

-- quiz 5.2 PRACTICAL FINANCIAL ANALYSIS
SELECT DATE_FORMAT(admission_date, '%Y-%m') AS admission_month, COUNT(*) AS total_admissions
FROM admissions
GROUP BY admission_month
ORDER BY admission_month;

-- quiz 5.2
SELECT primary_diagnosis,MAX(DATEDIFF(discharge_date,admission_date)) AS max_length_of_stay
FROM admissions,discharges
GROUP BY primary_diagnosis;

-- BONUS CHALLENGE
SELECT service, COUNT(*) AS total_admissions,
AVG(DATEDIFF(discharge_date,admission_date)) AS average_length_of_stay
FROM admissions,discharges
GROUP BY service
ORDER BY average_length_of_stay DESC;
