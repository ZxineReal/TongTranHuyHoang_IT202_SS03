create database session03_ex03;
use session03_ex03;

create table subject(
	subject_id int auto_increment primary key,
    subject_name varchar(100) not null unique,
    credit int check (credit > 0)
);

insert into subject(subject_name, credit) values
('Lập trình C',2),
('Lập trình front end cơ bản', 3),
('Lập trình front end với react', 4), 
('Cơ sở dữ liệu', 3);

update subject set credit = 4 where subject_id = 4;
update subject set subject_name = 'Lập trình Front End nâng cao' where subject_id = 3;

select * from subject;