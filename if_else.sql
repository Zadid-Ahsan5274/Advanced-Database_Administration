DECLARE
    f_num NUMBER:=&f_num;
    s_num NUMBER:=&s_num;
    t_num NUMBER:=&t_num;
BEGIN
    if(f_num > s_num && f_num > t_num)
	Then 
	   dbms_output.put_line(f_num||' is largest');
	else if(s_num > f_num && s_num > t_num)
	Then 
	   dbms_output.put_line(s_num||' is largest');
	else
	   dbms_output.put_line(t_num||' is largest');
	end if;
	dbms.output.put_line('Done');
END;