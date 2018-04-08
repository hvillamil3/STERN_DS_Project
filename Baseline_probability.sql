/***************
Train order_id
****************/

select distinct a.order_id 
--into #train_order_ids
into [dbo].[order_products__prior_train]
	from [dbo].[order_products__prior] a
	where
	not exists (select order_id from [dbo].[order_products__prior_test] g
							where a.order_id = g.order_id )
/*************/

declare @user int
set @user = 16000

select  vv.[user_id] ,count(distinct product_id) as [number_of_products]
into #numberofproducts
	from (select *
	from [dbo].[order_products__prior] j
	where EXISTS (select 1
				from #train_order_ids m
				where j.order_id=m.order_id)

	) as h
	left join dbo.orders vv on h.[order_id]=vv.[order_id]
	--where  vv.[user_id] = @user
	group by  vv.[user_id] 

--select top 100* from #numberofproducts



--select @user as [user_id]
select b.[user_id]
, product_id
, count(*)  as number_purchases
, round((count(*)  )/ ( convert(float,sum(count(*)) over(PARTITION BY b.[user_id] ) )  ) ,4) as [freq_product]
--, round((count(*)  )/ ( convert(float,sum(count(*)) over() )  ) ,4) as [freq_product_1001]
, round(1/ convert(float, max(gg.[number_of_products]) ),4) as [laplace]
--, round(1/ convert(float,count(*) OVER (PARTITION BY b.[user_id]) ),4) as [laplace2]
--, round((count(*) + 1 )/ ( convert(float,sum(count(*)) over() ) + max(gg.[number_of_products]) ) ,4) as [freq_product_100_laplace1]
, round((count(*) + 1 )/ ( convert(float,sum(count(*)) over(PARTITION BY b.[user_id]) ) + max(gg.[number_of_products]) ) ,4) as [freq_product_laplace]
--, sum(count(*)) over() as Number_of_purchases1
, sum(count(*)) over(PARTITION BY b.[user_id] )   as Total_Number_of_purchases
--, count(*) OVER ()  as Total_Number_of_products_purchased1
--, count(*) OVER (PARTITION BY b.[user_id])==  max(gg.[number_of_products]) as Total_Number_of_products_purchased
, max(gg.[number_of_products])  as Total_Number_of_products_purchased
into frequency_probability 
from [dbo].[order_products__prior] a
left join dbo.orders b on a.[order_id]=b.[order_id]
left join #numberofproducts as gg
on b.[user_id]=gg.[user_id]
--where b.[user_id] in (2,193700) --= @user --193700
WHERE EXISTS (select 1
				from #train_order_ids m
				where a.order_id=m.order_id)
group by b.[user_id],product_id
--order by count(*) desc

--193700	492
--2	195