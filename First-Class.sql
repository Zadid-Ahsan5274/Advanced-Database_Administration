connect hr
select * from tab;
select * from regions;
select * from countries;
select * from locations;
select * from departments;
select * from jobs;
select * from employees;
select * from job_history;
select 2+2 from dual;
select last_name, (12*salary) as "Annual Salary" from employees;
select last_name, (NVL(COMMISSION_PCT,0)+(12*salary))*12 as "Total Salary" from employees;