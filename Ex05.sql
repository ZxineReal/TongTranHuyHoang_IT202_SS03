create database session03_ex05;
use session03_ex05;

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

create table score(
	student_id int not null,
    subject_id int not null,
    mid_score decimal(4,2) check(mid_score >=0 and mid_score <= 10),
    final_score decimal(4,2) check(final_score >=0 and final_score <= 10),
    unique(student_id,subject_id),
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

insert into score(student_id, subject_id, mid_score, final_score) values
(1, 1, 5, 6),
(1, 2, 7, 7),
(2, 3, 9, 8);

select * from score;
select student_id from score where final_score >=8;