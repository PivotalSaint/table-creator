DROP TABLE IF EXISTS department;
DROP TABLE IF EXISTS employeeRole;
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS manager;

CREATE TABLE department (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    deptArea VARCHAR(30) NOT NULL
);

CREATE TABLE employeeRole (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    departmentRole VARCHAR(30) NOT NULL,
    departmentSalary DECIMAL(7) NOT NULL,
    department INTEGER,
    CONSTRAINT fk_department
        FOREIGN KEY (department_id)
        REFERENCES department(id)
        ON DELETE SET NULL
);

CREATE TABLE employee (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    department INTEGER,
    CONSTRAINT fk_department
        FOREIGN KEY (department_id)
        REFERENCES department(id)
        ON DELETE SET NULL,
    employeeRole INTEGER,
    CONSTRAINT fk_employeeRole
        FOREIGN KEY (employeeRole_id)
        REFERENCES employeeRole(id)
        ON DELETE SET NULL,
    manager INTEGER,
    CONSTRAINT fk_manager
        FOREIGN KEY (manager_id)
        REFERENCES manager(id)
        ON DELETE SET NULL
);

CREATE TABLE manager (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    first_name AUTO_INCREMENT NOT NULL,
    last_name AUTO_INCREMENT NOT NULL,
    department INTEGER,
    CONSTRAINT fk_department
        FOREIGN KEY (department_id)
        REFERENCES department(id)
        ON DELETE SET NULL
    employeeRole INTEGER,
    CONSTRAINT fk_employeeRole
        FOREIGN KEY (employeeRole_id)
        REFERENCES employeeRole(id)
        ON DELETE SET NULL,
);