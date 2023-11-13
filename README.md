# liquibase-demo
Example of a liquibase setup showing the capabilities of the framework. Included are also IntelliJ Idea configurations for the rollback and update steps.

### Overview of changelogs
- The department table is created (create_departments.xml).
- The employee table is created and its data is loaded from csv file employees.csv (create_employee.xml).
- The database is tagged to v1 for ease of rollback/update (create_employee.xml)
- A refactoring of the tables is performed. The salary amount from the employees table is moved to another table, and a column is add to the employees that references the salary. (create_salaries.sql)
