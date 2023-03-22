create table branch(
    branch_name   varchar2(10),
    branch_city   varchar2(10),
    assets   number,
    constraint br_name_PK primary key(branch_name)
);

create table customer(
    customer_name  varchar2(50),
    customer_street  varchar2(10),
    customer_city   varchar2(10),
    constraint cust_name_PK primary key(customer_name)
);

create table loan(
    loan_number   varchar2(10),
    branch_name   varchar2(10),
    amount number(10),
    constraint ln_PK primary key(loan_number),
    constraint br_brname_FK foreign key(branch_name) references branch(branch_name)
);

create table account(
    account_number   number,
    branch_name   varchar2(10),
    balance   number(10),
    constraint acc_no_PK primary key(account_number),
    constraint br_branchn_fk foreign key(branch_name) references branch(branch_name)
);

create table depositor(
    customer_name  varchar2(50),
    account_number   number,
    constraint depositor_custname_acno_PK primary key(customer_name,account_number)
);

create table borrower(
    customer_name  varchar2(50),
    loan_number   varchar2(10),
    constraint borrower_custname_loanno_PK primary key(customer_name,loan_number)
);

insert into branch values('Agargaon','Dhaka',2000);
insert into branch values('Jigatola','Dhaka',2500);
insert into branch values('Dhanmondi','Dhaka',2200);
insert into branch values('Motijheel','Dhaka',1500);
insert into branch values('Uttara','Dhaka',1000);

select * from branch;

-- drop table customer;
-- drop table loan;
-- drop table account;
-- drop table depositor;
-- drop table borrower;
-- drop table branch;