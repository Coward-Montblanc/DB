/*중첩질의(nested subquery)-where절-비교연산자*/
select orderid,custid,saleprice from orders md where saleprice>(select avg(saleprice) from orders so where md.custid=so.custid);

/*중첩질의(nested subquery)-in, not in 연산자*/
select sum(saleprice) "total" from orders where custid in (select custid from cutomer where address like '%대한민국%');

/*중첩질의(nested subquery)-ALL,Some(any) 연산자*/
select orderid,saleprice from orders where saleprice > ALL (select saleprice from orders where custid=3);

/*중첩질의(nested subquery)-exists, not existsSET연산자*/
select sum(saleprice) "total" from orders od where exists(select * from cutomer cs where address like '%대한민국%' and cs.custid=od.custid);