select count(*)
from [dbo].[products] a
--left join (
--select product_id , round(avg(price),2) as [price_avg]
--from prices 
--group by product_id) x on a.product_id=x.product_id
--where [price_avg] is not null

--left join departments b on a.department_id=b.department_id
--left join aisles c on a.aisle_id=c.aisle_id

--88
--select * from aisles
--where aisle like '%baby%'
--where department_id = 88

--select product_id , round(avg(price),2)
select *--count(distinct product_id )
from prices (nolock)
--group by product_id
order by ID desc

select top 20000 *
from products

select 22000 - 19108

select count( distinct convert(int,product_id)) --count(distinct product_id)
from prices (nolock)
--group by product_id

----truncate table prices
--INSERT INTO prices(product_id,Name,price) Values(1,'365 Chocolate Sandwich Cremes',2.99)

--select top 12000 *
--into #table
--from [dbo].[products] a
--select * from #table a
--left join prices b on a.product_id=b.product_id
--where b.product_id is null