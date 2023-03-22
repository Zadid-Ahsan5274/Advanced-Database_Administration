DECLARE
   a NUMBER:=&a;
   b NUMBER:=&b;
   c NUMBER:=&c;
   
 BEGIN 
    IF
      a > b && a > c THEN  dbms_output.put_line(a || ' is the largest');
	ELSIF 
	  b > a && b > c THEN  dbms_output.put_line(b || ' is the largest');
	ELSE  dbms_output.put_line(c || ' is the largest');
    END IF;
  END;
	     