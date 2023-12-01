"1. Créez la base de données SomeCompany à l’aide d’une requête, ajoutez une condition sur l'existence de SomeCompany."

CREATE DATABASE IF NOT EXISTS SomeCompany;

"2. Créez la table Employees."

CREATE TABLE IF NOT EXISTS Employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    birthdate DATE NOT NULL,
    position VARCHAR(255) NOT NULL,
    department_id INT
);

"3. Créez la table Departments."

CREATE TABLE IF NOT EXISTS Departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(255) NOT NULL,
    department_head INT,
    location VARCHAR(255) NOT NULL
);

"4. Insérez 6 à 9 nouveaux employés dans la table Employees."

INSERT INTO Employees (first_name, last_name, birhdate, position, department_id)
VALUES
('John', 'Doe', '1990-005-15', 'Software Engineer', 1),
('Jane', 'Smith', '1985-08-20', 'Project Manager', 2),
('Mike', 'Johnson', '1992-03-10', 'Data Analyst', 1),
('Emily', 'Brown', '1988-12-03', 'UX Designer', 1),
('Alex', 'Williams', '1995-06-28', 'Software Developer', 1),
('Sarah', 'Miller', '1987-09-18', 'HR Specialist', 3),
('Ethan', 'Clark', '1991-02-14', 'Database Administrator', 1),
('Olivia', 'Garcia', '1984-07-22', 'Marketing Manager', 2),
('Emilia', 'Clark', '1986-01-12', 'HR Manager', 3);

"5. Récupérez le nom et le poste de tous les employés."

SELECT first_name, last_name, position FROM Employees;

"6. Mettez à jour le poste d’un employé dans la table Employees."

UPDATE Employees SET position = 'Senior Software Engineer' WHERE employee_id = 1;

"7. Supprimez un employé de la table Employees."

DELETE FROM Employees WHERE employee_id = 9;

"8. Affichez le nom, le département et le bureau de chaque employé."

SELECT first_name, last_name, department_name, location FROM Employees;

"9. Affichez, à l’aide d’un filtre, les membres de l’équipe IT, puis le management, puis les ressources humaines."

SELECT first_name, last_name, department_name, location FROM Employees WHERE department_id = 1;

SELECT first_name, last_name, department_name, location FROM Employees WHERE department_id = 2;

SELECT first_name, last_name, department_name, location FROM Employees WHERE department_id = 3;

"10. Affichez les départements de SomeCompany dans l’ordre alphabétique, avec les managers respectifs de chaque département."

SELECT department_name, FROM Departments INNER JOIN Employees ON Departments.department_head = Employees.employee_id ORDER BY department_name;

"11.Ajoutez un nouveau département à la table Department (Marketing peut-être?), ajoutez ou mettez à jour les employés de ce nouveau département."

INSERT INTO Departments (department_name, department_head, location) VALUES ('Marketing', 8, 'Branch Office South');

"12.Créez une nouvelle table Project : project_id (INT, PK), project_name (VARCHAR), start_date (DATE), end_date (DATE), departement_id (INT, FK).
Ajoutez des observations à cette nouvelle table, analysez la productivité des départements en IT et du nouveau département créé précédemment."

CREATE TABLE IF NOT EXISTS Project (
    project_id INT AUTO_INCREMENT PRIMARY KEY,
    project_name VARCHAR(255) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    department_id INT
);

INSERT INTO Project (project_name, start_date, end_date, department_id) VALUES
('Project 1', '2020-01-01', '2020-06-30', 1),
('Project 2', '2020-02-01', '2020-07-30', 2),
('Project 3', '2020-03-01', '2020-08-30', 3),
('Project 4', '2020-04-01', '2020-09-30', 4),
('Project 5', '2020-05-01', '2020-10-30', 2);

SELECT department_name, COUNT(project_id) AS 'Number of projects' FROM Departments INNER JOIN Project ON Departments.department_id = Project.department_id GROUP BY department_name;