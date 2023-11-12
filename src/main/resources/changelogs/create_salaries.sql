--liquibase formatted sql
--changeset edoardo:3

CREATE TABLE salary (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `amount` INTEGER NOT NULL
);

--rollback DROP TABLE IF EXISTS salary;