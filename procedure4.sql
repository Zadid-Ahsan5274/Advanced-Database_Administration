CREATE OR REPLACE PROCEDURE insert_emp
    (id employees_id%TYPE;
     phone_number employees_phone_number%TYPE) IS
BEGIN
    CREATE TABLE UNFORMATTED(id varchar2(10), phone_number  varchar2(10));
    CREATE TABLE FORMATTED(id varchar2(10), phone_number  varchar2(10));
END insert_emp;
/
