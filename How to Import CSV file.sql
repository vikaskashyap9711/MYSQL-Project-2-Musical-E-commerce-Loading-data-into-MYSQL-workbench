USE new_musicstore;

CREATE TABLE employees (
    employee_id INT,
    last_name VARCHAR(50),
    first_name VARCHAR(50),
    title VARCHAR(100),
    reports_to INT,
    levels VARCHAR(10),
    birthdate DATE,
    hire_date DATE,
    address VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    postal_code VARCHAR(20),
    phone VARCHAR(20),
    fax VARCHAR(20),
    email VARCHAR(100),
    PRIMARY KEY (employee_id)
);


LOAD DATA INFILE 'D:\\My portfolio\\SQL\\music store data\\music store data\\employee.csv'
INTO TABLE employees
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n' -- Use \r\n instead of \n for Windows line endings
IGNORE 1 LINES;
