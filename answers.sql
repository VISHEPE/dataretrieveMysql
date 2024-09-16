--PART 1 Basic data retrieval
--Query the database for first,last and date of birth

SELECT first_name, last_name, date_of_birth
FROM patients;

--Query to retrieve the provider_id, first_name and provider_specialty from the providers table.
SELECT provider_id, first_name, provider_specialty
FROM providers;

--PART 2 pattern based filtering
--query where patient name begin with Ab
SELECT *
FROM patients
WHERE first_name LIKE 'Ab%';

--providers whose speciality ends in y
SELECT *
FROM providers
WHERE provider_specialty LIKE '%y';

--PART 3 Comparison Operators
-- patient born after "1980-01-01"
SELECT *
FROM patients
WHERE date_of_birth > '1980-01-01';

--query to retrieve visits where the acuity level is 2 or higher.

SELECT *
FROM ed_visits
WHERE acuity >= 2;

--Part 4: WHERE Clause with Logical Operators
--query to find patients who speak Spanish.
SELECT first_name, last_name, language
FROM patients
WHERE language = 'Spanish';

--query to retrieve visits where the reason is "Migraine" and the disposition is "Admitted".

SELECT visit_id, patient_id, reason_for_visit, ed_disposition
FROM ed_visits
WHERE reason_for_visit = 'Migraine' AND ed_disposition = 'Admitted';
--query to find patients born between 1975 and 1980.
SELECT patient_id, first_name, last_name, date_of_birth
FROM patients
WHERE date_of_birth BETWEEN '1975-01-01' AND '1980-12-31';

--part 5 sorting data
--query to retrieve patient names and sort them in alphabetical order by last name.
SELECT first_name, last_name
FROM patients
ORDER BY last_name ASC;

--query to list all visits sorted by the date of the visit, starting from the most recent.
SELECT *
FROM visits
ORDER BY date_of_visit DESC;

--Part 6: Advanced Filtering
--query to retrieve all admissions where the primary diagnosis is "Stroke" and the discharge disposition is "Home".
SELECT *
FROM admissions
WHERE primary_diagnosis = 'Stroke'
  AND service = 'Home';

--query to find providers who joined after 1995 and specialize in either Pediatrics or Cardiology.
SELECT *
FROM providers
WHERE date_joined > '1995-12-31'
  AND (provider_specialty = 'Pediatrics' OR provider_specialty = 'Cardiology');


  --BONUS
  SELECT *
FROM discharges
WHERE discharge_disposition = 'Home'
  AND discharge_date BETWEEN '2018-03-01' AND '2018-03-07';
