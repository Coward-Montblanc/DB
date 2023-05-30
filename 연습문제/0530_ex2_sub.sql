/*��ø����(nested subquery)-where��-�񱳿�����*/
select orderid,custid,saleprice from orders md where saleprice>(select avg(saleprice) from orders so where md.custid=so.custid);

/*��ø����(nested subquery)-in, not in ������*/
select sum(saleprice) "total" from orders where custid in (select custid from cutomer where address like '%���ѹα�%');

/*��ø����(nested subquery)-ALL,Some(any) ������*/
select orderid,saleprice from orders where saleprice > ALL (select saleprice from orders where custid=3);

/*��ø����(nested subquery)-exists, not existsSET������*/
select sum(saleprice) "total" from orders od where exists(select * from cutomer cs where address like '%���ѹα�%' and cs.custid=od.custid);