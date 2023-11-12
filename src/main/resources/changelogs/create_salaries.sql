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