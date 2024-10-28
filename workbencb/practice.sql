-- Skolas vadības sistēmas datubāze (School Management System)
-- Izveidot datubāzi, kas reprezentē skolēnus, skolotājus,
-- kursus un departamentus, parādot dažādas attiecības starp tiem.

-- 1. uzdevums
-- Izveidot skolas vadības datubāzi (ar SQL sintaksi)

-- 2. uzdevums
-- Katram skolēnam (vārds un e-pasts) ir viens profils ar papildinformāciju
-- (adrese un telefona numurs), un katram profilam pieder tikai viens skolēns.
-- Izveidot nepieciešamās datubāzes tabulas un saites, lai glabātu minētos datus.
-- Ievadīt piecu skolēnu un viņu profilu datus. Izmantot “LAST_INSERT_ID()” funkciju
-- Izveidot vaicājumu, lai atrastu visus skolēnus kopā ar viņu profiliem.


-- create database school_management_system;

use school_management_system;

CREATE TABLE students (
    student_name VARCHAR(45),
    student_email VARCHAR(45)
);

CREATE TABLE student_profiles (
    student_address VARCHAR(45),
    student_number INT
);

insert into students values 
	("Maksims", "email@gmail.com"),
	("Daniils", "emasadil@gmail.com"),
	("Edgars", "dsa@gmail.com"),
	("Sigmars", "2222@gmail.com"),
	("Ligma", "asdgq@gmail.com");
    

set @last_id = LAST_INSERT_ID();
insert into student_profiles values 
(@last_id, "address1", 12352678),
(@last_id, "address2", 12377678),
(@last_id, "address3", 12345678),
(@last_id, "address4", 223121678),
(@last_id, "address5", 12323378);
    
    
SELECT 
    *
FROM
    students
        LEFT JOIN
    student_profiles
		ON 
	students.id = student_profiles.student_id;

