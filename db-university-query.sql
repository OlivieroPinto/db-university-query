-- 1 Selezionare il dipartimento il cui capo � Bernardo Sanna
SELECT * FROM departments WHERE head_of_department = 'Bernardo Sanna' ;
-- 2 Selezionare tutti i corsi di laurea magistrale
SELECT * FROM courses 
-- 3 Selezionare tutti i corsi che valgono pi� di 10 crediti
SELECT * FROM courses WHERE cfu > 10;
-- 4 Selezionare tutti gli insegnanti che non hanno il numero di telefono
SELECT * FROM teachers WHERE phone IS NULL;
-- 5 Selezionare tutti gli studenti che hanno pi� di 30 anni
SELECT * FROM students WHERE TIMESTAMPDIFF(YEAR,date_of_birth ,CURDATE()) > 30; 
-- 6 Selezionare tutti gli studenti che hanno un indirizzo email gmail o yahoo
SELECT * FROM students WHERE email LIKE '%gmail%' OR '%yahoo%';
-- 7 Selezionare tutti gli esami che si sono svolti a luglio 2020
SELECT * FROM exams WHERE MONTH (`date`) = 7 ;