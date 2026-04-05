use sales

select* from customer
select* from [order]
 select* from [product]


 select  distinct city,quantity from customer c  join [order] r on  c.customerid= r.customerid

  select  isnull(quantity,00) from( select  distinct city,quantity from customer c left join [order] r on  c.customerid= r.customerid) t 

select DATEDIFF( day,orderdate,delivery_date) as "kk" from [order]



select CONCAT(firstname,' ' ,lastname
),quantity, item from customer c join 
[order]o  on c.customerid=o.customerid join 
[product] p on o.productid = p.productid


---------------


select CONCAT(firstname,' ' ,lastname)
,quantity, item from customer c,[order] o ,
[product] p where c.customerid=o.customerid 
and o.productid=p.productid



 select* from( select customerid,row_number()over(partition by customerid order by customerid) as "dupp" from customer)t where dupp > 1


 select * from customer where customerid is null


 select * from [product]


 select*from(select productid,row_number()over(partition by productid order by productid) as "dd" from [product]) t where dd >1



  delete from [product] where productid is null

