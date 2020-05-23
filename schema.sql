DROP DATABASE IF EXISTS employees;

CREATE DATABASE employees;

USE employees;

CREATE TABLE department (
  id INT AUTO_INCREMENT NOT NULL,
  name VARCHAR(30) NOT NULL,
  PRIMARY KEY(id)
);node

INSERT INTO department (name)
VALUES ("Sales");

INSERT INTO department (name)
VALUES ("Engineering");

INSERT INTO department (name)
VALUES ("Finance");

INSERT INTO department (name)
VALUES ("Legal");

CREATE TABLE role (
  id INT AUTO_INCREMENT NOT NULL,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL(10,2) NOT NULL,
  department_id INT NOT NULL,
  PRIMARY KEY(id)
);

INSERT INTO role (title, salary, department_id)
VALUES ("Sales Manager", 135000, 1);

INSERT INTO role (title, salary, department_id)
VALUES ("Salesmen", 90000, 1);

INSERT INTO role (title, salary, department_id)
VALUES ("Software Developer", 144000, 2);

INSERT INTO role (title, salary, department_id)
VALUES ("Accountant", 100000, 3);

INSERT INTO role (title, salary, department_id)
VALUES ("Lawyer", 210000, 4);

CREATE TABLE employee (
  id INT AUTO_INCREMENT NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id iNT NOT NULL,
  manager_id VARCHAR(30),
  PRIMARY KEY(id)
);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Michael Scott", "Smith", 1, null);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Pam", "Beasley", 2, "Michael Scott");

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Ivana", "Chiriboga", 3, null);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Kumar", "Patel", 4, "Ivana Chiriboga");

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Harold", "Lin", 5, null);



