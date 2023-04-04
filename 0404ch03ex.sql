/*�������� ������ ������ ���ǻ� ��*/
select COUNT(publisher) from Book, Customer, Orders where Book.bookid = Orders.bookid AND Customer.custid = Orders.custid AND Customer.name LIKE '������';

/*�������� ������ ������ �̸�, ����, ������ �ǸŰ����� ����*/
select name, price, (saleprice-price) from book, customer, orders where Book.bookid = Orders.bookid AND Customer.custid = Orders.custid AND Customer.name LIKE '������';

/*�������� �������� ���� ������ �̸�*/
select bookname from book where bookid NOT in (select bookid from Customer, Orders WHERE Customer.custid = Orders.custid AND Customer.name Like '������');


/*�ֹ����� ���� ���� �̸�(�μ����� ���)*/
select name from Customer where custid NOT in (select custid from orders);

/*�ֹ� �ݾ��� �Ѿװ� �ֹ��� ��� �ݾ�*/
select sum(saleprice), avg(saleprice) from orders;

/*���� �̸��� ���� ���ž�*/
select name, sum(saleprice) from Customer, Orders where customer.custid = orders.custid group by name;

/*���� �̸��� ���� ������ ���� ���*/
select customer.name, book.bookname from orders left join customer on orders.custid = customer.custid left join book on orders.bookid = book.bookid;

/*������ ����(Book���̺�)�� �ǸŰ���(Orders���̺�)�� ���̰� ���� ���� �ֹ�*/
select * from book join orders on book.bookid = orders.bookid where price - saleprice like ( Select MAX(price - saleprice) from book join orders on book.bookid = orders.bookid);

/*������ �Ǹž� ��պ��� �ڽ��� ���ž� ����� �� ���� ���� �̸�*/
select name from customer where custid in (select custid from orders,book where orders.bookid = book.bookid group by custid having avg(price) > (select avg(price) from orders,book where orders.bookid = book.bookid));
