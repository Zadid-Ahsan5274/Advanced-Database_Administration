CREATE OR REPLACE FUNCTION get_rad
   (radius number) return number is area number:=0;
BEGIN  
   select 22/7*radius*radius into area from dual;
END  get_rad;
/

