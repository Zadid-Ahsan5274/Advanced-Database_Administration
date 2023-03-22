DECLARE 
   phone_number p_phone_number%TYPE;
BEGIN
   format_phone(phone_number)
   DBMS_OUTPUT.PUT_LINE(phone_number);
END;
/