DROP DATABASE IF EXISTS companyDB;

CREATE DATABASE companyDB;

USE companyDB;

CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(40),
  PRIMARY KEY (id)
);

INSERT INTO department(name)
VALUES ("FOH"), ("BOH"), ("Management");

CREATE TABLE role (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(40),
  salary DECIMAL(50, 2),
  departmentID INT,
  PRIMARY KEY (id),
  FOREIGN KEY (departmentID) REFERENCES department(id)
);

INSERT INTO role (title, salary, departmentID)
VALUES ("FOH Manager", 20, 3), ("BOH Manager", 20, 3), ("GM", 50, 3), ("Server", 2.13, 1),
("Host", 3.50, 1), ("Bus Boy", 3.50, 2), ("Cook", 10, 2);

CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT,
  firstName VARCHAR(30),
  lastName VARCHAR(30),
  roleID INT(10),
  managerID INT(10),
  PRIMARY KEY (id),
  FOREIGN KEY (roleID) REFERENCES role(id)
);

INSERT INTO employee (firstName, lastName, roleID, managerID)
VALUES ("Eric", "Scott", 3, 1), ("Ryan", "Borja", 1, 2), ("Caleb", "Vincent", 2, 3);

SELECT * FROM department;
SELECT * FROM role;
SELECT * FROM employee;