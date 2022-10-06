INSERT INTO department (description)
VALUES
('Human-Resources'),
('Merchandising'),
('Sales'),
('Maintenance'),
('Technology'),
('Management');

INSERT INTO employee (last_name, first_name, department_id)
VALUES
('Rodriguez','Benny', null),
('Smalls','Scott', null),
('Porter','Ham', null),
('Yeah-Yeah','McClennen', null),
('DeNunez','Kenny', null),
('Palledorous','Micahel-Squints', null),
('Weeks','Grover', 2),
('Timmons','Timmy', null),
('Timmons','Tommy-Repeat', null),
('Peffercorn','Wendy', null),
('Bambino','The-Great', null);

INSERT INTO manager (last_name, first_name, department_id)
VALUES
('Judge','Aaron', 6),
('','', 6),
('','', 6),
('','', 6),
('','', 6);