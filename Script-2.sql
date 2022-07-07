-- 1 Contare quanti iscritti ci sono stati ogni anno 
-- la data di iscrizione sulla tabella students è enrolment_date)
SELECT YEAR (enrolment_date), count(*) 
FROM students  
GROUP BY YEAR (enrolment_date)
ORDER BY YEAR (enrolment_date);

-- 2 Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia

SELECT * 
FROM students 
WHERE degree_id = 53;

-- Prova con JOIN 

SELECT s.name, s.surname, d.name
FROM students s 
INNER JOIN degrees d 
ON d.id = s.degree_id 
WHERE degree_id = 53;

-- 3 Selezionare tutti i corsi in cui insegna Fulvio Amato

SELECT t.name, t.surname, c.name as 'nome corso'
FROM teachers t
INNER JOIN course_teacher ct 
ON ct.course_id = t.id
INNER JOIN courses c 
ON ct.course_id = c.id 
WHERE t.name = 'Fulvio';

-- 4 Selezionare tutti gli studenti con i dati relativi al corso di laurea 
-- a cui sono iscritti e il relativo dipartimento,
--  in ordine alfabetico per cognome e nome

SELECT s.surname, s.name , d.name,  d2.name 
FROM students s 
INNER JOIN degrees d 
ON s.id = d.id
INNER JOIN departments d2 
ON s.id= d2.id 
ORDER BY s.surname, s.name; 

-- 5 Contare quanti corsi di laurea ci sono per ogni dipartimento 
-- e mostrare nome dipartimento e numero di corsi

SELECT count(d.id), d.name, d2.name 
FROM `degrees` d 
INNER JOIN departments d2 
ON d.department_id= d2.id  
GROUP BY d.department_id ;
