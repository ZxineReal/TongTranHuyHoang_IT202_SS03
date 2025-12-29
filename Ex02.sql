create database session03_ex02;
use session03_ex02;

create table student(
	student_id int auto_increment primary key,
    full_name varchar(100) not null,
    date_of_birth date not null,
    email varchar(100) not null unique
);

insert into student (full_name, date_of_birth, email) values
('Nguyễn Văn A', '2006-01-01', 'nva@gmail.com'),
('Nguyễn Văn B', '2006-02-01', 'nvb@gmail.com'),
('Trần Văn C', '2006-04-12', 'tvd@gmail.com'),
('Phạm Văn E', '2005-01-02', 'pve@gmail.com'),
('Lê Văn F', '2000-02-10' ,'lvf@gmail.com');

select * from student;

select student_id, full_name from student;

update student set email = 'tvc@gmail.com' where student_id = 3;
update student set date_of_birth = '2006-12-10' where student_id = 2;
delete from student where student_id = 5;

select * from student;