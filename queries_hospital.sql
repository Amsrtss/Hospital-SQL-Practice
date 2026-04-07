-- 1. Show first name, last name, and gender of patients whose gender is 'M'
SELECT first_name, last_name, gender
FROM patients
where gender = 'M';

-- 2. Show first name and last name concatinated into one column to show their full name.
SELECT
CONCAT(first_name, ' ', last_name) AS full_name
FROM patients;

-- 3. Show how many patients have a birth_date with 2010 as the birth year.
SELECT COUNT(*) AS total_patients
FROM patients
WHERE YEAR(birth_date) = 2010;

-- 4. Show first name, last name, and the full province name of each patient. Example: 'Ontario' instead of 'ON'
SELECT p.first_name, p.last_name, pr.province_name
FROM patients p
JOIN province_names pr
ON p.province_id=pr.province_id;

-- 5. Show unique birth years from patients and order them by ascending.
SELECT DISTINCT YEAR(birth_date) AS birth_year
FROM patients
ORDER BY birth_year ASC;

-- 6. Show the total amount of male patients and the total amount of female patients in the patients table. Display the two results in the same row.
SELECT 
SUM(Gender = 'M') as male_count, 
SUM(Gender = 'F') AS female_count
FROM patients;

-- 7. Display patient's full name, height in the units feet rounded to 1 decimal, weight in the unit pounds rounded to 0 decimals, birth_date, gender non abbreviated. Convert CM to feet by dividing by 30.48. Convert KG to pounds by multiplying by 2.205.
SELECT
CONCAT(first_name, ' ', last_name) AS full_name,
ROUND(height / 30.48, 1) AS height_feet,
ROUND(weight * 2.205, 0) AS weight_pounds,
birth_date,
CASE WHEN gender = 'M' THEN 'Male'
WHEN gender = 'F' THEN 'Female'
END AS gender
FROM patients;

-- 8. We need a breakdown for the total amount of admissions each doctor has started each year. Show the doctor_id, doctor_full_name, specialty, year, total_admissions for that year.
SELECT d.doctor_id,
CONCAT(d.first_name, ' ', d.last_name) AS doctor_full_name, d.speciality,
YEAR(a.admission_date) AS year,
COUNT(*) AS total_admissions
FROM admissions a
JOIN doctors d
ON a.attending_doctor_id = d.doctor_id
GROUP BY d.doctor_id, doctor_full_name, d.speciality, year
ORDER BY d.doctor_id, year;

-- 9. Each admission costs $50 for patients without insurance, and $10 for patients with insurance. All patients with an even patient_id have insurance. Give each patient a 'Yes' if they have insurance, and a 'No' if they don't have insurance. Add up the admission_total cost for each has_insurance group.
SELECT 'No' AS has_insurance, count(*) * 50 AS cost
FROM admissions 
WHERE patient_id % 2 = 1 
GROUP BY has_insurance
UNION
SELECT 'Yes' AS has_insurance, count(*) * 10 AS cost
FROM admissions 
WHERE patient_id % 2 = 0 
GROUP BY has_insurance;

-- 10. Show patient_id, first_name, last_name, and attending doctor's specialty. Show only the patients who has a diagnosis as 'Poison' and the doctor's first name is 'Chas' Check patients, admissions, and doctors tables for required information.
SELECT p.patient_id, p.first_name, p.last_name, d.speciality
FROM patients p
JOIN admissions a
ON p.patient_id = a.patient_id
JOIN doctors d
ON a.attending_doctor_id = d.doctor_id
WHERE a.diagnosis LIKE '%poison%'
AND d.first_name = 'Chas';
