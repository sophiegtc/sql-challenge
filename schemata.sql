--create dept_emp table
create table dept_emp (
	emp_no int,
	dept_no varchar(30) not null,
	primary key(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);
select * from dept_emp;

--create dept_manager table
create table dept_manager(
	dept_no varchar(30) not null,
	emp_no int,
	primary key(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);
select * from dept_manager;

--create departments table
create table departments(
	dept_no varchar(30) not null,
	dept_name varchar(30) not null,
	primary key(dept_no)
);

select * from departments;

--create emplouees table
create table employees(
	emp_no  int,
	emp_title_id varchar(30) not null,
	birth_date date,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	sex varchar(30) not null,
	hire_date date,
	primary key(emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);
select * from employees;

--create salaries table
create table salaries(
	emp_no int,
	salary int,
	primary key(emp_no)
);
select * from salaries;

--create titles table
create table titles(
	title_id varchar(30) not null,
	title varchar(30) not null,
	primary key(title_id)
);
select * from titles;



