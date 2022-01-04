

CREATE TABLE professor (
		p_ssn numeric(9) not null, # primary key

		p_name varchar(25) not null,

		p_street varchar(35) not null,
		p_city varchar(25) not null,
		p_state varchar (25) not null,
		p_zipcode numeric (10) not null,

		p_telephone_area_code numeric (3) not null,
		p_telephone_number numeric (7) not null,

		p_sex enum("Female", "Male") not null, # update to be inclusive.

		p_title enum("Ms.", "Mrs. ", "Mr. ", "Dr. ") not null,

		p_salary numeric(6) not null,

        primary key (p_ssn));

CREATE TABLE degree (
		degree_holder numeric (9) not null, # ssn 

        degree_name varchar (30) not null,

        primary key (degree_holder, degree_name),

        foreign key (degree_holder) references professor(p_ssn));

create table department (
		d_num numeric(5) not null, #primary key

        d_name varchar(30) not null,

        d_telephone_area_code numeric (3) not null,
		d_telephone_number numeric (7) not null,

        d_location varchar(15) not null,

        d_chair_ssn numeric (9) not null, # foreign key

        primary key(d_num),

        foreign key (d_chair_ssn) references professor(p_ssn)
        );

create table student (
		s_CWID numeric(10) not null, # primary key

        s_firstName varchar(20) not null,
        s_lastName varchar (20) not null,

        s_street varchar(35) not null,
		s_city varchar(25) not null,
		s_state varchar (25) not null,
		s_zipcode numeric (10) not null,

		s_telephone_area_code numeric (3) not null,
		s_telephone_number numeric (7) not null,

        s_major numeric(5) not null, # foreign key, is the department number

        primary key (s_CWID),
        foreign key (s_major) references department(d_num)
        );

create table minor (
		m_student_cwid numeric (9) not null,
        m_department_num numeric (5) not null ,
        primary key (m_student_cwid, m_department_num),
        foreign key (m_student_cwid) references student(s_cwid),
        foreign key (m_department_num) references department(d_num)

);


create table course (
        course_num varchar(10) not null, #primary key "CPSC-313"
        course_dept_num numeric (5) not null, #foreign key
        course_name varchar (70) not null, # OS Concepts
        course_books varchar (70) not null,
        course_units int not null,
        primary key(course_num),
        foreign key(course_dept_num) references department(d_num));

create table section (
        section_number numeric(6) not null, # primary key
		section_course_number varchar(10) not null,
        section_classroom varchar (15) not null,
        section_number_of_seats numeric(3) not null,
        section_meeting_days char (15) not null,
        section_begin_time varchar (15) not null,
        section_end_time varchar (15) not null,
        section_prof_ssn numeric (9) not null, #foreign key
        primary key(section_number),
        foreign key(section_prof_ssn) references professor(p_ssn),
        foreign key(section_course_number) references course(course_num)
        );

create table prereqs(
        course_number varchar (10) not null,
        prer_course_number varchar (10) not null,

        primary key(course_number, prer_course_number),
        foreign key(course_number) references course(course_num),
        foreign key(prer_course_number) references course(course_num)
        );

create table enrollment (
        e_student_cwid numeric (9) not null,
        e_course_number varchar(10) not null,
        e_section_number numeric (6) not null,

        e_grade enum("A", "A-", "B+", "B", "B-", "C+", "C", "C-", "D+", "D", "D-", "F"),

        primary key(e_student_cwid, e_course_number, e_section_number),
        foreign key (e_student_cwid) references student(s_cwid),
        foreign key (e_course_number) references course(course_num),
        foreign key ( e_section_number) references section(section_number));
