/*도서번호가 1인 도서의 이름*/
select bookname from book where bookid=1;

/*가격이 20000원 이상인 도서의 이름*/
select bookname from book where price>=20000;

/*박지성의 총 구매액*/
select SUM(saleprice) from Orders where custid=1;

/*박지성의 총 구매액 2*/
select SUM(saleprice) from Customer,Orders Where Customer.custid = Orders.custid AND Customer.name Like '박지성';

/*박지성이 구매한 도서의 수*/
select COUNT(*) from Customer, Orders WHERE Customer.custid = Orders.custid AND Customer.name Like '박지성';

/*박지성이 구매한 옷의 수*/
select COUNT(publisher) from Book, Customer, Orders where Book.bookid = Orders.bookid AND Customer.custid = Orders.custid AND Customer.name LIKE '박지성';