/*���ο� ����('������ ����', '���ѹ̵��', 10000��)�� ���缭���� �԰�Ǿ���. ������ �� �� ��� �ʿ��� �����Ͱ� �� �ִ��� ã�ƺ��ÿ�.*/
/*bookid��� primary key�� ���*/
select * from book;
insert into book(bookid, bookname, publisher, price) values(15, '������ ����', '���ѹ̵��', 10000);

/*'�Ｚ��'���� ������ ������ �����Ͻÿ�*/
delete from book where publisher='�Ｚ��';

/*'�̻�̵��'���� ������ ������ �����Ͻÿ�. ������ �ȵǸ� ������ �����غ��ÿ�*/
/*�̻�̵� �����ϴ� �ڽ����̺��� �־*/
delete from book where publisher='�̻�̵��';

/*���ǻ� '���ѹ̵��'�� '�������ǻ�'�� �̸��� �ٲٽÿ�*/
update book set publisher='�������ǻ�' where publisher='���ѹ̵��';

/*(���̺����)���ǻ翡 ���� ������ �����ϴ� ���̺� Bookcompany(name, address, begin)�� �����ϰ����Ѵ�. name�� �⺻Ű�̸� varchar(20), address�� varchar(20), begin�� dataŸ������ �����Ͽ� �����Ͻÿ�.*/
create table Bookcompany(name varchar(20) primary key, address varchar(20), begin date);

/*(���̺� ����) bookcompany ���̺� ���ͳ� �ּҸ� �����ϴ� webaddress �Ӽ��� varchar(30)���� �߰��Ͻÿ�*/
alter table Bookcompany add webaddress varchar(30);

/*bookcompany ���̺� ������ ���� name=�Ѻ���ī����, address=����ø�����, begin=1993-01-01, webaddress=http://hanbit.co.kr�� �����Ͻÿ�*/
insert into bookcompany(name, address, begin, webaddress) values('�Ѻ���ī����','����ø�����','1993-01-01','http://hanbit.co.kr');