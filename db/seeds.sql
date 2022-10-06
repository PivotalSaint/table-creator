INSERT INTO department (description)
VALUES
('Human-Resources'),
('Merchandising'),
('Sales'),
('Maintenance'),
('Technology'),
('Management');

INSERT INTO employeeRole (department, departmentSalary)
VALUES
(1, '$45,000.00'),
(2, '$50,000.00'),
(3, '$55,000.00'),
(4, '$40,000.00'),
(5, '$60,000.00'),
(6, '$80,000.00');

INSERT INTO employee (last_name, first_name, department_id, manager)
VALUES
('Rodriguez','Benny', NULL, NULL),
('Smalls','Scott', NULL, NULL),
('Porter','Ham', NULL, NULL),
('Yeah-Yeah','McClennen', NULL, NULL),
('DeNunez','Kenny', NULL, NULL),
('Palledorous','Micahel-Squints', NULL),
('Weeks','Grover', NULL, NULL),
('Timmons','Timmy', NULL, NULL),
('Timmons','Tommy-Repeat', NULL, NULL),
('Peffercorn','Wendy', NULL, NULL),
('Bambino','The-Great', NULL, NULL);

INSERT INTO manager (last_name, first_name, department_id)
VALUES
('Judge','Aaron', NULL),
('Ruth','Babe', NULL),
('Marris','Roger', NULL),
('Robinson','Jackie', NULL),
('Clemente','Roberto', NULL);