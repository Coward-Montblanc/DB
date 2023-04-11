create table newBook(bookid number primary key, bookname varchar2(20) not null, publisher varchar2(20) unique, price number default 10000 check(price>=1000));

select * from newbook;

create table newcustomer(custid number primary key, name varchar2(20), address varchar2(20), phone varchar2(30));

select * from newcustomer;

create table neworders(orderid number, custid number not null, bookid number not null, saleprice number, orderdate date, primary key(orderid), foreign key(custid) references newcustomer(custid) on delete cascade);

select * from neworders;

/*속성 추가*/
alter table newbook add isbn varchar2(13);

alter table newbook modify isbn number;

drop table newbook;

select * from book;

insert into book(bookid, bookname, publisher, price) values (11, '스포츠 의학', '한솔의학서적', 90000);

insert into book(bookid, bookname, publisher) values (14, '스포츠 의학', '한솔의학서적');

select * from imported_book;

/*대량삽입*/

insert into book(bookid, bookname, publisher, price) select bookid, bookname, publisher, price from imported_book;

select * from customer;

update customer set address='대한민국 부산' where custid=5;

update customer set address=(select address from customer where name='김연아') where name='박세리';

delete from customer where custid=5;

rollback;

