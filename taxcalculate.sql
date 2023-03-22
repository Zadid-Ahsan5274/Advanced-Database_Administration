create or replace function cal_tax
    (salary number)
    return number is 
    tax number:=0;
begin
   select salary*.1 into tax from dual;
   return tax;
end cal_tax;
/