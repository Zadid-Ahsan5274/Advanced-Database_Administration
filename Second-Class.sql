select last_name||' is a '||job_id from employees;
select last_name||' is a '||job_id as "Employee Details" from employees;
Select last_name||'''s Annual Salary is '||(Salary+Salary*NVL(COMMISSION_PCT,0))*12 as "Annual Salary" from employees;
select last_name from employees where last_name like '__o%';
select first_name, last_name, department_id, salary from employees order by department_id, salary desc;
select first_name||' '||last_name as "Full Name", (SYSDATE-HIRE_DATE)/7 as "Weeks Worked" from employees;  -- Weeks Worked
select first_name||' '||last_name as "Full Name", (SYSDATE-HIRE_DATE)/12 as "Months Worked" from employees;  -- Months Worked
select first_name||' '||last_name as "Full Name", (SYSDATE-HIRE_DATE)/(7*24) as "Hours Worked" from employees;  -- Hours Worked
select first_name||' '||last_name as "Full Name", (SYSDATE-HIRE_DATE) as "Years Worked" from employees;   
select * from employees where department_id=90;
select employee_id, last_name, job_id, department_id from employees where department_id=90;
select last_name, job_id, department_id from employees where last_name='Whalen';
select last_name, department_id, job_id from employees where hire_date='17-Feb-96';
select last_name, salary from employees where salary=3000;
select last_name, salary from employees where salary>3000;
select last_name, salary from employees where salary>=3000;
select last_name, salary from employees where salary<3000;
select last_name, salary from employees where salary<=3000;
select last_name, salary from employees where salary<>3000;
select last_name, salary from employees where salary between 2000 and 10000;
select last_name, salary from employees where salary in(2000,3000,5000,6000);
select last_name, salary from employees where last_name like '__k%';
select last_name, salary from employees where commission_pct is NULL;
select employee_id, department_id, salary, manager_id from employees where manager_id in(101, 100, 201, 202);
select first_name from employees where first_name like 'S%';
select last_name, salary from employees where last_name like '__o%';
select last_name, manager_id from employees where manager_id is null;
select * from employees where job_id like '%MAN%' and salary >=10000;
select * from employees where job_id like '%MAN%' OR salary >=10000;
select last_name, job_id from employees where job_id not in('IT_PROG','SA_REP','ST_CLERK');
select last_name, job_id, salary from employees where job_id='SA_REP' or job_id='AD_PRES' and salary>15000;
select last_name, job_id, salary from employees where (job_id='SA_REP' or job_id='AD_PRES') and salary>15000;
select last_name, job_id, department_id, hire_date from employees order by hire_date;
select last_name, job_id, department_id, hire_date from employees order by hire_date desc;
select last_name, job_id, department_id, (salary*12) as annsal from employees order by annsal;
select last_name, job_id, department_id, hire_date from employees order by 3;
select employee_id, department_id, salary, hire_date from employees where employee_id=&employee_num;
select last_name, department_id, salary*12, hire_date from employees where job_id='&job_title';
select employee_id, last_name, job_id, &&column_name from employees order by &order_column;

define employee_num=200
select last_name, salary, department_id, job_id, employee_id from employees where employee_id=&employee_num;
undefine employee_num;

set verify on
select employee_id, salary, department_id from emplpyees where employee_id=&employee_num;














