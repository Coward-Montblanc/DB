/*���缭�� ������ �� ��*/
select COUNT(*) from Book;

/*���缭���� ������ ����ϴ� ���ǻ��� �� ��*/
select count(distinct publisher) from Book;

/*��� ���� �̸�, �ּ�*/
select name, address from Customer;

/*2020�� 7�� 4�� ���� 7�� 7�� ���̿� �ֹ� ���� ������ �ֹ� ��ȣ*/
select orderid from Orders where orderdate between '2020-07-04' and '2020-07-07';

/*2020�� 7�� 4�� ���� 7�� 7�� ���̿� �ֹ� ���� ������ ������ ������ �ֹ� ��ȣ*/
select orderid from Orders where orderdate not between '2020-07-04' and '2020-07-07';

/*���� '��'���� ���� �̸��� �ּ�*/
select name, address from Customer where name like '��%';

/*���� '��'���̰� �̸��� '��'�� ������ ���� �̸��� �ּ�*/
select name, address from Customer where name like '��%' and name like '%��';