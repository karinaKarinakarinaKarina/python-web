-- CREATE TABLE kafedra ( 
-- 	id integer not null, 
-- 	kafedra_name varchar(40), 
-- 	dekanat varchar(40), 
-- 	primary key (id));
-- CREATE TABLE student_group (
-- 	id integer not null, 
-- 	id_kafedra integer not null,
-- 	group_name varchar(40), 
-- 	primary key (id), 
-- 	foreign key (id_kafedra) references kafedra (id));
-- CREATE TABLE student (
-- 	id integer not null, 
-- 	id_group integer not null,
-- 	name varchar(40), 
-- 	passport varchar(40), 
-- 	primary key (id), 
-- 	foreign key (id_group) references student_group (id))
	
-- insert into kafedra (id, kafedra_name, dekanat) 
-- values (1, 'Informatics', 'IT');

-- insert into kafedra (id, kafedra_name, dekanat) 
-- values (2, 'Physics', 'Radio and television');

-- insert into student_group  (id,  id_kafedra, group_name) 
-- values (1, 2, 'БРР2001');

-- insert into student_group  (id, id_kafedra, group_name) 
-- values (2, 2, 'БРИ2001');

-- insert into student_group  (id, id_kafedra, group_name) 
-- values (3, 1, 'БВТ2203');

-- insert into student_group  (id, id_kafedra, group_name) 
-- values (4, 1, 'БСТ2101');

-- insert into student  (id, id_group  , name, passport) 
-- values (1, 1, 'Petya', '399404');

-- insert into student  (id, id_group  , name, passport) 
-- values (2, 1, 'Katya', '399835');

-- insert into student  (id, id_group , name, passport) 
-- values (3, 1, 'Anna', '356454');

-- insert into student  (id, id_group ,  name, passport) 
-- values (4, 1, 'Boris', '330494');

-- insert into student  (id, id_group , name, passport) 
-- values (5, 1, 'Vlad', '084534');

-- insert into student  (id, id_group , name, passport) 
-- values (6, 2, 'Vova', '067834');

-- insert into student  (id, id_group , name, passport) 
-- values (7, 2, 'Vadim', '124534');

-- insert into student  (id, id_group , name, passport) 
-- values (8, 2, 'Masha', '924544');

-- insert into student  (id, id_group , name, passport) 
-- values (9, 2, 'Denis', '624534');

-- insert into student  (id, id_group , name, passport) 
-- values (10, 2, 'Adam', '873434');

-- insert into student  (id, id_group , name, passport) 
-- values (11, 3, 'Inna', '542734');

-- insert into student  (id, id_group , name, passport) 
-- values (12, 3, 'Anastasia', '683784');

-- insert into student  (id, id_group , name, passport) 
-- values (13, 3, 'Alexandr', '540973');

-- insert into student  (id, id_group , name, passport) 
-- values (14, 3, 'Kirill', '563974');

-- insert into student  (id, id_group , name, passport) 
-- values (15, 3, 'Oleg', '732074');

-- insert into student  (id, id_group , name, passport) 
-- values (16, 4, 'Gosha', '163934');

-- insert into student  (id, id_group , name, passport) 
-- values (17, 4, 'Mihail', '258434');

-- insert into student  (id, id_group , name, passport) 
-- values (18, 4, 'Lera', '467934');

-- insert into student  (id, id_group , name, passport) 
-- values (19, 4, 'Daniil', '194741');

-- insert into student  (id, id_group , name, passport) 
-- values (20, 4, 'Mark', '856434');
SELECT * FROM kafedra;
SELECT * FROM student_group;
SELECT * FROM student;


