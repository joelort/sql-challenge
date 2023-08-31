-- Create the Department table
CREATE TABLE department (
    dept_no VARCHAR(10) PRIMARY KEY,
    dept_name VARCHAR(255)
);

-- Create the Dept_Emp table
CREATE TABLE dept_emp (
    emp_no VARCHAR(50),
    dept_no VARCHAR(10),
    FOREIGN KEY (dept_no) REFERENCES department(dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

-- Create the Dept_Manager table
CREATE TABLE dept_manager (
    dept_no VARCHAR(10),
    emp_no VARCHAR(50),
    FOREIGN KEY (dept_no) REFERENCES department(dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

-- Create the Employees table
CREATE TABLE employees (
    emp_no VARCHAR(50) PRIMARY KEY,
    emp_title_id VARCHAR(50),
    birth_date DATE,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    sex VARCHAR(10),
    hire_date DATE
);

-- Create the Salaries table
CREATE TABLE salaries (
    emp_no VARCHAR(50),
    salary NUMERIC,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    PRIMARY KEY (emp_no)
);

-- Create the Titles table
CREATE TABLE titles (
    title_id VARCHAR(50) PRIMARY KEY,
    title VARCHAR(255)
);