--liquibase formatted sql

--changeset edoardo:4
CREATE TABLE salary (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `amount` INTEGER NOT NULL
);
--rollback DROP TABLE IF EXISTS salary;

--changeset edoardo:5
ALTER TABLE employee ADD `salary_id` INTEGER;
--rollback ALTER TABLE employee DROP COLUMN salary_id;

--changeset edoardo:6
INSERT INTO salary (amount) SELECT distinct salary FROM employee;
--rollback DELETE FROM salary;

--changeset edoardo:7
update employee set salary_id = s.id from employee e1 left join salary s on e1.salary = s.amount where employee.id = e1.id
--rollback update employee set salary_id = null;

--changeset edoardo:8
ALTER TABLE employee DROP COLUMN salary;
--rollback ALTER TABLE employee ADD salary INTEGER;
--rollback update employee set salary = s.amount from employee e1 left join salary s on e1.salary_id  = s.id  where employee.id = e1.id;