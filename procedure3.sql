CREATE OR REPLACE PROCEDURE format_phone
    (p_phone_no IN OUT VARCHAR2(50)) IS 
BEGIN
    DECLARE PHONE_NUMBER  VARCHAR2(50)
    p_phone_no:='(' || SUBSTR(p_phone_no,1,3) ||
                ')' || SUBSTR(p_phone_no,4,3) ||
                '-' || SUBSTR(p_phone_no,7);
END format_phone;
/


