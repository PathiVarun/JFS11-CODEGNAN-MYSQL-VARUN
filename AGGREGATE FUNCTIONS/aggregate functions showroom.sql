use aggregate_functions;
create table showroom(
	custid int,
    custname varchar(100),
    pname varchar(100),
    pcost int
    );

insert into showroom values(1,"varun","shirt",800),(1,"varun","pant",500),(1,"varun","shoes",1000),
							(2,"siddhu","shirt",1000),(2,"siddhu","pant",900),(2,"siddhu","shoes",950),
                            (3,"dinesh","shirt",1200),(3,"dinesh","pant",1500),(3,"dinesh","shoes",1770),
							(4,"chandra","shirt",800),(4,"chandra","pant",980),(4,"chandra","shoes",999)
                            ;
                            
select * from showroom;
select custid,custname,sum(pcost) as totalcost from showroom group by custid,custname;
select max(pcost) as itemcost from showroom;

SELECT custid, custname, pname, pcost
FROM showroom AS s
WHERE pcost = (
    SELECT MAX(pcost)
    FROM showroom
    WHERE custid = s.custid
)
ORDER BY custid;


SELECT custid, custname, pname, pcost
FROM showroom 
WHERE pcost = (
    SELECT MAX(pcost)
    FROM showroom
)
;


select custid,custname,pname,pcost from showroom as s 
where pcost = (select min(pcost) from showroom where custid=s.custid) order by custid;

select custid,custname,pname,pcost from showroom 
where pcost = (select min(pcost) from showroom);

