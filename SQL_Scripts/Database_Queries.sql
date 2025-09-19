--1. Applicants older than 22SELECT full_name, age
FROM Person
WHERE age > 22;

--2. Applicants and their preferred learning style 
SELECT full_name, Preferred_Learning_Style
FROM Person;

--3. Gender distribution (Male vs Female)
SELECT gender, COUNT(*) AS total
FROM Person
GROUP BY gender;

--4. Applicants with faculty and graduation year 
SELECT p.full_name, e.faculty, e.GraduationYear
FROM Education e
JOIN Person p ON e.person_id = p.person_id;

--5. Applicants with GPA higher than 3.0

SELECT p.full_name, e.GPA
FROM Education e
JOIN Person p ON e.person_id = p.person_id
WHERE e.GPA > 3.0;

--6. Applicants and their chosen track
SELECT p.full_name, t.track_name
FROM Expectation ex
JOIN Person p ON ex.person_id = p.person_id
JOIN Track t ON ex.track_id = t.track_id;

--7. Applicants who chose Data Analysis track
SELECT p.full_name
FROM Expectation ex
JOIN Person p ON ex.person_id = p.person_id
JOIN Track t ON ex.track_id = t.track_id
WHERE t.track_name = 'Data Analysis';

--8. Applicants and their goals
SELECT p.full_name, ex.Goal
FROM Expectation ex
JOIN Person p ON ex.person_id = p.person_id;

--9. Applicants and their application status
SELECT p.full_name, a.a_status
FROM Application_Status a
JOIN Person p ON a.person_id = p.person_id;

--10. Applicants and their skills (with proficiency level)
SELECT p.full_name, s.skill_name, ps.Level
FROM Person_Skills ps
JOIN Person p ON ps.person_id = p.person_id
JOIN Skills s ON ps.skill_id = s.skill_id;

--11. Most popular track among applicants
SELECT t.track_name, COUNT(*) AS total_students
FROM Expectation ex
JOIN Track t ON ex.track_id = t.track_id
GROUP BY t.track_name
ORDER BY total_students DESC;


--12. Accepted applicants and their chosen track 
SELECT p.full_name, t.track_name, a.a_status
FROM Application_Status a
JOIN Person p ON a.person_id = p.person_id
JOIN Expectation ex ON p.person_id = ex.person_id
JOIN Track t ON ex.track_id = t.track_id
WHERE a.a_status = 'Accepted';

--13. Accepted applicants with GPA higher than 3.5
SELECT p.full_name, e.GPA, a.a_status
FROM Education e
JOIN Person p ON e.person_id = p.person_id
JOIN Application_Status a ON p.person_id = a.person_id
WHERE e.GPA > 3.5 AND a.a_status = 'Accepted';
