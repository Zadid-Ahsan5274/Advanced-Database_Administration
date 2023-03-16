create table branch(
    branch_name   varchar2(10)   not null,
    branch_city   varchar2(10)   not null,
    assets   number not null,
    primary key(branch_name),
);

create table customer(
    customer_name  varchar2(50)  not null,
    customer_street  varchar2(10)   not null,
    customer_city   varchar2(10)  not null,
    primary key(customer_name)
);

create table loan(
    loan_number   int   not null,
    branch_name   varchar2(10)  not null,
    amount int,
    primary key(loan_number),
    foreign key(branch_name)
);

create table account(
    account_number   int   not null,
    branch_name   varchar2(10)   not null,
    balance   int,
    primary key(account_number),
    foreign key(branch_name)
);

create table depositor(
    customer_name  varchar2(50)  not null,
    account_number   int   not null,
    primary key(customer_name,account_number)
);

create table borrower(
    customer_name  varchar2(50)  not null,
    loan_number   int   not null,
    primary key(customer_name,loan_number)
);


drop table branch;
drop table customer;
drop table loan;
drop table account;
drop table depositor;
drop table borrower;