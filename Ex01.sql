create database session03_ex01;
use session03_ex01;

create table student(
	student_id int auto_increment primary key,
    full_name varchar(100) not null,
    date_of_birth date not null,
    email varchar(100) not null unique
);

insert into student (full_name, date_of_birth, email) values
('Nguyễn Văn A', '2006-01-01', 'nva@gmail.com'),
('Nguyễn Văn B', '2006-02-01', 'nvb@gmail.com'),
('Trần Văn C', '2006-04-12', 'tvc@gmail.com');

select * from student;

select student_id, full_name from student;