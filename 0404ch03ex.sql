/*박지성이 구매한 도서의 출판사 수*/
select COUNT(publisher) from Book, Customer, Orders where Book.bookid = Orders.bookid AND Customer.custid = Orders.custid AND Customer.name LIKE '박지성';

/*박지성이 구매한 도서의 이름, 가격, 정가와 판매가격의 차이*/
select name, price, (saleprice-price) from book, customer, orders where Book.bookid = Orders.bookid AND Customer.custid = Orders.custid AND Customer.name LIKE '박지성';

/*박지성이 구매하지 않은 도서의 이름*/
select bookname from book where bookid NOT in (select bookid from Customer, Orders WHERE Customer.custid = Orders.custid AND Customer.name Like '박지성');


/*주문하지 않은 고객의 이름(부속질의 사용)*/
select name from Customer where custid NOT in (select custid from orders);

/*주문 금액의 총액과 주문의 평균 금액*/
select sum(saleprice), avg(saleprice) from orders;

/*고객의 이름과 고객별 구매액*/
select name, sum(saleprice) from Customer, Orders where customer.custid = orders.custid group by name;

/*고객의 이름과 고객이 구매한 도서 목록*/
select customer.name, book.bookname from orders left join customer on orders.custid = customer.custid left join book on orders.bookid = book.bookid;

/*도서의 가격(Book테이블)과 판매가격(Orders테이블)의 차이가 가장 많은 주문*/
select * from book join orders on book.bookid = orders.bookid where price - saleprice like ( Select MAX(price - saleprice) from book join orders on book.bookid = orders.bookid);

/*도서의 판매액 평균보다 자신의 구매액 평균이 더 높은 고객의 이름*/
select name from customer where custid in (select custid from orders,book where orders.bookid = book.bookid group by custid having avg(price) > (select avg(price) from orders,book where orders.bookid = book.bookid));
