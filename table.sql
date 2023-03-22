drop table table1;
drop table table2;

create table table1(
   id number(10),
   unformatted_phone_number varchar2(50)
);

create table table2(
   id number(10),
   formatted_phone_number varchar2(50)
);

insert into table1 values(123,'888011111');

CREATE OR REPLACE PROCEDURE format_phone
    (p_id IN number(10)) IS 
BEGIN
    insert into table2
    select p_id, '123'
--'('||SUBSTR(unformatted_phone_number,1,3)||
--                ')'||SUBSTR(unformatted_phone_number,4,3) ||
--                '-'||SUBSTR(unformatted_phone_number,7) 
from table1 where id=p_id;
END format_phone;
/


