create database session03_ex06;
use session03_ex06;

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

create table score(
	student_id int not null,
    subject_id int not null,
    mid_score decimal(4,2) check(mid_score >=0 and mid_score <= 10),
    final_score decimal(4,2) check(final_score >=0 and final_score <= 10),
    unique(student_id,subject_id),
    foreign key (student_id) references student(student_id),
    foreign key (subject_id) references subject(subject_id)
);

insert into student(full_name, date_of_birth, email) values 
('Nguyễn Văn A', '2006-01-02', 'nva@gmail.com'),
('Nguyễn Văn B', '2006-02-04', 'nvb@gmail.com');

insert into subject(subject_name, credit) values
('Cơ sở dữ liệu', 2),
('Lập trình web', 3);

insert into enrollment(student_id, subject_id, enroll_date) values
(1, 1),
(1, 2),
(2, 1),
(2, 2);

insert into score(student_id, subject_id, mid_score, final_score) values 
(1, 2, 6, 7),
(1, 1, 7, 8),
(2, 1, 9, 6),
(2, 2, 7, 5);

update score set mid_score = 9 where student_id = 1 and subject_id = 2;

delete from enrollment where student_id = 2 and subject_id = 1;

SELECT 
    student.full_name,
    subject.subject_name,
    score.mid_score,
    score.final_score
FROM student, subject, score
WHERE student.student_id = score.student_id
  AND subject.subject_id = score.subject_id;

