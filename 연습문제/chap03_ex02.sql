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

/*주문하지 않은 고객의 이름(부속질의 사용)*/
select name from Customer where custid NOT in (select custid from orders);

/*주문 금액의 총액과 주문의 평균 금액*/
select sum(saleprice), avg(saleprice) from orders;

/*고객의 이름과 고객별 구매액*/
select name, sum(saleprice) from Customer, Orders where customer.custid = orders.custid group by name;

/*고객의 이름과 고객이 구매한 도서 목록*/
select customer.name, book.bookname from orders left join customer on orders.custid = customer.custid left join book on orders.bookid = book.bookid;

/*도서의 가격(Book테이블)과 판매가격(Orders테이블)의 차이가 가장 많은 주문*/
select * from book ,orders where book.bookid = orders.bookid and price - saleprice = ( Select MAX(price - saleprice) from book ,orders where book.bookid = orders.bookid);

/*도서의 판매액 평균보다 자신의 구매액 평균이 더 높은 고객의 이름*/
select name from customer where custid in (select custid from orders,book where orders.bookid = book.bookid group by custid having avg(price) > (select avg(price) from orders,book where orders.bookid = book.bookid));

/*select name, avg(saleprice) from customer, orders where customer.custid=orders.custid group by name having avg(saleprice) > (select avg(saleprice)from orders);*/
