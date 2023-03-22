create or replace function get_tax
(emp_id employees.employee_id%TYPE)
return number is
tax number:=0;
sal employees.salary%TYPE:=0;
begin
	select salary into sal from employees where employee_id = 199;
	if sal<100
		then
			select sal*.05 into tax from dual;
	elsif sal<200
		then
			select sal*.1 into tax from dual;
	elsif sal<300
		then
			select sal*.2 into tax from dual;
	else
		select sal*.3 into tax from dual;
	end if;
	return tax;
end get_tax;
/