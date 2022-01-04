# 3 PROFESSORS

insert into professor (p_ssn, p_name, p_street, p_city, p_state, p_zipcode, p_telephone_area_code, p_telephone_number, p_sex, p_title, p_salary)
values (874033615, "Doina Bein", "800 N State College Blvd", "Fullerton", "CA", 92831, 657, 2784822, "Female", "Dr.", 65000);


insert into professor (p_ssn, p_name, p_street, p_city, p_state, p_zipcode, p_telephone_area_code, p_telephone_number, p_sex, p_title, p_salary)
values (246463421, "Rong Jin", "800 N State College Blvd", "Fullerton", "CA", 92831, 657, 2783700, "Female", "Dr.", 70000);

insert into professor (p_ssn, p_name, p_street, p_city, p_state, p_zipcode, p_telephone_area_code, p_telephone_number, p_sex, p_title, p_salary)
values (189050151, "Yu Bai", "800 N State College Blvd", "Fullerton", "CA", 92831, 657, 2785359, "Male", "Dr.", 50000);



# DEGREES

insert into degree(degree_holder, degree_name)
values (874033615, "B.S. in Computer Science");

insert into degree(degree_holder, degree_name)
values (874033615, "M.S. in Computer Science");

insert into degree(degree_holder, degree_name)
values (874033615, "Ph.D. in Computer Science");

insert into degree(degree_holder, degree_name)
values (246463421, "B.S. in Computer Science");

insert into degree(degree_holder, degree_name)
values (246463421, "M.S in Computer Science");

insert into degree(degree_holder, degree_name)
values (246463421, "Ph.D. in Computer Engineering");

insert into degree(degree_holder, degree_name)
values (189050151, "B.S. in Computer Engineering");

insert into degree(degree_holder, degree_name)
values (189050151, "M.S in Computer Engineering");

insert into degree(degree_holder, degree_name)
values (189050151, "Ph.D. in Computer Engineering");

# 2 DEPARTMENTS

insert into department (d_num, d_name, d_telephone_area_code, d_telephone_number, d_location, d_chair_ssn)
values (8399, "Computer Science", 657, 2783700, "CS-522", 874033615);

insert into department (d_num, d_name, d_telephone_area_code, d_telephone_number, d_location, d_chair_ssn)
values (9562, "Computer Engineering", 657, 2785987, "E-100G", 246463421);

# STUDENTS

# CS Students

insert into student (s_CWID, s_firstName, s_lastName, s_street, s_city, s_state, s_zipcode, s_telephone_area_code, s_telephone_number, s_major)
values (302651580, "Kyle", "Yang", "12754 Vern Ave", "Chino Hills", "CA", 76489, 626, 6567890, 8399);

insert into student (s_CWID, s_firstName, s_lastName, s_street, s_city, s_state, s_zipcode, s_telephone_area_code, s_telephone_number, s_major)
values (651599229, "Dominic", "Boneta", "76546 Goele Ave", "Monclair ", "CA", 60078, 626, 4561212, 8399);

insert into student (s_CWID, s_firstName, s_lastName, s_street, s_city, s_state, s_zipcode, s_telephone_area_code, s_telephone_number, s_major)
values (591237661, "Tina", "Gomez", "19945 Chespeake Lane", "La Verne", "CA", 12245, 213, 2805778, 8399);

insert into student (s_CWID, s_firstName, s_lastName, s_street, s_city, s_state, s_zipcode, s_telephone_area_code, s_telephone_number, s_major)
values (229716469, "Anthony", "Quach", "77865 Buena Villa Lane", "Santa Anita ", "CA", 45004, 626, 6573456, 8399);

# CE Students

insert into student (s_CWID, s_firstName, s_lastName, s_street, s_city, s_state, s_zipcode, s_telephone_area_code, s_telephone_number, s_major)
values (572616167, "Lala", "Ray", "3320 Gladwell Street", "Los Angeles", "CA", 74837, 626, 9054065, 9562);

insert into student (s_CWID, s_firstName, s_lastName, s_street, s_city, s_state, s_zipcode, s_telephone_area_code, s_telephone_number, s_major)
values (217053263, "Diego", "Luna", "4270 Walkers Ridge Way", "Downers Grove", "CA", 60177, 626, 6226475, 9562);

insert into student (s_CWID, s_firstName, s_lastName, s_street, s_city, s_state, s_zipcode, s_telephone_area_code, s_telephone_number, s_major)
values (993518602, "Eiza", "Gonzalez", "9 3rd St. ", "Woodmere", "CA", 53472, 213, 2780788, 9562);

insert into student (s_CWID, s_firstName, s_lastName, s_street, s_city, s_state, s_zipcode, s_telephone_area_code, s_telephone_number, s_major)
values (880260085, "Elizabeth", "Wang", "2104 Locust Court", "Des Moines", "CA", 33457, 909, 7689045, 9562);



# 4 COURSES

insert into course (course_num, course_dept_num, course_name, course_books, course_units)
values (223, 8399, "Java Programming", "Introduction to Programming Using Java
Book by David J. Eck", 3);

insert into course (course_num, course_dept_num, course_name, course_books, course_units)
values (131, 8399, "Data Structures", "Introduction to Data Structures by Roberta Kit", 3);

insert into course (course_num, course_dept_num, course_name, course_books, course_units)
values (180, 9562, "Digital Logic and Computer Structures", "Digital Logic Design and Computer Organization by Nikrouz Faroughi", 3);

insert into course (course_num, course_dept_num, course_name, course_books, course_units)
values (121, 8399, "Introduction to Programming", "An Introduction to Programming with C++ 8th Edition by Dian Zak", 3);



# 3 STUDENTS WITH MINORS

SET FOREIGN_KEY_CHECKS=0;
insert into minor( m_student_cwid, m_department_num)
values (302651580, 9562); # cs student with minor in ce

insert into minor( m_student_cwid, m_department_num)
values (993518602, 8399); # ce student with minor in cs

insert into minor( m_student_cwid, m_department_num)
values (217053263, 8399); # ce student with minor in cs

SET FOREIGN_KEY_CHECKS=1;



# 6 Sections

# CS Sections

insert into section(section_number, section_course_number, section_classroom, section_number_of_seats, section_meeting_days, section_begin_time, section_end_time, section_prof_ssn)
values(05, "223", "CS-104", 30, "MW", "8AM", "9:50AM", 874033615);

insert into section(section_number, section_course_number, section_classroom, section_number_of_seats, section_meeting_days, section_begin_time, section_end_time, section_prof_ssn)
values(07, "223", "CS-223", 35, "MW", "2PM", "3:45PM", 246463421);

insert into section(section_number, section_course_number, section_classroom, section_number_of_seats, section_meeting_days, section_begin_time, section_end_time, section_prof_ssn)
values(01, "131", "CS-112", 35, "TTH", "8AM", "9:50AM", 874033615);

insert into section(section_number, section_course_number, section_classroom, section_number_of_seats, section_meeting_days, section_begin_time, section_end_time, section_prof_ssn)
values(03, "131", "CS-310", 35, "MW", "12PM", "1:45PM", 246463421);

insert into section(section_number, section_course_number, section_classroom, section_number_of_seats, section_meeting_days, section_begin_time, section_end_time, section_prof_ssn)
values(21, "121", "ONLINE-ONLY", 40, "TTh", "10AM", "11:15AM", 246463421);

insert into section(section_number, section_course_number, section_classroom, section_number_of_seats, section_meeting_days, section_begin_time, section_end_time, section_prof_ssn)
values(02, "121", "ONLINE-ONLY", 30, "MW", "10AM", "11:15AM", 874033615);

# EC Sections

insert into section(section_number, section_course_number, section_classroom, section_number_of_seats, section_meeting_days, section_begin_time, section_end_time, section_prof_ssn)
values(12, "180", "CS-218", 40, "T", "7PM", "9:50PM", 189050151);

insert into section(section_number, section_course_number, section_classroom, section_number_of_seats, section_meeting_days, section_begin_time, section_end_time, section_prof_ssn)
values(9, "180", "CS-218", 40, "Th", "7PM", "9:50PM", 189050151);

insert into section(section_number, section_course_number, section_classroom, section_number_of_seats, section_meeting_days, section_begin_time, section_end_time, section_prof_ssn)
values(6, "180", "ONLINE-ONLY", 40, "TTh", "5PM", "6:15PM", 246463421);



# 20 enrollment records
SET FOREIGN_KEY_CHECKS=0; # change back to one after finishing enrollment

insert into enrollment(e_student_cwid, e_course_number,e_section_number, e_grade)
values (302651580, 223, 05, "A");
insert into enrollment(e_student_cwid, e_course_number, e_section_number, e_grade)
values (302651580,180, 06, "B-");
insert into enrollment(e_student_cwid, e_course_number, e_section_number, e_grade)
values (302651580,131, 01, "B+");
insert into enrollment(e_student_cwid, e_course_number, e_section_number, e_grade)
values (302651580,121, 02, "A");


insert into enrollment(e_student_cwid, e_course_number, e_section_number, e_grade)
values (993518602,121, 21, "A-");
insert into enrollment(e_student_cwid, e_course_number, e_section_number, e_grade)
values (993518602,131, 03, "A");
insert into enrollment(e_student_cwid, e_course_number, e_section_number, e_grade)
values (993518602,180, 09, "A");
insert into enrollment(e_student_cwid, e_course_number, e_section_number, e_grade)
values (993518602,223, 07, "A-");


insert into enrollment(e_student_cwid, e_course_number, e_section_number, e_grade)
values (217053263,121, 02, "B");
insert into enrollment(e_student_cwid, e_course_number, e_section_number, e_grade)
values (217053263,131, 01, "C");
insert into enrollment(e_student_cwid, e_course_number, e_section_number, e_grade)
values (217053263,180, 12, "A-");
insert into enrollment(e_student_cwid, e_course_number, e_section_number, e_grade)
values (217053263,223, 05, "B+");


insert into enrollment(e_student_cwid, e_course_number, e_section_number, e_grade)
values (651599229,121, 02, "B");
insert into enrollment(e_student_cwid, e_course_number, e_section_number, e_grade)
values (651599229,131, 03, "A-");

insert into enrollment(e_student_cwid, e_course_number, e_section_number, e_grade)
values (591237661,121, 21, "A");
insert into enrollment(e_student_cwid, e_course_number, e_section_number, e_grade)
values (591237661,131, 01, "A");
insert into enrollment(e_student_cwid, e_course_number, e_section_number, e_grade)
values (591237661,223, 07, "A");


insert into enrollment(e_student_cwid, e_course_number, e_section_number, e_grade)
values (880260085,121, 21, "B+");
insert into enrollment(e_student_cwid, e_course_number, e_section_number, e_grade)
values (880260085,131, 03, "A");
insert into enrollment(e_student_cwid, e_course_number, e_section_number, e_grade)
values (880260085,180, 12, "9");
