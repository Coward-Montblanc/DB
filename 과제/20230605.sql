select * from book;

create view vw_book as select * from book where bookname like '%�౸%';

select * from vw_book;

select * from  customer;

create view vw_customer as select * from customer where address like '%���ѹα�%';

select * from  vw_customer;

create or replace view vw_customer(custid,name,address) as select custid, name, address from customer where address like '%����%';