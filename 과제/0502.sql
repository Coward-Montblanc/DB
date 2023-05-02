Create table summer(sid number, class varchar2(20),price number);

insert into summer values (100, 'FORTRAN', 20000);
insert into summer values (150, 'PASCAL', 15000);
insert into summer values (200, 'C', 10000);
insert into summer values (250, 'FORTRAN', 20000);

select * from summer;

select sid, class from summer;
select price from summer where class='C';
select distinct class from summer where price = (select max(price) from summer);
select count(*), sum(price) from summer;
delete from summer where sid = 200;
select price from summer where class='C';
insert into summer values (null, 'java', 25000);
select count(*) as "수강인원" from summer;
select count(sid) as "수강인원" from summer;
select count(*) as "수강인원" from summer where sid is not null;
update summer set price=15000 where class ='FORTRAN';
select distinct price as "fortran 수강료" from summer where class='fortran';
update summer set price=20000 where class ='FORTRAN';
update summer set price=15000 where class ='FORTRAN' and sid =100;

create table summerprice(class varchar2(20), price integer);
insert into summerprice values ('FORTRAN', 20000);
insert into summerprice values ('PASCAL', 15000);
insert into summerprice values ('C', 10000);


create table summerenroll(sid integer, class varchar2(20));

insert into summerenroll values (100, 'FORTRAN');
insert into summerenroll values (150, 'PASCAL');
insert into summerenroll values (200, 'C');
insert into summerenroll values (250, 'FORTRAN');

select sid, class from summerenroll;
select price from summerprice where class='C';
select distinct class from summerprice where  price = (select max(price) from summerprice);
select count(*), sum(price) from summerprice, summerenroll where summerprice.class=summerenroll.class;
select price "C 수강료" from summerprice where class='C';
delete from summerEnroll where sid=200;
select price "C 수강료" from summerprice where class='C';

insert into summerprice values ('JAVA', 25000);

update summerprice set price=15000 where class='FORTRAN';

select price as "FORTRAN 수강료" from summerprice where class = 'FORTRAN';
