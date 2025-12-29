create database session03_ex04;
use session03_ex04;

create table student(
	student_id int auto_increment primary key,
    full_name varchar(100) not null,
    date_of_birth date not null,
    email varchar(100) not null unique
);

create table subject(
	subject_id int auto_increment primary key,
    subject_name varchar(100) not null unique,
    credit int check (credit > 0)
);

create table enrollment(
	student_id int not null,
    subject_id int not null,
    enroll_date date default (current_date()),
    primary key (student_id, subject_id),
    foreign key (student_id) references student(student_id),
    foreign key (subject_id) references subject(subject_id)
);

insert into student (full_name, date_of_birth, email) values
('Nguyễn Văn A', '2006-01-01', 'nva@gmail.com'),
('Nguyễn Văn B', '2006-02-01', 'nvb@gmail.com'),
('Trần Văn C', '2006-04-12', 'tvc@gmail.com');

insert into subject(subject_name, credit) values
('Lập trình C',2),
('Lập trình front end cơ bản', 3),
('Lập trình front end với react', 4), 
('Cơ sở dữ liệu', 3);

insert into enrollment(student_id, subject_id) values
(1, 1),
(2, 1),
(1, 2),
(2,2);

select * from enrollment;
select subject_id, enroll_date from enrollment where student_id = 1;