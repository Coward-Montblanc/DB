/*마당서점 도서의 총 수*/
select COUNT(*) from Book;

/*마당서점에 도서를 출고하는 출판사의 총 수*/
select count(distinct publisher) from Book;

/*모든 고객의 이름, 주소*/
select name, address from Customer;

/*2020년 7월 4일 부터 7월 7일 사이에 주문 받은 도서의 주문 번호*/
select orderid from Orders where orderdate between '2020-07-04' and '2020-07-07';

/*2020년 7월 4일 부터 7월 7일 사이에 주문 받은 도서를 제외한 도서의 주문 번호*/
select orderid from Orders where orderdate not between '2020-07-04' and '2020-07-07';

/*성이 '김'씨인 고객의 이름과 주소*/
select name, address from Customer where name like '김%';

/*성이 '김'씨이고 이름이 '아'로 끝나는 고객의 이름과 주소*/
select name, address from Customer where name like '김%' and name like '%아';