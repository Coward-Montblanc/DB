/*������ȣ�� 1�� ������ �̸�*/
select bookname from book where bookid=1;

/*������ 20000�� �̻��� ������ �̸�*/
select bookname from book where price>=20000;

/*�������� �� ���ž�*/
select SUM(saleprice) from Orders where custid=1;

/*�������� �� ���ž� 2*/
select SUM(saleprice) from Customer,Orders Where Customer.custid = Orders.custid AND Customer.name Like '������';

/*�������� ������ ������ ��*/
select COUNT(*) from Customer, Orders WHERE Customer.custid = Orders.custid AND Customer.name Like '������';

/*�������� ������ ���� ��*/
select COUNT(publisher) from Book, Customer, Orders where Book.bookid = Orders.bookid AND Customer.custid = Orders.custid AND Customer.name LIKE '������';